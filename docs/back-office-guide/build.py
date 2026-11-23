"""Render the client guides to PDF with headless Chrome.

    guide.html  -> docs/MR-RIDER-Back-Office-Guide.pdf
    brands.html -> docs/MR-RIDER-Brands-Quick-Guide.pdf

Two passes each: the first finds which page each section starts on, the
second prints the contents page with those page numbers filled in.

    python3 docs/back-office-guide/build.py
"""
import base64, pathlib, re, subprocess, sys, tempfile
import fitz  # PyMuPDF

HERE = pathlib.Path(__file__).resolve().parent
GUIDES = {
    "guide.html": "MR-RIDER-Back-Office-Guide.pdf",
    "brands.html": "MR-RIDER-Brands-Quick-Guide.pdf",
}
CHROME = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"


def render(html: pathlib.Path, pdf: pathlib.Path) -> None:
    subprocess.run(
        [CHROME, "--headless", "--disable-gpu", "--no-pdf-header-footer",
         "--run-all-compositor-stages-before-draw", "--virtual-time-budget=20000",
         f"--print-to-pdf={pdf}", html.as_uri()],
        check=True, capture_output=True,
    )


def section_pages(pdf: pathlib.Path) -> dict[str, int]:
    pages: dict[str, int] = {}
    with fitz.open(pdf) as doc:
        for i, page in enumerate(doc):
            # Only the kicker line at the top of a section ("SECTION 05" on
            # its own) — body text also says "see section 05". The kicker is
            # letter-spaced, so it extracts as "S E C T I O N  0 5".
            for line in page.get_text().splitlines():
                m = re.fullmatch(r"SECTION(\d{2})", re.sub(r"\s+", "", line.upper()))
                if m:
                    pages.setdefault(f"s{m.group(1)}", i + 1)
    return pages


def inline_fonts(html: str) -> str:
    """Chrome refuses web fonts from file:// URLs, so the faces in
    fonts/fonts.css go into the page as data URIs. Archivo is the static
    per-weight TTFs: Chrome writes a variable font into a PDF as Type 3
    glyphs, which some viewers draw soft."""
    css = (HERE / "fonts" / "fonts.css").read_text(encoding="utf-8")
    css = re.sub(
        r"url\((fonts/[^)]+\.(woff2|ttf))\)",
        lambda m: f"url(data:font/{m.group(2)};base64,"
        + base64.b64encode((HERE / m.group(1)).read_bytes()).decode()
        + ")",
        css,
    )
    return html.replace('<link rel="stylesheet" href="fonts/fonts.css">', f"<style>{css}</style>")


def build(src: pathlib.Path, out: pathlib.Path) -> None:
    html = inline_fonts(src.read_text(encoding="utf-8"))
    tmp_html = HERE / ".guide.filled.html"  # beside the source so ../../public/logo.png resolves
    try:
        tmp_html.write_text(html, encoding="utf-8")
        with tempfile.TemporaryDirectory() as tmp:
            first = pathlib.Path(tmp) / "pass1.pdf"
            render(tmp_html, first)
            pages = section_pages(first)
    finally:
        tmp_html.unlink(missing_ok=True)
    filled = re.sub(
        r'data-pg="(s\d{2})"></span>',
        lambda m: f'data-pg="{m.group(1)}">{pages.get(m.group(1), "")}</span>',
        html,
    )
    tmp_html.write_text(filled, encoding="utf-8")
    try:
        render(tmp_html, out)
    finally:
        tmp_html.unlink(missing_ok=True)
    with fitz.open(out) as doc:
        print(f"{out.relative_to(HERE.parent.parent)}: {doc.page_count} pages; sections {pages}")


def main() -> None:
    for src, out in GUIDES.items():
        if (HERE / src).exists():
            build(HERE / src, HERE.parent / out)


if __name__ == "__main__":
    sys.exit(main())
