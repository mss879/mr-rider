-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 5 OF 10
--
-- Products 601-800 of 1423 (components).
--
-- Run 01_schema_and_reset.sql first: this needs the description
-- column and the new product types and brands to exist.
--
-- Idempotent, and the files are independent of each other — if
-- one fails you can re-run just that file.
-- ============================================================

begin;

insert into public.products
  (id, name, brand, category, subcategory, description, images,
   condition, stock, listed_at, featured, clearance) values
  -- ---- components · brake-pads ----
  ('shimanohydralichose', 'Shimano Hydralic Hose', 'shimano', 'components', 'brake-pads', '<p>Shimano Hydralic Hose</p>', '{}'::text[], 'new', 0, '2022-01-26'::date, false, false),
  ('shimano-l05a-road-disc-pads', 'Shimano L05A Road Disc Pads', 'shimano', 'components', 'brake-pads', '<h3>Shimano L05A Brake Pads</h3>
<h3><strong>Quieter, Longer-Lasting, All-Weather Performance</strong></h3>
<p>The <strong>Shimano L05A resin brake pads</strong> deliver <strong>40% more wear resistance</strong> than their predecessor, making them the perfect upgrade for riders who demand reliable stopping power ride after ride. Built with a resin compound and alloy backing plate, they offer <strong>quiet, consistent braking</strong> with reduced fade, even in wet conditions. Whether you’re training, racing, or simply riding in all-weather conditions, these pads give you confidence on every descent.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>40% More Wear-Resistant</strong> than previous models</p>
</li>
<li>
<p><strong>Resin compound</strong> for quiet and reliable performance</p>
</li>
<li>
<p><strong>All-weather stopping power</strong> – consistent even in the wet</p>
</li>
<li>
<p><strong>Reduced fade</strong> for better control on long descents</p>
</li>
<li>
<p><strong>Durable alloy backing plate</strong> for longevity</p>
</li>
</ul>

<h3>Compatibility</h3>
<ul>
<li>
<p>Dura-Ace BR-R9170</p>
</li>
<li>
<p>Ultegra BR-R8070</p>
</li>
<li>
<p>Metrea BR-U5000</p>
</li>
<li>
<p>BR-RS805, BR-RS505, BR-RS405, BR-RS305</p>
</li>
</ul>

<h3>Specifications</h3>
<ul>
<li>
<p><strong>Use:</strong> Road</p>
</li>
<li>
<p><strong>Material:</strong> Resin pad with alloy backing plate</p>
</li>
<li>
<p><strong>Part Number:</strong> Y8PU98040</p>
</li>
<li>
<p><strong>Brake Type:</strong> Hydraulic disc brakes</p>
</li>
</ul>', array['shimano-l05a-road-disc-pads/1.jpg']::text[], 'new', 1, '2022-06-20'::date, false, true),
  ('sram-code-2011guide-rebrake-pad-set', 'SRAM CODE 2011+/Guide RE Brake Pad Set', 'sram', 'components', 'brake-pads', '<p>To get the most out of your SRAM stoppers pair them with SRAM pads. They were made for each other.</p>
<p>The Organic pads | Quiet with a black backing plate:  A good all-around pad, quiet, make less noise in wet conditions and produce less heat under hard use.</p>
<p>The sintered pads | Powerful with copper backed plate: our most powerful, hardest hitting pad compound. Long lasting and great in wet and muddy conditions. </p>
<p>Fits SRAM MTB Brakes</p>
<ul>
<li>Code 2011+</li>
<li>Guide RE</li>
</ul>', array['sram-code-2011guide-rebrake-pad-set/1.jpg', 'sram-code-2011guide-rebrake-pad-set/2.jpg']::text[], 'new', 2, '2021-10-08'::date, false, false),
  ('sram-guideg2trail-brake-pad-set', 'SRAM Guide/G2/Trail Brake Pad Set', 'sram', 'components', 'brake-pads', '<p>To get the most out of your SRAM stoppers pair them with SRAM pads. They were made for each other.</p>
<p>The Organic pads | Quiet with a black backing plate:  A good all-around pad, quiet, make less noise in wet conditions and produce less heat under hard use. </p>
<p>The sintered pads | Powerful with copper backed plate: our most powerful, hardest hitting pad compound. Long lasting and great in wet and muddy conditions.</p>
<p>Fits SRAM MTB Brakes</p>
<ul>
<li>SRAM Guide </li>
<li>SRAM G2</li>
<li>SRAM Trail</li>
</ul>', array['sram-guideg2trail-brake-pad-set/1.jpg', 'sram-guideg2trail-brake-pad-set/2.jpg']::text[], 'new', 2, '2021-10-08'::date, false, false),
  ('sram-level-tlmultimate-road-hrd-organic-brake-pads', 'SRAM Level TLM/Ultimate, Road HRD Organic Brake Pads', 'sram', 'components', 'brake-pads', '<p>SRAM LEVEL TLM/ULTIMATE ROAD HRD ORGANIC BRAKE PADS | QUIET</p>
<p>To get the most out of your SRAM stoppers pair them with SRAM pads. They were made for each other. The Organic pads | Quiet with a black backing plate:  A good all-around pad, quiet, make less noise in wet conditions and produce less heat under hard use. <br><br>Fits SRAM MTB Brakes</p>
<ul>
<li>Level TLM (2017 - 2019)</li>
<li>Level Ultimate ((2017 - 2019)</li>
</ul>
<p>Fits SRAM Road Brakes</p>
<ul>
<li>Red eTap HRD</li>
<li>Red 22 HRD</li>
<li>Force 22 HRD</li>
<li>Force 1 HRD</li>
<li>Rival 22 HRD</li>
<li>Rival 1 HRD</li>
<li>700 HRD</li>
<li>Apex 1 HRD</li>
</ul>', array['sram-level-tlmultimate-road-hrd-organic-brake-pads/1.jpg']::text[], 'new', 0, '2021-10-08'::date, false, false),
  ('sram-levelelixirroad-2-piece-brake-pads', 'SRAM Level/Elixir/Road 2 Piece Brake Pads', 'sram', 'components', 'brake-pads', '<p>To get the most out of your SRAM stoppers pair them with SRAM pads. They were made for each other.</p>
<p>The Organic pads | Quiet with a black backing plate:  A good all-around pad, quiet, make less noise in wet conditions and produce less heat under hard use. But not as powerful as the Power Organic version </p>
<p>The sintered pads | Powerful with copper backed plate: our most powerful, hardest hitting pad compound. Long lasting and great in wet and muddy conditions.</p>
<p>FITS THE FOLLOWING MOUNTIAN BRAKES </p>
<ul>
<li>AVID Elixir</li>
<li>SRAM Level</li>
<li>SRAM Level T</li>
<li>SRAM Level TL</li>
<li>SRAM Level TLM (2020+)</li>
<li>SRAM Level Ultimate (2020+)</li>
</ul>
<p>FITS THE FOLLOWING ROAD 2 PEICE MONOBLOCK CALIPER BRAKES<br>(Monoblock calipers have no swivilling hose banjo. Hose is fitted directy into caliper)</p>
<ul>
<li>SRAM Red AXS (2019+)</li>
<li>SRAM Force ASX (2019+)</li>
</ul>', array['sram-levelelixirroad-2-piece-brake-pads/1.jpg', 'sram-levelelixirroad-2-piece-brake-pads/2.jpg']::text[], 'new', 1, '2021-10-08'::date, false, false),
  ('sram-organic-xl-quiet-brake-pads-maven', 'SRAM Organic XL Quiet Brake Pads - Maven', 'sram', 'components', 'brake-pads', '<table>
<tbody>
<tr>
<td>
<p><strong>SRAM ORGANIC XL QUIET BRAKE PADS - MAVEN</strong></p>
<p>To get the most out of your SRAM brakes and pair them with SRAM pads. They were made for each other!  The sintered pads | Powerful with copper backed plate: our most powerful, hardest hitting pad compound. Long lasting and great in wet and muddy conditions.</p>
<p>Fits SRAM Maven Brakes</p>
<p><strong>SPECIFICATIONS</strong></p>
<table>
<tbody>
<tr>
<th><strong>Material (Pads)</strong></th>
<td>Organic</td>
</tr>
<tr>
<th><strong>Material (Backer)</strong></th>
<td>Steel</td>
</tr>
</tbody>
</table>
</td>
<td> </td>
<td>

</td>
</tr>
</tbody>
</table>', array['sram-organic-xl-quiet-brake-pads-maven/1.jpg']::text[], 'new', 1, '2025-05-28'::date, false, false),
  ('sram-sintered-xl-heavy-duty-pads-maven-brakes', 'SRAM Sintered XL Heavy Duty Pads - Maven Brakes', 'sram', 'components', 'brake-pads', '<p><strong>SRAM SINTERED XL HEAVY DUTY PADS - MAVEN BRAKES</strong></p>
<p>To get the most out of your SRAM brakes and pair them with SRAM pads. They were made for each other!  The sintered pads | Powerful with copper backed plate: our most powerful, hardest hitting pad compound. Long lasting and great in wet and muddy conditions.</p>
<p>Fits SRAM Maven Brakes</p>
<p><strong>SPECIFICATIONS</strong></p>
<table>
<tbody>
<tr>
<th><strong>Material (Pads)</strong></th>
<td>Sintered</td>
</tr>
<tr>
<th><strong>Material (Backer)</strong></th>
<td>Steel</td>
</tr>
</tbody>
</table>', array['sram-sintered-xl-heavy-duty-pads-maven-brakes/1.jpg']::text[], 'new', 1, '2025-05-28'::date, false, false),
  ('swissstop-disc-brake-power-clean', 'SwissStop Disc Brake Power Clean', 'swissstop', 'components', 'brake-pads', '<p><strong>CLEAN</strong></p>
<p>Degrease, clean and care for bicycle disc brake components.</p>
<ul>
<li>acetone-free degreasing solution</li>
<li>helps loosen stuck parts</li>
<li>soiled brake systems and metal parts are freed from organic and mineral dirt in no time</li>
<li>adhesive residues can be removed</li>
<li>displaces moisture, evaporates without a trace</li>
</ul>

<p>Apply SwissStop Disc Brake Power-Clean generously, remove all dirt with a cloth or brush (360° applicable).</p>', array['swissstop-disc-brake-power-clean/1.png']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-disc-brake-silencer', 'SwissStop Disc Brake Silencer', 'swissstop', 'components', 'brake-pads', '<p><b>QUIET</b></p>
<p><em>After using it the first time I thought, “That’s just a coincidence.”</em></p>
<p><em>After the second time I thought, “Pretty cool.”</em></p>
<p><em>After the third time I thought, “It really works. This is great!”</em></p>
<p><em>Alexander Giegerich, Fahrradhof-Großwallstadt</em></p>

<p>SwissStop Disc Brake Silencer is a high-performance metallic-based release agent with a biologically degradable carrier fluid.</p>
<p>Properties:</p>
<ul>
<li>Prevents and reduces brake squealing, without impairing the braking effect</li>
<li>Simultaneously dissipates heat</li>
<li>Prevents non-uniform wear</li>
<li>Eliminates vibration on braking</li>
</ul><p><br></p><p><br></p><ul>
</ul>

<p>Instructions for use:</p>
<ol>
<li>remove brake pads from caliper</li>
<li>clean brake pads and rotor with an approved brake cleaner</li>
<li>shake the can until you can hear the ball rattling inside</li>
<li>spray a small amount of Silencer onto the brake pads and allow several minutes to dry out</li>
<li>mount brake pads</li>
<li>brake pads require a new bedding in procedure to reach proper brake power</li>
<li>check video to verify complete application process</li>
</ol>', array['swissstop-disc-brake-silencer/1.jpg', 'swissstop-disc-brake-silencer/2.jpg']::text[], 'new', 2, '2025-04-29'::date, false, false),
  ('swissstop-disc-rotor-catalyst-one-6-bolt', 'SwissStop Disc Rotor Catalyst One 6-Bolt', 'swissstop', 'components', 'brake-pads', '<h3>CATALYST ONE | SIMPLY POWERFUL BRAKING</h3>

<ul>

<li>the tested and proven Catalyst brake ring</li>

<li>one-piece construction</li>

<li>6-bolt mount</li>

<li>can be used with adapter for Centerlock hubs</li>

<li>140 and 160 mm are UCI approved</li>

</ul>

<p>Weights:</p>

<table>

<tbody>

<tr>

<td>140mm</td>

<td>100 g</td>

</tr>

<tr>

<td>160mm</td>

<td>114 g</td>

</tr>

<tr>

<td>180mm</td>

<td>156 g</td>

</tr>

<tr>

<td>203mm</td>

<td>192 g</td>

</tr>

<tr>

<td>220mm</td>

<td>218 g</td>

</tr>

</tbody>

</table>

<p>Compatible with all sintered and organic pad compounds. Optimized for SwissStop EXOTherm2 and Disc RS.</p>', array['swissstop-disc-rotor-catalyst-one-6-bolt/1.jpg', 'swissstop-disc-rotor-catalyst-one-6-bolt/2.jpg', 'swissstop-disc-rotor-catalyst-one-6-bolt/3.jpg', 'swissstop-disc-rotor-catalyst-one-6-bolt/4.jpg', 'swissstop-disc-rotor-catalyst-one-6-bolt/5.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('swissstop-disc-rotor-catalyst-one-centerlock', 'SwissStop Disc Rotor Catalyst One Centerlock', 'swissstop', 'components', 'brake-pads', '<h3>CATALYST ONE | SIMPLY POWERFUL BRAKING</h3>
<ul>
<li>the tested and proven Catalyst brake ring</li>
<li>Centerlock</li>
<li>140 and 160 mm are UCI approved</li>
</ul>
<p><br></p><p>Weights:</p>
<table>
<tbody>
<tr>
<td>140mm</td>
<td>142 g</td>
</tr>
<tr>
<td>160mm</td>
<td>162 g</td>
</tr>
<tr>
<td>180mm</td>
<td>187 g</td>
</tr>
<tr>
<td>203mm</td>
<td>250 g</td>
</tr>
<tr>
<td>220mm</td>
<td>285 g</td>
</tr>
</tbody>
</table>

<p>Compatible with all sintered and organic pad compounds. Optimized for SwissStop EXOTherm2 and Disc RS.</p>', array['swissstop-disc-rotor-catalyst-one-centerlock/1.jpg', 'swissstop-disc-rotor-catalyst-one-centerlock/2.jpg', 'swissstop-disc-rotor-catalyst-one-centerlock/3.jpg', 'swissstop-disc-rotor-catalyst-one-centerlock/4.jpg', 'swissstop-disc-rotor-catalyst-one-centerlock/5.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('swissstop-disc-rotor-catalyst-pro-6-bolt', 'SwissStop Disc Rotor Catalyst Pro 6-Bolt', 'swissstop', 'components', 'brake-pads', '<h3>CATALYST PRO | READY FOR EVERYTHING</h3>
<ul>
<li>the original Catalyst that set new standards for performance and durability</li>
<li>two-piece construction</li>
<li>aluminum alloy spider provides increased stiffness</li>
<li>brake ring thickness is optimized and specific to each diameter</li>
<li>used by top road, mountain and cyclocross teams</li>
<li>6-bolt mount</li>
<li>can be used with adapter for Centerlock hubs</li>
<li>140 and 160 mm are UCI approved</li>
</ul>
<p><br></p><p>Weights:</p>
<table>
<tbody>
<tr>
<td>140mm</td>
<td>108 g</td>
</tr>
<tr>
<td>160mm</td>
<td>124 g</td>
</tr>
<tr>
<td>180mm</td>
<td>160 g</td>
</tr>
<tr>
<td>203mm</td>
<td>200 g</td>
</tr>
<tr>
<td>220mm</td>
<td>235 g</td>
</tr>
</tbody>
</table>

<p>Compatible with all sintered and organic pad compounds. Optimized for SwissStop <a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTherm2</a> and <a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">Disc RS</a>.</p>', array['swissstop-disc-rotor-catalyst-pro-6-bolt/1.jpg', 'swissstop-disc-rotor-catalyst-pro-6-bolt/2.jpg', 'swissstop-disc-rotor-catalyst-pro-6-bolt/3.jpg', 'swissstop-disc-rotor-catalyst-pro-6-bolt/4.jpg', 'swissstop-disc-rotor-catalyst-pro-6-bolt/5.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('swissstop-disc-rotor-catalyst-pro-centerlock', 'SwissStop Disc Rotor Catalyst Pro Centerlock', 'swissstop', 'components', 'brake-pads', '<h3>CATALYST PRO | READY FOR EVERYTHING</h3>
<ul>
<li>the original Catalyst that set new standards for performance and durability</li>
<li>two-piece construction</li>
<li>aluminum alloy spider provides increased stiffness</li>
<li>brake ring thickness is optimized and specific to each diameter</li>
<li>used by top road, mountain and cyclocross teams</li>
<li>Centerlock</li>
<li>140 and 160 mm are UCI approved</li>
</ul>
<p><br></p><p>Weights:</p>
<table>
<tbody>
<tr>
<td>140mm</td>
<td>123 g</td>
</tr>
<tr>
<td>160mm</td>
<td>138 g</td>
</tr>
<tr>
<td>180mm</td>
<td>173 g</td>
</tr>
<tr>
<td>203mm</td>
<td>214 g</td>
</tr>
<tr>
<td>220mm</td>
<td>255 g</td>
</tr>
</tbody>
</table>

<p>Compatible with all sintered and organic pad compounds. Optimized for SwissStop <a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTherm2</a> and <a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">Disc RS</a>.</p>', array['swissstop-disc-rotor-catalyst-pro-centerlock/1.jpg', 'swissstop-disc-rotor-catalyst-pro-centerlock/2.jpg', 'swissstop-disc-rotor-catalyst-pro-centerlock/3.jpg', 'swissstop-disc-rotor-catalyst-pro-centerlock/4.jpg', 'swissstop-disc-rotor-catalyst-pro-centerlock/5.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('swissstop-disc-rotor-catalyst-race-centerlock', 'SwissStop Disc Rotor Catalyst Race Centerlock', 'swissstop', 'components', 'brake-pads', '<h3>CATALYST RACE | LIGHTWEIGHT AND WITHOUT COMPROMISE</h3>
<ul>
<li>12% lighter than Catalyst Pro</li>
<li>two-piece construction</li>
<li>brake ring dimensions are optimized for race pads</li>
<li>aluminum alloy spider provides increased stiffness</li>
<li>new spider design for improved aerodynamics</li>
<li>Centerlock</li>
<li>140 and 160 mm are UCI approved</li>
</ul>
<p><br></p><p>Weights:</p>
<table>
<tbody>
<tr>
<td>140mm</td>
<td>110 g</td>
</tr>
<tr>
<td>160mm</td>
<td>122 g</td>
</tr>
</tbody>
</table>

<p>Compatible with all sintered and organic pad compounds. Optimized for SwissStop <a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTherm2</a> and <a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">Disc RS</a>.</p>', array['swissstop-disc-rotor-catalyst-race-centerlock/1.jpg', 'swissstop-disc-rotor-catalyst-race-centerlock/2.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('swissstop-flashpro-carbon-rim', 'SwissStop FlashPro Carbon Rim', 'swissstop', 'components', 'brake-pads', '<p>FOR <strong>CARBON RIMS</strong></p>
<h5>CHARACTERISTICS</h5>
<p>High performance compound for carbon wheels. Excellent stopping power wet and dry with superior modulation and low pad wear rates.</p>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p>Stopping Power: 9</p>
<p>Longevity: 8</p>
<p>Modulation: 7 </p>
<p><a href="https://www.swissstop.com/tech/compounds/yellow-king/" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://www.swissstop.com/tech/compounds/yellow-king/" rel="noopener nofollow" target="_blank">YELLOW KING COMPOUND - READ MORE</a></p>
<h5>COMPATIBILITY</h5>
<p><em>warning</em> Please ensure the Yellow King compound meets the compatibility and warranty requirements of your wheels.</p>
<h5>FITS</h5>
<ul>
<li>SRAM Road</li>
<li>Shimano Road</li>
<li>CAMPA Potenza - 2016 and newer</li>
<li>CAMPA Athena - 2016 and newer</li>
<li>CAMPA Veloce - 2016 and newer</li>
<li>CAMPA Centaur - 2017 and newer</li>
<li>CAMPA Direct DM</li>
</ul>', array['swissstop-flashpro-carbon-rim/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-15-c', 'SwissStop Pads Disc 15 C', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>High performance Kevlar, ceramic, brass and resin composite material. Provides excellent brake power with minimal effort at the brake lever. Performance is consistent in both wet and dry conditions and pad life is excellent. High quality springs included with every set (where applicable). </p>
<h5>PERFORMANCE</h5>
0 (WORST) - 10 (BEST)
Initial Bite: 9
Modulation: 8 
Longevity: 7 
Heat Tolerance: 7
Noise Dry: 9
Noise Wet: 9<br>
<p><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank">DISC C COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>B01S</li>
</ul>
Brake Calipers
<ul>
<li>Deore BR-MT410,BR-M575,BR-M525,BR-M515,BR-T615</li>
<li>LX BR-T675</li>
<li>Alivio BR-M4050</li>
<li>Acera BR-M3050</li>
<li>Altus BR-M375,BR-M365,BR-M315</li>
<li>BR-M506</li>
<li>BR-M505</li>
<li>BR-MT500</li>
<li>BR-M495</li>
<li>BR-M486</li>
<li>BR-M485</li>
<li>BR-M475</li>
<li>BR-M465</li>
<li>BR-M447</li>
<li>BR-M446</li>
<li>BR-M445</li>
<li>BR-M416</li>
<li>BR-M415</li>
<li>BR-MT400</li>
<li>BR-M395</li>
<li>BR-M355</li>
<li>BR-M200</li>
</ul>
<h4>TRP</h4>
Brake Calipers
<ul>
<li>Hylex</li>
<li>HY/RD</li>
<li>Spyre SLC</li>
<li>Spyre</li>
<li>Spyke</li>
<li>Dash Sport</li>
</ul>
<h4>Tektro</h4>
Brake Calipers
<ul>
<li>Orion SL HD-M740</li>
<li>Orion HD-M730,HD-M725</li>
<li>Gemini SL HD-M520 / M521</li>
<li>Gemini HD-M500 / M501,HD-M510</li>
<li>Draco2 HD-M352</li>
<li>HDC330 HD-M330</li>
<li>Auriga HD-M290 / M291,HD-T530,HD-T525,HD-E530,HD-E525,HD-E520,HD-E500</li>
<li>Aquila MD-M500</li>
<li>Aries MD-M300</li>
<li>Mira MD-C400</li>
<li>Volans HD-T710</li>
<li>Vela HD-T290</li>
<li>Dorado HD-E715</li>
<li>HD-R280</li>
<li>MD-M280</li>
<li>HD-M282</li>
<li>HD-M285/286</li>
<li>HD-T285/T286</li>
</ul>
<h4>QUAD</h4>
Brake Calipers
<ul>
<li>Disc Brake</li>
</ul>', array['swissstop-pads-disc-15-c/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-15-e', 'SwissStop Pads Disc 15 E', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS </h5>
<ul>
<li>long lasting, high endurance pad compound</li>
<li>very easy modulation of braking force</li>
<li>high temperature stability for consistent brake power</li>
<li>organic formula is low noise and rotor friendly</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 7
Modulation: 9 
Longevity: 9
Heat Tolerance: 9 
Noise Dry: 9
Noise Wet: 7
<h5><a href="https://www.swissstop.com/tech/compounds/disc-e/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-e/" rel="noopener nofollow" target="_blank">DISC E COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>B01S</li>
</ul>
Brake Calipers
<ul>
<li>Deore BR-MT410,BR-M575,BR-M525,BR-M515,BR-T615</li>
<li>LX BR-T675</li>
<li>Alivio BR-M4050</li>
<li>Acera BR-M3050</li>
<li>Altus BR-M375,BR-M365,BR-M315</li>
<li>BR-M506</li>
<li>BR-M505</li>
<li>BR-MT500</li>
<li>BR-M495</li>
<li>BR-M486</li>
<li>BR-M485</li>
<li>BR-M475</li>
<li>BR-M465</li>
<li>BR-M447</li>
<li>BR-M446</li>
<li>BR-M445</li>
<li>BR-M416</li>
<li>BR-M415</li>
<li>BR-MT400</li>
<li>BR-M395</li>
<li>BR-M355</li>
<li>BR-M200</li>
</ul>
<h4>TRP</h4>
Brake Calipers
<ul>
<li>Hylex</li>
<li>HY/RD</li>
<li>Spyre SLC</li>
<li>Spyre</li>
<li>Spyke</li>
<li>Dash Sport</li>
</ul>
<h4>Tektro</h4>
Brake Calipers
<ul>
<li>Orion SL HD-M740</li>
<li>Orion HD-M730,HD-M725</li>
<li>Gemini SL HD-M520 / M521</li>
<li>Gemini HD-M500 / M501,HD-M510</li>
<li>Draco2 HD-M352</li>
<li>HDC330 HD-M330</li>
<li>Auriga HD-M290 / M291,HD-T530,HD-T525,HD-E530,HD-E525,HD-E520,HD-E500</li>
<li>Aquila MD-M500</li>
<li>Aries MD-M300</li>
<li>Mira MD-C400</li>
<li>Volans HD-T710</li>
<li>Vela HD-T290</li>
<li>Dorado HD-E715</li>
<li>HD-R280</li>
<li>MD-M280</li>
<li>HD-M282</li>
<li>HD-M285/286</li>
<li>HD-T285/T286</li>
</ul>
<h4>QUAD</h4>
Brake Calipers
<ul>
<li>Disc Brake</li>
</ul>', array['swissstop-pads-disc-15-e/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-15-rs', 'SwissStop Pads Disc 15 RS', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<ul>
<li>consistently quiet operation</li>
<li>smooth feel in the brake lever</li>
<li>predictable and progressive brake power</li>
<li>very high durability</li>
</ul>

<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 10
Modulation: 8
Longevity: 8 
Heat Tolerance: 8
Noise Dry: 10
Noise Wet: 10
<h5><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">DISC RS COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>B01S</li>
</ul>
Brake Calipers
<ul>
<li>Deore BR-MT410,BR-M575,BR-M525,BR-M515,BR-T615</li>
<li>LX BR-T675</li>
<li>Alivio BR-M4050</li>
<li>Acera BR-M3050</li>
<li>Altus BR-M375,BR-M365,BR-M315</li>
<li>BR-M506</li>
<li>BR-M505</li>
<li>BR-MT500</li>
<li>BR-M495</li>
<li>BR-M486</li>
<li>BR-M485</li>
<li>BR-M475</li>
<li>BR-M465</li>
<li>BR-M447</li>
<li>BR-M446</li>
<li>BR-M445</li>
<li>BR-M416</li>
<li>BR-M415</li>
<li>BR-MT400</li>
<li>BR-M395</li>
<li>BR-M355</li>
<li>BR-M200</li>
</ul>
<h4>TRP</h4>
Brake Calipers
<ul>
<li>Hylex</li>
<li>HY/RD</li>
<li>Spyre SLC</li>
<li>Spyre</li>
<li>Spyke</li>
<li>Dash Sport</li>
</ul>
<h4>Tektro</h4>
Brake Calipers
<ul>
<li>Orion SL HD-M740</li>
<li>Orion HD-M730,HD-M725</li>
<li>Gemini SL HD-M520 / M521</li>
<li>Gemini HD-M500 / M501,HD-M510</li>
<li>Draco2 HD-M352</li>
<li>HDC330 HD-M330</li>
<li>Auriga HD-M290 / M291,HD-T530,HD-T525,HD-E530,HD-E525,HD-E520,HD-E500</li>
<li>Aquila MD-M500</li>
<li>Aries MD-M300</li>
<li>Mira MD-C400</li>
<li>Volans HD-T710</li>
<li>Vela HD-T290</li>
<li>Dorado HD-E715</li>
<li>HD-R280</li>
<li>MD-M280</li>
<li>HD-M282</li>
<li>HD-M285/286</li>
<li>HD-T285/T286</li>
</ul>
<h4>QUAD</h4>
Brake Calipers
<ul>
<li>Disc Brake</li>
</ul>', array['swissstop-pads-disc-15-rs/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-16-c', 'SwissStop Pads Disc 16 C', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>High performance Kevlar, ceramic, brass and resin composite material. Provides excellent brake power with minimal effort at the brake lever. Performance is consistent in both wet and dry conditions and pad life is excellent. High quality springs included with every set (where applicable).</p>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 9 
Modulation: 8
Longevity: 7
Heat Tolerance: 7
Noise Dry: 9
Noise Wet: 9 
<h5><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank">DISC C COMPOUND - READ MORE</a></p>

<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>M06</li>
<li>A01S</li>
</ul>
Brake Calipers
<ul>
<li>XTR BR-M975,BR-M966,BR-M965</li>
<li>XT BR-M776,BR-M775,BR-M765</li>
<li>SLX BR-M665</li>
<li>LX BR-M585,BR-T665,BR-T605</li>
<li>DEORE BR-M596,BR-M595,BR-M535</li>
<li>ALFINE BR-S501,BR-S500</li>
<li>SAINT BR-M800</li>
<li>HONE BR-M601</li>
<li>BR-M545</li>
<li>BR-R505</li>
</ul>
<h4>TRP</h4>
Brake Calipers
<ul>
<li>Dash Carbon</li>
</ul>', array['swissstop-pads-disc-16-c/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-26-c', 'SwissStop Pads Disc 26 C', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>High performance Kevlar, ceramic, brass and resin composite material. Provides excellent brake power with minimal effort at the brake lever. Performance is consistent in both wet and dry conditions and pad life is excellent. High quality springs included with every set (where applicable).</p>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p>Initial Bite: 9 <br>Modulation: 8 <br>Longevity: 7 <br>Heat Tolerance: 7 <br>Noise Dry: 9 <br>Noise Wet: 9</p>
<h5><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank">DISC C COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>SRAM</h4>
Brake Calipers
<ul>
<li>XX</li>
<li>XO</li>
<li>DB 5,3,1</li>
<li>Level TL,Level T,Level</li>
</ul>
<h4>Avid</h4>
Brake Calipers
<ul>
<li>Elixir 9,7,5,3,1,CR,R</li>
</ul>', array['swissstop-pads-disc-26-c/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-27-c', 'SwissStop Pads Disc 27 C', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>High performance Kevlar, ceramic, brass and resin composite material. Provides excellent brake power with minimal effort at the brake lever. Performance is consistent in both wet and dry conditions and pad life is excellent. High quality springs included with every set (where applicable).</p>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 9 <br>Modulation: 8 <br>Longevity: 7 <br>Heat Tolerance: 7 <br>Noise Dry: 9 <br>Noise Wet: 9</p>
<h5><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank">DISC C COMPOUND - READ MORE</a></p>
<h5> </h5>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>N03A</li>
<li>D02S</li>
<li>H03A</li>
<li>H03C</li>
</ul>
Brake Calipers
<ul>
<li>XTR BR-M9120</li>
<li>XT BR-M8120,BR-M8020</li>
<li>SLX BR-M7120</li>
<li>DEORE BR-M6120,BR-MT420</li>
<li>SAINT BR-M820,BR-M810</li>
<li>ZEE BR-M640</li>
<li>BR-MT520</li>
</ul>
<h4>TRP</h4>
Brake Calipers
<ul>
<li>Quadiem</li>
<li>Quadiem SL</li>
<li>Slate T4</li>
</ul>
<h4>Tektro</h4>
Brake Calipers
<ul>
<li>HD-M750</li>
<li>HD-M745</li>
<li>HD-M735</li>
<li>HD-E725</li>
</ul>', array['swissstop-pads-disc-27-c/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-27-e', 'SwissStop Pads Disc 27 E', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS </h5>
<ul>
<li>long lasting, high endurance pad compound</li>
<li>very easy modulation of braking force</li>
<li>high temperature stability for consistent brake power</li>
<li>organic formula is low noise and rotor friendly</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 7
Modulation: 9 
Longevity: 9
Heat Tolerance: 9 
Noise Dry: 9
Noise Wet: 7
<h5><a href="https://www.swissstop.com/tech/compounds/disc-e/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-e/" rel="noopener nofollow" target="_blank">DISC E COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>N03A</li>
<li>D02S</li>
<li>H03A</li>
<li>H03C</li>
</ul>
Brake Calipers
<ul>
<li>XTR BR-M9120</li>
<li>XT BR-M8120,BR-M8020</li>
<li>SLX BR-M7120</li>
<li>DEORE BR-M6120,BR-MT420</li>
<li>SAINT BR-M820,BR-M810</li>
<li>ZEE BR-M640</li>
<li>BR-MT520</li>
</ul>
<h4>TRP</h4>
Brake Calipers
<ul>
<li>Quadiem</li>
<li>Quadiem SL</li>
<li>Slate T4</li>
</ul>
<h4>Tektro</h4>
Brake Calipers
<ul>
<li>HD-M750</li>
<li>HD-M745</li>
<li>HD-M735</li>
<li>HD-E725</li>
</ul>', array['swissstop-pads-disc-27-e/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-27-exotherm2', 'SwissStop Pads Disc 27 EXOTherm2', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>Maximum pad life. Minimum brake fade.</p>
<p>EXOTherm2 combines a very durable, easy to modulate compound with a cooling fin equipped back plate to provide consistent, powerful braking in all conditions.</p>
<ul>
<li>pad wear rate is much lower than competitors</li>
<li>smooth, consistent brake performance</li>
<li>lightweight at 22 grams per pair (Disc 28 EXOTherm2) </li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 7 <br>Modulation: 9 <br>Longevity: 10 <br>Heat Tolerance: 10 <br>Noise Dry: 9 <br>Noise Wet: 7</p>
<h5><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTHERM2 COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>N03A</li>
<li>D02S</li>
<li>H03A</li>
<li>H03C</li>
</ul>
Brake Calipers
<ul>
<li>XTR BR-M9120</li>
<li>XT BR-M8120,BR-M8020</li>
<li>SLX BR-M7120</li>
<li>DEORE BR-M6120,BR-MT420</li>
<li>SAINT BR-M820,BR-M810</li>
<li>ZEE BR-M640</li>
<li>BR-MT520</li>
</ul>
<h4>TRP</h4>
Brake Calipers
<ul>
<li>Quadiem</li>
<li>Quadiem SL</li>
<li>Slate T4</li>
</ul>
<h4>Tektro</h4>
Brake Calipers
<ul>
<li>HD-M750</li>
<li>HD-M745</li>
<li>HD-M735</li>
<li>HD-E725</li>
</ul>', array['swissstop-pads-disc-27-exotherm2/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-27-rs', 'SwissStop Pads Disc 27 RS', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<ul>
<li>consistently quiet operation</li>
<li>smooth feel in the brake lever</li>
<li>predictable and progressive brake power</li>
<li>very high durability</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 10
Modulation: 8
Longevity: 8 
Heat Tolerance: 8
Noise Dry: 10
Noise Wet: 10
<h5><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">DISC RS COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>N03A</li>
<li>D02S</li>
<li>H03A</li>
<li>H03C</li>
</ul>
Brake Calipers
<ul>
<li>XTR BR-M9120</li>
<li>XT BR-M8120,BR-M8020</li>
<li>SLX BR-M7120</li>
<li>DEORE BR-M6120,BR-MT420</li>
<li>SAINT BR-M820,BR-M810</li>
<li>ZEE BR-M640</li>
<li>BR-MT520</li>
</ul>
<h4>TRP</h4>
Brake Calipers
<ul>
<li>Quadiem</li>
<li>Quadiem SL</li>
<li>Slate T4</li>
</ul>
<h4>Tektro</h4>
Brake Calipers
<ul>
<li>HD-M750</li>
<li>HD-M745</li>
<li>HD-M735</li>
<li>HD-E725</li>
</ul>', array['swissstop-pads-disc-27-rs/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-28-c', 'SwissStop Pads Disc 28 C', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>High performance Kevlar, ceramic, brass and resin composite material. Provides excellent brake power with minimal effort at the brake lever. Performance is consistent in both wet and dry conditions and pad life is excellent. High quality springs included with every set (where applicable).</p>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 9 <br>Modulation: 8 <br>Longevity: 7 <br>Heat Tolerance: 7 <br>Noise Dry: 9 <br>Noise Wet: 9</p>
<h5><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank">DISC C COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>G03A</li>
<li>G02A</li>
<li>G03S</li>
<li>J03A</li>
<li>J02A</li>
<li>J04C</li>
</ul>
Brake Calipers
<ul>
<li>XTR BR-M9000,BR-M9020,BR-M987,BR-M988,BR-M985</li>
<li>XT BR-M8100,BR-M8000,BR-M785</li>
<li>SLX BR-M7100,BR-M7000,BR-M675,BR-M666</li>
<li>DEORE BR-M6100,BR-M6000,BR-M615</li>
<li>ALFINE BR-S700,BR-S7000</li>
<li>BR-RS785</li>
<li>BR-R785</li>
<li>BR-CX75</li>
<li>BR-R515</li>
<li>BR-R315</li>
</ul>
<h4>FSA</h4>
Brake Calipers
<ul>
<li>K-Force DB-TX-9000</li>
<li>Afterburner DB-TX-9150</li>
</ul>
<h4>REVER</h4>
Brake Calipers
<ul>
<li>MCX1 Post Mount</li>
</ul>', array['swissstop-pads-disc-28-c/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-28-exotherm2', 'SwissStop Pads Disc 28 EXOTherm2', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>Maximum pad life. Minimum brake fade.</p>
<p>EXOTherm2 combines a very durable, easy to modulate compound with a cooling fin equipped back plate to provide consistent, powerful braking in all conditions.</p>
<ul>
<li>pad wear rate is much lower than competitors</li>
<li>smooth, consistent brake performance</li>
<li>lightweight at 22 grams per pair (Disc 28 EXOTherm2) </li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 7 <br>Modulation: 9 <br>Longevity: 10 <br>Heat Tolerance: 10 <br>Noise Dry: 9 <br>Noise Wet: 7</p>
<h5><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTHERM2 COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>G03A</li>
<li>G02A</li>
<li>G03S</li>
<li>J03A</li>
<li>J02A</li>
<li>J04C</li>
</ul>
Brake Calipers
<ul>
<li>XTR BR-M9000,BR-M9020,BR-M987,BR-M988,BR-M985</li>
<li>XT BR-M8100,BR-M8000,BR-M785</li>
<li>SLX BR-M7100,BR-M7000,BR-M675,BR-M666</li>
<li>DEORE BR-M6100,BR-M6000,BR-M615</li>
<li>ALFINE BR-S700,BR-S7000</li>
<li>BR-RS785</li>
<li>BR-R785</li>
<li>BR-CX75</li>
<li>BR-R515</li>
<li>BR-R315</li>
</ul>
<h4>FSA</h4>
Brake Calipers
<ul>
<li>K-Force DB-TX-9000</li>
<li>Afterburner DB-TX-9150</li>
</ul>
<h4>REVER</h4>
Brake Calipers
<ul>
<li>MCX1 Post Mount</li>
</ul>', array['swissstop-pads-disc-28-exotherm2/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-28-rs', 'SwissStop Pads Disc 28 RS', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<ul>
<li>consistently quiet operation</li>
<li>smooth feel in the brake lever</li>
<li>predictable and progressive brake power</li>
<li>very high durability</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 10
Modulation: 8
Longevity: 8 
Heat Tolerance: 8
Noise Dry: 10
Noise Wet: 10
<h5><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">DISC RS COMPOUND - READ MORE</a></p>
<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>G03A</li>
<li>G02A</li>
<li>G03S</li>
<li>J03A</li>
<li>J02A</li>
<li>J04C</li>
</ul>
Brake Calipers
<ul>
<li>XTR BR-M9000,BR-M9020,BR-M987,BR-M988,BR-M985</li>
<li>XT BR-M8100,BR-M8000,BR-M785</li>
<li>SLX BR-M7100,BR-M7000,BR-M675,BR-M666</li>
<li>DEORE BR-M6100,BR-M6000,BR-M615</li>
<li>ALFINE BR-S700,BR-S7000</li>
<li>BR-RS785</li>
<li>BR-R785</li>
<li>BR-CX75</li>
<li>BR-R515</li>
<li>BR-R315</li>
</ul>
<h4>FSA</h4>
Brake Calipers
<ul>
<li>K-Force DB-TX-9000</li>
<li>Afterburner DB-TX-9150</li>
</ul>
<h4>REVER</h4>
Brake Calipers
<ul>
<li>MCX1 Post Mount</li>
</ul>', array['swissstop-pads-disc-28-rs/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-29-c', 'SwissStop Pads Disc 29 C', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>High performance Kevlar, ceramic, brass and resin composite material. Provides excellent brake power with minimal effort at the brake lever. Performance is consistent in both wet and dry conditions and pad life is excellent. High quality springs included with every set (where applicable).</p>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 9 <br>Modulation: 8 <br>Longevity: 7 <br>Heat Tolerance: 7 <br>Noise Dry: 9 <br>Noise Wet: 9</p>
<h5><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank">DISC C COMPOUND - READ MORE</a></p>
<h5> </h5>
<h5>FITS</h5>
<h4>SRAM</h4>
Brake Calipers
<ul>
<li>Code R (2018+),RSC (2018+)</li>
<li>Guide RE</li>
<li>DB8</li>
</ul>
<h4>Avid</h4>
Brake Calipers
<ul>
<li>Code (2011-2014)</li>
<li>Code R</li>
</ul>
<h5> </h5>', array['swissstop-pads-disc-29-c/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-29-rs', 'SwissStop Pads Disc 29 RS', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<ul>
<li>consistently quiet operation</li>
<li>smooth feel in the brake lever</li>
<li>predictable and progressive brake power</li>
<li>very high durability</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 10
Modulation: 8
Longevity: 8 
Heat Tolerance: 8
Noise Dry: 10
Noise Wet: 10
<h5><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">DISC RS COMPOUND - READ MORE</a></p>
<h5> </h5>
<h5>FITS</h5>
<h4>SRAM</h4>
Brake Calipers
<ul>
<li>Code R (2018+),RSC (2018+)</li>
<li>Guide RE</li>
<li>DB8</li>
</ul>
<h4>Avid</h4>
Brake Calipers
<ul>
<li>Code (2011-2014)</li>
<li>Code R</li>
</ul>
<h5> </h5>', array['swissstop-pads-disc-29-rs/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-30-exotherm2', 'SwissStop Pads Disc 30 EXOTherm2', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>Maximum pad life. Minimum brake fade.</p>
<p>EXOTherm2 combines a very durable, easy to modulate compound with a cooling fin equipped back plate to provide consistent, powerful braking in all conditions.</p>
<ul>
<li>pad wear rate is much lower than competitors</li>
<li>smooth, consistent brake performance</li>
<li>lightweight at 22 grams per pair (Disc 28 EXOTherm2) </li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 7 <br>Modulation: 9 <br>Longevity: 10 <br>Heat Tolerance: 10 <br>Noise Dry: 9 <br>Noise Wet: 7</p>
<h5>
<a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank"></a> 
</h5>
<p> <a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTHERM2 COMPOUND - READ MORE</a></p>

<h5>FITS</h5>
<h4>Magura</h4>
Brake Calipers
<ul>
<li>MT 2,4,6,8</li>
</ul>
<h4>Campagnolo</h4>
Brake Calipers
<ul>
<li>Hydraulic Disc Brake Systems</li>
<li>including EKAR (replacement for DB-210, DB-310 type pads)</li>
</ul>', array['swissstop-pads-disc-30-exotherm2/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-30-rs', 'SwissStop Pads Disc 30 RS', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<ul>
<li>consistently quiet operation</li>
<li>smooth feel in the brake lever</li>
<li>predictable and progressive brake power</li>
<li>very high durability</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 10
Modulation: 8
Longevity: 8 
Heat Tolerance: 8
Noise Dry: 10
Noise Wet: 10
<h5><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">DISC RS COMPOUND - READ MORE</a></p>

<h5>FITS</h5>
<h4>Magura</h4>
Brake Calipers
<ul>
<li>MT 2,4,6,8</li>
</ul>
<h4>Campagnolo</h4>
Brake Calipers
<ul>
<li>Hydraulic Disc Brake Systems</li>
<li>including EKAR (replacement for DB-210, DB-310 type pads)</li>
</ul>', array['swissstop-pads-disc-30-rs/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-31-c', 'SwissStop Pads Disc 31 C', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>High performance Kevlar, ceramic, brass and resin composite material. Provides excellent brake power with minimal effort at the brake lever. Performance is consistent in both wet and dry conditions and pad life is excellent. High quality springs included with every set (where applicable).</p>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 9 <br>Modulation: 8 <br>Longevity: 7 <br>Heat Tolerance: 7 <br>Noise Dry: 9 <br>Noise Wet: 9</p>
<h5><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-c/" rel="noopener nofollow" target="_blank">DISC C COMPOUND - READ MORE</a></p>
<h5> </h5>
<h5>FITS</h5>
<h4>SRAM</h4>
Brake Calipers
<ul>
<li>G2 Ultimate,RSC</li>
<li>Guide Ultimate,RSC,RS,R,T</li>
</ul>
<h4>Avid</h4>
Brake Calipers
<ul>
<li>XO Trail</li>
<li>Elixir 9 Trail</li>
<li>Elixir 7 Trail</li>
</ul>
<h5> </h5>', array['swissstop-pads-disc-31-c/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-31-exotherm2', 'SwissStop Pads Disc 31 EXOTherm2', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>Maximum pad life. Minimum brake fade.</p>
<p>EXOTherm2 combines a very durable, easy to modulate compound with a cooling fin equipped back plate to provide consistent, powerful braking in all conditions.</p>
<ul>
<li>pad wear rate is much lower than competitors</li>
<li>smooth, consistent brake performance</li>
<li>lightweight at 22 grams per pair (Disc 28 EXOTherm2) </li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 7 <br>Modulation: 9 <br>Longevity: 10 <br>Heat Tolerance: 10 <br>Noise Dry: 9 <br>Noise Wet: 7</p>
<h5><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTHERM2 COMPOUND - READ MORE</a></p>
<h5> </h5>
<h5>FITS</h5>
<h4>SRAM</h4>
Brake Calipers
<ul>
<li>G2 Ultimate,RSC</li>
<li>Guide Ultimate,RSC,RS,R,T</li>
</ul>
<h4>Avid</h4>
Brake Calipers
<ul>
<li>XO Trail</li>
<li>Elixir 9 Trail</li>
<li>Elixir 7 Trail</li>
</ul>
<h5> </h5>', array['swissstop-pads-disc-31-exotherm2/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-31-rs', 'SwissStop Pads Disc 31 RS', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<ul>
<li>consistently quiet operation</li>
<li>smooth feel in the brake lever</li>
<li>predictable and progressive brake power</li>
<li>very high durability</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 10
Modulation: 8
Longevity: 8 
Heat Tolerance: 8
Noise Dry: 10
Noise Wet: 10
<h5><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">DISC RS COMPOUND - READ MORE</a></p>
<h5> </h5>
<h5>FITS</h5>
<h4>SRAM</h4>
Brake Calipers
<ul>
<li>G2 Ultimate,RSC</li>
<li>Guide Ultimate,RSC,RS,R,T</li>
</ul>
<h4>Avid</h4>
Brake Calipers
<ul>
<li>XO Trail</li>
<li>Elixir 9 Trail</li>
<li>Elixir 7 Trail</li>
</ul>
<h5> </h5>', array['swissstop-pads-disc-31-rs/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-33-e', 'SwissStop Pads Disc 33 E', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS </h5>
<ul>
<li>long lasting, high endurance pad compound</li>
<li>very easy modulation of braking force</li>
<li>high temperature stability for consistent brake power</li>
<li>organic formula is low noise and rotor friendly</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 7
Modulation: 9 
Longevity: 9
Heat Tolerance: 9 
Noise Dry: 9
Noise Wet: 7
<h5><a href="https://www.swissstop.com/tech/compounds/disc-e/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-e/" rel="noopener nofollow" target="_blank">DISC E COMPOUND - READ MORE</a></p>

<h5>FITS</h5>
<h4>Magura</h4>
Brake Calipers
<ul>
<li>MT 5,7</li>
</ul>', array['swissstop-pads-disc-33-e/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-34-exotherm2', 'SwissStop Pads Disc 34 EXOTherm2', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>Maximum pad life. Minimum brake fade.</p>
<p>EXOTherm2 combines a very durable, easy to modulate compound with a cooling fin equipped back plate to provide consistent, powerful braking in all conditions.</p>
<ul>
<li>pad wear rate is much lower than competitors</li>
<li>smooth, consistent brake performance</li>
<li>lightweight at 22 grams per pair (Disc 28 EXOTherm2) </li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 7 <br>Modulation: 9 <br>Longevity: 10 <br>Heat Tolerance: 10 <br>Noise Dry: 9 <br>Noise Wet: 7</p>
<h5><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTHERM2 COMPOUND - READ MORE</a></p>

<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>K03S</li>
<li>K02S</li>
<li>L03A</li>
<li>L02A</li>
<li>L04C</li>
</ul>
Brake Calipers
<ul>
<li>Dura Ace BR-R9270,BR-R9170</li>
<li>Ultegra BR-R8170,BR-R8070</li>
<li>105 BR-R7070</li>
<li>Tiagra BR-4770</li>
<li>GRX BR-RX810,BR-RX400</li>
<li>BR-RS805</li>
<li>BR-RS505</li>
<li>BR-RS405</li>
<li>BR-RS305</li>
</ul>', array['swissstop-pads-disc-34-exotherm2/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-34-rs', 'SwissStop Pads Disc 34 RS', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<ul>
<li>consistently quiet operation</li>
<li>smooth feel in the brake lever</li>
<li>predictable and progressive brake power</li>
<li>very high durability</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 10
Modulation: 8
Longevity: 8 
Heat Tolerance: 8
Noise Dry: 10
Noise Wet: 10
<h5><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">DISC RS COMPOUND - READ MORE</a></p>

<h5>FITS</h5>
<h4>Shimano</h4>
Pad Types
<ul>
<li>K03S</li>
<li>K02S</li>
<li>L03A</li>
<li>L02A</li>
<li>L04C</li>
</ul>
Brake Calipers
<ul>
<li>Dura Ace BR-R9270,BR-R9170</li>
<li>Ultegra BR-R8170,BR-R8070</li>
<li>105 BR-R7070</li>
<li>Tiagra BR-4770</li>
<li>GRX BR-RX810,BR-RX400</li>
<li>BR-RS805</li>
<li>BR-RS505</li>
<li>BR-RS405</li>
<li>BR-RS305</li>
</ul>', array['swissstop-pads-disc-34-rs/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-35-exotherm2', 'SwissStop Pads Disc 35 EXOTherm2', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<p>Maximum pad life. Minimum brake fade.</p>
<p>EXOTherm2 combines a very durable, easy to modulate compound with a cooling fin equipped back plate to provide consistent, powerful braking in all conditions.</p>
<ul>
<li>pad wear rate is much lower than competitors</li>
<li>smooth, consistent brake performance</li>
<li>lightweight at 22 grams per pair (Disc 28 EXOTherm2) </li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
<p><br>Initial Bite: 7 <br>Modulation: 9 <br>Longevity: 10 <br>Heat Tolerance: 10 <br>Noise Dry: 9 <br>Noise Wet: 7</p>
<h5>
<a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank"></a> 
</h5>
<p><a href="https://www.swissstop.com/tech/compounds/exotherm2/" rel="noopener nofollow" target="_blank">EXOTHERM2 COMPOUND - READ MORE</a></p>

<h5>FITS</h5>
<h4>SRAM</h4>
Brake Calipers
<ul>
<li>Red eTap AXS (Gen. 2 ''Two-Piece'' caliper)</li>
<li>Force eTap AXS</li>
<li>Rival eTap AXS</li>
<li>Level Ultimate,TLM B1 (2020+),TL,T,Level</li>
<li>XX</li>
<li>XO</li>
</ul>
<h4>Avid</h4>
Brake Calipers
<ul>
<li>Elixir 9,5,3,1,CR,R</li>
</ul>', array['swissstop-pads-disc-35-exotherm2/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),
  ('swissstop-pads-disc-35-rs', 'SwissStop Pads Disc 35 RS', 'swissstop', 'components', 'brake-pads', '<h5>CHARACTERISTICS</h5>
<ul>
<li>consistently quiet operation</li>
<li>smooth feel in the brake lever</li>
<li>predictable and progressive brake power</li>
<li>very high durability</li>
</ul>
<h5>PERFORMANCE</h5>
<p>0 (WORST) - 10 (BEST)</p>
Initial Bite: 10
Modulation: 8
Longevity: 8 
Heat Tolerance: 8
Noise Dry: 10
Noise Wet: 10
<h5><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank"></a></h5>
<p><a href="https://www.swissstop.com/tech/compounds/disc-rs/" rel="noopener nofollow" target="_blank">DISC RS COMPOUND - READ MORE</a></p>

<h5>FITS</h5>
<h4>SRAM</h4>
Brake Calipers
<ul>
<li>Red eTap AXS (Gen. 2 ''Two-Piece'' caliper)</li>
<li>Force eTap AXS</li>
<li>Rival eTap AXS</li>
<li>Level Ultimate,TLM B1 (2020+),TL,T,Level</li>
<li>XX</li>
<li>XO</li>
</ul>
<h4>Avid</h4>
Brake Calipers
<ul>
<li>Elixir 9,5,3,1,CR,R</li>
</ul>', array['swissstop-pads-disc-35-rs/1.jpg']::text[], 'new', 1, '2025-04-29'::date, false, false),

  -- ---- components · cassettes ----
  ('shimano105cs-r700011speedchain', 'Shimano 105 CS-R7000 11 Speed Cassettes', 'shimano', 'components', 'cassettes', '<p><strong>Description:</strong></p>
<p>A perfect companion to the SHIMANO 105 R7000 group set, the R7000 cassette is available in a ratios for road and gravel use. It is compatible with HG-EV and HG-X11 chains.</p>

<strong>Features:</strong><br>
<ul>
<li>SERIES: Ultegra R7000 Series</li>
<li>Compatible chain: HG-EV 11-speed/HG-X11</li>
<li>Speeds: 11-speed</li>
<li>Alloy Spider arm, Steel lock ring</li>
<li>Type: HG-EV</li>
</ul>', array['shimano105cs-r700011speedchain/1.jpg']::text[], 'new', 3, '2021-08-19'::date, false, true),
  ('shimano-r7000-105-12sp-cassette', 'Shimano 105 CS-R7100 12 Speed Cassette', 'shimano', 'components', 'cassettes', '<p>The Shimano 105 CS-R7100 12-speed cassette that brings versatility to any rider or road. From sprinting on the flats to climbing steep inclines, the 11-34T cassette has you covered.</p>
<ul>
<li>Refined 12-step gear combination provides peak efficiency and accelerating performance for every situation</li>
<li>Compatible with new 12-speed and road 11-speed freehub body</li>
<li>Compatible with HG 12-speed chain</li>
</ul>', array['shimano-r7000-105-12sp-cassette/1.jpg']::text[], 'new', 0, '2023-06-09'::date, false, false),
  ('shimano-ultegra-r8170-cassette', 'Shimano CS-8100 Ultegra Cassette 12 Speed', 'shimano', 'components', 'cassettes', '<p>The uninterrupted shifting experience of the ULTEGRA R8100 12-speed cassette range lets you climb, sprint, or cruise without stopping to think about your next gear change. Larger driving cogs maximize drivetrain efficiency and create compatibility with both Shimano 11 and 12-speed FREEHUB bodies.</p>
<p>HYPERGLIDE+ cassettes revolutionized off-road shifting with its seamless shifts both up and down the gear range. Now it''s time for the technology to change road cycling. Even during maximal efforts up a climb or racing a friend, riders no longer need to back off to perform a shift. In any gear, Shimano ULTEGRA R8150 drivetrains maximize efficiency thanks to larger cogs and retain compatibility with existing HYPERGLIDE FREEHUB bodies. All this while increasing to 12-gears, ULTEGRA CS-R8100 cassettes are the new paradigm in road shifting.</p>
<ul>
<li>Refined 12 step gear combination provides peak efficiency and accelerating performance for every racing situation</li>
<li>Faster, smoother shifts under maximum pedaling force</li>
<li>Compatible with new 12-speed and road 11-speed FREEHUB body</li>
</ul>', array['shimano-ultegra-r8170-cassette/1.png']::text[], 'new', 1, '2022-05-10'::date, false, true),
  ('shimano-durace-r9200-cassette', 'Shimano Durace R9200 Cassette', 'shimano', 'components', 'cassettes', '<p>The uninterrupted shifting experience of the DURA-ACE R9200 12-speed cassette range lets you climb, sprint, and push your limits without stopping to think about your next gear change. Larger driving cogs maximize drivetrain efficiency and create compatibility with both SHIMANO 11 and 12-speed freehub bodies.</p>
<p>HYPERGLIDE+ cassettes have revolutionized off-road shifting with their seamless shifts both up and down the gear range. Now it''s time for technology to change road cycling. Even during maximal efforts up a climb or nearing the finish line, riders no longer need to back off to perform a shift. In any gear, DURA-ACE R9250 drivetrains maximize efficiency thanks to larger cogs and retain compatibility with existing 11-speed freehub bodies. All this while increasing to 12-gears and without increasing weight, DURA-ACE CS-R9200 cassettes are the new paradigm in road shifting.</p>
<ul>
<li>Faster, seamless shifts under maximum pedalling load</li>
<li>Refined 12 step gear combination provides peak efficiency and accelerating performance for every situation</li>
<li>Add wider 34T spec for pro-race usage</li>
<li>Compatible with new 12-speed and road 11-speed FREEHUB body</li>
</ul>', array['shimano-durace-r9200-cassette/1.jpg']::text[], 'new', 1, '2022-11-09'::date, false, true),
  ('shimano-hg710-cassette-12speed-1136', 'Shimano HG710 Cassette 12speed 11/36', 'shimano', 'components', 'cassettes', '<p>The 11-36T 12-speed cassette offers a wide gear range of 327%. From sprinting on the flats to steep climbs, you can choose the best gear ratio to suit every situation. Gear steps are optimized for pedaling efficiency, with the first eight cogs focusing on a natural and comfortable connection, and the largest four cogs allowing you to select from a wide range of gears while avoiding abrupt gear ratio changes.</p>
<ul>
<li>

Refined 12-step gear combination provides peak efficiency and accelerating performance for every situation

</li>
<li>Compatible with 12-speed and 11-speed road freehub bodies</li>
<li>Nickel-plated sprocket and lockring</li>
<li>Anodised spider</li>
<li>Gears: 11-12-13-14-15-17-19-21-24-28-32-36T</li>
<li>Chain Compatibility: CN-M8100, CN-M9100, CN-M7100, CN-M6100</li>
</ul>
<p><b>About Shimano</b><br>Established in Japan in 1921, Shimano is the worlds largest bicycle component manufacturer. Whether it be drive systems, brakes, pedals or shoes, Shimano stands for reliable quality and performance. From Road &amp; Gravel to Mountain, Touring &amp; Urban use, Mechanical or Electric.</p>', array['shimano-hg710-cassette-12speed-1136/1.jpg']::text[], 'new', 1, '2025-01-16'::date, false, true),
  ('shimano-m5100-deore-cassette', 'Shimano M5100 Deore Cassette', 'shimano', 'components', 'cassettes', '<h3>Shimano Deore M5100 11-spd Cassette</h3>

<h3>Product Details</h3>
The Shimano CS-M5100 is the suitable cassette for the DEORE 11-speed group.<br><br>The distinctively designed HYPERGLIDE sprockets incorporate specially positioned shift ramps and tooth profiles for improved chain control during shifting. Fast and responsive indexed shifting is the result.<br><br><b>Features</b>
<ul>
<li>Available for:</li>
<ul>
<li>11-42 for 2x11-speed</li>
<li>11-51 for 1x11-speed</li>
</ul>
<li>Durable aluminium/steel construction</li>
<li>Standard HG drive shell compatible</li>
<li>Rhythm Step progression:
<ul>
<li>11-42 (11-13-15-17-19-21-24-28-32-37-42 teeth)</li>
<li>11-51 (11-13-15-18-21-24-28-33-39-45-51 teeth)</li>
</ul>
</li>
</ul>', array['shimano-m5100-deore-cassette/1.jpg']::text[], 'new', 2, '2023-06-09'::date, false, true),
  ('shimano-m8100-xt-12-speed-cassette', 'Shimano M8100 XT 12 Speed Cassette', 'shimano', 'components', 'cassettes', '<h3>Shimano XT M8100 12-spd Cassette</h3>

<h3>Product Details</h3>
<p>The Shimano M8100 is the suitable cassette for new XT 12-speed group.</p>
<p>HYPERGLIDE+ drivetrain’s redesigned cassette and chain promotes the next generation of MTB riding by enhancing speed, shifting efficiency and smoothness over any terrain.</p>
<p><strong>Note</strong>: Compatible with Shimano Micro Spline freehub body only</p>
<p><b>Features</b><br></p>
<ul>
<li>
<b>Gearing options</b>
</li>
<ul>
<li>
10-45T (12-speed rhythm step spec for Cross Country)</li>
<li>
10-51T (12-speed wide range spec for Enduro)</li>
</ul>
<li>
<b>Hyperglide+</b> for quicker shifting</li>
<li>
<b>Material:</b> Aluminium &amp; steel</li>
<li>
<b>BEAM SPIDER construction:</b> Increased acceleration</li>
<li>
<b>MICRO SPLINE:</b> new FREEHUB body construction allows for small 10t sprocket</li>
<li>
<b>Compatible chain: </b>CN-M8100 12-speed</li>
<li>
<strong>Weight</strong>: 461g (10-45t), 470g (10-51t)</li>
</ul>
<p><b>Gradation Detail:</b></p>
<ul>
<li>
<b>10-45</b> (10-12-14-16-18-21-24-28-32-36-40-45 teeth)</li>
<li>
<b>10-51</b> (10-12-14-16-18-21-24-28-33-39-45-51 teeth)</li>
</ul>', array['shimano-m8100-xt-12-speed-cassette/1.jpg']::text[], 'new', 2, '2023-02-17'::date, false, true),
  ('shimanoultegracs-r800011speedcassette', 'Shimano Ultegra CS-R8000 11 Speed Cassette', 'shimano', 'components', 'cassettes', '<p><strong>Description:</strong></p>
<p>The Ultegra CS-R8000 11-Speed cassette by Shimano - smooth-running and reliable</p>
<p>The Shimano Ultegra 11-Speed cassette CS-R8000 is available in numerous gear ratios, which reflects Shimano''s declared desire to offer each rider an individual option, from 11-25t to 14-28t you will find everything. The HG-EV technology provides even better Hyperglide shifting function for precise gear changes.</p>
<ul>
<li>Application:- Road</li>
<li>Gearing:- 11-speed</li>
<li>Gear Ratios:- 11-25, 11-28, 11-30, 11-32, 12-25, 14-28t</li>
<li>Sprocket Material:- Steel</li>
<li>Freehub Body Compatibility:- Shimano Road</li>
<li>Note:- The 11-32t version requires a GS rear derailleur.</li>
<li>HG-EV cassette</li>
<li>Powerful ratios</li>
<li>Nickel-plated sprocket, anodised lockring</li>
</ul>
<p>The HG-EV cassette is used for gradation and cadence management adapted to the rider. Shimano offers the optimum gear ratio for 11-speed shifting systems. You can choose wider or narrower ratios to meet the respective requirements road, cyclo-cross and gravel. With the HG-EV cassette you get an 11-speed shifting system without compromises in robustness and improved Hyperglide shifting function.</p>', array['shimanoultegracs-r800011speedcassette/1.jpg']::text[], 'new', 3, '2021-08-19'::date, false, true),
  ('sram-force-xg-1270-12-speed-cassette', 'SRAM Force XG-1270 12 Speed Cassette', 'sram', 'components', 'cassettes', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM FORCE XG-1270 CASSETTE </strong></p>

 <p>No matter what your aspirations or ride styles are, Force has you covered. Customize your drivetrain for your needs with 12 speeds offered in a 10-28T, 10-30T, 10-33T or 10-36T range. Pair with any of our chainrings for your dream gearing setup.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th>Speed (CS)</th>
 <td>12</td>
 </tr>
 <tr>
 <th>Gearing</th>
 <td>10-28t, 10-30t, 10-33t, 10-36t</td>
 </tr>
 <tr>
 <th>Cog finish (Cassette)</th>
 <td>Silver</td>
 </tr>
 <tr>
 <th>Technology (Cassette)</th>
 <td>XG</td>
 </tr>
 <tr>
 <th>Cog sizes</th>
 <td>10-28t;10,11,12,13,14,15,16,17,19,21,24,28, 10-30t:10,11,12,13,14,15,17,19,21,24,27,30, 10-33t;10,11,12,13,14,15,17,19,21,24,28,33, 10-36t:10,11,12,13,15,17,19,21,24,28,32,36</td>
 </tr>
 <tr>
 <th>Drivetrain Configuration</th>
 <td>1x, 2x</td>
 </tr>
 <tr>
 <th>Cassette Size (Max)</th>
 <td>28, 30, 33, 36</td>
 </tr>
 <tr>
 <th>Cassette Size (Min)</th>
 <td>10</td>
 </tr>
 <tr>
 <th>Chain Technology</th>
 <td>Road Flattop D1, Road Flattop E1</td>
 </tr>
 <tr>
 <th>Rear Derailleur Mount</th>
 <td>MTB, Road, Road L, UDH</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES </strong></p>

 <ul>
 <li>X-Range™ gearing gives you more range and a smoother gear progression, so you’re always in the right gear</li>
 <li>10-tooth start helps provide a wider gearing range</li>
 <li>At least five one-tooth jumps on 10-28T, 10-30T and 10-33T cassettes</li>
 <li>Nickel chrome plating for quiet and durability</li>
 <li>FULL PIN construction for durability and light weight</li>
 <li>Available in 10-28T, 10-30T, 10-33T or 10-36T</li>
 <li>Designed to work with an XDR™ driver body</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-force-xg-1270-12-speed-cassette/1.png', 'sram-force-xg-1270-12-speed-cassette/2.png', 'sram-force-xg-1270-12-speed-cassette/3.png', 'sram-force-xg-1270-12-speed-cassette/4.png', 'sram-force-xg-1270-12-speed-cassette/5.png']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('sram-pg-1130-nx-11-speed-1142-cassette', 'SRAM PG-1130 NX 11 Speed 11/42 Cassette', 'sram', 'components', 'cassettes', '<p><strong>SRAM POWERGLIDE™ 1130 CASSETTE</strong></p>
<p>No matter what kind of 11-speed drivetrain you have, 1x, wide-range or narrow-range—an array of PG-1130 cassette options are available with smooth, consistent shift performance at an affordable price. Personalize your gearing with PG-1130 cassettes featuring SRAM PowerGlide™ II shift technology.</p>
<p><strong>FEATURES</strong></p>
<ul>
<li>Compatible with all SRAM 11-speed chains</li>
<li>11-42t cassette fits 10 and 11-speed non-XD™ driver bodies (1.85mm spacer is required for 11-speed drivers</li>
<li>Compatible with 11-speed road splined driver bodies</li>
<li>11-42t cassettes are compatible with 1x drivetrains only</li>
<li>PowerGlide™ shift technology for smooth and positive shift performance</li>
<li>Wide range of gearing options—a perfect fit for any ride</li>
<li>Compatible with non-XD™ driver bodies</li>
<li>ISO 4210 compliant. See Declaration of Conformity for details.</li>
</ul>
<p><strong>SPECIFICATIONS</strong></p>
<p><strong>Speed</strong> (CS) 11s<br><strong>Gearing </strong>11-42t<br><strong>Cog finish (Cassette)</strong> Black, Silver<br><strong>Technology (Cassette) </strong>PG<br><strong>Cog size</strong>s 11-42t: 11,13,15,17,19,22,25,28,32,36,42</p>', array['sram-pg-1130-nx-11-speed-1142-cassette/1.jpg']::text[], 'new', 1, '2022-05-30'::date, false, false),
  ('sram-red-e1-xg-1290-12-speed-cassette', 'SRAM Red E1 XG-1290 12 Speed Cassette', 'sram', 'components', 'cassettes', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM RED E1 XG-1290 12 SPEED CASSETTE</strong></p>

 <p>Wide range and tight jumps? Why not both? Our lightest, most durable cassette breaks new ground for gearing choices as well. Four distinct cassette options, including our first 10-30T and 10-36T RED cassettes, each provide secure shift ramps specifically designed for electronic shifting, whether racing road on a 10-28T or creating an all-road setup with a 10-36T. Carefully chosen tooth jumps keep you in the right gear when you’re out of the saddle on steep climbs and making fine changes to hold a wheel while approaching a sprint.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Speed (CS)</strong></th>
 <td>12s</td>
 </tr>
 <tr>
 <th><strong>Gearing</strong></th>
 <td>10-28t, 10-30t, 10-33t, 10-36t</td>
 </tr>
 <tr>
 <th><strong>Cog finish (Cassette)</strong></th>
 <td>Rainbow, Silver</td>
 </tr>
 <tr>
 <th><strong>Technology (Cassette)</strong></th>
 <td>XG</td>
 </tr>
 <tr>
 <th><strong>Cog sizes</strong></th>
 <td>10-28t;10,11,12,13,14,15,16,17,19,21,24,28,<br>
 10-30t:10,11,12,13,14,15,17,19,21,24,27,30,<br>
 10-33t;10,11,12,13,14,15,17,19,21,24,28,33,<br>
 10-36t:10,11,12,13,15,17,19,21,24,28,32,36</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-red-e1-xg-1290-12-speed-cassette/1.jpg', 'sram-red-e1-xg-1290-12-speed-cassette/2.jpg', 'sram-red-e1-xg-1290-12-speed-cassette/3.jpg', 'sram-red-e1-xg-1290-12-speed-cassette/4.jpg', 'sram-red-e1-xg-1290-12-speed-cassette/5.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('sram-red-e1-xg-1290-12-speed-rainbow-cassette', 'SRAM Red E1 XG-1290 12 Speed Rainbow Cassette', 'sram', 'components', 'cassettes', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM RED E1 XG-1290 12 SPEED RAINBOW CASSETTE</strong></p>

 <p>Wide range and tight jumps? Why not both? Our lightest, most durable cassette breaks new ground for gearing choices as well. Four distinct cassette options, including our first 10-30T and 10-36T RED cassettes, each provide secure shift ramps specifically designed for electronic shifting, whether racing road on a 10-28T or creating an all-road setup with a 10-36T. Carefully chosen tooth jumps keep you in the right gear when you’re out of the saddle on steep climbs and making fine changes to hold a wheel while approaching a sprint.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Speed (CS)</strong></th>
 <td>12 Speed</td>
 </tr>
 <tr>
 <th><strong>Gearing</strong></th>
 <td>10-28t, 10-30t, 10-33t, 10-36t</td>
 </tr>
 <tr>
 <th><strong>Cog finish (Cassette)</strong></th>
 <td>Rainbow, Silver</td>
 </tr>
 <tr>
 <th><strong>Technology (Cassette)</strong></th>
 <td>XG</td>
 </tr>
 <tr>
 <th><strong>Cog sizes</strong></th>
 <td>10-28t;10,11,12,13,14,15,16,17,19,21,24,28,<br>
 10-30t:10,11,12,13,14,15,17,19,21,24,27,30,<br>
 10-33t;10,11,12,13,14,15,17,19,21,24,28,33,<br>
 10-36t:10,11,12,13,15,17,19,21,24,28,32,36</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 
 </td>
 </tr>
	</tbody>
</table>', array['sram-red-e1-xg-1290-12-speed-rainbow-cassette/1.jpg', 'sram-red-e1-xg-1290-12-speed-rainbow-cassette/2.jpg', 'sram-red-e1-xg-1290-12-speed-rainbow-cassette/3.jpg', 'sram-red-e1-xg-1290-12-speed-rainbow-cassette/4.jpg', 'sram-red-e1-xg-1290-12-speed-rainbow-cassette/5.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('sram-rival-xg-1250-12-speed-cassette', 'SRAM Rival XG-1250 12 Speed Cassette', 'sram', 'components', 'cassettes', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM RIVAL XG-1250 CASSETTE </strong></p>

 <p>Our premier X-Range gearing, which utilizes tight jumps between chainrings and a 12-speed, wide range, 10-tooth start cassette, is now available for Rival. This includes new cassettes that feature smooth, precise shifting in ranges that cover road, gravel and everything in between.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th>Speed (CS)</th>
 <td>12</td>
 </tr>
 <tr>
 <th>Gearing</th>
 <td>10-30t, 10-36t</td>
 </tr>
 <tr>
 <th>Cog finish (Cassette)</th>
 <td>Silver</td>
 </tr>
 <tr>
 <th>Technology (Cassette)</th>
 <td>XG</td>
 </tr>
 <tr>
 <th>Cog sizes</th>
 <td>10-30t:10,11,12,13,14,15,17,19,21,24,27,30, 10-36t:10,11,12,13,15,17,19,21,24,28,32,36</td>
 </tr>
 <tr>
 <th>Drivetrain Configuration</th>
 <td>1x, 2x</td>
 </tr>
 <tr>
 <th>Cassette Size (Max)</th>
 <td>30, 36</td>
 </tr>
 <tr>
 <th>Cassette Size (Min)</th>
 <td>10</td>
 </tr>
 <tr>
 <th>Chain Technology</th>
 <td>Road Flattop D1, Road Flattop E1</td>
 </tr>
 <tr>
 <th>Rear Derailleur Mount</th>
 <td>MTB, Road, Road L, UDH</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES </strong></p>

 <ul>
 <li>X-Range™ gearing gives you more range and a smoother gear progression, so you’re always in the right gear</li>
 <li>Nickel chrome plating for quiet and durability</li>
 <li>FULL PIN construction for durability and light weight</li>
 <li>Designed to work with an XDR™ driver body</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-rival-xg-1250-12-speed-cassette/1.jpg', 'sram-rival-xg-1250-12-speed-cassette/2.jpg', 'sram-rival-xg-1250-12-speed-cassette/3.jpg', 'sram-rival-xg-1250-12-speed-cassette/4.jpg', 'sram-rival-xg-1250-12-speed-cassette/5.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),

  -- ---- components · chainrings-spiders ----
  ('18-144bcd-track-chainring', '1/8 144BCD Track Chainring', 'generic', 'components', 'chainrings-spiders', '<table>
<tbody>
<tr>
<td>
<p>Colour</p>
</td>
<td>
<p>Black</p>
</td>
</tr>
<tr>
<td>
<p>Made from</p>
</td>
<td>
<p>7075-T651 Aluminum Alloy</p>
</td>
</tr>
<tr>
<td>
<p>Surface coating</p>
</td>
<td>
<p>Anodizing</p>
</td>
</tr>
<tr>
<td>
<p>Made with</p>
</td>
<td>
<p>CNC milling</p>
</td>
</tr>
<tr>
<td>
<p>Compatible cranksets</p>
</td>
<td>
<p>144 BCD (5-bolt AERO )</p>
</td>
</tr>
<tr>
<td>Weight, grams</td>
<td>
85 (46T), 94 (47T), 106 (48T), 112 (49T), 120 (50T), 124 (51T), 129 (52T), 136 (53T), 144 (54T),158 (55T), 167 (56T), 173 (57T),181 (58T),
</td>
</tr>
<tr>
<td>Chain compatibility</td>
<td> One-half pitch one-eighth width</td>
</tr>
</tbody>
</table>', array['18-144bcd-track-chainring/1.jpg']::text[], 'new', 1, '2023-05-04'::date, false, false),
  ('1x-chainring-110bcd-5-bolt', '1x Chainring 110BCD 5 Bolt', 'generic', 'components', 'chainrings-spiders', '<table>
<tbody>
<tr>
<td>
<p>Colour</p>
</td>
<td>
<p>Black</p>
</td>
</tr>
<tr>
<td>
<p>Made from</p>
</td>
<td>
<p>7075-T651 Aluminum Alloy</p>
</td>
</tr>
<tr>
<td>
<p>Surface coating</p>
</td>
<td>
<p>Anodizing</p>
</td>
</tr>
<tr>
<td>
<p>Made with</p>
</td>
<td>
<p>CNC milling</p>
</td>
</tr>
<tr>
<td>
<p>Chainring shape</p>
</td>
<td>
<p>Round</p>
</td>
</tr>
<tr>
<td>
<p>Compatible cranksets</p>
</td>
<td>
<p>110 BCD (5-bolt AERO)</p>
</td>
</tr>
<tr>
<td>
<p>Weight, grams</p>
</td>
<td>
<p>95 (42T), 107 (44T), 118 (46T), 134 (48T), 149 (50T), 161 (52T), 199 (54T), 202 (56T), 206 (58T)</p>
</td>
</tr>
</tbody>
</table>', array['1x-chainring-110bcd-5-bolt/1.jpg']::text[], 'new', 1, '2023-05-04'::date, false, false),
  ('1x-chainring-130bcd-5-bolt', '1x Chainring 130BCD 5 Bolt', 'generic', 'components', 'chainrings-spiders', '<table>
<tbody>
<tr>
<td>
<p>Color</p>
</td>
<td>
<p>Black</p>
</td>
</tr>
<tr>
<td>
<p>Made from</p>
</td>
<td>
<p>7075-T651 Aluminum Alloy</p>
</td>
</tr>
<tr>
<td>
<p>Surface coating</p>
</td>
<td>
<p>Anodizing</p>
</td>
</tr>
<tr>
<td>
<p>Made with</p>
</td>
<td>
<p>CNC milling</p>
</td>
</tr>
<tr>
<td>
<p>Compatible cranksets</p>
</td>
<td>
<p>130 BCD (5-bolt AERO )</p>
</td>
</tr>
<tr>
<td>Weight, grams</td>
<td>78（42T), 80(44T) ,97 (46T), 106 (48T), 119 (50T), 129 (52T), 145 (54T), 169 (56T), 185 (58T)</td>
</tr>
</tbody>
</table>', array['1x-chainring-130bcd-5-bolt/1.jpg']::text[], 'new', 1, '2023-05-04'::date, false, false),
  ('1x-chainring-shimano-r92-8100-4-bolt', '1x Chainring Shimano 8100 4 Bolt Aero', 'pass-quest', 'components', 'chainrings-spiders', '<table>
<tbody>
<tr>
<td>
<p>Colour</p>
</td>
<td>
<p>Black</p>
</td>
</tr>
<tr>
<td>
<p>Made from</p>
</td>
<td>
<p>7075-T651 Aluminum Alloy</p>
</td>
</tr>
<tr>
<td>
<p>Surface coating</p>
</td>
<td>
<p>Anodizing</p>
</td>
</tr>
<tr>
<td>
<p>Made with</p>
</td>
<td>
<p>CNC milling</p>
</td>
</tr>
<tr>
<td>
<p>Chainring shape</p>
</td>
<td>
<p>Round</p>
</td>
</tr>
<tr>
<td>
<p>Compatible cranksets</p>
</td>
<td>
<p><strong>Ultegra R8100 </strong></p>
</td>
</tr>
<tr>
<td>
<p>Weight, grams</p>
</td>
<td>
<p> 112 (46T), 128 (48T), 142 (50T), 158 (52T), 173 (54T), 186 (56T), 200 (58T)</p>
</td>
</tr>
<tr>
<td>
<p>Chain compatibility</p>
</td>
<td>
<p>Standard or 12 speed for SRAM AXS Flattop</p>
</td>
</tr>
</tbody>
</table>', array['1x-chainring-shimano-r92-8100-4-bolt/1.jpg', '1x-chainring-shimano-r92-8100-4-bolt/2.webp']::text[], 'new', 2, '2023-05-04'::date, false, false),
  ('1x-chainring-shimano-r78000-4-bolt', '1x Chainring Shimano R7/8000 4 Bolt', 'generic', 'components', 'chainrings-spiders', '<table>
<tbody>
<tr>
<td>
<p>Colour</p>
</td>
<td>
<p>Black/Magene</p>
</td>
</tr>
<tr>
<td>
<p>Made from</p>
</td>
<td>
<p>7075-T651 Aluminum Alloy</p>
</td>
</tr>
<tr>
<td>
<p>Surface coating</p>
</td>
<td>
<p>Anodizing</p>
</td>
</tr>
<tr>
<td>
<p>Made with</p>
</td>
<td>
<p>CNC milling</p>
</td>
</tr>
<tr>
<td>
<p>Chainring shape</p>
</td>
<td>
<p>Round</p>
</td>
</tr>
<tr>
<td>
<p>Compatible cranksets</p>
</td>
<td>
<p>110 BCD (4-bolt AERO)  (SHIMANO R7000 R8000)</p>
</td>
</tr>
<tr>
<td>
<p>Weight, grams</p>
</td>
<td>
<p> 112 (46T), 128 (48T), 142 (50T), 158 (52T), 173 (54T), 186 (56T), 200 (58T)</p>
</td>
</tr>
<tr>
<td>
<p>Chain compatibility</p>
</td>
<td>
<p>Standard or 12 speed for SRAM AXS Flattop</p>
</td>
</tr>
</tbody>
</table>', array['1x-chainring-shimano-r78000-4-bolt/1.jpg']::text[], 'new', 0, '2023-05-04'::date, false, false),
  ('1x-chainring-shimano-r9100-4-bolt', '1x Chainring Shimano R9100 4 Bolt', 'generic', 'components', 'chainrings-spiders', '<table>
<tbody>
<tr>
<td>
<p>Colour</p>
</td>
<td>
<p>Black</p>
</td>
</tr>
<tr>
<td>
<p>Made from</p>
</td>
<td>
<p>7075-T651 Aluminum Alloy</p>
</td>
</tr>
<tr>
<td>
<p>Surface coating</p>
</td>
<td>
<p>Anodizing</p>
</td>
</tr>
<tr>
<td>
<p>Made with</p>
</td>
<td>
<p>CNC milling</p>
</td>
</tr>
<tr>
<td>
<p>Chainring shape</p>
</td>
<td>
<p>Round</p>
</td>
</tr>
<tr>
<td>
<p>Compatible cranksets</p>
</td>
<td>
<p>110 BCD (4-bolt AERO)  <strong>SHIMANO  R9100</strong></p>
</td>
</tr>
<tr>
<td>
<p>Weight, grams</p>
</td>
<td>
<p> 118 (46T), 119 (48T), 137 (50T), 155 (52T), 171 (54T), 184 (56T), 194 (58T)</p>
</td>
</tr>
<tr>
<td>
<p>Chain compatibility</p>
</td>
<td>
<p>Standard or 12 speed for SRAM AXS Flattop</p>
</td>
</tr>
</tbody>
</table>', array['1x-chainring-shimano-r9100-4-bolt/1.jpg']::text[], 'new', 0, '2023-05-04'::date, false, false),
  ('rotor-chainrings-round-110x4-1', 'Rotor Chainrings Round 110X4', 'rotor', 'components', 'chainrings-spiders', '<p>We poured all of our experience in oval Q RINGS development into producing an innovative Round Chainrings solution. Machine CNC’d from ultralight aeronautic-grade 7075 aluminum, our new look 4-arm chainrings are compatible with our lightweight ALDHU crankset as well as all Shimano®. 4 bolt cranks. Combined with our new ALDHU spider and crankset, the clever spline interface between the axle delivers a robust yet smooth engagement allowing you to maximise the efficiency in transmission of power in your pedal rotation. Weight: 133 g for a 52/36. * Spider not included.</p>', array['rotor-chainrings-round-110x4-1/1.jpg', 'rotor-chainrings-round-110x4-1/2.jpg', 'rotor-chainrings-round-110x4-1/3.jpg', 'rotor-chainrings-round-110x4-1/4.jpg', 'rotor-chainrings-round-110x4-1/5.jpg']::text[], 'new', 7, '2026-06-12'::date, false, false),
  ('rotor-chainrings-round-110x4-aero-1', 'Rotor Chainrings Round 110X4 Aero', 'rotor', 'components', 'chainrings-spiders', '<p>We poured all of our experience in oval Q RINGS development into producing an innovative Round Chainrings solution. Machine CNC’d from ultralight aeronautic-grade 7075 aluminum, our new look 4-arm chainrings are compatible with our lightweight ALDHU crankset as well as all Shimano®. 4 bolt cranks. Combined with our new ALDHU spider and crankset, the clever spline interface between the axle delivers a robust yet smooth engagement allowing you to maximise the efficiency in transmission of power in your pedal rotation. Weight: 133 g for a 52/36. * Spider not included.</p>', array['rotor-chainrings-round-110x4-aero-1/1.jpg']::text[], 'new', 2, '2026-06-12'::date, false, false),
  ('rotor-chainrings-round-110x4-aero-1x-1', 'Rotor Chainrings Round 110X4 Aero 1X', 'rotor', 'components', 'chainrings-spiders', '<p>1x aero 110x4 spider mount Round ring provide minimal air resistance, reduces drag and allows you to pedal faster with less effort. They are compatible with all ROTOR modular road cranks and power meters including 2INpower, INspider, INpower, ALHDU and VEGAST.</p>
<p>Compatible with 110x4 Spider and Aero Mas Spider.</p>
<p>Weight of chainring (48t): 121g<br>Chainline ALDU/Vegast with std axle: 44.5mm</p>', array['rotor-chainrings-round-110x4-aero-1x-1/1.jpg', 'rotor-chainrings-round-110x4-aero-1x-1/2.jpg']::text[], 'new', 3, '2026-06-12'::date, false, false),
  ('rotor-crank-spider-aero-mas-road-110x4-1x-2x', 'Rotor Crank Spider Aero MAS Road 110x4 1X/2X', 'rotor', 'components', 'chainrings-spiders', '<p>The Aero MAS Spider is engineered to provide minimal air resistance, reduce drag and allow you to pedal faster with less effort. It is compatible with road modular cranks ALDHU and VEGAST and power meters 2INpower and INpower. Select the perfect chainring size from our 1x/2x 110x4 Q RINGS® or Round range.</p>', array['rotor-crank-spider-aero-mas-road-110x4-1x-2x/1.jpg']::text[], 'new', 1, '2021-08-26'::date, false, false),
  ('rotor-track-axle-with-spider', 'Rotor Track Axle with Spider', 'rotor', 'components', 'chainrings-spiders', '<p>A 30mm axle make the crankset stiffer and lighter. A low Qfactor of 140mm ensure a perfect position in the bicycle for TRACK and Fixed users. * Chainrings and cranks sold separately.</p>', array['rotor-track-axle-with-spider/1.jpg']::text[], 'new', 1, '2021-08-26'::date, false, false),
  ('crank-bolt-covers', 'Shimano Crank Bolt Covers', 'generic', 'components', 'chainrings-spiders', '<p>Bolt covers to run aftermarket chainrings on Shimano Cranks</p>', array['crank-bolt-covers/1.png']::text[], 'new', 2, '2023-05-04'::date, false, false),
  ('velobike-elite-sprocket', 'Velobike Elite Sprocket', 'velobike', 'components', 'chainrings-spiders', '<p>A high end track cog made from hardened stainless steel. Precision CNC machined for accurate roundness and tolerances. Corrosion resistant and no coatings to wear off over time for greatest durability. A great performing and long lasting sprocket at an affordable price.</p>
<p><strong>Specifications:</strong></p>
<ul>
<li>2nd Generation design featuring a 10% weight reduction</li>
<li>Hardened 304 stainless steel</li>
<li>Precision CNC machined</li>
<li>Great durability </li>
<li>12-20 tooth</li>
<li>1/8” Chain width. (<a href="https://www.velobike.co.nz/collections/sprockets-1/products/elite-sprocket-narrow" rel="noopener nofollow" target="_blank">Narrow width available here</a>)</li>
<li>Standard 1.37"x24" threads</li>
<li>Sprocket offset: 6mm (flange to tooth center)</li>
<li>Pair with Velobike <a href="https://www.velobike.co.nz/collections/sprockets-1/products/sprocket-spacers-x3" rel="noopener nofollow" target="_blank">Sprocket Spacers</a> for greatest chain line efficiency</li>
</ul>
<p>The Elite Sprockets are made from a hardened 304 Stainless Steel - which have roughly double the tensile strength and hardness of that of the Cr-Mo sprockets. Material hardness is critical for an efficient drive-chain, as less deformation occurs as the chain links press into its surface. </p>', array['velobike-elite-sprocket/1.jpg']::text[], 'new', 0, '2024-03-07'::date, false, false),
  ('velobike-elite-track-chainring', 'Velobike Elite Track Chainring', 'velobike', 'components', 'chainrings-spiders', '<p>A high level aluminium Velobike chainring designed for great performance and drive chain efficiency. </p>
<p>Precision CNC machined aluminium with a post anodising and low friction infusion process impregnated into the highly tolerance tooth profile. The 7075-T6 aluminium grade offers the greatest strength to weight ratio - making the elite range a stiff yet relatively lightweight performance chainring.</p>
<p>The Elite Track Chainrings tooth profile is a result of multiple years of iterative development - optimising the profile for reduced noise and friction as the chain links engage and disengage with the teeth during the chainrings rotation.</p>
<p>The Elite Track Chainrings have been developed to have the greatest stiffness to weight to efficiency to cost ratio on the planet.</p>
<p>World Championship winning by Aus Cycling in the Mens Team Sprint 2022</p>
<p>Used by Cycling New Zealand and Aus Cycling.</p>

<p><strong>Specifications:</strong></p>
<ul>
<li>
<p>144BCD</p>
</li>
<li>
<p>Standard 1/8” chain width</p>
</li>
<li>
<p>Aerospace grade <a href="https://www.velobike.co.nz/blogs/news/aluminium-grades-for-bicycle-components" rel="noopener nofollow" target="_blank">7075-T6 aluminium</a> for maximum stiffness yet minimum weight</p>
</li>
<li>
<p>Velobike developed low friction tooth profile for an efficient chain interface</p>
</li>
<li>
<p>Precision CNC Machined</p>
</li>
<li>Gen3 tooth profile </li>
<li>
<p>Chamfered relief cutout on rear side for weight reduction. The chamfered edged help air flow over the ridges reducing flow separation</p>
</li>
<li>Stepped surface design between teeth and the main body of the chainring plate keeps the chain outer plates flush with the chainring to reduce air flow separation.</li>
<li>
<p>Tough anodised surface treatment, infused with a hi-tech low friction compound</p>
</li>
<li>
<a href="https://www.keirin-autorace.or.jp/" rel="noopener nofollow" target="_blank">JKA</a> certified for Japanese''s 250 Keirin Racing (48-68t)<br><br>
</li>
</ul>', array['velobike-elite-track-chainring/1.jpg']::text[], 'new', 5, '2024-03-07'::date, false, false),

  -- ---- components · chains ----
  ('shimanocn-hg408speedchain', 'Shimano CN-HG40 8 Speed Chain', 'shimano', 'components', 'chains', '<p>Hyperglide (HG) series 6, 7, or 8-speed compatible chain, recommended for Altus and Alivio/STX drivetrains. </p>
<ul>
<li>HG technology has chamfered inner plates to optimise shifting performance on HG sprockets</li>
<li>Durability is assured through the heat treatment of rollers, pins, and plates</li>
<li>Mushrooming of the pins gives unsurpassed side-plate retention, enabling the chain to far exceed the BS/ISO standard for breaking force</li>
<li>7.3mm chain width, optimised for 7- and 8-speed HG drivetrains</li>
<li>116 Links</li>
</ul>', array['shimanocn-hg408speedchain/1.jpg']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimanoduracextrcn-hg901-1111speedchain', 'Shimano Durace/XTR CN-HG901-11 11 Speed Chain', 'shimano', 'components', 'chains', '<h3>Shimano Dura-Ace/XTR CN-HG901-11 11-Speed Chain</h3>
<h3><strong>Lighter, Smoother, and Built to Last</strong></h3>
<p>The <strong>Shimano CN-HG901-11 chain</strong> is designed for precision shifting and maximum durability across all Shimano 11-speed groupsets. At just <strong>243 grams</strong>, it’s <strong>9 grams lighter</strong> and <strong>20% more durable</strong> than its predecessor, the CN-7901. With a narrower 5.62mm profile, <strong>Sil-Tec PTFE coating</strong>, and an asymmetric plate design, it delivers <strong>quieter operation, smoother shifts, and longer-lasting performance</strong>—even under heavy cross-chaining. Hollow pins further reduce weight without sacrificing strength, making this chain a proven choice for both road and mountain performance.</p>

<h3>Key Features</h3>
<ul>
<li>
<p>Compatible with all <strong>Shimano 11-speed groups</strong></p>
</li>
<li>
<p><strong>243 grams</strong> lightweight construction</p>
</li>
<li>
<p><strong>116 links</strong> with included chain pins</p>
</li>
<li>
<p><strong>Asymmetric plate design</strong> for precise shifting</p>
</li>
<li>
<p><strong>Hollow pins</strong> for reduced weight</p>
</li>
<li>
<p><strong>Sil-Tec PTFE coating</strong> for smoother, quieter operation</p>
</li>
<li>
<p><strong>20% more durable</strong> than the CN-7901</p>
</li>
</ul>', array['shimanoduracextrcn-hg901-1111speedchain/1.jpg']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimano-m8100-ultegraxt-12-speed-chain', 'Shimano M8100 Ultegra/XT 12 Speed Chain', 'shimano', 'components', 'chains', '<h3>Shimano Deore XT CN-M8100 12-Speed Chain</h3>
<h3><strong>Optimized Performance for MTB Drivetrains</strong></h3>
<p>The <strong>Shimano Deore XT CN-M8100 chain</strong> is engineered specifically for the <strong>Deore XT M8100 12-speed MTB drivetrain</strong>, delivering <strong>smooth, efficient shifting</strong> and enhanced chain retention even on rough terrain. Featuring <strong>Hyperglide+ technology</strong>, this chain improves engagement with the cassette, reduces pedaling shock, and ensures faster, more precise gear changes.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Hyperglide+ technology</strong> for smoother, more efficient shifting</p>
</li>
<li>
<p><strong>Extended inner plate</strong> improves chain engagement and retention</p>
</li>
<li>
<p><strong>Reduced shift times and pedaling shock</strong> for better ride quality</p>
</li>
<li>
<p><strong>Non-reusable</strong> – designed for single installation</p>
</li>
<li>
<p><strong>Includes Shimano Quick-Link</strong> for easy assembly</p>
</li>
</ul>', array['shimano-m8100-ultegraxt-12-speed-chain/1.png']::text[], 'new', 1, '2022-11-29'::date, false, true),
  ('shimano-m9100-duracextr-12speed-chain', 'Shimano M9100 Durace/XTR 12Speed Chain', 'shimano', 'components', 'chains', '<h3>Shimano CN-M9100 12-Speed Chain</h3>
<h3><strong>Optimized for Smooth, Reliable Shifting</strong></h3>
<p>The <strong>Shimano CN-M9100 12-speed chain</strong> is engineered for MTB riders who demand <strong>precise shifting and smooth drivetrain performance</strong>, even on rough terrain. Its advanced design ensures <strong>greater chain retention, improved engagement with chainrings and cassettes, and consistent power transfer</strong> across all gears.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Dedicated 12-Speed Design:</strong> Optimized for Shimano M9100 MTB drivetrains</p>
</li>
<li>
<p><strong>Enhanced Chain Retention:</strong> Extended inner plate improves tooth engagement for a secure fit</p>
</li>
<li>
<p><strong>Smoother Shifting:</strong> Advanced design reduces friction and improves drivetrain performance</p>
</li>
<li>
<p><strong>Quick-Link Included:</strong> SM-CN910-12 for fast and easy installation</p>
</li>
<li>
<p><strong>Reliable Performance:</strong> Smooth operation even on bumpy or technical terrain</p>
</li>
<li>
<p><strong>Weight:</strong> Approx. 250g (116 links)</p>
</li>
</ul>', array['shimano-m9100-duracextr-12speed-chain/1.jpg']::text[], 'new', 1, '2022-10-21'::date, false, true),
  ('shimano-quick-link', 'Shimano Quick Links', 'shimano', 'components', 'chains', '', array['shimano-quick-link/1.jpg', 'shimano-quick-link/2.png']::text[], 'new', 1, '2025-11-03'::date, false, true),
  ('shimano-slx-12sp-m7100-chain', 'Shimano SLX 12sp M7100 Chain', 'shimano', 'components', 'chains', '<p>Shimano SLX CN M7100 12 speed chain with quick link</p>
<p>The special design of the new Shimano SLX CN-M7100 12-speed chain ensures improved shifting performance and smoother running - even in rough terrain. The SM-CN910-12 Quick-Link closure, which is also new, makes installation easy.</p>
<h4>Features:</h4>
<ul>
<li>New Drive System Dedicated Design Chain</li>
<li>Greater chain retention to extend portion on the end of inner plate to firmly hold the tooth both front</li>
<li>and cassette sprocket</li>
<li>Enhancements to shifting performance</li>
<li>Easy connect</li>
<li>Smoother driving even over bumpy terrain</li>
<li>Compatible with new generation of drive train</li>
<li>Quick-Link Included (SM-CN910-12)</li>
<li>Weight: approx. 252g / 116 Links</li>
</ul>', array['shimano-slx-12sp-m7100-chain/1.jpg']::text[], 'new', 0, '2023-03-10'::date, false, false),
  ('shimanohg701chain11speedultegradeorext', 'Shimano Ultegra/Deore XT Chain CN-HG701-11  11 Speed', 'shimano', 'components', 'chains', '<h3>Shimano CN-HG701 Ultegra/XT 11-Speed Chain</h3>
<h3><strong>Lightweight, Durable, and Smooth Shifting Performance</strong></h3>
<p>The <strong>Shimano CN-HG701 11-Speed Chain</strong> delivers seamless shifting and exceptional reliability for both road and mountain biking. Specifically designed for Ultegra and XT 11-speed groupsets, its <strong>5.62mm width</strong> and directional design ensure precise engagement with chainrings and cassettes.</p>
<p>Featuring <strong>Shimano’s SIL-TEC coating</strong> (a low-friction PTFE treatment), the CN-HG701 reduces wear, improves efficiency, and provides a smoother, quieter drivetrain performance. Strong, lightweight, and durable, it’s the perfect choice for riders who demand top-level performance across road, cyclocross, or trail.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Optimised for Shimano Ultegra &amp; XT 11-speed groupsets</strong></p>
</li>
<li>
<p><strong>SIL-TEC coating</strong> for reduced friction, longer life, and smoother operation</p>
</li>
<li>
<p><strong>Directional chain</strong> for precise shifting performance</p>
</li>
<li>
<p><strong>HG-X 11-speed design</strong> – engineered for road and mountain use</p>
</li>
<li>
<p><strong>116 links</strong> for versatile compatibility</p>
</li>
</ul>', array['shimanohg701chain11speedultegradeorext/1.jpg']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimanoultegradurace105cn-670110speedchain', 'Shimano Ultegra/Durace/105 CN-6701 10 Speed Chain', 'shimano', 'components', 'chains', '<p><strong>Description:</strong></p>
<p>Shimano Ultegra CN-6701 10 Speed Chain 10-speed / 116 Links</p>

The revised super narrow Ultegra chain features redesigned outer and inner plates to reduce chain drop and to improve contact with the gear teeth and smoother shifting even on high loads. Perforated plates save weight.

Chain type is super narrow HG for 10-speed cassettes

<p>Includes one connecting pin.</p>
<p>Unidirectional (asymmetrical) design uses different inner and outer plate chamfers and dimensions to accommodate the different shifting requirements when moving the chain inward or outward.</p>', array['shimanoultegradurace105cn-670110speedchain/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimanoxtultegracn-hg939speedchain', 'Shimano XT/Ultegra CN-HG93 9 Speed Chain', 'shimano', 'components', 'chains', '<p>A 9-speed chain from the Shimano® XT/Ultegra series.</p>
<p>The super narrow chain makes it possible to manufacture a 9-speed sprocket which isn''t wider than the 8-speed version.</p>

The precision tolerances allow a full toughness and a reliable shifting function. Inner plate galvanised, outer plate grey. Chrome-plated pins.

<ul>
<li>Chain type is super narrow HG, compatible with 9-speed cassettes.</li>
<li>Includes one connecting pin.</li>
</ul>', array['shimanoxtultegracn-hg939speedchain/1.jpg']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('sram-10-speed-chains-1', 'SRAM 10 Speed Chains', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM 10 SPEED CHAINS</strong></p>

 <p>No weakest link. SRAM''S new Super Narrow 10-speed Power Chains feature the PowerLock connecting link — the only secure toolless attachment device for a sub 6mm chain in todays market. SRAM PC1091R series chains also feature hollow pin construction and outer plates with lighting holes for weight savings with no sacrifice of strength. Lightweight, smooth,precise-shifting. A true high-performance product.</p>

 <p>Compatability extends to industry-standard 10-speed systems</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li><strong>1091R</strong></li>
 </ul>

 <p>Outer Plate: Nickel Silver w/Lighting Hole<br>
 Inner Plate: Nickel Silver<br>
 Pin Treatment: Chrome Hardened Pins<br>
 Weight: 255 Grams (114 links)<br>
 Rivet Type: Hollow Pin</p>

 <ul>
 <li><strong>1071</strong></li>
 </ul>

 <p>Outer Plate: Nickel Silver<br>
 Inner Plate: Grey<br>
 Pin Treatment: Chrome Hardened Pins<br>
 Weight: 257 Grams (114 links)<br>
 Rivet Type: Hollow Pin</p>

 <ul>
 <li><strong>1051</strong></li>
 </ul>

 <p>Outer Plate: Nickel Silver<br>
 Inner Plate: Nickel Silver<br>
 Pin Treatment: Chrome Hardened Pins<br>
 Weight: 277 Grams (114 links)<br>
 Rivet Type: Solid Pins</p>

 <ul>
 <li><strong>1031</strong></li>
 </ul>

 <p>Outer Plate: Grey<br>
 Inner Plate:Grey<br>
 Pin Treatment: Chrome Hardened Pins<br>
 Weight: 277 Grams (114 links)<br>
 Rivet Type: Solid Pin</p>
 </td>
 </tr>
	</tbody>
</table>', array['sram-10-speed-chains-1/1.jpg', 'sram-10-speed-chains-1/2.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('sram-8-speed-chains-1', 'SRAM 8 Speed Chains', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM 8 SPEED CHAINS</strong></p>

 <p>Extremely strong. Incredibly precise. SRAM''s PowerChain II increases front and load shifting performance without sacrificing rear shifting precision. The Step2™ riveting process increases the Push Pin Power for increased strength and durability.</p>

 
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>8 Speed Compatible</li>
 <li>Silver 8 Speed Powerlink</li>
 <li>114 Links</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-8-speed-chains-1/1.jpg', 'sram-8-speed-chains-1/2.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-9-speed-chains-1', 'SRAM 9 Speed Chains', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM 9 SPEED CHAINS</strong></p>

 <p>Extremely strong. Incredibly precise. SRAM''s PowerChain II increases front and load shifting performance without sacrificing rear shifting precision. The Step2™ riveting process increases the Push Pin Power for increased strength and durability.</p>

 <p>Accurate shifting, excellent wear resistance, and superior durability with 9-spd compatabilty. Sram PwerChain II will help drive you every inch of every ride, with confidence and unmatched reliabilty.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Technology</strong></th>
 <td>Powerlink</td>
 </tr>
 <tr>
 <th><strong>Speeds</strong></th>
 <td>9 Speed</td>
 </tr>
 <tr>
 <th><strong>Material</strong></th>
 <td>Nickel Inner and Outer Plates</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-9-speed-chains-1/1.jpg', 'sram-9-speed-chains-1/2.jpg', 'sram-9-speed-chains-1/3.jpg', 'sram-9-speed-chains-1/4.jpg', 'sram-9-speed-chains-1/5.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-eagle-70-transmission-flattop-chain', 'SRAM Eagle 70 Transmission Flattop Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM  EAGLE 70 TRANSMISSION FLATTOP CHAIN</strong></p>

 <p>The Eagle 70 chain features all the benefit of our T-Type Flattop design found in our most premium Eagle Transmissions. Fully E-MTB compatible, the Eagle 70 chain is robust, durable and ready for any ride.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compat - Speed (CN)</strong></th>
 <td>12</td>
 </tr>
 <tr>
 <th><strong>Chain length (links)</strong></th>
 <td>126 links</td>
 </tr>
 <tr>
 <th><strong>Color - Outer link</strong></th>
 <td>Grey</td>
 </tr>
 <tr>
 <th><strong>Color - Inner link</strong></th>
 <td>Black</td>
 </tr>
 <tr>
 <th><strong>Chain connector</strong></th>
 <td>PowerLock 12s T-Type BLK</td>
 </tr>
 <tr>
 <th>
<strong>Inner link finis</strong>h</th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th><strong>Outer link finish</strong></th>
 <td>Polished</td>
 </tr>
 <tr>
 <th><strong>Pin variant</strong></th>
 <td>Solid Pin</td>
 </tr>
 <tr>
 <th><strong>Pin treatment</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th><strong>Chain Technology</strong></th>
 <td>T-Type</td>
 </tr>
 <tr>
 <th><strong>E-Bike Approved</strong></th>
 <td>Yes</td>
 </tr>
 <tr>
 <th><strong>Weight (g)</strong></th>
 <td>270</td>
 </tr>
 <tr>
 <th><strong>Weight Based On</strong></th>
 <td>Engineering Estimate 114 Links</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Polished Steel finish.</li>
 <li>T-Type compatibility.</li>
 <li>Flattop profile, smooth-shift bottom profile. Ultimate shifting performance, game-changing aesthetics.</li>
 <li>Solid pins, fully approved for E-MTB use.</li>
 <li>126 Links with included PowerLock.</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-eagle-70-transmission-flattop-chain/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-force-axs-flattop-chain', 'SRAM Force AXS Flattop Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM FORCE FLATTOP CHAIN</strong></p>

 <p>Our Force chain is lighter, stronger and even more durable. Flattop technology creates a quieter, longer lasting chain for long rides and countless shifts. The Force chain is compatible with 12-speed road and 13-speed gravel cassettes<br>
 <br>
 <strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th>Compat - Speed (CN)</th>
 <td>12, 13</td>
 </tr>
 <tr>
 <th>Chain length (links)</th>
 <td>114 links, 126 links</td>
 </tr>
 <tr>
 <th>Color - Outer link</th>
 <td>Purple, Silver</td>
 </tr>
 <tr>
 <th>Color - Inner link</th>
 <td>Purple, Silver</td>
 </tr>
 <tr>
 <th>Chain connector</th>
 <td>PowerLock D1</td>
 </tr>
 <tr>
 <th>Inner link finish</th>
 <td>Chrome Hardened, Chrome Plated, PVD</td>
 </tr>
 <tr>
 <th>Outer link finish</th>
 <td>Nickel, PVD</td>
 </tr>
 <tr>
 <th>Pin variant</th>
 <td>Solid Pin</td>
 </tr>
 <tr>
 <th>Pin treatment</th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th>Chain Technology</th>
 <td>Road Flattop E1</td>
 </tr>
 <tr>
 <th>E-Bike Approved</th>
 <td>Yes</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Flattop technology allows for a narrower chain with quieter operation and increased strength and durability</li>
 <li>Hard Chrome plated inner link plates and rollers for reduced wear and prolonged life</li>
 <li>Cut-outs in inner and outer link plates for weight reduction</li>
 <li>Includes Flattop PowerLock</li>
 <li>Compatible with 12-speed road and 13-speed XPLR AXS dropbar groupsets</li>
 <li>Also available in purple</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-force-axs-flattop-chain/1.jpg', 'sram-force-axs-flattop-chain/2.jpg', 'sram-force-axs-flattop-chain/3.jpg', 'sram-force-axs-flattop-chain/4.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('sram-gx-eagle-transmission-flattop-chain-1', 'SRAM GX Eagle Transmission Flattop Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM GX EAGLE TRANSMISSION FLATTOP CHAIN</strong></p>

 <p>The GX Eagle Transmission (T-Type) chain is the strongest we have ever made. Specifically engineered to optimize Eagle Transmission, this all-new T-Type design features a unique flat top. In addition to this shape maximizing shifting performance and upgrading the aesthetics of any bike, it is developed specifically for the added torque loads of E-MTB thanks to its solid pins that give it incredible strength</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Strongest SRAM chain ever. Specifically engineered for Eagle Transmission.</li>
 <li>Flat top profile, unbelievable shifting performance, game-changing aesthetics.</li>
 <li>Solid pins, fully approved for E-MTB use</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-gx-eagle-transmission-flattop-chain-1/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-pc-1170-11-speed-chain', 'SRAM PC 1170 11 Speed Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM PC-1170 11 SPEED CHAIN</strong></p>

 <p>The SRAM PC-1170 chain features more heavily chamfered outer plates for improved shifting and quieter running. The chrome hardened pin construction provides longer chain life.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Material</strong></th>
 <td>Nickle Silver</td>
 </tr>
 <tr>
 <th><strong>Weight</strong></th>
 <td>256g</td>
 </tr>
 <tr>
 <th><strong>Technology</strong></th>
 <td>PowerChain, PowerLock, PowerLube</td>
 </tr>
 <tr>
 <th><strong>Compatibility</strong></th>
 <td>
 <p>SRAM RED 22 &amp; Force 22 Front &amp; Rear derailleurs, Cranksets and cassettes</p>
 </td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>HollowPin™ construction: strong, precise and light weight</li>
 <li>PowerLock™ (silver) connecting link</li>
 <li>Narrower profile for 11-speed performance</li>
 <li>256g (114 links)</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-pc-1170-11-speed-chain/1.jpg', 'sram-pc-1170-11-speed-chain/2.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-pc-1130-11-speed-chain-1', 'SRAM PC-1130 11-Speed Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM PC-1130 11-SPEED CHAIN</strong></p>

 <p>The PC-1130 chain is an affordable, lightweight and precise option for all 11-speed groupsets.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compatible Gears</strong></th>
 <td>11 Speed</td>
 </tr>
 <tr>
 <th><strong>Closing Link</strong></th>
 <td>PowerLock</td>
 </tr>
 <tr>
 <th><strong>Weight</strong></th>
 <td>259g</td>
 </tr>
 <tr>
 <th><strong>Chain Length (Links)</strong></th>
 <td>114 Links</td>
 </tr>
 <tr>
 <th><strong>Colour</strong></th>
 <td>Silver</td>
 </tr>
 <tr>
 <th><strong>Compatibility</strong></th>
 <td>SRAM RED 22, Force 22 &amp; Rival 22 (11sp) Chainrings &amp; Cassettes</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Strong, precise and lightweight</li>
 <li>PowerLock™ connecting link</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-pc-1130-11-speed-chain-1/1.jpg', 'sram-pc-1130-11-speed-chain-1/2.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-pc-x1-11-speed-chains-1', 'SRAM PC-X1 11 Speed Chains', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM PC-X1 11 SPEED CHAIN</strong></p>

 <p>The PC-X1 chain comes from a long line of dependable, lightweight chains that are built for toughness. Designed with SRAM''s trusted XX1 geometry, the PC-X1 features solid pin construction, 11-speed PowerLock® and smooth, efficient shifting that you can count on every time out.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compat - Speed (CN)</strong></th>
 <td>11</td>
 </tr>
 <tr>
 <th><strong>Chain length (links)</strong></th>
 <td>118 links</td>
 </tr>
 <tr>
 <th><strong>Color - Outer link</strong></th>
 <td>Silver</td>
 </tr>
 <tr>
 <th><strong>Color - Inner link</strong></th>
 <td>Black</td>
 </tr>
 <tr>
 <th><strong>Chain connector</strong></th>
 <td>PowerLock</td>
 </tr>
 <tr>
 <th><strong>Inner link finish</strong></th>
 <td>Black Oxide</td>
 </tr>
 <tr>
 <th><strong>Outer link finish</strong></th>
 <td>Nickel</td>
 </tr>
 <tr>
 <th><strong>Pin variant</strong></th>
 <td>Solid Pin</td>
 </tr>
 <tr>
 <th><strong>Pin treatment</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th><strong>Chain Technology</strong></th>
 <td>11 Speed Powerchain</td>
 </tr>
 <tr>
 <th><strong>E-Bike Approved</strong></th>
 <td>Yes</td>
 </tr>
 <tr>
 <th><strong>Weight (g)</strong></th>
 <td>259</td>
 </tr>
 <tr>
 <th><strong>Weight Based On</strong></th>
 <td>114 links</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>1X™ specific chain designed with our XX1 geometry</li>
 <li>Solid pin construction</li>
 <li>11-speed PowerLock™</li>
 <li>Weight: 258g (114 links)</li>
 </ul>

 

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-pc-x1-11-speed-chains-1/1.jpg', 'sram-pc-x1-11-speed-chains-1/2.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-pc1110-chain-nx-1', 'SRAM PC1110 Chain (NX)', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM PC-1110 NX 11 SPEED CHAIN</strong></p>

 <p>Designed from a long line of dependable, lightweight chains that are built for toughness, the SRAM PC-1110 chain features solid pin construction, 11-speed POWERLOCK® and smooth, efficient shifting that you can count on every time out.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compat - Speed (CN)</strong></th>
 <td>11</td>
 </tr>
 <tr>
 <th><strong>Chain length (links)</strong></th>
 <td>114 links</td>
 </tr>
 <tr>
 <th><strong>Color - Outer link</strong></th>
 <td>Grey</td>
 </tr>
 <tr>
 <th><strong>Color - Inner link</strong></th>
 <td>Grey</td>
 </tr>
 <tr>
 <th><strong>Chain connector</strong></th>
 <td>PowerLock</td>
 </tr>
 <tr>
 <th><strong>Inner link finish</strong></th>
 <td>Polished</td>
 </tr>
 <tr>
 <th><strong>Outer link finish</strong></th>
 <td>Polished</td>
 </tr>
 <tr>
 <th><strong>Pin variant</strong></th>
 <td>Solid Pin</td>
 </tr>
 <tr>
 <th><strong>Pin treatment</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th><strong>Chain Technology</strong></th>
 <td>11 Speed Powerchain</td>
 </tr>
 <tr>
 <th><strong>E-Bike Approved</strong></th>
 <td>Yes</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Optimized to work with X-SYNC™ rings for precise and dependable 11-speed performance</li>
 <li>Fully compatible with all SRAM 1x™ drivetrains</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-pc1110-chain-nx-1/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-red-22-11-speed-chain-1', 'SRAM RED 22 11-Speed Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM RED 22 11-SPEED CHAIN</strong></p>

 <p>The new SRAM RED 22 chain features more heavily chamfered outer plates for improved shifting and quieter running. Other advancements include a new inner plate finish plus chrome hardened pin construction, both for longer chain life. The HollowPin™ construction of SRAM’s 11 speed chain provides smooth, precise shifting and weight savings without sacrificing strength.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Material</strong></th>
 <td>Nickle Silver</td>
 </tr>
 <tr>
 <th><strong>Weight</strong></th>
 <td>242g</td>
 </tr>
 <tr>
 <th><strong>Technology</strong></th>
 <td>PowerChain, PowerLock, PowerLube</td>
 </tr>
 <tr>
 <th><strong>Compatibility</strong></th>
 <td>
 <p>SRAM RED 22 &amp; Force 22 Front &amp; Rear Derailleurs, Cranksets and Cassettes</p>
 </td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>HollowPin™ technology equals strength, incredible shifting efficiency, and light weight.</li>
 <li>242 grams</li>
 <li>PowerLock™ silver connector, easiest install in the world.</li>
 <li>PowerLube™: high performance grease.</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-red-22-11-speed-chain-1/1.jpg', 'sram-red-22-11-speed-chain-1/2.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-red-axs-flattop-chain', 'SRAM RED AXS Flattop Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM RED AXS FLATTOP CHAIN</strong></p>

 <p>We took the lightest and most durable chain we’ve ever made and made it lighter. With no compromises. Our HollowPin construction is lighter and stronger than a solid pin, and cutouts in the outer and inner plates drop 13 g from the previous generation. Can a chain really be lighter, faster, stronger and more durable than anything else? This one is.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compat - Speed (CN)</strong></th>
 <td>12s/13s Road</td>
 </tr>
 <tr>
 <th><strong>Chain length (links)</strong></th>
 <td>114 links, 126 links</td>
 </tr>
 <tr>
 <th><strong>Color - Outer link</strong></th>
 <td>Rainbow, Silver</td>
 </tr>
 <tr>
 <th><strong>Color - Inner link</strong></th>
 <td>Rainbow, Silver</td>
 </tr>
 <tr>
 <th><strong>Chain connector</strong></th>
 <td>PowerLock D1</td>
 </tr>
 <tr>
 <th><strong>Inner link finish</strong></th>
 <td>Chrome Plated, Chrome plated +PVD</td>
 </tr>
 <tr>
 <th><strong>Outer link finish</strong></th>
 <td>Nickel, Nickel+PVD</td>
 </tr>
 <tr>
 <th><strong>Pin variant</strong></th>
 <td>Hollow Pin</td>
 </tr>
 <tr>
 <th><strong>Pin treatment</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th><strong>Weight Based On</strong></th>
 <td>114 link</td>
 </tr>
 <tr>
 <th><strong>Weight (g)</strong></th>
 <td>249</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Flattop technology enables a narrower chain with quieter operation and increased strength and durability</li>
 <li>Hard Chrome plated inner link plates and rollers for reduced wear and prolonged life.</li>
 <li>HollowPin construction for increased strength and efficiency</li>
 <li>Super-light outer plates with cut-out design.</li>
 <li>13 g lighter than previous RED chain</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-red-axs-flattop-chain/1.jpg', 'sram-red-axs-flattop-chain/2.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('sram-rival-flattop-chain', 'SRAM Rival Flattop Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM RIVAL FLATTOP CHAIN</strong></p>

 <p>We took our strongest Rival chain and made it lighter. Cutouts on the outer links of the Flattop chain shed weight, while the Hard Chrome finish adds durability as you power through shifts. This chain is ready to go the distance.<br>
 <br>
 <strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th>Compat - Speed (CN)</th>
 <td>12, 13</td>
 </tr>
 <tr>
 <th>Chain length (links)</th>
 <td>114 links, 126 links</td>
 </tr>
 <tr>
 <th>Color - Outer link</th>
 <td>Silver</td>
 </tr>
 <tr>
 <th>Color - Inner link</th>
 <td>Silver</td>
 </tr>
 <tr>
 <th>Chain connector</th>
 <td>PowerLock D1</td>
 </tr>
 <tr>
 <th>Inner link finish</th>
 <td>Nickel</td>
 </tr>
 <tr>
 <th>Outer link finish</th>
 <td>Nickel</td>
 </tr>
 <tr>
 <th>Pin variant</th>
 <td>Solid Pin</td>
 </tr>
 <tr>
 <th>Pin treatment</th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th>Chain Technology</th>
 <td>Road Flattop E1</td>
 </tr>
 <tr>
 <th>E-Bike Approved</th>
 <td>Yes</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Flattop technology allows for a narrower chain with quieter operation and increased strength and durability</li>
 <li>Compatible with 12-speed road and 13-speed XPLR AXS dropbar groupsets</li>
 <li>Hard Chrome plated inner link plates for reduced wear and prolonged life</li>
 <li>Cut-outs in out link plates for weight reduction</li>
 <li>Includes Flattop PowerLock</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-rival-flattop-chain/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-x01-eagle-chain-12-speed-1', 'SRAM X01 Eagle Chain 12 Speed', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM X01 EAGLE 12 SPEED CHAIN</strong></p>

 <p>It might look normal from the outside, but the engineering inside this incredible new chain design that makes possible a gear range previously found only in 2-chainring drivetrains. And it’s also the biggest contributor to the Eagle™ drivetrain’s ultra-smooth, precise, durable and quiet performance. The Eagle™ chain’s links have a smooth radius, with no sharp edges or chamfers, which yield a significant reduction in noise, friction and wear on chainrings and cassette cogs. This design also allows for a flatter plate, which means more consistent chain riveting and greater overall strength. HARD CHROME™ technology extends the chain’s optimal performance life.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compatible Gears</strong></th>
 <td>All levels of Eagle Drivetrains</td>
 </tr>
 <tr>
 <th><strong>Rivet Type</strong></th>
 <td>Hollow Pin</td>
 </tr>
 <tr>
 <th><strong>Chain Length (Links)</strong></th>
 <td>126 Links</td>
 </tr>
 <tr>
 <th><strong>Speeds</strong></th>
 <td>12 Speed</td>
 </tr>
 <tr>
 <th><strong>Colours</strong></th>
 <td>Silver</td>
 </tr>
 <tr>
 <th><strong>Pin Treatment</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Groundbreaking new chain design and technology</li>
 <li>The Eagle™ chain has been completely re-engineered,and is produced with new manufacturing technology</li>
 <li>All-new Eagle™ PowerLock® chain connector with FLOW LINK™ technology provides better chain-guiding and increased longevity</li>
 <li>The Eagle™ chain is the quietest, strongest and most wear-resistant chain in the world</li>
 <li>Unique features and design also provide significantly improved wear resistance on Eagle™ cassettes and rings</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-x01-eagle-chain-12-speed-1/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-xo-eagle-transmission-flattop-chain', 'SRAM XO Eagle Transmission Flattop Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM XO EAGLE TRANSMISSION FLATTOP CHAIN</strong></p>

 <p>With Eagle Transmission being the first of its kind, fully integrated and interdependent system, the X0 Eagle Transmission (T-Type) Flattop Chain is so much more than just a chain. Its unique flat top design makes it the strongest change chain we have ever made. With equal importance, it upgrades the look of any super machine. These details matter. It features a Dark Polar finish specific to X0, has been plated with electroless nickel, and comes with a PVD coating for unbelievable resistance to corrosion and wear. Fully approved for E-MTB use with solid pins.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compat - Speed (CN)</strong></th>
 <td>12s T-Type</td>
 </tr>
 <tr>
 <th><strong>Chain length (links)</strong></th>
 <td>126 links</td>
 </tr>
 <tr>
 <th><strong>Color - Outer link</strong></th>
 <td>Dark Polar</td>
 </tr>
 <tr>
 <th><strong>Color - Inner link</strong></th>
 <td>Dark Polar</td>
 </tr>
 <tr>
 <th><strong>Chain connector</strong></th>
 <td>PowerLock 12s T-Type BLK PVD</td>
 </tr>
 <tr>
 <th><strong>Inner link finish</strong></th>
 <td>Chrome Hardened + PVD</td>
 </tr>
 <tr>
 <th><strong>Outer link finish</strong></th>
 <td>Nickel+PVD</td>
 </tr>
 <tr>
 <th><strong>Pin variant</strong></th>
 <td>Solid Pin</td>
 </tr>
 <tr>
 <th><strong>Pin treatment</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th><strong>Weight Based On</strong></th>
 <td>Engineering Estimate of 114links.</td>
 </tr>
 <tr>
 <th>W<strong>eight (g)</strong></th>
 <td>256g</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Strongest SRAM chain ever. Specifically engineered for Eagle Transmission.</li>
 <li>Flattop profile, unbelievable shifting performance, game-changing aesthetics.</li>
 <li>Electroless Nickel plating for optimal corrosion and wear resistance with PVD coating.</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-xo-eagle-transmission-flattop-chain/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-xx-eagle-transmission-flattop-chain', 'SRAM XX Eagle Transmission Flattop Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM XX EAGLE TRANSMISSION FLATTOP CHAIN</strong></p>

 <p>The first thing to know about the XX Eagle Transmission chain is that it’s the strongest we have ever made. Specifically engineered to optimize Eagle Transmission, this all-new T-Type design features a unique flat top. Not only does this shape maximize shifting performance, but it also contemporizes the look of your super bike. The chain features a hollow pin design and is finished in a long-wearing, high durability chrome</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compact - Speed</strong></th>
 <td>12 Speed T-Type</td>
 </tr>
 <tr>
 <th><strong>Chain Length (Links)</strong></th>
 <td>126 Links</td>
 </tr>
 <tr>
 <th><strong>Colour</strong></th>
 <td>Silver</td>
 </tr>
 <tr>
 <th><strong>Link Finish</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th><strong>Pin Variant</strong></th>
 <td>Hollow Pin</td>
 </tr>
 <tr>
 <th><strong>Weight</strong></th>
 <td>247g</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Strongest SRAM chain ever. Specifically engineered for Eagle Transmission.</li>
 <li>Flattop profile, smooth-shift bottom profile. Ultimate shifting performance, game-changing aesthetics.</li>
 <li>Longer-wearing, Hard Chrome finish and hollow pins.</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-xx-eagle-transmission-flattop-chain/1.jpg', 'sram-xx-eagle-transmission-flattop-chain/2.jpg', 'sram-xx-eagle-transmission-flattop-chain/3.jpg', 'sram-xx-eagle-transmission-flattop-chain/4.jpg', 'sram-xx-eagle-transmission-flattop-chain/5.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-xx-sl-eagle-transmission-flattop-chain', 'SRAM XX SL Eagle Transmission Flattop Chain', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM XX SL EAGLE TRANSMISSION FLATTOP CHAIN</strong></p>

 <p>Specifically engineered to optimize Eagle Transmission, the XX SL Eagle Transmission Flattop Chain features a unique flat top. Not only does this shape maximize shifting performance and robustness, but it also contemporizes the look of your super bike, especially with its outer plate cut outs and hollow pins that push the strength-to-weight ratio to an unprecedented level.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compact - Speed</strong></th>
 <td>12 Speed T-Type</td>
 </tr>
 <tr>
 <th><strong>Chain Length (Links)</strong></th>
 <td>126 Links</td>
 </tr>
 <tr>
 <th><strong>Colour</strong></th>
 <td>Silver</td>
 </tr>
 <tr>
 <th><strong>Pin Variant</strong></th>
 <td>Hollow Pin</td>
 </tr>
 <tr>
 <th><strong>Pin Treatment</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 <tr>
 <th><strong>Weight</strong></th>
 <td>240g</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Not suitable for E-MTB</li>
 <li>Flattop specifically engineered for Eagle Transmission.</li>
 <li>Ultimate shifting performance, game-changing aesthetics.</li>
 <li>Super-light outer plates with cut-out design.</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-xx-sl-eagle-transmission-flattop-chain/1.jpg', 'sram-xx-sl-eagle-transmission-flattop-chain/2.jpg', 'sram-xx-sl-eagle-transmission-flattop-chain/3.jpg', 'sram-xx-sl-eagle-transmission-flattop-chain/4.jpg', 'sram-xx-sl-eagle-transmission-flattop-chain/5.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('sram-xx1-eagle-chain-12-speed-copper', 'SRAM XX1 Eagle Chain 12 Speed - Copper', 'sram', 'components', 'chains', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM XX1 EAGLE 12 SPEED CHAIN - COPPER</strong></p>

 <p>A chain that’s more than the sum of its hollow pins or its fanatically shaped chamfers. Because it takes more to make a chain XX1 Eagle worthy. XX1 means uncompromising strength at an ultra-light weight with performance consistency and silky smooth, whisper-quiet operation. Now completed with our all-new Eagle Colorsystem setting the aesthetic bar and giving riders color options from Black to Gold to Rainbow, including all-new Copper.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Compact - Speed</strong></th>
 <td>All Levels of Eagle Drivetrains</td>
 </tr>
 <tr>
 <th><strong>Chain Length (Links)</strong></th>
 <td>126 Links</td>
 </tr>
 <tr>
 <th><strong>Colour</strong></th>
 <td>Copper</td>
 </tr>
 <tr>
 <th><strong>Chain Connector</strong></th>
 <td>Powerlock</td>
 </tr>
 <tr>
 <th><strong>Pin Variant</strong></th>
 <td>Hollow Pin</td>
 </tr>
 <tr>
 <th><strong>Pin Treatment</strong></th>
 <td>Chrome Hardened</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Unique design features provide significantly improved wear resistance.</li>
 <li>All-new Eagle Colorsystem facilitates dream-build curation.</li>
 <li>Designed and manufactured in our European facilities, it’s the quietest, strongest and most wear-resistant chain in the world.</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-xx1-eagle-chain-12-speed-copper/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),

  -- ---- components · cleats ----
  ('crankbrothers-mtb-cleats', 'Crankbrothers MTB Cleats', 'crankbrothers', 'components', 'cleats', '<p><strong>Standard Release Cleat Kit</strong></p> <ul> <li>Customizable float options based on your riding style. </li> <li>2-hole bolt pattern for mtb shoes.</li> <li>Plastic spacing shims included.</li> <li>Compatible with all clip-in crankbrothers pedals.</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Adjustment</strong></td> <td>2.2mm left/right</td> </tr> <tr> <td><strong>Float</strong></td> <td>0º (Silver) or 6º (Gold)</td> </tr> <tr> <td><strong>Material</strong></td> <td>Premium strength brass</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15°</td> </tr> <tr> <td><strong>Weight</strong></td> <td>30g per pair</td> </tr> </tbody> </table> <p><strong>Easy Release Cleat Kit</strong></p> <ul> <li>Optimized for novice riders or those new to clip-in pedals.</li> <li>10º release angle makes it easier to unclip. </li> <li>2-hole bolt pattern for mtb shoes.</li> <li>Plastic spacing shims included.</li> <li>Compatible with all Crankbrothers clip-in pedals.</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Adjustment</strong></td> <td>2.2mm left/right</td> </tr> <tr> <td><strong>Float</strong></td> <td>0º (Bronze) or 6º (Rose)</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>10º</td> </tr> <tr> <td><strong>Weight</strong></td> <td>30g per pair</td> </tr> <tr> <td><strong>Material</strong></td> <td>Premium strength brass</td> </tr> </tbody> </table>', array['crankbrothers-mtb-cleats/1.jpg', 'crankbrothers-mtb-cleats/2.jpg', 'crankbrothers-mtb-cleats/3.jpg', 'crankbrothers-mtb-cleats/4.jpg']::text[], 'new', 4, '2021-08-30'::date, false, false),
  ('look-cleats-new-keo-grip', 'Look Cleats New Keo Grip', 'look', 'components', 'cleats', '<p>The new LOOK KEO Grip cleats extend the unique KEO experience with increased safety and durability. Their new materials offer enhanced wear resistance as well as a stable contact surface for optimal power transfer. The widened front/rear grip secures walking, while the Silent Float zones, made from low-friction material, reduce noise and wear. They are available in 0°, 4.5°, and 9° to suit every cyclist.</p>
<h4>Keo, the road standard</h4>
<p>Pioneer of the clipless pedal since 1984, LOOK Cycle introduced the Keo Cleat standard in 2004 to give road cyclists a lighter, more compact, and more efficient cleat–pedal interface. Its wide contact surface and low-profile design have made it the benchmark for power transfer, race-proven reliability, and compatibility with a wide range of road shoes.</p>
<h4>Keo Grip, the benchmark</h4>

<p>The new Keo Grip brings together our best technologies: long-lasting compounds for extended cleat life, wider Grip inserts so you can walk with confidence, and Silent Float low-friction technology for a smoother, quieter and more stable interface with the pedal.</p>
<h4>Optimal power transfer</h4>

<p>Thanks to a wide, perfectly flat central contact area, LOOK cleats deliver rock-solid foot stability. This optimized interface maximizes power transfer and helps turn every watt you produce into efficient forward motion.</p>
<h4>Perfect your setup and position</h4>

<p>Dial in your position on the bike and boost comfort with the LOOK fit ecosystem. We offer three cleat float options, multiple cleat spacer thicknesses, shoe sole curvature-correction shims and optional 56 mm long pedal spindles to fine-tune your fit with millimetric precision.</p>

<h4>Technical specifications  </h4>
<table>
<tbody>
<tr>
<th>Material</th>
<td>Polyamide &amp; TPU</td>
</tr>
<tr>
<th>Angular freedom</th>
<td>0° / 4.5° / 9° (black, grey or red)</td>
</tr>
<tr>
<th>Lateral adjustment</th>
<td>4 mm</td>
</tr>
<tr>
<th>Longitudinal adjustment</th>
<td>9 mm</td>
</tr>
<tr>
<th>Weight pair + fastenings</th>
<td>60 g</td>
</tr>
<tr>
<th>Accessories</th>
<td>6 screws of 5 x 9mm and 6 washers</td>
</tr>
</tbody>
</table>', array['look-cleats-new-keo-grip/1.webp', 'look-cleats-new-keo-grip/2.webp', 'look-cleats-new-keo-grip/3.webp', 'look-cleats-new-keo-grip/4.webp', 'look-cleats-new-keo-grip/5.webp']::text[], 'new', 2, '2026-06-04'::date, false, false),
  ('look-keo-cleats', 'Look Keo Cleats', 'look', 'components', 'cleats', '<p>The standard Kéo has been developed with the goal of minimizing weight and a simplified cleat and pedal ensemble, while maintaining compatibility with all shoes on the market.<br>The kinematics function is identical to the standard DELTA pedal. Cleat entry and release is secure and efficient.</p>', array['look-keo-cleats/1.jpg', 'look-keo-cleats/2.png', 'look-keo-cleats/3.png', 'look-keo-cleats/4.jpg', 'look-keo-cleats/5.png']::text[], 'new', 2, '2023-05-14'::date, false, false),
  ('shimanobluecleat', 'Shimano Blue Cleat', 'shimano', 'components', 'cleats', '<p><strong>Description:</strong></p>
<p>The Shimano SH12 SPD-SL cleat set is perfect if you need a small amount of float but don''t want to waste energy with excess movement. <br><br></p>

<strong>Features:</strong>
<ul>
<li>2 degrees of float</li>
<li>Blue-coloured wear indicators</li>
<li>Very smooth clipping motion</li>
<li>Fits 3-bolt road shoes</li>
<li>Use with Shimano brand road pedals only</li>
<li>Not compatible with Shimano SPD-R pedals</li>
<li>All mounting hardware included</li>
</ul>', array['shimanobluecleat/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimanoredcleat', 'Shimano Red Cleat', 'shimano', 'components', 'cleats', '<p><strong>For use with Shimano road pedals. </strong></p>

<strong>Features:</strong>
<ul>
<li>Fixed mode (0° of float)</li>
<li>Nylon resin construction</li>
<li>Non-slip rubber base for easier walking</li>
<li>Compatible with any shoes with standard 3-bolt mounting</li>
<li>All mounting hardware included</li>
</ul>', array['shimanoredcleat/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimanosh51singlereleasespdcleats', 'Shimano SH51 Single Release SPD Cleats', 'shimano', 'components', 'cleats', '<p><strong>Replacement cleats for use with Shimano SPD pedals.</strong></p>

<p><strong>Features:</strong></p>
<ul>
<li>Single direction release design</li>
<li>Easy step-in feature</li>
<li>Standard 2 bolt mount fits most brands of MTB shoes</li>
<li>Spare cleats compatible with PD-M970 / M959 / M770 / M647 / M646 / M545 / M540 / M536 / M520 / M515 / M505 / M424 / M324 / M323 / A600 / A530 / A520 / A515</li>
</ul>', array['shimanosh51singlereleasespdcleats/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimanoyellowcleat', 'Shimano Yellow Cleat', 'shimano', 'components', 'cleats', '<p><strong>For use with Shimano road pedals.</strong></p>

<strong>Features:</strong>
<ul>
<li>Floating mode (6° of float)</li>
<li>Nylon resin construction</li>
<li>Non-slip rubber base for easier walking</li>
<li>Compatible with any shoes with standard 3-bolt mounting</li>
<li>All mounting hardware included</li>
</ul>', array['shimanoyellowcleat/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),

  -- ---- components · cranksets ----
  ('rotor-aldhu-carbon-direct-mount-cranks', 'Rotor Aldhu Carbon Direct Mount Cranks', 'rotor', 'components', 'cranksets', '<p><strong>ROTOR ALDHU Carbon Cranks</strong>. The ROTOR ALDHU® Carbon Cranks offers such wide configurations to meet the different preferences / needs of each individual cyclist.</p> <p>With an innovative modular structure, along with spindles and different chainring options, makes each component individually available to suit today''s spectrum of users and cycling standards. They incorporate OCP mounting technology, which allows the user to adjust the orientation of ROTOR''s oval Q Rings.</p> <p><strong>ROTOR Aldhu Carbon Cranks features:</strong></p> <table> <tbody> <tr> <td><strong>Weight</strong></td> <td>260 g (172.5 mm - w/o chainrings &amp; 30mm axle)</td> </tr> <tr> <td><strong>Sizes</strong></td> <td>165 mm | 170 mm | 172.5 mm | 175 mm</td> </tr> <tr> <td><strong>Q-Factor</strong></td> <td>147 mm (standard spindle) | 152 mm (offset spindle)</td> </tr> <tr> <td><strong>Chainline (2X)</strong></td> <td>43.5 mm (standard spindle) | 46 mm (offset spindle)</td> </tr> <tr> <td><strong>Chainline (1X)</strong></td> <td>44.5 mm (standard spindle) | 47 mm (offset spindle)</td> </tr> <tr> <td><strong>Material</strong></td> <td>Carbon</td> </tr> <tr> <td><strong>Compatibility</strong></td> <td>BSA30, ITA30, BB30 bearing kit, PRESS FIT 4630, UBB4630, BB386, PRESS FIT 4130</td> </tr> </tbody> </table>', array['rotor-aldhu-carbon-direct-mount-cranks/1.jpg', 'rotor-aldhu-carbon-direct-mount-cranks/2.jpg', 'rotor-aldhu-carbon-direct-mount-cranks/3.jpg', 'rotor-aldhu-carbon-direct-mount-cranks/4.jpg']::text[], 'new', 3, '2021-08-26'::date, false, false),
  ('rotor-aldhu-direct-mount-cranks', 'Rotor Aldhu Direct Mount Cranks', 'rotor', 'components', 'cranksets', '<p><strong>ROTOR ALDHU® cranks</strong>. The innovative modular structure, together with axles and different chainring options, makes each component individually available to accommodate the current spectrum of riders and bike standards.</p> <p>The ALDHU® incorporates OCP Mount technology, which enables the rider to fine-tune the orientation of ROTOR’s oval Q RINGS. The ALDHU® proprietary, patent-pending design is based on the modularity of each crankset component.</p> <h3><strong>ROTOR ALDHU Cranks features:</strong></h3> <table> <tbody> <tr> <td><strong>Weight</strong></td> <td>347,8 g (175mm w/o chainrings &amp; 30mm axle)</td> </tr> <tr> <td><strong>Sizes</strong></td> <td>155 mm | 160 mm | 165 mm | 167,5 mm | 170 mm | 172.5 mm | 175 mm</td> </tr> <tr> <td><strong>Q-Factor</strong></td> <td>147 mm (standard spindle) |152 mm (offset spindle)</td> </tr> <tr> <td><strong>Chainline (2X)</strong></td> <td>43.5 mm (standard spindle) | 46 mm (offset spindle)</td> </tr> <tr> <td><strong>Chainline (1X)</strong></td> <td>44.5 mm (standard spindle) | 47 mm (offset spindle)</td> </tr> <tr> <td><strong>Material</strong></td> <td>7055 aluminium</td> </tr> <tr> <td><strong>Compatibility</strong></td> <td>BSA30, ITA30, BB30 bearing kit, PRESS FIT 4630, UBB4630, BB386, PRESS FIT 4130</td> </tr> </tbody> </table>', array['rotor-aldhu-direct-mount-cranks/1.jpg']::text[], 'new', 7, '2021-08-26'::date, false, false),
  ('rotor-aldhu24-direct-mount-cranks', 'Rotor Aldhu24 Direct Mount Cranks', 'rotor', 'components', 'cranksets', '<p><strong>ROTOR ALDHU®24 cranks</strong>. The innovative modular structure, together with axles and different chainring options, makes each component individually available to accommodate the current spectrum of riders and bike standards.</p> <p>The ALDHU®24 incorporates OCP Mount technology, which enables the rider to fine-tune the orientation of ROTOR’s oval Q RINGS. The ALDHU® proprietary, patent-pending design is based on the modularity of each crankset component.</p> <h3><strong>ROTOR Aldhu24 Cranks features:</strong></h3> <table> <tbody> <tr> <td><strong>Weight</strong></td> <td>355 g (170mm w/o chainrings &amp; 24mm axle)</td> </tr> <tr> <td><strong>Sizes</strong></td> <td>155 mm | 165 mm | 170 mm | 172 mm | 175 mm</td> </tr> <tr> <td><strong>Q-Factor</strong></td> <td>148 mm</td> </tr> <tr> <td><strong>Chainline (2X)</strong></td> <td>43.5 mm (standard spindle)</td> </tr> <tr> <td><strong>Chainline (1X)</strong></td> <td>44.5 mm (standard spindle) | 47 mm (offset spindle)</td> </tr> <tr> <td><strong>Material</strong></td> <td>7055 aluminium</td> </tr> <tr> <td><strong>Compatibility</strong></td> <td>BSA24, ITA24, BB30 bearing kit, PRESS FIT 4624, UBB4624, BB386, PRESS FIT 4124</td> </tr> </tbody> </table>', array['rotor-aldhu24-direct-mount-cranks/1.jpg', 'rotor-aldhu24-direct-mount-cranks/2.jpg']::text[], 'new', 1, '2021-08-26'::date, false, false),
  ('rotor-direct-mount-axle-road', 'Rotor Direct Mount Axle Road', 'rotor', 'components', 'cranksets', '<p>OffSet and Standard versions available</p>
<p>Weight OffSet: 99 grms</p>
<p>Weight Standard: 96 grms</p>
<p>Q-Factor: 147mm (rim) / 152mm (disc)</p>', array['rotor-direct-mount-axle-road/1.jpg', 'rotor-direct-mount-axle-road/2.jpg', 'rotor-direct-mount-axle-road/3.jpg']::text[], 'new', 2, '2021-08-26'::date, false, false),
  ('rotor-vegast-direct-mount-cranks', 'Rotor Vegast Direct Mount Cranks', 'rotor', 'components', 'cranksets', '', array['rotor-vegast-direct-mount-cranks/1.jpg', 'rotor-vegast-direct-mount-cranks/2.jpg']::text[], 'new', 1, '2021-08-26'::date, false, false),
  ('shimano-fc-r8100-ultegra-crankset-52-36', 'Shimano FC-R8100 Ultegra Crankset  52-36', 'shimano', 'components', 'cranksets', '<p>The R8100 2-speed crank brings maximum power transfer efficiency to your road bike. At the same time, shifting is as fast and precise as usual. The crank arms are hollow-formed, as is the large chainring, which is partly made of carbon, resulting in significant weight savings. Apart from the axle, all essential parts were made of lightweight metal.</p>
<p>Thanks to the Hollowtech II design, which has been tried and tested for years, with a fixed 24 mm axle, the ratio of stiffness, performance and weight is just right. The small chainring is made entirely of aluminium, while durable composite is also used on the large chainring. FC-R8100 has an asymmetrical 4-arm bolt circle diameter of 110 mm.</p>
<ul>
<li>Perfect balance between stiffness, stability, weight and rotational efficiency</li>
<li>Optimised power transfer</li>
<li>Fast, high-precision shifting at the front</li>
<li>Hollow crank arms (Hollowtech)</li>
<li>Hollow-formed large chainring made of aluminium-carbon composite (Hollowglide)</li>
<li>Anodised crank arms and chainrings</li>
<li>Aluminium chainring bolts</li>
<li>Chainline: 44.5 mm</li>
<li>Q-Factor: 148 mm</li>
<li>Compatible BSA Shell Width: 68 mm</li>
<li>Recommended Bottom Bracket: BBR60 or BB72 Press Fit Hollowtech II (not included)</li>
<li>Recommended Chain: CN-M8100</li>
<li>Weight: 170mm 52-36t: 711g
</li>
</ul>', array['shimano-fc-r8100-ultegra-crankset-52-36/1.jpg']::text[], 'new', 4, '2025-03-24'::date, false, true),

  -- ---- components · derailleurs ----
  ('shimano-ultegra-8150-front-derailleur', 'Shimano Ultegra 8150 Front Derailleur', 'shimano', 'components', 'derailleurs', '', '{}'::text[], 'new', 1, '2026-07-22'::date, false, true),

  -- ---- components · disc-brake-rotors ----
  ('galfer-brake-caliper-adapters', 'GALFER - BRAKE CALIPER ADAPTERS', 'galfer', 'components', 'disc-brake-rotors', '<p>Galfer adapters to increase caliper mounting height on frames and forks, to suit larger diameter rotors.<br><br></p>
<p>Each adapter includes two fastening bolts. The below table shows the conversion from the original frame or fork position, <strong>without adapters</strong>, to the larger rotor size.<br><br></p>
<table>
<tbody>
<tr>
<td>MODEL</td>
<td>FRONT SIZE (mm)</td>
<td>REAR SIZE (MM)</td>
<td>WEIGHT (g)</td>
</tr>
<tr>
<td>
<h3><strong>SB001</strong></h3>
<h3>+43mm</h3>
</td>
<td>
<h3>ø160 &gt; ø203</h3>
<h3>ø180 &gt; ø223</h3>
</td>
<td>
<h3>ø160 &gt; ø203</h3>
<h3>ø180 &gt; ø223</h3>
</td>
<td>
<h3>21</h3>
</td>
</tr>
<tr>
<td>
<h3>SB002</h3>
<h3>+20mm</h3>
</td>
<td>
<h3>ø160 &gt; ø180</h3>
<h3>ø180 &gt; ø200<br>ø203 &gt; ø223</h3>
</td>
<td>
<h3>ø160 &gt; ø180</h3>
<h3>ø180 &gt; ø200</h3>
</td>
<td>
<h3>22</h3>
</td>
</tr>
<tr>
<td>
<h3>SB003</h3>
<h3>+63mm</h3>
</td>
<td>
<h3>ø160 &gt; ø223</h3>
</td>
<td>
<h3>ø160 &gt; ø223</h3>
</td>
<td>
<h3>29</h3>
</td>
</tr>
<tr>
<td>
<h3>SB004</h3>
<h3>+23MM</h3>
</td>
<td>
<h3>ø180 &gt; ø203</h3>
<h3>ø200 &gt; ø223</h3>
</td>
<td>
<h3>ø180 &gt; ø203</h3>
<h3>ø200 &gt; ø223</h3>
</td>
<td>
<h3>26</h3>
</td>
</tr>
<tr>
<td>
<h3>SB005</h3>
<h3>FOX 40 &amp; 49</h3>
</td>
<td>
<h3>ø203 &gt; ø223</h3>
</td>
<td> </td>
<td>
<h3>25</h3>
</td>
</tr>
</tbody>
</table>

<p><strong><a></a></strong></p>', array['galfer-brake-caliper-adapters/1.jpg', 'galfer-brake-caliper-adapters/2.jpg', 'galfer-brake-caliper-adapters/3.jpg', 'galfer-brake-caliper-adapters/4.jpg', 'galfer-brake-caliper-adapters/5.jpg']::text[], 'new', 5, '2026-06-09'::date, false, false),
  ('galfer-brake-rotor-centerlock-adapter', 'GALFER - BRAKE ROTOR CENTERLOCK ADAPTER', 'galfer', 'components', 'disc-brake-rotors', '<p><br> Mount your 6-bolt universal rotors to Centerlock hubs. Suitable for MTB, road, gravel and e-bike applications.<br><br></p>
<p>Not compatible with the Fulcrum AFS system</p>

<p><strong><a></a></strong></p>', array['galfer-brake-rotor-centerlock-adapter/1.jpg']::text[], 'new', 1, '2026-06-09'::date, false, false),
  ('galfer-brake-rotor-e-bike-speed-sensor-magnet', 'GALFER - BRAKE ROTOR E-BIKE SPEED SENSOR MAGNET', 'galfer', 'components', 'disc-brake-rotors', '<p>Various speed sensor magnets to suit specified models of e-bikes.</p>

<p><strong>MG001</strong> - Specialized (up to 2018), Brose, Bosch, Giant, Shimano</p>
<p><strong>MG002</strong> - Specialized (2019 onwards), Trek</p>
<p><strong>MG003</strong> - Compatible with Galfer rotors that have a magnet mount hole.</p>

<p><strong><a></a></strong></p>', array['galfer-brake-rotor-e-bike-speed-sensor-magnet/1.jpg', 'galfer-brake-rotor-e-bike-speed-sensor-magnet/2.jpg', 'galfer-brake-rotor-e-bike-speed-sensor-magnet/3.jpg']::text[], 'new', 3, '2026-06-09'::date, false, false),
  ('galfer-mtb-shark-disc-rotor-6-bolt-1-8mm', 'GALFER - MTB SHARK DISC ROTOR - 6 BOLT - 1.8MM', 'galfer', 'components', 'disc-brake-rotors', '<p>Unique to this rotor are the inner fins that gives it its name: the Shark. These fins, together with the rotor’s small internal round holes, allow the operating temperature of the disc to be reduced, while the rotor’s exterior Wave design and its lateral openings produce a powerful and consistent grip over the full contact area of the brake pad. Paired with Galfer Pro brake pads, Shark discs have brought home numerous UCI World Cup DH victories and podiums, heralding a new era of ultimate braking performance.</p>
<p>Galfer Shark rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Shark rotors have anti-corrosion treatment, are lighter than comparable discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>

<p>KEY FEATURES - SHARK ROTOR</p>
<ul>
<li>Decreased effort to brake under fatiguing conditions, with a 5-10% gain in braking power over comparable rotors</li>
<li>Stable and consistent at all times - extremely tolerant of steep gradients, high speeds, high ambient temperature and large mass</li>
<li>Drastically reduced operating temperature – a 30% reduction compared to other high-end discs currently on the market – and manufactured as one piece for greater strength.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Exceptional durability</li>
<li>Increased pad life by 25-40% under normal conditions</li>
<li>Laser cut and precision ground to exacting standards</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>1.8mm thick</li>
<li>6-Bolt universal mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 160mm: 104g<br><strong>MOUNTING:</strong> 6-Bolt universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 1.8mm<br><strong>MADE IN SPAIN<br><br></strong></p>
<p><strong><a></a></strong></p>', array['galfer-mtb-shark-disc-rotor-6-bolt-1-8mm/1.jpg', 'galfer-mtb-shark-disc-rotor-6-bolt-1-8mm/2.jpg']::text[], 'new', 0, '2026-06-09'::date, false, false),
  ('galfer-mtb-shark-disc-rotor-6-bolt-2mm', 'GALFER - MTB SHARK DISC ROTOR - 6-BOLT - 2MM', 'galfer', 'components', 'disc-brake-rotors', '<p>Unique to this rotor are the inner fins that gives it its name: the Shark. These fins, together with the rotor’s small internal round holes, allow the operating temperature of the disc to be reduced, while the rotor’s exterior Wave design and its lateral openings produce a powerful and consistent grip over the full contact area of the brake pad. Paired with Galfer Pro brake pads, Shark discs have brought home numerous UCI World Cup DH victories and podiums, heralding a new era of ultimate braking performance.</p>
<p>Galfer Shark rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Shark rotors have anti-corrosion treatment, are lighter than comparable discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>The added thickness of 2mm rotors delivers better durability and performance under heavy load/high heat applications, making them ideal for ebikes. <strong>Please ensure your brake system is compatibile with this size</strong> - standard 1.8mm Wave Rotors are the preferred choice for calipers that won''t accomodate this thickness.</p>

<p>KEY FEATURES - SHARK ROTOR</p>
<ul>
<li>Decreased effort to brake under fatiguing conditions, with a 5-10% gain in braking power over comparable rotors</li>
<li>Stable and consistent at all times - extremely tolerant of steep gradients, high speeds, high ambient temperature and large mass</li>
<li>Drastically reduced operating temperature – a 30% reduction compared to other high-end discs currently on the market – and manufactured as one piece for greater strength.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Exceptional durability</li>
<li>Increased pad life by 25-40% under normal conditions</li>
<li>Laser cut and precision ground to exacting standards</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>2.0mm thick, ideal for high heat/heavy braking applications</li>
<li>6-Bolt universal mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 180mm: 127g | 203mm: 174g | 223mm: 237g<br><strong>MOUNTING:</strong> 6-Bolt universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 2.0mm<br><strong>MADE IN SPAIN<br><br></strong></p>
<p><strong><a></a></strong></p>', array['galfer-mtb-shark-disc-rotor-6-bolt-2mm/1.jpg', 'galfer-mtb-shark-disc-rotor-6-bolt-2mm/2.jpg', 'galfer-mtb-shark-disc-rotor-6-bolt-2mm/3.jpg']::text[], 'new', 3, '2026-06-09'::date, false, false),
  ('galfer-mtb-shark-disc-rotor-centerlock-1-8mm', 'GALFER - MTB SHARK DISC ROTOR - CENTERLOCK - 1.8MM', 'galfer', 'components', 'disc-brake-rotors', '<p>Unique to this rotor are the inner fins that gives it its name: the Shark. These fins, together with the rotor’s small internal round holes, allow the operating temperature of the disc to be reduced, while the rotor’s exterior Wave design and its lateral openings produce a powerful and consistent grip over the full contact area of the brake pad. Paired with Galfer Pro brake pads, Shark discs have brought home numerous UCI World Cup DH victories and podiums, heralding a new era of ultimate braking performance.</p>
<p>Galfer Shark rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Shark rotors have anti-corrosion treatment, are lighter than comparable discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>

<p>KEY FEATURES - SHARK ROTOR</p>
<ul>
<li>Decreased effort to brake under fatiguing conditions, with a 5-10% gain in braking power over comparable rotors</li>
<li>Stable and consistent at all times - extremely tolerant of steep gradients, high speeds, high ambient temperature and large mass</li>
<li>Drastically reduced operating temperature – a 30% reduction compared to other high-end discs currently on the market – and manufactured as one piece for greater strength.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Exceptional durability</li>
<li>Increased pad life by 25-40% under normal conditions</li>
<li>Laser cut and precision ground to exacting standards</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>1.8mm thick</li>
<li>Centerlock mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 160mm: 121g<br><strong>MOUNTING:</strong> Centerlock mounting pattern<br><strong>ROTOR THICKNESS:</strong> 1.8mm<br><strong>MADE IN SPAIN<br><br></strong></p>
<p><strong><a></a></strong></p>', array['galfer-mtb-shark-disc-rotor-centerlock-1-8mm/1.jpg']::text[], 'new', 1, '2026-06-09'::date, false, false),
  ('galfer-mtb-shark-disc-rotor-centerlock-2mm', 'GALFER - MTB SHARK DISC ROTOR - CENTERLOCK - 2MM', 'galfer', 'components', 'disc-brake-rotors', '<p>Unique to this rotor are the inner fins that gives it its name: the Shark. These fins, together with the rotor’s small internal round holes, allow the operating temperature of the disc to be reduced, while the rotor’s exterior Wave design and its lateral openings produce a powerful and consistent grip over the full contact area of the brake pad. Paired with Galfer Pro brake pads, Shark discs have brought home numerous UCI World Cup DH victories and podiums, heralding a new era of ultimate braking performance.</p>
<p>Galfer Shark rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Shark rotors have anti-corrosion treatment, are lighter than comparable discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>The added thickness of 2mm rotors delivers better durability and performance under heavy load/high heat applications, making them ideal for ebikes. <strong>Please ensure your brake system is compatibile with this size</strong> - standard 1.8mm Wave Rotors are the preferred choice for calipers that won''t accomodate this thickness.</p>

<p>KEY FEATURES - SHARK ROTOR</p>
<ul>
<li>Decreased effort to brake under fatiguing conditions, with a 5-10% gain in braking power over comparable rotors</li>
<li>Stable and consistent at all times - extremely tolerant of steep gradients, high speeds, high ambient temperature and large mass</li>
<li>Drastically reduced operating temperature – a 30% reduction compared to other high-end discs currently on the market – and manufactured as one piece for greater strength.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Exceptional durability</li>
<li>Increased pad life by 25-40% under normal conditions</li>
<li>Laser cut and precision ground to exacting standards</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>2.0mm thick, ideal for high heat/heavy braking applications</li>
<li>Centerlock mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 180mm: 144g | 203mm: 191g | 223mm: 264g<br><strong>MOUNTING:</strong> Centerlock mounting pattern<br><strong>ROTOR THICKNESS:</strong> 2.0mm<br><strong>MADE IN SPAIN<br><br></strong></p>
<p><strong><a></a></strong></p>', array['galfer-mtb-shark-disc-rotor-centerlock-2mm/1.jpg', 'galfer-mtb-shark-disc-rotor-centerlock-2mm/2.jpg', 'galfer-mtb-shark-disc-rotor-centerlock-2mm/3.jpg']::text[], 'new', 3, '2026-06-09'::date, false, false),
  ('galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm', 'GALFER - MTB SHARK EVO DISC ROTOR - 6-BOLT - 2MM - BLACK CORE', 'galfer', 'components', 'disc-brake-rotors', '<p>In 2022 Galfer set a new standard for uncompromising performance with the launch of the original Shark rotor. The new <strong>Shark® EVO</strong> raises the bar even higher, while maintaining the Shark family DNA of innovation and reliability.</p>
<p>A <strong>new Shark braking track</strong> gives the Shark EVO rotor an even larger contact surface, with the evolved design ensuring more powerful and consistent braking and ensuring compatibility with all types and sizes of brake pads. <strong>More fins and thermal dissipation holes</strong> deliver superior cooling, increasing stability and reducing fade on the most intense, extended descents.</p>
<p><strong>The CNC machined, aerospace-grade 7075-T6 aluminium core</strong>, mounted to the braking track with <strong>8mm hollow aluminium rivets</strong>, gives the rotor unprecedented rigidity and precision.  <strong>An optimized semi-rigid joint</strong> ensures exceptional force transmission between both components, maximizing performance and ensuring even, symmetrical pad wear.</p>
<p>Galfer Shark rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Shark rotors have anti-corrosion treatment, are lighter than comparable discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>The added thickness of 2mm rotors delivers better durability and performance under heavy load/high heat applications, making them ideal for ebikes. <strong>Please ensure your brake system is compatibile with this size</strong> - standard 1.8mm Wave Rotors are the preferred choice for calipers that won''t accomodate this thickness.</p>

<p><strong>KEY FEATURES - SHARK EVO ROTOR</strong></p>
<ul>
<li>New Shark EVO braking track: larger surface, more friction power, more powerful and consistemt braking</li>
<li>Stable and consistent at all times - extremely tolerant of steep gradients, high speeds, high ambient temperature and large mass</li>
<li>CNC machined aerospace aluminium core reduces weight and adds incredible stiffness to the system</li>
<li>8mm hollow aluminium rivets and an optimized semi-rigid joint ensures exceptional force transmission between the core and braking track, maximizing performance and comfort.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Exceptional durability</li>
<li>Increased pad life by 25-40% under normal conditions</li>
<li>Laser cut and precision ground to exacting standards</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>2.0mm thick, ideal for high heat/heavy braking applications</li>
<li>6-Bolt universal mounting pattern.</li>
<li>Compatible with speed sensor magnets, maintaining full E-bike system functionality.</li>
</ul>
<p><br><strong>SPECIFICATIONS</strong></p>
<p><strong>WEIGHTS:</strong> 180mm: 165g | 203mm: 195g | 223mm: 229g<br><strong>MOUNTING:</strong> 6-Bolt universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 2.0mm<br><strong>MADE IN SPAIN<br><br></strong></p>
<p><strong><a></a></strong></p>', array['galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm/1.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm/2.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm/3.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm/4.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm/5.jpg']::text[], 'new', 0, '2026-06-09'::date, false, false),
  ('galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-kashima-core', 'GALFER - MTB SHARK EVO DISC ROTOR - 6-BOLT - 2MM - KASHIMA CORE', 'galfer', 'components', 'disc-brake-rotors', '<p>In 2022 Galfer set a new standard for uncompromising performance with the launch of the original Shark rotor. The new <strong>Shark® EVO</strong> raises the bar even higher, while maintaining the Shark family DNA of innovation and reliability.</p>
<p>The Disc Shark® EVO is the only brake disc on the market with original <strong>Kashima</strong> coating, complementing the finish of your Fox Factory Series fork and shock.</p>
<p>A <strong>new Shark braking track</strong> gives the Shark EVO rotor an even larger contact surface, with the evolved design ensuring more powerful and consistent braking and ensuring compatibility with all types and sizes of brake pads. <strong>More fins and thermal dissipation holes</strong> deliver superior cooling, increasing stability and reducing fade on the most intense, extended descents.</p>
<p><strong>The CNC machined, aerospace-grade 7075-T6 aluminium core</strong>, mounted to the braking track with <strong>8mm hollow aluminium rivets</strong>, gives the rotor unprecedented rigidity and precision.  <strong>An optimized semi-rigid joint</strong> ensures exceptional force transmission between both components, maximizing performance and ensuring even, symmetrical pad wear.</p>
<p>Galfer Shark rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Shark rotors have anti-corrosion treatment, are lighter than comparable discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>The added thickness of 2mm rotors delivers better durability and performance under heavy load/high heat applications, making them ideal for ebikes. <strong>Please ensure your brake system is compatibile with this size</strong> - standard 1.8mm Wave Rotors are the preferred choice for calipers that won''t accomodate this thickness.</p>

<p><strong>KEY FEATURES - SHARK EVO ROTOR</strong></p>
<ul>
<li>New Shark EVO braking track: larger surface, more friction power, more powerful and consistemt braking</li>
<li>Stable and consistent at all times - extremely tolerant of steep gradients, high speeds, high ambient temperature and large mass</li>
<li>CNC machined aerospace aluminium core reduces weight and adds incredible stiffness to the system</li>
<li>8mm hollow aluminium rivets and an optimized semi-rigid joint ensures exceptional force transmission between the core and braking track, maximizing performance and comfort.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Exceptional durability</li>
<li>Increased pad life by 25-40% under normal conditions</li>
<li>Laser cut and precision ground to exacting standards</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>2.0mm thick, ideal for high heat/heavy braking applications</li>
<li>6-Bolt universal mounting pattern.</li>
<li>Compatible with speed sensor magnets, maintaining full E-bike system functionality.</li>
</ul>
<p><br><strong>SPECIFICATIONS</strong></p>
<p><strong>WEIGHTS:</strong> 180mm: 165g | 203mm: 195g | 223mm: 229g<br><strong>MOUNTING:</strong> 6-Bolt universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 2.0mm<br><strong>MADE IN SPAIN<br><br></strong></p>
<p><strong><a></a></strong></p>', array['galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-kashima-core/1.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-kashima-core/2.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-kashima-core/3.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-kashima-core/4.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-kashima-core/5.jpg']::text[], 'new', 0, '2026-06-26'::date, false, false),
  ('galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-raw-silver-co', 'GALFER - MTB SHARK EVO DISC ROTOR - 6-BOLT - 2MM - RAW SILVER CORE', 'galfer', 'components', 'disc-brake-rotors', '<p>In 2022 Galfer set a new standard for uncompromising performance with the launch of the original Shark rotor. The new <strong>Shark® EVO</strong> raises the bar even higher, while maintaining the Shark family DNA of innovation and reliability.</p>
<p>A <strong>new Shark braking track</strong> gives the Shark EVO rotor an even larger contact surface, with the evolved design ensuring more powerful and consistent braking and ensuring compatibility with all types and sizes of brake pads. <strong>More fins and thermal dissipation holes</strong> deliver superior cooling, increasing stability and reducing fade on the most intense, extended descents.</p>
<p><strong>The CNC machined, aerospace-grade 7075-T6 aluminium core</strong>, mounted to the braking track with <strong>8mm hollow aluminium rivets</strong>, gives the rotor unprecedented rigidity and precision.  <strong>An optimized semi-rigid joint</strong> ensures exceptional force transmission between both components, maximizing performance and ensuring even, symmetrical pad wear.</p>
<p>Galfer Shark rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Shark rotors have anti-corrosion treatment, are lighter than comparable discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>The added thickness of 2mm rotors delivers better durability and performance under heavy load/high heat applications, making them ideal for ebikes. <strong>Please ensure your brake system is compatibile with this size</strong> - standard 1.8mm Wave Rotors are the preferred choice for calipers that won''t accomodate this thickness.</p>

<p><strong>KEY FEATURES - SHARK EVO ROTOR</strong></p>
<ul>
<li>New Shark EVO braking track: larger surface, more friction power, more powerful and consistemt braking</li>
<li>Stable and consistent at all times - extremely tolerant of steep gradients, high speeds, high ambient temperature and large mass</li>
<li>CNC machined aerospace aluminium core reduces weight and adds incredible stiffness to the system</li>
<li>8mm hollow aluminium rivets and an optimized semi-rigid joint ensures exceptional force transmission between the core and braking track, maximizing performance and comfort.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Exceptional durability</li>
<li>Increased pad life by 25-40% under normal conditions</li>
<li>Laser cut and precision ground to exacting standards</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>2.0mm thick, ideal for high heat/heavy braking applications</li>
<li>6-Bolt universal mounting pattern.</li>
<li>Compatible with speed sensor magnets, maintaining full E-bike system functionality.</li>
</ul>
<p><br><strong>SPECIFICATIONS</strong></p>
<p><strong>WEIGHTS:</strong> 180mm: 165g | 203mm: 195g | 223mm: 229g<br><strong>MOUNTING:</strong> 6-Bolt universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 2.0mm<br><strong>MADE IN SPAIN<br><br></strong></p>
<p><strong><a></a></strong></p>', array['galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-raw-silver-co/1.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-raw-silver-co/2.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-raw-silver-co/3.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-raw-silver-co/4.jpg', 'galfer-mtb-shark-evo-disc-rotor-6-bolt-2mm-raw-silver-co/5.jpg']::text[], 'new', 3, '2026-06-26'::date, false, false),
  ('galfer-mtb-shark-evo-disc-rotor-centerlock-2mm-kashima-c', 'GALFER - MTB SHARK EVO DISC ROTOR - CENTERLOCK - 2MM - KASHIMA CORE', 'galfer', 'components', 'disc-brake-rotors', '<p>In 2022 Galfer set a new standard for uncompromising performance with the launch of the original Shark rotor. The new <strong>Shark® EVO</strong> raises the bar even higher, while maintaining the Shark family DNA of innovation and reliability.</p>
<p>The Disc Shark® EVO is the only brake disc on the market with original <strong>Kashima</strong> coating, complementing the finish of your Fox Factory Series fork and shock.</p>
<p>A <strong>new Shark braking track</strong> gives the Shark EVO rotor an even larger contact surface, with the evolved design ensuring more powerful and consistent braking and ensuring compatibility with all types and sizes of brake pads. <strong>More fins and thermal dissipation holes</strong> deliver superior cooling, increasing stability and reducing fade on the most intense, extended descents.</p>
<p><strong>The CNC machined, aerospace-grade 7075-T6 aluminium core</strong>, mounted to the braking track with <strong>8mm hollow aluminium rivets</strong>, gives the rotor unprecedented rigidity and precision.  <strong>An optimized semi-rigid joint</strong> ensures exceptional force transmission between both components, maximizing performance and ensuring even, symmetrical pad wear.</p>
<p>Galfer Shark rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Shark rotors have anti-corrosion treatment, are lighter than comparable discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>The added thickness of 2mm rotors delivers better durability and performance under heavy load/high heat applications, making them ideal for ebikes. <strong>Please ensure your brake system is compatibile with this size</strong> - standard 1.8mm Wave Rotors are the preferred choice for calipers that won''t accomodate this thickness.</p>

<p><strong>KEY FEATURES - SHARK EVO ROTOR</strong></p>
<ul>
<li>New Shark EVO braking track: larger surface, more friction power, more powerful and consistemt braking</li>
<li>Stable and consistent at all times - extremely tolerant of steep gradients, high speeds, high ambient temperature and large mass</li>
<li>CNC machined aerospace aluminium core reduces weight and adds incredible stiffness to the system</li>
<li>8mm hollow aluminium rivets and an optimized semi-rigid joint ensures exceptional force transmission between the core and braking track, maximizing performance and comfort.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Exceptional durability</li>
<li>Increased pad life by 25-40% under normal conditions</li>
<li>Laser cut and precision ground to exacting standards</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>2.0mm thick, ideal for high heat/heavy braking applications</li>
<li>6-Bolt universal mounting pattern.</li>
<li>Compatible with speed sensor magnets, maintaining full E-bike system functionality.</li>
</ul>
<p><br><strong>SPECIFICATIONS</strong></p>
<p><strong>WEIGHTS:</strong> 180mm: 165g | 203mm: 195g | 223mm: 229g<br><strong>MOUNTING:</strong> 6-Bolt universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 2.0mm<br><strong>MADE IN SPAIN<br><br></strong></p>
<p><strong><a></a></strong></p>', array['galfer-mtb-shark-evo-disc-rotor-centerlock-2mm-kashima-c/1.jpg', 'galfer-mtb-shark-evo-disc-rotor-centerlock-2mm-kashima-c/2.jpg', 'galfer-mtb-shark-evo-disc-rotor-centerlock-2mm-kashima-c/3.jpg', 'galfer-mtb-shark-evo-disc-rotor-centerlock-2mm-kashima-c/4.jpg', 'galfer-mtb-shark-evo-disc-rotor-centerlock-2mm-kashima-c/5.jpg']::text[], 'new', 0, '2026-06-26'::date, false, false),
  ('galfer-mtb-wave-disc-rotor-6-bolt', 'GALFER - MTB WAVE DISC ROTOR - 6-BOLT', 'galfer', 'components', 'disc-brake-rotors', '<p>Galfer Wave rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Wave brake rotors have anti-corrosion treatment, are lighter than most discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>Galfer disc rotors are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.</p>

<p>KEY FEATURES - WAVE ROTOR</p>
<ul>
<li>Cools the entire braking system by allowing air to pass over every point of the brake pad surface.</li>
<li>Best friction surface of any stainless steel brake rotor.</li>
<li>Quiet, vibration-free performance.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Extremely predictable and consistent.</li>
<li>Exceptional durability</li>
<li>Provides outstanding performance even in the most aggressive conditions.</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>1.8mm thick, 6-Bolt universal mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 160mm: 99g | 180mm: 110g | 203mm: 140g<br><strong>MOUNTING:</strong> 6-Bolt universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 1.8mm<br><strong>MADE IN SPAIN</strong></p>
<p><strong><br><a></a></strong></p>', array['galfer-mtb-wave-disc-rotor-6-bolt/1.jpg', 'galfer-mtb-wave-disc-rotor-6-bolt/2.jpg', 'galfer-mtb-wave-disc-rotor-6-bolt/3.jpg', 'galfer-mtb-wave-disc-rotor-6-bolt/4.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-mtb-wave-disc-rotor-6-bolt-2mm', 'GALFER - MTB WAVE DISC ROTOR - 6-BOLT - 2MM', 'galfer', 'components', 'disc-brake-rotors', '<p>Galfer Wave rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Wave brake rotors have anti-corrosion treatment, are lighter than most discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>Galfer disc rotors are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.</p>
<p>The added thickness of 2mm rotors delivers better durability and performance under heavy load/high heat applications, making them ideal for ebikes. <strong>Please ensure your brake system is compatibile with this size</strong> - standard 1.8mm Wave Rotors are the preferred choice for calipers that won''t accomodate this thickness.<br><br></p>
<p>KEY FEATURES - WAVE ROTOR</p>
<ul>
<li>Cools the entire braking system by allowing air to pass over every point of the brake pad surface.</li>
<li>Best friction surface of any stainless steel brake rotor.</li>
<li>Quiet, vibration-free performance.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Extremely predictable and consistent.</li>
<li>Exceptional durability</li>
<li>Provides outstanding performance even in the most aggressive conditions.</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>2.0mm thick, ideal for high heat/heavy braking applications</li>
<li>6-Bolt universal mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 180mm: 140g | 203mm: 180g | 223mm: 229g<br><strong>MOUNTING:</strong> 6-Bolt universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 2.0mm<br><strong>MADE IN SPAIN</strong></p>

<p><strong><a></a></strong></p>', array['galfer-mtb-wave-disc-rotor-6-bolt-2mm/1.jpg', 'galfer-mtb-wave-disc-rotor-6-bolt-2mm/2.jpg', 'galfer-mtb-wave-disc-rotor-6-bolt-2mm/3.jpg', 'galfer-mtb-wave-disc-rotor-6-bolt-2mm/4.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-mtb-wave-disc-rotor-centerlock', 'GALFER - MTB WAVE DISC ROTOR - CENTERLOCK', 'galfer', 'components', 'disc-brake-rotors', '<p>Galfer Wave rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Wave brake rotors have anti-corrosion treatment, are lighter than most discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>Galfer disc rotors are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.</p>

<p>KEY FEATURES - WAVE ROTOR</p>
<ul>
<li>Cools the entire braking system by allowing air to pass over every point of the brake pad surface.</li>
<li>Best friction surface of any stainless steel brake rotor.</li>
<li>Quiet, vibration-free performance.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Extremely predictable and consistent.</li>
<li>Exceptional durability</li>
<li>Provides outstanding performance even in the most aggressive conditions.</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>1.8mm thick, Centerlock mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 160mm: 110g | 180mm: 127g | 203mm: 157g<br><strong>MOUNTING:</strong> Centerlock mounting pattern<br><strong>ROTOR THICKNESS:</strong> 1.8mm<br><strong>MADE IN SPAIN</strong></p>
<p><strong><br><a></a></strong></p>', array['galfer-mtb-wave-disc-rotor-centerlock/1.jpg', 'galfer-mtb-wave-disc-rotor-centerlock/2.jpg', 'galfer-mtb-wave-disc-rotor-centerlock/3.jpg']::text[], 'new', 3, '2026-06-09'::date, false, false),
  ('galfer-mtb-wave-disc-rotor-centerlock-2mm', 'GALFER - MTB WAVE DISC ROTOR - CENTERLOCK - 2MM', 'galfer', 'components', 'disc-brake-rotors', '<p>Galfer Wave rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Wave brake rotors have anti-corrosion treatment, are lighter than most discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>Galfer disc rotors are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.</p>
<p>The added thickness of 2mm rotors delivers better durability and performance under heavy load/high heat applications, making them ideal for ebikes. <strong>Please ensure your brake system is compatibile with this size</strong> - standard 1.8mm Wave Rotors are the preferred choice for calipers that won''t accomodate this thickness.<br><br></p>
<p>KEY FEATURES - WAVE ROTOR</p>
<ul>
<li>Cools the entire braking system by allowing air to pass over every point of the brake pad surface.</li>
<li>Best friction surface of any stainless steel brake rotor.</li>
<li>Quiet, vibration-free performance.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Extremely predictable and consistent.</li>
<li>Exceptional durability</li>
<li>Provides outstanding performance even in the most aggressive conditions.</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>2.0mm thick, ideal for high heat/heavy braking applications</li>
<li>6-Bolt universal mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 200mm: 200g | 203mm: 219g | 256mm: 229g<br><strong>MOUNTING: </strong>Centerlock universal mounting pattern<br><strong>ROTOR THICKNESS:</strong> 2.0mm<br><strong>MADE IN SPAIN</strong></p>

<p><strong><a></a></strong></p>', array['galfer-mtb-wave-disc-rotor-centerlock-2mm/1.jpg', 'galfer-mtb-wave-disc-rotor-centerlock-2mm/2.jpg', 'galfer-mtb-wave-disc-rotor-centerlock-2mm/3.jpg', 'galfer-mtb-wave-disc-rotor-centerlock-2mm/4.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-road-wave-disc-rotor-centerlock', 'GALFER - ROAD WAVE DISC ROTOR - CENTERLOCK', 'galfer', 'components', 'disc-brake-rotors', '<p>Galfer Wave rotors are laser-cut from a proprietary mix of virgin, high-carbon 420 stainless steel, double-disc parallel ground to ensure perfect flatness, then heat treated according to each rotor’s specific application. Wave brake rotors have anti-corrosion treatment, are lighter than most discs on the market and do not emit noise or vibration. Every rotor is designed and crafted with precision in Galfer’s factory in Barcelona, Spain.</p>
<p>Galfer disc rotors are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.</p>

<p>KEY FEATURES - WAVE ROTOR</p>
<ul>
<li>Cools the entire braking system by allowing air to pass over every point of the brake pad surface.</li>
<li>Best friction surface of any stainless steel brake rotor.</li>
<li>Quiet, vibration-free performance.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Extremely predictable and consistent modulation.</li>
<li>Exceptional durability</li>
<li>Lightweight</li>
<li>Provides outstanding performance even in the most aggressive conditions.</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>1.8mm thick, Centerlock mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 140mm: 76g | 160mm: 98g<br><strong>MOUNTING:</strong> Centerlock mounting pattern<br><strong>ROTOR THICKNESS:</strong> 1.8mm<br><strong>MADE IN SPAIN</strong></p>
<p><strong><br><a></a></strong></p>', array['galfer-road-wave-disc-rotor-centerlock/1.jpg', 'galfer-road-wave-disc-rotor-centerlock/2.jpg', 'galfer-road-wave-disc-rotor-centerlock/3.jpg']::text[], 'new', 2, '2026-06-09'::date, false, false),
  ('galfer-shark-road-disc-rotor-centerlock', 'GALFER - SHARK ROAD DISC ROTOR - CENTERLOCK', 'galfer', 'components', 'disc-brake-rotors', '<p>Unique to this rotor are the inner fins that gives it its name: the Shark. Proven under the most demanding MTB conditions, this technology has now been adapted to deliver the ultimate in road braking performance.</p>
<p>The Shark fins, together with the rotor’s small internal round holes, allow the operating temperature of the disc to be reduced, while the rotor’s exterior Wave design and its lateral openings produce a powerful and consistent grip over the full contact area of the brake pad, even under extreme conditions. The CNC-machined 7075-T6 aluminum core delivers maximum stiffness with minimal weight, with 8mm hollow stainless steel rivets ensuring a strong and lightweight connection.</p>
<p>Galfer disc rotors are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br><br></p>
<p>KEY FEATURES - SHARK ROAD ROTOR</p>
<ul>
<li>Cools the entire braking system by allowing air to pass over every point of the brake pad surface.</li>
<li>Shark fins dramatically improve heat dissipation.</li>
<li>CNC-machined 7075-T6 aluminum core delivers maximum stiffness with minimal weight.</li>
<li>8mm hollow stainless steel rivets ensure a connection between rotor and core with maximum strength and light weight.</li>
<li>Best friction surface of any stainless steel brake rotor.</li>
<li>Quiet, vibration-free performance.</li>
<li>Seamlessly replaces stock brake rotors.</li>
<li>Extremely predictable and consistent modulation.</li>
<li>Exceptional durability</li>
<li>Lightweight</li>
<li>Provides outstanding performance even in the most aggressive conditions.</li>
<li>Anti-corrosion treatment to non-contact surfaces.</li>
<li>1.8mm thick, Centerlock mounting pattern.</li>
</ul>
<p><br>SPECIFICATIONS</p>
<p><strong>WEIGHTS:</strong> 140mm: 91g | 160mm: 102g<br><strong>MOUNTING:</strong> Centerlock mounting pattern<br><strong>ROTOR THICKNESS:</strong> 1.8mm<br><strong>MADE IN SPAIN</strong></p>
<p><strong><br><a></a></strong></p>', array['galfer-shark-road-disc-rotor-centerlock/1.jpg', 'galfer-shark-road-disc-rotor-centerlock/2.jpg', 'galfer-shark-road-disc-rotor-centerlock/3.jpg']::text[], 'new', 2, '2026-06-09'::date, false, false),
  ('shimano-rt-cl900-disc-rotor', 'Shimano RT-CL900 Disc Rotor', 'shimano', 'components', 'disc-brake-rotors', '<p>New and Improved!</p>

<p>The Shimano RT-CL900 disc brake rotor provides quiet and consistent braking control for any terrain.</p>
<ul>
<li>Consistent braking performance on any long steep descent thanks to excellent heat dissipation</li>
<li>Robust arm shape for quiet operation without sacrificing weight or heat dissipation</li>
<li>Heat dissipation paint boosts performance</li>
<li>1.5mm thickness</li>
</ul>', array['shimano-rt-cl900-disc-rotor/1.jpg']::text[], 'new', 2, '2023-01-26'::date, false, true),
  ('shimano-ultegra-cl800-centrelock-rotor', 'Shimano Ultegra CL800 Centrelock Rotor', 'shimano', 'components', 'disc-brake-rotors', '<h3>Shimano RT-CL800 Center Lock Brake Rotor</h3>
<p><strong>High-performance braking for road, gravel, and MTB applications.</strong></p>
<p>The <strong>RT-CL800</strong> is engineered for Ultegra BR-R8170 road bike disc brakes and GRX gravel brakes, while also offering broad compatibility with numerous MTB calipers. Its innovative design delivers reliable braking performance, superior heat management, and minimal noise.</p>
<h3><strong>Key Features</strong></h3>
<ul>
<li>
<p><strong>Ice-Tech FREEZA Sandwich Construction</strong> – Aluminum layer between two stainless steel layers for rapid heat dissipation.</p>
</li>
<li>
<p><strong>Enhanced Heat Control</strong> – Ice-Tech fins reduce rotor temperature by up to 50°C, improving braking force durability by 20% and extending pad life by 20%.</p>
</li>
<li>
<p><strong>Optimized Design</strong> – Low-noise and lightweight construction without compromising performance.</p>
</li>
<li>
<p><strong>Lockring Compatibility</strong> – Anodized aluminum lockring with internal teeth for 9/10 mm quick release and 12 mm thru-axle setups. For 15 mm or 20 mm thru-axles, use the SM-HB20 lockring.</p>
</li>
<li>
<p><strong>Finish</strong> – Painted spider with polished rotor for a professional appearance.</p>
</li>
<li>
<p><strong>Pad Compatibility</strong> – Designed for use with narrow pad-shaped brake pads.</p>
</li>
</ul>
<p><strong>Experience reliable, powerful braking on long descents and demanding terrain with Shimano’s RT-CL800 rotor.</strong></p>', array['shimano-ultegra-cl800-centrelock-rotor/1.png']::text[], 'new', 2, '2023-02-24'::date, false, true),
  ('sram-centreline-centrelock-rotors', 'SRAM Centreline Centrelock Rotors', 'sram', 'components', 'disc-brake-rotors', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM CENTERLINE CENTERLOCK ROTORS</strong></p>

 <p>The CenterLine design provides a smooth, consistent, and quiet running braking surface. Rounded edges make for easier wheel installs and are UCI-compliant.</p>

 <p><strong>Sizes available:</strong></p>

 <p>140mm, 160mm, 170mm, 180mm, 200mm</p>
 </td>
 <td> </td>
 <td>
 <p><strong>**Only BR4248, BR4249, and BR42490 Include An External Tooled Lockring**</strong></p>
 </td>
 </tr>
	</tbody>
</table>', array['sram-centreline-centrelock-rotors/1.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('sram-centreline-rotors-1', 'SRAM Centreline Rotors', 'sram', 'components', 'disc-brake-rotors', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM CENTRELINE ROTORS</strong></p>

 <p>The CenterLine design provides a smooth, consistent, and quiet running braking surface. Rounded edges make for easier wheel installs and are UCI-compliant.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Hub Interface</strong></th>
 <td>6 Bolt, Center Lock</td>
 </tr>
 <tr>
 <th><strong>Bolt Material</strong></th>
 <td>Steel</td>
 </tr>
 <tr>
 <th><strong>Diameter (Rotor)</strong></th>
 <td>140mm, 160mm, 180mm, 200mm</td>
 </tr>
 <tr>
 <th><strong>Rotor Type</strong></th>
 <td>Centreline</td>
 </tr>
 <tr>
 <th><strong>Colour</strong></th>
 <td>Grey</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Rounded edges are UCI-compliant and allow for easier wheel installs (140mm, 160mm, 180mm, 200mm)</li>
 <li>Compatible with both road and mountain bike brakes</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-centreline-rotors-1/1.jpg', 'sram-centreline-rotors-1/2.jpg', 'sram-centreline-rotors-1/3.jpg', 'sram-centreline-rotors-1/4.jpg', 'sram-centreline-rotors-1/5.jpg']::text[], 'new', 5, '2026-08-10'::date, false, false),
  ('sram-centreline-x-centrelock-rotors', 'SRAM CentreLine X Centrelock Rotors', 'sram', 'components', 'disc-brake-rotors', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM CENTRELINE X CENTRE LOCK ROTORS</strong></p>

 <p>CenterLine X rotors are the lighter weight version of SRAM''s quiet, smooth, and robust CenterLine rotors. The CenterLine X rotor features a two-piece design with an alloy center and steel brake track. Rounded edges make for easier wheel installs and are UCI-compliant.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Weight</strong></th>
 <td>140mm: 86g, 160mm: 102g, 180mm: 125g</td>
 </tr>
 <tr>
 <th><strong>Colours</strong></th>
 <td>Black (Center)</td>
 </tr>
 <tr>
 <th><strong>Material (Center)</strong></th>
 <td>Aluminium</td>
 </tr>
 <tr>
 <th><strong>Material (Brake Track)</strong></th>
 <td>Steel</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Lightweight, two-piece design</li>
 <li>Rounded edges are UCI-compliant and allow for easier wheel installs</li>
 <li>Compatible with both road and mountain bike brakes</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-centreline-x-centrelock-rotors/1.jpg', 'sram-centreline-x-centrelock-rotors/2.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('sram-centreline-x-rotors', 'SRAM Centreline X Rotors', 'sram', 'components', 'disc-brake-rotors', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM CENTERLINE X ROTORS</strong></p>

 <p>CenterLine X rotors are the lighter-weight version of SRAM’s quiet, smooth and robust CenterLine rotors, featuring a two-piece design with an alloy center and steel brake track.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Weight</strong></th>
 <td>140mm: 86g, 160mm: 102g, 180mm: 125g</td>
 </tr>
 <tr>
 <th><strong>Colours (Center)</strong></th>
 <td>Black</td>
 </tr>
 <tr>
 <th><strong>Material (Center)</strong></th>
 <td>Aluminium</td>
 </tr>
 <tr>
 <th><strong>Material (Brake Track)</strong></th>
 <td>Steel</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 
 </td>
 </tr>
	</tbody>
</table>', array['sram-centreline-x-rotors/1.jpg', 'sram-centreline-x-rotors/2.jpg']::text[], 'new', 3, '2026-06-10'::date, false, false),
  ('sram-hs2-6-bolt-rotors', 'SRAM HS2 6 Bolt Rotors', 'sram', 'components', 'disc-brake-rotors', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM HS2 6 BOLT ROTORS</strong></p>

 <p>The all new HS2 Rotor is a mountain bike specific rotor designed to improve brake performance while reducing noise and increasing heat dissipation. Featuring a new brake track pattern for increased pad traction and recessed spokes with thermal dissipating paint, the HS2 is a more powerful, quieter rotor with best-in-class heat management.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Thicker 2.00mm rotor</li>
 <li>Superior heat management (40°C less than Centerline, per Garda test)</li>
 <li>7% more power</li>
 <li>Available in 6 bolt and Centerlock </li>
 <li>MTB specific</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-hs2-6-bolt-rotors/1.jpg', 'sram-hs2-6-bolt-rotors/2.jpg', 'sram-hs2-6-bolt-rotors/3.jpg', 'sram-hs2-6-bolt-rotors/4.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('sram-hs2-centrelock-rotors', 'SRAM HS2 Centrelock Rotors', 'sram', 'components', 'disc-brake-rotors', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM HS2 CENTERLOCK ROTORS</strong></p>

 <p>The all new HS2 Rotor is a mountain bike specific rotor designed to improve brake performance while reducing noise and increasing heat dissipation. Featuring a new brake track pattern for increased pad traction and recessed spokes with thermal dissipating paint, the HS2 is a more powerful, quieter rotor with best-in-class heat management.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Thicker 2.00mm rotor</li>
 <li>Superior heat management (40°C less than Centerline, per Garda test)</li>
 <li>7% more power</li>
 <li>Lockring Included with CentreLock</li>
 <li>MTB specific</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['sram-hs2-centrelock-rotors/1.jpg', 'sram-hs2-centrelock-rotors/2.jpg', 'sram-hs2-centrelock-rotors/3.jpg', 'sram-hs2-centrelock-rotors/4.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('sram-paceline-road-6-bolt-rotors', 'SRAM Paceline Road 6 Bolt Rotors', 'sram', 'components', 'disc-brake-rotors', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM PACELINE ROAD 6 BOLT ROTORS</strong></p>

 <p>Paceline disc brake rotors incorporate the elegant design of our eTap AXS road groupsets and feature a new brake track vent design for smooth, quiet braking performance.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Hub Interface</strong></th>
 <td>6 Bolt, Center Lock</td>
 </tr>
 <tr>
 <th><strong>Material (Bolt)</strong></th>
 <td>Steel</td>
 </tr>
 <tr>
 <th><strong>Diameter (Rotor)</strong></th>
 <td>140mm, 160mm</td>
 </tr>
 <tr>
 <th><strong>Rotor Type</strong></th>
 <td>Paceline</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Designed for road use</li>
 <li>Paceline brake track offers quiet brake operation</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-paceline-road-6-bolt-rotors/1.png', 'sram-paceline-road-6-bolt-rotors/2.png', 'sram-paceline-road-6-bolt-rotors/3.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('sram-paceline-x-centerlock-rotors', 'SRAM Paceline X CenterLock Rotors', 'sram', 'components', 'disc-brake-rotors', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>SRAM PACELINE X CENTERLOCK ROTORS</strong></p>

 <p>Paceline disc brake rotors incorporate the elegant design of our eTap AXS road groupsets and feature a new brake track vent design for smooth, quiet braking performance.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Hub Interface</strong></th>
 <td>Center Lock</td>
 </tr>
 <tr>
 <th><strong>Bolt Material (RT)</strong></th>
 <td>n/a</td>
 </tr>
 <tr>
 <th><strong>Diameter (Rotor)</strong></th>
 <td>140mm, 160mm</td>
 </tr>
 <tr>
 <th><strong>Rotor Type</strong></th>
 <td>Paceline 2-Piece</td>
 </tr>
 <tr>
 <th><strong>Colour (RT)</strong></th>
 <td>Black</td>
 </tr>
 <tr>
 <th><strong>Rec Lockring</strong></th>
 <td>SRAM Lockring Included</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Designed for road use</li>
 <li>Paceline brake track offers quiet brake operation</li>
 <li>Our lightest aluminum carrier keeps weight low</li>
 <li>Centerlock only</li>
 <li>Available in 160 and 140 mm</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['sram-paceline-x-centerlock-rotors/1.jpg', 'sram-paceline-x-centerlock-rotors/2.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),

  -- ---- components · groupsets ----
  ('shimano-dura-ace-12-speed-r9250-r9270-priority-package', 'Shimano DURA-ACE 12 Speed R9270 Groupset', 'shimano', 'components', 'groupsets', '<p>The most critical requirement and objective for DURA-ACE racing equipment is reliability that ensures product performance under extreme circumstances. As a result of years of continuous research and development, Shimano has succeeded in developing reliable wireless gear shifting that is even faster thanconventional wired gear shifting. With the wireless cockpit, junctions can be eliminated to significantly improve flexibility around the handlebars. That''s why Shimano decided to go wireless with this generation. Shimano brings the new Dura Ace 9200 D12 12-speed in a conveninet Priority Pack, eveerything you need to upgrade to the newest 12-speed group. Sold As a COMPLETE set. Please note: Bottom bracket and battery holder are not included in the Priority Packs.<br><br><b>Included in box:</b></p>
<ul>
<li>RD-R9250 Rear Derailleur, 12-Speed</li>
<li>FD-R9250 Front Derailleur, 12-Speed, Braze-on</li>
<li>ST-R9270 Hydro Di2 Levers L+R with calipers and Resin Pads</li>
<li>BT-DN300 Battery Di2</li>
<li>EW-SD300 Electric Wires (900MM) + (1200MM) EA</li>
<li>EW-EC300 Charging Cable, 1700MM</li>
</ul>
<p><br><br><b>Included with pack:</b></p>
<ul>
<li>FC-R9200 12s Crankset- 172.5mm 36x52</li>
<li>CS-R9200 Cassette, 11-12-13-14-15-16-17-19-21-24-27-30T, w/ Lock-ring</li>
<li>CN-M9100 Chain, 12 Speed w/Quick-Link</li>
<li>RT-MT900 Disc Rotor, 160mm + 140mm EA</li>
<li>
</li>
<li>
</li>
<li>Choice of C36 or c50 Tubeless Wheelset <br>

</li>
</ul>', array['shimano-dura-ace-12-speed-r9250-r9270-priority-package/1.jpg', 'shimano-dura-ace-12-speed-r9250-r9270-priority-package/2.jpg', 'shimano-dura-ace-12-speed-r9250-r9270-priority-package/3.jpg', 'shimano-dura-ace-12-speed-r9250-r9270-priority-package/4.jpg', 'shimano-dura-ace-12-speed-r9250-r9270-priority-package/5.jpg']::text[], 'new', 0, '2021-11-23'::date, false, false),

  -- ---- components · handlebars ----
  ('3t-superergo-pro', '3T Superergo Pro', '3t', 'components', 'handlebars', '<p>3T started life as a master dropbar manufacturer. Nobody else had the same technical ability to manipulate tubing, and thus 3T became the first company to focus on more ergonomic (i.e. more complex) shapes. That focus continues to this day, now with the complete shape freedom of carbon. The previous generation, the Ergonova, was lauded worldwide as the top ergonomic bar, in fact it was so good we didn’t touch the center section at all when designing the new SuperErgo. We did change everything else though, ensuring the SuperErgo will continue 3T’s streak as the ergo bar of choice for road cyclists.</p> <p><strong>DROP GRIP:</strong> The gradual change in curvature makes the grips comfortable for hands of all sizes. The tighter top bend ensures the newest Shimano, SRAM and Campagnolo shift/brake levers align perfectly for a very comfortable hand position on the hoods.</p> <p><strong>CENTER GRIP:</strong> When we surveyed our customers about their desires for this new ergonomic bar, amateur and professionals alike pleaded with us not to change this area at all. It’s that comfortable. So we left it alone.</p> <p><strong>DIMENSIONS &amp; WEIGHTS</strong></p> <table> <tbody> <tr> <td><strong>W1 Hood-to-hood (mm)</strong></td> <td><strong>380</strong></td> <td><strong>400</strong></td> <td><strong>420</strong></td> <td><strong>440</strong></td> </tr> <tr> <td><strong>W2 Drop-to-drop (mm)</strong></td> <td>400</td> <td>420</td> <td>440</td> <td>460</td> </tr> <tr> <td><strong>R1 Reach (mm)</strong></td> <td>77</td> <td>77</td> <td>77</td> <td>77</td> </tr> <tr> <td><strong>R2 Reach (mm)</strong></td> <td>89</td> <td>89</td> <td>89</td> <td>89</td> </tr> <tr> <td><strong>D1 Drop (mm)</strong></td> <td>131,5</td> <td>131,5</td> <td>131,5</td> <td>131,5</td> </tr> <tr> <td><strong>F1 Drop flare (degrees)</strong></td> <td>6.0</td> <td>6.0</td> <td>6.0</td> <td>6.0</td> </tr> <tr> <td><strong>Weight PRO (+/-4%) (g)</strong></td> <td>267</td> <td>273</td> <td>279</td> <td>285</td> </tr> </tbody> </table> <p><strong>SPECIFICATIONS</strong></p> <table> <tbody> <tr> <td><strong>Material</strong></td> <td>Alloy 7050</td> </tr> <tr> <td><strong>Cable routing</strong></td> <td>External cable grooves</td> </tr> <tr> <td><strong>Clamp diameter</strong></td> <td>31.8mm</td> </tr> <tr> <td><strong>Stem torque</strong></td> <td>6Nm maximum</td> </tr> <tr> <td><strong>Shift/brake lever torque</strong></td> <td>8Nm maximum</td> </tr> <tr> <td><strong>Clip-ons</strong></td> <td>Compatible</td> </tr> <tr> <td><strong>Compatibility</strong></td> <td>Di2 compatible</td> </tr> <tr> <td><strong>Finish</strong></td> <td>Black with white accents</td> </tr> </tbody> </table>', array['3t-superergo-pro/1.jpg', '3t-superergo-pro/2.jpg', '3t-superergo-pro/3.jpg', '3t-superergo-pro/4.jpg']::text[], 'new', 0, '2023-07-19'::date, false, false),
  ('3t-superergo-team-stealth', '3T Superergo Team Stealth', '3t', 'components', 'handlebars', '<p>3T started life as a master dropbar manufacturer. Nobody else had the same technical ability to manipulate tubing, and thus 3T became the first company to focus on more ergonomic (i.e. more complex) shapes. That focus continues to this day, now with the complete shape freedom of carbon. The previous generation, the Ergonova, was lauded worldwide as the top ergonomic bar, in fact it was so good we didn’t touch the center section at all when designing the new SuperErgo. We did change everything else though, ensuring the SuperErgo will continue 3T’s streak as the ergo bar of choice for road cyclists.</p> <p><strong>DROP GRIP:</strong> The gradual change in curvature makes the grips comfortable for hands of all sizes. The tighter top bend ensures the newest Shimano, SRAM and Campagnolo shift/brake levers align perfectly for a very comfortable hand position on the hoods.</p> <p><strong>CORNER GRIP (LTD only):</strong> More and more people ride extended periods of time with their hands in the corners, yet in ergonomic design this area never received any attention. Our new corner design improves comfort and creates a more secure grip.</p> <p><strong>CENTER GRIP:</strong> When we surveyed our customers about their desires for this new ergonomic bar, amateur and professionals alike pleaded with us not to change this area at all. It’s that comfortable. So we left it alone.</p> <p><strong>DIMENSIONS &amp; WEIGHTS</strong></p> <table> <tbody> <tr> <td><strong>W1 Hood-to-hood (mm)</strong></td> <td><strong>380</strong></td> <td><strong>400</strong></td> <td><strong>420</strong></td> <td><strong>440</strong></td> </tr> <tr> <td><strong>W2 Drop-to-drop (mm)</strong></td> <td>400</td> <td>420</td> <td>440</td> <td>460</td> </tr> <tr> <td><strong>R1 Reach (mm)</strong></td> <td>77</td> <td>77</td> <td>77</td> <td>77</td> </tr> <tr> <td><strong>R2 Reach (mm)</strong></td> <td>89</td> <td>89</td> <td>89</td> <td>89</td> </tr> <tr> <td><strong>D1 Drop (mm)</strong></td> <td>119</td> <td>119</td> <td>119</td> <td>119</td> </tr> <tr> <td><strong>F1 Drop flare (degrees)</strong></td> <td>6.0</td> <td>6.0</td> <td>6.0</td> <td>6.0</td> </tr> <tr> <td><strong>Weight LTD (+/-4%) (g)</strong></td> <td>195</td> <td>197</td> <td>199</td> <td>204</td> </tr> </tbody> </table> <p><strong>SPECIFICATIONS</strong></p> <table> <tbody> <tr> <td><strong>Material</strong></td> <td>Unidirectional carbon - ultralight layup</td> </tr> <tr> <td><strong>Cable routing</strong></td> <td>Internal cable channels</td> </tr> <tr> <td><strong>Clamp diameter</strong></td> <td>31.8mm</td> </tr> <tr> <td><strong>Stem torque</strong></td> <td>6Nm maximum</td> </tr> <tr> <td><strong>Shift/brake lever torque</strong></td> <td>8Nm maximum</td> </tr> <tr> <td><strong>Clip-ons</strong></td> <td>Not compatible</td> </tr> <tr> <td><strong>Di2 compatibility</strong></td> <td>Fully compatible, including with Di2 bar plug Junction A</td> </tr> <tr> <td><strong>Finish</strong></td> <td>Stealth Black</td> </tr> </tbody> </table>', array['3t-superergo-team-stealth/1.jpg', '3t-superergo-team-stealth/2.jpg', '3t-superergo-team-stealth/3.jpg', '3t-superergo-team-stealth/4.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),
  ('3t-superleggera-team-stealth', '3T Superleggera Team Stealth', '3t', 'components', 'handlebars', '<p>That’s right, most riders find 3T’s classic round bend uncomfortable, yet it is the longest running bend in history and those who love it REALLY love it (including a lot of pros). Compare it to mattresses; some prefer soft, others hard. The SuperLeggera is definitely in the hard category - “soft mattress cyclists” will opt for the SuperErgo. The SuperLeggera round drop shape is very “present” in your hands, giving you great awareness at all times. The minimalist center grip section is completely optimized for stiffness and low weight, making this our lightest drop bar ever.</p> <p><strong>Drop grip:</strong> The round grip “bites” in the palm of your hands, creating a solid connection. This creates a sense of power &amp; control that is hard to explain but undeniable when you try it yourself. For more comfort, go with the SuperErgo.</p> <p><strong>Structurally optimized:</strong> (TEAM &amp; LTD only) The center section has a constant taper from drop to stem for the best possible transfer of forces. This makes the SuperLeggera extremely light and stiff. Not clip-on compatible!</p> <p><strong>Center grip:</strong> (TEAM &amp; LTD only) The oval center grip is designed for structural optimization, so we were very surprised when test riders commented on its supreme comfort. An unexpected win-win: Light, stiff and comfortable - pick 3.</p> <p><strong>Specifications</strong></p> <table> <tbody> <tr> <td><strong>Material</strong></td> <td>Unidirectional carbon - ultralight layup</td> </tr> <tr> <td><strong>Cable routing</strong></td> <td>Internal cable channels</td> </tr> <tr> <td><strong>Clamp diameter</strong></td> <td>31.8mm</td> </tr> <tr> <td><strong>Stem torque</strong></td> <td>5Nm maximum</td> </tr> <tr> <td><strong>Shift/brake lever torque</strong></td> <td>8Nm maximum</td> </tr> <tr> <td><strong>Clip-ons</strong></td> <td>Not compatible</td> </tr> <tr> <td><strong>Di2 compatibility</strong></td> <td>Fully compatible, including with Di2 bar plug Junction A</td> </tr> <tr> <td><strong>Finish</strong></td> <td>Stealth Black</td> </tr> </tbody> </table>', array['3t-superleggera-team-stealth/1.jpg', '3t-superleggera-team-stealth/2.jpg', '3t-superleggera-team-stealth/3.jpg', '3t-superleggera-team-stealth/4.jpg']::text[], 'new', 2, '2023-07-19'::date, false, false),
  ('fsa-a-wing-pro-agx-handlebar', 'FSA - A-WING PRO AGX INTERNAL ROUTING HANDLEBAR', 'fsa', 'components', 'handlebars', '<p>For riders seeking the roads and trails less travelled, FSA’s AGX components offer the best performance for Adventure, Gravel and Cyclocross. Featuring products solidly built using advanced carbon composite and metal alloy technology, coupled with the state-of-the-art manufacturing processes, the AGX group of components and wheels showcases the range of FSA’s advancements in product development.</p>
<p>The A-Wing Pro alloy handlebar is designed for Adventure, Gravel and Cyclocross usage. A-Wing Pro features a unique shape, with flared drops for better control and clearance when descending. This is the result of our history and state-of-the-art alloy manufacture and design.</p>
<ul>
<li>Aerodynamic integrated Cable Routing (ACR)</li>
<li>Alloy handlebar is designed for Adventure, Gravel and Cyclocross</li>
<li>Sculpted contact points for the “hoods” and “drops” riding positions for better ergonomics</li>
<li>Flared drops for better control and clearance when descending</li>
<li>121mm drop, 88mm reach</li>
<li>15° outward bend</li>
<li>2.5mm rise</li>
<li>Bead blasted anodized black</li>
<li>296 grams (420mm)</li>
</ul>', array['fsa-a-wing-pro-agx-handlebar/1.jpg', 'fsa-a-wing-pro-agx-handlebar/2.jpg']::text[], 'new', 0, '2021-09-11'::date, false, false),
  ('fsa-adventure-compact-handlebar', 'FSA - ADVENTURE COMPACT HANDLEBAR', 'fsa', 'components', 'handlebars', '<ul>
<li>Double butted, tapered and shot-peened AL6061</li>
<li>31.8mm bar clamp diameter with 34 x 21 ergonomic oval section</li>
<li>125mm drop, 80mm reach</li>
<li>12° side flare</li>
</ul>', array['fsa-adventure-compact-handlebar/1.jpg', 'fsa-adventure-compact-handlebar/2.jpg', 'fsa-adventure-compact-handlebar/3.jpg']::text[], 'new', 0, '2021-09-11'::date, false, false),
  ('fsa-energy-scr-compact-handlebar', 'FSA - ENERGY SCR INTERNAL ROUTING HANDLEBAR', 'fsa', 'components', 'handlebars', '<p>FSA’s Energy compact handlebars push aluminium technology as far as it can go. Cutting-edge manufacturing allows us to form and manipulate high-strength 7050 aluminium tubing, varying the wall thicknesses and diameter throughout the bar. There’s an ergonomic flattened section on the tops, either side of the generous central bulge that gives plenty of room to mount accessories. </p>
<ul>
<li>Aerodynamic Integrated Cable Routing (ACR) compatible</li>
<li>Semi-integrated Cable Routing (SCR) compatible</li>
<li>Double butted and tapered AL7050</li>
<li>34mm Ergo flat top</li>
<li>110mm wide round center section makes it easy to mount accessories</li>
<li>Finish:Bead blasted black with polished black anodized</li>
<li>Bar width: center/center from the handlebar tails</li>
<li>Outward Bend: 4°</li>
</ul>', array['fsa-energy-scr-compact-handlebar/1.jpg']::text[], 'new', 4, '2021-09-11'::date, false, false),
  ('fsa-energy-traditional-handlebar', 'FSA - ENERGY TRADITIONAL HANDLEBAR', 'fsa', 'components', 'handlebars', '<p>A true all-rounder, the Energy Traditional bar is right for every ride. Built light from double-butted, tapered aluminum, the anodised centre is fully 120mm across.</p>
<p>Its circular profile makes mounting those all-important accessories a snip, while beneath your hands the profile is ergonomically flattened. A shallow drop and 2 degree outward bend further boost comfort.</p>
<ul>
<li>Quad-butted, tapered and shot-peened AL7050/T6</li>
<li>Wide central area for easy accessory mounting</li>
<li>Flat-topped for comfort</li>
<li>Sandblasted non-slip for taped areas</li>
<li>Bar width: center/center from the handlebar tails</li>
<li>Outward Bend: 2°</li>
</ul>', array['fsa-energy-traditional-handlebar/1.jpg']::text[], 'new', 0, '2021-09-11'::date, false, false),
  ('fsa-omega-compact-handlebar', 'FSA - OMEGA COMPACT HANDLEBAR', 'fsa', 'components', 'handlebars', '<p>The Omega line represents great value, but it’s not at the expense of quality. The Omega Compact bar uses the same advanced manufacturing techniques as our more expensive bars, with the 6061 aluminium tubing being double-butted, tapered and shot peened. You’ll also see features of our high-end bars, like the double-width cable route that improves bar stiffness, and the wide centre section that gives lots of room for bar-mounted accessories.</p>
<ul>
<li>Double butted, tapered and shot-peened AL6061</li>
<li>Compact drop design for improved reach and comfort</li>
<li>Double width cable groove improves cable routing and stiffness</li>
<li>120mm wide round center section makes it easy to mount accessories</li>
<li>Finish: polished center section</li>
<li>Laser graphics</li>
<li>Bar width: center/center from the handlebar tails</li>
</ul>', array['fsa-omega-compact-handlebar/1.jpg', 'fsa-omega-compact-handlebar/2.jpg']::text[], 'new', 1, '2021-09-11'::date, false, false),
  ('fsa-sl-k-scr-compact-handlebar', 'FSA - SL-K SCR INTERNAL ROUTING HANDLEBAR', 'fsa', 'components', 'handlebars', '<p>With Kevlar-reinforced unidirectional carbon construction, the SL-K Compact handlebar is ready to race. It features the latest evolution of our compact bar shape, with a shallow 125mm drop and gentle flare. A wide center section gives ample room to mount accessories like GPS units or lights. The areas where the stem and levers clamp have additional reinforcement and a textured finish to avoid slip.</p>
<ul>
<li>Aerodynamic Integrated Cable Routing (ACR) compatible</li>
<li>Semi-integrated Cable Routing (SCR) compatible</li>
<li>Continuous UD carbon Monocoque construction</li>
<li>Reinforced and textured clamping areas</li>
<li>120mm wide round center section makes it easy to mount accessories</li>
<li>New internal cable routing options for Di2</li>
<li>Finish: UD Carbon finish</li>
<li>205 grams (380mm); 210 grams (400mm); 215 grams (420mm); 220 grams (440mm)</li>
</ul>', array['fsa-sl-k-scr-compact-handlebar/1.jpg']::text[], 'new', 4, '2021-09-11'::date, false, false),
  ('look-aerobar-aergo-track', 'Look Aerobar Aergo Track', 'look', 'components', 'handlebars', '<p>A complete cockpit for ''piste'' (track), allowing you to reach the perfect position to slice through the wind.</p> <table> <tbody> <tr> <th>Structure</th> <td>3K Carbon Glossy Finish</td> </tr> <tr> <th>Drop</th> <td>31.8 bar +/-7 mm reversible</td> </tr> <tr> <th>Adjustments</th> <td>Armrest stack<br>Armrest reach<br>Armrest width<br>Armrest tilt angle<br>Handles angle</td> </tr> <tr> <th>Weight</th> <td>Full set from 730 g</td> </tr> <tr> <th>Warranty</th> <td>1 year</td> </tr> </tbody> </table>', array['look-aerobar-aergo-track/1.jpg']::text[], 'new', 1, '2023-05-08'::date, false, false),
  ('roval-alpinist-cockpit-ii', 'Roval Alpinist Cockpit II', 'specialized', 'components', 'handlebars', '<p>Weighing just 270g, the Alpinist Cockpit II is our most comfortable ever—light; responsive, and shaped from Retül and Body Geometry data to help reduce hand fatigue. A redesigned D-shape cuts hand pressure and boosts surface area on the tops by 12% compared to the previous generation, while providing 28.3% more damping than the Rapide cockpit for unmatched comfort on long rides. Sleekly integrated on Specialized bikes yet universally compatible, it delivers pro-level performance and control.</p>', array['roval-alpinist-cockpit-ii/1.jpg', 'roval-alpinist-cockpit-ii/2.jpg', 'roval-alpinist-cockpit-ii/3.jpg', 'roval-alpinist-cockpit-ii/4.jpg', 'roval-alpinist-cockpit-ii/5.jpg']::text[], 'new', 10, '2025-10-22'::date, false, false),
  ('roval-alpinist-handlebar', 'Roval Alpinist Handlebar', 'specialized', 'components', 'handlebars', '<p>No bar offers the Alpinist’s blend of refined ergonomics, sublime ride quality, and ultra-light weight. Designed by the minds behind the world’s fastest bikes and shaped by Body Geometry fit data, every curve is tuned for comfort and performance. It’s 15% lighter than our S-Works Short &amp; Shallow bar—built for big climbs, city-limit sprints, and riders who demand timeless style with cutting-edge performance.</p>', array['roval-alpinist-handlebar/1.jpg', 'roval-alpinist-handlebar/2.jpg', 'roval-alpinist-handlebar/3.jpg', 'roval-alpinist-handlebar/4.jpg', 'roval-alpinist-handlebar/5.png']::text[], 'new', 5, '2025-07-31'::date, false, false),
  ('roval-control-cockpit', 'Roval Control Cockpit', 'specialized', 'components', 'handlebars', '<p>For the racer who craves full integration for full-gas efforts, the Roval Control SL Cockpit answers the call. An engineering masterpiece designed to master the full throttle XC world. Built with high-modulus carbon fiber, and race-proven geometry, there is no greater combination of light weight, stiffness, and control on the World Cup today. Roval dialed the width, rise, extension, and sweep of the Control SL Cockpit working with the S-Racing Factory XC team to ensure every rider can find their perfect position to lay down power efficiently and dissect the most technical descents. Whether you’re racing for a World Championship or just ripping your local trails, with four stem lengths to choose from this is an integrated cockpit that makes it easy to find your fit.</p>', array['roval-control-cockpit/1.jpg', 'roval-control-cockpit/2.jpg', 'roval-control-cockpit/3.png']::text[], 'new', 3, '2025-04-14'::date, false, false),
  ('roval-rapide-cockpit-1', 'Roval Rapide Cockpit', 'roval', 'components', 'handlebars', '<p>The all-new Rapide Cockpit is a lot more than just the fastest way to the finish line. It’s the fastest leading edge we’ve ever made, putting aero gains in the clean air, where they matter most and shaving four watts off the already ultra-quick two piece Rapide Bar and Tarmac SL7 Stem. But to deliver a leading edge that provides a winning edge takes more than pure aero. The goal for the Roval engineering team was simple—the Rapide Cockpit had to be the fastest bar we’ve ever made, with no compromises. It’s aero, light, stiff, and designed hand-in-hand with the best riders in the world and our Retül fit experts so you can get a grip on victory. AERODYNAMIC: Removing the cluster of hardware (where stem and handlebar connect) allowed us to design the bar’s leading edge a single airfoil. We optimized this airfoil to provide a maximum advantage in clean air at speeds seen from long solo breakaways to full gas World Tour sprints. While a four watt improvement may seem small, it adds up to a 32cm lead over a 250m final sprint. When races are won by bike throws, this is a winning difference. LIGHT AND STIFF: By removing the stem’s hardware cluster the Rapide Cockpit is 50 grams lighter (100mm x 420mm) than a two piece Rapide bar and Tarmac SL7 combo. Made from premium high-modulus carbon fiber, that delivers ideal stiffness for the biggest, fastest sprinters on the World Tour, the Rapide Cockpit has a higher stiffness-to-weight ratio than any two piece system we’ve ever made. FIT: The downside of one-piece cockpits has long been fit, but we partnered with our Retül fit professionals and the best riders in the world to ensure almost every rider can find their fit. We offer 15 different stem and bar combos, all at -6 degree, so we’ve got your race day position covered. The radius from tops to drops has been sculpted for wrist clearance whether out of the saddle in a final sprint or tucked in an aero position, while bend and flare reflect our favorite Rapide bar. **If you are building your bike with the Rapide Cockpit, you must have at least 40mm of steerer tube above the last headset spacer for the cockpit to fit and function properly.**</p>', array['roval-rapide-cockpit-1/1.jpg', 'roval-rapide-cockpit-1/2.jpg', 'roval-rapide-cockpit-1/3.jpg', 'roval-rapide-cockpit-1/4.jpg', 'roval-rapide-cockpit-1/5.jpg']::text[], 'new', 9, '2024-05-22'::date, false, false),
  ('roval-rapide-handlebars', 'Roval Rapide Handlebars', 'specialized', 'components', 'handlebars', '<p>Wind is the ultimate cruelty, and nowhere is it more keenly met than at the leading edge of your bike. Want to save an easy 20 seconds over 40 kilometers? Get a set of Rapide handlebars. Leveraging our countless hours of Win Tunnel testing, we designed the Rapide bar to cut through the wind with knife edge efficiency, and at the same time provide the utmost comfort while hammering at the front. A textured surface on the tops ensures secure and comfortable grip even when wet, there’s a recessed step that sets the bar wrap flush with the tops, the airfoil is offset forward to offer greater forearm and knee clearance, and at 225 grams the Rapide is the lightest aero bar in its class. Aerodynamic performance without compromise. This is the leading edge.</p>', array['roval-rapide-handlebars/1.png']::text[], 'new', 0, '2025-04-14'::date, false, false),
  ('vision-metron-tfa-snakebite-aerobar', 'VISION - METRON TFA AEROBAR', 'vision', 'components', 'handlebars', '<p>The new Metron TFA Aerobar system features a flip-flop carbon wing basebar, ergonomic extensions and a snakebite stem which integrates the system together. This allows for an internal Di2 junction box with internal cable routing along with one of the highest adjustable AM option currently available. Fit increments in various dimensions are the foundation of the Metron Aerobar design and are easily adjustable with no occluded bolts.  UCI 3:1 compliant and full internal wiring compatible.  The stiffest, most adjustable and most durable fully integrated Aerobar currently available.<strong><br></strong></p>
<ul>
<li>Stack: 70mm to 145mm (Bottom of stem at center to top of uncompressed pad - 5mm Increments)</li>
<li>Reach: 9mm to 99mm (Center of Basebar to rear edge of armrest - 7.5mm Increments)</li>
<li>Armrest Width: 210mm to 360mm (outside-to-outside – 15mm Increments)</li>
<li>Extension Length Adjustment: 245mm to 385mm (center of basebar to tip)</li>
<li>Extension Length: 412mm</li>
<li>Extension Height: 60mm</li>
<li>Extension Angle: 35° (12° at extension tip)</li>
<li>Extension Width: 80mm (C-C)</li>
<li>Armrest Rotation: 0-13°</li>
<li>Basebar Width: 40cm (C-C)</li>
<li>Basebar Drop/Rise: +/-25mm</li>
<li>Bracket Tilt Adjustment: 0-16°</li>
<li>Stem Length: 90mm</li>
<li>Weight: 1155g</li>
</ul>', array['vision-metron-tfa-snakebite-aerobar/1.jpg', 'vision-metron-tfa-snakebite-aerobar/2.jpg', 'vision-metron-tfa-snakebite-aerobar/3.jpg']::text[], 'new', 1, '2021-09-10'::date, false, false),

  -- ---- components · other-components ----
  ('magene-p715s-power-pedal-shimano', 'Magene P715S Power Pedal Shimano', 'magene', 'components', 'other-components', '<p>Dual-Sided Power Meter Pedals:</p>
<p>With Embedded Power meter spindles, the power meter module is closer to where you output the watts, reducing loss &amp; errors during transmission. P715 pedal-based power meter measures dual-side power simultaneously, providing you with direct &amp; authentic data on each leg.</p>
<p> Embedded Gyroscope:</p>
<p>Depending on your pedalling habits, your pedalling speed will be very different at every angle &amp; second. The gyroscope can measure the real-time angular velocity &amp; accurately calculate the instantaneous power at each angle, greatly improving the power accuracy during unstable riding.</p>
<p> Temperature Compensation:</p>
<p>Changes in altitude &amp; temperature can affect strain gauge, which will in turn affect power accuracy. To eliminate this effect, temperature compensation is introduced. The power algorithm adjusts according to altitude &amp; temperature, providing consistent &amp; accurate data.</p>
<p>Advanced Training functions:</p>
<p>The secret to elevate cycling ability in not only power. Besides regular power &amp; cadence data, P715 provides more advanced cycling data to help you understand your pedal status &amp; riding ability.</p>
<ul>
<li>Power Phase: Learn your power generation zone, force angle, peak region of work, so as to optimise your watts zone &amp; distribute power optimally.</li>
<li>Riding Position: Learn power output at different postures. Therefore you can adopt different postures &amp; improve pedalling efficiency during different situations.</li>
<li>Left &amp; Right Balance: Know the difference between your left leg &amp; right leg output, so as to enhance training of the weaker leg.</li>
<li>Torque effectiveness: Learn your pedalling pattern &amp; how much power is effective in pushing you forward, helping you improve pedalling effectiveness.</li>
<li>Pedalling smoothness: Analyse how even your watts output is throughout pedalling cycles.</li>
</ul>
<p> Lightweight:</p>
<p>MAGENE P715S Power Meter Pedals are made from composite carbon fibre and the spindle utilises precipitation hardening stainless steel. Reducing the pedal weight to the extreme whilst maintaining stiffness.</p>

<ul>
<li>±1% Precise Power accuracy</li>
<li>120h battery life</li>
<li>7 Advanced training functions</li>
<li>Optimised for SPD-SL cleat (not included)</li>
<li>159g (each pedal)</li>
<li>Bluetooth &amp; Ant+</li>
<li>IPX7 Waterproof rating</li>
<li>Automatic calibration</li>
<li>Magnetic charging (charge lead included)</li>
<li>Cadence range: 20~240rpm</li>
<li>Power range: 0~2500w</li>
<li>Working temperature: -20~50°C</li>
<li>Q-Factor: 55mm</li>
<li>Stack height: 13mm</li>
</ul>
<p>What''s in the box?</p>
<ul>
<li>Power meter pedal x2</li>
<li>Crank washer x2</li>
<li>Charging cable x1</li>
<li>Quick start guide x1</li>
</ul>', array['magene-p715s-power-pedal-shimano/1.jpg', 'magene-p715s-power-pedal-shimano/2.jpg', 'magene-p715s-power-pedal-shimano/3.jpg', 'magene-p715s-power-pedal-shimano/4.jpg']::text[], 'new', 1, '2025-06-10'::date, false, false),
  ('redshift-shockstop-suspension-seatpost-27-2', 'Redshift Shockstop Suspension Seatpost 27.2', 'redshift', 'components', 'other-components', '<p>The patent-pending ShockStop Suspension Seatpost provides 35mm of tunable, ultra-responsive suspension travel for the ultimate bump-eating comfort. Ride further, faster, and more comfortably on the bike you already own, while the ShockStop Seatpost lets you float over rough terrain.</p> DESCRIPTION <p>The minimal design of the ShockStop Seatpost blends seamlessly with the aesthetic of modern gravel, road, and e-bikes. Along with the <a href="https://redshiftsports.myshopify.com/products/shockstop-system" rel="noopener nofollow" target="_blank">ShockStop Stem</a>, this system works together to reduce fatigue and strain, letting you ride further, faster, and more comfortably.</p> <h4>Benefits:</h4> <p>• Go further - reducing fatigue from bumps and vibrations<br>• Ride faster - energy that is normally wasted suspending your body is converted into forward motion<br>• Take control - customize your suspension feel to float over obstacles and maintain control</p> <h4>Details:</h4> • 35mm of active suspension travel • Infinitely adjustable stiffness via pre-load adjustment and swappable springs • Adjusting stiffness / pre-load does not reduce travel • Swappable springs included to accommodate varied rider weight and preference • Optimized linkage geometry provides ultra-responsive suspension feel • Check technical specifications for compatibility 
<br> <h4>What''s in the Box:</h4> • 1 x ShockStop Seatpost<br>• 2 x springs (1 pre-installed, 1 included in box for increased stiffness)<br>• All required hardware   
—TECHNICAL SPECIFICATIONS <table> <tbody> <tr> <td>Diameter</td> <td>27.2 mm (shims available for larger seat tube sizes)</td> </tr> <tr> <td>Length</td> <td>350 mm (14 in)</td> </tr> <tr> <td>Suspension Travel</td> <td>35 mm (1.4 in)</td> </tr> <tr> <td>Rearward Offset</td> <td>7 mm (0.27 in)</td> </tr> <tr> <td>Rearward Offset (@ 25% travel)</td> <td>12 mm (0.47 in)</td> </tr> <tr> <td>Spring Pre-load</td> <td>User Adjustable</td> </tr> <tr> <td>Weight</td> <td>547 g - w/main spring</td> </tr> <tr> <td>Rider Weight Limit</td> <td>110 kg (242 lb)</td> </tr> <tr> <td>Material</td> <td>6061 T6 Aluminum Alloy</td> </tr> <tr> <td>Saddle Rail Compatibility</td> <td>7mm round &amp; 7x9mm oval</td> </tr> <tr> <td>Di2 Battery Compatibility</td> <td>Yes (<a href="https://redshiftsports.myshopify.com/products/shockstop-seatpost-di2-battery-holder" rel="noopener nofollow" target="_blank">requires mount kit sold separately</a>)</td> </tr> </tbody> </table>', array['redshift-shockstop-suspension-seatpost-27-2/1.jpg', 'redshift-shockstop-suspension-seatpost-27-2/2.jpg', 'redshift-shockstop-suspension-seatpost-27-2/3.jpg', 'redshift-shockstop-suspension-seatpost-27-2/4.jpg', 'redshift-shockstop-suspension-seatpost-27-2/5.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('sdg-tellis-dropper-seatpost', 'SDG - TELLIS V1 DROPPER SEATPOST - INCLUDES LEVER - 31.6MM', 'sdg', 'components', 'other-components', '<p>The TELLIS is one of the most durable and simplistic droppers on the market, with an easy cable actuated, sealed hydraulic cartridge system, featuring the softest lever action in the game and backed with a 2 year warranty and global support services. </p>
<ul>
<li>Internal Routed, Infinitely Adjustable Design: 125mm, 150mm, 170mm &amp; 200mm Travel</li>
<li>Simplistic, Fully Sealed Alloy Cage / Stainless Tip Cartridge System</li>
<li>Durable 3D Forged Head w/ 7075-T6 Forged Clamp</li>
<li>Industry Leading Featherlight Thumb Actuation</li>
<li>Intelligent Keyway System Ensures Minimal Play</li>
<li>Easiest Installation – Cable Head Attaches At Base</li>
<li>Cold Weather Approved – Tested Down To -20C</li>
<li>1x Lever included w/ Premium Jaguar Lex Slick Housing, Stainless Cable &amp; Hardware</li>
<li>Global Backend Support, Service Parts &amp; Instructions Readily Available</li>
</ul>', array['sdg-tellis-dropper-seatpost/1.jpg', 'sdg-tellis-dropper-seatpost/2.jpg']::text[], 'new', 2, '2021-10-08'::date, false, false),
  ('shimanoduracecs-r910011speedcassette', 'Shimano Durace CS-R9100 11 Speed Cassette', 'shimano', 'components', 'other-components', '<p><strong>Description:</strong></p>
<p>Shimano Dura Ace CS-9100 11-speed cassette - perfected for racing</p>
<p>The Shimano Dura Ace CS-9100 cassette offers perfect shifting options for 11-speed drivetrains in racing applications. It has five titanium sprockets, which reduce weight and increase stiffness. The HG-EV technology provides even better shifting performance compared to HG cassettes </p>
<ul>
<li>Application:- Road</li>
<li>Gearing:- 11-speed</li>
<li>Sprocket Material:- Steel, titanium</li>
<li>Freehub Body Compatibility:- Shimano Road</li>
<li>HG-EV cassette </li>
<li>Weight-optimised sprocket design</li>
<li>Improved shifting function for more precise shifts and less weight</li>
<li>Super-light, high-strength carbon carrier</li>
<li>The five largest sprockets (7 to 11) made of titanium for less weight, higher rigidity</li>
<li>Steel sprocket nickel plated</li>
<li>11-28t:- 11-12-13-14-15-17-19-21-23-25-28t</li>
<li>HG-EV</li>
</ul>
<p>The HG-EV cassette is used for gradation and cadence management adapted to the rider. Shimano offers the optimum gear ratio for 11-speed shifting systems. You can choose wider or narrower gear ratios to meet the respective requirements. With the HG-EV cassette you get an 11-speed shifting system without compromises in robustness and improved Hyperglide shifting function.</p>', array['shimanoduracecs-r910011speedcassette/1.jpg']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimano-ultegra-8170-12sp-groupset', 'Shimano Ultegra 12 Speed R8170 Groupset', 'shimano', 'components', 'other-components', '<p>Shimano Ultegra R8170 hydro braking, electronic shifting and now 12 speed. The ultimate in performance, style and value. Mechanical, electrical and hydro systems all working together to provide the ultimate ride experience. </p>
<p>12 speed and now with no charging junction and the option for wireless shifting levers the new Ultegra preforming way above other groups in this price range</p>
<p> Revised crank length, chainring and cassette options with the focus on pedal efficiency the new 12 speed Ultegra covers all the needs of the amature rider as well as giving the professional and compeditor and advantage over other groups. </p>

<p>Groupset Includes. </p>
<p> ST-R8170 L &amp; R 8170 Di2 Brake/Shifter </p>
<p>FD-R8150 Di2 Front Derailleur</p>
<p>RD-R8150 Di2 Rear Derailleur</p>
<p>BR-R8170 Disc Brake Calipers flat mount front and rear. </p>
<p>FC-R8100 170mm 52/36 Crankset </p>
<p>CS-R8100 11/30 Cassette</p>
<p>CN-M8100 12 Speed Chain</p>
<p>BT-DN300 Internal Battery</p>
<p>2 x E-Tube Wires  </p>
<p>1x RT-MT800 160mm Disc Rotors</p>

<p>1x RT-MT800 140mm Disc Rotors</p>
<p>EW-FC300 Battery Charger Cable</p>

<p>1x set of WH-R8170 C50 TL Wheels</p>

<p>Other Wheel Options Available</p>', array['shimano-ultegra-8170-12sp-groupset/1.jpg']::text[], 'new', 0, '2022-02-18'::date, false, false),
  ('shimanoxtcs-m800011speedcassette', 'Shimano XT CS-M8000 11 Speed Cassette', 'shimano', 'components', 'other-components', '<p><strong>Description:</strong></p>
<p>Whether you''re replacing a worn cassette or piecing together a new build, Shimano''s XT level components offer great performance and durability.</p>
<p>The M8000 11-speed cassette strikes a perfect balance between weight and reliability.  Featuring a combination of aluminium and steel cogs the cassette is both, light and durable.  To keep performance at a max, Shimano uses their Rhythm Step Gear Progression which gives you the best possible gear combo and ratio.  Available in three sizes to suit a variety of different chainring options, you can build up the ultimate wide range 11-speed drivetrain.  </p>
<p>Who''s this item for: Riders who are after an excellent performing 11 speed Shimano cassette. </p>
<p>Number of gears: 11</p>', array['shimanoxtcs-m800011speedcassette/1.jpg']::text[], 'new', 3, '2021-08-19'::date, false, true),
  ('velobike-aerobar-adjustable-risers', 'Velobike Aerobar Adjustable Risers', 'velobike', 'components', 'other-components', '<p>Universal aerobar angled risers developed in collaboration with Cycling New Zealand in the build-up to the Paris Olympics. The adjustability helps the team dial in their position with micro adjustments to optimise the bike fit in relation to the UCI geometry rules.</p>
<p><strong>Specifications:</strong></p>
<ul>
<li>7075-T6 Aluminium</li>
<li>Adjustable angle between 15° and 30° </li>
<li>Compatible with 22.2mm external diameter extensions</li>
<li>Grub screw extension mounting system</li>
<li>Access for internal cable routing<br><br>
</li>
</ul>
<p><strong>Includes:</strong></p>
<ul>
<li>1x Pair of adjustable angle risers </li>
<li>Mounting hardware for base bar fastening not included</li>
<li>Mounting hardware for armrest fastenings not included</li>
</ul>

<ul></ul>
<p>Base Bar Compatibility</p>
<ul>
<li>Top-down or bottom-up base bar mounting systems</li>
<li>Compatible with M5 or M6 base bar mounting hardware</li>
<li>20mm to 40mm base bar mounting spacing<br><br>
</li>
</ul>
<p>Armrest Compatibility</p>
<ul>
<li>16x armrest fastening locations at 7.5mm increments </li>
<li>M5 armrest fastening threads <br><br>
</li>
</ul>
<p><em>Recommended to use Loctite 243 on all fastenings for safety and security</em></p>', array['velobike-aerobar-adjustable-risers/1.jpg']::text[], 'new', 0, '2024-03-07'::date, false, false),

  -- ---- components · pedals ----
  ('crankbrothers-candy-11-pedals', 'Crankbrothers Candy 11 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Competition-oriented and customizable for refined fit, feel, and power transfer.</p> <ul> <li>11 Series Pedals</li> <li>Ideal for Gravel &amp; XC</li> <li>Ultra-lightweight titanium components</li> <li>Durable alloy body</li> <li>Lightweight titanium wings</li> <li>Integrated traction pad technology to optimize the shoe/pedal interface (included)</li> <li>Ribbed body for better traction when unclipped</li> <li>Chamfered edges to reduce rock-strikes</li> <li>Hex alloy endcap and bashguard</li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float &amp; release angle</li> <li>Premium bearings &amp; double seal system</li> </ul> <h4>Specs</h4> <table> <tbody> <tr> <td><strong>Body material</strong></td> <td>6061-T6 aluminum</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Hex alloy</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Enduro sealed needle bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>200 lbs / 90 kgs</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro MAX cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>6al / 4v titanium</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Traction Pads</strong></td> <td>1mm installed - 2mm included</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>249g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>6al / 4v titanium</td> </tr> </tbody> </table>', array['crankbrothers-candy-11-pedals/1.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('crankbrothers-candy-2-pedals', 'Crankbrothers Candy 2 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Our most versatile pedal - the candy excels at it all.</p> <ul> <li>Ideal for Gravel, Trail &amp; XC</li> <li>Durable alloy body</li> <li>Stamped steel wings</li> <li>Snap-on traction pad technology to customize and optimize the shoe/pedal interface (available separately)</li> <li>Ribbed body for better traction when unclipped</li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float &amp; release angle</li> <li>Premium bearings &amp; double seal system</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Body material</strong></td> <td>6061-T6 aluminum</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Slotted</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>355g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>Stamped steel</td> </tr> </tbody> </table>', array['crankbrothers-candy-2-pedals/1.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('crankbrothers-candy-3-pedals', 'Crankbrothers Candy 3 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Our most versatile pedal - the candy excels at it all.</p> <ul> <li>Ideal for Gravel, Trail &amp; XC</li> <li>Durable alloy body</li> <li>Durable cast steel wings</li> <li>Snap-on traction pad technology to customize and optimize the shoe/pedal interface (included)</li> <li>Ribbed body for better traction when unclipped</li> <li>Hex alloy endcap for enhanced durability</li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float &amp; release angle</li> <li>Premium bearings &amp; double seal system</li> </ul> <h4>Specs</h4> <table> <tbody> <tr> <td><strong>Body material</strong></td> <td>6061-T6 aluminum</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Hex alloy</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro MAX cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>340g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>17-4PH stainless</td> </tr> </tbody> </table>', array['crankbrothers-candy-3-pedals/1.jpg', 'crankbrothers-candy-3-pedals/2.jpg', 'crankbrothers-candy-3-pedals/3.jpg']::text[], 'new', 3, '2021-08-30'::date, false, false),
  ('crankbrothers-candy-7-pedals', 'Crankbrothers Candy 7 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Competition-oriented and customizable for refined fit, feel, and power transfer.</p> <ul> <li>Ideal for Gravel, Trail &amp; XC</li> <li>Durable alloy body</li> <li>Durable cast steel wings</li> <li>Integrated traction pad technology to optimize the shoe/pedal interface (included)</li> <li>Ribbed body for better traction when unclipped</li> <li>Chamfered edges to reduce rock-strikes</li> <li>Hex alloy endcap and bashguard</li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float &amp; release angle</li> <li>Premium bearings &amp; double seal system</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Body material</strong></td> <td>6061-T6 aluminum</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Hex alloy</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro MAX cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Traction Pads</strong></td> <td>1mm installed - 2mm included</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>320g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>17-4PH stainless</td> </tr> </tbody> </table>', array['crankbrothers-candy-7-pedals/1.jpg', 'crankbrothers-candy-7-pedals/2.jpg', 'crankbrothers-candy-7-pedals/3.jpg', 'crankbrothers-candy-7-pedals/4.jpg']::text[], 'new', 3, '2021-08-30'::date, false, false),
  ('crankbrothers-double-shot-1-pedals', 'Crankbrothers Double Shot 1 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Choose to ride flat or clipped in for city commutes and casual rides around town.</p> <ul> <li>Ideal for City use</li> <li>Hybrid pedal half flat / half clip-in</li> <li>Moulded pins and ribs for grip</li> <li>Diamond plate pads for traction</li> <li>Premium bearings &amp; double seal system</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Body material</strong></td> <td>Composite</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Easy release cleat kit included</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>57mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>10º</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>331g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>Stamped steel</td> </tr> </tbody> </table>', array['crankbrothers-double-shot-1-pedals/1.jpg', 'crankbrothers-double-shot-1-pedals/2.jpg', 'crankbrothers-double-shot-1-pedals/3.jpg', 'crankbrothers-double-shot-1-pedals/4.jpg']::text[], 'new', 3, '2021-08-30'::date, false, false),
  ('crankbrothers-double-shot-3-pedals', 'Crankbrothers Double Shot 3 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Our game-changing hybrid pedal is now available in a trail-ready version designed for more aggressive riding styles.</p> <ul> <li>Ideal for Trail, Trekking &amp; XC</li> <li>Hybrid pedal half flat / half clip-in</li> <li>8 adjustable traction pins and textured finish for grip</li> <li>Wide 57mm q-factor for stability at speed</li> <li>Diamond plate pads for traction</li> <li>Premium bearings &amp; double seal system</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Adjustable pins</strong></td> <td>8 per side</td> </tr> <tr> <td><strong>Body material</strong></td> <td>A380 aluminum</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro MAX cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>57mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>403g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>Cast stainless steel</td> </tr> </tbody> </table>', array['crankbrothers-double-shot-3-pedals/1.jpg', 'crankbrothers-double-shot-3-pedals/2.jpg', 'crankbrothers-double-shot-3-pedals/3.jpg', 'crankbrothers-double-shot-3-pedals/4.jpg']::text[], 'new', 2, '2021-08-30'::date, false, false),
  ('crankbrothers-eggbeater-11-pedals', 'Crankbrothers Eggbeater 11 Pedals', 'crankbrothers', 'components', 'pedals', '<p>The lightest mountain bike pedals in the world.</p> <ul> <li>11 Series Pedals</li> <li>Ideal for Gravel &amp; XC</li> <li>Ultra-light titanium components</li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float and release angle</li> <li>Hex alloy endcap</li> <li>Premium bearings</li> <li>Double seal system</li> <li>Traction pad compatible (1mm set included)</li> <li>5 year warranty</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Body material</strong></td> <td>6al / 4v titanium</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Hex alloy</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Enduro sealed needle bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>200lb / 90kg</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro MAX cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>6al / 4v titanium</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>179g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>6al / 4v titanium</td> </tr> </tbody> </table>', array['crankbrothers-eggbeater-11-pedals/1.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('crankbrothers-eggbeater-2-pedals', 'Crankbrothers Eggbeater 2 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Light and minimal clip-in pedal.</p> <ul> <li>Ideal for Gravel &amp; XC</li> <li>Minimal &amp; lightweight</li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float and release angle</li> <li>Traction pad compatible (sold separately)</li> <li>Premium bearings</li> <li>Double seal system</li> <li>5 year warranty</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Body material</strong></td> <td>Cast stainless steel</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Slotted</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>285g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>Stamped steel</td> </tr> </tbody> </table>', array['crankbrothers-eggbeater-2-pedals/1.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('crankbrothers-mallet-2-pedals', 'Crankbrothers Mallet 2 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Medium clip-in platform for all mountain adventures.</p> <ul> <li>Flat pedal feel with clipped-in control</li> <li>All aluminum platform for enhanced durability</li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float &amp; release angle</li> <li>Premium bearings &amp; double seal system</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Body material</strong></td> <td>6061-T6 aluminum</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Slotted</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>508g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>Stamped steel</td> </tr> </tbody> </table>', array['crankbrothers-mallet-2-pedals/1.jpg', 'crankbrothers-mallet-2-pedals/2.jpg']::text[], 'new', 2, '2021-08-30'::date, false, false),
  ('crankbrothers-mallet-3-pedals', 'Crankbrothers Mallet 3 Pedals', 'crankbrothers', 'components', 'pedals', '<p>Medium clip-in platform for all mountain adventures.</p> <ul> <li>Flat pedal feel with clipped-in control</li> <li>All aluminum platform for enhanced durability</li> <li>6 adjustable pins per side for grip </li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float &amp; release angle</li> <li>Premium bearings &amp; double seal system</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Adjustable pins</strong></td> <td>6 per side</td> </tr> <tr> <td><strong>Body material</strong></td> <td>6061-T6 aluminum</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Slotted</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>499g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>17-4PH stainless</td> </tr> </tbody> </table>', array['crankbrothers-mallet-3-pedals/1.jpg', 'crankbrothers-mallet-3-pedals/2.jpg']::text[], 'new', 2, '2021-08-30'::date, false, false),
  ('crankbrothers-mallet-enduro-pedals', 'Crankbrothers Mallet Enduro Pedals', 'crankbrothers', 'components', 'pedals', '<p>The ultimate pedal for enduro riding and racing.</p> <ul> <li>Ideal for Enduro</li> <li>Concave platform for secure foothold</li> <li>6 adjustable pins per side for grip</li> <li>Integrated traction pad technology to optimize the shoe/pedal interface </li> <li>Ribbed body for better traction when unclipped</li> <li>Chamfered edges to reduce rock-strikes</li> <li>52mm q-factor for maneuverability on tight trails</li> <li>4-sided entry / superior mud shedding</li> <li>Customizable float &amp; release angle</li> <li>Premium bearings &amp; double seal system</li> </ul> <p><strong>Specs</strong></p> <table> <tbody> <tr> <td><strong>Adjustable pins</strong></td> <td>6 per side</td> </tr> <tr> <td><strong>Body material</strong></td> <td>6061-T6 aluminum</td> </tr> <tr> <td><strong>Cleats</strong></td> <td>Premium brass cleats with shims included</td> </tr> <tr> <td><strong>Endcap</strong></td> <td>Hex alloy</td> </tr> <tr> <td><strong>Inner bearing type</strong></td> <td>Igus LL-glide bearing</td> </tr> <tr> <td><strong>Max rider weight</strong></td> <td>No restriction</td> </tr> <tr> <td><strong>Outer bearing type</strong></td> <td>Enduro MAX cartridge bearing</td> </tr> <tr> <td><strong>Q-factor</strong></td> <td>52mm</td> </tr> <tr> <td><strong>Release angle</strong></td> <td>15° / 20°</td> </tr> <tr> <td><strong>Spindle material</strong></td> <td>Forged scm 435 chromoly steel</td> </tr> <tr> <td><strong>Spring material</strong></td> <td>300 series stainless steel</td> </tr> <tr> <td><strong>Warranty</strong></td> <td>5 years</td> </tr> <tr> <td><strong>Weight</strong></td> <td>419g per pair</td> </tr> <tr> <td><strong>Wing material</strong></td> <td>17-4PH stainless</td> </tr> </tbody> </table>', array['crankbrothers-mallet-enduro-pedals/1.jpg', 'crankbrothers-mallet-enduro-pedals/2.jpg', 'crankbrothers-mallet-enduro-pedals/3.jpg', 'crankbrothers-mallet-enduro-pedals/4.jpg']::text[], 'new', 2, '2021-08-30'::date, false, false),
  ('deity-black-kat-pedal', 'DEITY - BLACK KAT PEDAL', 'deity', 'components', 'pedals', '<p>​The Black Kat pedal is the perfect blend of weight, size, performance, feel, and the durability you expect from Deity. Built around a larger double sealed bearing system, our goal with the Black Kat was to create a pedal that would not only feel incredible underfoot, but would last the test of time. The larger platform, thinner body and over all lighter appeal puts the Black Kat pedal in the perfect position to round out the best line of platform pedals on the market today. We’ve maximized every opportunity to elevate the Black Kat pedals by utilizing a concave shape to the platform, rounded edges at the spindle, traction grooves throughout and we even included an additional pin kit with every purchase. </p>
<ul>
<li>Extruded and CNC Machined 6061 T6 Aluminum Pedal Body</li>
<li>100mm x 100mm Platform</li>
<li>Concave Body</li>
<li>Deity Proprietary Extrusion</li>
<li>Fully Serviceable DU Bushing and Double Micro Sealed Bearing System</li>
<li>Bead blast ano finish for durability</li>
<li>Allen bolt style pins</li>
<li>Additional Allen Pin kit included with purchase</li>
<li>402 grams per set​</li>
</ul>', array['deity-black-kat-pedal/1.jpg', 'deity-black-kat-pedal/2.jpg', 'deity-black-kat-pedal/3.jpg', 'deity-black-kat-pedal/4.jpg', 'deity-black-kat-pedal/5.jpg']::text[], 'new', 4, '2021-09-16'::date, false, false),
  ('deity-deftrap-pedal', 'DEITY - DEFTRAP PEDAL', 'deity', 'components', 'pedals', '<p><em><strong>With a focus on ride quality, increased foot support, added stability, leading traction and the ability to skim over rocks all offered in 10 colours…</strong></em></p>
<p>Built around a true concave profile that your feet sink into, with DEITY''s signature non-offset symmetrical platform for increased stability behind the spindle, 10 total pins (8 replaceable cr-mo pins and 2 molded pins per side), tried and true sealed bearings and DU bushing system and top tier nylon and glass fiber composite material.</p>
<ul>
<ul>
<ul>
<li>All-new pedal design inspired by the world-renowned TMAC pedal</li>
<li>Non-offset symmetrical design gives the rider perfect weight distribution across the pedal, creating a very stable platform through rough terrain.</li>
<li>113mm x 103mm size is a long, supportive platform</li>
<li>18mm thick, with 2mm of concave shape in the pedal body.</li>
<li>Best-in-class 10 pins per side (8 replaceable steel pins, and 2 fixed nylon pins)</li>
<li>Premium nylon composite material is 20% stronger than nylon composite used by most leading brands.</li>
<li>2 sealed bearings with oversized DU bushing design is robust and reliable (same internals as Compound and Black Kat pedals)</li>
<li>Open channeling for optimized mud and snow shedding capabilities</li>
</ul>
</ul>
</ul>', array['deity-deftrap-pedal/1.jpg', 'deity-deftrap-pedal/2.jpg', 'deity-deftrap-pedal/3.jpg', 'deity-deftrap-pedal/4.jpg', 'deity-deftrap-pedal/5.jpg']::text[], 'new', 9, '2021-09-16'::date, false, false),
  ('deity-tmac-signature-pedal', 'DEITY - TMAC PEDAL', 'deity', 'components', 'pedals', '<p>​What a statement the TMAC pedal has become! A beautiful marriage between rider feedback and designer experience, the TMAC Signature Tyler McCaul Pedal truly is “Your Dream Pedal”.  One of the most concave designs on the market today, the control and contact delivered by the TMAC pedal is unmatched. Not only does the TMAC pedal give you precise control, but with a non-offset design you have more contact with the pedal with equal weight distribution in front and back of the pedal spindle. This non-offset design allowed us to make a pedal that feels like the largest pedal ever made at a mere 110mm x 105mm footprint.</p>
<ul>
<li>Extruded and Machined from Deity molds and 6061 T6 aluminum.</li>
<li>The largest Deity pedal to date.</li>
<li>Super concave 2.5mm deep pedal profile per side.</li>
<li>14mm thin at the center.</li>
<li>Symmetrical pedal profile for added foot support and stability.</li>
<li>Dual sided pins with pre-applied Loctite.</li>
<li>Includes extra set of back up pins.</li>
<li>Load distribution system to prevent bearing blowout.</li>
<li>Heat treated Cr-Mo Spindle that is compatible with a standard 15mm wrench or 8mm allen.</li>
</ul>', array['deity-tmac-signature-pedal/1.jpg', 'deity-tmac-signature-pedal/2.jpg', 'deity-tmac-signature-pedal/3.jpg', 'deity-tmac-signature-pedal/4.jpg', 'deity-tmac-signature-pedal/5.jpg']::text[], 'new', 6, '2021-09-16'::date, false, false),
  ('favero-assioma-pro-rs-2-power-pedal', 'Favero Assioma Pro RS 2 Power Pedal', 'favero', 'components', 'pedals', '<p>Assioma PRO RS is the lightest road power meter pedal available with just 123.5g per pedal.</p>

<p>Compatible with Shimano® SPD-SL® cleats, it delivers pro-level performance and over 60 hours of use per charge—no power dropouts. The power spindle, which safely houses all the important electronic parts and battery, is completely sealed and independent from the pedal body. This so-called “split approach” makes it durable, and extremely easy to maintain.</p>

<p>Its sleek design, with a q-factor of just +53mm and a stack-height of 10.5mm, makes it perfect to improve performance and achieve results on your road training.</p>

<p>The Assioma PRO RS power meter offers ±1% accuracy thanks to the IAV Power System, and the most complete power data reading available with a wealth of advanced metrics. A modular design lets you switch between road and MTB bodies while keeping the same power sensor. The best power meter pedal to train with precision and ride with confidence.</p>

<p><strong>Main features</strong></p>
<ul>
<li>Left and right pedal with power sensor</li>
<li>100% Shimano® SPD-SL® cleat compatibility</li>
<li>Lightest power pedal – Just 123.5 g per side</li>
<li>±1% Power Accuracy even with oval chainrings</li>
<li>Rechargeable Battery – 60+ hours per charge</li>
<li>Advanced cycling metrics (PCO included)</li>
<li>
Pedal body in carbon-fibre tech-polymers
<ul>
<li>Low stack height (10.5 mm)</li>
<li>Low q-factor (+53mm)</li>
</ul>
</li>
<li>
Modular design – interchangeable pedal bodies
</li>
<li>Made in Italy</li>
</ul>
<p><strong>TECH SPECS</strong></p>
<ul>
<li>
<strong></strong>SPD-SL® road power pedals with power meter on both sides
</li>
<li>Weight per power pedal: 123.5 g</li>
<li>L/R Balance</li>
<li>Cadence sensor: included, inbuilt</li>
<li>Gyroscope: included, inbuilt</li>
<li>Power calculation system: IAV (Instantaneous Angular Velocity-based)</li>
<li>Cycling Dynamics: available</li>
<li>
Data visible via ANT+ or on the Favero Assioma App:
<ul>
<li>
Power
</li>
<li>Cadence</li>
<li>
L/R Balance
</li>
<li>PCO</li>
<li>Power Phase (PP)</li>
<li>Pedal Smoothness (PS)</li>
<li>Torque Effectiveness (TE)</li>
<li>Rider Position (no App Favero Assioma)</li>
</ul>
</li>
<li>
Data visible via Bluetooth: 
<ul>
<li>Power</li>
<li>Cadence</li>
<li>L/R Balance</li>
</ul>
</li>
<li>Oval-chainrings compatible: Yes</li>
<li>Battery type: rechargeable, lithium-ion</li>
<li>Battery life: at least 60 hours</li>
<li>Radio communication: ANT+, Bluetooth</li>
<li>Accuracy power measurement: ± 1%</li>
<li>Thermal compensation: yes</li>
<li>Waterproofness rating: IP67</li>
<li>Q-factor: +53mm</li>
<li>Pedal stack height: 10.5 mm</li>
<li>
Compatible cleats:
<ul>
<li>Provided cleats (art. 773-20-64)</li>
<li>Shimano® SM-SH10, SM-SH11 or SM-SH12</li>
</ul>
</li>
<li>Bike types: road cycling</li>
<li>Warranty: 2 yrs</li>
</ul>
<p><strong> </strong></p>
<p><strong>PACKAGE CONTENT</strong></p>
<ul>
<li>
<strong></strong>Power meter with sensors on both sides
</li>
<li>Two-way charging cable</li>
<li>2 Magnetic connectors</li>
<li>Shimano® compatible SPD-SL® cleats</li>
<li>4 Washers</li>
<li>Greasing tools kit</li>
</ul>', array['favero-assioma-pro-rs-2-power-pedal/1.jpg']::text[], 'new', 1, '2025-06-23'::date, false, false),
  ('look-pedals-keo-2-max-black', 'Look Pedals Keo 2 Max Black', 'look', 'components', 'pedals', '<p>THE NEW KEO 2 MAX IS THE PRODUCT THAT WILL GIVE YOU THE CONFIDENCE YOU NEED TO GO BEYOND YOUR PERSONAL LIMITS. The LOOK design team has completely remodeled the shape of the KEO 2 MAX, giving it a new, slimmed down line yet a wider contact surface, increasing its style and efficiency.</p>', array['look-pedals-keo-2-max-black/1.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('look-pedals-keo-2-max-carbon', 'Look Pedals Keo 2 Max Carbon', 'look', 'components', 'pedals', '<p>THE NEW KEO 2 MAX IS THE PRODUCT THAT WILL GIVE YOU THE CONFIDENCE YOU NEED TO GO BEYOND YOUR PERSONAL LIMITS. The LOOK design team has completely remodeled the shape of the KEO 2 MAX, giving it a new, slimmed down line yet a wider contact surface, increasing its style and efficiency.</p>', array['look-pedals-keo-2-max-carbon/1.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('look-pedals-keo-2-max-vision', 'Look Pedals Keo 2 Max Vision', 'look', 'components', 'pedals', '', array['look-pedals-keo-2-max-vision/1.webp', 'look-pedals-keo-2-max-vision/2.webp', 'look-pedals-keo-2-max-vision/3.webp', 'look-pedals-keo-2-max-vision/4.webp', 'look-pedals-keo-2-max-vision/5.webp']::text[], 'new', 1, '2026-06-04'::date, false, false),
  ('look-pedals-keo-blade-carbon-cr-12nm-8nm-black', 'Look Pedals Keo Blade Carbon CR 12nm / 8nm  Black', 'look', 'components', 'pedals', '<p>Designed to win, the new KEO BLADE CARBON improves the experience associated with the use of blade technology in a clipless pedal. This new version is the result of experience gained during years of development in the heart of our manufacturing facility and to continual improvements made thanks to daily input from the greatest of champions. Lightweight, aerodynamic, powerful, the new KEO BLADE CARBON has all the assets to allow you to improve and optimize your performance until victory is yours. It is for these reasons that KEO BLADE CARBON is the unanimous choice of many champions who have made it a weapon of choice in the conquest of their greatest achievements.</p>', array['look-pedals-keo-blade-carbon-cr-12nm-8nm-black/1.jpg']::text[], 'new', 0, '2021-08-30'::date, false, false),
  ('look-pedals-keo-blade-carbon-ti-ceramique-16mm', 'Look Pedals Keo Blade Carbon Ti Ceramique 16mm', 'look', 'components', 'pedals', '', array['look-pedals-keo-blade-carbon-ti-ceramique-16mm/1.jpg', 'look-pedals-keo-blade-carbon-ti-ceramique-16mm/2.jpg']::text[], 'new', 0, '2021-08-30'::date, false, false),
  ('look-pedals-keo-classic-3-black', 'Look Pedals Keo Classic 3 Black', 'look', 'components', 'pedals', '<p>Discover the world of clipless pedals with the KEO CLASSIC 3. With easily-adjustable tension, clipping in and out becomes child''s play. As soon as you have got the hang of it during your first rides, you will be able to increase the tension to fully appreciate the pedal and all its advantages.</p> <p><strong>WHY YOU''LL LOVE IT?</strong></p> <p>COMFORT AND STABILITY</p> <ul> <li>Large, wide contact area for excellent stability thru the pedal stroke</li> <li>Aesthetics are important: choice of 3 colors to match your pedals to your bike</li> <li>All of LOOK''s expertise at an affordable price</li> </ul> <table> <tbody> <tr> <th>Spindle material</th> <td>Chromoly</td> </tr> <tr> <th>Technology</th> <td>Spring</td> </tr> <tr> <th>Body material</th> <td>Composite</td> </tr> <tr> <th>Platform material</th> <td>Composite</td> </tr> <tr> <th>Platform area</th> <td>400 mm²</td> </tr> <tr> <th>Platform width</th> <td>60 mm</td> </tr> <tr> <th>Total stack height (pedal + cleat)</th> <td>17,8 mm (11.5 + 6.3 mm)</td> </tr> <tr> <th>Q Factor</th> <td>53 mm</td> </tr> <tr> <th>Retention</th> <td>8nm - 12nm</td> </tr> <tr> <th>Cleats </th> <td>KEO grip</td> </tr> <tr> <th>Pedal </th> <td>140 g</td> </tr> <tr> <th>Weight (pair + cleats)</th> <td>350 g</td> </tr> </tbody> </table>', array['look-pedals-keo-classic-3-black/1.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('look-pedals-keo-classic-3-plus-black', 'Look Pedals Keo Classic 3 Plus Black', 'look', 'components', 'pedals', '<p>What is the difference between a KEO CLASSIC 3 and a KEO CLASSIC 3 PLUS? The material used for the contact area. The little extra, stainless steel rather than composite, optimizes pedal stiffness and hence the transfer of power from you to your bike. As for the rest, we stick to what works: fast clip in / clip out and easy tension adjustment.</p>', array['look-pedals-keo-classic-3-plus-black/1.jpg', 'look-pedals-keo-classic-3-plus-black/2.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('look-pedals-new-keo-blade-carbon-8nm', 'Look Pedals New Kéo Blade Carbon 8Nm', 'look', 'components', 'pedals', '<p>Lightweight and powerful, the Keo Blade pedal combines technology with stability for ambitious cyclists seeking superior quality.<br><br>Developed by LOOK to optimize your performance.</p><br><p>This first model in the Keo Blade range features a Chromoly + axle and steel bearings. Incorporating LOOK''s patented Blade technology into an aerodynamically optimized carbon body, these clipless pedals provide lightness, stability, and durability, but above all, a large support surface for maximum power transfer with every pedal stroke. Weighing just 115 g (per pedal) and aerodynamically optimized, the Keo Blade is designed for intuitive clip-in/clip-out, secure support, as well as comfort and unwavering efficiency to enhance your road performance.</p><br><h3><strong>Why You''ll Love It:</strong></h3><br><p><strong>Maximized Power Transfer</strong></p><br><ul>
<br><li>A generous support surface of 705 mm² on a carbon body</li>
<br><li>All the rigidity and technology of the carbon blade to optimize every pedal stroke</li>
<br><li>Enhanced comfort through even pressure distribution under the foot</li>
<br><li>Aerodynamic design</li>
<br>
</ul><br><h3><strong>Increased Comfort</strong></h3><br><p>With its 705 mm² of cleat contact surface and a supportive width of 64 mm, the Keo Blade ensures even pressure distribution under the foot with every pedal stroke. This setup minimizes the risk of “hot spots” or foot discomfort, regardless of the stiffness of your shoes. Comprised of three stainless steel plates, the extended support surface provides enhanced stability, reducing unwanted movements and lateral tilting during pedaling.</p><br><h3><strong>Simplified Tension Adjustment</strong></h3><br><p>The Blade technology offers 4 tension levels: 08/12/16/20Nm. In less than 30 seconds using a single specialized tool, you can replace the blades to select your ideal tension.</p><br><h3><strong>Aerodynamic Design</strong></h3><br><p>The new design optimizes the frontal sections and smoothens transition between shoe and pedal to reduce the pedal''s aerodynamic drag. The elegant lines of the blade seamlessly harmonize, propelling the Keo Blade to the top of its category in aerodynamics. This fusion of aesthetics and efficiency redefines performance standards for demanding cyclists.</p><br><table>
<br><tbody>
<br><tr>
<br><th>Spindle material</th>
<br><td>Chromoly +</td>
<br>
</tr>
<br><tr>
<br><th>Technology</th>
<br><td>Blade</td>
<br>
</tr>
<br><tr>
<br><th>Body material</th>
<br><td>Carbon</td>
<br>
</tr>
<br><tr>
<br><th>Platform area</th>
<br><td>705 mm²</td>
<br>
</tr>
<br><tr>
<br><th>Platform width</th>
<br><td>64 mm</td>
<br>
</tr>
<br><tr>
<br><th>Total stack height (pedal + cleat)</th>
<br><td>14,8 mm ( 8,5 + 6,3 )</td>
<br>
</tr>
<br><tr>
<br><th>Q Factor</th>
<br><td>53 mm</td>
<br>
</tr>
<br><tr>
<br><th>Retention</th>
<br><td>Serial installed in 08</td>
<br>
</tr>
<br><tr>
<br><th>Cleats</th>
<br><td>Keo Grip</td>
<br>
</tr>
<br><tr>
<br><th>Blade</th>
<br><td>Composite</td>
<br>
</tr>
<br><tr>
<br><th>Pedal</th>
<br><td>115 g</td>
<br>
</tr>
<br><tr>
<br><th>Weight pair + cleats</th>
<br><td>300 g</td>
<br>
</tr>
<br>
</tbody>
<br>
</table>', array['look-pedals-new-keo-blade-carbon-8nm/1.jpg', 'look-pedals-new-keo-blade-carbon-8nm/2.jpg', 'look-pedals-new-keo-blade-carbon-8nm/3.jpg', 'look-pedals-new-keo-blade-carbon-8nm/4.jpg', 'look-pedals-new-keo-blade-carbon-8nm/5.jpg']::text[], 'new', 1, '2024-06-19'::date, false, false),
  ('look-pedals-new-keo-blade-carbon-ceramique', 'Look Pedals New Kéo Blade Carbon Ceramique', 'look', 'components', 'pedals', '<p>Smooth and impressively reliable, the Keo Blade Ceramic pedal blends lightness and durability to accompany all ambitious cyclists. LOOK DNA at your service for performance.</p>

<p>As the second model in the range, the Keo Blade Ceramic pedal utilizes all the qualities of our patented Blade technology and introduces ceramic bearings for an incredibly smooth pedaling experience and exceptional durability. Featuring a carbon body and blade combined with a Chromoly+ axle, this clipless pedal weighs just 115 grams, providing remarkable lightness on all your rides. The generous stainless steel support surface (705 mm2) offers impeccable stability to transfer all your power to the pedals, while the carbon body is aerodynamically optimized to chase personal bests. Whatever your ambitions, this pedal will support you toward your greatest victories.</p>

<h3><strong>Why You''ll Love It:</strong></h3>

<p><strong>Unrivaled durability</strong></p>
<p><br><br></p>
<ul>
<li>The fluidity and durability of ceramic bearings</li>
</ul>

<ul>
<li>All the rigidity and technology of the carbon blade to optimize every pedal stroke</li>
</ul>

<ul>
<li>Enhanced comfort through even pressure distribution under the foot</li>
</ul>

<ul>
<li>Aerodynamic design</li>
</ul>
<p><br><br></p>
<h3><strong>Simplified Tension Adjustment</strong></h3>

<p>The Blade technology offers 4 tension levels: 8/12/16/20. In less than 30 seconds using a single specialized tool, you can replace the blades to select your ideal tension.</p>

<h3><strong>Aerodynamic Design</strong></h3>

<p>The new design optimizes the frontal sections and smoothens transition between shoe and pedal to reduce the pedal''s aerodynamic drag. The elegant lines of the blade seamlessly harmonize, propelling the Keo Blade to the top of its category in aerodynamics. This fusion of aesthetics and efficiency redefines performance standards for demanding cyclists.</p>

<h3><strong>Ceramic Bearings</strong></h3>

<p>Reducing friction is essential for improving speed and minimizing effort. Our ceramic bearings offer perfectly spherical, durable bearings to decrease resistance by 18% and extend lifespan by 4 to 6 times compared to conventional steel bearings. Every aspect of the pedal is optimized to maximize your speed and minimize your effort with each ride.</p>
<p><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></p>
<table>
<tbody>
<tr>
<th>Spindle material</th>
<td>Chromoly+</td>
</tr>
<tr>
<th>Body material</th>
<td>Carbon</td>
</tr>
<tr>
<th>Platform area</th>
<td>705 mm²</td>
</tr>
<tr>
<th>Platform width</th>
<td>64 mm</td>
</tr>
<tr>
<th>Total stack height (pedal + cleat)</th>
<td>14,8 mm ( 8,5 + 6,3 )</td>
</tr>
<tr>
<th>Q Factor</th>
<td>53 mm</td>
</tr>
<tr>
<th>Retention</th>
<td>Serial installed in 12</td>
</tr>
<tr>
<th>Cleats</th>
<td>Keo Grip</td>
</tr>
<tr>
<th>Blade</th>
<td>Carbon</td>
</tr>
<tr>
<th>Pedal</th>
<td>115 g</td>
</tr>
<tr>
<th>Weight pair + cleats</th>
<td>300 g</td>
</tr>
</tbody>
</table>', array['look-pedals-new-keo-blade-carbon-ceramique/1.jpg', 'look-pedals-new-keo-blade-carbon-ceramique/2.jpg', 'look-pedals-new-keo-blade-carbon-ceramique/3.jpg', 'look-pedals-new-keo-blade-carbon-ceramique/4.jpg', 'look-pedals-new-keo-blade-carbon-ceramique/5.jpg']::text[], 'new', 1, '2024-06-19'::date, false, false),
  ('look-pedals-new-keo-blade-carbon-ceramique-ti-16nm', 'Look Pedals New Kéo Blade Carbon Ceramique Ti 16Nm', 'look', 'components', 'pedals', '<p>The Keo Blade Ceramic Ti embodies the pinnacle of cycling performance, combining supreme lightness and cutting-edge technology to reach new heights. Proudly "Made in France" by LOOK for the most competitive cyclists.</p><br><p>Explore the pinnacle of cycling performance with the Keo Blade Ceramic Ti pedal, the flagship of our range, weighing a mere 95 grams. With its carbon body and blade, ceramic bearings, and titanium axle, this clipless pedal brings together carefully selected premium materials resulting in absolute lightness with unmatched durability. It features a support surface of 705 mm2 for perfect pedaling stability and simply offers the best weight-to-power ratio on the market. Tested and validated by professional riders, the Keo Blade Ceramic Ti stands as the ultimate reference in terms of lightness and power, delivering exceptional performance to aim for the top spot on the podium.</p><br><h3><strong>Why you will love it ?</strong></h3><br><p><strong>The epitome of lightness</strong></p><br><ul>
<br><li>The ultimate high-performance pedal, used by champions</li>
<br><li>Weighing barely 95 grams per pedal, built to soar in every ascent</li>
<br><li>Simply the best weight-to-power ratio among road pedals on the market</li>
<br><li>Aerodynamic design</li>
<br>
</ul><br><h3><strong>A Perfect Connection</strong></h3><br><p>The Keo Blade stands out for its exceptional power-to-weight ratio, thanks to its ultralight design and large contact surface. This ensures optimal power transmission, via our lightest design to date.</p><br><h3><strong>Precise and Reassuring clip-in/clip-out</strong></h3><br><p>The exclusive carbon blade technology provides unmatched security, allowing quick clip-out and a superior sense of retention. They accomplish this stability while being 20% lighter than standard metal spring systems. The refined blade spring is optimized to flex earlier in the clip-out motion for quicker and precise foot release.</p><br><h3><strong>Increased Comfort</strong></h3><br><p>With its <strong>705 mm²</strong> of cleat contact surface and a supportive width of <strong>64 mm</strong>, the Keo Blade ensures even pressure distribution under the foot with every pedal stroke. This setup minimizes the risk of “hot spots” or foot discomfort, regardless of the stiffness of your shoes. Comprised of three stainless steel plates, the extended support surface provides enhanced stability, reducing unwanted movements and lateral tilting during pedaling.</p><br><h3><strong>Simplified Tension Adjustment</strong></h3><br><p>The Blade technology offers 4 tension levels: <strong>8/12/16/20</strong>. In less than <strong>30 seconds</strong> using a single specialized tool, you can replace the blades to select your ideal tension.</p><br><h3><strong>Aerodynamic Design</strong></h3><br><p>The new design optimizes the frontal sections and smoothens transition between shoe and pedal to reduce the pedal''s aerodynamic drag. The elegant lines of the blade seamlessly harmonize, propelling the Keo Blade to the top of its category in aerodynamics. This fusion of aesthetics and efficiency redefines performance standards for demanding cyclists.</p><br><h3><strong>Ceramic Bearings </strong></h3><br><p>Reducing friction is essential for improving speed and minimizing effort. Our ceramic bearings offer perfectly spherical, durable bearings to decrease resistance by <strong>18%</strong> and extend lifespan by <strong>4 to 6 times</strong> compared to conventional steel bearings. Every aspect of the pedal is optimized to maximize your speed and minimize your effort with each ride.</p><br><h3><strong>Absolute Lightness</strong></h3><br><p>The Keo Blade Ceramic Ti pedals embody the epitome of lightness, weighing a mere <strong>190 g per pair</strong>, featuring a titanium axle, an ultra-lightweight carbon body and blade. Their design also integrates ceramic bearings and a stainless-steel plate, ensuring exceptional performance and durability.</p><br><h3><strong>Easy clip-in</strong></h3><br><p>To better guarantee an always-intuitive clip in pedal position, the redesigned Keo Blade Ceramic Ti redistributes the pedal''s mass, increasing its tilting ease by <strong>60%</strong> over prior versions.</p><br><table>
<br><tbody>
<br><tr>
<br><th>Spindle material</th>
<br><td>Titanium</td>
<br>
</tr>
<br><tr>
<br><th>Technology</th>
<br><td>Blade</td>
<br>
</tr>
<br><tr>
<br><th>Body material</th>
<br><td>Carbon</td>
<br>
</tr>
<br><tr>
<br><th>Platform area</th>
<br><td>705 mm²</td>
<br>
</tr>
<br><tr>
<br><th>Platform width</th>
<br><td>64 mm</td>
<br>
</tr>
<br><tr>
<br><th>Total stack height (pedal + cleat)</th>
<br><td>14,8 mm ( 8,5 + 6,3 )</td>
<br>
</tr>
<br><tr>
<br><th>Q Factor</th>
<br><td>53 mm</td>
<br>
</tr>
<br><tr>
<br><th>Retention</th>
<br><td>Serial installed in 16</td>
<br>
</tr>
<br><tr>
<br><th>Cleats</th>
<br><td>Keo Grip</td>
<br>
</tr>
<br><tr>
<br><th>Blade</th>
<br><td>Carbon</td>
<br>
</tr>
<br><tr>
<br><th>Pedal</th>
<br><td>95 g</td>
<br>
</tr>
<br><tr>
<br><th>Weight pair + cleats</th>
<br><td>260 g</td>
<br>
</tr>
<br>
</tbody>
<br>
</table>', array['look-pedals-new-keo-blade-carbon-ceramique-ti-16nm/1.jpg', 'look-pedals-new-keo-blade-carbon-ceramique-ti-16nm/2.jpg', 'look-pedals-new-keo-blade-carbon-ceramique-ti-16nm/3.jpg', 'look-pedals-new-keo-blade-carbon-ceramique-ti-16nm/4.jpg', 'look-pedals-new-keo-blade-carbon-ceramique-ti-16nm/5.jpg']::text[], 'new', 0, '2024-06-19'::date, false, false),
  ('shimanoduraacer9100carbonpedal', 'Shimano  Dura Ace R9100 Carbon Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>The PD-R9100 offers an optimized balance of weight and rigidity and ensures excellent pedaling efficiency. It has an injection molded carbon composite body. The extra-wide platform provides efficient power transfer and excellent stability. The wide bearing placement design ensures smooth rotation, uniformed load distribution and durability. It is possible to adjust the entry and release tension settings. <br><br></p>

<strong>Features:</strong>
<ul>
<li>Pedal Body Material: Carbon</li>
<li>Spindle Material: Cromoly</li>
<li>Cleat Retention Indicator: Yes</li>
<li>Cleat Retention Adjuster: Yes</li>
<li>Spindle Thread: 9/16"</li>
<li>Cartridge Spindle</li>
<li>2-ball bearing, 1-wide roller bushing</li>
<li>Average Weight: 234 grams per pair</li>
</ul>', array['shimanoduraacer9100carbonpedal/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimano105r7000carbonpedal', 'Shimano 105 R7000 Carbon Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>The wide contact area of the Shimano 105 PD-R7000 pedal guarantees optimum power transfer. Thanks to its carbon or carbon fiber reinforced polymer pedal body, the pair weighs only 265 grams, 25 grams less than its predecessor.<br><br></p>
<p><strong>Features:</strong></p>
<ul>
<li>Wide lightweight carbon body provides large shoe contact area to maximise power transfer and support whilst reducing weight</li>
<li>Low profile design increases road clearance for increased confidence when slicing through corners</li>
<li>Large binding target allows quick engagement while wide cleats provides more efficient pedalling</li>
<li>Stainless steel pedal body plate for increased durability</li>
<li>Open design allows for easy access and cleat adjustment</li>
<li>Low maintenance sealed cartridge axle unit</li>
<li>Comes with yellow SM-SH11 cleats with +/-3° angular float.</li>
<li>Weight: 265g per pair</li>
</ul>', array['shimano105r7000carbonpedal/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimanoeh500touringspdpedal', 'Shimano EH500 Touring SPD Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>The Shimano PD-EH500 pedals have an SPD clipless mechanism on one side and can be used like a platform pedal on the other side. The binding features a light-action construction for easy entry and exit. Whether in everyday life or on tour, you can rely on the PD-EH500 pedals.<br><br></p>

<strong>Features:</strong>
<ul>
<li>One side SPD, the other side flat</li>
<li>Light action binding makes frequent stepping-in &amp; out easier</li>
<li>Better grip on flat side for wet condition</li>
<li>Convenient road touring pedal</li>
<li>Optimized for urban riding</li>
<li>Multi-condition</li>
<li>Best match with CT or MT shoes</li>
</ul>', array['shimanoeh500touringspdpedal/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimano-gr400-pedal', 'Shimano GR400 Pedal', 'shimano', 'components', 'pedals', '<p>Shimano GR400 Pedal</p>
<p>Flat Pedal for Casual Trail Riding</p>

<p>GR400 are grippy flat pedals with a trail riding platform shape that feels stable and secure underfoot. Experience even better bike control by pairing with SHIMANO GR series shoes.</p>
<p> FEATURES</p>

<ul>
<li>Secure and stable grip for better bike control</li>
<li>Center thickness: 16 mm</li>
<li>9 removable pins per side</li>
<li>Trail riding platform shape feels secure underfoot</li>
<li>Platform size: 101 x 96 mm</li>
<li>Resin composite pedal body with bushing construction axle</li>
<li>6 mm hexagon wrench mount</li>
<li>Weight: 394 g</li>
<li>139 g lighter than PD-GR500</li>
</ul>', array['shimano-gr400-pedal/1.png']::text[], 'new', 1, '2022-06-13'::date, false, true),
  ('shimanogr500platformpedal', 'Shimano GR500 Platform Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>With a uniquely shaped concave platform that provides exceptional control and efficiency, Shimano''s GR500 Flat Pedals have an extra-wide profile that provides support and comfort when pedalling.</p>

<strong>Features:</strong>
<ul>
<li>Highest setting is +5mm higher than PD-MX80‘s pins</li>
<li>3 different pin height settings to match different type of riding</li>
<li>Average weight: 533g</li>
<li>9 pins per platform</li>
</ul>', array['shimanogr500platformpedal/1.jpg']::text[], 'new', 1, '2025-02-14'::date, false, true),
  ('shimanom520spdpedal', 'Shimano M520 SPD Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>A very good performing &amp; well-priced pedal. Open design sheds mud/debris for consistent clip-in action. </p>

<strong>Features:</strong>
<ul>
<li>Double sided pop-up binding</li>
<li>dual front and rear cleat tension adjustment</li>
<li>cartridge bearings</li>
<li>Spindle: CrMo</li>
<li>Body: Forged alloy</li>
<li>Weight: 415g</li>
</ul>', array['shimanom520spdpedal/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimano-m540-spd-pedals', 'Shimano M540 SPD Pedals', 'shimano', 'components', 'pedals', '<p> Compact dual sided SPD pedal designed for everyday use at a good value price. The stable platform can be used with any type of SPD shoe and provides support for the foot.</p>
<p>Uses the same design pedal cleat mechanism from the M959 pedal. Mud repelling design is suitable for year-round use. Cr-Mo spindle and low maintenance sealed bearing cartridge axle.</p>
<p>Features</p>
<ul>
<li>Cleat tension adjustment.</li>
</ul>

<h3>SPECIFICATIONS</h3>
<table>
<tbody>
<tr>
<td>Spindle Thread</td>
<td>BC 9/16" x 20 T.P.I</td>
</tr>
<tr>
<td>Spindle Material</td>
<td>chrome-moly Cartridge</td>
</tr>
<tr>
<td>Spindle</td>
<td>yes</td>
</tr>
<tr>
<td>Cleat Retention Indicator</td>
<td>yes</td>
</tr>
<tr>
<td>Cleat Retention Adjuster</td>
<td>yes</td>
</tr>
<tr>
<td>Mud Shedding Design</td>
<td>yes</td>
</tr>
<tr>
<td>Pedal Body Material</td>
<td>aluminium/barrel finish</td>
</tr>
<tr>
<td>Average Weight</td>
<td>352g (pair)</td>
</tr>
</tbody>
</table>', array['shimano-m540-spd-pedals/1.png']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('shimanome700trailspdpedal', 'Shimano ME700 Trail SPD Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>With a wide contact area, the PD-ME700 pedals from Shimano let riders focus on the trail ahead. Designed to work seamlessly with SHIMANO AM series shoes, the SPD trail pedals deliver enhanced stability over rough terrain.<br><br>The integrated pedal cage ensures control even when the shoe is disengaged with the pedal and also protects the SPD binding on both sides from damage. The PD-ME700 has adjustable release force and low-maintenance compact bearing. <br><br></p>

<strong>Features:</strong>
<ul>
<li>Wide, dual-sided platform improves pedal-to-shoe stability and power transfer</li>
<li>Integrated cage increases control when not clipped in and protects binding mechanism from impacts</li>
<li>Robust retention claws provide smooth engagement and release</li>
<li>Rider adjustable entry and release tension for individual customization</li>
<li>Chrome-moly spindle and low-maintenance sealed bearing cartridge axle</li>
<li>SH51 cleats included</li>
<li>Weight: 540g (pair)</li>
</ul>', array['shimanome700trailspdpedal/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimano-r550-spd-sl-pedal', 'Shimano R550 SPD-SL Pedal', 'shimano', 'components', 'pedals', '<p>Shimano R550 SPD-SL Pedal</p>
<p>If you’re after low maintenance pedals that have increased stability and improved power transfer, then the PD-R550 SPD SL Road pedals should be your first choice! The Shimano R550 pedals are a feature packed, resin bodied road model that sits below Shimano''s new 105 5700-C. They’re perfect for the weekend warrior or club racer.<br> <br><strong>Features</strong>:</p>
<ul>
<li>SPD-SL Resin road pedal</li>
<li>Wide lightweight resin body provides large shoe contact area to maximize power transfer and support whilst reducing weight</li>
<li>Low maintenance sealed cartridge axle unit</li>
<li>The low profile platform with open design allows for easy access and cleat adjustments</li>
<li>Easy to clip into and release but with stable fit for maximum power transfer to the pedals</li>
<li>Wider cleat and binding mechanism for better shoe/pedal contact than traditional SPD systems</li>
<li>Weight: Approx. 300 grams per pair</li>
<li>
<strong>Includes</strong>: Shimano yellow cleats</li>
</ul>', array['shimano-r550-spd-sl-pedal/1.jpg']::text[], 'new', 1, '2022-08-30'::date, false, true),
  ('shimanors500roadpedal', 'Shimano RS500 Road Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>The Shimano PD-RS500 clipless pedals are optimised for beginners. They have a larger entry area and an extra wide platform that efficiently transmits pedal force. In addition, this Shimano pedal is characterised by a highly resilient stainless steel pedal body insert.<strong><br></strong></p>
<p><strong>Features:</strong></p>

<ul>
<li>Wear-resistant and torsion-resistant pedals with synthetic resin body (painted)</li>
<li>Highly resilient pedal body insert made of stainless steel</li>
<li>Lighter spring tension, optimised for beginners</li>
<li>Greater entry area for better contact</li>
<li>Efficient transmission of pedal force due to extra wide platform</li>
<li>Cartridge axle</li>
<li>Sealed mechanism</li>
<li>Release tension adjust</li>
</ul>', array['shimanors500roadpedal/1.png']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('shimanot8000spddeorexttouringpedal', 'Shimano T8000 SPD Deore XT Touring Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>The PD-T8000 features a dual-sided design for flexibility and performance with the addition of protruding pins for extra grip on the flat side. The SPD retention features adjustable spring tension and the platform surface sees a refined concave shape for improved cleat clearance. </p>

<strong>Features:</strong>
<ul>
<li>Flexibility and performance with two sides (one-sided binding)</li>
<li>Dirt-repellent construction: open binding mechanism better removes dirt</li>
<li>Concave cleat spacing</li>
<li>Cartridge axle with sealed mechanism</li>
<li>Release tension adjust</li>
<li>Integrated refelector</li>
</ul>', array['shimanot8000spddeorexttouringpedal/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('shimanoultegrar8000spd-slcarbonpedals', 'Shimano Ultegra R8000 Carbon Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>To match the stiffness of the Ultegra FC-R8000 Hollowtech II crankset, there is no better option than the lightweight PD-R8000 pedal. Its carbon-composite body and extra-wide platform will give you the transfer of power you need.</p>
<p><strong>Features:</strong></p>
<ul>
<li>Pro-level performance and lightweight for the enthusiast </li>
<li>The legacy of Shimano design, quality and performance</li>
<li>Carbon-composite body </li>
<li>Extra-wide platform for a more efficient transfer of power</li>
<li>Adjustable entry and release tension settings </li>
<li>4mm longer axle available</li>
<li>Low stack height </li>
<li>-0.7mm lower than PD-6800</li>
<li>Weight= 248g</li>
</ul>', array['shimanoultegrar8000spd-slcarbonpedals/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('shimanoxtm8100xcpedal', 'Shimano XT M8100 XC Pedal', 'shimano', 'components', 'pedals', '<p><strong>Description:</strong></p>
<p>The XT PD-M8100 XC SPD pedals from Shimano improve rider stability with wider edge-to-edge contact. </p>
<p> <strong>Features:</strong></p>

<ul>
<li>Wider edge-to-edge contact area provides solid pedal - shoe interface and transmits power efficiently</li>
<li>Efficient pedaling and better bike control</li>
<li>Better mud clearance</li>
<li>Stress-free pedaling</li>
<li>Improved axle durability</li>
<li>Cleats: SM-SH51</li>
<li>Pedal body: Aluminum anodized</li>
<li>Pedal axle: Chromoly steel</li>
<li>Weight: apprx. 340g pair (manufacturer information)</li>
</ul>', array['shimanoxtm8100xcpedal/1.png']::text[], 'new', 1, '2021-08-19'::date, false, true),
  ('wahoo-speedplay-aero-stainless-pedal-system', 'Wahoo Speedplay Aero Stainless Pedal System', 'wahoo', 'components', 'pedals', '<p>Speedplay Aero Stainless Pedal System</p>
<p>SPEEDPLAY AERO - FASTER BY DESIGN<br>The dimpled and streamlined SPEEDPLAY AERO defies wind, boosts speed and gets results.</p>
<p>EASY TO MAINTAIN, MORE DURABILITY<br>All SPEEDPLAY pedals have triple-sealed bearings, and increased durability with reinforced contact points. You now spend less time maintaining your pedals, and more time riding.</p>
<p>FREEDOM OF MOVEMENT<br>The only pedal system to provide independent fore-aft, left-right, and float adjustability to optimize fit and enhance performance through better biomechanics.</p>
<p>ADJUSTABLE FLOAT NOW STANDARD<br>All pedal systems now feature 0-15º micro-adjustable float.</p>
<p>ENHANCED WALKABILITY<br>A slim profile cleat with a rubberized cover provides a better base and more confidence when walking.</p>
<p>EXCELLENT CORNERING CLEARANCE<br>Pedal through corners with confidence, maintain speed, and leave the field behind.</p>
<p>CUSTOMIZE YOUR CLEAT<br>Select either the Standard or Easy Tension cleat to deliver a customized clip-in and clip-out experience. Both cleats are compatible across all pedals.</p>
<p>EASIER SET-UP<br>Standard hex wrench installation - no pedal wrench required.</p>

<p>SPECIFICATIONS</p>
<p>Material</p>
<ul>
<li>Pedal Body - Grivory</li>
<li>Spindle - Stainless Steel</li>
<li>Bearings - Triple-sealed Cartridge &amp; Needle</li>
</ul>
<p>Physical</p>
<ul>
<li>Weight - 224g</li>
<li>Q Factor - 53mm</li>
<li>Cleats included - Standard Tension </li>
</ul>', array['wahoo-speedplay-aero-stainless-pedal-system/1.jpg']::text[], 'new', 1, '2026-03-20'::date, false, false),
  ('wahoo-speedplay-comp-chromoly-pedals', 'Wahoo Speedplay Comp Chromoly Pedals', 'wahoo', 'components', 'pedals', '<p>FEATURES</p>
<p>SPEEDPLAY COMP - MILES OF COMFORT AND VERSATILITY<br>The versatile, ride-ready SPEEDPLAY COMP with dual-side engagement provides benefits to cyclists of every level.</p>
<p>EASY TO MAINTAIN, MORE DURABILITY<br>All SPEEDPLAY pedals have triple-sealed bearings, and increased durability with reinforced contact points. You now spend less time maintaining your pedals, and more time riding.</p>
<p>FREEDOM OF MOVEMENT<br>The only pedal system to provide independent fore-aft, left-right, and float adjustability to optimize fit and enhance performance through better biomechanics.</p>
<p>ADJUSTABLE FLOAT NOW STANDARD<br>All pedal systems now feature 0-15º micro-adjustable float.</p>
<p>ENHANCED WALKABILITY<br>A slim profile cleat with a rubberized cover provides a better base and more confidence when walking.</p>
<p>EXCELLENT CORNERING CLEARANCE<br>Pedal through corners with confidence, maintain speed, and leave the field behind.</p>
<p>CUSTOMIZE YOUR CLEAT<br>Select either the Standard or Easy Tension cleat to deliver a customized clip-in and clip-out experience. Both cleats are compatible across all pedals.</p>
<p>EASIER SET-UP<br>Standard hex wrench installation - no pedal wrench required.</p>

<p>SPECIFICATIONS</p>
<p>Material</p>
<ul>
<li>Pedal Body - Grivory</li>
<li>Spindle - Chromoly</li>
<li>Bearings - Triple-sealed Cartridge &amp; Needle</li>
</ul>
<p>Physical</p>
<ul>
<li>Weight - 232 g</li>
<li>Q Factor - 53mm </li>
<li>Cleats included - Easy Tension </li>
</ul>', array['wahoo-speedplay-comp-chromoly-pedals/1.png']::text[], 'new', 1, '2025-06-26'::date, false, false),
  ('wahoo-speedplay-zero-stainless-pedal-system', 'Wahoo Speedplay Zero Stainless Pedal System', 'wahoo', 'components', 'pedals', '<p>Wahoo Speedplay Zero Stainless Pedal System</p>
<p>SPEEDPLAY ZERO - ENGINEERED FOR EVERY EFFORT<br>The breakthrough, race-ready SPEEDPLAY ZERO with dual-side engagement offers  peak power transfer with exceptional durability.</p>
<p>EASY TO MAINTAIN, MORE DURABILITY<br>All SPEEDPLAY pedals have triple-sealed bearings, and increased durability with reinforced contact points. You now spend less time maintaining your pedals, and more time riding.</p>
<p>FREEDOM OF MOVEMENT<br>The only pedal system to provide independent fore-aft, left-right, and float adjustability to optimize fit and enhance performance through better biomechanics.</p>
<p>ADJUSTABLE FLOAT NOW STANDARD<br>All pedal systems now feature 0-15º micro-adjustable float.</p>
<p>ENHANCED WALKABILITY<br>A slim profile cleat with a rubberized cover provides a better base and more confidence when walking.</p>
<p>EXCELLENT CORNERING CLEARANCE<br>Pedal through corners with confidence, maintain speed, and leave the field behind.</p>
<p>CUSTOMIZE YOUR CLEAT<br>Select either the Standard or Easy Tension cleat to deliver a customized clip-in and clip-out experience. Both cleats are compatible across all pedals.</p>
<p>EASIER SET-UP<br>Standard hex wrench installation - no pedal wrench required.</p>

<p>SPECIFICATIONS</p>
<p>Material</p>
<ul>
<li>Pedal Body - Grivory</li>
<li>Spindle - Stainless Steel</li>
<li>Bearings - Triple-sealed Cartridge &amp; Needle</li>
</ul>
<p>Physical</p>
<ul>
<li>Weight - 222g</li>
<li>Q Factor - 53mm [56, 59, 65 mm*]</li>
<li>Cleats included - Standard Tension </li>
</ul>', array['wahoo-speedplay-zero-stainless-pedal-system/1.jpg']::text[], 'new', 1, '2025-06-26'::date, false, false)
on conflict (id) do update set
  name        = excluded.name,
  brand       = excluded.brand,
  category    = excluded.category,
  subcategory = excluded.subcategory,
  description = excluded.description,
  images      = excluded.images,
  stock       = excluded.stock,
  listed_at   = excluded.listed_at,
  clearance   = excluded.clearance;

commit;
