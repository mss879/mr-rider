-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 7 OF 10
--
-- Products 1001-1200 of 1423 (helmets, nutrition, road-bikes, shoes).
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
  -- ---- helmets · road-helmets ----
  ('giro-aries-spherical', 'Giro Aries Spherical', 'giro', 'helmets', 'road-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO ARIES SPHERICAL HELMET</strong></p>

 <p>Lighter, cooler, sleeker, plus all the added protection of spherical technology powered by mips and our new drycore sweat management system: the aries spherical is like nothing before.</p>

 <p><strong>LIKE NOTHING</strong></p>

 <p>A helmet that feels like it isn''t there: the all-new Aries™ Spherical is like nothing before. Its sleeker form and lighter weight (only 270 grams in size medium, CE certification), deliver sensational comfort and cooling power. Spherical Technology™ our ball-and-socket design powered by Mips® adds protection by redirecting energy away from the brain in certain impacts, and Progressive Layering with dual densities of Nanobead EPS foam adds more comprehensive energy management. 24 Wind Tunnel vents are maximized by the AURA II Reinforcement Arch, while a plush DryCore™ brow pad manages sweat and combines with a network of intricately engineered deep internal channeling to elevate comfort. From the proven reliability and adjustability of the Roc Loc® 5+ Air fit system, to full lower hardbody coverage to enhance durability, to the meticulous production quality, the Aries is the epitome of top-shelf performance, protection, and style.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc 5+ Air</td>
 </tr>
 <tr>
 <th><strong>Number of Vents</strong></th>
 <td>24 Vents</td>
 </tr>
 <tr>
 <th><strong>Weight</strong></th>
 <td>270g (Medium)</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Spherical Technology™</li>
 <li>Mips® Brain Protection System</li>
 <li>Progressive Layering</li>
 <li>Nanobead EPS foam</li>
 <li>AURA Reinforcement Arch</li>
 <li>In-mold construction</li>
 <li>24 vents and deep internal channeling</li>
 <li>Full lower hardbody coverage</li>
 <li>Ionic+™ anti-microbial padding</li>
 </ul>

 <p><strong>SIZES</strong></p>

 <ul>
 <li>Small 20”–21.75” / 51–55cm</li>
 <li>Medium 21.75”–23.25” / 55–59cm</li>
 <li>Large 23.25”–24.75” / 59–63cm</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['giro-aries-spherical/1.jpg', 'giro-aries-spherical/2.jpg', 'giro-aries-spherical/3.jpg', 'giro-aries-spherical/4.jpg', 'giro-aries-spherical/5.jpg']::text[], 'new', 8, '2026-08-10'::date, false, false),
  ('giro-cielo-mips', 'Giro Cielo MIPS', 'giro', 'helmets', 'road-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO CIELO MIPS HELMET</strong></p>

 <p>With a compact shape, Mips® Evolve Core rotational energy management, and 22 Wind Tunnel vents, the Cielo Mips® delivers style, protection, and comfort for road and gravel riders.</p>

 <p><strong>Elevated Everyday Riding</strong></p>

 <p>Enthusiast road and gravel riders deserve pro-level performance and Cielo delivers the style, features, and comfort that set Giro ahead of the bunch. Inspired by Aries, with nods to iconic models like Aeon, Cielo''s compact design houses maximizes cooling performance with 22 vents tied to deep internal channeling, while integrated protection from Mips® Evolve Core combines with our top-tier Roc Loc 5 Air fit system. For performance, protection and style that stands out from the pack, step up to Cielo.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Product Weight</strong></th>
 <td>290g (Medium)</td>
 </tr>
 <tr>
 <th><strong>Sizes</strong></th>
 <td>
 <p>Small 51–55cm, Medium 55–59cm,<br>
 Large 59–63cm</p>
 </td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>In-mold construction with full polycarbonate coverage</li>
 <li>Thermoformed SL Roll Cage reinforcement</li>
 <li>Full lower hardbody coverage</li>
 <li>Ventilation</li>
 <li>22 vents and Deep Internal Channeling</li>
 <li>Fit System</li>
 <li>Roc Loc® 5 Air</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['giro-cielo-mips/1.jpg', 'giro-cielo-mips/2.jpg', 'giro-cielo-mips/3.jpg', 'giro-cielo-mips/4.jpg', 'giro-cielo-mips/5.jpg']::text[], 'new', 6, '2026-08-10'::date, false, false),
  ('giro-eclipse-pro', 'Giro Eclipse Pro', 'giro', 'helmets', 'road-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO ECLIPSE PRO HELMET</strong></p>

 <p>The new era of speed</p>

 <p>Designed and developed in partnership with Visma | Lease-a-Bike team to be the fastest Aero Road helmet available on the market. Spherical rotational impact<br>
 management technology. Roc Loc® 5+ Air fit system, Ionic+® anti-microbial padding, sunglass storage compatibility, lightweight and superior cooling power.</p>

 <p><strong>SUPER FIT™ SIZES</strong></p>

 <ul>
 <li>Small 20”–21.75” / 51–55cm</li>
 <li>Medium 21.75”–23.25” / 55–59cm</li>
 <li>Large 23.25”–24.75” / 59–63cm</li>
 </ul>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Spherical Technology, powered by Mips®</li>
 <li>Aura II reinforcement</li>
 <li>Progressive Layering</li>
 <li>Nanobead EPS foam</li>
 <li>Ionic+™ anti-microbial padding</li>
 <li>Dry Core sweat management system</li>
 </ul>

 <p><strong>CONSTRUCTION</strong></p>

 <ul>
 <li>In-Mold polycarbonate shell with EPS liner</li>
 <li>Full lower hardbody coverage</li>
 </ul>

 <p><strong>FIT SYSTEM</strong></p>

 <ul>
 <li>Roc Loc® 5+ Air</li>
 </ul>

 <p><strong>VENTILATION</strong></p>

 <ul>
 <li>14 Wind Tunnel™ vents and deep internal channeling</li>
 <li>Stack ventilation</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['giro-eclipse-pro/1.jpg', 'giro-eclipse-pro/2.jpg', 'giro-eclipse-pro/3.jpg', 'giro-eclipse-pro/4.jpg', 'giro-eclipse-pro/5.jpg']::text[], 'new', 6, '2026-08-10'::date, false, false),
  ('lazer-vento-helmet', 'Lazer Vento KinetiCore Helmet', 'lazer', 'helmets', 'road-helmets', '<h4>No compromises!</h4>
<p>Developed in collaboration with professional riders, the Vento reduces drag and makes you ride faster without compromising on weight or comfort. The result: Lazer''s fastest road helmet ever. With a sprint position with a slope of 15 °, it ensures absolute top performance with its improved airflow. Add to that Lazer''s innovative Venturi Effect Ventilation System, which allows warm air to escape at the back, and exclusive KinetiCore safety technology, and the result is an amazingly fast, lightweight, comfortable and well-ventilated helmet. </p>
<h3>Features of the Lazer Vento KinetiCore helmet.</h3>
<ul>
<li>KinetiCore crumple zones reliably cushion impact forces</li>
<li>Thanks to the user-friendly 360° ScrollSys system, the helmet is perfectly adapted to the respective head shape</li>
<li>Secure storage of cycling glasses thanks to silicone glasses holder</li>
<li>Venturi ventilation system and best aerodynamic performance</li>
<li>Designed for a sprint position of 15° with reduced frontal area</li>
</ul>
<p>KinetiCore technology</p>
<p>Lazer helmets with KinetiCore technology are the first with protection against rotational forces in the event of an impact fully integrated into the helmet. This is made possible by unique so-called "controlled crumple zones". </p>
<p>The full integration of KinetiCore in the helmet also brings other advantages in addition to a significantly better protective effect: less weight, better ventilation and less use of plastic. KinetiCore represents a completely different way of thinking about protecting the head and brain from rotational forces. Lazer''s brand new integrated helmet technology offers cyclists improved protection and comfort while reducing weight.</p>', array['lazer-vento-helmet/1.png', 'lazer-vento-helmet/2.png', 'lazer-vento-helmet/3.webp', 'lazer-vento-helmet/4.webp']::text[], 'new', 6, '2025-06-23'::date, false, false),
  ('lazer-z1-kineticore', 'Lazer Z1 Kineticore', 'lazer', 'helmets', 'road-helmets', '<p>The most iconic Lazer helmet has been refined and it’s ready for the front of the race. The Z1, now with KinetiCore technology. More lightweight. More ventilation. More iconic.<br></p>
<p><b>Features:</b></p>
<ul>
<li>Lightweight and comfortable high performance road helmet</li>
</ul>
<ul>
<li>5-Star Protection Technology: Built with top rated Lazer KinetiCore to reduce risk of injury from direct or rotational impact</li>
</ul>
<ul>
<li>Premium Ventilation: 3% more cooling with Z1 KinetiCore as compared to wearing no helmet at all!</li>
</ul>
<ul>
<li>Comfortable and Secure Fit: an updated Lazer Advanced RollSys system is operated by a smooth thumb wheel</li>
</ul>
<ul>
<li>Featherweight Protection: weighs 220 grams or about three energy bars</li>
</ul>
<ul>
<li>Head circumference in CM : S 52 - 56, M 55 - 59, L 58 - 61</li>
</ul>', array['lazer-z1-kineticore/1.jpg', 'lazer-z1-kineticore/2.png', 'lazer-z1-kineticore/3.png', 'lazer-z1-kineticore/4.png', 'lazer-z1-kineticore/5.png']::text[], 'new', 6, '2024-01-11'::date, false, true),
  ('met-estro-mips', 'MET Estro MIPS', 'met', 'helmets', 'road-helmets', '<p>A road helmet with a remarkable price to feature ratio. The Estro Mips is a versatile road helmet ready for your longest day on the bike. As comfortable as our top of the line its design is widely open to maximse the ventilation at low speeds. With 26 vents, 17 of which are inlets and 9 are exhaust holes, all of them work in synergy with the internal engineered air channeling system to ensure maximum ventilation. </p>

<p>Beyond its ventilated prowess, the Estro Mips is also exceptionally comfortable. The 360° head belt of the MET Safe-T Upsilon retention system ensures that there will be no pressure points on the skull and its internal shape is welcoming for almost all different shaped heads, round or more oval.</p>

<p>Featuring the MIPS-C2® brain protection system, the MET Estro Mips is able to slide relative to the head in the event of a crash, redirecting damaging rotational motion. MIPS is a brain protection system—engineered to add protection to the standard construction of helmets in case of certain impacts. The MIPS Brain Protection System (BPS) is attached inside the helmet, between the comfort padding and the EPS.</p>

<p>The front side of the helmet features two dedicated ports for securely docking sunglasses while resting or climbing.</p>

<p>The increased head coverage ensures a higher level of protection around the two most sensitive brain areas: the back and the temples. The shell is also fully covered by polycarbonate which makes it more durable avoiding any exposed EPS surfaces to outdoor conditions. </p>

<p>Specifications:</p>

<ul>
	<li>In-mould polycarbonate shell with EPS liner</li>
	<li>Full polycarbonate wrapped EPS liner to enhance durability</li>
	<li>Extended Head Coverage for deeper head protection</li>
	<li>MIPS-C2® Brain Protection System protects against certain impacts</li>
	<li>MET Safe-T Upsilon Fit System</li>
	<li>360° Head belt, Vertical adjustment to maximse adjustability </li>
	<li>Hand washable comfort pads</li>
	<li>Air Lite straps with adjustable divider leave you with an individual fit</li>
	<li>Reflective rear decals to enhance visibility in low-light conditions</li>
	<li>26 Vents, Internal engineered air channeling to improve ventilation and comfort</li>
	<li>Sunglasses ports to securely dock sunglasses when climbing or resting</li>
</ul>

<p>Sizes &amp; Weights:</p>

<ul>
	<li>S | 52/56 cm | 260 g</li>
	<li>M| 56/58 cm | 270 g</li>
	<li>L | 58/61 cm | 305 g</li>
</ul>', array['met-estro-mips/1.jpg', 'met-estro-mips/2.jpg', 'met-estro-mips/3.jpg', 'met-estro-mips/4.jpg', 'met-estro-mips/5.jpg']::text[], 'new', 11, '2026-05-20'::date, false, false),
  ('met-idolo-mips', 'MET Idolo MIPS', 'met', 'helmets', 'road-helmets', '<p>Simplicity at its best. The MET Idolo is a study in creating a high value helmet affordably. A revised aesthetic make the Idolo look like a helmet twice the price, while updates to the fit and comfort make it feel like one too.</p>

<p>The Mips® rotational management system is designed to work together with the ventilation channels and padding to give the user a safer helmet without sacrificing performance, it’s also integrated with the MET Safe-t Sport fit system to maintain the original comfort.</p>

<p>For an unbeatable value road helmet, look no further than the Idolo.</p>

<p>Specifications:</p>

<ul>
	<li>In-mould polycarbonate shell with EPS liner</li>
	<li>MIPS-Evolve® rotational management system engineered to add protection in case of certain impacts</li>
	<li>Exceptionally comfortable and secure on the head thanks to refined internal shape</li>
	<li>MET Safe-T Sport Fit System</li>
	<li>360° Head belt leave you with an individual fit</li>
	<li>Straps with adjustable divider to maximise aerodynamic and comfort</li>
	<li>Hand washable comfort pads</li>
	<li>17 Vents, Internal engineered air channeling system to improve ventilation and comfort</li>
	<li>Reflective rear decal to enhance visibility in low-light conditions</li>
	<li>Certifications CE; AS/NZS; US</li>
</ul>

<p>Size and Weight:</p>

<ul>
	<li>Universal | 52/59 cm | 285 g</li>
	<li>XL | 59/64 cm | 335 g</li>
</ul>', array['met-idolo-mips/1.jpg', 'met-idolo-mips/2.jpg', 'met-idolo-mips/3.jpg', 'met-idolo-mips/4.jpg', 'met-idolo-mips/5.jpg']::text[], 'new', 6, '2026-05-20'::date, false, false),
  ('met-manta-mips', 'MET Manta MIPS', 'met', 'helmets', 'road-helmets', '<p>The Manta Mips® is a helmet that defines MET’s aesthetic and highly contemporary designs. It’s as brilliant as the original but with sharper looks, and it feels more cutting-edge. The Manta Mips® is more aerodynamic than its predecessor thanks to its lower tube-shaped profile at the rear, which we developed with specific wind-tunnel testing in the NEWTON laboratory of Milan.</p>

<p>Featuring the MIPS-C2® rotational management system, the MET Manta Mips® is able to slide relative to the head in the case of a crash, redirecting damaging rotational motion. Mips® is a brain protection system—engineered to add at least 10% extra safety to the standard construction of helmets in case of certain impacts. The Mips Brain Protection System (BPS) is attached inside the helmet, between the comfort padding and the EPS. </p>

<p>The Fidlock® magnetic buckle makes it easier and faster to fasten the helmet. The feature effectively reduces triathlon transition times.</p>

<p>Despite being primarily an aero helmet it is also well ventilated. We’ve engineered the internal shape to channel the air and MET’s signature NACA Vent works in synergy with the specially positioned exhaust ensuring a constant airflow through the helmet, without catching the wind and creating drag.</p>

<p>It features two dedicated ports for securely docking sunglasses.</p>

<p>Beyond its technical prowess, the Manta Mips® is also exceptionally comfortable. The 360° head belt ensures that there will be no pressure points on the skull and it’s internal shape is inspired by the award-winning MET Trenta 3K Carbon.</p>

<p>Specifications:</p>

<ul>
	<li>In-mould polycarbonate shell with EPS liner</li>
	<li>MIPS C2® rotational management system engineered to add protection in case of certain impacts</li>
	<li>Exceptionally comfortable and secure on the head thanks to refined internal shape</li>
	<li>MET Safe-T Orbital Fit System</li>
	<li>360° Head belt, vertical and occipital adjustments leave you with an individual fit</li>
	<li>Air Lite straps with adjustable divider to maximise aerodynamic and comfort</li>
	<li>Fidlock® Magnetic Buckle makes it easier to secure the helmet</li>
	<li>Hand washable comfort pads</li>
	<li>15 Vents, Internal engineered air channeling system to improve ventilation and comfort</li>
	<li>Reflective rear decals to enhance visibility in low-light conditions</li>
	<li>Sunglasses ports to securely dock sunglasses when climbing or resting</li>
	<li>Tube-shaped tail to improve aerodynamics</li>
	<li>Rear deflector to enable a constant airflow in riding position</li>
	<li>Helmet soft bag included</li>
</ul>

<p>Sizes &amp; Weights:</p>

<ul>
	<li>S | 52/56 cm | 230 g</li>
	<li>M| 56/58 cm | 250 g</li>
	<li>L | 58/61 cm | 270 g</li>
</ul>', array['met-manta-mips/1.jpg', 'met-manta-mips/2.jpg', 'met-manta-mips/3.jpg', 'met-manta-mips/4.jpg', 'met-manta-mips/5.jpg']::text[], 'new', 8, '2026-02-24'::date, false, false),
  ('met-rivale-mips', 'MET Rivale MIPs', 'met', 'helmets', 'road-helmets', '<p>The MET Rivale Mips gives you superior performance and an aggressive presence on the road that leaves a lasting impression.</p>

<p>More safe. More comfortable. More efficient.</p>

<p>Why is it safer? </p>

<p>With its Mips technology, the Rivale combines an extraordinary price-quality ratio and all the advantages of the brain protection system against rotational forces. MIPS is a brain protection system—engineered to add at least 10% extra safety to the standard construction of helmets in case of certain impacts. The MIPS Brain Protection System (BPS) is attached inside the helmet, between the comfort padding and the EPS. </p>

<p>Why is it more comfortable?</p>

<p>The Rivale Mips is an evolution on the outside design and a revolution on the inside shape. The fit is unparalleled and thanks to its new Safe-T Upsilon retention system the helmet is stable on the head. The 360° head belt ensures that there will be no pressure points on the skull and it’s easy to use vertical adjustment leaves you an individual fit.</p>

<p>Why is it more efficient?</p>

<p>The rear of the Rivale Mips has a singular MET signature style – especially the NACA Vent built-in with lower and tube-shaped profile which makes the Rivale Mips more aerodynamic than its predecessor. The front of the helmet is designed with wider and longer vents which improve the ventilation and they can also serve for securely docking sunglasses. A combination that ensures puristic riding fun.</p>

<p>Specifications:</p>

<ul>
	<li>In-mould polycarbonate shell with EPS liner</li>
	<li>MIPS C2® rotational management system engineered to add protection in case of certain impacts</li>
	<li>Exceptionally comfortable and secure on the head thanks to refined internal shape</li>
	<li>MET Safe-T Upsilon Fit System</li>
	<li>360° Head belt, vertical adjustments leave you with an individual fit</li>
	<li>Air Lite straps with adjustable divider to maximise aerodynamic and comfort</li>
	<li>Hand washable comfort pads</li>
	<li>18 Vents, Internal engineered air channeling system to improve ventilation and comfort</li>
	<li>Reflective rear decals to enhance visibility in low-light conditions</li>
	<li>Sunglasses ports to securely dock sunglasses when climbing or resting</li>
	<li>Tube-shaped tail to improve aerodynamics</li>
</ul>

<p>Sizes &amp; Weights:</p>

<ul>
	<li>S | 52/56 cm | 240 g</li>
	<li>M| 56/58 cm | 250 g</li>
	<li>L | 58/61 cm | 270 g</li>
</ul>', array['met-rivale-mips/1.jpg', 'met-rivale-mips/2.jpg', 'met-rivale-mips/3.jpg', 'met-rivale-mips/4.jpg', 'met-rivale-mips/5.jpg']::text[], 'new', 8, '2026-02-24'::date, false, false),
  ('met-trenta-3k-carbon-mips', 'MET Trenta 3K carbon MIPs', 'met', 'helmets', 'road-helmets', '<p>A Change in the Air</p>

<p>The new MET Trenta 3K Carbon is our most ventilated road helmet ever, developed for the most demanding races and refined inside Tube, our proprietary wind tunnel. With a 16% improvement in airflow compared to the previous generation, it sets a new benchmark in ventilation, aerodynamic management, and comfort.</p>

<p>As road cycling speeds continue to increase, so do the demands for the highest levels of safety. The new Trenta 3K Carbon achieves a 40% improvement in the Virginia Tech test — the world’s most recognized independent safety rating protocol — earning 5 stars and one of the best scores ever recorded. It offers optimal protection in both linear and rotational impacts.</p>

<p>The helmet features the 3K Airframe, a carbon wing structure that eliminates EPS from the internal frame. The result is a continuous internal air channel, uninterrupted from the front intake to the rear exhaust, ensuring consistent airflow at both high and low speeds.</p>

<p>Already a winner at the Tour de France and the Giro d’Italia Women, the Trenta 3K Carbon is the ultimate expression of a modern road helmet — the air has changed, and so has the standard.</p>

<p>Key Points:</p>

<ul>
	<li>Ventilation¨+16% airflow vs. the previous generation, optimized in Tube, our proprietary wind tunnel.</li>
	<li>Linear and Rotational Safety Rated 5 stars by Virginia Tech, with a 40% improvement and one of the best scores ever recorded. Maximum protection from linear and rotational impacts.</li>
	<li>3K Airframe Carbon structure allows for wide, continuous internal channels with no EPS interruptions — for maximum ventilation and low weight.</li>
	<li>Fit System Precise and customizable fit thanks to the Safe-T Orbital 360° belt, with vertical and occipital adjustments.</li>
	<li>Sunglasses Port Side vents securely hold sunglasses during climbs or rest stops.</li>
	<li>Superior Comfort Compact shape, minimal head contact and active airflow for a constant fresh feeling.</li>
	<li>World Tour proven</li>
	<li>The MET Trenta 3K Carbon is developed in direct collaboration with Tadej Pogacar, UAE Team Emirates, and UAE Team ADQ. Worn in the world’s most prestigious races, it has already been part of victories at the Tour de France and Giro d’Italia Women, delivering an unmatched performance level.</li>
</ul>

<p>Specifications:</p>

<ul>
	<li>3K Airframe: integrated carbon cage for enhanced performance</li>
	<li>Mips AIR®: ultralight rotational protection system</li>
	<li>Optimized fit: secure and comfortable internal shape</li>
	<li>In-mould polycarbonate shell with high-protection EPS liner</li>
	<li>Safe-T Orbital system: 360°, vertical and occipital adjustment</li>
	<li>Air Lite straps with adjustable divider</li>
	<li>24 ventilation ports with internal air channeling</li>
	<li>Sunglasses ports integrated into side vents</li>
	<li>Minimal contact with the head for max ventilation</li>
	<li>Helmet soft bag included</li>
</ul>

<p>Sizes &amp; Weights</p>

<ul>
	<li>S | 52/56 cm | 250 g</li>
	<li>M| 56/58 cm | 260 g</li>
	<li>L | 58/61 cm | 290 g</li>
</ul>', array['met-trenta-3k-carbon-mips/1.png', 'met-trenta-3k-carbon-mips/2.png', 'met-trenta-3k-carbon-mips/3.png', 'met-trenta-3k-carbon-mips/4.png', 'met-trenta-3k-carbon-mips/5.jpg']::text[], 'new', 13, '2026-02-24'::date, false, false),
  ('met-trenta-mips', 'MET Trenta MIPs', 'met', 'helmets', 'road-helmets', '<p>For more than thirty years MET has been making helmets for the very best in the sport of cycling. We’ve learned, refined and developed our products, getting faster, lighter and more comfortable with every generation. Enhanced for use in the peloton, the MET Trenta Mips is a performance road helmet engineered to maximise ventilation and save you energy with every pedal stroke.</p>

<p>Featuring the MIPS-C2® rotational management system, the MET Trenta Mips is able to slide relative to the head in the case of a crash, redirecting damaging rotational motion. MIPS is a brain protection system—engineered to add protection to the standard construction of helmets in case of certain impacts. The MIPS Brain Protection System (BPS) is attached inside the helmet, between the comfort padding and the EPS.</p>

<p>Originally developed by NACA, a precursor to NASA, the position of this inlet at the front of the helmet has a cooling effect. Harnessing the power of the Venturi effect, the vent pushes out the warm air within the helmet through specially positioned exhausts. This ensures constant airflow through the helmet, without catching the wind and creating drag, achieving the maximum level of comfort during the longest rides on the road or on your gravel bike.</p>

<p>Enhanced for use in the peloton, the MET Trenta’s tube-shaped tail and internal air channeling ensure it performs best when riding in a group, offering up to 7% reduction in drag vs a traditional road helmet. It has a lower profile at the rear, which works in synergy with the NACA front vent and the rear deflector to effectively drive airflow.</p>

<p>Specifications:</p>

<ul>
	<li>In-mould polycarbonate shell with EPS liner</li>
	<li>MIPS C2® rotational management system engineered to add protection in case of certain impacts</li>
	<li>Exceptionally comfortable and secure on the head thanks to refined internal shape</li>
	<li>MET Safe-T Orbital Fit System</li>
	<li>360° Head belt, vertical and occipital adjustments leave you with an individual fit</li>
	<li>Air Lite straps with adjustable divider to maximise aerodynamic and comfort</li>
	<li>19 Vents, Internal engineered air channeling system to improve ventilation and comfort</li>
	<li>Sunglasses ports to securely dock sunglasses when climbing or resting</li>
	<li>Tube-shaped tail to improve aerodynamics</li>
	<li>Rear deflector to enable a constant airflow in riding position</li>
	<li>Limited head contact surface to maximise the ventilation</li>
	<li>Reflective rear decals to enhance visibility in low-light conditions</li>
</ul>

<p>Sizes &amp; Weights</p>

<ul>
	<li>S | 52/56 cm | 240 g</li>
	<li>M| 56/58 cm | 250 g</li>
	<li>L | 58/61 cm | 285 g</li>
</ul>', array['met-trenta-mips/1.jpg', 'met-trenta-mips/2.jpg', 'met-trenta-mips/3.jpg', 'met-trenta-mips/4.jpg', 'met-trenta-mips/5.jpg']::text[], 'new', 12, '2026-02-24'::date, false, false),
  ('met-vinci-mips', 'MET Vinci MIPS', 'met', 'helmets', 'road-helmets', '<p>Inspired by our award-winning professional cycling helmet the Trenta, the MET Vinci exceeds the standards of performance and safety, delivering an unmatched price-performance ratio.</p>

<p>Featuring the MIPS-C2® brain protection system, the Vinci is able to slide relative to the head in the case of a crash, redirecting damaging rotational motion.</p>

<p>Safety meets comfort. The Vinci is exceptionally lightweight and extremely comfortable to wear, making it hard to remember that it’s on your head. The internal air-channeling works in synergy with the exhaust ports maximizing the ventilation, an optimal solution for longer rides.</p>

<p>Specifications:</p>

<ul>
	<li>In-mould polycarbonate shell with EPS liner</li>
	<li>MIPS-C2® Brain Protection System</li>
	<li>Safe-T DUO Fit System</li>
	<li>Vertical adjustment and ponytail compatible</li>
	<li>Reflective rear stickers</li>
	<li>Internal air-channeling</li>
	<li>Hand washable comfort pads</li>
	<li>Adjustable cam divider</li>
</ul>

<p>Sizes &amp; Weights:</p>

<ul>
	<li>S | 52/56 cm | 245 g</li>
	<li>M| 56/58 cm | 265 g</li>
	<li>L | 58/61 cm | 285 g</li>
</ul>', array['met-vinci-mips/1.jpg', 'met-vinci-mips/2.jpg', 'met-vinci-mips/3.jpg', 'met-vinci-mips/4.jpg', 'met-vinci-mips/5.jpg']::text[], 'new', 7, '2026-05-20'::date, false, false),
  ('propero-4', 'Propero 4', 'specialized', 'helmets', 'road-helmets', '<p>Meet the all-new Propero 4 helmet—it brings the aero advantages of the S-Works Evade 3 together with the ventilation of S-Works Prevail 3, all with the comfort and confidence Specialized helmets are famous for, earning the highest 5-Star Virginia Tech® helmet rating. Every detail of the Propero 4 was created with our equation for speed in mind. Aerodynamics + Ventilation + Lightweight = Fast. AERODYNAMICS: With extensive testing in CFD and in our Win Tunnel, aerodynamics were at the forefront of the Propero 4 development. We took the aerodynamic leading edge from the S-Works Evade 3 and pulled it directly into the Propero 4—which helped it to be four watts, or 15 seconds over 40km, faster than our S-Works Prevail 3. VENTILATION: Drawing inspiration from our world-renowned S-Works Prevail 3, our goal was not merely to replicate but to elevate. Ventilation became a focal point in our quest for a well-balanced, aerodynamic, and ventilated helmet. We incorporated the rear-end design language of the S-Works Prevail 3 and introduced small 2mm offset micro-channels that create turbulence in the airflow throughout the helmet to help create a continuous, refreshing flow of air. ATTENTION TO DETAIL: Beyond just aerodynamics and ventilation, the Propero 4 represents meticulous attention to detail. We went the extra mile by incorporating cutting-edge technologies from our S-Works level helmets, like MIPS technology for confidence, and a fit system designed to deliver all-day comfort. The Propero 4 doesn''t just meet expectations; it redefines them.</p>', array['propero-4/1.jpg', 'propero-4/2.jpg', 'propero-4/3.jpg', 'propero-4/4.jpg', 'propero-4/5.jpg']::text[], 'new', 8, '2024-05-23'::date, false, false),
  ('s-works-prevail-3', 'S-Works Prevail 3', 's-works', 'helmets', 'road-helmets', '<p>The S-Works Prevail 3 helmet is perfect for riders who value the comfort and thermoregulation benefits that superior ventilation delivers. It is the ultimate all-around helmet that excels in hot conditions, strenuous climbs, and mountainous stages. With a never-ending quest to push the limits of ventilation, we eliminated air-blocking foam “bridges” from the center, effectively creating thru-air channels that increase the surface area of ventilation by 24.5% compared to the S-Works Prevail II Vent helmet. The all-new S-Works Prevail 3 has the most ventilation area of any helmet we have ever made. When a helmet is impacted, its job is to dissipate the energy of the impact. The conventional approach to helmet design is that more foam (EPS) means better energy management. We re-wrote the book on cycling helmet design by innovating beyond foam. Woven aramid “cables” traverse the helmet and are anchored to carbon fiber side panels. Upon impact, the AirCage technology* works as a suspension bridge and is designed to distribute localized forces throughout the helmet. The Occipital Base Adjustment optimizes comfort by personalizing fit to individual head shape and helmet angle can be adjusted for compatibility with glasses. An adjustable Tri-Fix web system gives riders added comfort with updated, thinner 10mm webbing that minimizes strap noise. And the ultralight Mindset micro-dial fit system with height adjustability has been updated for improved grip and reaction for easy on-the-go fit. Our ultralight and supremely comfortable MIPS Node Air technology is integrated directly into the helmet padding, with a sleek low friction layer designed to dissipate rotational forces. With Specialized’s proprietary development work, we added perforations to maximize breathability, performance, comfort, and weight savings. For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 5 and Older.</p>', array['s-works-prevail-3/1.jpg', 's-works-prevail-3/2.jpg', 's-works-prevail-3/3.jpg', 's-works-prevail-3/4.jpg', 's-works-prevail-3/5.jpg']::text[], 'new', 16, '2025-09-25'::date, false, false),

  -- ---- helmets · tt-triathlon-helmets ----
  ('giro-aerohead-mips-ii', 'Giro Aerohead MIPS II', 'giro', 'helmets', 'tt-triathlon-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO AEROHEAD MIPS II HELMETS</strong></p>

 <p>Aerohead II Mips® is our most aerodynamic time trial helmet ever, designed with CFD and VR, and proven in the wind tunnel with the world''s fastest riders on Team Visma</p>

 <p>"Making the fastest riders faster" is our mantra and the Aerohead II Mips is the first product of our partnership with the world''s fastest riders on Team Visma / Lease a Bike.</p>

 <p>Designed with CFD and VR, proven in the wind tunnel with 2x Tour de France winner Jonas Vingegaard, the Aerohead II Mips® is our most aerodynamic time trial helmet ever. With the protection of Mips® Air Node, a lightweight and ventilated solution for rotational energy management CE and CPSC safety standards are met and exceeded. Visibility is optimized with a magnetically attached oversized eye shield by Zeiss® Optics that is positioned away from the rider''s face, allowing air to flow over the brow and beneath the Roc Loc® 5 Air fit system. Each Aerohead II comes with two eye shields (Clear and Vivid® Smoke) and a padded carrying pod. Engineered speed — the Aerohead II is your advantage.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Construction</strong></th>
 <td>In-Mold Polycarbonate Shell</td>
 </tr>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc® 5+ Air</td>
 </tr>
 <tr>
 <th><strong>Product Weight</strong></th>
 <td>450g</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Super Fit™ engineering</li>
 <li>2x vented eye shields made by ZEISS® Optics (VIVID® + Clear)</li>
 <li>Magnetic lens anchor attachment</li>
 <li>IONIC+™ anti-microbial padding</li>
 <li>Over-brow Ventilation</li>
 <li>Slimline webbing</li>
 <li>Mips® Air Node rotational energy management system</li>
 </ul>

 <p><strong>CERTIFICATIONS</strong></p>

 <ul>
 <li>Complies with the US CPSC Safety Standard for Bicycle Helmet for Persons Age 5 and Older</li>
 <li>E.U.: CE EN1078</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['giro-aerohead-mips-ii/1.jpg', 'giro-aerohead-mips-ii/2.jpg', 'giro-aerohead-mips-ii/3.jpg', 'giro-aerohead-mips-ii/4.jpg', 'giro-aerohead-mips-ii/5.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('s-works-tt-6', 'S-Works TT 5', 's-works', 'helmets', 'tt-triathlon-helmets', '<p>We work with the fastest racers in the world to create products that help them win the biggest races in the world. Then we make those products available to all riders so they can realize the same performance benefits as the pros. The S-Works TT 5 helmet is an excellent example of our Made In Racing approach. Remco Evenepoel and Kasper Asgreen of Quick-Step Alpha Vinyl logged countless hours in our Win Tunnel until we arrived at the fastest TT helmet we have ever made. Using CFD modeling, the helmet team reshaped the TT helmet, positioning the rear of the helmet to be nearer the rider’s shoulders, reducing the eddy of air that creates drag. The S-Works TT 5 helmet comes equipped with a Class 1 optics shield for zero distortion when looking down the road, unlike traditional lenses that are typically drape-formed with clear plastic. The shield has a hydrophobic coating to help clear moisture away if the weather turns bad on race day, as well as a high-grade (EN166) anti-fog coating. The Occipital Base Adjustment optimizes comfort by personalizing fit to individual head shape and helmet angle can be adjusted for compatibility with glasses. An adjustable Tri-Fix web system gives riders added comfort with updated, thinner 10mm webbing that minimizes strap noise. Our ultralight and supremely comfortable MIPS Node Air technology is integrated directly into the helmet padding, with a sleek low friction layer designed to dissipate rotational forces. With Specialized’s proprietary development work, we added perforations to maximize breathability, performance, comfort, and weight savings. For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 5 and Older.</p>', array['s-works-tt-6/1.jpg', 's-works-tt-6/2.jpg', 's-works-tt-6/3.jpg', 's-works-tt-6/4.jpg', 's-works-tt-6/5.jpg']::text[], 'new', 1, '2024-11-28'::date, false, false),

  -- ---- nutrition · electrolytes-hydration ----
  ('applied-nutrition-endurance-energy-hydration-powder-1-5k', 'Applied Nutrition Endurance Energy & Hydration Powder 1.5kg', 'applied-nutrition', 'nutrition', 'electrolytes-hydration', '<p>Applied Nutrition Energy - Carb &amp; Electrolyte powder is Perfect for athletes, runners, cyclists, and anyone engaged in prolonged physical activities, our Endurance Carb 48g and Electrolyte Powder 300mg is the ideal solution for staying energized, hydrated, and performing at your best. Embrace every challenge and push your limits with confidence.</p>
<h3>DESCRIPTION</h3>
<p><strong>30 Servings | 48g Carbs | 300mg Electrolytes</strong></p>
<p>Endurance Energy &amp; Hydration powder is designed as a easily digestible and quick supply of energy, delivering 48g of fast absorbing carbohydrates with the addition of 300mg of electrolytes per sachet. </p>
<p>Perfect for athletes, runners, cyclists, and anyone engaged in prolonged physical activities, our Endurance Carb and Electrolyte Powder is the ideal solution for staying energised, hydrated, and performing at your best. Embrace every challenge and push your limits with confidence.<br><br>Endurance Energy powder can be mixed at various concentrations to suit your requirements, and can be consumed as part of a carbohydrate loading plan in the days and hours prior and during your training or event.</p>

<h3>Key Benefit</h3>
<ul>
<li>Informed-Sport Batch Tested for Athletes</li>
<li>Fuel for training &amp; perfect for carb loading plans</li>
<li>Perfect for cyclists, runners &amp; all endurance exercise</li>
<li>Fast absorbing highly-soluble carbohydrates</li>
<li>Suitable for vegans, vegetarians, non GMO &amp; gluten free</li>
<li>Halal certified product</li>
</ul>

<h3>Suggested Us</h3>
<p>Mix 1 heaped scoop (50g) with 500ml of water in a bottle and shake well.</p>
<p>Once mixed with water, consume within 24hrs.</p>
<p>Consume 500ml every 45-60 minutes of exercise or as required.</p>
<h3>CARBOHYDRATE LOADING STRATEGY</h3>
<p>Consume up to 4 servings per day with or in-between meals as part of a carbohydrate loading strategy. Carbohydrate loading strategies involve an increase in the amount of carbohydrates a user consumes in the days leading up to an event in order to increase the store of muscle glycogen.<br><br><em><strong>Scoops are estimate only, weighing scales are recommended.</strong></em></p>', array['applied-nutrition-endurance-energy-hydration-powder-1-5k/1.webp', 'applied-nutrition-endurance-energy-hydration-powder-1-5k/2.webp', 'applied-nutrition-endurance-energy-hydration-powder-1-5k/3.webp']::text[], 'new', 0, '2025-04-17'::date, false, false),
  ('sisbetafuel', 'SIS Beta Fuel', 'sis', 'nutrition', 'electrolytes-hydration', '<h3>Science in Sport Beta Fuel</h3>
<h3><strong>High-Carbohydrate Endurance Fuel for Sustained Energy</strong></h3>
<p>Designed for serious endurance athletes, <strong>SiS Beta Fuel</strong> delivers maximum carbohydrate with added electrolytes to maintain energy, delay fatigue, and support optimal performance during prolonged exercise.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Carbohydrate Content:</strong> 80 g per serving</p>
</li>
<li>
<p><strong>Carbohydrate Ratio:</strong> 2:1 maltodextrin to fructose for improved absorption</p>
</li>
<li>
<p><strong>Electrolytes:</strong> Sodium, potassium, magnesium, and calcium to support hydration and muscle function</p>
</li>
<li>
<p><strong>Formulation:</strong> Isotonic and pH neutral to minimise gastrointestinal discomfort</p>
</li>
<li>
<p><strong>Flavours Available:</strong> Orange, Strawberry &amp; Lime, Red Berry</p>
</li>
<li>
<p><strong>Certifications:</strong> Informed-Sport certified</p>
</li>
</ul>

<h3>Usage Recommendations</h3>
<ul>
<li>
<p>Mix one sachet (82 g) with 600 ml of water to create an isotonic solution.</p>
</li>
<li>
<p>Consume throughout prolonged endurance events lasting over 2 hours.</p>
</li>
<li>
<p>Ideal for marathons, triathlons, long-distance cycling, or extended training sessions.</p>
</li>
</ul>

<h3>Why You’ll Love It</h3>
<p>SiS Beta Fuel provides a scientifically formulated, convenient energy solution that allows athletes to <strong>fuel efficiently, stay hydrated, and maintain performance</strong> throughout their training and competitions.</p>', array['sisbetafuel/1.jpg']::text[], 'new', 2, '2021-08-19'::date, false, false),
  ('sisgoelectrolyte16kg', 'SIS Go Electrolyte 1.6kg', 'sis', 'nutrition', 'electrolytes-hydration', '<h3>SiS GO Electrolyte</h3>
<p><strong>Optimised hydration and energy for endurance performance.</strong></p>
<p>SiS GO Electrolyte combines <strong>rapidly digestible carbohydrates</strong> with essential electrolytes—such as sodium—to support optimal hydration and maintain endurance during exercise. This scientifically formulated drink enhances your body’s ability to absorb water, sustain performance, and reduce the risk of cramp.</p>

<h3><strong>Key Features</strong></h3>
<ul>
<li>
<p><strong>36g carbohydrate per 500ml serving</strong> – Provides a quick, efficient energy source.</p>
</li>
<li>
<p><strong>High sodium content</strong> – Promotes hydration and electrolyte balance.</p>
</li>
<li>
<p><strong>Rapid energy &amp; fluid delivery</strong> – Supports performance during moderate to intense exercise.</p>
</li>
<li>
<p><strong>Easy to mix</strong> – Ideal for training and competition.</p>
</li>
<li>
<p><strong>Vegan-friendly</strong></p>
</li>
</ul>
<p><strong>Contents:</strong> 1.6kg tub<br><strong>BBE:</strong> Minimum 6 months+</p>', array['sisgoelectrolyte16kg/1.png', 'sisgoelectrolyte16kg/2.png', 'sisgoelectrolyte16kg/3.png']::text[], 'new', 3, '2021-08-19'::date, false, false),
  ('sisgoelectrolyte500g', 'SIS Go Electrolyte 500g', 'sis', 'nutrition', 'electrolytes-hydration', '<p>SiS GO Electrolyte contains a blend of an easily digestible and quick supply of carbohydrate as well as electrolytes (such as sodium) that promote optimal hydration.</p>
<p>A combination of energy sources and electrolytes enhance your body''s ability to absorb water during exercise, maintain your endurance performance and protect against cramp. The product is mixed at appropriate concentrations of carbohydrate (36 grams as a 6% solution), sodium (20 mmol/L) and fluid (500ml serving) in order to achieve the combined aims of energy and hydration.</p>
<ul>
<li>36 grams of carbohydrate per 500ml serving</li>
<li>High in sodium to promote hydration</li>
<li>Delivers energy and fluid fast</li>
<li>Contents: 500g Tub</li>
<li>Suitable For Vegans.</li>
<li>BBE: Minimum 6 Months+</li>
</ul>', array['sisgoelectrolyte500g/1.webp', 'sisgoelectrolyte500g/2.webp', 'sisgoelectrolyte500g/3.webp']::text[], 'new', 3, '2021-08-19'::date, false, false),
  ('sis-hydro-20-pack', 'SIS Hydro + 20 Pack', 'sis', 'nutrition', 'electrolytes-hydration', '<h3>PERFORMANCE HYDRATION</h3>

<p>HYDRO+ is an electrolyte drink mix contributing to your body’s electrolytes to support performance during exercise or daily activities. Performance hydration for every athlete.</p>

<h4>5 KEY ELECTROLYTES</h4>
<p>Each 4.1g serving contains Calcium, Magnesium, Chloride, Sodium and Potassium</p>

<h4>VITAMIN C</h4>
<p>Supports normal energy-yielding metabolism1</p>

<h4>VITAMIN B6 &amp; B12</h4>
<p>To help reduce tiredness and fatigue2</p>

<h4>ON-THE-GO HYDRATION</h4>
<p>Convenient single-serve sachets for those with an active lifestyle always on the go</p>
<h3>ESSENTIAL ELECTROLYTES</h3>

<p>Featuring five key electrolytes and three essential vitamins blended to create a scientifically supportive dose for optimal hydration. Packaged in convenient single use sachets, HYDRO+ fits easily in your bag or pocket, the perfect electrolyte drink for those with an active lifestyle always on the go.</p>

<p>1576mg of electrolytes per 4.1g serving to support effective rehydration.</p>', array['sis-hydro-20-pack/1.png']::text[], 'new', 2, '2025-05-07'::date, false, false),
  ('hydro-plus-6-pack', 'SiS Hydro + 6 pack', 'sis', 'nutrition', 'electrolytes-hydration', '<h3>October best before </h3>
<h3></h3>
<h3>PERFORMANCE HYDRATION</h3>

<p>HYDRO+ is an electrolyte drink mix contributing to your body’s electrolytes to support performance during exercise or daily activities. Performance hydration for every athlete.</p>

<h4>5 KEY ELECTROLYTES</h4>
<p>Each 4.1g serving contains Calcium, Magnesium, Chloride, Sodium and Potassium</p>

<h4>VITAMIN C</h4>
<p>Supports normal energy-yielding metabolism1</p>

<h4>VITAMIN B6 &amp; B12</h4>
<p>To help reduce tiredness and fatigue2</p>

<h4>ON-THE-GO HYDRATION</h4>
<p>Convenient single-serve sachets for those with an active lifestyle always on the go</p>
<h3>ESSENTIAL ELECTROLYTES</h3>

<p>Featuring five key electrolytes and three essential vitamins blended to create a scientifically supportive dose for optimal hydration. Packaged in convenient single use sachets, HYDRO+ fits easily in your bag or pocket, the perfect electrolyte drink for those with an active lifestyle always on the go.</p>

<p>1576mg of electrolytes per 4.1g serving to support effective rehydration.</p>', array['hydro-plus-6-pack/1.jpg']::text[], 'new', 2, '2025-05-07'::date, false, false),
  ('sishydrotabs', 'SIS Hydro Tabs', 'sis', 'nutrition', 'electrolytes-hydration', '<p><strong>Description:</strong></p>
<p>SiS GO Hydro is designed to ensure you are effectively hydrated to produce your best performance. As an effervescent tablet that readily dissolves in plain water, it represents a highly practical approach (simply drop one tablet in your 500 ml water bottle) without the calories.</p>
<p><strong>Benefits of the SiS GO Hydro</strong><br>During moderate to intense exercise, we can produce up to 2 litres of sweat per hour depending on the environmental conditions. Sweat contains vital electrolytes, including sodium. Sodium is the most important electrolyte as it helps to stimulate thirst, improve taste and promote absorption and retention.If fluid and electrolyte losses are not replaced, dehydration occurs which is a major cause of fatigue. Once dehydrated, our body temperature rises; our heart rate increases; we deplete carbohydrate stores quicker and we perceive the exercise to be more intense. SiS GO Hydro can help prevent this, with the aim not to lose more than 2% of our body mass.</p>
<p><strong>Directions For Use</strong><br>Add 1 SiS GO Hydro tablet to 500ml of water and let it dissolve. Once prepared consume within 24 hours. Do not consume more than 4 tablets per day. Simply drop in water to provide a high electrolyte drink</p>
<ul>
<li>High in sodium to help promote hydration</li>
<li>When hydration is required without the added calories</li>
<li>Contents: 20 x 4.3g Tablets</li>
<li>Suitable For Vegans</li>
<li>BBE: Minimum 3 Months+</li>
</ul>', array['sishydrotabs/1.webp', 'sishydrotabs/2.webp', 'sishydrotabs/3.webp', 'sishydrotabs/4.webp', 'sishydrotabs/5.webp']::text[], 'new', 7, '2021-08-19'::date, false, false),
  ('styrkr-mix-mix-blood-orange-dual-carb-drink-mix', 'Styrkr Mix MIX+ Blood Orange Dual-Carb Drink Mix', 'styrkr', 'nutrition', 'electrolytes-hydration', '<h4>Engineered for daily use</h4>
<p>MIX+ Blood Orange delivers fast-acting, dual-source carbohydrates and essential electrolytes in a refreshing citrus blend, formulated to fuel performance and support recovery. A daily training aid, optimal for early-risers, because training fasted or getting breakfast onboard isn’t always an option. Take MIX+ before or during your workout, adjusting the serving based on your personal preference.<br></p>
<ul>
<li>Delivers 30g of dual-carbs per serving, in an optimal 1:0.8 ratio that''s gentle on the stomach.<br>
</li>
<li>Added L-Glutamine</li>
<li>Perfectly mimics the ratio of electrolytes in human sweat with added sodium, for rapid rehydration and preventing muscle cramps.</li>
<li>Developed by professional sports nutritionists and tested by athletes.</li>
<li>
<b></b>Informed Sport certified.</li>
<li>100% vegan-friendly, manufactured in the UK</li>
</ul>', array['styrkr-mix-mix-blood-orange-dual-carb-drink-mix/1.webp', 'styrkr-mix-mix-blood-orange-dual-carb-drink-mix/2.webp', 'styrkr-mix-mix-blood-orange-dual-carb-drink-mix/3.webp', 'styrkr-mix-mix-blood-orange-dual-carb-drink-mix/4.webp']::text[], 'new', 2, '2025-11-18'::date, false, false),
  ('styrkr-mix-mix-lime-mint-dual-carb-drink-mix', 'Styrkr Mix MIX+ Lime & Mint Dual-Carb Drink Mix', 'styrkr', 'nutrition', 'electrolytes-hydration', '<h4>Engineered for daily use</h4>
<p>MIX+ Blood Orange delivers fast-acting, dual-source carbohydrates and essential electrolytes in a refreshing citrus blend, formulated to fuel performance and support recovery. A daily training aid, optimal for early-risers, because training fasted or getting breakfast onboard isn’t always an option. Take MIX+ before or during your workout, adjusting the serving based on your personal preference.<br></p>
<ul>
<li>Delivers 30g of dual-carbs per serving, in an optimal 1:0.8 ratio that''s gentle on the stomach.<br>
</li>
<li>Added L-Glutamine</li>
<li>Perfectly mimics the ratio of electrolytes in human sweat with added sodium, for rapid rehydration and preventing muscle cramps.</li>
<li>Developed by professional sports nutritionists and tested by athletes.</li>
<li>
<b></b>Informed Sport certified.</li>
<li>100% vegan-friendly, manufactured in the UK</li>
</ul>', array['styrkr-mix-mix-lime-mint-dual-carb-drink-mix/1.webp', 'styrkr-mix-mix-lime-mint-dual-carb-drink-mix/2.webp', 'styrkr-mix-mix-lime-mint-dual-carb-drink-mix/3.webp']::text[], 'new', 1, '2025-11-18'::date, false, false),
  ('styrkr-mix-mix-pink-graprefruit-dual-carb-drink-mix', 'Styrkr Mix MIX+ Pink Graprefruit Dual-Carb Drink Mix', 'styrkr', 'nutrition', 'electrolytes-hydration', '<h4>Engineered for daily use</h4>
<p>MIX+ Blood Orange delivers fast-acting, dual-source carbohydrates and essential electrolytes in a refreshing citrus blend, formulated to fuel performance and support recovery. A daily training aid, optimal for early-risers, because training fasted or getting breakfast onboard isn’t always an option. Take MIX+ before or during your workout, adjusting the serving based on your personal preference.<br></p>
<ul>
<li>Delivers 30g of dual-carbs per serving, in an optimal 1:0.8 ratio that''s gentle on the stomach.<br>
</li>
<li>Added L-Glutamine</li>
<li>Perfectly mimics the ratio of electrolytes in human sweat with added sodium, for rapid rehydration and preventing muscle cramps.</li>
<li>Developed by professional sports nutritionists and tested by athletes.</li>
<li>
<b></b>Informed Sport certified.</li>
<li>100% vegan-friendly, manufactured in the UK</li>
</ul>', array['styrkr-mix-mix-pink-graprefruit-dual-carb-drink-mix/1.webp', 'styrkr-mix-mix-pink-graprefruit-dual-carb-drink-mix/2.webp', 'styrkr-mix-mix-pink-graprefruit-dual-carb-drink-mix/3.webp']::text[], 'new', 1, '2025-11-18'::date, false, false),
  ('styrkr-mix-mix60-dual-carb-energy-drink-mix', 'Styrkr Mix MIX60 Dual-Carb Energy Drink Mix', 'styrkr', 'nutrition', 'electrolytes-hydration', '<p><b>Athlete-approved endurance sports fuel</b></p>
<p>MIX60 is an advanced dual-carb drink mix that gives you the edge by delivering maximum energy when you need it most.</p>
<ul>
<li>
Supplies maximum carbohydrates (60g) for maximum energy</li>
<li>
Contains electrolytes to continually rehydrate and revitalise</li>
<li>
Uses L-glutamine to help fight fatigue and improve performance</li>
<li>
Gentle on the stomach, pH-balanced with no unnecessary preservatives</li>
<li>
100% vegan-friendly, manufactured in the UK</li>
<li>
Kind to your pocket, tough on your PBs</li>
</ul>
<p><br></p>
<p><b>Endurance Fuel, Backed by Science.</b></p>
<p>All Styrkr drinks, gels and salts have been specifically engineered to produce unique effects in the body – specifically, the bloodstream – that reduce overall fatigue and energy expenditure while maintaining power and increasing output throughout endurance activity.</p>
<p><br></p>
<p><b>Complete endurance fuel</b></p>
<p>We don’t just give you the most effective carbohydrate fuelling, our active ingredients like L-glutamine reduce the accumulation of blood ammonia concentration during exercise, lessening fatigue and boosting your performance.</p>
<p><br></p>
<p><b>Perfect carb ratio</b></p>
<p>Styrkr drink mixes and gels contain two transportable carbohydrates – maltodextrin and fructose – at a ratio of 1:0.8 to improve the exogenous carbohydrate oxidation rate and cause the least amount of gut discomfort compared to ratios of 1:1.25 and 2:1</p>
<p><br></p>
<p><b>Affordable</b></p>
<p>Our products hit your PBs hard, not your pockets. FACT: Styrkr drink mixes, gels and salts costs less per unit than our dual-carb competitors. Our products deliver maximum carbohydrates in an industry leading price to weight ratio.</p>
<p><br></p>
<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>
<p><br></p>
<p><b>A balance of carbs, vitamins and electrolytes to give your body all it needs to perform.</b></p>
<p>All Styrkr products have been made specifically with athletes in mind and tested in the toughest conditions before going to market. Our gels and drink mixes give you everything you need to perform at your best and nothing that you don’t.</p>
<p><br></p>
<p><b>How many carbs do I need?</b></p>
<p>During intense activity carbohydrates are your body’s primary energy source and more can be absorbed per hour when they come from dual sources. As a rule of thumb you should be aiming for around 30-60g of carbs per hour for activities of 1-3 hours and 90-120g of carbs per hour for any activities over four hours. This will of course depend on your individual size and weight. We recommend training your gut and using our Fuel-Tool to help calculate a fuelling guide for your needs.</p>
<p><br></p>
<p><b>What goes in to Styrkr MIX60</b></p>
<p><b>60g of carbohydrates </b>- The optimal amount of carbs that can be utilised by an endurance athlete per hour.</p>
<p><b>1:0.8 ratio of maltodextrin : fructose</b> - Increases gastric emptying time and absorption rates to reduce gastric irritation.  </p>
<p><b>2g of L-Glutamine</b> - Reduces the accumulation of ammonia in the blood, preventing fatigue.</p>
<p><b>Added Electrolytes</b> - Help to maintain bodily water preventing cramps and dehydration.</p>
<p><b>Unflavoured</b> - Helps to reduce flavour fatigue for prolonged endurance activities.</p>
<p><b>Vegan and Gluten free formulation </b>- 100% Vegan and gluten free so you never have to compromise your diet.</p>
<p><br></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (65g)</p>
</td>
</tr>
<tr>
<td>
<p>Energy</p>
</td>
<td>
<p>394kcal (1649KJ)</p>
</td>
<td>
<p>256kcal (1075KJ)</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrates (g)</p>
</td>
<td>
<p>92.3g</p>
</td>
<td>
<p>60g</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>41g</p>
</td>
<td>
<p>27g</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0.21g</p>
</td>
<td>
<p>0.14g</p>
</td>
</tr>
</tbody>
</table>
<p><br></p>
<p><b>MIX60 Full ingredients</b>: Maltodextrin, Fructose, L-Glutamine, Sodium (Sodium Chloride), Potassium (Potassium Chloride), Magnesium (Trimagnesium Citrate).</p>
<p>Caution: May contain traces of nuts.</p>
<p><br></p>
<p><b>Fuelling the every day athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We Listen to what our customers have to say and always strive to create the higest quality products that really work.</p>
<p><br></p>
<p>UK Manufactured</p>
<p><br></p>
<p>Non-GMO</p>
<p><br></p>
<p>High Quality Ingredients</p>
<p><br></p>', array['styrkr-mix-mix60-dual-carb-energy-drink-mix/1.jpg', 'styrkr-mix-mix60-dual-carb-energy-drink-mix/2.png', 'styrkr-mix-mix60-dual-carb-energy-drink-mix/3.png']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-mix-mix90-dual-carb-energy-drink-mix', 'Styrkr Mix MIX90 Dual-Carb Energy Drink Mix', 'styrkr', 'nutrition', 'electrolytes-hydration', '<p>MIX90 is an advanced dual-carb drink mix that gives you the edge by delivering maximum energy when you need it most.</p>

<ul>
<li>
Supplies maximum carbohydrates (90g) for maximum energy</li>
<li>
Contains electrolytes to continually rehydrate and revitalise</li>
<li>
Uses L-glutamine to help fight fatigue and improve performance</li>
<li>
Gentle on the stomach, pH-balanced with no unnecessary preservatives</li>
<li>
100% vegan-friendly, manufactured in the UK</li>
<li>
Kind to your pocket, tough on your PBs</li>
</ul>

<p><b>Endurance Fuel, Backed by Science.</b></p>
<p>All Styrkr drinks, gels and salts have been specifically engineered to produce unique effects in the body – specifically, the bloodstream – that reduce overall fatigue and energy expenditure while maintaining power and increasing output throughout endurance activity.</p>

<p><b>Complete endurance fuel</b></p>
<p>We don’t just give you the most effective carbohydrate fuelling, our active ingredients like L-glutamine reduce the accumulation of blood ammonia concentration during exercise, lessening fatigue and boosting your performance.</p>

<p><b>Perfect carb ratio</b></p>
<p>Styrkr drink mixes and gels contain two transportable carbohydrates – maltodextrin and fructose – at a ratio of 1:0.8 to improve the exogenous carbohydrate oxidation rate and cause the least amount of gut discomfort compared to ratios of 1:1.25 and 2:1</p>

<p><b>Affordable</b></p>
<p>Our products hit your PBs hard, not your pockets. FACT: Styrkr drink mixes, gels and salts costs less per unit than our dual-carb competitors. Our products deliver maximum carbohydrates in an industry leading price to weight ratio.</p>

<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>

<p><b>A balance of carbs, vitamins and electrolytes to give your body all it needs to perform.</b></p>
<p>All Styrkr products have been made specifically with athletes in mind and tested in the toughest conditions before going to market. Our gels and drink mixes give you everything you need to perform at your best and nothing that you don’t.</p>

<p><b>How many carbs do I need?</b></p>
<p>During intense activity carbohydrates are your body’s primary energy source and more can be absorbed per hour when they come from dual sources. As a rule of thumb you should be aiming for around 30-60g of carbs per hour for activities of 1-3 hours and 90-120g of carbs per hour for any activities over four hours. This will of course depend on your individual size and weight. We recommend training your gut and using our Fuel-Tool to help calculate a fuelling guide for your needs.</p>

<p><b>What goes in to Styrkr MIX90</b></p>
<p><b>90g of carbohydrates</b></p>
<p>The maximum amount of carbohydrates that can be utilised by an advanced endurance athlete per hour.</p>
<p><b>1:0.8 ratio of maltodextrin : fructose </b></p>
<p>Increases gastric emptying time and absorption rates to reduce gastric irritation.  </p>
<p><b>3g of L-Glutamine</b></p>
<p>Reduces the accumulation of ammonia in the blood, preventing fatigue.</p>
<p><b>Added Electrolytes</b></p>
<p>Help to maintain bodily water preventing cramps and dehydration.</p>
<p><b>Unflavoured</b></p>
<p>Helps to reduce flavour fatigue for prolonged endurance activities.</p>
<p><b>Vegan and Gluten free formulation</b></p>
<p>100% Vegan and gluten free so you never have to compromise your diet.</p>

<table>
<tbody>
<tr>
<td>
<p>Nutritional Value</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (95g)</p>
</td>
</tr>
<tr>
<td>
<p>Energy</p>
</td>
<td>
<p>1637 kJ<br>391 KCAL</p>
</td>
<td>
<p>1555 kJ<br>372 KCAL</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrates (g)</p>
</td>
<td>
<p>95g</p>
</td>
<td>
<p>90g</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>42.6g</p>
</td>
<td>
<p>40.5g</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0.21g</p>
</td>
<td>
<p>0.2g</p>
</td>
</tr>
</tbody>
</table>

<p><b>Full ingredients</b>: Maltodextrin, Fructose, L-Glutamine, Sodium (Sodium Chloride), Potassium (Potassium Chloride), Magnesium (Trimagnesium Citrate)</p>
<p>Caution: May contain traces of nuts.</p>

<p><b>Fuelling the every day athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We Listen to what our customers have to say and always strive to create the higest quality products that really work.</p>

<p>UK Manufactured</p>

<p>Non-GMO</p>

<p>High Quality Ingredients</p>', array['styrkr-mix-mix90-dual-carb-energy-drink-mix/1.jpg', 'styrkr-mix-mix90-dual-carb-energy-drink-mix/2.png', 'styrkr-mix-mix90-dual-carb-energy-drink-mix/3.png']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-mix90-caffeine-dual-carb-energy-drink-mix', 'Styrkr MIX90 Caffeine Dual-Carb Energy Drink Mix', 'styrkr', 'nutrition', 'electrolytes-hydration', '<p><b>Athlete-approved endurance sports fuel</b></p>
<p>MIX90 is an advanced dual-carb drink mix that gives you the edge by delivering maximum energy and a caffeine bump when you need it most.</p>
<ul>
<li>
Supplies maximum carbohydrates (90g) for maximum energy</li>
<li>
Contains electrolytes to continually rehydrate and revitalise</li>
<li>
Uses L-glutamine to help fight fatigue and improve performance</li>
<li>
Provides a 150mg caffeine boost to sharpen focus and reduce perceived effort</li>
<li>
Gentle on the stomach, pH-balanced with no unnecessary preservatives</li>
<li>
100% vegan-friendly, manufactured in the UK</li>
<li>
Kind to your pocket, tough on your PBs</li>
</ul>
<p><b></b><br></p>
<p><b>Endurance Fuel, Backed by Science.</b></p>
<p>All Styrkr drinks, gels and salts have been specifically engineered to produce unique effects in the body – specifically, the bloodstream – that reduce overall fatigue and energy expenditure while maintaining power and increasing output throughout endurance activity.</p>

<p><b>Complete endurance fuel</b></p>
<p>We don’t just give you the most effective carbohydrate fuelling, our active ingredients like L-glutamine reduce the accumulation of blood ammonia concentration during exercise, lessening fatigue and boosting your performance.</p>

<p><b>Perfect carb ratio</b></p>
<p>Styrkr drink mixes and gels contain two transportable carbohydrates – maltodextrin and fructose – at a ratio of 1:0.8 to improve the exogenous carbohydrate oxidation rate and cause the least amount of gut discomfort compared to ratios of 1:1.25 and 2:1</p>

<p><b>Affordable</b></p>
<p>Our products hit your PBs hard, not your pockets. FACT: Styrkr drink mixes, gels and salts costs less per unit than our dual-carb competitors. Our products deliver maximum carbohydrates in an industry leading price to weight ratio.</p>

<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>

<p><br></p>
<p><b>A balance of carbs, vitamins and electrolytes to give your body all it needs to perform.</b></p>
<p>All Styrkr products have been made specifically with athletes in mind and tested in the toughest conditions before going to market. Our gels and drink mixes give you everything you need to perform at your best and nothing that you don’t.</p>
<p><br></p>
<p><b>How many carbs do I need?</b></p>
<p>During intense activity carbohydrates are your body’s primary energy source and more can be absorbed per hour when they come from dual sources. As a rule of thumb you should be aiming for around 30-60g of carbs per hour for activities of 1-3 hours and 90-120g of carbs per hour for any activities over four hours. This will of course depend on your individual size and weight. We recommend training your gut and using our Fuel-Tool to help calculate a fuelling guide for your needs.</p>
<p><br></p>
<p><br></p>
<p><b>What goes in to Styrkr MIX90 Caffeine</b></p>
<p><b>90g of carbohydrates </b>- The maximum amount of carbohydrates that can be utilised by an advanced endurance athlete per hour.</p>
<p><b>1:0.8 ratio of maltodextrin : fructose</b> - Increases gastric emptying time and absorption rates to reduce gastric irritation. </p>
<p><b>3g of L-Glutamine</b> - Reduces the accumulation of ammonia in the blood, preventing fatigue</p>
<p><b>150mg of added caffeine </b>- Increase alertness and reduce perceived pain and effort during exercise.</p>
<p><b>Added Electrolytes </b>-<b> </b>Help to maintain bodily water preventing cramps and dehydration.</p>
<p><b>Unflavoured </b>-<b> </b>Helps to reduce flavour fatigue for prolonged endurance activities.</p>
<p><br></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (95g)</p>
</td>
</tr>
<tr>
<td>
<p>Energy</p>
</td>
<td>
<p>1637 kJ<br>
391 KCAL</p>
</td>
<td>
<p>1555 kJ<br>
372 KCAL</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrates (g)</p>
</td>
<td>
<p>95g</p>
</td>
<td>
<p>90g</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>42.6g</p>
</td>
<td>
<p>40.5g</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0.21g</p>
</td>
<td>
<p>0.2g</p>
</td>
</tr>
</tbody>
</table>
<p><br></p>
<p>Full ingredients: Maltodextrin, Fructose, L-Glutamine, Sodium (Sodium Chloride), Potassium (Potassium Chloride), Caffeine, Magnesium (Trimagnesium Citrate).</p>
<p>Caution: May contain traces of nuts.</p>
<p><br></p>
<p><b>Fuelling the every day athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We Listen to what our customers have to say and always strive to create the higest quality products that really work.</p>
<p><br></p>
<p>UK Manufactured</p>
<p><br></p>
<p>Non-GMO</p>
<p><br></p>
<p>High Quality Ingredients</p><p><br></p>', array['styrkr-mix90-caffeine-dual-carb-energy-drink-mix/1.jpg', 'styrkr-mix90-caffeine-dual-carb-energy-drink-mix/2.jpg', 'styrkr-mix90-caffeine-dual-carb-energy-drink-mix/3.png']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-slt07-quad-blend-hypernotic-effervescent-electrol', 'Styrkr SLT07 Quad-Blend Hypernotic Effervescent Electrolyte Tablets Mild Citrus', 'styrkr', 'nutrition', 'electrolytes-hydration', '<p>SLT07: Elevate your performance with our new Hypotonic 500 formula, now featuring 500mg sodium. Tailored for endurance athletes, it''s your year-round choice for peak performance, even during winter training.</p><p><br></p><ul>
<li>Perfectly mimics the ratio of electrolytes in human sweat with added sodium </li>
<li>Ensures rapid rehydration and prevents muscle cramping</li>
<li>Quick release and fastest absorbing formulation </li>
<li>Developed by professional sports nutritionists and tested by athletes</li>
<li>Allergen-Free, Gluten-free, and 100% vegan</li>
<li>Made in the UK</li>
</ul><p><strong><br></strong></p><p><strong>What goes into SLT07 Hydration Tablets?</strong></p>
<strong><br></strong><strong></strong>

<strong>The perfect hypotonic formulation </strong>-<strong> </strong>sodium 500mg, potassium 100mg, magnesium 25mg, and calcium 15mg
<strong>Quad-blend electrolytes </strong>- Our ‘quad-blend’ electrolyte mix perfectly mimics the ratio of electrolytes in sweat with added sodium for endurance sports.
<strong>Gentle on the stomach </strong>- Once dissolved, the pH of the final solution transits quicker from the stomach to the small intestine reducing any irritation.
<strong>No added Sugar </strong>- No added sugar and no unnecessary preservatives.

<strong>Vegan and gluten-free </strong>- All ingredients in SLT07 are vegan, non-GMO, gluten-free and responsibly sourced.
 

<table>

<tbody>
<tr>
<td>Nutritional Value</td>
<td>Per 100g</td>
<td>Per Serving (7.2g)</td>
<td>%RI</td>
</tr>
<tr>
<td>Energy (kJ)</td>
<td>651</td>
<td>47</td>
<td>0.5</td>
</tr>
<tr>
<td>Energy (KCAL)</td>
<td>155</td>
<td>11</td>
<td>0.5</td>
</tr>
<tr>
<td>Fat (g)</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr>
<td>Saturated (g)</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr>
<td>Carbohydrate (g)</td>
<td>7.7</td>
<td>0.55</td>
<td>0.2</td>
</tr>
<tr>
<td>Sugars (g)</td>
<td>0.3</td>
<td>&lt; 0.1</td>
<td>&lt; 0.1</td>
</tr>
<tr>
<td>Fibre (g)</td>
<td>2.7</td>
<td>0.2</td>
<td>-</td>
</tr>
<tr>
<td>Protein (g)</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr>
<td>Salt (g)</td>
<td>35.2</td>
<td>2.53</td>
<td>42.2</td>
</tr>
</tbody>
</table> <br><strong>Full ingredients:</strong> Acid (Citric Acid), Sodium Hydrogen Carbonate, Sodium Carbonate, Acid (Malic Acid), Humectant (Sorbitol), Potassium Hydrogen Carbonate, Inulin, Magnesium Oxide, Tricalcium Phosphate, Sweetener (Sucralose), Flavourings.

<p><strong></strong></p>

<p><strong></strong></p>

<p><strong></strong></p>

<p><strong></strong></p>

<p><strong></strong></p>

<p><strong></strong></p>

<p><strong></strong></p>

<p><strong></strong></p>

<strong></strong><br>
<strong>Powerful hydration your body needs</strong><strong>More efficient hydration</strong>

SLT07 rapidly replaces the electrolytes lost in sweat, meaning you can perform at your peak for longer.

 

<p><strong>Improved bioavailability</strong></p>
<p>Bioavailability is the rate that something is absorbed into the bloodstream to elicit its effect on the target area of the body. Effervescent tablets have a high bioavailability and high absorption rates.</p>

 

<p><strong>Quad-Blend hypotonic</strong></p>
<p>Designed to be used as a supplement to help restore electrolyte balance in the body after intense physical activity and dehydration.</p>

 

<p><strong>Increases water intake</strong></p>
<p>Helping athletes meet their daily water consumption goals, effervescent tablets can be a useful tool for promoting overall health and wellness.</p>

 

<p><strong>Practical and on-the-go</strong></p>
<p>Effervescent tablets provide a convenient and versatile option for people who dislike or struggle to swallow tablets, as they can be used anywhere and only require water.</p>

 

<p><strong>Vegan-Friendly</strong></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>

 

<p><strong>Not just another salt</strong></p>
<p>SLT07 perfectly mimics the ratio of electrolytes in sweat with added sodium for endurance sports. The result? You can keep pushing hard all the way to your finish line.</p>
<p><strong><br></strong></p>
<p><strong>Stay salty, stay strong</strong></p>
<p>Amidst vigorous exercise and hot conditions, sweat composition can differ among individuals. For those seeking lower sodium intake, our 500mg version is the go-to, particularly for winter training.</p>
<p><strong><br></strong></p>
<p><strong>Effervescence done right</strong></p>
<p>Not only are our rehydration tablets developed by professional sports nutritionists and tested by athletes to make sure they do what we say they do, all SLT07 ingredients are vegan, non-GMO, gluten-free and responsibly sourced.</p>', array['styrkr-slt07-quad-blend-hypernotic-effervescent-electrol/1.jpg', 'styrkr-slt07-quad-blend-hypernotic-effervescent-electrol/2.png', 'styrkr-slt07-quad-blend-hypernotic-effervescent-electrol/3.png', 'styrkr-slt07-quad-blend-hypernotic-effervescent-electrol/4.jpg']::text[], 'new', 1, '2025-04-08'::date, false, false),

  -- ---- nutrition · energy-bars ----
  ('bonk-breaker-apple-cinnamon-peanut-butter-protein-energy', 'Bonk Breaker Apple Cinnamon & Peanut Butter Protein + Energy Bars', 'bonk-breaker', 'nutrition', 'energy-bars', '<h3></h3>
<p>Remember your grandma’s signature apple pie recipe? Well grandma’s been lifting, and now’s your chance to return the favor by putting her onto our NEW Bonk Breaker Apple Cinnamon &amp; Peanut Butter Bars. Crafted with a layer of apple cinnamon filling (made from real fruit!) surrounded by peanut butter and gluten-free oats, this is a generational new player in the protein bar game. </p>

<p>With 11 grams of plant-based protein and a 3:1 carbs-to-protein ratio, the Apple Cinnamon &amp; Peanut Butter Protein Bar delivers all the critical nutrients and in an irresistible flavor. Oh, it’s also Certified Gluten Free &amp; Dairy Free. 3</p>

<p><b>Ingredients: </b>Dry Roasted Peanuts, Brown Rice Syrup, Gluten-Free Whole Grain Oats, Apple Cinnamon Filling (Cane Syrup, Sugar, Glycerin, Apple Powder, Rice Starch, Water, Apple Juice Concentrate, Natural Flavor, Pectin, Cinnamon, Citric Acid, Locust Bean Gum, Annatto Extract and Turmeric for Color), Rice Protein, Honey, Sea Salt. </p>
<p>Allergens: Contains: Peanuts. Produced in a facility that also uses Tree Nuts, Wheat, Soy, Milk, Eggs and Sesame. </p>
<p><br></p>
<p><b>Nutrition Facts</b></p>
<p>Serving Size 1 Bar (62g)</p>

<p>1 serving per container</p>
<p><br></p>
<p>Amount Per Serving</p>
<p>Calories 260	 </p>
<p>% Daily Value*</p>
<p>Total Fat 11g	14%</p>
<p>Saturated Fat 1.5g	8%</p>
<p>Trans Fat 0g	</p>
<p>Cholesterol 0mg	0%</p>
<p>Sodium 45mg	2%</p>
<p>Total Carbohydrate 33g	12%</p>
<p>Dietary Fiber 3g	11%</p>
<p>Sugars 18g	</p>
<p>Protein 11g	</p>
<p>Potassium 2%	Vitamin C 0%</p>
<p>Calcium 2%	Iron 10%</p>
<p>* Percent Daily Values are based on a 2,000 calorie diet. Your daily values may be higher or lower depending on your calorie needs:</p>

<p><b><br>What is Bonk Breaker Nutrition? </b></p><p><br></p><p>Bonk Breaker Nutrition products are built on real food ingredients, designed to be absorbed and processed efficiently. Our product line includes Energy Bars for fast- and slow-burning energy, Plant-Based Protein Bars and Collagen Protein Bars for recovery and muscle repair, and Energy Chews for quick energy. </p><p><br></p><p><b>Are Bonk Breaker products gluten free? </b></p><p><br></p><p>All Bonk Breaker bars are certified gluten-free via the Gluten-Free Certification Organization (GFCO). Every flavor, from every batch, undergoes testing to ensure we meet the GFCO requirements. Bonk Breaker bars are made in a facility that processes wheat. </p><p><br></p><p>Bonk Breaker chews are made in an allergen-free facility making them naturally gluten-free.  </p><p><br></p><p><b>Are there Bonk Breaker bars that do not contain nuts? </b></p><p><br></p><p>The Apple Pie Energy Bar does not contain nuts in the ingredients. Please note that Bonk Breaker bars are made in a facility that processes tree nuts and peanuts. </p><p><br></p><p><b>Are Bonk Breaker products dairy-free? </b></p><p><br></p><p>All Bonk Breaker products are dairy-free except for Cookies &amp; Cream Bar and our Collagen Protein Bars. All Bonk Breaker bars are made in a facility that also processes dairy. </p><p><br></p><p><b>Are Bonk Breaker products soy-free? </b></p><p><br></p><p>All Bonk Breaker bars are soy-free except for two products that contain soy lecithin in chocolate. These products are Cookies &amp; Cream and Almond Cherry Chunk. All Bonk Breaker bars are made in a facility that also processes soy. All Energy Chews are soy-free. </p><p><br></p><p><b>How does Bonk Breaker avoid cross-contamination with allergens? </b></p><p><br></p><p>Our manufacturing facilities follow strict regulations and product safety programs, which include regularly conducting U.S. FDA-grade cleanings as well as testing to prevent cross-contamination with allergens. </p><p><br></p><p><b>Are Bonk Breaker products vegan? </b></p><p><br></p><p>Our Cookies &amp; Cream Energy Bars, Double Fudge Brownie Collagen Bars, and Peanut Butter &amp; Dark Chocolate Chip Collagen Bars contain dairy. All other Bonk Breaker bars contain honey, except the Double Fudge Brownie Collagen Bars. Bonk Breaker Energy Chews are made with 100% plant-based ingredients and are suitable for a vegan diet.</p><p><br></p><p><b>Are Bonk Breaker products organic? What about non-GMO?  </b></p><p><br></p><p>Bonk Breaker is made with real food ingredients such as nuts, honey, and gluten-free oats. We are committed to sourcing the highest quality ingredients, and to our sustainability practices, but are not certified Organic or certified Non-GMO. </p><p><br></p><p><b>Why do Bonk Breaker plant-based protein bars have added sugars?</b></p><p><br></p><p>Bonk Breaker supports active lifestyles that require a different approach to fueling. A well-fueled athlete is less likely to "bonk," and we designed our plant-based protein bars to prioritize:</p><p><br></p><p><b>Recovery: </b>Our protein bars deliver a 3:1 carbohydrate-to-protein ratio, which has been scientifically validated to support recovery in the 30-minute post-workout/event window. In fact, when you compare Bonk Breaker''s plant-based protein bars to 8oz of chocolate milk (roughly 23g carbs/22g sugar and 8g protein), we hit the 3:1 ratio target while being slightly lower in sugar.</p><p><br></p><p><b>On-the-go lifestyles:</b> Plant-based protein bars are a great choice for activities like hiking or a gym session — or as a quick meal before your next workout if you''re pressed for time. They deliver a balance of high glycemic honey and low glycemic brown rice syrup to provide a steady stream of energy vs. a spike, especially when combined with plant protein.</p>', array['bonk-breaker-apple-cinnamon-peanut-butter-protein-energy/1.jpg', 'bonk-breaker-apple-cinnamon-peanut-butter-protein-energy/2.jpg', 'bonk-breaker-apple-cinnamon-peanut-butter-protein-energy/3.jpg', 'bonk-breaker-apple-cinnamon-peanut-butter-protein-energy/4.jpg', 'bonk-breaker-apple-cinnamon-peanut-butter-protein-energy/5.jpg']::text[], 'new', 0, '2025-05-21'::date, false, false),
  ('bonk-breaker-peanut-butter-jelly-energy-bars', 'Bonk Breaker Peanut Butter & Jelly Energy Bars', 'bonk-breaker', 'nutrition', 'energy-bars', '<p><strong>Why We Love It:</strong> This is the original Bonk Breaker bar, a classic PB&amp;J combo delivering a burst of nostalgic flavour. Crafted with peanuts, oats and strawberry jam, the bar provides easily digestible simple carbs for quick energy, complemented by healthy fats to sustain energy levels without the risk of crashing.</p><p><br></p><p><strong>Talk Nerdy To Me:</strong> Bite into the Bonk Breaker Peanut Butter &amp; Jelly Energy Bar to receive a sustained energy boost with 36g of carbohydrates and support your recovery with 8g of complete protein. Incorporate a Bonk Breaker Energy Bar into your nutrition plan for your upcoming adventure to steer clear of energy depletion.</p><p><strong><br></strong></p><p><strong>FEATURES:</strong> • 260 Calories per Bar • 35 g Carbohydrates (19 g Total Sugars) • 8 g of Plant-Based Protein • 4:1 Carb-to-Protein Ratio • Plant-Based (contains honey) • First ingredient is Dry Roasted Peanuts • 45 mg Sodium • 58 mg Potassium • Certified Gluten-Free • Dairy-Free • No Artificial Ingredients or Colors • Manufactured in the USA</p><p><strong><br></strong></p><p><strong>INGREDIENTS:</strong> Dry Roasted Peanuts, Brown Rice Syrup, Gluten-Free Whole Grain Oats, Strawberry Filling (Organic Evaporated Cane Syrup, Naturally Milled Sugar, Glycerin, Fruit Juice Concentrate (Pineapple, Peach, Apple and/or Pear), Apple Powder, Organic Rice Starch, Natural Flavors, Strawberries, Water, Pectin, Citric Acid, Locust Bean Gum, Red Cabbage Extract and Annatto Extract for Color), Medium Grain Brown Fine Rice Flour (Medium Grain Rice and Stabilized Rice Bran), Rice Protein, Honey, Sea Salt. </p><p><strong><br></strong></p><p><strong>Contains:</strong> Peanuts. </p><p>Produced in a facility that also uses Tree Nuts, Wheat, Soy, Milk, Eggs, and Sesame. </p><p><strong><br></strong></p><p><strong>SUPPLEMENTAL INFORMATION: </strong><em>Before, During, or After: </em>With a 4:1 carbs-to-protein ratio, this bar is a great pre-workout snack or post-workout recovery option. </p><p><em><br></em></p><p><em>Bonk Breaker Philosophy: </em>The name Bonk Breaker comes from a simple philosophy: A well-fueled athlete is less likely to hit the wall (AKA “bonk”), and great-tasting nutrition is key to fueling enough. We stick to gluten-free, real food ingredients and throwback flavors like Apple Cinnamon and Salted Caramel. No Dryness, Blandness, or Messiness – Guaranteed. </p>', array['bonk-breaker-peanut-butter-jelly-energy-bars/1.webp']::text[], 'new', 0, '2025-05-21'::date, false, false),
  ('bonk-breaker-peanut-butter-jelly-protein-bars', 'Bonk Breaker Peanut Butter & Jelly Protein Bars', 'bonk-breaker', 'nutrition', 'energy-bars', '<p>PB&amp;J Energy + Protein Bars</p>
<p>Did someone say PB and Gains? With 11 grams of protein and the same delicious taste, this is our muscled-up version of our Original PB&amp;J Energy Bar! Packed with peanuts for protein and strawberry jam for carbs, our PB&amp;J Protein Bar is a delicious way to build muscle or stave off the afternoon hanger attack.</p>
<p>With 11 grams of plant-based protein and a 3:1 carbs-to-protein ratio, these bars deliver the protein needed to kick-start muscle recovery, while simple and complex carbs assist in restoring glycogen levels. Certified Gluten Free &amp; Dairy Free.</p>
<p>FEATURES:</p>
<p>• 260 Calories per Bar • 33 g of Carbohydrate • 11 g of Plant-Based Protein • 3:1 Carbs-to-Protein Ratio (optimal for recovery) • First ingredient is Dry Roasted Peanuts • Plant-Based (contains honey) • Certified Gluten-Free • Dairy Free • No Artificial Ingredients or Colors • Manufactured in the USA • Contains Peanuts. Produced in a facility that also uses Tree Nuts, Wheat, Soy, Milk, and Eggs.</p>
<p><strong>SUPPLEMENTAL INFORMATION:</strong></p>
<p>Great Option Post-Workout: With an optimal 3:1 carbs-to-protein ratio, this bar is a great post-workout recovery option. Each bar contains 11 grams of protein to help rebuild muscles and 33 grams of carbs to help restore glycogen levels.</p>
<p>Bonk Breaker Philosophy: The name Bonk Breaker comes from a simple philosophy: A well-fueled athlete is less likely to hit the wall (AKA “bonk”), and great-tasting nutrition is key to fueling enough. We stick to gluten-free, real food ingredients and throwback flavors like Apple Cinnamon and Salted Caramel. No Dryness, Blandness, or Messiness – Guaranteed.</p>', array['bonk-breaker-peanut-butter-jelly-protein-bars/1.webp']::text[], 'new', 0, '2025-05-21'::date, false, false),
  ('bonk-breaker-salted-caramel-peanut-butter-protein-energy', 'Bonk Breaker Salted Caramel & Peanut Butter Protein + Energy Bars', 'bonk-breaker', 'nutrition', 'energy-bars', '<p>When your muscles want protein but your tastebuds want something sweet, meet them in the middle... of this bar. Our NEW Salted Caramel &amp; Peanut Butter Protein Bars deliver a layer of salty sweetness via caramel spread (made from real fruit!) surrounded by a layer of peanut butter and gluten-free whole grain oats. </p><p><br></p><p>With 11 grams of plant-based protein and a 3:1 carbs-to-protein ratio, the Salted Caramel &amp; Peanut Butter Protein Bar delivers all the critical nutrients and the flavor, in the same bar. Oh, it’s also Certified Gluten Free &amp; Dairy Free. </p><p><br></p><p><br></p><p><br></p><p>Nutrition Facts</p><p>Serving Size 1 Bar (62g)</p><p><br></p><p>1 serving per container</p><p><br></p><p>Amount Per Serving</p><p>Calories 260	 </p><p>% Daily Value*</p><p>Total Fat 11g	14%</p><p>Saturated Fat 1.5g	8%</p><p>Trans Fat 0g	</p><p>Cholesterol 0mg	0%</p><p>Sodium 60mg	3%</p><p>Total Carbohydrate 33g	12%</p><p>Dietary Fiber 3g	11%</p><p>Sugars 18g	</p><p>Protein 11g	</p><p>Potassium 2%	Vitamin C 0%</p><p>Calcium 2%	Iron 10%</p><p>* Percent Daily Values are based on a 2,000 calorie diet. Your daily values may be higher or lower depending on your calorie needs:</p><p><br></p><p><br></p><p>Ingredients: Dry Roasted Peanuts, Brown Rice Syrup, Gluten-Free Whole Grain Oats, Salted Caramel Filling (Cane Syrup, Sugar, Glycerin, Rice Starch, Apple Powder, Water, Caramelized Cane Sugar, Natural Flavors, Pectin, Salt, Locust Bean Gum, Citric Acid, Caramel Color), Rice Protein, Honey, Sea Salt. </p><p><br></p><p>Allergens: Contains: Peanuts. Produced in a facility that also uses Tree Nuts, Wheat, Soy, Milk, Eggs and Sesame. </p><p><br></p><p><br></p><p><b>What is Bonk Breaker Nutrition? </b></p><p><br></p><p>Bonk Breaker Nutrition products are built on real food ingredients, designed to be absorbed and processed efficiently. Our product line includes Energy Bars for fast- and slow-burning energy, Plant-Based Protein Bars and Collagen Protein Bars for recovery and muscle repair, and Energy Chews for quick energy. </p><p><br></p><p><b>Are Bonk Breaker products gluten free? </b></p><p><br></p><p>All Bonk Breaker bars are certified gluten-free via the Gluten-Free Certification Organization (GFCO). Every flavor, from every batch, undergoes testing to ensure we meet the GFCO requirements. Bonk Breaker bars are made in a facility that processes wheat. </p><p><br></p><p>Bonk Breaker chews are made in an allergen-free facility making them naturally gluten-free.  </p><p><br></p><p><b>Are there Bonk Breaker bars that do not contain nuts? </b></p><p><br></p><p>The Apple Pie Energy Bar does not contain nuts in the ingredients. Please note that Bonk Breaker bars are made in a facility that processes tree nuts and peanuts. </p><p><br></p><p><b>Are Bonk Breaker products dairy-free? </b></p><p><br></p><p>All Bonk Breaker products are dairy-free except for Cookies &amp; Cream Bar and our Collagen Protein Bars. All Bonk Breaker bars are made in a facility that also processes dairy. </p><p><br></p><p><b>Are Bonk Breaker products soy-free? </b></p><p><br></p><p>All Bonk Breaker bars are soy-free except for two products that contain soy lecithin in chocolate. These products are Cookies &amp; Cream and Almond Cherry Chunk. All Bonk Breaker bars are made in a facility that also processes soy. All Energy Chews are soy-free. </p><p><br></p><p><b>How does Bonk Breaker avoid cross-contamination with allergens? </b></p><p><br></p><p>Our manufacturing facilities follow strict regulations and product safety programs, which include regularly conducting U.S. FDA-grade cleanings as well as testing to prevent cross-contamination with allergens. </p><p><br></p><p><b>Are Bonk Breaker products vegan? </b></p><p><br></p><p>Our Cookies &amp; Cream Energy Bars, Double Fudge Brownie Collagen Bars, and Peanut Butter &amp; Dark Chocolate Chip Collagen Bars contain dairy. All other Bonk Breaker bars contain honey, except the Double Fudge Brownie Collagen Bars. Bonk Breaker Energy Chews are made with 100% plant-based ingredients and are suitable for a vegan diet.</p><p><br></p><p><b>Are Bonk Breaker products organic? What about non-GMO?  </b></p><p><br></p><p>Bonk Breaker is made with real food ingredients such as nuts, honey, and gluten-free oats. We are committed to sourcing the highest quality ingredients, and to our sustainability practices, but are not certified Organic or certified Non-GMO. </p><p><br></p><p><b>Why do Bonk Breaker plant-based protein bars have added sugars?</b></p><p><br></p><p>Bonk Breaker supports active lifestyles that require a different approach to fueling. A well-fueled athlete is less likely to "bonk," and we designed our plant-based protein bars to prioritize:</p><p><br></p><p><b>Recovery: </b>Our protein bars deliver a 3:1 carbohydrate-to-protein ratio, which has been scientifically validated to support recovery in the 30-minute post-workout/event window. In fact, when you compare Bonk Breaker''s plant-based protein bars to 8oz of chocolate milk (roughly 23g carbs/22g sugar and 8g protein), we hit the 3:1 ratio target while being slightly lower in sugar.</p><p><br></p><p><b>On-the-go lifestyles:</b> Plant-based protein bars are a great choice for activities like hiking or a gym session — or as a quick meal before your next workout if you''re pressed for time. They deliver a balance of high glycemic honey and low glycemic brown rice syrup to provide a steady stream of energy vs. a spike, especially when combined with plant protein.</p>', array['bonk-breaker-salted-caramel-peanut-butter-protein-energy/1.webp']::text[], 'new', 0, '2025-05-21'::date, false, false),
  ('clif', 'Clif Bloks', 'clif', 'nutrition', 'energy-bars', '<h3>Clif Shot Bloks Energy Chews</h3>
<h3><strong>Convenient, Fast-Acting Energy for Endurance Athletes</strong></h3>
<p><strong>Clif Shot Bloks</strong> are bite-sized energy chews designed to fuel athletes during long training sessions and races. Each <strong>Fastpak</strong> contains 6 soft, chewable Bloks, with 3 Bloks making up one serving (33 calories per Blok). Formulated with easily digestible carbohydrates, electrolytes, and added caffeine in select flavours, they deliver <strong>sustained energy, improved endurance, and quick replenishment</strong> when you need it most.</p>
<p>The <strong>unique Fastpak packaging</strong> is slim and portable, fitting easily into jersey pockets, running shorts, or hydration vests. It’s simple to open mid-activity, allowing you to <strong>squeeze Bloks out one at a time</strong> without breaking stride.</p>
<p>Officially chosen as the <strong>Energy Chew of NZ Ironman</strong>, Clif Shot Bloks are trusted by cyclists, runners, triathletes, and endurance athletes worldwide.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>33 calories per Blok</strong> – easy to portion and track energy intake</p>
</li>
<li>
<p><strong>6 Bloks per Fastpak</strong> – 2 servings per pack</p>
</li>
<li>
<p><strong>Electrolyte support</strong> – sodium, potassium, magnesium, and calcium for hydration balance</p>
</li>
<li>
<p><strong>Caffeinated options</strong> – for added focus and endurance boost</p>
</li>
<li>
<p><strong>Fastpak design</strong> – compact, quick-access packaging for on-the-go fueling</p>
</li>
<li>
<p><strong>Easy to digest</strong> – gentle on the stomach, ideal for long endurance events</p>
</li>
</ul>', array['clif/1.webp']::text[], 'new', 3, '2021-08-19'::date, false, false),
  ('ems-power-cookie-bar', 'Ems Power Cookie Bar', 'ems', 'nutrition', 'energy-bars', '<strong>Em’s Power Cookie Bars are packed with all the goodness you need to fuel your body on those mentally and physically demanding days. </strong>
<p><br>They are low in fat, and have a satisfying flavour profile guaranteed to keep you wanting more!<br><br><strong>Nutritional Information:</strong><br><br>Servings per pack: 1<br>Avg. Service Size 80g<br>All values are averages<br><br></p>
<table>
<tbody>
<tr>
<td>Average Per</td>
<td>80g Serve</td>
<td>100g</td>
</tr>
<tr>
<td>Energy</td>
<td>1170kJ</td>
<td>1463kJ</td>
</tr>
<tr>
<td>kcal</td>
<td>(280kcal)</td>
<td>(350kcal)</td>
</tr>
<tr>
<td>Protein</td>
<td>5.8g</td>
<td>7.2g</td>
</tr>
<tr>
<td>Fat - Total</td>
<td>7.9g</td>
<td>9.8g</td>
</tr>
<tr>
<td>Fat - Saturated</td>
<td>2.5g</td>
<td>3.1g</td>
</tr>
<tr>
<td>Carbohydrate</td>
<td>46.2g</td>
<td>57.8g</td>
</tr>
<tr>
<td>- Sugars</td>
<td>23.6g</td>
<td>29.5g</td>
</tr>
<tr>
<td>Sodium</td>
<td>180mg</td>
<td>225mg<br> </td>
</tr>
</tbody>
</table>', array['ems-power-cookie-bar/1.jpg', 'ems-power-cookie-bar/2.jpg', 'ems-power-cookie-bar/3.jpg', 'ems-power-cookie-bar/4.jpg']::text[], 'new', 0, '2022-05-27'::date, false, false),
  ('ems-power-cookie-bars', 'Ems Power Cookie Bars', 'ems', 'nutrition', 'energy-bars', '<p>Power up your Adventures! Source of fibre and protein. Natural sugars from apricots, dates, coconut, almonds and natural yoghurt. Made with sunflower oil and no butter. Allergens: Contains gluten, tree nuts, egg, dairy and soy. May contain sulphites. Date pits or fragments may be present.</p>', array['ems-power-cookie-bars/1.jpg', 'ems-power-cookie-bars/2.jpg', 'ems-power-cookie-bars/3.jpg', 'ems-power-cookie-bars/4.jpg', 'ems-power-cookie-bars/5.jpg']::text[], 'new', 3, '2021-08-25'::date, false, false),
  ('ems-power-cookie-bites', 'Ems Power Cookie Bites', 'ems', 'nutrition', 'energy-bars', '<h3>EMS Power Bites – Nutritious, Delicious Energy Snacks</h3>
<h3><strong>Power Up Your Day!</strong></h3>
<p>Our <strong>Power Bites</strong> are <strong>snack-sized nuggets of pure energy</strong> designed to keep you fueled wherever life takes you. Each pouch contains <strong>8 bites</strong>, perfect for the lunchbox, office desk, sporty kids, or on-the-go munching.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Delicious &amp; Nutritious:</strong> Packed with natural sugars from raisins, coconut, and natural yoghurt</p>
</li>
<li>
<p><strong>Healthier Recipe:</strong> 40% less brown sugar than the Original Sports Cookie, made with sunflower oil, no butter</p>
</li>
<li>
<p><strong>Snack-Sized Energy:</strong> Compact bites deliver a sustained energy boost</p>
</li>
<li>
<p><strong>Popular Flavour:</strong> Chocolate Oat Explosion – a customer favourite!</p>
</li>
<li>
<p><strong>Convenient Multipack:</strong> 8 bites per pouch, ideal for daily snacking</p>
</li>
<li>
<p><strong>Allergens:</strong> Contains gluten, egg, dairy, and soy; may contain sulphites and tree nuts</p>
</li>
</ul>', array['ems-power-cookie-bites/1.jpg', 'ems-power-cookie-bites/2.jpg', 'ems-power-cookie-bites/3.jpg', 'ems-power-cookie-bites/4.jpg', 'ems-power-cookie-bites/5.jpg']::text[], 'new', 3, '2021-08-25'::date, false, false),
  ('sis-bar-go-energy-bake-bar-50g', 'SiS Bar Go Energy Bake Bar 50g', 'sis', 'nutrition', 'energy-bars', '<p>GO Energy Bake provides <strong>30 grams</strong> of carbohydrates, with a fruit-filled center in each bar providing 10 grams of fructose. This bar is yummy, easier to digest, and perfect for a pre-/intra-workout snack. SIS also made these bars to be conveniently fitting in a jersey pocket, so no more shoving big bars in those pockets.</p>
<p>The unique, soft baked texture provides an easy to eat option, with all the performance benefits of carbohydrate fueling.</p>
<p>It''s a vegetarian, 190 calorie snack packed with fuel that''s <strong>Informed Sport Certified</strong>. Free of banned ingredients and contamination, providing assurance to all athletes!</p>
<h3><strong>KEY BENEFITS: </strong></h3>
<ul>
<li>30g carbs, 10g fructose </li>
<li>Provides more sustainable energy through exercise</li>
<li>Serves as a great "real food" addition</li>
<li>Delays the palate fatigue athletes face</li>
<li>
Provides a great source of vitamins and minerals
</li>
<li>Pocket-sized!</li>
</ul>', array['sis-bar-go-energy-bake-bar-50g/1.webp']::text[], 'new', 3, '2025-03-04'::date, false, false),
  ('sisminibar', 'SIS Mini Bar', 'sis', 'nutrition', 'energy-bars', '<p>Depleting your carbohydrate stores during exercise is one of the major causes of fatigue. Delivering additional carbohydrate during exercise is known to improve performance, race times and delay the onset of fatigue.</p>
<p><strong>Key Features</strong></p>
<ul>
<li>25 grams of carbohydrate packed into each bar</li>
<li>Made from natural fruit ingredients</li>
<li>Convenient size for in?racing fuelling</li>
<li>Contents: 30 x 40g Bars</li>
<li>Suitable For Vegetarians.</li>
<li>BBE: Minimum 3 Months+</li>
</ul>', array['sisminibar/1.jpg', 'sisminibar/2.jpg', 'sisminibar/3.jpg', 'sisminibar/4.jpg']::text[], 'new', 0, '2025-04-08'::date, false, false),
  ('sis-oat-bar-energy-70g', 'SiS Oat Bar Energy 70g', 'sis', 'nutrition', 'energy-bars', '<h3>REAL INGREDIENTS</h3>

<p>Whether you''re powering through a morning run, prepping for an afternoon workout, or recovering post-game, the Energy Oat Bar is the delicious snack to support your performance.</p>
<h3>DUAL FUNCTION CARBOHYDRATE AND PROTEIN BAR</h3>

Packed with wholesome oats, this bar provides a steady release of carbohydrates for sustained energy, while the added protein supports muscle recovery and growth. The natural fibre content also promotes digestive health and keeps you feeling satisfied throughout your day. 

<p>Made with simple, quality ingredients, it’s the perfect balance of nutrition, taste, and convenience, and the ideal way to fuel your active lifestyle.</p>

<h4>ANYTIME, ANYWHERE</h4>
<p>Ideal for endurance athletes</p>

<h4>SUPPORT RECOVERY</h4>
<p>10g of protein per bar</p>

<h4>SLOW RELEASE ENERGY</h4>
<p>40g of carbohydrate per bar</p>

<h4>NATURAL FIBRE</h4>
<p>Feel satisfied throughout the day</p>
<p>12 in a box</p>', array['sis-oat-bar-energy-70g/1.jpg']::text[], 'new', 2, '2026-07-08'::date, false, false),
  ('styrkr-bar-recovery-lemon-drizzle', 'Styrkr BAR+ Recovery Lemon Drizzle', 'styrkr', 'nutrition', 'energy-bars', '<p><br></p>
<p>The Bar+ is the perfect blend of carbs and protein that is formulated to contribute to normal muscle recovery after a workout. Tasty and refreshing, BAR+ provides carbohydrates and protein in a scientifically backed ratio of 3:1.</p><p><br></p>
<ul>
<li>
Scientifically formulated to assist with recovery</li>
<li>
45g of carbohydrates and 15g of protein</li>
<li>
Fast to digest and easy on the gut</li>
<li>
Developed by professional sports nutritionists and tested by athletes</li>
<li>
100% Vegan, handmade in the UK</li>
<li>
Gluten-free</li>
</ul>
<p><br></p>

<p><b>Road to Recovery</b></p>
<p>BAR+ is an advanced recovery bar featuring a 3:1 carbohydrate-to-protein ratio, designed to contribute to muscle glycogen replenishment  post-exercise. Invigorating and delicious, BAR+ contributes to the recovery of normal muscle function and ensures flavour variety during your recovery phase.</p>

<p><b>Optimal Recovery Fuel</b></p>
<p>Styrkr’s Bar+ contributes to the recovery of normal muscle function after highly intensive physical exercise, which can lead to muscle fatigue and the depletion of glycogen stores in your muscles.</p>
<p><b>Tried And Tested</b></p>
<p>Developed by sports nutritionists and tested by athletes, Bar+ delivers top performance and taste. Each bar has 45g of carbs and 15g of protein that''s easy to digest, in three delicious flavours.</p>
<p><b>Adventure-ready</b></p>
<p>Bar+ offers portable, delicious recovery support. Compact and tasty, each bar provides essential carbs and protein that contributes to the recovery of normal muscle function, no matter the adventure.</p>
<p><b>All-Natural, Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>
<p><b>What goes into every Styrkr Bar+?</b></p>

<p><b>45g carbohydrates, 15g protein</b> - Studies have suggested a 3:1 Carb-to-Protein ratio is optimal to assist with recovery</p>
<p><b>282kcal per bar </b>- Each bar provides over 282kcal, ideal for a speedy recovery.</p>
<p><b>Fast, light and natural </b>- Created using puffed rice and all natural ingredients, BAR+ is fast to digest and easy on the gut</p>
<p><b>Vegan and gluten-free </b>- Vegan friendly and gluten-free, so you never have to compromise your regime.</p>
<p><b>Soft, chewy and durable </b>- A soft, chewy texture that’s pleasing to eat, but dense enough to pack a powerful punch</p>

<p><b>Nutritional Information:</b></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (74g)</p>
</td>
<td>
<p>%RI</p>
</td>
</tr>
<tr>
<td>
<p>Energy (kJ)</p>
</td>
<td>
<p>1647</p>
</td>
<td>
<p>1219</p>
</td>
<td>
<p>14.5</p>
</td>
</tr>
<tr>
<td>
<p>Energy (KCAL)</p>
</td>
<td>
<p>391</p>
</td>
<td>
<p>289</p>
</td>
<td>
<p>14.5</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>7.8</p>
</td>
<td>
<p>5.8</p>
</td>
<td>
<p>8.3</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>1.9</p>
</td>
<td>
<p>1.4</p>
</td>
<td>
<p>7</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrate (g)</p>
</td>
<td>
<p>61.3</p>
</td>
<td>
<p>45.4</p>
</td>
<td>
<p>17.5</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>37.8</p>
</td>
<td>
<p>28</p>
</td>
<td>
<p>31.1</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>0.76</p>
</td>
<td>
<p>0.56</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>20.3</p>
</td>
<td>
<p>15</p>
</td>
<td>
<p>30</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0.87</p>
</td>
<td>
<p>0.65</p>
</td>
<td>
<p>10.8</p>
</td>
</tr>
<tr>
<td>
<p>Sodium (mg)</p>
</td>
<td>
<p>350</p>
</td>
<td>
<p>260</p>
</td>
<td>
<p>-</p>
</td>
</tr>
</tbody>
</table>

<p><br></p>
<p><b>Ingredients</b>: Glucose Syrup [contains <b>SULPHITES</b>], <b>SOYA</b> Protein Crispies (16%) [Isolated <b>SOY</b> Protein, tapioca starch], Caster Sugar, Vegan Caramel [Sugar, Glucose Syrup, Water, Vegetable fat (shea), Golden Syrup (partially inverted refiners syrup), Faba Bean Flour, Caramelised Sugar, Salt, Emulsifiers: Mono- and diglycerides of fatty acids, Lecithin (Sunflower, Rapeseed), Natural Flavouring], Inverted Sugar Syrup, GF Rice Crispies (7%) [Rice Flour, Rice Bran, Sugar, Rice Extract], Mixed Peel (7%) [Orange Peel, Sugar, Glucose-Fructose syrup, Lemon Peel, Acidity Regulator: Citric acid], <b>SOY</b> Protein Isolate, Rapeseed Oil, Vegan White Chocolate [Cocoa Butter, Rice Powder (Rice Syrup, Rice Starch, Rice Flour), Raw Cane Sugar, Natural Flavouring], Humectant: Glycerine, Natural Flavouring, Agar, <b>SOYA</b> Lecithin Powder, Sea Salt. For allergens, see ingredients highlighted in BOLD.</p>
<p>Allergens: <b>SOYA,SULPHITES </b></p>
<p>For allergens, see ingredients highlighted in <b>bold</b>. Made in a facility that handles <b>Egg, Milk, Nuts, Peanuts, Sesame, Soy and Sulphites.</b></p>

<p><b>Fuelling the everyday athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We listen to what our customers have to say and are committed to providing industry leading and innovative fuelling solutions at an affordable price.</p>
<p>UK Manufactured</p>
<p>Non-GMO</p>
<p>High Quality Ingredients</p>
<p><br></p>', array['styrkr-bar-recovery-lemon-drizzle/1.jpg']::text[], 'new', 0, '2025-04-08'::date, false, false),
  ('styrkr-bar-recovery-raspberry-white-chocolate', 'Styrkr BAR+ Recovery Raspberry & White Chocolate', 'styrkr', 'nutrition', 'energy-bars', '<p>The Bar+ is the perfect blend of carbs and protein that is formulated to contribute to normal muscle recovery after a workout. Tasty and refreshing, BAR+ provides carbohydrates and protein in a scientifically backed ratio of 3:1.</p><ul>
<li>Scientifically formulated to assist with recovery</li>
<li>45g of carbohydrates and 15g of protein</li>
<li>Fast to digest and easy on the gut</li>
<li>Developed by professional sports nutritionists and tested by athletes</li>
<li>100% Vegan, handmade in the UK</li>
<li>Gluten-free</li>
</ul><p><strong>Road to Recovery</strong></p><p>BAR+ is an advanced recovery bar featuring a 3:1 carbohydrate-to-protein ratio, designed to contribute to muscle glycogen replenishment  post-exercise. Invigorating and delicious, BAR+ contributes to the recovery of normal muscle function and ensures flavour variety during your recovery phase.</p>
 

<p><strong>Optimal Recovery Fuel</strong></p>
<p>Styrkr’s Bar+ contributes to the recovery of normal muscle function after highly intensive physical exercise, which can lead to muscle fatigue and the depletion of glycogen stores in your muscles.</p>
<p><strong>Tried And Tested</strong></p>
<p>Developed by sports nutritionists and tested by athletes, Bar+ delivers top performance and taste. Each bar has 45g of carbs and 15g of protein that''s easy to digest, in three delicious flavours.</p>

<p><strong>Adventure-ready</strong></p>
<p>Bar+ offers portable, delicious recovery support. Compact and tasty, each bar provides essential carbs and protein that contributes to the recovery of normal muscle function, no matter the adventure.</p>

<p><strong>All-Natural, Vegan-Friendly</strong></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p> 

<p><strong>What goes into every Styrkr Bar+?</strong></p>

<strong>45g carbohydrates, 15g protein</strong> - Studies have suggested a 3:1 Carb-to-Protein ratio is optimal to assist with recovery

<strong>282kcal per bar </strong>- Each bar provides over 282kcal, ideal for a speedy recovery.

<strong>Fast, light and natural </strong>- Created using puffed rice and all natural ingredients, BAR+ is fast to digest and easy on the gut

<strong>Vegan and gluten-free </strong>- Vegan friendly and gluten-free, so you never have to compromise your regime.

<strong>Soft, chewy and durable </strong>- A soft, chewy texture that’s pleasing to eat, but dense enough to pack a powerful punch

 

<p><strong>Nutritional Information:</strong></p>
<table>

<tbody>
<tr>
<td>Nutritional Value:</td>
<td>Per 100g</td>
<td>Per Serving (74g)</td>
<td>%RI</td>
</tr>
<tr>
<td>Energy (kJ)</td>
<td>1608</td>
<td>1190</td>
<td>14.1</td>
</tr>
<tr>
<td>Energy (KCAL)</td>
<td>381</td>
<td>282</td>
<td>14.1</td>
</tr>
<tr>
<td>Fat (g)</td>
<td>5.5</td>
<td>4.1</td>
<td>5.9</td>
</tr>
<tr>
<td>Saturated (g)</td>
<td>1.2</td>
<td>0.9</td>
<td>4.5</td>
</tr>
<tr>
<td>Carbohydrate (g)</td>
<td>61.9</td>
<td>45.8</td>
<td>17.6</td>
</tr>
<tr>
<td>Sugars (g)</td>
<td>33.3</td>
<td>24.6</td>
<td>27.3</td>
</tr>
<tr>
<td>Fibre (g)</td>
<td>0.95</td>
<td>0.7</td>
<td>-</td>
</tr>
<tr>
<td>Protein (g)</td>
<td>20</td>
<td>15.1</td>
<td>30.2</td>
</tr>
<tr>
<td>Salt (g)</td>
<td>1.5</td>
<td>1.1</td>
<td>18.3</td>
</tr>
<tr>
<td>Sodium (mg)</td>
<td>600</td>
<td>440</td>
<td>-</td>
</tr>
</tbody>
</table>

<p><strong>Ingredients</strong>: Inverted Sugar Syrup, Rice Crispies (14%) [Rice Flour, Rice Bran, Sugar, Rice Extract], Caster Sugar, Glucose Syrup [contains <strong>SULPHITES</strong>], <strong>SOY</strong> Protein Isolate, Vegan Caramel [Sugar, Glucose Syrup, Water, Vegetable fat (shea), Golden Syrup (partially inverted refiners syrup), Faba Bean Flour, Caramelised Sugar, Salt, Emulsifiers: Mono- and diglycerides of fatty acids, Lecithin (Sunflower, Rapeseed), Natural Flavouring], <strong>SOYA</strong> Protein Crispies (10%) [Isolated <strong>SOY</strong> Protein, tapioca starch], Vegan White Chocolate [Cocoa Butter, Rice Powder (Rice Syrup, Rice Starch, Rice Flour), Raw Cane Sugar, Natural Flavouring], Humectant: Glycerine, Rapeseed Oil, Raspberry Flavouring, Freeze Dried Raspberry (1%), Agar, <strong>SOYA</strong> Lecithin Powder, Sea Salt.</p>
<p>Allergens: <strong>SOYA,SULPHITES </strong></p>
<p>For allergens, see ingredients highlighted in <strong>bold</strong>. Made in a facility that handles <strong>Egg, Milk, Nuts, Peanuts, Sesame, Soy and Sulphites.</strong></p>
 

<strong>Fuelling the everyday athlete</strong><p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We listen to what our customers have to say and are committed to providing industry leading and innovative fuelling solutions at an affordable price.</p>

<p>UK Manufactured</p>
<p>Non-GMO</p>
<p>High Quality Ingredients</p>

<p><br></p>', array['styrkr-bar-recovery-raspberry-white-chocolate/1.jpg']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-bar-recovery-sea-salted-caramel', 'Styrkr BAR+ Recovery Sea Salted Caramel', 'styrkr', 'nutrition', 'energy-bars', '<p>The Bar+ is the perfect blend of carbs and protein that is formulated to contribute to normal muscle recovery after a workout. Tasty and refreshing, BAR+ provides carbohydrates and protein in a scientifically backed ratio of 3:1.</p><p><br></p><ul>
<li>Scientifically formulated to assist with recovery</li>
<li>45g of carbohydrates and 15g of protein</li>
<li>Fast to digest and easy on the gut</li>
<li>Developed by professional sports nutritionists and tested by athletes</li>
<li>100% Vegan, handmade in the UK</li>
<li>Gluten-free</li>
</ul><p><strong>Road to Recovery</strong></p><p>BAR+ is an advanced recovery bar featuring a 3:1 carbohydrate-to-protein ratio, designed to contribute to muscle glycogen replenishment  post-exercise. Invigorating and delicious, BAR+ contributes to the recovery of normal muscle function and ensures flavour variety during your recovery phase.</p>
 

<p><strong>Optimal Recovery Fuel</strong></p>
<p>Styrkr’s Bar+ contributes to the recovery of normal muscle function after highly intensive physical exercise, which can lead to muscle fatigue and the depletion of glycogen stores in your muscles.</p>
<p><strong><br></strong></p>
<p><strong>Tried And Tested</strong></p>
<p>Developed by sports nutritionists and tested by athletes, Bar+ delivers top performance and taste. Each bar has 45g of carbs and 15g of protein that''s easy to digest, in three delicious flavours.</p>

<p><strong><br></strong></p>
<p><strong>Adventure-ready</strong></p>
<p>Bar+ offers portable, delicious recovery support. Compact and tasty, each bar provides essential carbs and protein that contributes to the recovery of normal muscle function, no matter the adventure.</p>

<p><strong>All-Natural, Vegan-Friendly</strong></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p> 

<p><strong>What goes into every Styrkr Bar+?</strong></p>

<strong>45g carbohydrates, 15g protein</strong> - Studies have suggested a 3:1 Carb-to-Protein ratio is optimal to assist with recovery

<strong>282kcal per bar </strong>- Each bar provides over 282kcal, ideal for a speedy recovery.

<strong>Fast, light and natural </strong>- Created using puffed rice and all natural ingredients, BAR+ is fast to digest and easy on the gut

<strong>Vegan and gluten-free </strong>- Vegan friendly and gluten-free, so you never have to compromise your regime.

<strong>Soft, chewy and durable </strong>- A soft, chewy texture that’s pleasing to eat, but dense enough to pack a powerful punch

 

<p><strong>Nutritional Information:</strong></p>
<table>

<tbody>
<tr>
<td>Nutritional Value:</td>
<td>Per 100g</td>
<td>Per Serving (74g)</td>
<td>%RI</td>
</tr>
<tr>
<td>Energy (kJ)</td>
<td>1608</td>
<td>1190</td>
<td>14.1</td>
</tr>
<tr>
<td>Energy (KCAL)</td>
<td>381</td>
<td>282</td>
<td>14.1</td>
</tr>
<tr>
<td>Fat (g)</td>
<td>5.5</td>
<td>4.1</td>
<td>5.9</td>
</tr>
<tr>
<td>Saturated (g)</td>
<td>1.2</td>
<td>0.9</td>
<td>4.5</td>
</tr>
<tr>
<td>Carbohydrate (g)</td>
<td>61.9</td>
<td>45.8</td>
<td>17.6</td>
</tr>
<tr>
<td>Sugars (g)</td>
<td>33.3</td>
<td>24.6</td>
<td>27.3</td>
</tr>
<tr>
<td>Fibre (g)</td>
<td>0.95</td>
<td>0.7</td>
<td>-</td>
</tr>
<tr>
<td>Protein (g)</td>
<td>20.3</td>
<td>15.1</td>
<td>30.2</td>
</tr>
<tr>
<td>Salt (g)</td>
<td>1.5</td>
<td>1.1</td>
<td>18.3</td>
</tr>
<tr>
<td>Sodium (mg)</td>
<td>600</td>
<td>440</td>
<td>-</td>
</tr>
</tbody>
</table>

<p><strong>Ingredients</strong>: Glucose Syrup [contains <strong>SULPHITES</strong>], <strong>SOYA</strong> Protein Crispies (17%) [Isolated <strong>SOY</strong> Protein, Tapioca Starch], Caster Sugar, Vegan Caramel (13%) [Sugar, Glucose Syrup, Water, Vegetable Fat (shea), Golden Syrup (partially inverted refiners syrup), Faba Bean Flour, Caramelised Sugar, Salt, Emulsifiers: Mono- and diglycerides of fatty acids, Lecithin (Sunflower, Rapeseed), Natural Flavouring], Inverted Sugar Syrup, GF Rice Crispies (8%) [Rice Flour, Rice Bran, Sugar, Rice Extract], <strong>SOY</strong> Protein Isolate, GF Jumbo Oats, Humectant: Glycerine, Rapeseed Oil, Natural Flavouring, Sea Salt (1%), Agar, <strong>SOYA</strong> Lecithin Powder. For allergens, see ingredients highlighted in BOLD.</p>
<p>Allergens: <strong>SOYA,SULPHITES </strong></p>
<p>For allergens, see ingredients highlighted in <strong>bold</strong>. Made in a facility that handles <strong>Egg, Milk, Nuts, Peanuts, Sesame, Soy and Sulphites.</strong></p>

 

<strong>Fuelling the everyday athlete</strong><p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We listen to what our customers have to say and are committed to providing industry leading and innovative fuelling solutions at an affordable price.</p>

<p>UK Manufactured</p>
<p>Non-GMO</p>

<p>High Quality Ingredients</p>
<p><br></p>', array['styrkr-bar-recovery-sea-salted-caramel/1.jpg']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-bar30-energy-dark-chocolate-chip', 'Styrkr BAR30 Energy Dark Chocolate Chip', 'styrkr', 'nutrition', 'energy-bars', '<p><strong>30g Carb Rice Bar | 12 Box</strong></p>
<p>BAR30 Energy Bars deliver precise, fast-acting fuel when performance matters most. Each bar packs 30g of quick-release carbohydrates to help maintain energy levels during high-output training and racing. Designed for efficient intake and easy digestion, BAR30 keeps you moving when your body needs it most.</p>
<ul>
<li>30g of fast-acting carbohydrates per bar</li>
<li>Formulated for direct, no-prep consumption</li>
<li>Versatile use before, during or after activity</li>
<li>Available in three delicious all natural flavours</li>
</ul>', array['styrkr-bar30-energy-dark-chocolate-chip/1.webp', 'styrkr-bar30-energy-dark-chocolate-chip/2.webp']::text[], 'new', 1, '2025-11-18'::date, false, false),
  ('styrkr-bar30-energy-date-almond-sea-salt', 'Styrkr BAR30 Energy Date, Almond & Sea Salt', 'styrkr', 'nutrition', 'energy-bars', '<p><strong>30g Carb Rice Bar | 12 Box</strong></p>
<p>BAR30 Energy Bars deliver precise, fast-acting fuel when performance matters most. Each bar packs 30g of quick-release carbohydrates to help maintain energy levels during high-output training and racing. Designed for efficient intake and easy digestion, BAR30 keeps you moving when your body needs it most.</p>
<ul>
<li>30g of fast-acting carbohydrates per bar</li>
<li>Formulated for direct, no-prep consumption</li>
<li>Versatile use before, during or after activity</li>
<li>Available in three delicious all natural flavours</li>
</ul>', array['styrkr-bar30-energy-date-almond-sea-salt/1.webp', 'styrkr-bar30-energy-date-almond-sea-salt/2.webp']::text[], 'new', 1, '2025-11-18'::date, false, false),
  ('styrkr-bar50-energy-apple-cinnamon-caramel-sultana', 'Styrkr BAR50 Energy Apple, Cinnamon, Caramel & Sultana', 'styrkr', 'nutrition', 'energy-bars', '<p><strong>High Carb Rice Bar | 12 Box </strong></p><p>Apple pieces, cinnamon, caramel, and juicy sultanas. Bar50 is an adventure-ready, quick-release energy bar that gives you the edge by delivering maximum energy and fighting flavour fatigue on longer expeditions.</p><ul>
<li>All natural ingredients &amp; formulated specifically for quick-release energy</li>
<li>50g+ of carbohydrates and 250+ calories per bar</li>
<li>Fast to digest and easy on the gut</li>
<li>Developed by professional sports nutritionists and tested by athletes</li>
<li>100% Vegan, handmade in the UK</li>
<li>Gluten-free</li>
</ul><p><strong><br></strong></p><p><strong>Hungry for some new PBs?</strong></p><p>BAR50 is a nutritionally complete, high-energy snack that contains a perfectly balanced amount of carbs, proteins, fat and fibre. Revitalising and flavourful, the BAR50 will help boost energy, combat tiredness and fight flavour fatigue on longer adventures.</p><p><strong><br></strong></p><p><strong>Complete endurance fuel</strong></p><p>All Styrkr bars, drinks, gels and salts have been specifically engineered to reduce overall fatigue and energy expenditure while maintaining power and increasing output all the way to your finish line.</p><p><strong><br></strong></p><p><strong>Quick-Release Energy</strong></p><p>Styrkr’s all-natural energy bars are designed for endurance athletes and everyday adventure-seekers and deliver a market-leading 50g of quick release carbs and 250 calories per product.</p><p><strong><br></strong></p><p><strong>Vegan-Friendly</strong></p><p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p><p><strong><br></strong></p><p><strong>Adventure-ready</strong></p><p>Portable “real food” that tastes good and packs a proper energy punch is hard to come by. Bar50 is compact, tasty and delivers that vital energy lift you need when you need it most, whatever the adventure.</p><p><strong><br></strong></p><p><strong>All-natural high-energy bar. Tailored for the everyday adventure-seekers.</strong></p><p>BAR50 is a nutritionally complete, high-energy snack that contains a perfectly balanced amount of carbs, proteins, fat and fibre. Revitalising and flavourful, the BAR50 will help boost energy, combat tiredness and fight flavour fatigue on longer adventures.</p><p><strong><br></strong></p><p><strong>Great tasting, performance ready bars</strong></p><p>Rice cakes used to be <em>de rigueur</em> in the Tour de France peloton for good reason. Bar50 pays homage to those foil-wrapped snacks of old, but updates them: improved density, better texture, streamlined shape, less weight per carb ratio, more energy. When there’s no food around, you’ll be glad you packed your BAR50.</p><p><strong>Taste of victory</strong></p><p>Available in three delicious all natural flavours with zero artificial sweeteners, our brand-new energy bars take adventure snacking to a whole new level with over 50g+ of natural energy and 250kcals per product.</p><p><strong><br></strong></p><p><strong>Not just your run of the mill energy bar.</strong></p><p>Developed by athletes. BAR50 is a high-energy snack, with a balanced macronutrient profile, that was developed by professional sports nutritionists and tested by athletes to ensure the perfect quick-release energy bar that tastes amazing.</p><p><br></p><p><strong>What goes into every Styrkr Bar50?</strong></p>
<strong>50g+ of carbohydrates</strong> - Perfect high-energy snack to maintain your hourly carbohydrate goals
<strong>250kcal per bar</strong> - Each bar provides over 250kcal, ideal for quick-release firepower
<strong>High electrolytes</strong> - Helps improve hydration and prevent muscle cramp

<strong>Soft, chewy and durable</strong> - A soft, chewy texture that’s pleasing to eat, but dense enough to pack a powerful punch

<strong>Fast, light and natural</strong> - Created using puffed rice and all natural ingredients, BAR50 is fast to digest and easy on the gut

<strong>Vegan and gluten-free</strong> - Vegan friendly and gluten-free, so you never have to compromise your regime.
 
<strong>Nutritional Information:</strong>
<table>

<tbody>
<tr>
<td>Nutritional Value: </td>
<td>Per 100g</td>
<td>Per Serving (67g)</td>
<td>%nrv</td>
</tr>
<tr>
<td>Energy (g)</td>
<td>1617 kJ </td>
<td>1083kJ </td>
<td>19.5 </td>
</tr>
<tr>
<td>383 KCAL     </td>
<td>257 KCAL  </td>
<td>19.5  </td>
</tr>
<tr>
<td>Fat (g)</td>
<td>8.1</td>
<td>5.4</td>
<td>11.5</td>
</tr>
<tr>
<td>Saturated (g)</td>
<td>1.5</td>
<td>1</td>
<td>7.5</td>
</tr>
<tr>
<td>Carbohydrate (g)</td>
<td>74</td>
<td>50</td>
<td>28.5</td>
</tr>
<tr>
<td>Sugars (g)</td>
<td>39</td>
<td>26</td>
<td>44.5</td>
</tr>
<tr>
<td>Fibre (g)</td>
<td>2.3</td>
<td>1.5</td>
<td>-</td>
</tr>
<tr>
<td>Protein (g)</td>
<td>2.5</td>
<td>1.7</td>
<td>5.5</td>
</tr>
<tr>
<td>Salt (g)</td>
<td>0.9</td>
<td>0.6</td>
<td>15</td>
</tr>
</tbody>
</table>
 

<p><strong>Ingredients</strong>: Glucose Syrup, Rice Crispies (20%)(Rice Flour, Rice Bran, Sugar, Rice Extract), Sultanas (Sultanas, Sunflower Oil), Vegan Caramel (16%)(Sugar, Glucose Syrup, Water, Vegetable Fat (Shea), Golden Syrup (Partially Inverted Refiners Syrup), Faba Bean Flour, Caramelised Sugar, Salt, Emulsifiers (Mono- and Diglycerides of Fatty Acids, Rapeseed Lecithin), Natural Flavouring), Golden Syrup (Partially Inverted Sugar Syrup), Vegetable Oil (Rapeseed), Sugar, Humectant (Glycerol), Dehydrated Apple (3%), Gelling Agent (Agar), Salt, Vanilla Flavouring, Emulsifier <strong>(SOYA </strong>Lecithin<strong>)</strong>, Ground Cinnamon (0.39%). </p>
<p>Allergens: <strong>SOYA</strong></p>
<p>For allergens, see ingredients highlighted in <strong>BOLD</strong><br>Made in a facility that handles Milk, Egg, Nuts, Peanuts, Sulphites and Sesame.</p>

 
 

<strong>Fuelling the everyday athlete</strong><p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We listen to what our customers have to say and are committed to providing industry leading and innovative fuelling solutions at an affordable price.</p>

<p>UK Manufactured</p>
<p>Non-GMO</p>
<p>High Quality Ingredients</p>', array['styrkr-bar50-energy-apple-cinnamon-caramel-sultana/1.jpg', 'styrkr-bar50-energy-apple-cinnamon-caramel-sultana/2.jpg', 'styrkr-bar50-energy-apple-cinnamon-caramel-sultana/3.jpg', 'styrkr-bar50-energy-apple-cinnamon-caramel-sultana/4.jpg']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-bar50-energy-dark-chocolate-chip', 'Styrkr BAR50 Energy Dark Chocolate Chip', 'styrkr', 'nutrition', 'energy-bars', '<p><b>High Carb Rice Bar | 12 Box </b></p>
<p>Apple pieces, cinnamon, caramel, and juicy sultanas. Bar50 is an adventure-ready, quick-release energy bar that gives you the edge by delivering maximum energy and fighting flavour fatigue on longer expeditions.</p>
<ul>
<li>
All natural ingredients &amp; formulated specifically for quick-release energy</li>
<li>
50g+ of carbohydrates and 250+ calories per bar</li>
<li>
Fast to digest and easy on the gut</li>
<li>
Developed by professional sports nutritionists and tested by athletes</li>
<li>
100% Vegan, handmade in the UK</li>
<li>
Gluten-free</li>
</ul>
<p><br></p>
<p><b>Hungry for some new PBs?</b></p>
<p>BAR50 is a nutritionally complete, high-energy snack that contains a perfectly balanced amount of carbs, proteins, fat and fibre. Revitalising and flavourful, the BAR50 will help boost energy, combat tiredness and fight flavour fatigue on longer adventures.</p>
<p><br></p>
<p><b>Complete endurance fuel</b></p>
<p>All Styrkr bars, drinks, gels and salts have been specifically engineered to reduce overall fatigue and energy expenditure while maintaining power and increasing output all the way to your finish line.</p>
<p><br></p>
<p><br></p>
<p><b>Quick-Release Energy</b></p>
<p>Styrkr’s all-natural energy bars are designed for endurance athletes and everyday adventure-seekers and deliver a market-leading 50g of quick release carbs and 250 calories per product.</p>
<p><br></p>
<p><br></p>
<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>
<p><br></p>
<p><br></p>
<p><b>Adventure-ready</b></p>
<p>Portable “real food” that tastes good and packs a proper energy punch is hard to come by. Bar50 is compact, tasty and delivers that vital energy lift you need when you need it most, whatever the adventure.</p>
<p><br></p>
<p><b>All-natural high-energy bar. Tailored for the everyday adventure-seekers.</b></p>
<p>BAR50 is a nutritionally complete, high-energy snack that contains a perfectly balanced amount of carbs, proteins, fat and fibre. Revitalising and flavourful, the BAR50 will help boost energy, combat tiredness and fight flavour fatigue on longer adventures.</p>
<p><br></p>
<p><br></p>
<p><b>Great tasting, performance ready bars</b></p>
<p>Rice cakes used to be <i>de rigueur</i> in the Tour de France peloton for good reason. Bar50 pays homage to those foil-wrapped snacks of old, but updates them: improved density, better texture, streamlined shape, less weight per carb ratio, more energy. When there’s no food around, you’ll be glad you packed your BAR50.</p>

<p><b>Taste of victory</b></p>
<p>Available in three delicious all natural flavours with zero artificial sweeteners, our brand-new energy bars take adventure snacking to a whole new level with over 50g+ of natural energy and 250kcals per product.</p>
<p><br></p>
<p><b>Not just your run of the mill energy bar.</b></p>
<p>Developed by athletes. BAR50 is a high-energy snack, with a balanced macronutrient profile, that was developed by professional sports nutritionists and tested by athletes to ensure the perfect quick-release energy bar that tastes amazing.</p>
<p><br></p>
<p><b>What goes into every Styrkr Bar50?</b></p>
<p><b>50g+ of carbohydrates</b> - Perfect high-energy snack to maintain your hourly carbohydrate goals</p>
<p><b>250kcal per bar</b> - Each bar provides over 250kcal, ideal for quick-release firepower</p>
<p><b>High electrolytes</b> - Helps improve hydration and prevent muscle cramp</p>
<p><b>Soft, chewy and durable</b> - A soft, chewy texture that’s pleasing to eat, but dense enough to pack a powerful punch</p>
<p><b>Fast, light and natural</b> - Created using puffed rice and all natural ingredients, BAR50 is fast to digest and easy on the gut</p>
<p><b>Vegan and gluten-free</b> - Vegan friendly and gluten-free, so you never have to compromise your regime.</p>

<p><b>Nutritional Information:</b></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value:</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (70g)</p>
</td>
<td>
<p>%nrv</p>
</td>
</tr>
<tr>
<td>
<p>Energy (g)</p>
</td>
<td>
<p>1755 kJ </p>
<p>417 KCAL</p>
</td>
<td>
<p>1228 kJ </p>
<p>292 KCAL</p>
</td>
<td>
<p>21</p>
<p>21</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>12</p>
</td>
<td>
<p>9</p>
</td>
<td>
<p>17</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>4.1</p>
</td>
<td>
<p>2.9</p>
</td>
<td>
<p>20.5</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrate (g)</p>
</td>
<td>
<p>71</p>
</td>
<td>
<p>50</p>
</td>
<td>
<p>27.5</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>35</p>
</td>
<td>
<p>24</p>
</td>
<td>
<p>39</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>3.5</p>
</td>
<td>
<p>2.5</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>3.7</p>
</td>
<td>
<p>2.6</p>
</td>
<td>
<p>7.5</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0.9</p>
</td>
<td>
<p>0.63</p>
</td>
<td>
<p>15</p>
</td>
</tr>
</tbody>
</table>

<p><b>Ingredients</b>: Rice Crispies (22%)(Rice Flour, Rice Bran, Sugar, Rice Extract), Glucose Syrup, Vegan Caramel (Sugar, Glucose Syrup, Water, Vegetable Fat (Shea), Golden Syrup (Partially Inverted Refiners Syrup), Faba Bean Flour, Caramelised Sugar, Salt, Emulsifiers (Mono- and Diglycerides of Fatty Acids, Rapeseed Lecithin), Natural Flavouring), Chocolate Chip (14%)(Sugar, Cocoa Mass, Cocoa Butter, Emulsifier; SOYA Lecithin, Natural Vanilla Flavouring), Golden Syrup (Partially Inverted Sugar Syrup), Vegetable Oil (Rapeseed), Sugar, Humectant (Glycerol), Fat Reduced Cocoa Powder, Gelling Agent (Agar), Salt, Vanilla Flavouring, Emulsifier (SOYA Lecithin). </p>
<p>Allergens: Soya</p>
<p>For allergens, see ingredients highlighted in BOLD. Made in a facility that handles Milk, Egg, Nuts, Peanuts, Sulphites and Sesame</p>

<p><b>Fuelling the everyday athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We listen to what our customers have to say and are committed to providing industry leading and innovative fuelling solutions at an affordable price.</p>
<p>UK Manufactured</p>
<p>Non-GMO</p>
<p>High Quality Ingredients</p>', array['styrkr-bar50-energy-dark-chocolate-chip/1.jpg', 'styrkr-bar50-energy-dark-chocolate-chip/2.jpg', 'styrkr-bar50-energy-dark-chocolate-chip/3.jpg', 'styrkr-bar50-energy-dark-chocolate-chip/4.jpg']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-bar50-energy-date-almond-sea-salt', 'Styrkr BAR50 Energy Date, Almond & Sea Salt', 'styrkr', 'nutrition', 'energy-bars', '<p><b>High Carb Rice Bar | 12 Box </b></p>
<p>Apple pieces, cinnamon, caramel, and juicy sultanas. Bar50 is an adventure-ready, quick-release energy bar that gives you the edge by delivering maximum energy and fighting flavour fatigue on longer expeditions.</p>
<ul>
<li>
All natural ingredients &amp; formulated specifically for quick-release energy</li>
<li>
50g+ of carbohydrates and 250+ calories per bar</li>
<li>
Fast to digest and easy on the gut</li>
<li>
Developed by professional sports nutritionists and tested by athletes</li>
<li>
100% Vegan, handmade in the UK</li>
<li>
Gluten-free</li>
</ul>
<p><br></p>
<p><b>Hungry for some new PBs?</b></p>
<p>BAR50 is a nutritionally complete, high-energy snack that contains a perfectly balanced amount of carbs, proteins, fat and fibre. Revitalising and flavourful, the BAR50 will help boost energy, combat tiredness and fight flavour fatigue on longer adventures.</p>
<p><br></p>
<p><b>Complete endurance fuel</b></p>
<p>All Styrkr bars, drinks, gels and salts have been specifically engineered to reduce overall fatigue and energy expenditure while maintaining power and increasing output all the way to your finish line.</p>
<p><br></p>
<p><br></p>
<p><b>Quick-Release Energy</b></p>
<p>Styrkr’s all-natural energy bars are designed for endurance athletes and everyday adventure-seekers and deliver a market-leading 50g of quick release carbs and 250 calories per product.</p>
<p><br></p>
<p><br></p>
<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>
<p><br></p>
<p><br></p>
<p><b>Adventure-ready</b></p>
<p>Portable “real food” that tastes good and packs a proper energy punch is hard to come by. Bar50 is compact, tasty and delivers that vital energy lift you need when you need it most, whatever the adventure.</p>
<p><br></p>
<p><b>All-natural high-energy bar. Tailored for the everyday adventure-seekers.</b></p>
<p>BAR50 is a nutritionally complete, high-energy snack that contains a perfectly balanced amount of carbs, proteins, fat and fibre. Revitalising and flavourful, the BAR50 will help boost energy, combat tiredness and fight flavour fatigue on longer adventures.</p>
<p><br></p>
<p><br></p>
<p><b>Great tasting, performance ready bars</b></p>
<p>Rice cakes used to be <i>de rigueur</i> in the Tour de France peloton for good reason. Bar50 pays homage to those foil-wrapped snacks of old, but updates them: improved density, better texture, streamlined shape, less weight per carb ratio, more energy. When there’s no food around, you’ll be glad you packed your BAR50.</p>

<p><b>Taste of victory</b></p>
<p>Available in three delicious all natural flavours with zero artificial sweeteners, our brand-new energy bars take adventure snacking to a whole new level with over 50g+ of natural energy and 250kcals per product.</p>
<p><br></p>
<p><b>Not just your run of the mill energy bar.</b></p>
<p>Developed by athletes. BAR50 is a high-energy snack, with a balanced macronutrient profile, that was developed by professional sports nutritionists and tested by athletes to ensure the perfect quick-release energy bar that tastes amazing.</p>
<p><br></p>
<p><b>What goes into every Styrkr Bar50?</b></p>
<p><b>50g+ of carbohydrates</b> - Perfect high-energy snack to maintain your hourly carbohydrate goals</p>
<p><b>250kcal per bar</b> - Each bar provides over 250kcal, ideal for quick-release firepower</p>
<p><b>High electrolytes</b> - Helps improve hydration and prevent muscle cramp</p>
<p><b>Soft, chewy and durable</b> - A soft, chewy texture that’s pleasing to eat, but dense enough to pack a powerful punch</p>
<p><b>Fast, light and natural</b> - Created using puffed rice and all natural ingredients, BAR50 is fast to digest and easy on the gut</p>
<p><b>Vegan and gluten-free</b> - Vegan friendly and gluten-free, so you never have to compromise your regime.</p>

<p><b>Nutritional Information:</b></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value:</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (72g)</p>
</td>
<td>
<p>%nrv</p>
</td>
</tr>
<tr>
<td>
<p>Energy (g)</p>
</td>
<td>
<p>1760 kJ</p>
</td>
<td>
<p>1267kJ</p>
</td>
<td>
<p>21</p>
</td>
</tr>
<tr>
<td>
<p><br></p>
</td>
<td>
<p>419 KCAL</p>
</td>
<td>
<p>301 KCAL</p>
</td>
<td>
<p>21</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>14</p>
</td>
<td>
<p>9.7</p>
</td>
<td>
<p>20</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>3.1</p>
</td>
<td>
<p>2.2</p>
</td>
<td>
<p>15.5</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrate (g)</p>
</td>
<td>
<p>69</p>
</td>
<td>
<p>50</p>
</td>
<td>
<p>26.5</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>34</p>
</td>
<td>
<p>25</p>
</td>
<td>
<p>38</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>3.1</p>
</td>
<td>
<p>2.2</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>4</p>
</td>
<td>
<p>2.8</p>
</td>
<td>
<p>8</p>
</td>
</tr>
</tbody>
</table>

<p><b>Ingredients:</b> Glucose Syrup, Rice Crispies (20%)(Rice Flour, Rice Bran, Sugar, Rice Extract), Vegan Caramel (Sugar, Glucose Syrup, Water, Vegetable Fat (Shea), Golden Syrup (Partially Inverted Refiners Syrup), Faba Bean Flour, Caramelised Sugar, Salt, Emulsifiers (Mono- and Diglycerides of Fatty Acids, Rapeseed Lecithin), Natural Flavouring), Chocolate Chip (Sugar, Cocoa Mass, Cocoa Butter, Emulsifier; SOYA Lecithin, Natural Vanilla Flavouring), Dates (7%)(Dates, Rice Flour), ALMONDS (6%), Golden Syrup (Partially Inverted Sugar Syrup), Vegetable Oil (Rapeseed), Sugar, Humectant (Glycerol), Gelling Agent (Agar), Sea Salt (0.72%), Emulsifier (SOYA Lecithin), Vanilla Flavouring.</p>
<p>Allergens: Soya, Almonds</p>
<p>For allergens, see ingredients highlighted in bold. Made in a facility that handles gluten, eggs, milk and nuts. </p>

<p><b>Fuelling the everyday athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We listen to what our customers have to say and are committed to providing industry leading and innovative fuelling solutions at an affordable price.</p>
<p>UK Manufactured</p>
<p>Non-GMO</p>
<p>High Quality Ingredients</p>', array['styrkr-bar50-energy-date-almond-sea-salt/1.jpg', 'styrkr-bar50-energy-date-almond-sea-salt/2.jpg', 'styrkr-bar50-energy-date-almond-sea-salt/3.jpg', 'styrkr-bar50-energy-date-almond-sea-salt/4.jpg']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-styrkrthon-protein-bar', 'Styrkr Styrkrthon Protein Bar', 'styrkr', 'nutrition', 'energy-bars', '<p>Because it''s a marathon, not a sprint. </p><p>Enjoy a soft peanut butter flavoured bar, coated in a rich vegan milk chocolate, and packed with guilt-free gooey caramel goodness! Loaded with 22g of plant-based protein, low sugar, fully vegan and gluten free – smash a <em><strong>STYRKRTHON</strong></em> today!</p><p><br></p><p>This exclusive, limited edition bar is the ideal choice for your tasty post-exercise recovery, reimagined to match the true nostalgic spirit of your youth.</p><p><em><strong>STYRKRTHON</strong></em> brings the real you back.<br><br></p>
<p><strong>Hungry for some new PBs?</strong></p>
<p>STYRKRTHON is a nutritionally complete, high-energy snack that contains a perfectly balanced amount of carbs, proteins, fat and fibre. Revitalising and flavourful, the STYRKRTHON will help boost energy, combat tiredness and fight flavour fatigue on longer adventures.</p>

<p><strong>Complete endurance fuel</strong></p>
<p>All Styrkr bars, drinks, gels and salts have been specifically engineered to reduce overall fatigue and energy expenditure while maintaining power and increasing output all the way to your finish line.</p>

<p><strong>Vegan-Friendly</strong></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>

 <p><strong>Adventure-ready</strong></p>
<p>Portable “real food” that tastes good and packs a proper energy punch is hard to come by. <em><strong>STYRKRTHON </strong></em>is compact, tasty and delivers that vital energy lift you need when you need it most, whatever the adventure.</p>

<p><strong>SAVOUR THE FLAVOUR, FUEL THE RECOVERY.</strong></p>
<p>Sick of tasteless, boring and bland protein bars? <em><strong>STYRKRTHON</strong></em> to the rescue!! Soft and chewy plant based protein hugged by a thick vegan milk chocolate coating and guilt-free gooey caramel – Smash a <em><strong>STYRKRTHON</strong></em> today!</p>

<p><strong>BRING THE REAL YOU BACK</strong></p>
<p>Made to bring anyone back to life, whether you''re a fitness freak, a weekend warrior, or just doing your thing and need to recover like a champ. Nothing is too much with 22g of pure plant based protein!</p>

<br><p><strong>100% VEGAN &amp; GLUTEN FREE</strong></p>
<p>How? What? Who? That''s right, <em><strong>STYRKRTHON</strong></em> is 100% vegan and gluten-free! A powerhouse, geared up for anyone and every adventure. Oh, we also we tossed out the sugar.</p>

<p><strong>What goes into STYRKRTHON ?</strong></p>

<strong>22g of protein</strong> - High protein content helps contribute to muscle recovery

<strong>259kcal per bar </strong>- Each bar provides over 259kcal, ideal for quick-release firepower

<strong>Perfect taste </strong>- The gooey caramel goodness is irresistibly moreish

<strong>Low sugar </strong>- Help reduce those spikes of glucose

<strong>Vegan &amp; Gluten free </strong>- Created using puffed rice and all natural ingredients, <em><strong>STYRKRTHON </strong></em>is fast to digest and easy on the gut
 

<strong>Fuelling the everyday athlete</strong><p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We listen to what our customers have to say and are committed to providing industry leading and innovative fuelling solutions at an affordable price.</p>

<p>UK Manufactured</p>
<p>Non-GMO</p>

<p>High Quality Ingredients</p>

<p><strong>Nutritional Information:</strong></p>
<table>

<tbody>
<tr>
<td>Nutritional Value:</td>
<td>Per 100g</td>
<td>Per Serving (65g)</td>
<td>%RI</td>
</tr>
<tr>
<td>Energy (g)</td>
<td>1669 kJ </td>
<td>1085 kJ</td>
<td>12.9</td>
</tr>
<tr>
<td>398 KCAL</td>
<td>259 KCAL</td>
<td>12.9</td>
</tr>
<tr>
<td>Fat (g)</td>
<td>17.3</td>
<td>11.2</td>
<td>16</td>
</tr>
<tr>
<td>Saturated (g)</td>
<td>5.1</td>
<td>3.3</td>
<td>16.5</td>
</tr>
<tr>
<td>Carbohydrate (g)</td>
<td>16.1</td>
<td>10.5</td>
<td>4</td>
</tr>
<tr>
<td>Sugars (g)</td>
<td>2.5</td>
<td>1.6</td>
<td>1.8</td>
</tr>
<tr>
<td>Fibre (g)</td>
<td>23.2</td>
<td>15.1</td>
<td>-</td>
</tr>
<tr>
<td>Protein (g)</td>
<td>34.1</td>
<td>22.2</td>
<td>44.4</td>
</tr>
<tr>
<td>Salt (g)</td>
<td>0.5</td>
<td>0.35</td>
<td>6</td>
</tr>
<tr>
<td>Sodium (mg)</td>
<td>187.5</td>
<td>135</td>
<td>-</td>
</tr>
</tbody>
</table>

<p><b>Ingredients</b>: <strong></strong><strong></strong></p>
<p>Chicory Root Fibre, <strong>SOYA </strong>Protein Nuggets (<strong>SOYA </strong>Protein Isolate, Tapioca Starch, Sea Salt), Chocolate Flavoured Coating With Sweetener (14%) (Cocoa Butter, <strong>SOYA </strong>Flour, Sweetener: Xylitol, Cocoa Mass, Emulsifier: Lecithin, Natural Flavouring), <strong>SOYA</strong> Protein Isolate, Pea Protein Isolate, Humectant: Vegetable Glycerine, <strong>ALMOND </strong>Paste, (Artichoke) Inulin, Emulsifier: Lecithin, Vegetable Oil, Cocoa Butter, Natural Flavouring, Water, Antioxidant (Mixed Natural Tocopherols (Vitamin E)), Thickener: Gum Acacia, Salt, Sweetener: Sucralose. </p>
<p>Allergens: <strong>PEANUT</strong>, <strong>NUT,</strong> <strong>SESAME SEED</strong>, <strong>SOY</strong> &amp; <strong>SULPHITE</strong></p>
<p>For allergens, see ingredients highlighted in <strong>bold</strong>. Made in a facility that handles <strong>gluten, eggs, milk and nuts. </strong></p>', array['styrkr-styrkrthon-protein-bar/1.jpg', 'styrkr-styrkrthon-protein-bar/2.jpg', 'styrkr-styrkrthon-protein-bar/3.png']::text[], 'new', 1, '2025-04-08'::date, false, false),

  -- ---- nutrition · energy-chews ----
  ('bonk-breaker-energy-chews-1', 'Bonk Breaker Energy Chews', 'bonk-breaker', 'nutrition', 'energy-chews', '<p><strong>Fast Energy!</strong></p>
<p>Through a combination of organic sugar sources, chews provide fast acting carbohydrates and electrolytes to aid in muscle contraction. Unlike energy gels, they can be eaten in whatever portion an athlete needs.</p>
<p>Energy Chews give you clean, easily digestible, great-tasting fuel to energize your day! Energy Chews are a tasty and nutritious product that pack over 100% of your Vitamin C daily value in one packet! Just as you’d expect, our Energy Chews are Gluten-Free, Soy-Free, &amp; Dairy-Free.</p>
<p>We’re obsessed with endurance sports but we know that whether you’re training for an event, competing in one, or just getting through the endurance of everyday life, how you feed your body matters. A lot. What’s more, we’ve learned that what you put into your body affects what you get out of it—not only in results, but in helping you enjoy the experience.</p>
<p>Crazy, right?</p>
<p>More than 15 years ago, our founder, Jason Winn, took this idea to the next level, making it his mission to create delicious, easy-on-the-stomach performance fuel made from real food and designed for athletes and active people of all kinds. After launching the PB&amp;J energy bar, a melt-in-your-mouth mix of incredible flavor and quality nutrition, Bonk Breaker was born.</p>
<p>Since then, from collagen and plant-based protein bars to real-food energy bars and energy chews, Bonk Breaker products have become a hands-down favorite of individuals, teams, and organizations. We’ve earned our reputation at elite sporting events such as the Tour de France, IRONMAN World Championships, the Super Bowl – even the Olympics. It means a lot that from elite athletes to parents and active adults, we’re trusted to fuel performance (and life!) at all levels. Whatever the activity, and no matter the sport, we’re truly stoked to be a part of it.</p>', array['bonk-breaker-energy-chews-1/1.png', 'bonk-breaker-energy-chews-1/2.jpg', 'bonk-breaker-energy-chews-1/3.jpg', 'bonk-breaker-energy-chews-1/4.png', 'bonk-breaker-energy-chews-1/5.jpg']::text[], 'new', 1, '2025-05-21'::date, false, false),
  ('sis-beta-fuel-energy-chew', 'SiS Beta Fuel Energy Chew', 'sis', 'nutrition', 'energy-chews', '<h3>November Best Before</h3>
<h3></h3>
<h3>SiS Beta Fuel Energy Chew</h3>
<h3><strong>World-Leading Fuel in a Convenient Chew Bar</strong></h3>
<p>The <strong>SiS Beta Fuel Energy Chew</strong> is part of Science in Sport’s groundbreaking Beta Fuel range, delivering <strong>46g of dual-source carbohydrates</strong> in a tasty, easy-to-eat chew. Developed with elite athletes, this chew is designed to help endurance athletes fuel smarter, ride stronger, and maintain peak performance for longer.</p>

<h3>Why Choose Beta Fuel Energy Chews?</h3>
<p>For endurance efforts over two hours, athletes need to consume <strong>80–120g of carbohydrate per hour</strong>. The Beta Fuel Chew makes hitting those numbers easier, offering <strong>fast-absorbing carbohydrates</strong> in a convenient format that’s gentle on the stomach.</p>
<p>Thanks to SiS’s advanced <strong>1:0.8 glucose-to-fructose ratio</strong>, these chews optimise carb absorption, reduce GI discomfort, and help you sustain higher power outputs.</p>

<h3>The Science – A Smarter Fueling Formula</h3>
<ul>
<li>
<p><strong>New 1:0.8 Ratio</strong> replaces the old 2:1 ratio</p>
</li>
<li>
<p>Increases carbohydrate oxidation efficiency from <strong>62% → 74%</strong></p>
</li>
<li>
<p>Reduces symptoms of <strong>stomach fullness &amp; nausea</strong> compared to 2:1</p>
</li>
<li>
<p>Enhances <strong>mean power output by 3%</strong> during repeated maximal efforts</p>
</li>
<li>
<p>Allows athletes to use <strong>+17% more carbohydrate</strong> effectively</p>
</li>
</ul>
<p>Backed by research (O’Brien et al, 2013), the Beta Fuel Chew is proven to help athletes perform harder, for longer, with less discomfort.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>46g dual-source carbohydrates</strong> per pack</p>
</li>
<li>
<p>Optimised <strong>1:0.8 glucose-to-fructose ratio</strong></p>
</li>
<li>
<p>Gentle on the stomach – reduced GI stress</p>
</li>
<li>
<p>Developed with <strong>elite athletes</strong></p>
</li>
<li>
<p>Convenient chew format for on-the-go fueling</p>
</li>
<li>
<p>Part of the <strong>Beta Fuel range</strong> alongside gels &amp; drinks</p>
</li>
</ul>', array['sis-beta-fuel-energy-chew/1.png']::text[], 'new', 2, '2022-06-09'::date, false, false),
  ('sis-betafuel-energy-chew-20-box', 'SIS BetaFuel Energy Chew 20 Box', 'sis', 'nutrition', 'energy-chews', '<p>ChewsSiS Beta Fuel Energy Chew</p>
PRODUCT OVERVIEW

<p>WORLD-LEADING OPTIMISED BETA FUEL IN A UNIQUE CHEW BAR</p>
<p>Our Beta Fuel Dual Source Energy Chews deliver scientifically superior fuel in unique and satisfying chews. Part of an entire world-leading fuelling solution range that includes drinks and gels, they are super easy to consume and deliver 46 grams of carbohydrate to improve and maintain optimum performance.</p>
<p>WHY YOU SHOULD USE BETA FUEL DUAL SOURCE ENERGY GEL CHEWS</p>
<p>As an endurance athlete exerting your body for periods typically longer than two hours, you need to take in between 80-120g of carbohydrate per hour. Our Science in Sport Beta Fuel Dual Source Energy Gel Chews deliver 46g of fast carbs in a convenient and tasty chew, which have been optimised with a new ratio that enhances power output and increases carbohydrate usage efficiency without gastrointestinal discomfort.</p>
<p>NEW 1:0.8 RATIO REPLACES 2:1 RATIO</p>
<ul>
<li>A 1:0.8 ratio of glucose to fructose increases the percentage of ingested carbohydrate that is oxidized (known as efficiency) from 62% to 74% when compared with a ratio of 2:1</li>
<li>A 1:0.8 ratio of glucose to fructose reduces self-reported symptoms of stomach fullness when compared with a ratio of 2:1</li>
</ul>
<p>THE SCIENCE BEHIND BETA FUEL HAS EVOLVED</p>
<p>Through our Performance Solutions team, we''ve worked closely with elite athletes in the research and development of the new Beta Fuel range to bring you a scientifically superior fuel in a range of formats that allow you to use +17% more carbohydrate (O’Brien et al, 2013).</p>
<ul>
<li>A ratio of 1:0.8 enhances exogenous CHO oxidation compared with 2:1 ratio by 17% (O’Brien et al) and 10% (O’Brien et al)</li>
<li>A ratio of 1:0.8 enhances mean power output during 10 maximal sprint efforts by 3% compared with 2:1 ratio (O’Brien et al)</li>
<li>A ratio of 1:0.8 increases % of ingested CHO that was oxidised (efficiency) from 62% (2:1) to 74% (1:0.8) (O’Brien et al)</li>
<li>A ratio of 1:0.8 reduces symptoms of stomach fullness and nausea when compared with a ratio of 2:1 (O’Brien et al)</li>
</ul>', array['sis-betafuel-energy-chew-20-box/1.webp', 'sis-betafuel-energy-chew-20-box/2.webp']::text[], 'new', 2, '2025-09-15'::date, false, true),

  -- ---- nutrition · energy-gels ----
  ('applied-nutrition-isotonic-energy-gel', 'Applied Nutrition Isotonic Energy Gel', 'applied-nutrition', 'nutrition', 'energy-gels', '<p>Endurance Energy Gel delivers 23g of fast-absorbing carbohydrates in a convenient sachet, providing rapid energy for runners, cyclists, and endurance athletes. With zero sugar and an isotonic formula for easy digestion, it’s a clean, efficient energy source that keeps you going strong. Trusted by athletes and certified by Informed Sport, it’s designed to fuel peak performance and help you push your limits.</p>
<h3>DESCRIPTION</h3>
<p><strong>23g Carbohydrates | Zero Sugar</strong></p>
<p>Power your endurance with Endurance Energy Gel, designed to keep you moving when it matters most. Each compact gel sachet delivers 23g of fast-absorbing carbohydrates, providing a quick, efficient energy boost tailored for runners, cyclists, and endurance athletes.</p>
<p>Crafted for peak performance, this gel is a fast-absorbing carbohydrate gel that’s perfect for sustained energy during intense workouts or long-distance events. Whether you''re pounding the pavement, conquering trails, or cycling up steep climbs, Energy Gel ensures you stay energised without the crash.</p>
<p>Key Features:</p>
<ul>
<li>
<strong>Optimal Energy Delivery:</strong> Packed with 23g of carbohydrates, ideal for maintaining energy levels during endurance activities.</li>
<li>
<strong>Fast Absorption:</strong> Designed to deliver rapid fuel when you need it most. Versatile Use: Perfect as a running energy gel, cycling gel, or for any endurance sport.</li>
<li>
<strong>Zero Sugar:</strong> Clean energy with no added sugars, keeping your performance sharp and sustained.</li>
<li>
<strong>Informed Sport Certified:</strong> Trusted by athletes, tested for safety and quality.</li>
<li>
<strong>Isotonic Formula:</strong> Easy on the stomach, ensuring smooth digestion even during intense exertion.</li>
</ul>
<p>Backed by science in sport, Applied Nutrition''s Energy Gel is engineered for athletes who demand more from their fuel. With its isotonic energy gel formula, you can hydrate and energise simultaneously without relying on extra water.</p>
<p>Choose Endurance Energy Gel for a clean, efficient energy source that powers your performance. It''s more than just a gel—it''s your partner in pushing limits.</p>
<h3>Key Benefits</h3>
<ul>
<li>Informed-Sport Batch Tested for Athletes</li>
<li>23g Carbohydrates</li>
<li>Zero Sugar</li>
</ul>
<h3>Suggested Use</h3>
<p>Consume orally 1-3 gels per 60 minutes during exercise to maximise carbohydrate utilisation and support exercise performance. Energy gels do not need to be consumed with water to be effective. Ensure you keep hydrated.</p>', array['applied-nutrition-isotonic-energy-gel/1.webp', 'applied-nutrition-isotonic-energy-gel/2.webp', 'applied-nutrition-isotonic-energy-gel/3.webp', 'applied-nutrition-isotonic-energy-gel/4.webp', 'applied-nutrition-isotonic-energy-gel/5.webp']::text[], 'new', 2, '2025-04-17'::date, false, false),
  ('sis-beta-fuel-nootropics-gel', 'SIS Beta Fuel + Nootropics Gel', 'sis', 'nutrition', 'energy-gels', '<h3>Beta Fuel Dual Source Energy Gel + Nootropics</h3>
<h3>Evidence-Based Fuel for Body and Mind</h3>
<p>Push your limits with the <strong>Beta Fuel Dual Source Energy Gel + Nootropics</strong> — a scientifically formulated energy gel that delivers peak physical performance while supporting cognitive function. Designed for endurance athletes, it combines a carefully balanced carbohydrate ratio with <strong>Cognizin® Citicoline</strong>, caffeine, taurine, and theanine to keep both your body and mind performing at their best.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Optimised Carbohydrate Ratio (1:0.8)</strong><br>Each 40 g gel contains a maltodextrin-to-fructose ratio of 1:0.8, enhancing carbohydrate oxidation efficiency from <strong>62% to 74%</strong> and reducing gastrointestinal discomfort compared with traditional 2:1 gels.</p>
</li>
<li>
<p><strong>Cognitive Support for Mental Performance</strong><br>250 mg <strong>Cognizin® Citicoline</strong>, 200 mg caffeine, 1 g taurine, and 200 mg theanine work together to improve focus, attention, and mental endurance during long events.</p>
</li>
<li>
<p><strong>Scientifically Superior Fuel</strong><br>Developed with elite athletes, Beta Fuel gels allow you to utilize <strong>+17% more carbohydrate</strong> efficiently while maintaining optimal power output.</p>
</li>
<li>
<p><strong>Convenient Isotonic Formula</strong><br>Designed to be taken on the go, the isotonic gel is easy to digest and helps you maintain <strong>80–120 g carbohydrate per hour</strong> during endurance events lasting over two hours.</p>
</li>
<li>
<p><strong>Part of a Complete Fuelling Range</strong><br>Works seamlessly with other Beta Fuel products including drinks and chew bars for a full, evidence-based endurance nutrition strategy.</p>
</li>
</ul>

<h3>Why You’ll Love It</h3>
<p>Beta Fuel Dual Source Energy Gel + Nootropics provides <strong>dual-action performance support</strong>: sustained energy for your muscles and enhanced cognitive focus for critical moments in your race or training. Minimal GI discomfort and scientifically tested carbohydrate ratios make it the perfect choice for serious endurance athletes.</p>

<h3>Directions for Use</h3>
<ul>
<li>
<p>Consume <strong>1 gel max every day</strong> during endurance exercise</p>
</li>
<li>
<p>Drink water as required.</p>
</li>
<li>
<p>Ideal for events lasting 2+ hours.</p>
</li>
</ul>

<h3>Ready to Fuel Body and Mind?</h3>
<p>Elevate your endurance with <strong>Beta Fuel Dual Source Energy Gel + Nootropics</strong> — energy, focus, and performance in one scientifically proven gel.</p>', array['sis-beta-fuel-nootropics-gel/1.png']::text[], 'new', 2, '2024-01-11'::date, false, false),
  ('beta-fuel-gel', 'SIS Beta Fuel Gel', 'sis', 'nutrition', 'energy-gels', 'PRODUCT OVERVIEW

<p><b>WORLD-LEADING ENERGY GEL OPTIMISED WITH A NEW CARBOHYDRATE RATIO</b></p>
<p>Part of an entire world-leading fuelling solution range that includes drinks and chews, our Beta Fuel Dual Source Energy Gel is optimised with a brand new 1:0.8 ratio of 40g carbohydrate to enhance your power output, increase your body''s carbohydrate usage efficiency, and limit gastrointestinal discomfort to deliver a scientifically superior fuel.</p>
<p><b>WHY YOU SHOULD USE BETA FUEL DUAL SOURCE ENERGY GEL</b></p>
<p>As an endurance athlete (your events typically last more than two hours) you need to take in between 80-120g of carbohydrate per hour. The Science in Sport Beta Fuel Dual Source Energy Gel delivers an optimised 40g of carbohydrate in a single, convenient fuelling solution with minimal risk of GI discomfort that enables you to maintain optimal performance.</p>
<p>NEW 1:0.8 RATIO REPLACES 2:1 RATIO</p>
<ul>
<li>A 1:0.8 ratio of maltodextrin to fructose increases the percentage of ingested carbohydrate that is oxidized (known as efficiency) from 62% to 74% when compared with a ratio of 2:1</li>
<li>A 1:0.8 ratio of maltodextrin to fructose reduces self-reported symptoms of stomach fullness when compared with a ratio of 2:1</li>
</ul>
<p><b>THE SCIENCE BEHIND BETA FUEL HAS EVOLVED</b></p>
<p>Through our Performance Solutions team, we have worked closely with elite athletes in the research and development of the new Beta Fuel range to bring you a scientifically superior fuel in a range of formats that allow you to use +17% more carbohydrate (O’Brien et al, 2013).</p>
<ul>
<li>A ratio of 1:0.8 enhances exogenous CHO oxidation compared with 2:1 ratio by 17% (O’Brien et al) and 10% (O’Brien et al)</li>
<li>A ratio of 1:0.8 enhances mean power output during 10 maximal sprint efforts by 3% compared with 2:1 ratio (O’Brien et al)</li>
<li>A ratio of 1:0.8 increases % of ingested CHO that was oxidised (efficiency) from 62% (2:1) to 74% (1:0.8) (O’Brien et al)</li>
<li>A ratio of 1:0.8 reduces symptoms of stomach fullness and nausea when compared with a ratio of 2:1 (O’Brien et al)</li>
</ul>
<h5>NUTRITION STATS</h5>
<table>
<tbody>
<tr>
<th>Typical Values</th>
<th>Per 100ml</th>
<th>Per Serving 60ml</th>
</tr>
<tr>
<td>Energy</td>
<td>1122kJ/264kcal</td>
<td>673kJ/158kcal</td>
</tr>
<tr>
<td>Fat</td>
<td>0.0g</td>
<td>0.0g</td>
</tr>
<tr>
<td>of which saturates</td>
<td>0.0g</td>
<td>0.0g</td>
</tr>
<tr>
<td>Carbohydrate</td>
<td>66g</td>
<td>40g</td>
</tr>
<tr>
<td>of which sugar</td>
<td>31g</td>
<td>19g</td>
</tr>
<tr>
<td>Protein</td>
<td>0.0g</td>
<td>0.0g</td>
</tr>
<tr>
<td>Salt</td>
<td>0.05g</td>
<td>0.03g</td>
</tr>
</tbody>
</table>
<p>*Reference intake of an average adult (8400kj/2000kcal)</p>
<p><strong>Ingredients:</strong></p>
<p>Water, Maltodextrin (from Maize) (30%), Fructose (23%), Flavourings, Acidity Regulators (Citric Acid, Sodium Citrate), Gelling Agents (Gellan Gum, Xanthan Gum), Preservatives (Sodium Benzoate, Potassium Sorbate), Sodium Chloride.</p>
<p>No allergens</p>', array['beta-fuel-gel/1.png']::text[], 'new', 3, '2022-11-20'::date, false, false),
  ('sis-betafuel-gel-30-box', 'SIS Betafuel Gel 30 Box', 'sis', 'nutrition', 'energy-gels', '<h3>SiS Beta Fuel Dual Source Energy Gel – 60ml</h3>
<h3><strong>World-Leading Energy Gel with Optimised Carbohydrate Ratio</strong></h3>
<p>Part of Science in Sport’s <strong>Beta Fuel range</strong>, the Dual Source Energy Gel is designed to deliver <strong>fast, effective fuel</strong> for endurance athletes. Each 60ml gel contains <strong>40g of dual-source carbohydrate</strong> and is optimised with a <strong>new 1:0.8 maltodextrin-to-fructose ratio</strong> to enhance power output, improve carbohydrate usage efficiency, and minimise gastrointestinal discomfort.</p>
<p>Perfect for events lasting over two hours, this gel helps you maintain <strong>peak performance</strong> without the usual stomach issues associated with traditional carbohydrate fuels.</p>

<h3>Why Choose Beta Fuel Dual Source Energy Gel?</h3>
<ul>
<li>
<p>Provides <strong>40g of carbohydrate</strong> per gel in a convenient, easy-to-consume format</p>
</li>
<li>
<p>Optimised <strong>1:0.8 maltodextrin-to-fructose ratio</strong> increases carb oxidation efficiency from 62% → 74%</p>
</li>
<li>
<p>Reduces symptoms of <strong>stomach fullness and nausea</strong> compared to previous 2:1 ratio gels</p>
</li>
<li>
<p>Developed in collaboration with <strong>elite athletes</strong> to maximise endurance performance</p>
</li>
<li>
<p>Suitable for use alongside other Beta Fuel products (drinks and chews) for a complete fueling strategy</p>
</li>
</ul>

<h3>Performance Benefits (Research-Backed)</h3>
<ul>
<li>
<p><strong>+17% more carbohydrate usage efficiency</strong> compared with earlier formulas</p>
</li>
<li>
<p><strong>3% increase in mean power output</strong> during repeated maximal sprints</p>
</li>
<li>
<p>Supports <strong>sustained energy delivery</strong> for long endurance events</p>
</li>
</ul>

<h3>Specifications</h3>
<ul>
<li>
<p><strong>Container Size:</strong> Box of 30 × 60ml gels</p>
</li>
<li>
<p><strong>Serving Size:</strong> 60ml</p>
</li>
<li>
<p><strong>Servings Per Container:</strong> 30</p>
</li>
</ul>', array['sis-betafuel-gel-30-box/1.webp', 'sis-betafuel-gel-30-box/2.png']::text[], 'new', 1, '2025-07-07'::date, false, false),
  ('sis-betafuel-nootropics-gel-30-box', 'SIS Betafuel Nootropics  Gel 30 Box', 'sis', 'nutrition', 'energy-gels', '<p>SIS Beta Fuel Gels were already top of the class…but now they have an even bigger punch.</p>
<p>First, what makes Beta Fuel special?</p>
<p>The Beta Fuel Gel is a game-changing gel made with a 1:0.8 Maltodextrin:Fructose ratio, providing 40g of carbohydrates. The science behind this new ratio is genius. If you haven’t taken a guess yet, it is actually formulated to reduce symptoms of stomach fullness and stomach upset, like their original.</p>
<p>They are a neutral pH, isotonic solution just like the classic GO Energy Gels. On top of that, this gel provides 30-50% more carbohydrates than any other sports gel! New technology like that allows athletes to compete at their full potential without distractions or discomfort.</p>
<p>The Addition of Nootropics<br>An innovative Beta Fuel Dual Source Energy Gel + Nootropics, SiS combined, SiS this formula of carbohydrates with Cognizin® Citicoline to improve both your mental performance.</p>
<p>Part of an entirely new fueling range, the Beta Fuel Dual Source Energy Gel + Nootropics is optimized with a brand new 1:0.8 ratio of 40g carbohydrate to enhance your mental and physical power output, increase your body''s carb usage efficiency, and limit GI discomfort to deliver a scientifically superior fuel.</p>
<p>This formula also hits hard with 200mg of caffeine, 200mg of amino acid L-theanine, and 1g of L-taurine. These aminos have been shown to assist with alertness while reducing the “jitter” you may experience from a lot of caffeine.</p>
<p>What are Nootropics?<br>Nootropics are supplements that can improve and/or maintain peak cognitive performance such as attention, focus, creativity, motivation, memory, and so on.</p>
<p>SiS combined their innovative Beta Fuel Energy Gel with nootropics to craft a complete energy source for both body and mind. What’s this have to do with athletes? Endurance athletes can suffer grueling efforts over hours and hours…and with that comes mental fatigue. You don’t want diminishing mental function when the demands are high.</p>
<p>Why You Would Want Nootropics:<br>As an endurance athlete (with events lasting more than two hours) we know you benefit from taking in between 80-120g of carbohydrates per hour. The Science in Sport Beta Fuel Dual Source Energy Gel + Nootropics delivers an optimized 40g of carbohydrate in a single, convenient isotonic solution.</p>
<p>While carbohydrates are the main fuel focus, the nootropics ensure you maintain mental acuity and performance.</p>
<p>How to Use SiS Beta Fuel Nootropics Gel:<br>These gels are ready for you to take on your next training ride, race, or event…but it’s recommended to consume a maximum of one serving per day.</p>
<p>We suggest taking one in the middle of your intense workout or event, especially when going over 120 minutes. The earlier you can get on top of your fueling the better, and the Nootropics punch can make a difference at the line.</p>', array['sis-betafuel-nootropics-gel-30-box/1.webp', 'sis-betafuel-nootropics-gel-30-box/2.webp']::text[], 'new', 2, '2025-09-15'::date, false, false),
  ('siscaffeinegel', 'SIS Caffeine Gel', 'sis', 'nutrition', 'energy-gels', '<p>The GO Energy + Caffeine Gel 75mg builds on the established science of the GO Isotonic Energy gel, the world''s first and only truly isotonic energy gel.</p>
<p>This product provides 22g of carbohydrate and 75mg of caffeine per gel (Citrus flavour). Ideal for high intensity races and long, tough days on the road. Caffeine has been repeatedly shown to improve performance by lowering your perception of effort by providing a boost just when you need it.</p>
<p>GO Energy + Caffeine is clean in the mouth and easy to digest. For when you want an energy boost, but want the benefits of caffeine too. Use before or during sport for added physical and mental focus when you want to get an edge. </p>', array['siscaffeinegel/1.jpg', 'siscaffeinegel/2.webp', 'siscaffeinegel/3.webp']::text[], 'new', 2, '2021-08-19'::date, false, false),
  ('sis-gels-30-box', 'SIS Gels 30 Box', 'sis', 'nutrition', 'energy-gels', '<p><strong>Berry Gel Box Best Before October</strong></p>

<p>The GO Isotonic Energy Gel was the world''s first isotonic gel effectively delivering an easily digestible and quick supply of carbohydrate for energy during exercise.</p>
<p>They are designed to be consumed without water, minimising the risk of being bloated that can sometimes occur with over-drinking.</p>
<p><br>22 grams of rapidly absorbed carbohydrate per gel<br>Convenient easy-to-take format<br>Contents: 30 x 60ml gels per pack<br>Flavoured Maltodextrin gel with added sweetener.</p>
<p><strong>Recommend Usage:</strong></p>
<p>Consume 1-3 gels per hour to deliver approximately 60 grams of carbohydrate and maximize carbohydrate utilization rates. Where hydration is also important, SiS GO Isotonic Gels can also be consumed with SiS GO Hydro or with SiS GO Electrolyte to ensure a combination of both energy and fluid delivery during exercise.</p>
<p><strong>Directions for Use:</strong></p>
<p>Simply tear off the top of the packaging and consume - there is no need to mix with water.</p>
<p><strong>Benefits:</strong></p>
<p>Depleting your carbohydrate stores during exercise is one of the major causes of fatigue. Delivering additional carbohydrate during exercise is known to improve performance, race times and delay the onset of fatigue.</p>
<p>The Isotonic formula allows the gel to empty from the stomach quickly as no fluid needs to be drawn into your stomach to dilute the gel, providing fast energy. SiS GO Isotonic Energy Gels are highly practical and can easily be carried without the requirement for bulky bottles.</p>
<p><em>Suitable For<strong>: </strong>Vegans, Vegetarians, Lactose free, Gluten Free, Wheat Free, Nut Free, Soya Free</em></p>', array['sis-gels-30-box/1.webp', 'sis-gels-30-box/2.webp', 'sis-gels-30-box/3.webp', 'sis-gels-30-box/4.png']::text[], 'new', 9, '2024-03-29'::date, false, false),
  ('sis-go-isotonic-gel-variety-7-pack', 'SiS Go Isotonic Gel Variety - 7 Pack', 'sis', 'nutrition', 'energy-gels', '<p>SiS Go Isotonic Gel Variety - 7 Pack</p>
<h4>DESIGNED TO BOOST YOUR ENERGY WITH VARIETY OF FLAVOURS</h4>

<p><strong>Pack Includes:</strong></p>
<ul>
<li>SiS GO Isotonic Energy Gel Single Apple</li>
<li>SiS GO Isotonic Energy Gel Single Lemon &amp; Lime</li>
<li>SiS GO Isotonic Energy Gel Single Orange</li>
<li>SiS GO Isotonic Energy Gel Single Blackcurrant</li>
<li>SiS GO Isotonic Energy Gel Single Tropical</li>
<li>SiS GO Isotonic Energy Gel Single Pineapple</li>
<li>SiS GO Isotonic Energy Gel Single Pink Grapefruit</li>
</ul>
<p><strong>ABOUT SIS GO ISOTONIC GELS</strong><br>The world’s first isotonic gel, effectively delivering an easily digestible and quick supply of carbohydrate for energy during exercise. SiS GO Gels are designed to be consumed without water meaning that you can ensure rapid delivery of carbohydrate to your muscles without the feeling of being bloated. </p>
<p><strong>RECOMMENDED USAGE</strong><br>Consume 1-3 gels per hour to deliver approximately 60 grams of carbohydrate and maximize carbohydrate utilization rates.</p>
<h5>BENEFITS</h5>

<p>Depleting your carbohydrate stores during your workout is the best thing to do. one of the main causes of fatigue. Bringing in additional carbohydrates during exercise is a good idea. a perfect way to improve your performance and your running times, as well as slow down the onset of fatigue.</p>
<p>The isotonic formulation allows the gel to quickly pass the stomach, since it is not absorbed by the stomach. It is necessary to take liquids to dilute the gel, and thus immediately provide energy. SiS GO Isotonic Energy gels are very practical and can be transported without the need for bulky bottles.</p>
<p><strong>Informed Sport Registered</strong></p>
<p>the entire range of our products is designed for you. developed using a world-class approach to check for prohibited substances and offer a guarantee to athletes. For more information on Informed Sport and our unique global approach <a href="https://www.scienceinsport.com/eu/science" rel="noopener nofollow" target="_blank">click here(opens in a new tab)</a>.</p>', array['sis-go-isotonic-gel-variety-7-pack/1.jpg']::text[], 'new', 1, '2025-09-13'::date, false, false),
  ('sisisotonicgel', 'SIS Isotonic Gel+', 'sis', 'nutrition', 'energy-gels', '<ul>
<li>

<h3>SiS GO Isotonic Energy Gel</h3>
<h3>Fast, Convenient Energy On the Go</h3>
<p>Keep fatigue at bay with <strong>SiS GO Isotonic Energy Gel</strong>, the world’s first isotonic gel designed to deliver rapid carbohydrate energy <strong>without the need for water</strong>. Perfect for endurance athletes, it provides a quick, easily digestible fuel source to sustain performance during long rides, runs, or training sessions.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Truly Isotonic Formula</strong><br>No water required — the gel is designed to empty from the stomach quickly, minimizing bloating and delivering <strong>fast, effective energy</strong>.</p>
</li>
<li>
<p><strong>Optimal Carbohydrate Content</strong><br>Each gel contains <strong>22 g of rapidly absorbed carbohydrate</strong> to help maintain energy, delay fatigue, and improve performance.</p>
</li>
<li>
<p><strong>Convenient &amp; Practical</strong><br>Lightweight, portable 60 ml gels are easy to carry, making them ideal for training, racing, or long sessions on the road.</p>
</li>
<li>
<p><strong>Award-Winning Innovation</strong><br>Winner of the <strong>Queen’s Award for Enterprise</strong>, this gel continues to set the standard for endurance nutrition.</p>
</li>
<li>
<p><strong>Vegan-Friendly</strong><br>Suitable for vegan athletes, flavoured with maltodextrin and added sweeteners for a pleasant taste.</p>
</li>
</ul>

<h3>Specifications</h3>
<ul>
<li>
<p><strong>Pack Contents</strong>: 30 x 60 ml gels</p>
</li>
<li>
<p><strong>Carbohydrate per Gel</strong>: 22 g</p>
</li>
<li>
<p><strong>Shelf Life</strong>: Minimum 3 months</p>
</li>
<li>
<p><strong>Diet Suitability</strong>: Vegan</p>
</li>
</ul>

<h3>Why You’ll Love It</h3>
<p>SiS GO Isotonic Energy Gel is <strong>fast, simple, and effective</strong>, giving you the energy boost you need without extra water. Perfect for cyclists, runners, and triathletes looking for a convenient way to fuel during endurance sessions.</p>

<h3>Ready to Power Your Performance?</h3>
<p>Grab a pack of <strong>SiS GO Isotonic Energy Gels</strong> and stay energised, comfortable, and focused from start to finish.</p>
</li>
</ul>', array['sisisotonicgel/1.jpg', 'sisisotonicgel/2.png', 'sisisotonicgel/3.jpg', 'sisisotonicgel/4.jpg', 'sisisotonicgel/5.jpg']::text[], 'new', 8, '2021-09-22'::date, false, false),
  ('styrkr-bottle-500ml-1', 'Styrkr Bottle 500ml', 'styrkr', 'nutrition', 'energy-gels', '<p>Just a bottle? We prefer to think of it as an Adventure Receptacle. Fill it up to the 500ml ridge with water to optimise your Styrkr MIX60 and MIX90 products. Incorporates an easy-to-squeeze material, screw-on cap with leak-proof pull-lid and a striking form of the cap to ensure a firm and secure grip.</p>', array['styrkr-bottle-500ml-1/1.webp']::text[], 'new', 3, '2025-11-18'::date, false, false),
  ('styrkr-gel30-caffeine-dual-carb-energy-gel', 'Styrkr GEL30 Caffeine Dual-Carb Energy Gel', 'styrkr', 'nutrition', 'energy-gels', '<p><b>Enhanced formula for peak performance</b></p>
<p>GEL30 Caffeine+ energy gels deliver maximum carbs at the fastest rate possible and a caffeine boost to keep you fully focused on the task ahead.</p>
<ul>
<li>
New and improved natural flavours</li>
<li>
Improved texture for better taste</li>
<li>
Supplies maximum carbohydrates (30g) for maximum energy</li>
<li>
Provides 150mg of caffeine for enhanced focus</li>
<li>
Durable packaging with 35% reduced plastic</li>
<li>
Gentle on the stomach, pH-balanced with no unnecessary preservatives</li>
<li>
100% vegan-friendly, manufactured in the UK</li>
</ul>
<p><br></p>
<p><b>Endurance Fuel, Backed by Science.</b></p>
<p>All Styrkr drinks, gels and salts have been specifically engineered to produce unique effects in the body – specifically, the bloodstream – that reduce overall fatigue and energy expenditure while maintaining power and increasing output throughout endurance activity.</p>
<p><br></p>
<p><b>Complete endurance fuel</b></p>
<p>We don’t just give you the most effective carbohydrate fuelling, our active ingredients like L-glutamine reduce the accumulation of blood ammonia concentration during exercise, lessening fatigue and boosting your performance.</p>
<p><br></p>
<p><b>Perfect carb ratio</b></p>
<p>Styrkr drink mixes and gels contain two transportable carbohydrates – maltodextrin and fructose – at a ratio of 1:0.8 to improve the exogenous carbohydrate oxidation rate and cause the least amount of gut discomfort compared to ratios of 1:1.25 and 2:1</p>
<p><br></p>
<p><b>Affordable</b></p>
<p>Our products hit your PBs hard, not your pockets. FACT: Styrkr drink mixes, gels and salts costs less per unit than our dual-carb competitors. Our products deliver maximum carbohydrates in an industry leading price to weight ratio.</p>
<p><br></p>
<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>
<p><br></p>
<p><b>A balance of carbs, vitamins and electrolytes to give your body all it needs to perform.</b></p>
<p>All Styrkr products have been made specifically with athletes in mind and tested in the toughest conditions before going to market. Our energy gels and drink mixes give you everything you need to perform at your best and nothing that you don’t.</p>
<p><br></p>
<p><b>How many carbs do I need?</b></p>
<p>During intense activity carbohydrates are your body’s primary energy source and more can be absorbed per hour when they come from dual sources. As a rule of thumb you should be aiming for around 30-60g of carbs per hour for activities of 1-3 hours and 90-120g of carbs per hour for any activities over four hours. This will of course depend on your individual size and weight. We recommend training your gut and using our Fuel-Tool to help calculate a fuelling guide for your needs.</p>
<p><br></p>
<p><b>What goes in to Styrkr GEL30 Caffeine Energy Gels</b></p>
<p><b>30g of carbohydrates</b> - Can be combined easily with MIX60 to reach a 90g target for harder sessions.</p>
<p><b>1:0.8 ratio of maltodextrin : fructose</b> - Increases gastric emptying time and absorption rates to reduce gastric irritation.  </p>
<p><b>150mg of caffeine</b> - Caffeine increases alertness, reduces perceived effort and pain during exercise.</p>
<p><b>Batch tested and athlete-approved</b> - Third-party lab batch testing for WADA banned substances.</p>
<p><b>Natural flavouring</b> - With STYRKR it’s natural flavouring all the way to the finish line.</p>
<p><b>Vegan and Gluten free formulation</b> - Vegan society registered so you never have to compromise your diet.</p>
<p><br></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (72g)</p>
</td>
</tr>
<tr>
<td>
<p>Energy</p>
</td>
<td>
<p>744 kJ<br>
178 KCAL</p>
</td>
<td>
<p>536 kJ<br>
128 KCAL</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>0.01g</p>
</td>
<td>
<p>0.01g</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrates (g)</p>
</td>
<td>
<p>41.7g</p>
</td>
<td>
<p>30g</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>18.5g</p>
</td>
<td>
<p>13.3g</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>0.24g</p>
</td>
<td>
<p>0.17g</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>0.01g</p>
</td>
<td>
<p>0.01g</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
</tbody>
</table>
<p><br></p>
<p><b>Ingredients</b>: Water, Maltodextrin, Fructose, Thickening Agent (Pectin), Natural Cola Flavouring, Caffeine, Sweetener (Steviol Glycosides), Acid (Citric Acid), Acidity Regulator (Trisodium Citrate), Preservative (Potassium Sorbate).</p>
<p>Styrkr Gels:  Caution: May contain traces of nuts.</p>
<p><br></p>
<p><b>Fuelling the every day athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We Listen to what our customers have to say and always strive to create the higest quality products that really work.</p>
<p><br></p>
<p>UK Manufactured</p>
<p><br></p>
<p>Non-GMO</p>
<p><br></p>
<p>High Quality Ingredients</p>
<p><br></p>', array['styrkr-gel30-caffeine-dual-carb-energy-gel/1.jpg', 'styrkr-gel30-caffeine-dual-carb-energy-gel/2.png', 'styrkr-gel30-caffeine-dual-carb-energy-gel/3.png']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-gel30-dual-carb-energy-gel', 'Styrkr GEL30 Dual-Carb Energy Gel', 'styrkr', 'nutrition', 'energy-gels', '<p><b>Enhanced formula for peak performance</b></p>
<p>GEL30 delivers maximum carbs at the fastest rate possible and comes imbued with a PB-busting nitric oxide boost.</p>
<ul>
<li>
New and improved natural flavours</li>
<li>
Improved texture for better taste</li>
<li>
Supplies maximum carbohydrates (30g) for maximum energy</li>
<li>
Delivers nitric oxide boost to maintain maximum output for longer</li>
<li>
Durable packaging with 35% reduced plastic</li>
<li>
Gentle on the stomach, pH-balanced with no unnecessary preservatives</li>
<li>
100% vegan-friendly, manufactured in the UK</li>
</ul>
<p><br></p>
<p><b>Endurance Fuel, Backed by Science.</b></p>
<p>All Styrkr drinks, gels and salts have been specifically engineered to produce unique effects in the body – specifically, the bloodstream – that reduce overall fatigue and energy expenditure while maintaining power and increasing output throughout endurance activity.</p>
<p><br></p>
<p><b>Complete endurance fuel</b></p>
<p>We don’t just give you the most effective carbohydrate fuelling, our active ingredients like L-glutamine reduce the accumulation of blood ammonia concentration during exercise, lessening fatigue and boosting your performance.</p>
<p><br></p>
<p><b>Perfect carb ratio</b></p>
<p>Styrkr drink mixes and gels contain two transportable carbohydrates – maltodextrin and fructose – at a ratio of 1:0.8 to improve the exogenous carbohydrate oxidation rate and cause the least amount of gut discomfort compared to ratios of 1:1.25 and 2:1</p>
<p><br></p>
<p><b>Affordable</b></p>
<p>Our products hit your PBs hard, not your pockets. FACT: Styrkr drink mixes, gels and salts costs less per unit than our dual-carb competitors. Our products deliver maximum carbohydrates in an industry leading price to weight ratio.</p>
<p><br></p>
<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>
<p><br></p>
<p><b>A balance of carbs, vitamins and electrolytes to give your body all it needs to perform.</b></p>
<p>All Styrkr products have been made specifically with athletes in mind and tested in the toughest conditions before going to market. Our energy gels and drink mixes give you everything you need to perform at your best and nothing that you don’t.</p>
<p><br></p>
<p><b>How many carbs do I need?</b></p>
<p>During intense activity carbohydrates are your body’s primary energy source and more can be absorbed per hour when they come from dual sources. As a rule of thumb you should be aiming for around 30-60g of carbs per hour for activities of 1-3 hours and 90-120g of carbs per hour for any activities over four hours. This will of course depend on your individual size and weight. We recommend training your gut and using our Fuel-Tool to help calculate a fuelling guide for your needs.</p>
<p><br></p>
<p><b>What goes in to Styrkr GEL30 Energy Gels</b></p>
<p><b>30g of carbohydrates</b> - Can be combined easily with MIX60 to reach a 90g target for harder sessions.</p>
<p><b>1:0.8 ratio of maltodextrin : fructose</b> - Increases gastric emptying time and absorption rates to reduce gastric irritation.  </p>
<p><b>Contains L-Arginine</b> - Main precursor to nitric oxide, maintains the same level of output at a lesser effort.</p>
<p><b>Contains L-Citrulline</b> - Converted to L-Arginine, helping the body to utilise Nitric oxide more effectively.</p>
<p><b>Natural flavouring</b> - With STYRKR it’s natural flavouring all the way to the finish line.</p>
<p><b>Vegan and Gluten free formulation</b> - Vegan society registered so you never have to compromise your diet.</p>
<p><br></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (72g)</p>
</td>
</tr>
<tr>
<td>
<p>Energy</p>
</td>
<td>
<p>744 kJ<br>
178 KCAL</p>
</td>
<td>
<p>536 kJ<br>
128 KCAL</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>0.01g</p>
</td>
<td>
<p>0.01g</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrates (g)</p>
</td>
<td>
<p>41.7g</p>
</td>
<td>
<p>30g</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>18.5g</p>
</td>
<td>
<p>13.3g</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>0.24g</p>
</td>
<td>
<p>0.17g</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>0.01g</p>
</td>
<td>
<p>0.01g</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
</tbody>
</table>
<p><br></p>
<p>Ingredients: Water, Maltodextrin, Fructose, Thickening Agent (Pectin), L-Citrulline, L-Arginine, Natural Berry Flavouring, Sweetener (Steviol Glycosides), Acid (Citric Acid), Acidity Regulator (Trisodium Citrate), Preservative (Potassium Sorbate).</p>
<p>Styrkr Gels:  Caution: May contain traces of nuts.</p>
<p><br></p>
<p><br></p>
<p><br></p>
<p><b>Fuelling the every day athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We Listen to what our customers have to say and always strive to create the higest quality products that really work.</p>
<p><br></p>
<p>UK Manufactured</p>
<p><br></p>
<p>Non-GMO</p>
<p><br></p>
<p>High Quality Ingredients</p>
<p><br></p>', array['styrkr-gel30-dual-carb-energy-gel/1.jpg', 'styrkr-gel30-dual-carb-energy-gel/2.jpg', 'styrkr-gel30-dual-carb-energy-gel/3.png']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-gel30-nitro-dual-carb-energy-gel', 'Styrkr GEL30 Nitro Dual-Carb Energy Gel', 'styrkr', 'nutrition', 'energy-gels', '<p><b>Enhanced formula for peak performance</b></p>
<p>GEL30 Nitro+ delivers maximum carbs at the fastest rate possible and comes imbued with a PB-busting nitric oxide boost.</p>
<ul>
<li>
New and improved natural flavours</li>
<li>
Improved texture for better taste</li>
<li>
Supplies maximum carbohydrates (30g) for maximum energy</li>
<li>
Packed with natural nitrates for an instant energy and power boost</li>
<li>
Durable packaging with 35% reduced plastic</li>
<li>
Gentle on the stomach, pH-balanced with no unnecessary preservatives</li>
<li>
100% vegan-friendly, manufactured in the UK</li>
</ul>
<p><br></p>
<p><br></p>
<p><b>Endurance Fuel, Backed by Science.</b></p>
<p>All Styrkr drinks, gels and salts have been specifically engineered to produce unique effects in the body – specifically, the bloodstream – that reduce overall fatigue and energy expenditure while maintaining power and increasing output throughout endurance activity.</p>
<p><br></p>
<p><b>Complete endurance fuel</b></p>
<p>We don’t just give you the most effective carbohydrate fuelling, our active ingredients like L-glutamine reduce the accumulation of blood ammonia concentration during exercise, lessening fatigue and boosting your performance.</p>
<p><br></p>
<p><b>Perfect carb ratio</b></p>
<p>Styrkr drink mixes and gels contain two transportable carbohydrates – maltodextrin and fructose – at a ratio of 1:0.8 to improve the exogenous carbohydrate oxidation rate and cause the least amount of gut discomfort compared to ratios of 1:1.25 and 2:1</p>
<p><br></p>
<p><b>Affordable</b></p>
<p>Our products hit your PBs hard, not your pockets. FACT: Styrkr drink mixes, gels and salts costs less per unit than our dual-carb competitors. Our products deliver maximum carbohydrates in an industry leading price to weight ratio.</p>
<p><br></p>
<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>
<p><br></p>
<p><b>A balance of carbs, vitamins and electrolytes to give your body all it needs to perform.</b></p>
<p>All Styrkr products have been made specifically with athletes in mind and tested in the toughest conditions before going to market. Our gels and drink mixes give you everything you need to perform at your best and nothing that you don’t.</p>
<p><br></p>
<p><b>How many carbs do I need?</b></p>
<p>During intense activity carbohydrates are your body’s primary energy source and more can be absorbed per hour when they come from dual sources. As a rule of thumb you should be aiming for around 30-60g of carbs per hour for activities of 1-3 hours and 90-120g of carbs per hour for any activities over four hours. This will of course depend on your individual size and weight. We recommend training your gut and using our Fuel-Tool to help calculate a fuelling guide for your needs.</p>
<p><br></p>
<p><b>What goes in to Styrkr GEL30 Nitro</b></p>
<p><b>30g of carbohydrates</b> - Can be combined easily with MIX60 to reach a 90g target for harder sessions.</p>
<p><b>1:0.8 ratio of maltodextrin : fructose</b> - Increases gastric emptying time and absorption rates to reduce gastric irritation.  </p>
<p><b>Active Ingredients </b>- Dietary Nitrates help increase output for lesser effort when oxygen levels are low.</p>
<p><b>Packed with natural nitrates</b> - Contains Beetroot extract and Amaranthus leaf extract these provide us with natural nitrates converting to Nitric Oxide.</p>
<p><b>Natural flavouring</b> - With STYRKR it’s natural flavouring all the way to the finish line.</p>
<p><b>Vegan and Gluten free formulation</b> - Vegan society registered so you never have to compromise your diet.</p>
<p><br></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (72g)</p>
</td>
</tr>
<tr>
<td>
<p>Energy</p>
</td>
<td>
<p>204 kcal (854KJ)</p>
</td>
<td>
<p>147 kcal (615KJ)</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>0.10g</p>
</td>
<td>
<p>0.07g</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>0.03g</p>
</td>
<td>
<p>0.02g</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrates (g)</p>
</td>
<td>
<p>41.7g</p>
</td>
<td>
<p>30g</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>19g</p>
</td>
<td>
<p>13.7g</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>0.33g</p>
</td>
<td>
<p>0.24g</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>0.47g</p>
</td>
<td>
<p>0.34g</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0.04g</p>
</td>
<td>
<p>0.03g</p>
</td>
</tr>
</tbody>
</table>
<p><br></p>
<p>Ingredients: Water, Maltodextrin, Fructose, Thickening Agent (Pectin), Beetroot extract (6% Nitrate), Amaranthus leaf extract (9% Nitrate), Natural Apple and Blackcurrant Flavourings, Sweetener (Steviol Glycosides), Acid (Citric Acid), Acidity Regulator (Trisodium Citrate), Preservative (Potassium Sorbate)<br>
Styrkr Gels: Caution: May contain traces of nuts.</p>
<p><br></p>
<p><br></p>
<p><b>Fuelling the every day athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We Listen to what our customers have to say and always strive to create the higest quality products that really work.</p>
<p><br></p>
<p>UK Manufactured</p>
<p><br></p>
<p>Non-GMO</p>
<p><br></p>
<p>High Quality Ingredients</p>
<p><br></p>', array['styrkr-gel30-nitro-dual-carb-energy-gel/1.jpg', 'styrkr-gel30-nitro-dual-carb-energy-gel/2.png']::text[], 'new', 1, '2025-04-08'::date, false, false),
  ('styrkr-gel50-citrus-fruits-dual-carb-energy-gel-1', 'Styrkr GEL50 Citrus Fruits Dual-Carb Energy Gel', 'styrkr', 'nutrition', 'energy-gels', '<p>GEL50 was born out of a simple goal – to give athletes more. It''s a quick and convenient dual-carb energy gel packed with 50g of carbs, designed to help you push the limits. Proven at the highest level and built with just 6 ingredients.</p>
<ul>
<li>
New and Improved natural flavour</li>
<li>
Supplies maximum carbohydrates (50g) for maximum energy</li>
<li>
Gentle on the stomach, pH-balanced with no unnecessary preservatives</li>
<li>
Tested against WADA banned substances</li>
<li>
Durable packaging with 35% reduced plastic</li>
<li>
100% vegan-friendly, manufactured in the UK</li>
</ul>
<p><br></p>
<p><br></p>
<p><b>Endurance Fuel, Backed by Science.</b></p>
<p>All Styrkr drinks, gels and salts have been specifically engineered to produce unique effects in the body – specifically, the bloodstream – that reduce overall fatigue and energy expenditure while maintaining power and increasing output throughout endurance activity.</p>
<p><br></p>
<p><br></p>
<p><b>Perfect carb ratio</b></p>
<p>Styrkr drink mixes and gels contain two transportable carbohydrates – maltodextrin and fructose – at a ratio of 1:0.8 to improve the exogenous carbohydrate oxidation rate and cause the least amount of gut discomfort compared to ratios of 1:1.25 and 2:1</p>
<p><br></p>
<p><b>Affordable</b></p>
<p>Our products hit your PBs hard, not your pockets. FACT: Styrkr drink mixes, gels and salts costs less per unit than our dual-carb competitors. Our products deliver maximum carbohydrates in an industry leading price to weight ratio.</p>
<p><br></p>
<p><br></p>
<p><b>Vegan-Friendly</b></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>

<p><br></p>
<p><b>A balance of carbs, vitamins and electrolytes to give your body all it needs to perform.</b></p>
<p>All Styrkr products have been made specifically with athletes in mind and tested in the toughest conditions before going to market. Our gels and drink mixes give you everything you need to perform at your best and nothing that you don’t.</p>
<p><br></p>
<p><br></p>
<p><b>How many carbs do I need?</b></p>
<p>During intense activity carbohydrates are your body’s primary energy source and more can be absorbed per hour when they come from dual sources. As a rule of thumb you should be aiming for around 30-60g of carbs per hour for activities of 1-3 hours and 90-120g of carbs per hour for any activities over four hours. This will of course depend on your individual size and weight. We recommend training your gut and using our Fuel-Tool to help calculate a fuelling guide for your needs.</p>
<p><br></p>
<p><b>What goes in to Styrkr GEL50</b></p>
<p><br></p>
<p><b></b><br></p>
<p><b>50g of carbohydrates</b> - Can be combined easily with another Styrkr product to reach a high carb target for harder sessions.</p>

<p><b>1:0.8 ratio of maltodextrin : fructose</b> - Increases gastric emptying time and absorption rates to reduce gastric irritation.  </p>

<p><b>Vegan and Gluten free formulation</b> - Vegan formulation so you never have to compromise your diet.</p>

<p><b>Natural flavouring</b> - With STYRKR it’s natural flavouring all the way to the finish line.</p>
<p><br></p>
<p><b>Nutritional Information:</b></p>
<table>
<tbody>
<tr>
<td>
<p>Nutritional Value</p>
</td>
<td>
<p>Per 100g</p>
</td>
<td>
<p>Per Serving (72g)</p>
</td>
</tr>
<tr>
<td>
<p>Energy</p>
</td>
<td>
<p>1182 kJ</p>
</td>
<td>
<p>851 kJ</p>
</td>
</tr>
<tr>
<td>
<p><br></p>
</td>
<td>
<p>278 KCAL</p>
</td>
<td>
<p>200 KCAL</p>
</td>
</tr>
<tr>
<td>
<p>Fat (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Saturated (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Carbohydrates (g)</p>
</td>
<td>
<p>69.5g</p>
</td>
<td>
<p>50g</p>
</td>
</tr>
<tr>
<td>
<p>Sugars (g)</p>
</td>
<td>
<p>34.8g</p>
</td>
<td>
<p>25.1g</p>
</td>
</tr>
<tr>
<td>
<p>Fibre (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Protein (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
<tr>
<td>
<p>Salt (g)</p>
</td>
<td>
<p>0g</p>
</td>
<td>
<p>0g</p>
</td>
</tr>
</tbody>
</table>
<p>Full ingredients: Water, Maltodextrin, Fructose, Pectin, L-Citrulline, L-Arginine, Natural Citrus Flavouring, Stevia, Citric Acid, Trisodium Citrate, Potassium Sorbate.</p>
<p>Styrkr Gels:  Caution: May contain traces of nuts.</p>
<p><br></p>
<p><b>Fuelling the every day athlete</b></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We Listen to what our customers have to say and always strive to create the higest quality products that really work.</p>
<p>UK Manufactured</p>
<p>Non-GMO</p>
<p>High Quality Ingredients</p>', array['styrkr-gel50-citrus-fruits-dual-carb-energy-gel-1/1.png', 'styrkr-gel50-citrus-fruits-dual-carb-energy-gel-1/2.png', 'styrkr-gel50-citrus-fruits-dual-carb-energy-gel-1/3.png']::text[], 'new', 1, '2025-05-27'::date, false, false),
  ('styrkr-gel50-mixed-berry-dual-carb-energy-gel', 'Styrkr GEL50 Mixed Berry Dual-Carb Energy Gel', 'styrkr', 'nutrition', 'energy-gels', '<p>GEL50 was born out of a simple goal – to give athletes more. It''s a quick and convenient dual-carb energy gel packed with 50g of carbs, designed to help you push the limits. Proven at the highest level and built with just 6 ingredients.</p>
<ul>
<li>New and Improved natural flavour</li>
<li>Supplies maximum carbohydrates (50g) for maximum energy</li>
<li>Gentle on the stomach, pH-balanced with no unnecessary preservatives</li>
<li>Tested against WADA banned substances</li>
<li>Durable packaging with 35% reduced plastic</li>
<li>100% vegan-friendly, manufactured in the UK</li>
</ul>

<p><strong> </strong></p>
<p><strong>Endurance Fuel, Backed by Science.</strong></p>
<p>All Styrkr drinks, gels and salts have been specifically engineered to produce unique effects in the body – specifically, the bloodstream – that reduce overall fatigue and energy expenditure while maintaining power and increasing output throughout endurance activity.</p>

<p><strong> </strong></p>
<p><strong>Perfect carb ratio</strong></p>
<p>Styrkr drink mixes and gels contain two transportable carbohydrates – maltodextrin and fructose – at a ratio of 1:0.8 to improve the exogenous carbohydrate oxidation rate and cause the least amount of gut discomfort compared to ratios of 1:1.25 and 2:1</p>
<p><strong> </strong></p>
<p><strong>Affordable</strong></p>
<p>Our products hit your PBs hard, not your pockets. FACT: Styrkr drink mixes, gels and salts costs less per unit than our dual-carb competitors. Our products deliver maximum carbohydrates in an industry leading price to weight ratio.</p>

<p><strong> </strong></p>
<p><strong>Vegan-Friendly</strong></p>
<p>Our products are proudly 100% vegan and non-GMO, guaranteeing the highest quality ingredients for your health and well-being.</p>

<p><strong>A balance of carbs, vitamins and electrolytes to give your body all it needs to perform.</strong></p>
<p>All Styrkr products have been made specifically with athletes in mind and tested in the toughest conditions before going to market. Our gels and drink mixes give you everything you need to perform at your best and nothing that you don’t.</p>

<p><strong> </strong></p>
<p><strong>How many carbs do I need?</strong></p>
<p>During intense activity carbohydrates are your body’s primary energy source and more can be absorbed per hour when they come from dual sources. As a rule of thumb you should be aiming for around 30-60g of carbs per hour for activities of 1-3 hours and 90-120g of carbs per hour for any activities over four hours. This will of course depend on your individual size and weight. We recommend training your gut and using our Fuel-Tool to help calculate a fuelling guide for your needs.</p>
<p><strong> </strong></p>
<p><strong>What goes in to Styrkr GEL50</strong></p>

<strong> </strong>

<strong>50g of carbohydrates</strong> - Can be combined easily with another Styrkr product to reach a high carb target for harder sessions.
 

<strong>1:0.8 ratio of maltodextrin : fructose</strong> - Increases gastric emptying time and absorption rates to reduce gastric irritation.  

 

<strong>Vegan and Gluten free formulation</strong> - Vegan formulation so you never have to compromise your diet.
 

<strong>Natural flavouring</strong> - With STYRKR it’s natural flavouring all the way to the finish line.
<p><strong> </strong></p>
<p><strong>Nutritional Information:</strong></p>
<table>
 
<tbody>
<tr>
<td>Nutritional Value</td>
<td>Per 100g</td>
<td>Per Serving (72g)</td>
</tr>
<tr>
<td>Energy</td>
<td>1184 kJ</td>
<td>852 kJ</td>
</tr>
<tr>
<td>279 KCAL</td>
<td>201 KCAL</td>
</tr>
<tr>
<td>Fat (g)</td>
<td>0g</td>
<td>0g</td>
</tr>
<tr>
<td>Saturated (g)</td>
<td>0g</td>
<td>0g</td>
</tr>
<tr>
<td>Carbohydrates (g)</td>
<td>69.7g</td>
<td>50g</td>
</tr>
<tr>
<td>Sugars (g)</td>
<td>34.8g</td>
<td>25.1g</td>
</tr>
<tr>
<td>Fibre (g)</td>
<td>0g</td>
<td>0g</td>
</tr>
<tr>
<td>Protein (g)</td>
<td>0g</td>
<td>0g</td>
</tr>
<tr>
<td>Salt (g)</td>
<td>0g</td>
<td>0g</td>
</tr>
</tbody>
</table>

<p>Full ingredients: Maltodextrin, Fructose, Water, Acidity Regulator (Citric Acid, Natural Berry Flavouring, Preservative (Potassium Sorbate).</p>
<p><u>Styrkr Gels</u>:  <strong>Caution: May contain traces of nuts.</strong></p>
<p><strong> </strong></p>
<p><strong>Fuelling the every day athlete</strong></p>
<p>The Styrkr sports fuel range is the culmination of many months of research and development with one clear focus: to help everyday athletes reach their next endurance goal. We Listen to what our customers have to say and always strive to create the higest quality products that really work.</p>

<p>UK Manufactured</p>

<p>Non-GMO</p>

<p>High Quality Ingredients</p>', array['styrkr-gel50-mixed-berry-dual-carb-energy-gel/1.png', 'styrkr-gel50-mixed-berry-dual-carb-energy-gel/2.png', 'styrkr-gel50-mixed-berry-dual-carb-energy-gel/3.png']::text[], 'new', 1, '2025-04-08'::date, false, false),

  -- ---- nutrition · protein-recovery ----
  ('applied-nutrition-endurance-recovery-post-exercise-fuel-', 'Applied Nutrition Endurance Recovery - Post Exercise Fuel 1.5kg', 'applied-nutrition', 'nutrition', 'protein-recovery', '<p>Endurance Rapid Recovery Fuel is at the forefront of modern day intense post workout demands. Delivering 21g of plant based protein, 24g of fast absorbing carbohydrates and a crucial 1500mg of rehydrating electrolytes that helps maintain fluid balance in the body and can help prevent muscle cramps. </p>
<h3>DESCRIPTION</h3>
<p><strong>Protein, Carb &amp; Electrolyte Blend</strong></p>
<p><strong>30 Servings | 24g Carbs | 21g Protein | 7g BCAAs | 1500mg Electrolytes</strong></p>
<p>Endurance Recovery is at the forefront of modern day intense post workout fuel demands. Delivering 21g of plant based protein, 24g of fast absorbing carbohydrates and a crucial 1500mg of rehydrating electrolytes that helps maintain fluid balance in the body and can help prevent muscle cramps. <br><br>Endurance Recovery is ideal for anyone participating in prolonged &amp; intense exercise, refuelling your body with maximum levels of the key revitalising &amp; replenishing components that it critically demands.</p>

<h3>Key Benefit</h3>
<ul>
<li><strong>Informed-Sport Batch Tested For Athletes</strong></li>
<li><strong>Vegan Friendly &amp; Halal Certified </strong></li>
<li>
<strong>Muscle Repair and Growth: </strong>Carbohydrates help restore glycogen levels depleted during exercise, ensuring muscles are ready for the next workout.</li>
<li>
<strong>Reduced Muscle Soreness: </strong>Endurance Recovery post-exercise fuel can help reduce delayed onset muscle soreness (DOMS), allowing for quicker return to training.</li>
<li>
<strong>Hydration and Electrolyte Balance: </strong>Replenishing lost electrolytes helps maintain fluid balance and prevent dehydration.</li>
<li>
<strong>Enhanced Recovery: </strong>The combined effect of proteins, carbohydrates, and other nutrients ensures comprehensive recovery, allowing athletes to perform at their best consistently.</li>
</ul>
<h4>SUITABLE FOR</h4>
<ul>
<li>Vegans &amp; vegetarians</li>
<li>Gluten free &amp; wheat free</li>
<li>Dairy free</li>
<li>Lactose free</li>
<li>Nut free</li>
</ul>', array['applied-nutrition-endurance-recovery-post-exercise-fuel-/1.jpg', 'applied-nutrition-endurance-recovery-post-exercise-fuel-/2.webp', 'applied-nutrition-endurance-recovery-post-exercise-fuel-/3.webp']::text[], 'new', 1, '2025-04-23'::date, false, false),
  ('sis-beta-recovery-powder-chocolate-500g', 'SiS Beta Recovery Powder  Chocolate 500g', 'sis', 'nutrition', 'protein-recovery', '<p><strong>BETA Recovery Dual Source Recovery Drink.</strong></p>
<p>Advanced carbohydrate &amp; protein blend, scientifically formulated to support recovery after endurance exercise.</p>
<p><strong>A complete dual source recovery drink scientifically formulated for post endurance exercise. </strong></p>
<p>An advanced recovery drink for the athlete looking to go again and again. </p>
<p>Designed for athletes that regularly train or perform moderate to high-intensity exercise lasting 90 minutes or more, and who require a complete recovery solution to ensure they are fully recovered before their next session. </p>
<p>Carbohydrate is your primary fuel for prolonged moderate to high intensity exercise. After a hard training session or competition, your muscles and liver are likely depleted in glycogen and a key focus of recovery is to rapidly replenish both glycogen stores. In that sense, fructose is a source of carbohydrate that is preferentially taken up by the liver and is used to promote recovery of liver glycogen stores whereas maltodextrin can be directly taken up the muscle to replenish muscle glycogen stores1. </p>
<p>To maximise the recovery of glycogen stores, it’s recommended to have 1g carbohydrate per 1kg body weight2, hence the inclusion of 60g carbohydrate per serving in BETA Recovery. </p>
<p>The recovery process also requires you to consume a sufficient dose of protein to provide the amino acids to promote repair of any muscle damage and provide the building blocks to stimulate training adaptation3.</p>
<p>BETA Recovery is scientifically formulated, with a dual source carbohydrate blend containing 60g carbohydrates [with a 1:1 ratio from maltodextrin and fructose], and 30g whey protein per serving. The inclusion of probiotic cultures helps to promote protein digestion and absorption and supports gut and immune function. </p>
<p>Simply, mix with 500 ml water and consume within 30 minutes after exercise. </p>

<p><strong>WHY USE? </strong></p>
<ul>
<li>
Supports recovery after prolonged moderate to high-intensity endurance exercise4
</li>
<li>
Contributes to the recovery of normal muscle function before your next session2
</li>
<li>A 60g dual source carbohydrate blend of a 1:1 ratio of fructose and maltodextrin, scientifically proven to promote both liver and muscle glycogen storage1 </li>
<li>A 30g dose of protein, with 3g of Leucine, promotes muscle growth and maintenance5</li>
<li>Mixes quickly and easily with water </li>
</ul>

<p><strong>THE SCIENCE</strong></p>
<p><strong>REFUEL WITH </strong><strong>CARBOHYDRATE</strong> </p>
<p>Carbohydrate is the predominant energy source that is used to fuel moderate to high-intensity exercise, the intensities of exercise that are commonly completed by both endurance and team sport athletes.  </p>
<p>Carbohydrate is mainly stored as glycogen in both the liver (approximately 100g) and muscle (approximately 400g) and about 5 g circulating in the blood stream as glucose. Athletes should aim to commence key training sessions or competition with fully loaded glycogen stores to optimise performance6.  </p>
<p>Intense exercise is heavily reliant on glycogen as a fuel, which means both our muscles and liver can become depleted after as little as 90 minutes of exercise. For this reason, one of the main nutritional goals in the post-exercise period is to rapidly replenish both stores so that you can start your next training session with sufficient glycogen stores to fuel for the work required1,4. </p>

<p><strong>DUAL SOURCE CARBOHYDRATES EXPLAINED</strong> </p>
<p>BETA Recovery is a dual source formulation, meaning it contains two forms of carbohydrates, Maltodextrin [glucose], and Fructose. </p>
<p>Why do we need two forms of carbohydrates? Once digested and absorbed, muscle is unable to directly take up fructose. This specific carbohydrate is preferentially taken up by the liver where it can be used to promote liver glycogen storage1. Glucose, on the other hand, can be directly taken up by the muscle and is used to promote muscle glycogen storage2. The dual source formulation provides a nutritional solution to simultaneously promote rapid recovery of both of muscle and liver glycogen stores1. </p>', array['sis-beta-recovery-powder-chocolate-500g/1.png']::text[], 'new', 0, '2025-04-17'::date, false, false),
  ('sisregorapidrecovery15kg', 'SIS Rego Rapid Recovery 1.5kg', 'sis', 'nutrition', 'protein-recovery', '<h3>SiS REGO Rapid Recovery</h3>
<h3><strong>Complete Post-Exercise Recovery Solution</strong></h3>
<p><strong>SiS REGO Rapid Recovery</strong> is a scientifically formulated recovery product designed to be consumed immediately after exercise. It provides the ideal blend of <strong>carbohydrate, protein, electrolytes, vitamins, and minerals</strong> to support <strong>fast recovery, muscle repair, and glycogen replenishment</strong> so you can get the most from every training session.</p>

<h3>Key Benefits</h3>
<ul>
<li>
<p><strong>Optimal carbohydrate and protein balance</strong> – 23g carbohydrate + 20g protein per serving</p>
</li>
<li>
<p><strong>Added 2g leucine</strong> – promotes muscle protein synthesis and supports rebuilding after exercise</p>
</li>
<li>
<p><strong>Rapid glycogen replenishment</strong> – helps restore energy stores to prepare for your next session</p>
</li>
<li>
<p><strong>Lactose-free and vegetarian-friendly</strong> – suitable for a range of dietary requirements</p>
</li>
<li>
<p><strong>Supports overall recovery</strong> – includes essential electrolytes, vitamins, and minerals</p>
</li>
</ul>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Protein:</strong> 20g per serving with a complete amino acid profile</p>
</li>
<li>
<p><strong>Carbohydrate:</strong> 23g per serving for rapid energy replenishment</p>
</li>
<li>
<p><strong>Leucine:</strong> 2g to enhance muscle repair and recovery</p>
</li>
<li>
<p><strong>Dietary Suitability:</strong> Vegetarians, Coeliacs, Gluten-Free, Wheat-Free, Nut-Free; contains soy</p>
</li>
<li>
<p><strong>Recommended Use:</strong> Consume immediately after exercise</p>
</li>
<li>
<p><strong>BBE:</strong> Minimum 3 months</p>
</li>
</ul>', array['sisregorapidrecovery15kg/1.webp', 'sisregorapidrecovery15kg/2.png', 'sisregorapidrecovery15kg/3.webp', 'sisregorapidrecovery15kg/4.webp']::text[], 'new', 2, '2021-08-19'::date, false, false),
  ('sisregorapidrecovery500g', 'SIS Rego Rapid Recovery 500g', 'sis', 'nutrition', 'protein-recovery', '<p>SiS REGO Rapid Recovery is a complete recovery product to be consumed immediately after exercise. It contains a blend of carbohydrate (23g), protein (20g) and electrolytes with vitamins and minerals.</p>
<p>Rapid replenishment of your glycogen stores and the provision of protein helps you to get the most from your training and prepare you for your next session.<br>Benefits of SiS REGO Rapid Recovery<br>Carbohydrate is your body''s main fuel for moderate to high intensity exercise. During training and competition, our bodies can absorb around 60g of carbohydrate per hour, meaning that demand will outstrip the supply of energy. This shortfall is met by using your glycogen stores, which must be replenished post exercise so you are able to perform well in your next session.<br>SiS REGO Rapid Recovery contains soy protein, which has a complete amino acid profile to which we have added 2g of leucine to support muscle protein synthesis and rebuild. Leucine is an amino acid which is known to switch on the signalling for muscle protein synthesis, amplifying the affect.<br>Key Features</p>
<ul>
<li>Optimal protein serving size of 20g with 2g of leucine to promote the rebuilding of muscle tissue</li>
<li>Use after exercise to replenish your energy stores fast</li>
<li>Ideal for lactose intolerant individuals</li>
<li>Suitable for: Vegetarians; Coeliacs; Gluten Free; Wheat Free; Nut Free. Contains Soy.</li>
<li>BBE: Minimum 3 Months+</li>
<li>Flavours: Vanilla, Chocolate, Banana, Strawberry</li>
</ul>', array['sisregorapidrecovery500g/1.webp', 'sisregorapidrecovery500g/2.webp', 'sisregorapidrecovery500g/3.webp']::text[], 'new', 2, '2021-08-19'::date, false, false),
  ('siswheyprotein135kg', 'SIS Whey Protein 1.35kg', 'sis', 'nutrition', 'protein-recovery', '<p><strong>Vanilla October Best Before</strong></p>
<p><strong>Chocolate November Best Before </strong></p>

<p>SiS Whey Protein contains a blend of high quality whey protein isolate and concentrate, providing a source of rapidly digesting protein.</p>
<p>A high amino acid profile which supports lean muscle growth and maintenance, with at least 5g of BCAAs per serving, including 2.4-2.5g of leucine which increases the rate of muscle protein synthesis. Each serving contains 22-23g of protein, depending on the flavour you choose.<br>Why should I have SiS Whey Protein?<br>SiS Whey Protein is a great tasting, convenient way to increase daily protein intake. It is recommended that 1.4-1.6 grams of protein per kg of body weight is consumed each day in order to promote lean muscle mass. For a 75kg male who trains regularly that would equate to 120g of protein per day.</p>
<p><strong>Key Features</strong></p>
<ul>
<li>Contributes to the maintenance and growth of lean muscle mass</li>
<li>Fueling gold medal winners since 1992</li>
<li>22-23 grams of protein</li>
<li>Suitable for: Vegetarians; Coeliacs; Gluten Free; Wheat Free; Nut Free. Contains Milk and Soy.</li>
<li>Contents: 33 servings with scoop included.</li>
<li>BBE: Minimum 3 Months+</li>
</ul>', array['siswheyprotein135kg/1.webp', 'siswheyprotein135kg/2.webp']::text[], 'new', 2, '2025-05-21'::date, false, false),

  -- ---- nutrition · supplements ----
  ('applied-nutrition-creatine-monohydrate', 'Applied Nutrition Creatine Monohydrate', 'applied-nutrition', 'nutrition', 'supplements', '<p>Creatine Monohydrate Powder is a trusted and effective supplement for anyone looking to boost their athletic performance, increase muscle strength, and support muscle growth. Its pure and micronized form ensures optimal absorption and efficacy, making it a staple in any fitness regimen. Whether you''re a seasoned athlete or a beginner, this supplement will help you reach your fitness goals and enhance your training outcomes.</p>
<h3>DESCRIPTION</h3>
<p><strong>Micronised Unflavoured</strong></p>
<p>Creatine Monohydrate Powder is a highly effective and widely researched supplement designed to enhance athletic performance, increase muscle strength, and support muscle growth. This pure and unflavored powder is ideal for athletes, bodybuilders, and fitness enthusiasts looking to improve their overall training capacity and achieve their fitness goals. Applied Nutrition’s Creatine provides the purest, most readily absorbed Creatine Monohydrate Formula available</p>
<h3>Key Benefits</h3>
<ul>
<li>
<strong>Increased Strength and Power:</strong> Helps you lift heavier weights and perform more reps, leading to greater muscle gains over time.</li>
<li>
<strong>Enhanced Athletic Performance:</strong> Ideal for high-intensity sports and activities, improving overall performance and endurance.</li>
<li>
<strong>Improved Muscle Recovery:</strong> Reduces muscle soreness and accelerates recovery, allowing you to train more frequently.</li>
<li>
<strong>Supports Lean Muscle Mass:</strong> Promotes the growth of lean muscle tissue without adding unwanted fat.</li>
<li><strong>Can be easily mixed in water</strong></li>
<li><strong>Tested for Athletes by Informed Sport</strong></li>
<li><strong>Halal Certified Product</strong></li>
</ul>
<h3>Suggested Use</h3>
<p>Add 1 serving (5g) to water, shake and consume. Use 1-2 times daily preferably directly before and after exercise. After 8 weeks of continued use take 1 week off and start the cycle again.</p>', array['applied-nutrition-creatine-monohydrate/1.webp', 'applied-nutrition-creatine-monohydrate/2.webp']::text[], 'new', 1, '2025-04-17'::date, false, false),

  -- ---- road-bikes · road-bikes ----
  ('2024-bmc-kaius-01-two', '2024 BMC Kaius 01 Two', 'bmc', 'road-bikes', 'road-bikes', '<p><strong>Kaius 01 – Premium Carbon Gravel Race Machine</strong></p>
<p>Kaius is a premium carbon gravel bike engineered to be your ultimate race companion across varied terrain. Its advanced carbon layup and gravel-specific geometry strike the ideal balance of stiffness, low weight, and compliance—delivering optimal traction on loose surfaces, confident front-end stability, and exceptional climbing ability.</p>
<p>Designed using the precision of BMC’s road racing technology and tuned specifically for gravel, the Kaius features the Kaius 01 fork, ICS2 stem with conventional handlebar, TCC Race compliance, and compatibility with both 1x and 2x drivetrains. With clearance for tires up to 44 mm, this is a purpose-built machine for elite gravel performance.</p>', array['2024-bmc-kaius-01-two/1.jpg', '2024-bmc-kaius-01-two/2.webp', '2024-bmc-kaius-01-two/3.jpg', '2024-bmc-kaius-01-two/4.webp']::text[], 'new', 1, '2025-02-11'::date, false, true),
  ('2024-bmc-urs-three', '2024 BMC URS Three', 'bmc', 'road-bikes', 'road-bikes', '<p><strong>URS THREE – Adventure-Ready Carbon Gravel Performance</strong></p>
<p>The URS THREE is the perfect blend of progressive gravel-tuned geometry, lightweight construction, and practical design for real-world adventures. Built with BMC’s Tuned Compliance Concept Gravel and Gravel+ geometry, it delivers confident handling, long-distance comfort, and versatility across mixed terrain.</p>
<p>Equipped with a reliable <strong>SRAM Apex 1x12 drivetrain</strong>, wide-range <strong>11-50T cassette</strong>, and tough <strong>DT Swiss G1800 SPLINE wheels</strong> wrapped in 44mm <strong>WTB Raddler tires</strong>, this bike is built to explore. Integrated storage in the downtube ensures you''re always prepared, while mounts for fenders, racks, and cargo give you the freedom to customize your setup.</p>', array['2024-bmc-urs-three/1.jpg', '2024-bmc-urs-three/2.webp', '2024-bmc-urs-three/3.jpg', '2024-bmc-urs-three/4.jpg']::text[], 'new', 1, '2025-02-03'::date, false, true),
  ('2026-bmc-roadmachine-two', '2026 BMC Roadmachine Two', 'bmc', 'road-bikes', 'road-bikes', '<h4>The choice of riders who want to go the distance and aren’t willing to be confined to just one surface. Building on our expertise and legacy of endurance excellence, the Roadmachine combines comfort and efficiency into a highly versatile performance road bike that delivers an outstanding riding experience. With a lightweight carbon frame, the Roadmachine endurance bike is packed with features like full cable integration, downtube storage, and an integrated rear light, making it ready for any challenge. Wide, fast-rolling tires provide a smooth ride across various road surfaces. The Roadmachine TWO features a full Shimano 105 Di2 groupset for smooth electronic shifting and powerful braking. Our own integrated RSM01 stem and new Endurance Alloy handlebar provide top-notch ergonomics, offering the perfect balance of control and comfort for all your rides.</h4>
<h4>Frameset</h4>

<p>Frame:<br>Roadmachine Carbon with Tuned Compliance Concept Endurance | ICS Technology Stealth Cable Routing | Fender Mounts | Integrated Downtube Storage | Stealth Dropout Design | 12 x 142mm Thru-Axle</p>
<p>Fork:<br>Roadmachine Carbon with Tuned Compliance Concept Endurance | Internal Cable Routing | Fender Mounts | Flat Mount Disc | 12 x 100mm Thru-Axle | 50mm offset Size 47-51 | 45mm offset Size 54-61</p>

<h4>Cockpit</h4>

<p>Stem:<br>BMC RSM 01 | Integrated Cockpit System Technology</p>
<p>Handlebar:<br>BMC HB D4 03, 0, 12 | Alloy 6061 | Endurance Geometry | 125mm drop, 70mm reach, 12° flare</p>

<h4>Seat</h4>

<p>Seatpost:<br>Roadmachine Carbon D-Shaped Seatpost | 15mm Offset | D-Fender Compatible</p>
<p>Saddle:<br>Selle Italia Model X Superflow | FeC Alloy Rail | 145mm</p>

<h4>Drivetrain</h4>

<p>Crankset:<br>SHIMANO 105 (FC-R7100)</p>
<p>Chainrings:<br>50-34T</p>
<p>Cassette:<br>SHIMANO (CS-HG710)</p>
<p>Cassette Size:<br>11-36T</p>
<p>Chain:<br>SHIMANO CN-M6100</p>
<p>Front Derailleur:<br>SHIMANO 105 Di2 (FD-R7150)</p>
<p>Rear Derailleur:<br>SHIMANO 105 Di2 (RD-R7150)</p>
<p>Shifters:<br>SHIMANO 105 Di2 (ST-R7170)</p>
<p>Gears:<br>2 x 12</p>
<p>Bottom Bracket:<br>SHIMANO Press-Fit Bottom Bracket (BB-RS500-PB)</p>

<h4>Brakes</h4>

<p>Brake Levers / Calipers:<br>SHIMANO 105 (BR-R7170)</p>
<p>Rotors:<br>SHIMANO SM-RT70 | Centerlock [or] SHIMANO RT-CL700</p>
<p>Rotor Size (F/R):<br>160 / 160mm</p>

<h4>Wheels</h4>

<p>Rims:<br>PRD23 | 23mm</p>
<p>Hubs (F/R):<br>SHIMANO HB-TC500-12 &amp; FH-TC500-HL | Center Lock| 28H</p>
<p>Tires:<br>Vittoria Rubino V | Tube type | 32mm</p>
<p>Tubeless Information:<br>Non-Tubeless Rims | Non-Tubeless Clincher Tire</p>

<h4>Accessories</h4>

<p>In the Box:<br>Integrated Rear Light 25 | Storage Pouch</p>

<h4>Additional Information</h4>

<p>Tire Clearance:<br>up to "40mm measured" (frameset clearance) but limited to "34mm measured" by the front derailleur</p>
<p>Weight without Pedals:<br>8.99kg | Size 54 with all accessories</p>
<p>ASTM Classification:<br>Level 2</p>
<p>System Weight Limit:<br>110kg</p>

<h4>Color Reference</h4>

<p>Color Code:<br>cbn blk blk</p>
<p>Marketing Color:<br>Carbon Black</p>', array['2026-bmc-roadmachine-two/1.webp', '2026-bmc-roadmachine-two/2.jpg', '2026-bmc-roadmachine-two/3.webp']::text[], 'new', 1, '2026-02-13'::date, false, true),
  ('2026-bmc-teammachine-slr-01-four', '2026 BMC Teammachine SLR 01 Four', 'bmc', 'road-bikes', 'road-bikes', '<p>Redefine Gravity with the all new Teammachine SLR 01. With a "01 carbon layup", BMC''s lightest frameset provides you with high stiffness score to transform every single watt into speed. More speed you ask? We built superior aerodynamics making it almost as fast as a Teammachine R 01. All this comes with no compromise: our Impec Lab engineers made sure we had a full BMC ride feel including TCC Race compliance, sharp handling and a bike geometry that fit your needs. Fitted with the SHIMANO Ultegra Di2 groupset, 4iiii powermeter, our ICS Carbon Evo one-piece cockpit and premium CR 40 SL wheelset. Mountain passes are waiting for you!</p>

<h4>Frameset</h4>

<p><b>Frame:</b><br>Teammachine SLR 01 Premium Carbon with Aerocore Design | ICS Technology Stealth Cable Routing | Stealth Dropout Design | TCC Race Compliance Level | Flat Mount Disc | 12 x 142mm Thru-Axle</p>
<p><b>Fork:</b><br>Teammachine SLR 01 Premium Carbon | ICS Technology Stealth Cable Routing | TCC Race Compliance Level | Stealth Dropout Design | Flat Mount Disc | 12 x 100mm Thru-Axle | 48mm offset Size 47-51 43mm offset Size 54-61</p>

<h4>Cockpit</h4>

<p><b>Handlebar:</b><br>ICS Carbon Evo | One Piece Full Carbon Cockpit | 127mm drop, 70mm reach, 8° flare</p>

<h4>Seat</h4>

<p><b>Seatpost:</b><br>Teammachine SLR 01 Gen 5 | 01 Premium Carbon Aero Shaped Seatpost | 10mm Offset</p>
<p><b>Saddle:</b><br>Fizik Argo Vento R3 | 140mm</p>

<h4>Drivetrain</h4>

<p><b>Crankset:</b><br>SHIMANO Ultegra (FC-R8100)</p>
<p><b>Chainrings:</b><br>52-36T</p>
<p><b>Power Meter:</b><br>4iiii Precision Gen3+ Power Meter (Non-Drive Side)</p>
<p><b>Cassette:</b><br>SHIMANO Ultegra (CS-R8100 or CS-R8101)</p>
<p><b>Cassette Size:</b><br>11-30T</p>
<p><b>Chain:</b><br>SHIMANO CN-M8100</p>
<p><b>Front Derailleur:</b><br>SHIMANO Ultegra Di2 (FD-R8150)</p>
<p><b>Rear Derailleur:</b><br>SHIMANO Ultegra Di2 (RD-R8150)</p>
<p><b>Shifters:</b><br>SHIMANO Ultegra Di2 (ST-R8170)</p>
<p><b>Gears:</b><br>2 x 12</p>
<p><b>Bottom Bracket:</b><br>SHIMANO Ultegra Press-Fit Bottom Bracket (SM-BB72-41B)</p>

<h4>Brakes</h4>

<p><b>Brake Levers / Calipers:</b><br>SHIMANO Ultegra (BR-R8170)</p>
<p><b>Rotors:</b><br>SHIMANO Ultegra (RT-CL800)</p>
<p><b>Rotor Size (F/R):</b><br>160 / 160mm</p>

<h4>Wheels</h4>

<p><b>Rims:</b><br>CR 40 SL Carbon | Tubeless Ready | 40mm</p>
<p><b>Hubs (F/R):</b><br>TXC-812 &amp; TXC-240 Center Lock</p>
<p><b>Tires:</b><br>Pirelli P Zero Race TLR | 26mm</p>
<p><b>Tubeless Information:</b><br>Tubeless Rim | Tubeless Tires</p>

<h4>Accessories</h4>

<p><b>In the Box:</b><br>Aerocore Bottle Cages | Computer mount for Garmin and Wahoo</p>

<h4>Additional Information</h4>

<p><b>Tire Clearance:</b><br>32mm measured tire</p>
<p><b>Weight without Pedals:</b><br>7.1kg | Size 54 as pictured with all accessories</p>
<p><b>ASTM Classification:</b><br>Level 1</p>
<p><b>System Weight Limit:</b><br>110kg</p>', array['2026-bmc-teammachine-slr-01-four/1.webp', '2026-bmc-teammachine-slr-01-four/2.jpg', '2026-bmc-teammachine-slr-01-four/3.webp']::text[], 'new', 3, '2026-02-10'::date, false, true),
  ('2026-teammachine-slr-01-frameset', '2026 Teammachine SLR 01 Frameset', 'bmc', 'road-bikes', 'road-bikes', '<p>Redefine Gravity. The highest carbon layup grade gives you the lightest frameset in BMC''s lineup.</p>
<p>Teammachine SLR 01 is a true BMC by definition. With its high stiffness score and the lightest carbon "01" layup, mountains found their match. More speed you ask? We built superior aerodynamics making it almost as fast as a Teammachine R 01. All this comes with no compromise: our Impec Lab engineers made sure we had a full BMC ride feel including TCC Race compliance, sharp handling and a bike geometry that fit your needs.</p>

<p><b>Frame:</b><br>Teammachine SLR 01 Premium Carbon with Aerocore Design | ICS Technology Stealth Cable Routing | Stealth Dropout Design | TCC Race Compliance Level | Flat Mount Disc | 12 x 142mm Thru-Axle</p>
<p><b>Fork:</b><br>Teammachine SLR 01 Premium Carbon | ICS Technology Stealth Cable Routing | TCC Race Compliance Level | Stealth Dropout Design | Flat Mount Disc | 12 x 100mm Thru-Axle | 48mm offset Size 47-51 43mm offset Size 54-61</p>

<h4>Seat</h4>

<p><b>Seatpost:</b><br>Teammachine SLR 01 Gen 5 | 01 Premium Carbon Aero Shaped Seatpost | 10mm Offset</p>

<h4>Accessories</h4>

<p><b>In the Box:</b><br>Aerocore Bottle Cages | Shimano Direct Mount RD hanger and Classic SRAM/Shimano RD hanger | High and low ICS top cones, 3x10mm spacers , 2x3mm spacers)</p>

<h4>Additional Information</h4>

<p><b>Tire Clearance:</b><br>32mm measured tire</p>
<p><b>Weight:</b><br>1470g | Size 54 as pictured with all accessories</p>', array['2026-teammachine-slr-01-frameset/1.jpg', '2026-teammachine-slr-01-frameset/2.webp', '2026-teammachine-slr-01-frameset/3.webp', '2026-teammachine-slr-01-frameset/4.webp']::text[], 'new', 1, '2026-05-15'::date, false, true),
  ('aethos-2-expert-shimano-ultegra-di2', 'Aethos 2 Expert - Shimano Ultegra Di2', 'specialized', 'road-bikes', 'road-bikes', '<p>With a 705g frame, the Aethos 2 is the lightest bike in its class . But weight was never the point. Built by breaking racing’s rules to deliver pure road riding bliss, it’s engineered to disappear beneath you: responsive, supple, and sublime. Now with increased tire clearance, refined components, and data-based fit-enhancing geometry, it brings that transcendent ride feel to more riders than ever. Aethos 2 breaks the rules, for the love of the ride.</p>', array['aethos-2-expert-shimano-ultegra-di2/1.jpg', 'aethos-2-expert-shimano-ultegra-di2/2.jpg', 'aethos-2-expert-shimano-ultegra-di2/3.jpg', 'aethos-2-expert-shimano-ultegra-di2/4.jpg', 'aethos-2-expert-shimano-ultegra-di2/5.jpg']::text[], 'new', 5, '2025-10-22'::date, false, false),
  ('aethos-2-pro-sram-force-axs', 'Aethos 2 Pro - SRAM Force AXS', 'specialized', 'road-bikes', 'road-bikes', '<p>With a 705g frame, the Aethos 2 is the lightest bike in its class . But weight was never the point. Built by breaking racing’s rules to deliver pure road riding bliss, it’s engineered to disappear beneath you: responsive, supple, and sublime. Now with increased tire clearance, refined components, and data-based fit-enhancing geometry, it brings that transcendent ride feel to more riders than ever. Aethos 2 breaks the rules, for the love of the ride.</p>', array['aethos-2-pro-sram-force-axs/1.jpg', 'aethos-2-pro-sram-force-axs/2.jpg', 'aethos-2-pro-sram-force-axs/3.jpg', 'aethos-2-pro-sram-force-axs/4.jpg', 'aethos-2-pro-sram-force-axs/5.jpg']::text[], 'new', 4, '2025-10-22'::date, false, false),
  ('allez-2', 'Allez', 'specialized', 'road-bikes', 'road-bikes', '<p>Four decades after the first Specialized Allez hit the road, the new Allez is the best yet. Lightest in its class,* it delivers more confidence, versatility, and performance than ever before – to more riders than ever before. Whether you’re looking for premium alloy, want a bike for weekend rides and fast commutes, or if you’re just beginning your road journey, performance road starts with Allez. LIGHTEST IN CLASS: Starting with premium butted and double-butted E5 alloy, the Allez frame tips the scales at just 1,375** grams for a quick and nimble feel on the road. Plus, the full carbon fork reduces weight even more (no hidden alloy steer tube here) while helping smooth out your ride. And with modern, thoughtful build choices, it’s no surprise the Allez is also the lightest in its class. INCREDIBLE CONFIDENCE: This premium E5 alloy frame is light, fast, durable, and, did we mention, gorgeous? The excellent stiffness-to-weight ratio coupled with the unmatched stopping power of all-weather dual-piston disc brakes delivers ultimate confidence at any speed. Plus, we’ve used the legendary Roubaix bike''s endurance geometry to deliver unrivaled comfort for long miles and stable handling while ensuring the Allez can still dissect a winding road like a pure race bike. VERSATILITY and PERFORMANCE: Just as capable of getting you to work or class, as it is checking off your local KOM or weekend group ride, racks and fender mounts ensure the Allez is versatile enough for whatever road you take it on. With tire clearance up to a beefy 35 mm (32 mm with Fenders), you’ll be ready for the roughest roads and even light gravel. If those roads get steep, Allez has a wide gearing range to keep you comfortably spinning so you can ride efficiently. *Alloy disc brake-equipped bikes in the same price range are available at retail. **Based on production frame set weights. Actual weights may vary slightly. ***Some bikes are shown with an optional rack, fenders, and carbon wheels.</p>', array['allez-2/1.jpg', 'allez-2/2.jpg', 'allez-2/3.jpg', 'allez-2/4.jpg', 'allez-2/5.jpg']::text[], 'new', 3, '2026-03-22'::date, false, false),
  ('bmc-derailleur-hangers', 'BMC Derailleur Hangers', 'bmc', 'road-bikes', 'road-bikes', '<h4>#36- MY12 Timemachine</h4>
<h4>#45- MY14 Fourstroke, Trailfox and Speedfox (direct mount)</h4>
<h4>#46- Trackmachine 02</h4>
<h4>#52- MY18 Roadmachine</h4>
<h4>#56- MY18 Teammachine SLR rim brake and MY20 Teammachine ALR (classic mount)</h4>
<h4>#57- MY18-20 Teammachine SLR01 and 02 (rim brake) | MY19-21 Teammachine ALR - Direct Mount</h4>
<h4>#58- MY20 Teammachine SLR Disc, MY20 Roadmachine, MY20 URS and MY20 Timemachine </h4>
<h4>#59- MY20 Teammachine SLR Disc, MY20 Roadmachine, MY20 URS and MY20 Timemachine (direct mount)</h4>
<h4>#65- Speedfox, Agonist, Fourstroke and Twostroke | Classic mount</h4>
<h4>#66- Speedfox, Agonist, Fourstroke and Twostroke | Direct mount</h4>
<h4>#69- MY20 Teammachine SLR01 and 02 rim brake </h4>
<h4>#70- MY20 Teammachine SLR01 and SLR02 disc brake | MY20 Roadmachine 01 and 02 | MY20 URS | MY20 Timemachine Road 01 </h4>
<h4>#71- MY21 Teammachine SLR01 and SLR | 2024 Roadmachine 01, Roadmachine 01 AMP and Roadmachine | Kaius 01 | Classic mount</h4>
<h4>#72- MY21 Teammachine SLR01 and SLR | 2024 Roadmachine 01, Roadmachine 01 AMP and Roadmachine | Kaius 01 | Direct mount</h4>
<h4>#73- MY21 Twostroke AL</h4>
<h4>74- Blast 20 and 24 | Twostroke AL 20, 24 and 27 | SCOR 0020 and 0024</h4>
<h4>81 (Sram/Campagnolo/ Shimano classic mount)</h4>
<h4>#82 (Shimano direct mount)</h4>
<h4> </h4>
<h4></h4>', array['bmc-derailleur-hangers/1.jpg', 'bmc-derailleur-hangers/2.jpg', 'bmc-derailleur-hangers/3.jpg', 'bmc-derailleur-hangers/4.jpg', 'bmc-derailleur-hangers/5.jpg']::text[], 'new', 14, '2024-04-16'::date, false, false),
  ('bmc-speedmachine-01-four', 'BMC Speedmachine 01 FOUR', 'bmc', 'road-bikes', 'road-bikes', '<h4>Frameset</h4>

<p><b>Frame:</b><br>Speedmachine 01 Premium Carbon | ICS Technology Stealth Cable Routing | Integrated Fuel Tank 1200 Hydration System | Integrated Rear Storage 260 | Stealth Dropout Design | Flat Mount Disc | 142x12mm Thru-Axle</p>
<p><b>Fork:</b><br>Speedmachine 01 Premium Carbon | ICS Technology | Stealth Cable Routing | Stealth Dropout Design | Flat Mount Disc | 100 x 12mm Thru-Axle</p>

<h4>Cockpit</h4>

<p><b>Handlebar:</b><br>BMC Speedmachine Flat Cockpit | Profile Design Aeria Ultimate with Ergo+ Armrests and 26a Aluminum Aerobar Extensions<br></p>

<h4>Seat</h4>

<p><b>Seatpost:</b><br>Speedmachine 01 | 01 Premium Carbon Aero Seatpost | 0mm, 12.5mm, 25mm Offsets</p>
<p><b>Saddle:</b><br>Fizik Transiro Aeris Long Distance R5</p>

<h4>Drivetrain</h4>

<p><b>Crankset:</b><br>SHIMANO 105 (FC-R7100)</p>
<p><b>Chainrings:</b><br>52-36T</p>
<p><b>Cassette:</b><br>SHIMANO 105 (CS-R7101)</p>
<p><b>Cassette Size:</b><br>11-34T</p>
<p><b>Chain:</b><br>SHIMANO CN-M6100</p>
<p><b>Front Derailleur:</b><br>SHIMANO 105 Di2 (FD-R7150)</p>
<p><b>Rear Derailleur:</b><br>SHIMANO 105 Di2 (RD-R7150)</p>
<p><b>Shifters:</b><br>SHIMANO Switch buttons Di2 (SW-R9160 &amp; SW-R9150)</p>
<p><b>Gears:</b><br>2 x 12</p>
<p><b>Bottom Bracket:</b><br>Praxis T47 E.B. 68/73mm SHIMANO</p>

<h4>Brakes</h4>

<p><b>Brake Levers / Calipers:</b><br>TRP TT HYDRO HD-T910 Hydraulic</p>
<p><b>Rotors:</b><br>TRP R160C04M | Centerlock</p>
<p><b>Rotor Size (F/R):</b><br>160 / 160mm</p>

<h4>Wheels</h4>

<p><b>Rims:</b><br>AR 27 | Tubeless Ready | 27mm</p>
<p><b>Hubs (F/R):</b><br>CL-712 &amp; RXC-142 Center Lock</p>
<p><b>Tires:</b><br>Pirelli P Zero Road TLR | Tubeless | 28mm [or] Vittoria Rubino IV | Tube type | 28mm</p>
<p><b>Tubeless Information:</b><br>Tubeless Rim | Tubeless Tires</p>

<h4>Accessories</h4>

<p><b>In the Box:</b><br>Fuel Tank 1200 with straw and bite valve | Rear Storage 260 | Intergrated Rear Light 25</p>

<h4>Additional Information</h4>

<p><b>Tire Clearance:</b><br>30mm measured tire</p>
<p><b>Weight without Pedals:</b><br>10.1kg | Size M with all accessories</p>
<p><b>ASTM Classification:</b><br>Level 1</p>
<p><b>System Weight Limit:</b><br>110kg</p>

<p><a href="https://bmc-switzerland.com/collections/aero-triathlon-bikes-speedmachine-timemachine/products/speedmachine-01-four-bikes-bmc-26a-000005#geometry_NUGnEj" rel="noopener nofollow" target="_blank">https://bmc-switzerland.com/collections/aero-triathlon-bikes-speedmachine-timemachine/products/speedmachine-01-four-bikes-bmc-26a-000005#geometry_NUGnEj</a></p>', array['bmc-speedmachine-01-four/1.jpg']::text[], 'new', 1, '2025-08-15'::date, false, true),
  ('crux-5-comp-sram-rival-xplr', 'Crux 5 Comp - SRAM Rival XPLR', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux 5 was born from the fastest gravel race bike ever made. Not just because it’s the lightest. Not just because it’s our most aero. Not just because it handles dirt like a Tarmac handles pavement. But because it delivers the lowest real-world Time to Finish of any gravel bike ever made. Crux 5 turns more of your effort into pure speed—validated across real race courses, real terrain, and real riders. When the goal is the top step, nothing in gravel gets you there faster.</p>', array['crux-5-comp-sram-rival-xplr/1.webp', 'crux-5-comp-sram-rival-xplr/2.webp', 'crux-5-comp-sram-rival-xplr/3.webp', 'crux-5-comp-sram-rival-xplr/4.webp', 'crux-5-comp-sram-rival-xplr/5.webp']::text[], 'new', 0, '2026-05-29'::date, false, false),
  ('crux-5-expert-sram-force-xplr', 'Crux 5 Expert - SRAM Force XPLR', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux 5 was born from the fastest gravel race bike ever made. Not just because it’s the lightest. Not just because it’s our most aero. Not just because it handles dirt like a Tarmac handles pavement. But because it delivers the lowest real-world Time to Finish of any gravel bike ever made. Crux 5 turns more of your effort into pure speed—validated across real race courses, real terrain, and real riders. When the goal is the top step, nothing in gravel gets you there faster.</p>', array['crux-5-expert-sram-force-xplr/1.webp', 'crux-5-expert-sram-force-xplr/2.webp', 'crux-5-expert-sram-force-xplr/3.webp', 'crux-5-expert-sram-force-xplr/4.webp', 'crux-5-expert-sram-force-xplr/5.webp']::text[], 'new', 1, '2026-05-29'::date, false, false),
  ('crux-5-frameset-fact-10r-carbon', 'Crux 5 Frameset - FACT 10r Carbon', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux 5 was born from the fastest gravel frame set ever made. Not just because it’s the lightest. Not just because it’s our most aero. Not just because it handles dirt like a Tarmac handles pavement. But because it delivers the lowest real-world Time to Finish of any gravel bike ever made. Crux 5 turns more of your effort into pure speed—validated across real race courses, real terrain, and real riders. When the goal is the top step, nothing in gravel gets you there faster.</p>', array['crux-5-frameset-fact-10r-carbon/1.webp', 'crux-5-frameset-fact-10r-carbon/2.webp', 'crux-5-frameset-fact-10r-carbon/3.webp', 'crux-5-frameset-fact-10r-carbon/4.webp', 'crux-5-frameset-fact-10r-carbon/5.webp']::text[], 'new', 1, '2026-05-29'::date, false, false),
  ('crux-5-s-level-sram-red-xplr', 'Crux 5 S-Level - SRAM RED XPLR', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux 5 S-Level was born from the fastest gravel race bike ever made. Not just because it’s the lightest. Not just because it’s our most aero. Not just because it handles dirt like a Tarmac handles pavement. But because it delivers the lowest real-world Time to Finish of any gravel bike ever made. Crux 5 turns more of your effort into pure speed—validated across real race courses, real terrain, and real riders. When the goal is the top step, nothing in gravel gets you there faster.</p>', array['crux-5-s-level-sram-red-xplr/1.webp', 'crux-5-s-level-sram-red-xplr/2.webp', 'crux-5-s-level-sram-red-xplr/3.webp', 'crux-5-s-level-sram-red-xplr/4.webp', 'crux-5-s-level-sram-red-xplr/5.webp']::text[], 'new', 2, '2026-05-29'::date, false, false),
  ('crux-5-sport-shimano-grx-800', 'Crux 5 Sport - Shimano GRX 800', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux 5 was born from the fastest gravel race bike ever made. Not just because it’s the lightest. Not just because it’s our most aero. Not just because it handles dirt like a Tarmac handles pavement. But because it delivers the lowest real-world Time to Finish of any gravel bike ever made. Crux 5 turns more of your effort into pure speed—validated across real race courses, real terrain, and real riders. When the goal is the top step, nothing in gravel gets you there faster.</p>', array['crux-5-sport-shimano-grx-800/1.webp', 'crux-5-sport-shimano-grx-800/2.webp', 'crux-5-sport-shimano-grx-800/3.webp', 'crux-5-sport-shimano-grx-800/4.webp', 'crux-5-sport-shimano-grx-800/5.webp']::text[], 'new', 0, '2026-05-29'::date, false, false),
  ('crux-comp', 'Crux Comp', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux is the lightest gravel bike in the world, with the exceptional capability of massive tire clearance and performance gravel geometry. It’s not just the ultimate expression of gravel performance, it’s your one-way ticket to gravel enlightenment. This Crux Comp comes spec''d with a reliable and smooth-shifting SRAM Rival 1 hydraulic disc groupset, tough DT G540 Disc wheels, and 2Bliss Ready, 700x38mm Pathfinder Pro tires that hookup over nasty terrain.</p>', array['crux-comp/1.jpg', 'crux-comp/2.jpg', 'crux-comp/3.jpg', 'crux-comp/4.jpg', 'crux-comp/5.jpg']::text[], 'new', 0, '2024-05-22'::date, false, false),
  ('crux-expert', 'Crux Expert', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux is the lightest gravel bike in the world, with the exceptional capability of massive tire clearance and performance gravel geometry. It’s not just the ultimate expression of gravel performance, it’s your one-way ticket to gravel enlightenment. This Crux Pro comes spec''d with a accurate and quick-shifting SRAM Force eTap AXS hydraulic disc groupset, lightweight and durable Roval Terra CL Disc wheels, and 2Bliss Ready, 700x38mm Pathfinder Pro tires that hookup over nasty terrain.</p>', array['crux-expert/1.jpg', 'crux-expert/2.jpg', 'crux-expert/3.jpg', 'crux-expert/4.jpg', 'crux-expert/5.jpg']::text[], 'new', 1, '2024-05-22'::date, false, false),
  ('crux-expert-shimano-grx-di2', 'Crux Expert - Shimano GRX Di2', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux is the lightest gravel bike in the world, with the exceptional capability of massive tire clearance and performance gravel geometry. It’s not just the ultimate expression of gravel performance, it’s your one-way ticket to gravel enlightenment. This Crux Expert comes spec''d with Shimano’s GRX Di2 1x12 800 Series hydraulic disc groupset with wireless shifting, lightweight and durable Roval Terra C Disc wheels, and 2Bliss Ready, 700x40mm Pathfinder tires that hookup over nasty terrain.</p>', array['crux-expert-shimano-grx-di2/1.webp', 'crux-expert-shimano-grx-di2/2.webp', 'crux-expert-shimano-grx-di2/3.webp', 'crux-expert-shimano-grx-di2/4.webp', 'crux-expert-shimano-grx-di2/5.webp']::text[], 'new', 3, '2026-03-19'::date, false, false),
  ('crux-expert-sram-rival-xplr-axs', 'Crux Expert - SRAM Rival XPLR AXS', 'specialized', 'road-bikes', 'road-bikes', '<p>The Crux is the lightest gravel bike in the world, with the exceptional capability of massive tire clearance and performance gravel geometry. It’s not just the ultimate expression of gravel performance, it’s your one-way ticket to gravel enlightenment. This Crux Expert comes spec''d with all-new SRAM Rival XPLR AXS for effortless braking, lighter weight, with massive 13 speed gear range, lightweight and durable Roval Terra C Disc wheels, and 2Bliss Ready, 700x40mm Pathfinder Pro tires that hookup over nasty terrain.</p>', array['crux-expert-sram-rival-xplr-axs/1.jpg', 'crux-expert-sram-rival-xplr-axs/2.jpg', 'crux-expert-sram-rival-xplr-axs/3.jpg', 'crux-expert-sram-rival-xplr-axs/4.jpg', 'crux-expert-sram-rival-xplr-axs/5.jpg']::text[], 'new', 2, '2026-03-18'::date, false, false),
  ('diverge-4-comp-alloy-sram-apex', 'Diverge 4 Comp Alloy - SRAM Apex', 'specialized', 'road-bikes', 'road-bikes', '<p>Race-tuned. Adventure-approved. The Diverge 4 gravel bike in E5 Alloy is built for full-gas race days and off-grid epics. With Future Shock 3.0, our most responsive frame ever, massive tire clearance, and internal storage for the first time ever on an alloy bike, the best gravel bike in the world just got better. Chase the horizon—or your rivals—it’s built for both.</p>', array['diverge-4-comp-alloy-sram-apex/1.jpg', 'diverge-4-comp-alloy-sram-apex/2.jpg', 'diverge-4-comp-alloy-sram-apex/3.jpg', 'diverge-4-comp-alloy-sram-apex/4.jpg', 'diverge-4-comp-alloy-sram-apex/5.jpg']::text[], 'new', 7, '2025-09-10'::date, false, false),
  ('diverge-4-comp-carbon-sram-apex-axs-s1000', 'Diverge 4 Comp Carbon - SRAM Apex AXS/S1000', 'specialized', 'road-bikes', 'road-bikes', '<p>Race-tuned. Adventure-approved. The Diverge 4 gravel bike is built for full-gas race days and off-grid epics. With Future Shock 3.0, our most responsive frame ever, massive tire clearance, and the biggest internal storage in gravel, the best gravel bike in the world just got better. Chase the horizon—or your rivals—it’s built for both.</p>', array['diverge-4-comp-carbon-sram-apex-axs-s1000/1.jpg', 'diverge-4-comp-carbon-sram-apex-axs-s1000/2.jpg', 'diverge-4-comp-carbon-sram-apex-axs-s1000/3.jpg', 'diverge-4-comp-carbon-sram-apex-axs-s1000/4.jpg', 'diverge-4-comp-carbon-sram-apex-axs-s1000/5.jpg']::text[], 'new', 5, '2025-09-10'::date, false, false),
  ('diverge-4-expert-shimano-grx-di2', 'Diverge 4 Expert - Shimano GRX Di2', 'specialized', 'road-bikes', 'road-bikes', '<p>Race-tuned. Adventure-approved. The Diverge 4 gravel bike is built for full-gas race days and off-grid epics. With Future Shock 3.0, our most responsive frame ever, massive tire clearance, and the biggest internal storage in gravel, the best gravel bike in the world just got better. Chase the horizon—or your rivals—it’s built for both.</p>', array['diverge-4-expert-shimano-grx-di2/1.jpg', 'diverge-4-expert-shimano-grx-di2/2.jpg', 'diverge-4-expert-shimano-grx-di2/3.jpg', 'diverge-4-expert-shimano-grx-di2/4.jpg', 'diverge-4-expert-shimano-grx-di2/5.jpg']::text[], 'new', 1, '2025-09-10'::date, false, false),
  ('diverge-4-sport-carbon-shimano-grx-600', 'Diverge 4 Sport Carbon - Shimano GRX 600', 'specialized', 'road-bikes', 'road-bikes', '<p>Race-tuned. Adventure-approved. The Diverge 4 gravel bike is built for full-gas race days and off-grid epics. With Future Shock 3.0, our most responsive frame ever, massive tire clearance, and the biggest internal storage in gravel, the best gravel bike in the world just got better. Chase the horizon—or your rivals—it’s built for both.</p>', array['diverge-4-sport-carbon-shimano-grx-600/1.jpg', 'diverge-4-sport-carbon-shimano-grx-600/2.jpg', 'diverge-4-sport-carbon-shimano-grx-600/3.jpg', 'diverge-4-sport-carbon-shimano-grx-600/4.jpg', 'diverge-4-sport-carbon-shimano-grx-600/5.jpg']::text[], 'new', 7, '2025-09-10'::date, false, false),
  ('diverge-comp-carbon', 'Diverge Comp Carbon', 'specialized', 'road-bikes', 'road-bikes', '<p>Whether your goal is to escape on gravel back roads, far from cars and crowds, or drop the hammer at the front of your favorite gravel race, no bike does it better than the new Diverge. It’s quite simply the fastest, most capable - and just maybe the most fun - bike we’ve ever made, delivering a ride that’s quick and lively under power, but stable and confidence inspiring when the terrain gets rough. From Future Shock 2.0 and all-new gravel geometry, to internal storage and category leading tire clearance, the new Diverge represents everything we’ve learned over more than 40 years of riding road, gravel and dirt. The Diverge writes an entirely new chapter in the gravel bike category, so you can dream up entirely new rides. It’s the ultimate getaway vehicle. The Diverge Comp Carbon features the same game changing FACT 9r Carbon frame and Future Shock 2.0 as our Pro build but spec’d with SRAM’s mechanical shifting Rival 1 1x11 gravel group. Alloy DT Swiss G540 wheels keep you rolling efficiently, while Kanza winning Pathfinder Pro 42mm tires deliver performance across smooth pavement, dirt roads and gravel tracks. To give the Diverge Comp a perfectly balanced ride we spec Roval’s Terra seat post.</p>', array['diverge-comp-carbon/1.jpg', 'diverge-comp-carbon/2.jpg', 'diverge-comp-carbon/3.jpg', 'diverge-comp-carbon/4.jpg', 'diverge-comp-carbon/5.jpg']::text[], 'new', 0, '2025-09-10'::date, false, false),
  ('diverge-comp-e5-1', 'Diverge Comp E5', 'specialized', 'road-bikes', 'road-bikes', '<p>Whether your goal is to escape on gravel back roads, far from cars and crowds, toe the start line at your first gravel race, or simply get the most versatile bike on the road or dirt, no bike is better than the new Diverge. It''s quite simply the fastest, most capable - and just maybe the most fun - alloy bike we''ve ever made, delivering a ride that''s quick and lively, but stable and confidence inspiring when the terrain gets rough. From Future Shock 1.5 and all-new gravel geometry, to category leading tire clearance, the new Diverge represents everything we''ve learned over more than 40 years of riding road, gravel and dirt. The Diverge writes an entirely new chapter in the gravel bike category, so you can dream up entirely new rides. It''s the ultimate getaway vehicle. Starting with premium E5 alloy frame and a full carbon FACT fork, we gave the Diverge Comp E5 our Future Shock 1.5 for a fast, confident and comfortable ride on road, in the dirt, and over thick gravel. SRAM’s all new 12-speed Apex group shifts gears smoothly on any terrain and Axis Elite alloy wheels with Pathfinder Pro 42mm tires add even more capability and versatility.</p>', array['diverge-comp-e5-1/1.jpg', 'diverge-comp-e5-1/2.jpg', 'diverge-comp-e5-1/3.jpg', 'diverge-comp-e5-1/4.jpg', 'diverge-comp-e5-1/5.jpg']::text[], 'new', 0, '2025-02-11'::date, false, false),
  ('diverge-str-expert', 'Diverge STR Expert', 'specialized', 'road-bikes', 'road-bikes', '<p>With Future Shock suspension front and rear, the new Diverge STR delivers compliance without compromise. By suspending the rider—instead of the bike—Future Shock technology increases control and efficiency while decreasing fatigue, so you’ll be riding farther and faster over chunkier terrain than you believed possible. And the Diverge STR does this without the weight, sluggish pedal response, and inefficiency of other suspension systems. The Diverge STR Expert starts with our FACT 11r carbon frameset with front and rear Future Shock suspension. It’s built with SRAM’s Rival eTap AXS Eagle groupset for fast, efficient shifting with a 10-50 cassette to ensure you have the gearing to tackle any ride. The bike rolls on the Roval Terra C wheels with 42mm Tracer Pro tires. Adventure Gear alloy handlebars, an S-Works carbon seatpost, and Power Expert saddle complete the package making the Diverge STR the most capable Diverge ever.</p>', array['diverge-str-expert/1.jpg', 'diverge-str-expert/2.jpg', 'diverge-str-expert/3.jpg', 'diverge-str-expert/4.jpg', 'diverge-str-expert/5.jpg']::text[], 'new', 0, '2024-05-22'::date, false, false),
  ('fizik-terra-atlas-army', 'Fizik Terra Atlas Army', 'fizik', 'road-bikes', 'road-bikes', '<p>Fizik</p>

<p>A true all-terrain, all-road cycling shoe designed with a more generous fit for endless comfort, from gravel tracks to MTB trails, all-day adventures to extended bikepacking escapes, for riders who know no borders.</p>
<p><strong>VERSATILE FOR ALL TERRAINS</strong></p>
<p>As possibly the most versatile shoe in our entire range, the new Atlas is designed to efficiently spin pedals off-road, equally capable of handling fast and fun downcountry laps, epic all-mountain rides, long-distance backcountry adventures and drop bar gravel grinding.</p>
<p><strong>FORMED THROUGH FEEDBACK</strong></p>
<p>Atlas marks the latest addition to our Terra line-up and is the result of countless refinements based on thousands of miles of feedback from riders taking on every possible type of terrain and condition—from survivors of the toughest ultra bikepacking races to those enjoying local trails.</p>
<p><strong>ALL DAY COMFORT</strong></p>
<p>Long-wearing comfort with a more generous fit than before, Atlas is well-ventilated without sacrificing protection thanks to a TPU overlay that reinforces the toecap. Easily adjusted with a practical, single-BOA closure to dial in your fit and go wherever the day may lead.</p>
<p><strong>GRIP TO RIP</strong></p>
<p>Now more versatile than ever before, we’ve redesigned our X5 outsole for better grip and more traction. Equipped with generous studs and a rubber coating that covers the entire surface, including the mid-foot, the X5 outsole provides sure footing when steep, rough tracks require you to hike your bike.</p>
<p><strong>PEDALING FREEDOM</strong></p>
<p>However, pushing pedals and punishing miles of off-road riding is what these shoes were truly made for—that’s why the hidden nylon foot plate is there to deliver balanced stiffness for pedalling efficiency, and the low-cut uppers allow for smooth, rub-free ankle movement throughout every pedal stroke.</p>
<ul>
<li>L6 BOA® Fit System</li>
<li>X5 nylon outsole – with rubber tread, stiffness index 5</li>
<li>
<strong>Weight:</strong> 355g</li>
</ul>', array['fizik-terra-atlas-army/1.jpg', 'fizik-terra-atlas-army/2.jpg', 'fizik-terra-atlas-army/3.jpg', 'fizik-terra-atlas-army/4.jpg', 'fizik-terra-atlas-army/5.jpg']::text[], 'new', 5, '2025-09-05'::date, false, false),
  ('fizik-terra-atlas-black-1', 'Fizik Terra Atlas Black', 'fizik', 'road-bikes', 'road-bikes', '<p>A true all-terrain, all-road cycling shoe designed with a more generous fit for endless comfort, from gravel tracks to MTB trails, all-day adventures to extended bikepacking escapes, for riders who know no borders.</p>
<p><strong>VERSATILE FOR ALL TERRAINS</strong></p>
<p>As possibly the most versatile shoe in our entire range, the new Atlas is designed to efficiently spin pedals off-road, equally capable of handling fast and fun downcountry laps, epic all-mountain rides, long-distance backcountry adventures and drop bar gravel grinding.</p>
<p><strong>FORMED THROUGH FEEDBACK</strong></p>
<p>Atlas marks the latest addition to our Terra line-up and is the result of countless refinements based on thousands of miles of feedback from riders taking on every possible type of terrain and condition—from survivors of the toughest ultra bikepacking races to those enjoying local trails.</p>
<p><strong>ALL DAY COMFORT</strong></p>
<p>Long-wearing comfort with a more generous fit than before, Atlas is well-ventilated without sacrificing protection thanks to a TPU overlay that reinforces the toecap. Easily adjusted with a practical, single-BOA closure to dial in your fit and go wherever the day may lead.</p>
<p><strong>GRIP TO RIP</strong></p>
<p>Now more versatile than ever before, we’ve redesigned our X5 outsole for better grip and more traction. Equipped with generous studs and a rubber coating that covers the entire surface, including the mid-foot, the X5 outsole provides sure footing when steep, rough tracks require you to hike your bike.</p>
<p><strong>PEDALING FREEDOM</strong></p>
<p>However, pushing pedals and punishing miles of off-road riding is what these shoes were truly made for—that’s why the hidden nylon foot plate is there to deliver balanced stiffness for pedalling efficiency, and the low-cut uppers allow for smooth, rub-free ankle movement throughout every pedal stroke.</p>
<ul>
<li>L6 BOA® Fit System</li>
<li>X5 nylon outsole – with rubber tread, stiffness index 5</li>
<li>
<strong>Weight:</strong> 355g</li>
</ul>', array['fizik-terra-atlas-black-1/1.jpg', 'fizik-terra-atlas-black-1/2.jpg', 'fizik-terra-atlas-black-1/3.jpg', 'fizik-terra-atlas-black-1/4.jpg', 'fizik-terra-atlas-black-1/5.jpg']::text[], 'new', 8, '2025-09-05'::date, false, false),
  ('look-895-vitesse-frameset', 'Look 895 Vitesse Frameset', 'look', 'road-bikes', 'road-bikes', '<p>The 895 Vitesse is our latest track frame, the result of LOOK''s expertise in carbon fiber design and developed in partnership with the French National Team. Resolutely performance-oriented, the frame stiffness is optimized and features the T20 fork to enhance overall aerodynamics. With multiple adjustment options, the bike is fully customizable: 18 stems lengths, a universal bottom bracket compatible with all track cranksets and a reversible saddle clamp.</p>
<h3>WHEN SPEED AND PERFORMANCE BLEND INTO ONE:</h3>

<ul>
<li>A full carbon frame combining elite performance and 30 years of LOOK expertise</li>
<li>Increased stiffness and aerodynamics inspired by our flagship T20 track bike</li>
<li>Numerous adjustement options: 18 stem lengths, reversible saddle clamp, universal bottom bracket</li>
</ul>
<h3>TAUGHT LINES – PURE SPEED</h3>

<p>Let us introduce the brand-new <strong>LOOK 895 VITESSE</strong>, the new kid on the velodrome ready to make some waves; and it certainly won’t be on the Côte d’Azur*.<br><br>LOOK’s history and reputation has long been entwined with track cycling. From the first track frame ridden to success in Atlanta ‘96 to the medals won in Tokyo aboard the elite T20, our bikes have been at the cutting edge of performance for over 25 years.<br><br>Drawing on the success and principles of the previous R96 model, this new track machine is built in-house in our workshops in Tunisia. Using <strong>high modulus carbon fiber</strong>, the monobloc carbon construction is unapologetically oriented toward aerodynamic efficiency.</p>
<h3>SHEER POWER</h3>

<p>At the front end, it borrows the fork of the T20 and combines it with the integrated, rotative Carbon Track Stem, which is available in 18 different sizes (from 55 to 140mm in 5mm increments) to allow for extremely precise fitting no matter the rider’s position and riding style.<br><br>The aggressive design extends into oversized, carefully profiled tubes before wrapping around the rear wheel to reduce drag to an absolute minimum. The seat tube is fully integrated to further improve aero performance, with a dedicated, reversible saddle cradle that allows for custom fitting.</p>
<h3>THE NEXT LEVEL OF PERFORMANCE</h3>

<p>The <strong>895 VITESSE</strong> takes the opening in our range between the<strong> T20</strong> and the <strong>875 Madison</strong> and fills it with high class, effective performance at a competitive price point. As its name suggests, this is a bike designed for <strong>uncompromising speed</strong>. A bike that will accept nothing less than winning. When the head and the legs say go, it asks no question but simply answers with the full extent of its pureblood heritage.<br><br>The commanding BSA 68mm bottom bracket is ultra-stiff for maximum power transfer and unlike its bigger brother the T20, does not feature the ZED crankset. This means it can be fitted with any track crankset on the market for utmost versatility.</p>
<h3>DESIGNED &amp; MANUFACTURED BY LOOK</h3>

<p>Since LOOK’s beginning in the bicycle world when metals were king, our material of choice has always been carbon. For over 30 years LOOK has developed in its own factories a unique expertise and a vast know-how in the carbon field to reach specific desired properties.</p>
<h3>FRENCH CYCLING FEDERATION</h3>

<p>LOOK has been a technical partner of the French Cycling Federation for over than 30 years. Designed and developed with and for its athletes, the aim was to make a high- performance, versatile frame with the goal of optimizing the performance of its teams.</p>

<h3>TRACK GEOMETRY AND AERODYNAMISM</h3>

<p>The geometry of the 895 is completely new and perfectly complements the LOOK track product line, namely the T20, R96, AL 464 and 875 Madison. The 895 Vitesse thus offers a geometry resulting from the competition available in 4 sizes allowing a positioning perfectly adapted to each cyclist.</p>
<p>The fork being that of the T20, the frame kit is designed to be as aerodynamic as possible.</p>
<h3>CARBON COMPOSITION</h3>
<p>The carbon composition of the 895 is a high-end carbon composition using different types of carbon in strategic places of the frame. Up to 20% of HM (High modulus) carbon is used to achieve the stiffness necessary for use on the track. Overall a versatile trail bike like the 895 is 15% stiffer than a road bike frame.</p>
<p>IM carbon (Intermediate modulus 65%) and HR carbon (high strength, 15%) complete this composition in order to provide the frame with foolproof resistance even when it is subjected to the worst stresses often associated with use in competition on a velodrome.</p>
<h3>TECHNICAL SPECIFICATION</h3>

<table>
<tbody>
<tr>
<td><strong>Frame</strong></td>
<td>Full monobloc carbon Frameset</td>
</tr>
<tr>
<td><strong>Seatpost</strong></td>
<td>INTEGRATED SEAT TUBE + SEAT MAST</td>
</tr>
<tr>
<td><strong>Bottom Bracket</strong></td>
<td>BSA 68 mm</td>
</tr>
<tr>
<td><strong>Fork</strong></td>
<td>T20 AERO FORK</td>
</tr>
<tr>
<td><strong>Handlebar</strong></td>
<td>WITHOUT/COMPATIBLE ANY TRACK CRANK</td>
</tr>
<tr>
<td><strong>Sizes</strong></td>
<td>XXS/XS - S - M - L </td>
</tr>
</tbody>
</table>', array['look-895-vitesse-frameset/1.jpg', 'look-895-vitesse-frameset/2.jpg', 'look-895-vitesse-frameset/3.jpg', 'look-895-vitesse-frameset/4.jpg']::text[], 'new', 4, '2023-05-08'::date, false, false),
  ('look-t20-sprint-frameset', 'Look T20 Sprint Frameset', 'look', 'road-bikes', 'road-bikes', '<h4>T20 SPEED VERSION - FRAMESET</h4>
<p>Lighter, stiffer, more aerodynamic, more adjustable… superlatives come easily when it comes to describing the T20 Speed Version, the new symbol of our expertise and heritage. 800 grams lighter than its predecessor, the R86, the frameset is available with no less than 18 different stem lengths, and a seatpost which is adjustable not only in height, but also offers four angle options. Available in sizes XS to L with an increased reach, it also comes with our famous carbon monobloc ZED Track crankset, a reference on international velodromes.</p>
<h4>WHY YOU''LL LOVE IT? - PERFORMANCE MADE IN FRANCE</h4>

<ul>
<li>
<p>The explosive power MADE IN FRANCE BY LOOK, barely restrained in a unique frame and crankset, and illustrated in Mondrian artwork.</p>
</li>
<li>
<p>A new geometry with increased reach, combined with CORIMA carbon wheels for incomparable performance : an 11% CdA reduction for the bike alone.</p>
</li>
<li>
<p>Improved stiffness and aerodynamics thanks to unique rear thru axles, in a sleek design that now “closes” the rear dropouts.</p>
</li>
</ul>
<h4> </h4>
<h4>TECHNICAL SPECIFICATIONS</h4>
<table>
<tbody>
<tr>
<th>Frame</th>
<td>Very High Modulus Carbon UD Mat finish</td>
</tr>
<tr>
<th>Crankset</th>
<td>LOOK ZED Track (without plates) - T1: 165 / 167.5 / 170 mm</td>
</tr>
<tr>
<th>Bottom bracket</th>
<td>BB 65 LOOK Specific</td>
</tr>
<tr>
<th>Seatpost</th>
<td>LOOK AEROPOST Track</td>
</tr>
<tr>
<th>Stem</th>
<td>LOOK TRACK CARBON Stem - Available lengths: from 70 to 140 mm</td>
</tr>
<tr>
<th>Handlebar</th>
<td>LOOK SPRINT BAR</td>
</tr>
</tbody>
</table>', array['look-t20-sprint-frameset/1.jpg']::text[], 'new', 1, '2023-05-08'::date, false, false),
  ('roubaix-sl8-expert', 'Roubaix SL8 Expert', 'specialized', 'road-bikes', 'road-bikes', '<p>We created the endurance road category two decades ago proving that high ergonomics means high performance. Today, the new Roubaix SL8 with Future Shock 3.0 is lighter, faster, and smoother than any road bike ever made, unleashing unmatched confidence. The road may be hell below, but on Roubaix, it’s always heaven above.</p>', array['roubaix-sl8-expert/1.jpg', 'roubaix-sl8-expert/2.jpg', 'roubaix-sl8-expert/3.jpg', 'roubaix-sl8-expert/4.jpg', 'roubaix-sl8-expert/5.jpg']::text[], 'new', 2, '2025-03-04'::date, false, false),
  ('s-works-aethos-2-shimano-dura-ace-di2', 'S-Works Aethos 2 - Shimano Dura-Ace Di2', 's-works', 'road-bikes', 'road-bikes', '<p>At just 595 grams, the S-Works Aethos 2 is the lightest production road frame in the world. But that was never the point. Built by breaking the rules of racing to deliver pure road riding bliss, Aethos 2 is engineered to disappear beneath you. Impossibly responsive, supple, and sublime. Now with increased tire clearance, refined components, and data-based fit-enhancing geometry, it brings that transcendent ride feel to more riders than ever. Aethos 2 breaks the rules, for the love of the ride.</p>', array['s-works-aethos-2-shimano-dura-ace-di2/1.jpg', 's-works-aethos-2-shimano-dura-ace-di2/2.jpg', 's-works-aethos-2-shimano-dura-ace-di2/3.jpg', 's-works-aethos-2-shimano-dura-ace-di2/4.jpg', 's-works-aethos-2-shimano-dura-ace-di2/5.jpg']::text[], 'new', 4, '2025-10-22'::date, false, false),
  ('s-works-crux-5-sram-red-xplr', 'S-Works Crux 5 - SRAM RED XPLR', 's-works', 'road-bikes', 'road-bikes', '<p>The S-Works Crux 5 is the fastest gravel race bike ever made. Not just because it’s the lightest. Not just because it’s our most aero. Not just because it handles dirt like a Tarmac handles pavement. But because it delivers the lowest real-world Time to Finish of any gravel bike ever made. Crux 5 turns more of your effort into pure speed—validated across real race courses, real terrain, and real riders. When the goal is the top step, nothing in gravel gets you there faster.</p>', array['s-works-crux-5-sram-red-xplr/1.webp', 's-works-crux-5-sram-red-xplr/2.webp', 's-works-crux-5-sram-red-xplr/3.webp', 's-works-crux-5-sram-red-xplr/4.webp', 's-works-crux-5-sram-red-xplr/5.webp']::text[], 'new', 2, '2026-05-29'::date, false, false),
  ('s-works-crux-5-frameset-fact-12r-carbon', 'S-Works Crux 5 Frameset - FACT 12r Carbon', 's-works', 'road-bikes', 'road-bikes', '<p>The S-Works Crux 5 is the fastest gravel frame set ever made. Not just because it’s the lightest. Not just because it’s our most aero. Not just because it handles dirt like a Tarmac handles pavement. But because it delivers the lowest real-world Time to Finish of any gravel bike ever made. Crux 5 turns more of your effort into pure speed—validated across real race courses, real terrain, and real riders. When the goal is the top step, nothing in gravel gets you there faster.</p>', array['s-works-crux-5-frameset-fact-12r-carbon/1.webp', 's-works-crux-5-frameset-fact-12r-carbon/2.webp', 's-works-crux-5-frameset-fact-12r-carbon/3.webp', 's-works-crux-5-frameset-fact-12r-carbon/4.webp', 's-works-crux-5-frameset-fact-12r-carbon/5.webp']::text[], 'new', 2, '2026-05-29'::date, false, false),
  ('s-works-crux-frameset', 'S-Works Crux Frameset', 's-works', 'road-bikes', 'road-bikes', '<p>The Crux is the lightest gravel bike in the world, with the exceptional capability of massive tire clearance and performance gravel geometry. It’s not just the ultimate expression of gravel performance, it’s your one-way ticket to gravel enlightenment.</p>', array['s-works-crux-frameset/1.jpg', 's-works-crux-frameset/2.jpg', 's-works-crux-frameset/3.jpg', 's-works-crux-frameset/4.png']::text[], 'new', 1, '2024-05-22'::date, false, false),
  ('s-works-tarmac-sl8-shimano-dura-ace-di2-2', 'S-Works Tarmac SL8 - Shimano Dura-Ace Di2', 's-works', 'road-bikes', 'road-bikes', '<p>Nothing is faster than the Tarmac SL8 thanks to a combination of aerodynamics, lightweight, and ride quality previously thought impossible. After eight generations and over two decades of development, it’s more than the fastest Tarmac ever - it’s the world’s fastest race bike. Your legs up for it? Aerodynamics or lightweight alone don’t win races - speed is what matters. Delivering that speed requires creating an uncompromising combination of aerodynamics, lightweight, stiffness, and compliance. Through race simulations using real world data our Ride Science team knows the Tarmac SL8 is the fastest race bike ever made on the routes that matter - 16.6 seconds faster over 40km, 128 seconds faster over Milan San Remo, 20 seconds faster over the legendary Tourmalet climb.</p>', array['s-works-tarmac-sl8-shimano-dura-ace-di2-2/1.jpg', 's-works-tarmac-sl8-shimano-dura-ace-di2-2/2.jpg', 's-works-tarmac-sl8-shimano-dura-ace-di2-2/3.jpg', 's-works-tarmac-sl8-shimano-dura-ace-di2-2/4.jpg', 's-works-tarmac-sl8-shimano-dura-ace-di2-2/5.jpg']::text[], 'new', 1, '2025-11-18'::date, false, false),
  ('s-works-tarmac-sl9-frameset-fact-12r-carbon', 'S-Works Tarmac SL9 Frameset - FACT 12r Carbon', 's-works', 'road-bikes', 'road-bikes', '<p>The all-new S-Works Tarmac SL9 is the fastest road bike ever made. Not just because it’s the lightest. Not just because it’s our most aero. Not because it handles better than anything else on the road. But because it delivers the lowest real-world Time to Finish of any road bike ever made. Tarmac SL9 turns more of your effort into pure speed—validated for real race courses, real terrain, real riders. When the goal is to cross the line first, no road bike gets you there faster.</p>', array['s-works-tarmac-sl9-frameset-fact-12r-carbon/1.webp', 's-works-tarmac-sl9-frameset-fact-12r-carbon/2.webp', 's-works-tarmac-sl9-frameset-fact-12r-carbon/3.webp', 's-works-tarmac-sl9-frameset-fact-12r-carbon/4.webp', 's-works-tarmac-sl9-frameset-fact-12r-carbon/5.webp']::text[], 'new', 2, '2026-07-01'::date, false, false),
  ('tarmac-sl7-sport-shimano-107', 'Tarmac SL7 Sport - Shimano 105', 'specialized', 'road-bikes', 'road-bikes', '<p>The new Tarmac is designed to go fast, there''s no if''s; and''s; or but''s about that—but it represents so much more than just aerodynamic prowess. With a light-weight, Rider-First Engineered™ frame, it delivers the best-possible ride characteristics, no matter the size. So no matter what you have planned for your new Tarmac, its ready to help you achieve your goals—PRs; KOMs, or podium top-steps. One bike to rule them all. With the new Shimano 105 Mechanical 12-speed group, along with some fast rolling tires in the Turbo Pro 700x26mm tires, this new Tarmac delivers performance at a more palatable price point.</p>', array['tarmac-sl7-sport-shimano-107/1.jpg', 'tarmac-sl7-sport-shimano-107/2.jpg', 'tarmac-sl7-sport-shimano-107/3.jpg', 'tarmac-sl7-sport-shimano-107/4.jpg', 'tarmac-sl7-sport-shimano-107/5.jpg']::text[], 'new', 1, '2025-08-01'::date, false, false),
  ('tarmac-sl8-comp-shimano-105-di2', 'Tarmac SL8 Comp - Shimano 105 Di2', 'specialized', 'road-bikes', 'road-bikes', '<p>Nothing is faster than the Tarmac SL8 thanks to a combination of aerodynamics, lightweight, and ride quality previously thought impossible. After eight generations and over two decades of development, it’s more than the fastest Tarmac ever - it’s the world’s fastest race bike. Your legs up for it? Aerodynamics or lightweight alone don’t win races - speed is what matters. Delivering that speed requires creating an uncompromising combination of aerodynamics, lightweight, stiffness, and compliance. Through race simulations using real world data our Ride Science team knows the Tarmac SL8 is the fastest race bike ever made on the routes that matter - 16.6 seconds faster over 40km, 128 seconds faster over Milan San Remo, 20 seconds faster over the legendary Tourmalet climb.</p>', array['tarmac-sl8-comp-shimano-105-di2/1.jpg', 'tarmac-sl8-comp-shimano-105-di2/2.jpg', 'tarmac-sl8-comp-shimano-105-di2/3.jpg', 'tarmac-sl8-comp-shimano-105-di2/4.jpg', 'tarmac-sl8-comp-shimano-105-di2/5.jpg']::text[], 'new', 1, '2025-08-01'::date, false, false),
  ('tarmac-sl8-expert-shimano-ultegra-di2', 'Tarmac SL8 Expert - Shimano Ultegra Di2', 'specialized', 'road-bikes', 'road-bikes', '<p>Nothing is faster than the Tarmac SL8 thanks to a combination of aerodynamics, lightweight, and ride quality previously thought impossible. After eight generations and over two decades of development, it’s more than the fastest Tarmac ever - it’s the world’s fastest race bike. Your legs up for it? Aerodynamics or lightweight alone don’t win races - speed is what matters. Delivering that speed requires creating an uncompromising combination of aerodynamics, lightweight, stiffness, and compliance. Through race simulations using real world data our Ride Science team knows the Tarmac SL8 is the fastest race bike ever made on the routes that matter - 16.6 seconds faster over 40km, 128 seconds faster over Milan San Remo, 20 seconds faster over the legendary Tourmalet climb.</p>', array['tarmac-sl8-expert-shimano-ultegra-di2/1.jpg', 'tarmac-sl8-expert-shimano-ultegra-di2/2.jpg', 'tarmac-sl8-expert-shimano-ultegra-di2/3.jpg', 'tarmac-sl8-expert-shimano-ultegra-di2/4.jpg', 'tarmac-sl8-expert-shimano-ultegra-di2/5.jpg']::text[], 'new', 2, '2025-11-14'::date, false, false),

  -- ---- shoes · footbeds-insoles ----
  ('specializedbodygeometryslfootbeds', 'Specialized Body Geometry SL Footbeds', 'specialized', 'shoes', 'footbeds-insoles', '<p>Body Geometry Footbeds are ergonomically designed and scientifically tested to increase power, endurance, and comfort by optimizing hip, knee, and foot alignment.</p>

<ul>
<li>Body Geometry Footbeds measurably increase power, reduce time to exhaustion, and reduce injury by aligning hip, knee, and foot.</li>
<li>Customized longitudinal arch and metatarsal support with Red+, Blue++, or Green+++ contour.</li>
<li>Proprietary lightweight foam avoids taking a compression set for long-lasting performance.</li>
<li>Combine Body Geometry shoes, footbeds, and wedges to maximize performance benefits.</li>
</ul>', array['specializedbodygeometryslfootbeds/1.jpg']::text[], 'new', 8, '2022-05-31'::date, false, false),

  -- ---- shoes · gravel-shoes ----
  ('bont-riot-g-black', 'Bont Riot G Black', 'bont', 'shoes', 'gravel-shoes', '<p>The all-new Riot G has arrived! Following the success of the Riot 24 (RIOT road), the Riot G represents a complete overhaul of the longstanding Riot MTB+. Created for the dirt and designed to match the demands of the modern gravel rider, the Riot G is lighter, more comfortable and built to go the distance.</p><p><br></p><p>Featuring a carbon composite base with lowered mid and forefoot shaping, Bont Cycling x Cobra9 innersole plus redesigned Microfiber and technical mesh upper, the Riot G adapts to an even greater range of foot shapes and types with new levels of comfort.</p><p><br></p><p>The gravel grip outsole provides improved walkability while the included 0.5mm and 1mm cleat blocks ensure the best connection and stability between pedal and shoe. Lightweight armour is placed in the areas you need it most for durability against the off-road elements.</p><p><br></p><p>Backed by a dual-dial BOA® L6 Fit System for a precise, secure and adjustable fit, the Riot G provides a dialled-in hold with an even greater fit and feel – compared to the Riot MTB+.</p><p><br></p><p>Features</p><ul>
<li>Redesigned carbon composite fiber sole profile for all-day comfort and support. Backed by Bont Cycling''s proprietary heat molding technology.</li>
<li>Modern anatomical shaping to suit more foot shapes, types, and widths.</li>
<li>Lightweight and supple Ultralight and supportive Microfiber and technical mesh upper with strategically placed armour for improved breathability, durability, comfort, and performance.</li>
<li>Comfortable honeycomb fabric liner with lightweight padding for a cool and comfortable fit across the entire day.</li>
<li>Industry-leading 4.8mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability, and injury prevention.</li>
<li>Innersole – Bont Cycling x Cobra9 dual-density EVA.</li>
<li>Sole Guard – Replaceable gravel grip guards and included pedal stability blocks.</li>
<li>Carbon steel cleat t-nut hardware for long lasting and hassle-free cleat installation and adjustment.</li>
<li>Two widths with improved foot suitability across different shapes and types: standard and wide.</li>
<li>Cleat Mounting: Slotted 2-hole SPD-style pedal configuration with alignment grid. CLEATS NOT INCLUDED.</li>
<li>BOA L6 Performance Fit System with single-direction, dual-dial adjustability for a fast, effortless and precision fit. Backed by The Boa Guarantee, dials and laces are guaranteed for the life of your shoes.</li>
<li>Weight - 332 grams (weighed, based on size 42 shoe).</li>
</ul>', array['bont-riot-g-black/1.webp', 'bont-riot-g-black/2.webp', 'bont-riot-g-black/3.webp', 'bont-riot-g-black/4.webp', 'bont-riot-g-black/5.webp']::text[], 'new', 14, '2026-03-06'::date, false, false),
  ('bont-riot-g-wide-black', 'Bont Riot G Wide Black', 'bont', 'shoes', 'gravel-shoes', '<p>The all-new Riot G has arrived! Following the success of the Riot 24 (RIOT road), the Riot G represents a complete overhaul of the longstanding Riot MTB+. Created for the dirt and designed to match the demands of the modern gravel rider, the Riot G is lighter, more comfortable and built to go the distance.</p>

<p>Featuring a carbon composite base with lowered mid and forefoot shaping, Bont Cycling x Cobra9 innersole plus redesigned Microfiber and technical mesh upper, the Riot G adapts to an even greater range of foot shapes and types with new levels of comfort.</p>

<p>The gravel grip outsole provides improved walkability while the included 0.5mm and 1mm cleat blocks ensure the best connection and stability between pedal and shoe. Lightweight armour is placed in the areas you need it most for durability against the off-road elements.</p>

<p>Backed by a dual-dial BOA® L6 Fit System for a precise, secure and adjustable fit, the Riot G provides a dialled-in hold with an even greater fit and feel – compared to the Riot MTB+.</p>

<p>Features</p>

<ul>
<li>Redesigned carbon composite fiber sole profile for all-day comfort and support. Backed by Bont Cycling''s proprietary heat molding technology.</li>
<li>Modern anatomical shaping to suit more foot shapes, types, and widths.</li>
<li>Lightweight and supple Ultralight and supportive Microfiber and technical mesh upper with strategically placed armour for improved breathability, durability, comfort, and performance.</li>
<li>Comfortable honeycomb fabric liner with lightweight padding for a cool and comfortable fit across the entire day.</li>
<li>Industry-leading 4.8mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability, and injury prevention.</li>
<li>Innersole – Bont Cycling x Cobra9 dual-density EVA.</li>
<li>Sole Guard – Replaceable gravel grip guards and included pedal stability blocks.</li>
<li>Carbon steel cleat t-nut hardware for long lasting and hassle-free cleat installation and adjustment.</li>
<li>Two widths with improved foot suitability across different shapes and types: standard and wide.</li>
<li>Cleat Mounting: Slotted 2-hole SPD-style pedal configuration with alignment grid. CLEATS NOT INCLUDED.</li>
<li>BOA L6 Performance Fit System with single-direction, dual-dial adjustability for a fast, effortless and precision fit. Backed by The Boa Guarantee, dials and laces are guaranteed for the life of your shoes.</li>
<li>Weight - 332 grams (weighed, based on size 42 shoe).</li>
</ul>', array['bont-riot-g-wide-black/1.webp', 'bont-riot-g-wide-black/2.webp', 'bont-riot-g-wide-black/3.webp', 'bont-riot-g-wide-black/4.webp', 'bont-riot-g-wide-black/5.webp']::text[], 'new', 9, '2026-03-06'::date, false, false),
  ('bont-vaypor-sl-g-white', 'Bont Vaypor SL G White', 'bont', 'shoes', 'gravel-shoes', '<p>The ultimate gravel, XCO and marathon XCM racing shoe has arrived with the all-new Vaypor SL G. Combining Bont Cycling’s modern approach to cycling shoe design and built upon the success of the Vaypor SL, the Vaypor SL G is the new choice for performance-focussed off-road riding.</p><p><br></p><p>Designed to meet the demands of the world’s fastest athletes with industry-leading pedalling efficiency and stability, the Vaypor SL G delivers pro-level energy transfer, foot hold and comfort. When every session across the dirt matters, Vaypor SL G is the contemporary choice while our Vaypor G maintains its legendary market position with its unique and renowned monocoque construction.</p><p><br></p><p>Built around the same unidirectional carbon fiber base as the Vaypor SL, the SL G joins the Vaypor Series lineup in providing the very best in support while also accommodating a greater range of foot types and shapes. Harnessing a dual-dial BOA® Li2 Fit System for a precise, secure and micro-adjustable fit, the Vaypor SL G is for the uncompromising off-road racer who demands it all.</p><p><br></p><p>Constructed using the highest quality carbon fiber from Toray of Japan, along with a lightweight Tech Mesh upper, the Vaypor SL is 15% lighter compared to the current Vaypor G while retaining our renowned energy transfer and anatomical shaping.</p><p><br></p><p>Built using a modified lower profile and hand-laid unidirectional carbon fiber base, the Vaypor SL G continues the ‘slide and ride’ theme with standard and wide fit width options. The wide fit option also been slightly modified across the size range to accommodate slightly wider feet.</p><p>The Vaypor SL G is heat moldable however, the lower carbon shaping means you can be confident in knowing if the shoe fits from the moment you put it on your feet.</p><p><br></p><p><b>Features</b></p><ul>
<li>100% carbon fiber construction utilising hand-laid unidirectional carbon from Toray of Japan and Bont Cycling''s proprietary heat molding technology.</li>
<li>Ultralight Tech Mesh upper for improved foot hold, breathability, comfort, and performance.</li>
<li>Comfortable honeycomb fabric liner with lightweight padding for a cool and comfortable fit across the entire day.</li>
<li>Industry-leading 3.6mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability, and injury prevention.</li>
<li>Innersole-Bont CyclingxCobra9 dual-density EVA.</li>
<li>Sole Guard–Updated gravel grip guards with improved pedal connection and walkability.</li>
<li>Steel cleat t-nut hardware for lightweight, long lasting and hassle-free cleat installation and adjustment.</li>
<li>Two widths with improved foot suitability across different shapes and types: Standard and wide.</li>
<li>Cleat Mounting: Slotted2-holeSPD-style pedal configuration with alignment grid</li>
<li>BOA Li2 Performance Fit System with dual-dial adjustability for a fast, effortless and precision fit. Backed by a TheBOAGuarantee, dials and laces are guaranteed for the life of your shoes.</li>
<li>Weight-275grams (weighed, based on size 42 shoe)</li>
</ul>', array['bont-vaypor-sl-g-white/1.webp', 'bont-vaypor-sl-g-white/2.webp', 'bont-vaypor-sl-g-white/3.webp', 'bont-vaypor-sl-g-white/4.webp', 'bont-vaypor-sl-g-white/5.webp']::text[], 'new', 12, '2026-03-06'::date, false, false),
  ('bont-vaypor-sl-g-wide-white', 'Bont Vaypor SL G Wide White', 'bont', 'shoes', 'gravel-shoes', '<p>The ultimate gravel, XCO and marathon XCM racing shoe has arrived with the all-new Vaypor SL G Wide Fit. Combining Bont Cycling’s modern approach to cycling shoe design and built upon the success of the Vaypor SL, the Vaypor SL G is the new choice for performance-focussed off-road riding.</p><p><br></p><p>Designed to meet the demands of the world’s fastest athletes with industry-leading pedalling efficiency and stability, the Vaypor SL G Wide Fit delivers pro-level energy transfer, foot hold and comfort. When every session across the dirt matters, Vaypor SL G Wide Fit is the contemporary choice while our Vaypor G maintains its legendary market position with its unique and renowned monocoque construction.</p><p><br></p><p>Built around the same unidirectional carbon fiber base as the Vaypor SL, the SL G joins the Vaypor Series lineup in providing the very best in support while also accommodating a greater range of foot types and shapes. Harnessing a dual-dial BOA® Li2 Fit System for a precise, secure and micro-adjustable fit, the Vaypor SL G Wide Fit is for the uncompromising off-road racer who demands it all. is for the uncompromising off-road racer who demands it all.</p><p><br></p><p>Constructed using the highest quality carbon fiber from Toray of Japan, along with a lightweight Tech Mesh upper, the Vaypor SL is 15% lighter compared to the current Vaypor G while retaining our renowned energy transfer and anatomical shaping.</p><p><br></p><p>Built using a modified lower profile and hand-laid unidirectional carbon fiber base, the Vaypor SL G continues the ‘slide and ride’ theme with standard and wide fit width options. The wide fit option also been slightly modified across the size range to accommodate slightly wider feet.continues the ‘slide and ride’ theme with standard and wide fit width options. The wide fit option a so been slightly modified across the size range to accommodate slightly wider feet.</p><p>The Vaypor SL G is heat moldable however, the lower carbon shaping means you can be confident in knowing if the shoe fits from the moment you put it on your feet.</p><p><br></p><p><b>Features</b></p><ul>
<li>100% carbon fiber construction utilising hand-laid unidirectional carbon from Toray of Japan and Bont Cycling''s proprietary heat molding technology.</li>
<li>Ultralight Tech Mesh upper for improved foot hold, breathability, comfort, and performance.</li>
<li>Comfortable honeycomb fabric liner with lightweight padding for a cool and comfortable fit across the entire day.</li>
<li>Industry-leading 3.6mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability, and injury prevention.</li>
<li>Innersole-Bont CyclingxCobra9 dual-density EVA.</li>
<li>Sole Guard–Updated gravel grip guards with improved pedal connection and walkability.</li>
<li>Steel cleat t-nut hardware for lightweight, long lasting and hassle-free cleat installation and adjustment.</li>
<li>Two widths with improved foot suitability across different shapes and types: Standard and wide.</li>
<li>Cleat Mounting: Slotted2-holeSPD-style pedal configuration with alignment grid</li>
<li>BOA Li2 Performance Fit System with dual-dial adjustability for a fast, effortless and precision fit. Backed by a TheBOAGuarantee, dials and laces are guaranteed for the life of your shoes.</li>
<li>Weight-275grams (weighed, based on size 42 shoe)</li>
</ul>', array['bont-vaypor-sl-g-wide-white/1.webp', 'bont-vaypor-sl-g-wide-white/2.webp', 'bont-vaypor-sl-g-wide-white/3.webp', 'bont-vaypor-sl-g-wide-white/4.webp', 'bont-vaypor-sl-g-wide-white/5.webp']::text[], 'new', 11, '2026-03-06'::date, false, false),
  ('crankbrothers-candy-lace-black-black', 'Crankbrothers Candy Lace Black / Black', 'crankbrothers', 'shoes', 'gravel-shoes', '<p><strong>Engineered to take you further.</strong></p>
<p>Whether logging gravel miles, bike-packing across continents, or embarking on singletrack missions deep into the hills, the Candy Lace is the perfect companion for those long, adventurous rides.</p>
<p>The Candy Lace features a stiff, fiber-reinforced nylon shank for efficient power transfer, paired with a minimalist synthetic upper, vibration-absorbing EVA insole, and a relaxed fit to provide a comfortable, ride-all-day feel.</p>
<p>Our innovative Match System optimizes engagement for Crankbrothers clip-in pedals, while the extended 35mm cleat track retains compatibility with other common clip-in pedals. Cleats are not included with Candy Lace shoes - remember to add a fresh set for your clip-in system of choice!</p>
<ul>
<li>Ideal for Enduro and Trail</li>
<li>
<strong>MATCH SYSTEM</strong> - Match Box, Match Compound, and Match Outsole are optimized for any MTB pedals, including SPD</li>
<li>
<strong>LACE CLOSURE</strong> - Classic lace closure system, with elastic retention loop</li>
</ul>
<h3><strong>SUGGESTED CLEAT SHIMS</strong></h3>
<p>For Mallet Trail, Candy, and Double Shot pedals, use the included Black 1.0mm plastic shim or our Stainless 0.8mm Shoe Shield.</p>
<p>For Eggbeater or SPD pedals, we recommend installing your cleats without a shim.</p>
<h3><strong>SPECS</strong></h3>
<p><strong>WEIGHT</strong> - 340g per shoe (US 9 / EU 42)</p>
<h3><strong>PREMIUM MATERIALS &amp; CONSTRUCTION</strong></h3>
<p>The Candy Lace''s premium synthetic upper is constructed from durable, water-resistant materials, with perforations for enhanced breathability. A traditional lace closure system complete with lace retention loop keeps your foot comfortably secure.</p>
<h3><strong>OPTIMIZED PEDAL INTERFACE</strong></h3>
<p>A stiff, fiber-reinforced nylon shank transfers power efficiently, while an extended 35mm-length cleat track allows for personalized cleat position. The cleat box depth is carefully chosen to allow for optimal shoe-to-pedal contact.</p>
<h3><strong>ADVENTURE-READY OUTSOLE</strong></h3>
<p>Full-coverage MC1 rubber outsole and directionally-angled toe and heel lugs offer traction for any terrain. A ramped toe and curved outsole profile allow for a natural stride off the bike. The mid-foot anti-slip zone offers stability while unclipped.</p>
<h3><strong>TOE PROTECTION</strong></h3>
<p>A TPU-reinforced toe box combined with a raised outsole at the front of the shoe provide critical protection against impacts.</p>', array['crankbrothers-candy-lace-black-black/1.jpg', 'crankbrothers-candy-lace-black-black/2.jpg', 'crankbrothers-candy-lace-black-black/3.jpg', 'crankbrothers-candy-lace-black-black/4.jpg', 'crankbrothers-candy-lace-black-black/5.jpg']::text[], 'new', 4, '2026-01-27'::date, false, false),
  ('crankbrothers-candy-lace-green', 'Crankbrothers Candy Lace Green', 'crankbrothers', 'shoes', 'gravel-shoes', '<p><strong>Engineered to take you further.</strong></p><p>Whether logging gravel miles, bike-packing across continents, or embarking on singletrack missions deep into the hills, the Candy Lace is the perfect companion for those long, adventurous rides.</p><p>The Candy Lace features a stiff, fiber-reinforced nylon shank for efficient power transfer, paired with a minimalist synthetic upper, vibration-absorbing EVA insole, and a relaxed fit to provide a comfortable, ride-all-day feel.</p><p>Our innovative Match System optimizes engagement for Crankbrothers clip-in pedals, while the extended 35mm cleat track retains compatibility with other common clip-in pedals. Cleats are not included with Candy Lace shoes - remember to add a fresh set for your clip-in system of choice!</p><ul>
<li>Ideal for Enduro and Trail</li>
<li>
<strong>MATCH SYSTEM</strong> - Match Box, Match Compound, and Match Outsole are optimized for any MTB pedals, including SPD</li>
<li>
<strong>LACE CLOSURE</strong> - Classic lace closure system, with elastic retention loop</li>
</ul><h3><strong>SUGGESTED CLEAT SHIMS</strong></h3><p>For Mallet Trail, Candy, and Double Shot pedals, use the included Black 1.0mm plastic shim or our Stainless 0.8mm Shoe Shield.</p><p>For Eggbeater or SPD pedals, we recommend installing your cleats without a shim.</p><h3><strong>SPECS</strong></h3><p><strong>WEIGHT</strong> - 340g per shoe (US 9 / EU 42)</p><h3><strong>PREMIUM MATERIALS &amp; CONSTRUCTION</strong></h3><p>The Candy Lace''s premium synthetic upper is constructed from durable, water-resistant materials, with perforations for enhanced breathability. A traditional lace closure system complete with lace retention loop keeps your foot comfortably secure.</p><h3><strong>OPTIMIZED PEDAL INTERFACE</strong></h3><p>A stiff, fiber-reinforced nylon shank transfers power efficiently, while an extended 35mm-length cleat track allows for personalized cleat position. The cleat box depth is carefully chosen to allow for optimal shoe-to-pedal contact.</p><h3><strong>ADVENTURE-READY OUTSOLE</strong></h3><p>Full-coverage MC1 rubber outsole and directionally-angled toe and heel lugs offer traction for any terrain. A ramped toe and curved outsole profile allow for a natural stride off the bike. The mid-foot anti-slip zone offers stability while unclipped.</p><h3><strong>TOE PROTECTION</strong></h3><p>A TPU-reinforced toe box combined with a raised outsole at the front of the shoe provide critical protection against impacts.</p>', array['crankbrothers-candy-lace-green/1.png', 'crankbrothers-candy-lace-green/2.png', 'crankbrothers-candy-lace-green/3.png', 'crankbrothers-candy-lace-green/4.png', 'crankbrothers-candy-lace-green/5.png']::text[], 'new', 6, '2026-01-27'::date, false, false),
  ('crankbrothers-candy-lace-white-grey', 'Crankbrothers Candy Lace White / Grey', 'crankbrothers', 'shoes', 'gravel-shoes', '<p><strong>Engineered to take you further.</strong></p><p>Whether logging gravel miles, bike-packing across continents, or embarking on singletrack missions deep into the hills, the Candy Lace is the perfect companion for those long, adventurous rides.</p><p>The Candy Lace features a stiff, fiber-reinforced nylon shank for efficient power transfer, paired with a minimalist synthetic upper, vibration-absorbing EVA insole, and a relaxed fit to provide a comfortable, ride-all-day feel.</p><p>Our innovative Match System optimizes engagement for Crankbrothers clip-in pedals, while the extended 35mm cleat track retains compatibility with other common clip-in pedals. Cleats are not included with Candy Lace shoes - remember to add a fresh set for your clip-in system of choice!</p><ul>
<li>Ideal for Enduro and Trail</li>
<li>
<strong>MATCH SYSTEM</strong> - Match Box, Match Compound, and Match Outsole are optimized for any MTB pedals, including SPD</li>
<li>
<strong>LACE CLOSURE</strong> - Classic lace closure system, with elastic retention loop</li>
</ul><p><strong>SUGGESTED CLEAT SHIMS</strong></p><p>For Mallet Trail, Candy, and Double Shot pedals, use the included Black 1.0mm plastic shim or our Stainless 0.8mm Shoe Shield.</p><p>For Eggbeater or SPD pedals, we recommend installing your cleats without a shim.</p><p><strong>SPECS</strong></p><p><strong>WEIGHT</strong> - 340g per shoe (US 9 / EU 42)</p><p><strong>PREMIUM MATERIALS &amp; CONSTRUCTION</strong></p><p>The Candy Lace''s premium synthetic upper is constructed from durable, water-resistant materials, with perforations for enhanced breathability. A traditional lace closure system complete with lace retention loop keeps your foot comfortably secure.</p><p><strong>OPTIMIZED PEDAL INTERFACE</strong></p><p>A stiff, fiber-reinforced nylon shank transfers power efficiently, while an extended 35mm-length cleat track allows for personalized cleat position. The cleat box depth is carefully chosen to allow for optimal shoe-to-pedal contact.</p><p><strong>ADVENTURE-READY OUTSOLE</strong></p><p>Full-coverage MC1 rubber outsole and directionally-angled toe and heel lugs offer traction for any terrain. A ramped toe and curved outsole profile allow for a natural stride off the bike. The mid-foot anti-slip zone offers stability while unclipped.</p><p><strong>TOE PROTECTION</strong></p><p>A TPU-reinforced toe box combined with a raised outsole at the front of the shoe provide critical protection against impacts.</p>', array['crankbrothers-candy-lace-white-grey/1.webp', 'crankbrothers-candy-lace-white-grey/2.webp', 'crankbrothers-candy-lace-white-grey/3.webp']::text[], 'new', 4, '2026-01-27'::date, false, false),
  ('fizik-terra-x4-powerstrap-black', 'Fizik Terra X4 Powerstrap Black', 'fizik', 'shoes', 'gravel-shoes', '<p>A gravel cycling shoes with Powerstrap Velcro closure system design for an enveloping fit and a X4 outsole targeted stiffness and rubber tread for mixed surfaces. POWERSTRAP X4 is a versatile and ubiquitous gravel-focused shoe, designed for drop-bar riders whose adventures and aspirations take them beyond the traditional paved roads.</p>', array['fizik-terra-x4-powerstrap-black/1.jpg', 'fizik-terra-x4-powerstrap-black/2.jpg', 'fizik-terra-x4-powerstrap-black/3.jpg', 'fizik-terra-x4-powerstrap-black/4.jpg', 'fizik-terra-x4-powerstrap-black/5.jpg']::text[], 'new', 8, '2023-07-19'::date, false, false),
  ('fizik-terra-x4-powerstrap-light-grey-black', 'Fizik Terra X4 Powerstrap Light Grey/Black', 'fizik', 'shoes', 'gravel-shoes', '<p>A gravel cycling shoe with our Powerstrap Velcro closure system for an enveloping fit and an X4 outsole providing targeted stiffness and rubber tread for mixed surfaces.</p> <p><strong>POWERSTRAP</strong></p> <p>While most traditional Velcro closures just pull together two sides of the shoe''s upper, in the Powerstrap configuration a ribbon wraps around the foot, providing secure containment using just two straps. The instep and the midfoot are separately adjustable for customized fit and compression.</p> <p><strong>X4 OUTSOLE</strong></p> <p>For these versatile shoes we developed a specific outsole, the X4: a carefully considered combination of stiffness and comfort, to turn pedals effectively on mixed surfaces; blending nylon - with targeted stiffness - and a rubber tread for effective grip and durability.</p> <ul> <li>X4 nylon outsole – with rubber tread, stiffness index 6</li> <li>
<strong>Weight:</strong> 292g (size 42- 1/2 pair)</li> </ul> <p><strong>FEATURES</strong></p> <ul> <li>
<strong>Powerstrap:</strong> foot-wrapping Velcro closure designed for an enveloping fit</li> <li>
<strong>X4 outsole:</strong> targeted stiffness and rubber tread for mixed surfaces</li> </ul>', array['fizik-terra-x4-powerstrap-light-grey-black/1.jpg', 'fizik-terra-x4-powerstrap-light-grey-black/2.jpg', 'fizik-terra-x4-powerstrap-light-grey-black/3.jpg', 'fizik-terra-x4-powerstrap-light-grey-black/4.jpg', 'fizik-terra-x4-powerstrap-light-grey-black/5.jpg']::text[], 'new', 10, '2023-07-19'::date, false, false),

  -- ---- shoes · mtb-cycling-shoes ----
  ('2fo-method-shoe', '2FO Method Shoe', 'specialized', 'shoes', 'mtb-cycling-shoes', '<p>The 2FO Method melds unmatched pedal grip of our SlipNot™ compound with the stealthy style of a canvas upper and low-profile cut. With the SlipNot sole that propels riders like Loïc Bruni and Finn Iles to World Cup DH podiums, this casually stylish shoe can pull full-spectrum rowdiness from trail sessions to pump track to jump line to hanging out off the bike.</p>', array['2fo-method-shoe/1.jpg', '2fo-method-shoe/2.jpg', '2fo-method-shoe/3.jpg', '2fo-method-shoe/4.jpg', '2fo-method-shoe/5.jpg']::text[], 'new', 9, '2025-01-01'::date, false, false),
  ('2fo-roost-clip-mountain-bike-shoes', '2FO Roost Clip Mountain Bike Shoes', 'specialized', 'shoes', 'mtb-cycling-shoes', '<p>If you’re looking for a versatile MTB shoe that can transition from hot laps in the park to cold beers at the base without missing a step, then look no further. The 2FO Roost Clip brings a casual, relaxed vibe with all the right DNA to get sendy on the bike. It combines a durable leather and textile upper, cushioned EVA foam midsole and relaxed fit last that can stand up to the rigors of daily trail use without sacrificing off-the-bike comfort and style. Last but not least, a SlipNot™ FG rubber sole delivers confident traction on and off the trail.</p>', array['2fo-roost-clip-mountain-bike-shoes/1.jpg', '2fo-roost-clip-mountain-bike-shoes/2.jpg', '2fo-roost-clip-mountain-bike-shoes/3.jpg', '2fo-roost-clip-mountain-bike-shoes/4.jpg', '2fo-roost-clip-mountain-bike-shoes/5.jpg']::text[], 'new', 2, '2024-05-22'::date, false, false),
  ('2fo-roost-flat-syn-shoe', '2FO Roost Flat Syn Shoe', 'specialized', 'shoes', 'mtb-cycling-shoes', '<p>To Slip or SlipNot™: 2FO Roost delivers grip, durability, and light-weight unmatched by any trail shoe. The SlipNot™ sole sets the standard for stickiness, traction, durability, and pedal feel. Built with a fully synthetic upper and Airmesh padding—meaning the 2FO Roost is super light-weight, comfortable, and durable, and for those times when you go full-submarine, it dries really fast.</p>', array['2fo-roost-flat-syn-shoe/1.jpg', '2fo-roost-flat-syn-shoe/2.jpg', '2fo-roost-flat-syn-shoe/3.jpg', '2fo-roost-flat-syn-shoe/4.jpg', '2fo-roost-flat-syn-shoe/5.jpg']::text[], 'new', 2, '2024-05-22'::date, false, false),
  ('crankbrothers-mallet-boa-25th-anniversary-ltd-edi', 'Crankbrothers Mallet Boa 25th Anniversary Ltd. Edi', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Mallet clip-in shoe plays nice on the race track and at the bike park. Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<ul>
<li>Ideal for Downhill &amp; Enduro</li>
<li>Match Box - optimized for any MTB pedal, including SPD</li>
<li>Match Compound - MC1 mid-friction compound for easy pedal exit</li>
<li>Ready to Ride - Pre-installed Crankbrothers shim and cleat</li>
</ul>
<p><strong>Closure System</strong></p>
<p>The BOA® Fit System utilizes a micro-adjustment dial, a strong lightweight lace and low-friction lace guides to deliver fast, effortless, precision fit.</p>
<p><strong>Find Your Size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<p><strong>Specs</strong></p>
<p>Weight: 424g per shoe (US 9 / EU 42)</p>
<p><strong>Match Box</strong></p>
<p>The ramped cleat box offers easy front and rear pedal entry and mud shedding. A Race Zone setback on the cleat track allows the cleat to be positioned further toward the heel for added control and stability when descending.</p>
<p><strong>Match Compound</strong></p>
<p>Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper Features</strong>
<ul>
<li>Closure System</li>
<li>Hidden eyelets</li>
<li>Heel dots</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
</ul>
</li>
</ul>', array['crankbrothers-mallet-boa-25th-anniversary-ltd-edi/1.jpg', 'crankbrothers-mallet-boa-25th-anniversary-ltd-edi/2.jpg', 'crankbrothers-mallet-boa-25th-anniversary-ltd-edi/3.jpg', 'crankbrothers-mallet-boa-25th-anniversary-ltd-edi/4.jpg', 'crankbrothers-mallet-boa-25th-anniversary-ltd-edi/5.jpg']::text[], 'new', 1, '2026-01-27'::date, false, false),
  ('crankbrothers-mallet-boa-black-gold', 'Crankbrothers Mallet Boa Black/Gold', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Mallet clip-in shoe plays nice on the race track and at the bike park.  Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box. </p>

<strong>Closure System</strong>

<p>The BOA® Fit System utilizes an L6 micro-adjustment dial, a strong lightweight lace and low-friction lace guides to deliver fast, effortless, precision fit.</p>

<strong>Find Your Size</strong>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></p>

<strong>Specs</strong>

<p>Weight: 424g per shoe (US 9 / EU 42)</p>

<h3>Match Box</h3>
The ramped cleat box offers easy front and rear pedal entry and mud shedding. A Race Zone setback on the cleat track allows the cleat to be positioned further toward the heel for added control and stability when descending.

<h3>Match Compound</h3>
Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.
 

<h3>Match Outsole</h3>
The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.', array['crankbrothers-mallet-boa-black-gold/1.png', 'crankbrothers-mallet-boa-black-gold/2.png', 'crankbrothers-mallet-boa-black-gold/3.png', 'crankbrothers-mallet-boa-black-gold/4.png', 'crankbrothers-mallet-boa-black-gold/5.png']::text[], 'new', 9, '2026-01-27'::date, false, false),
  ('crankbrothers-mallet-boa-navy-grey', 'Crankbrothers Mallet Boa Navy/Grey', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Mallet clip-in shoe plays nice on the race track and at the bike park. Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<p><br></p>
<p>The BOA® Fit System delivers micro-adjustable precision fit, engineered to perform in the toughest conditions.</p>
<p><br></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens.</p>
<p><br></p>
<p>WEIGHT 424g per shoe (US 9 / EU 42)</p>

<p><br></p>

<p><b>MATCH COMPOUND</b></p>
<p>Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.</p>
<p><br></p>
<p><b>MATCH BOX</b></p>
<p>The ramped cleat box offers easy front and rear pedal entry and mud shedding. A Race Zone setback on the cleat track allows the cleat to be positioned further toward the heel for added control and stability when descending.</p>
<p><br></p>
<p><b>MATCH OUTSOLE</b></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>', array['crankbrothers-mallet-boa-navy-grey/1.webp', 'crankbrothers-mallet-boa-navy-grey/2.webp', 'crankbrothers-mallet-boa-navy-grey/3.webp']::text[], 'new', 14, '2026-01-27'::date, false, false),
  ('crankbrothers-mallet-e-lace-black-blue', 'Crankbrothers Mallet E Lace Black/Blue', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<strong>Mallet E Lace</strong> 

<p>The Crankbrothers Mallet E clip-in shoe excels for enduro races or all-day adventures. Featuring a carbon-injected nylon shank, the Mallet E shoe offers pedaling efficiency without compromising on shoe-to-pedal interface. Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box.</p>

<strong>Closure System</strong>

<p>Classic lace closure system offers smooth closure with round laces and a pocket to safely tuck laces.</p>

<strong>Find Your Size </strong>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></p>

<strong>Specs</strong>

<p>Weight: 430g per shoe (US 9 / EU 42)</p>

<h3>Match Box</h3>
The ramped Match cleat box offers easy front and rear pedal entry and mud shedding. An extra stiff carbon-injected nylon shank transfers power efficiently when climbing or sprinting.
 

<h3>Match Compound</h3>
Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.
 

<h3>Match Outsole</h3>
The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.', array['crankbrothers-mallet-e-lace-black-blue/1.png', 'crankbrothers-mallet-e-lace-black-blue/2.png', 'crankbrothers-mallet-e-lace-black-blue/3.png', 'crankbrothers-mallet-e-lace-black-blue/4.png', 'crankbrothers-mallet-e-lace-black-blue/5.png']::text[], 'new', 0, '2026-08-10'::date, false, false),
  ('crankbrothers-mallet-e-speedlace-camo-black-ltd-e-1', 'Crankbrothers Mallet E Speedlace Camo/Black Ltd. E', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p><strong>CURRENTLY UNDER EMBARGO. IMAGES COMING MARCH 2023.</strong></p>
<p>The Crankbrothers Mallet E clip-in shoe excels for enduro races or all-day adventures. Featuring a carbon-injected nylon shank, the Mallet E shoe offers pedaling efficiency without compromising on shoe-to-pedal interface. Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<ul>
<li>Ideal for Enduro &amp; Trail</li>
<li>Match Box - optimized for any MTB pedal, including SPD</li>
<li>Match Compound - MC1 mid-friction compound for easy pedal exit</li>
<li>Ready to Ride - Pre-installed Crankbrothers shim and cleat</li>
</ul>
<p><strong>Closure System</strong></p>
<p>Speed lace closure system offers fast adjustment, a strap for secure closure and a pocket to safely tuck laces.</p>
<p><strong>Find Your Size</strong></p>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<p><strong>Specs</strong></p>

<p>Weight: 440g per shoe (US 9 / EU 42)</p>
<p><strong>Match Box</strong></p>
<p>The ramped Match cleat box offers easy front and rear pedal entry and mud shedding. An extra stiff carbon-injected nylon shank transfers power efficiently when climbing or sprinting.</p>
<p><strong>Match Compound</strong></p>
<p>Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Lace pocket</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated toe</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
<li>Heel dots</li>
</ul>
</li>
</ul>', array['crankbrothers-mallet-e-speedlace-camo-black-ltd-e-1/1.png', 'crankbrothers-mallet-e-speedlace-camo-black-ltd-e-1/2.png', 'crankbrothers-mallet-e-speedlace-camo-black-ltd-e-1/3.png', 'crankbrothers-mallet-e-speedlace-camo-black-ltd-e-1/4.png', 'crankbrothers-mallet-e-speedlace-camo-black-ltd-e-1/5.png']::text[], 'new', 1, '2026-01-27'::date, false, false),
  ('crankbrothers-mallet-lace-black-red', 'Crankbrothers Mallet Lace Black/Red', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p><strong>Mallet Lace</strong></p>
<p>The Crankbrothers Mallet clip-in shoe plays nice on the race track and at the bike park. Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<p><strong>Closure System</strong> - Classic lace closure system offers smooth closure with round laces and a pocket to safely tuck laces.</p>

<strong>Find Your Size</strong>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></p>

<strong>Specs</strong>

<p>Weight: 415g per shoe (US 9 / EU 42)</p>

<p><strong>Match Box </strong>- The ramped cleat box offers easy front and rear pedal entry and mud shedding. A Race Zone setback on the cleat track allows the cleat to be positioned further toward the heel for added control and stability when descending. </p>

<strong>Match Compound</strong> - Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.

 

<strong>Match Outsole</strong> - The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.', array['crankbrothers-mallet-lace-black-red/1.png', 'crankbrothers-mallet-lace-black-red/2.png', 'crankbrothers-mallet-lace-black-red/3.png', 'crankbrothers-mallet-lace-black-red/4.png', 'crankbrothers-mallet-lace-black-red/5.png']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('crankbrothers-mallet-lace-navy-silver', 'Crankbrothers Mallet Lace Navy/Silver', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p><strong>Mallet Lace</strong></p>
<p>The Crankbrothers Mallet clip-in shoe plays nice on the race track and at the bike park. Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<p><strong>Closure System</strong> - Classic lace closure system offers smooth closure with round laces and a pocket to safely tuck laces.</p>

<strong>Find Your Size</strong>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></p>

<strong>Specs</strong>

<p>Weight: 415g per shoe (US 9 / EU 42)</p>

<p><strong>Match Box </strong>- The ramped cleat box offers easy front and rear pedal entry and mud shedding. A Race Zone setback on the cleat track allows the cleat to be positioned further toward the heel for added control and stability when descending. </p>

<strong>Match Compound</strong> - Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.

 

<strong>Match Outsole</strong> - The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.', array['crankbrothers-mallet-lace-navy-silver/1.png', 'crankbrothers-mallet-lace-navy-silver/2.png', 'crankbrothers-mallet-lace-navy-silver/3.png', 'crankbrothers-mallet-lace-navy-silver/4.png', 'crankbrothers-mallet-lace-navy-silver/5.png']::text[], 'new', 0, '2026-01-27'::date, false, false),
  ('crankbrothers-mallet-lace-purple-teal-blue-1', 'Crankbrothers Mallet Lace Purple / Teal Blue', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Mallet clip-in shoe plays nice on the race track and at the bike park. Our innovative Match System optimizes engagement for any MTB clip-in system, whether that''s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<ul>
<li>Ideal for Downhill &amp; Enduro</li>
<li>Match Box - optimized for any MTB pedal, including SPD</li>
<li>Match Compound - MC1 mid-friction compound for easy pedal exit</li>
<li>Ready to Ride - Pre-installed Crankbrothers shim and cleat</li>
</ul>
<p><strong>Closure System</strong></p>
<p>Classic lace closure system offers smooth closure with round laces and a pocket to safely tuck laces.</p>
<p><strong>Find your size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>

<p><strong>Specs</strong></p>

<p>Weight: 415g per shoe (US 9 / EU 42)</p>
<p><strong>Match Box</strong></p>
<p>The ramped cleat box offers easy front and rear pedal entry and mud shedding. A Race Zone setback on the cleat track allows the cleat to be positioned further toward the heel for added control and stability when descending.</p>
<p><strong>Match Compound</strong></p>
<p>Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Lace pocket</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
<li>Heel dots</li>
</ul>
</li>
</ul>', array['crankbrothers-mallet-lace-purple-teal-blue-1/1.jpg', 'crankbrothers-mallet-lace-purple-teal-blue-1/2.jpg', 'crankbrothers-mallet-lace-purple-teal-blue-1/3.jpg', 'crankbrothers-mallet-lace-purple-teal-blue-1/4.jpg', 'crankbrothers-mallet-lace-purple-teal-blue-1/5.jpg']::text[], 'new', 0, '2026-01-27'::date, false, false),
  ('crankbrothers-mallet-speedlace-black-white', 'Crankbrothers Mallet Speedlace Black/White', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Mallet clip-in shoe plays nice on the race track and at the bike park. Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position so they are ready to ride with Crankbrothers pedals right out of the box.</p>

<strong>Closure System</strong>

<p>Speed Lace closure system offers fast adjustment, a strap for secure closure and a pocket to safely tuck laces.</p>

<strong>Find Your Size</strong>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></p>

<strong>Specs</strong>

<p>Weight: 425g per shoe (US 9 / EU 42)</p>

<h3>Match Box</h3>
The ramped cleat box offers easy front and rear pedal entry and mud shedding. A Race Zone setback on the cleat track allows the cleat to be positioned further toward the heel for added control and stability when descending.

<h3>Match Compound</h3>
Our mid-friction rubber compound (MC1) allows for easy pedal entry and exit and is hard enough to hold up to wear and tear. The radial lug pattern around the cleat box is designed to provide smooth release from the pedal body.

<h3>Match Outsole</h3>
The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.', array['crankbrothers-mallet-speedlace-black-white/1.png', 'crankbrothers-mallet-speedlace-black-white/2.png', 'crankbrothers-mallet-speedlace-black-white/3.png', 'crankbrothers-mallet-speedlace-black-white/4.png', 'crankbrothers-mallet-speedlace-black-white/5.png']::text[], 'new', 0, '2026-08-10'::date, false, false),
  ('crankbrothers-mallet-trail-boa-black-gold', 'Crankbrothers Mallet Trail Boa Black/Gold', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Mallet Trail BOA® clip-in shoe is the perfect blend of performance and adventure. Built for the trail or your next enduro race, the Mallet Trail BOA® will provide you all-day comfort paired with ultimate racing performance.</p>
<p>A lightweight yet durable rip-stop upper features a TPU-reinforced toebox for enhanced protection and a flexible collar around the ankle to prevent debris from entering the shoe. In addition, a fiber-reinforced shank and an aggressive outsole lug pattern bring pedaling efficiency and all-terrain versatility to every ride.</p>
<p>Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position, so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<ul>
<li>Ideal for Enduro and Trail</li>
<li>
<strong>MATCH SYSTEM</strong> - Match Box, Match Compound, and Match Outsole are optimized for any MTB pedals, including SPD</li>
<li>
<strong>BOA® FIT SYSTEM</strong> - Multi-directional BOA Li2 dial to precisely control fit</li>
</ul>
<h3><strong>Closure System</strong></h3>
<p>The BOA® Fit System delivers micro-adjustable precision fit, engineered to perform in the toughest conditions.</p>
<h3><strong>Pedal Fitment</strong></h3>
<p>Optimized for Crankbrothers pedals, and compatible with other 2-bolt SPD-style clip-in systems.</p>
<p>Use the following guide to find the perfect Match Shim for your shoe + pedal interface:</p>
<ul>
<li>Black 1.0mm (Installed) / Stainless 0.8mm: Mallet Trail, Candy, Double Shot pedals</li>
<li>Grey 1.5mm (Included in box): Mallet E, Mallet DH pedals</li>
</ul>
<h3><strong>Find your size</strong></h3>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<h3><strong>Specs</strong></h3>
<p><strong>WEIGHT</strong> - 410g per shoe (US 9 / EU 42)</p>
<h3><strong>PREMIUM MATERIALS &amp; CONSTRUCTION</strong></h3>
<p>A BOA® Fit System Li2 dual-direction micro-adjustment dial for a precise fit, coupled with a quick-adjust hook-and loop strap for heel retention and stability. In addition, a rip-stop upper material provides durability without a weight penalty, and a TPU-reinforced toebox provides enhanced protection.</p>
<h3><strong>ELASTIC COLLAR</strong></h3>
<p>A lightweight &amp; breathable elastic collar prevents trail debris from entering the shoe.</p>
<h3><strong>MATCH BOX</strong></h3>
<p>Ramped cleat box offers easy pedal entry and mud shedding. The extended 35mm cleat track allows rearward positioning for added control and stability when descending. And, the cleat box depth is carefully chosen to allow for optimal shoe-to-pedal contact, right out of the box.</p>
<h3><strong>MATCH COMPOUND</strong></h3>
<p>Mid-friction MC1 rubber compound for easy pedal entry and exit, plus long life.</p>
<h3><strong>MATCH OUTSOLE</strong></h3>
<p>The new Trail tread pattern is designed for balanced traction on and off the bike, great walkability, and an optimized pedal interface. A stiff fiber-reinforced nylon shank transfers power efficiently, and a low-rebound EVA midsole damps vibration.</p>', array['crankbrothers-mallet-trail-boa-black-gold/1.jpg', 'crankbrothers-mallet-trail-boa-black-gold/2.jpg', 'crankbrothers-mallet-trail-boa-black-gold/3.jpg', 'crankbrothers-mallet-trail-boa-black-gold/4.jpg', 'crankbrothers-mallet-trail-boa-black-gold/5.jpg']::text[], 'new', 4, '2026-01-27'::date, false, false),
  ('crankbrothers-mallet-trail-boa-navy-grey', 'Crankbrothers Mallet Trail Boa Navy/Grey', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Mallet Trail BOA® clip-in shoe is the perfect blend of performance and adventure. Built for the trail or your next enduro race, the Mallet Trail BOA® will provide you all-day comfort paired with ultimate racing performance.</p>
<p><br></p>
<p>A lightweight yet durable rip-stop upper features a TPU-reinforced toebox for enhanced protection and a flexible collar around the ankle to prevent debris from entering the shoe. In addition, a fiber-reinforced shank and an aggressive outsole lug pattern bring pedaling efficiency and all-terrain versatility to every ride.</p>
<p><br></p>
<p>Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position, so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<p><br></p>
<p><br></p>
<p><br></p>
<p>The BOA® Fit System delivers micro-adjustable precision fit, engineered to perform in the toughest conditions.</p>
<p><br></p>
<p>Optimized for Crankbrothers pedals, and compatible with other 2-bolt SPD-style clip-in systems.</p>
<p>Use the following guide to find the perfect Match Shim for your shoe + pedal interface:</p>
<p>Black 1.0mm (Installed) / Stainless 0.8mm: Mallet Trail, Candy, Double Shot pedals</p>
<p>Grey 1.5mm (Included in box): Mallet E, Mallet DH pedals</p>
<p><br></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens.</p>
<p><br></p>
<p>WEIGHT 410g per shoe (US 9 / EU 42)</p>
<p><br></p>
<p><br></p>
<p><br></p>
<p><b>PREMIUM MATERIALS &amp; CONSTRUCTION</b></p>
<p>A BOA® Fit System Li2 dual-direction micro-adjustment dial for a precise fit, coupled with a quick-adjust hook-and loop strap for heel retention and stability. In addition, a rip-stop upper material provides durability without a weight penalty, and a TPU-reinforced toebox provides enhanced protection.</p>
<p><br></p>
<p><b>ELASTIC COLLAR</b></p>
<p>A lightweight &amp; breathable elastic collar prevents trail debris from entering the shoe.</p>
<p><br></p>
<p><b>MATCH BOX</b></p>
<p>Ramped cleat box offers easy pedal entry and mud shedding. The extended 35mm cleat track allows rearward positioning for added control and stability when descending. And, the cleat box depth is carefully chosen to allow for optimal shoe-to-pedal contact, right out of the box.</p>
<p><br></p>
<p><b>MATCH COMPOUND</b></p>
<p>Mid-friction MC1 rubber compound for easy pedal entry and exit, plus long life.</p>
<p><br></p>
<p><b>MATCH OUTSOLE</b></p>
<p>The new Trail tread pattern is designed for balanced traction on and off the bike, great walkability, and an optimized pedal interface. A stiff fiber-reinforced nylon shank transfers power efficiently, and a low-rebound EVA midsole damps vibration.<br><br></p>', array['crankbrothers-mallet-trail-boa-navy-grey/1.webp', 'crankbrothers-mallet-trail-boa-navy-grey/2.webp', 'crankbrothers-mallet-trail-boa-navy-grey/3.webp']::text[], 'new', 11, '2026-01-27'::date, false, false),
  ('crankbrothers-mallet-trail-lace-black-black', 'Crankbrothers Mallet Trail Lace Black / Black', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Mallet Trail Lace clip-in shoe is the perfect blend of performance and adventure. Engineered for thrill-seekers, the trail shoes were designed with rugged durability and adventure in mind to keep you confident on and off the trail and comfortable in the saddle for longer rides.</p>
<p>A synthetic upper features a classic lace-up closure system complete with lace pocket, perforations to provide airflow and breathability, and a TPU-reinforced toebox for enhanced protection. In addition, a fiber-reinforced shank and an aggressive outsole lug pattern bring pedaling efficiency and all-terrain versatility to every ride.</p>
<p>Our innovative Match System optimizes engagement for any MTB clip-in system, whether that’s Crankbrothers or SPD. It comes with Match shim and Crankbrothers cleat pre-installed in a neutral position, so they are ready to ride with Crankbrothers pedals right out of the box.</p>
<ul>
<li>Ideal for Enduro and Trail</li>
<li>
<strong>MATCH SYSTEM - </strong>Match Box, Match Compound, and Match Outsole are optimized for any MTB pedals, including SPD</li>
<li>
<strong>LACE CLOSURE -</strong> Classic lace closure system, with integrated pocket for lace retention</li>
<li>
<strong>WEIGHT - </strong>385g per shoe (US 9 / EU 42)
</li>
</ul>
<h3><strong>PREMIUM MATERIALS &amp; CONSTRUCTION</strong></h3>
<p>Our premium synthetic upper is constructed from durable, water-resistant materials, and is also perforated for enhanced breathability and ventilation. In addition, a traditional lace closure system complete with lace pocket keeps your foot comfortably secure.</p>
<h3><strong>MATCH BOX</strong></h3>
<p>Ramped cleat box offers easy pedal entry and mud shedding. The extended 35mm cleat track allows rearward positioning for added control and stability when descending. And, the cleat box depth is carefully chosen to allow for optimal shoe-to-pedal contact, right out of the box.</p>
<h3><strong>MATCH COMPOUND</strong></h3>
<p>Mid-friction MC1 rubber compound for easy pedal entry and exit, plus long life.</p>
<h3><strong>MATCH OUTSOLE</strong></h3>
<p>The new Trail tread pattern is designed for balanced traction on and off the bike, great walkability, and an optimized pedal interface. A stiff fiber-reinforced nylon shank transfers power efficiently, and a low-rebound EVA midsole damps vibration.</p>
<h3><strong>TOE PROTECTION</strong></h3>
<p>A TPU-reinforced toe box combined with an outsole that wraps the front of the shoe provide critical protection against impacts.</p>', array['crankbrothers-mallet-trail-lace-black-black/1.jpg', 'crankbrothers-mallet-trail-lace-black-black/2.jpg', 'crankbrothers-mallet-trail-lace-black-black/3.jpg', 'crankbrothers-mallet-trail-lace-black-black/4.jpg', 'crankbrothers-mallet-trail-lace-black-black/5.jpg']::text[], 'new', 3, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-boa-25th-anniversary-ltd-edit', 'Crankbrothers Stamp Boa 25th Anniversary Ltd. Edit', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>
<ul>
<li>Ideal for Downhill &amp; Enduro</li>
<li>Match Compound - MC2 high-friction compound for grip and durability</li>
<li>Off Pedal Area - Toe and heel lugs provide traction for hiking</li>
<li>On Pedal Area - Stamp tread pattern optimized for pedal contact</li>
</ul>
<p><strong>Closure System</strong></p>
<p>The BOA® Fit System utilizes a micro-adjustment dial, a strong lightweight lace and low-friction lace guides to deliver fast, effortless, precision fit.</p>

<p><strong>Find Your Size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<p><strong>Specs</strong></p>
<p>Weight: 384g per shoe (US 9 / EU 42)</p>
<p><strong>Match Compound</strong></p>
<p>Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>Match System</strong></p>
<p>The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Heel dots</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
</ul>
</li>
</ul>', array['crankbrothers-stamp-boa-25th-anniversary-ltd-edit/1.jpg', 'crankbrothers-stamp-boa-25th-anniversary-ltd-edit/2.png', 'crankbrothers-stamp-boa-25th-anniversary-ltd-edit/3.jpg', 'crankbrothers-stamp-boa-25th-anniversary-ltd-edit/4.jpg', 'crankbrothers-stamp-boa-25th-anniversary-ltd-edit/5.jpg']::text[], 'new', 0, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-boa-black-gold-1', 'Crankbrothers Stamp Boa Black/Gold', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>
<ul>
<li>Ideal for Downhill &amp; Enduro</li>
<li>Match Compound - MC2 high-friction compound for grip and durability</li>
<li>Off Pedal Area - Toe and heel lugs provide traction for hiking</li>
<li>On Pedal Area - Stamp tread pattern optimized for pedal contact</li>
</ul>
<p><strong>Closure System</strong></p>
<p>The BOA® Fit System utilizes a micro-adjustment dial, a strong lightweight lace and low-friction lace guides to deliver fast, effortless, precision fit.</p>

<p><strong>Find Your Size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<p><strong>Specs</strong></p>
<p>Weight: 384g per shoe (US 9 / EU 42)</p>
<p><strong>Match Compound</strong></p>
<p>Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>Match System</strong></p>
<p>The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Heel dots</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
</ul>
</li>
</ul>', array['crankbrothers-stamp-boa-black-gold-1/1.png', 'crankbrothers-stamp-boa-black-gold-1/2.png', 'crankbrothers-stamp-boa-black-gold-1/3.png', 'crankbrothers-stamp-boa-black-gold-1/4.png', 'crankbrothers-stamp-boa-black-gold-1/5.png']::text[], 'new', 12, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-boa-black-gold', 'Crankbrothers Stamp Boa Black/Gold', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<strong>Stamp BOA®</strong>

<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>

<strong>Closure System</strong>

<p>The BOA® Fit System utilizes an L6 micro-adjustment dial, a strong lightweight lace and low-friction lace guides to deliver fast, effortless, precision fit.</p>

<strong>Find Your Size</strong>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></p>

<strong>Specs</strong>

<p>Weight: 384g per shoe (US 9 / EU 42)</p>

<h3>Match Compound</h3>
Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.

<h3>Match Outsole</h3>
The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.

<h3>Match System</h3>
The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.', array['crankbrothers-stamp-boa-black-gold/1.png', 'crankbrothers-stamp-boa-black-gold/2.png', 'crankbrothers-stamp-boa-black-gold/3.png', 'crankbrothers-stamp-boa-black-gold/4.png', 'crankbrothers-stamp-boa-black-gold/5.png']::text[], 'new', 15, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-lace-black-red-1', 'Crankbrothers Stamp Lace Black/Red', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>
<ul>
<li>Ideal for Downhill, Enduro &amp; Trail</li>
<li>Match Compound - MC2 high-friction compound for grip and durability</li>
<li>Off Pedal Area - Toe and heel lugs provide traction for hiking</li>
<li>On Pedal Area - Stamp tread pattern optimized for pedal contact</li>
</ul>
<p><strong>Closure System</strong></p>
<p>Classic lace closure system offers smooth closure with round laces and a pocket to safely tuck laces. Fabio Wibmer Signature Edition comes with flat white laces, and an extra pair of flat black laces.</p>
<p><strong>Find Your Size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<p><strong>Specs</strong></p>
<p>Weight: 375g per shoe (US 9 / EU 42)</p>
<p><strong>Match Compound</strong></p>
<p>Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>Match System</strong></p>
<p>The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Lace pocket</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
<li>Heel dots</li>
</ul>
</li>
</ul>', array['crankbrothers-stamp-lace-black-red-1/1.png', 'crankbrothers-stamp-lace-black-red-1/2.png', 'crankbrothers-stamp-lace-black-red-1/3.png', 'crankbrothers-stamp-lace-black-red-1/4.png', 'crankbrothers-stamp-lace-black-red-1/5.png']::text[], 'new', 0, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-lace-black-silver', 'Crankbrothers Stamp Lace Black/Silver', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>
<ul>
<li>Ideal for Downhill, Enduro &amp; Trail</li>
<li>Match Compound - MC2 high-friction compound for grip and durability</li>
<li>Off Pedal Area - Toe and heel lugs provide traction for hiking</li>
<li>On Pedal Area - Stamp tread pattern optimized for pedal contact</li>
</ul>
<p><strong>Closure System</strong></p>
<p>Classic lace closure system offers smooth closure with round laces and a pocket to safely tuck laces. Fabio Wibmer Signature Edition comes with flat white laces, and an extra pair of flat black laces.</p>
<p><strong>Find Your Size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<p><strong>Specs</strong></p>
<p>Weight: 375g per shoe (US 9 / EU 42)</p>
<p><strong>Match Compound</strong></p>
<p>Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>Match System</strong></p>
<p>The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Lace pocket</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
<li>Heel dots</li>
</ul>
</li>
</ul>', array['crankbrothers-stamp-lace-black-silver/1.png', 'crankbrothers-stamp-lace-black-silver/2.png', 'crankbrothers-stamp-lace-black-silver/3.png', 'crankbrothers-stamp-lace-black-silver/4.png', 'crankbrothers-stamp-lace-black-silver/5.png']::text[], 'new', 2, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-lace-navy-silver-1', 'Crankbrothers Stamp Lace Navy/Silver', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>
<ul>
<li>Ideal for Downhill, Enduro &amp; Trail</li>
<li>Match Compound - MC2 high-friction compound for grip and durability</li>
<li>Off Pedal Area - Toe and heel lugs provide traction for hiking</li>
<li>On Pedal Area - Stamp tread pattern optimized for pedal contact</li>
</ul>
<p><strong>Closure System</strong></p>
<p>Classic lace closure system offers smooth closure with round laces and a pocket to safely tuck laces. Fabio Wibmer Signature Edition comes with flat white laces, and an extra pair of flat black laces.</p>
<p><strong>Find Your Size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<p><strong>Specs</strong></p>
<p>Weight: 375g per shoe (US 9 / EU 42)</p>
<p><strong>Match Compound</strong></p>
<p>Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>Match System</strong></p>
<p>The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Lace pocket</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
<li>Heel dots</li>
</ul>
</li>
</ul>', array['crankbrothers-stamp-lace-navy-silver-1/1.png', 'crankbrothers-stamp-lace-navy-silver-1/2.png', 'crankbrothers-stamp-lace-navy-silver-1/3.png', 'crankbrothers-stamp-lace-navy-silver-1/4.png']::text[], 'new', 8, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-lace-pump-for-peace-red-black', 'Crankbrothers Stamp Lace Pump For Peace Red/Black', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>
<p>Now available as part of our collaboration with Pump For Peace, 20% of the proceeds from this shoe will be donated to support their mission to build pump tracks in underprivileged communities all over the world, helping to share our love of cycling with others.</p>
<ul>
<li>Ideal for Downhill, Enduro &amp; Trail</li>
<li>Match Compound - MC2 high-friction compound for grip and durability</li>
<li>Off Pedal Area - Toe and heel lugs provide traction for hiking</li>
<li>On Pedal Area - Stamp tread pattern optimized for pedal contact</li>
</ul>
<p><strong>Closure System</strong></p>
<p>Classic lace closure system offers smooth closure with round laces and a pocket to safely tuck laces.</p>
<p><strong>Find Your Size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>

<p><strong>Specs</strong></p>

<p>Weight: 375g per shoe (US 9 / EU 42)</p>
<p><strong>Match Compound</strong></p>
<p>Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>Match System</strong></p>
<p>The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Lace pocket</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
<li>Heel dots</li>
</ul>
</li>
</ul>', array['crankbrothers-stamp-lace-pump-for-peace-red-black/1.jpg', 'crankbrothers-stamp-lace-pump-for-peace-red-black/2.jpg', 'crankbrothers-stamp-lace-pump-for-peace-red-black/3.jpg', 'crankbrothers-stamp-lace-pump-for-peace-red-black/4.jpg', 'crankbrothers-stamp-lace-pump-for-peace-red-black/5.jpg']::text[], 'new', 1, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-speedlace-black-white', 'Crankbrothers Stamp Speedlace Black/White', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p><ul>
<li>Ideal for Downhill, Enduro &amp; Trail</li>
<li>Match Compound - MC2 high-friction compound for grip and durability</li>
<li>Off Pedal Area - Toe and heel lugs provide traction for hiking</li>
<li>On Pedal Area - Stamp tread pattern optimized for pedal contact</li>
</ul><p><strong>Closure System</strong></p><p>Speed lace closure system offers fast adjustment, a strap for secure closure and a pocket to safely tuck laces.</p><p><strong>Find Your Size</strong></p><p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p><p><strong>Specs</strong></p><p>Weight: 385g per shoe (US 9 / EU 42)</p><p><strong>Match Compound</strong></p><p>Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.</p><p><strong>Match Outsole</strong></p><p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p><p><strong>Match System</strong></p><p>The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p><p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p><ul><li>
<strong>Upper features</strong><ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Lace pocket</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
<li>Heel dots</li>
</ul>
</li></ul>', array['crankbrothers-stamp-speedlace-black-white/1.png', 'crankbrothers-stamp-speedlace-black-white/2.png', 'crankbrothers-stamp-speedlace-black-white/3.png', 'crankbrothers-stamp-speedlace-black-white/4.png', 'crankbrothers-stamp-speedlace-black-white/5.png']::text[], 'new', 1, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-speedlace-green-orange', 'Crankbrothers Stamp Speedlace Green/Orange', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p><strong>Stamp Speed Lace</strong></p>
<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>

<p><strong>Closure System</strong></p>
<p>Speed lace closure system offers fast adjustment, a strap for secure closure and a pocket to safely tuck laces.</p>

<strong>Find Your Size</strong>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></p>

<strong>Specs</strong>

<p>Weight: 385g per shoe (US 9 / EU 42)</p>

<p><strong>Match Compound</strong> - Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to dampen vibrations. The lugs are rounded to resist abrasion.</p>

<p><strong>Match Outsole</strong> - The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>

<p><strong>Match System</strong> - The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p>Weight: 766g per pair (US 9 / EU 42)</p>', array['crankbrothers-stamp-speedlace-green-orange/1.png', 'crankbrothers-stamp-speedlace-green-orange/2.png', 'crankbrothers-stamp-speedlace-green-orange/3.png', 'crankbrothers-stamp-speedlace-green-orange/4.png', 'crankbrothers-stamp-speedlace-green-orange/5.jpg']::text[], 'new', 0, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-speedlace-grey-red', 'Crankbrothers Stamp Speedlace Grey/Red', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p><strong>Stamp Speed Lace</strong></p>
<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>

<p><strong>Closure System</strong></p>
<p>Speed lace closure system offers fast adjustment, a strap for secure closure and a pocket to safely tuck laces.</p>

<strong>Find Your Size</strong>

<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></p>

<strong>Specs</strong>

<p>Weight: 385g per shoe (US 9 / EU 42)</p>

<p><strong>Match Compound</strong> - Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to dampen vibrations. The lugs are rounded to resist abrasion.</p>

<p><strong>Match Outsole</strong> - The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>

<p><strong>Match System</strong> - The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p>Weight: 766g per pair (US 9 / EU 42)</p>', array['crankbrothers-stamp-speedlace-grey-red/1.png', 'crankbrothers-stamp-speedlace-grey-red/2.png', 'crankbrothers-stamp-speedlace-grey-red/3.png', 'crankbrothers-stamp-speedlace-grey-red/4.png', 'crankbrothers-stamp-speedlace-grey-red/5.png']::text[], 'new', 0, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-speedlace-purple-teal-blue-1', 'Crankbrothers Stamp Speedlace Purple / Teal Blue', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Stamp flat shoe does it all, whether on street or trail. The outsole is optimized for Crankbrothers Stamp pedal body, though it is designed to work flawlessly with any flat pedal. Its high-friction rubber compound provides optimal grip and its lug depth absorbs the pins to ensure a secure pedal connection.</p>
<ul>
<li>Ideal for Downhill, Enduro &amp; Trail</li>
<li>Match Compound - MC2 high-friction compound for grip and durability</li>
<li>Off Pedal Area - Toe and heel lugs provide traction for hiking</li>
<li>On Pedal Area - Stamp tread pattern optimized for pedal contact</li>
</ul>
<p><strong>Closure System</strong></p>
<p>Speed lace closure system offers fast adjustment, a strap for secure closure and a pocket to safely tuck laces.</p>
<p><strong>Find Your Size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/me5a6f6vg20w5p1/CB_FootMeasuring_Chart.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong>.</p>
<p><strong>Specs</strong></p>
<p>Weight: 385g per shoe (US 9 / EU 42)</p>
<p><strong>Match Compound</strong></p>
<p>Our flat rubber compound (MC2) is optimized for grip and durability. It has high-friction to stick to the pedal body and low rebound properties to damp vibrations. The lugs are rounded to resist abrasion.</p>
<p><strong>Match Outsole</strong></p>
<p>The tread pattern is designed for traction off the bike. Directionally angled and spaced toe and heel lugs offer traction for hiking up or down steep terrain. The ramped toe provides walkability on steep terrain.</p>
<p><strong>Match System</strong></p>
<p>The tread pattern is designed for maximum contact surface and compatibility with the pedal platform. In addition, the lug depth is designed around pin dimensions to absorb the pin body.</p>
<p><strong>BREATHABILITY / PROTECTION / COMFORT</strong></p>
<ul>
<li>
<strong>Upper features</strong>
<ul>
<li>Closure system</li>
<li>Hidden eyelets</li>
<li>Lace pocket</li>
<li>Perforated toe</li>
<li>Mesh windows</li>
<li>Perforated tongue</li>
<li>Reinforced toe</li>
<li>Padded tongue</li>
<li>Heel dots</li>
</ul>
</li>
</ul>', array['crankbrothers-stamp-speedlace-purple-teal-blue-1/1.jpg', 'crankbrothers-stamp-speedlace-purple-teal-blue-1/2.jpg', 'crankbrothers-stamp-speedlace-purple-teal-blue-1/3.jpg', 'crankbrothers-stamp-speedlace-purple-teal-blue-1/4.jpg', 'crankbrothers-stamp-speedlace-purple-teal-blue-1/5.jpg']::text[], 'new', 0, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-street-black-gold-1', 'Crankbrothers Stamp Street Black / Gold', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>Designed with freeride and trials athlete Fabio Wibmer, our Stamp Street Fabio shoes were created with life on and off the bike in mind. Featuring Match technology for a secure flat pedal connection, a bootie construction for day-long comfort, and a flexible mid-sole design to allow your foot to wrap the pedal for that all-important next bunny hop, the Stamp Street Fabio allows you to enjoy the Street Life, just like Fabio.</p>
<ul>
<li>Ideal for City &amp; Street</li>
<li>MATCH SYSTEM - MATCH compound and tread pattern to optimize the shoe/pedal interface</li>
<li>LACE CLOSURE - Classic lace closure system, with elastic lace lock for lace retention</li>
</ul>

<p><strong>Outsole Features</strong></p>
<ul>
<li>MC2 high-friction compound for grip and durability</li>
<li>Tighter lug spacing for easy foot adjustments</li>
<li>Cushioned EVA midsole for shock absorption</li>
<li>Grooved EVA pattern for added flexibility in key areas</li>
</ul>
<p><strong>Upper Features</strong></p>
<ul>
<li>Bootie construction for secure and comfortable fit</li>
<li>Reinforced inner panel for protection from crank arms</li>
<li>Perforations &amp; mesh underlay throughout upper for better ventilation</li>
<li>Tongue and heel pull tabs for easy entry</li>
</ul>
<p><strong>Specs</strong></p>
<p>Weight: 299g per shoe (US 9 / EU 42)</p>
<p><strong>Find your size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/25zowg8r2y8gz7j/CB_FootMeasuring_Chart%20R1.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong><a href="https://www.dropbox.com/s/25zowg8r2y8gz7j/CB_FootMeasuring_Chart%20R1.pdf?dl=0" rel="noopener nofollow" target="_blank">.</a></p>
<p><strong>MATCH TECHNOLOGY</strong></p>
<p>Our flat pedal rubber compound (MC2) is optimized for grip and durability, paired with a softer midsole design for flexibility and tighter lug spacing for easy foot adjustments to suit the needs of every street rider.</p>
<p><strong>INNER PANEL PROTECTION</strong></p>
<p>A reinforced TPU inner panel creates added protection from your crank arms while keeping a comfortable fit for all-day wear.</p>
<p><strong>BOOTIE CONSTRUCTION </strong></p>
<p>The Stamp Street Fabio’s bootie construction provides a secure and comfortable fit on and off the bike and includes tongue and heel pull tabs for easy entry every time you head out the door.</p>', array['crankbrothers-stamp-street-black-gold-1/1.png', 'crankbrothers-stamp-street-black-gold-1/2.png', 'crankbrothers-stamp-street-black-gold-1/3.png', 'crankbrothers-stamp-street-black-gold-1/4.png', 'crankbrothers-stamp-street-black-gold-1/5.png']::text[], 'new', 0, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-street-camo-black-ltd-ed', 'Crankbrothers Stamp Street Camo / Black Ltd. Ed', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>Designed with freeride and trials athlete Fabio Wibmer, our Stamp Street Fabio shoes were created with life on and off the bike in mind. Featuring Match technology for a secure flat pedal connection, a bootie construction for day-long comfort, and a flexible mid-sole design to allow your foot to wrap the pedal for that all-important next bunny hop, the Stamp Street Fabio allows you to enjoy the Street Life, just like Fabio.</p>
<ul>
<li>Ideal for City &amp; Street</li>
<li>MATCH SYSTEM - MATCH compound and tread pattern to optimize the shoe/pedal interface</li>
<li>LACE CLOSURE - Classic lace closure system, with elastic lace lock for lace retention</li>
</ul>

<p><strong>Outsole Features</strong></p>
<ul>
<li>MC2 high-friction compound for grip and durability</li>
<li>Tighter lug spacing for easy foot adjustments</li>
<li>Cushioned EVA midsole for shock absorption</li>
<li>Grooved EVA pattern for added flexibility in key areas</li>
</ul>
<p><strong>Upper Features</strong></p>
<ul>
<li>Bootie construction for secure and comfortable fit</li>
<li>Reinforced inner panel for protection from crank arms</li>
<li>Perforations &amp; mesh underlay throughout upper for better ventilation</li>
<li>Tongue and heel pull tabs for easy entry</li>
</ul>
<p><strong>Specs</strong></p>
<p>Weight: 299g per shoe (US 9 / EU 42)</p>
<p><strong>Find your size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/25zowg8r2y8gz7j/CB_FootMeasuring_Chart%20R1.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong><a href="https://www.dropbox.com/s/25zowg8r2y8gz7j/CB_FootMeasuring_Chart%20R1.pdf?dl=0" rel="noopener nofollow" target="_blank">.</a></p>
<p><strong>MATCH TECHNOLOGY</strong></p>
<p>Our flat pedal rubber compound (MC2) is optimized for grip and durability, paired with a softer midsole design for flexibility and tighter lug spacing for easy foot adjustments to suit the needs of every street rider.</p>
<p><strong>INNER PANEL PROTECTION</strong></p>
<p>A reinforced TPU inner panel creates added protection from your crank arms while keeping a comfortable fit for all-day wear.</p>
<p><strong>BOOTIE CONSTRUCTION </strong></p>
<p>The Stamp Street Fabio’s bootie construction provides a secure and comfortable fit on and off the bike and includes tongue and heel pull tabs for easy entry every time you head out the door.</p>', array['crankbrothers-stamp-street-camo-black-ltd-ed/1.webp']::text[], 'new', 5, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-street-white-gold', 'Crankbrothers Stamp Street White / Gold', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>Designed with freeride and trials athlete Fabio Wibmer, our Stamp Street Fabio shoes were created with life on and off the bike in mind. Featuring Match technology for a secure flat pedal connection, a bootie construction for day-long comfort, and a flexible mid-sole design to allow your foot to wrap the pedal for that all-important next bunny hop, the Stamp Street Fabio allows you to enjoy the Street Life, just like Fabio.</p>
<ul>
<li>Ideal for City &amp; Street</li>
<li>MATCH SYSTEM - MATCH compound and tread pattern to optimize the shoe/pedal interface</li>
<li>LACE CLOSURE - Classic lace closure system, with elastic lace lock for lace retention</li>
</ul>

<p><strong>Outsole Features</strong></p>
<ul>
<li>MC2 high-friction compound for grip and durability</li>
<li>Tighter lug spacing for easy foot adjustments</li>
<li>Cushioned EVA midsole for shock absorption</li>
<li>Grooved EVA pattern for added flexibility in key areas</li>
</ul>
<p><strong>Upper Features</strong></p>
<ul>
<li>Bootie construction for secure and comfortable fit</li>
<li>Reinforced inner panel for protection from crank arms</li>
<li>Perforations &amp; mesh underlay throughout upper for better ventilation</li>
<li>Tongue and heel pull tabs for easy entry</li>
</ul>
<p><strong>Specs</strong></p>
<p>Weight: 299g per shoe (US 9 / EU 42)</p>
<p><strong>Find your size</strong></p>
<p>Unisex Fit - Fits true to size. For wider feet, we recommend going up a half size. Size selector above is US Mens. Learn how to correctly measure your shoe size <strong><a href="https://www.dropbox.com/s/25zowg8r2y8gz7j/CB_FootMeasuring_Chart%20R1.pdf?dl=0" rel="noopener nofollow" target="_blank">here</a></strong><a href="https://www.dropbox.com/s/25zowg8r2y8gz7j/CB_FootMeasuring_Chart%20R1.pdf?dl=0" rel="noopener nofollow" target="_blank">.</a></p>
<p><strong>MATCH TECHNOLOGY</strong></p>
<p>Our flat pedal rubber compound (MC2) is optimized for grip and durability, paired with a softer midsole design for flexibility and tighter lug spacing for easy foot adjustments to suit the needs of every street rider.</p>
<p><strong>INNER PANEL PROTECTION</strong></p>
<p>A reinforced TPU inner panel creates added protection from your crank arms while keeping a comfortable fit for all-day wear.</p>
<p><strong>BOOTIE CONSTRUCTION </strong></p>
<p>The Stamp Street Fabio’s bootie construction provides a secure and comfortable fit on and off the bike and includes tongue and heel pull tabs for easy entry every time you head out the door.</p>', array['crankbrothers-stamp-street-white-gold/1.webp']::text[], 'new', 0, '2026-08-10'::date, false, false),
  ('crankbrothers-stamp-trail-lace-black-black', 'Crankbrothers Stamp Trail Lace Black/Black', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Stamp Trail Lace shoe is the perfect blend of performance and adventure. Engineered for thrill-seekers, the trail shoes were designed with rugged durability and adventure in mind keeping you comfortable in the saddle for longer rides.</p>
<p>A synthetic upper features a classic lace-up closure system complete with lace pocket, perforations to provide airflow and breathability, and a TPU-reinforced toebox for enhanced protection</p>
<p>In addition, a moderately flexible mid-sole, a new, versatile Match tread pattern, and our high-friction MC2 rubber compound combine to provide optimal grip on and off the bike.</p>
<ul>
<li>Ideal for Enduro and Trail</li>
<li>
<strong>MATCH SYSTEM -</strong> MC2 rubber compound and MATCH outsole design optimize the interface with the pedal</li>
<li>
<strong>LACE CLOSURE -</strong> Classic lace closure system, with integrated pocket for lace retention</li>
<li>
<strong>WEIGHT - </strong>295g per shoe (US 9 / EU 42)
</li>
</ul>
<h3><strong>PREMIUM MATERIALS &amp; CONSTRUCTION</strong></h3>
<p>Our premium synthetic upper is constructed from durable, water-resistant materials, and is also perforated for enhanced breathability and ventilation. In addition, a traditional lace closure system complete with lace pocket keeps your foot comfortably secure.</p>
<h3><strong>MATCH OUTSOLE</strong></h3>
<p>The Trail tread pattern is designed for traction on and off the bike, great walkability, and an optimized pedal interface. The outsole stiffness zones provide direct control and reduce fatigue while featuring a flexible toe area for great pedal feel and off-bike comfort.</p>
<h3><strong>MATCH COMPOUND </strong></h3>
<p>Our MC2 flat rubber compound is optimized for grip and durability. Its high-friction &amp; low-rebound properties allow the shoe to stick to the pedal body and damp vibrations.</p>
<h3><strong>TOE PROTECTION</strong></h3>
<p>A TPU-reinforced toe box combined with an outsole that wraps the front of the shoe provides critical protection against impacts.</p>', array['crankbrothers-stamp-trail-lace-black-black/1.jpg', 'crankbrothers-stamp-trail-lace-black-black/2.jpg', 'crankbrothers-stamp-trail-lace-black-black/3.jpg', 'crankbrothers-stamp-trail-lace-black-black/4.jpg', 'crankbrothers-stamp-trail-lace-black-black/5.jpg']::text[], 'new', 1, '2026-01-27'::date, false, false),
  ('crankbrothers-stamp-trail-lace-blue-dark-blue', 'Crankbrothers Stamp Trail Lace Blue/Dark Blue', 'crankbrothers', 'shoes', 'mtb-cycling-shoes', '<p>The Crankbrothers Stamp Trail Lace shoe is the perfect blend of performance and adventure. Engineered for thrill-seekers, the trail shoes were designed with rugged durability and adventure in mind keeping you comfortable in the saddle for longer rides.</p>
<p>A synthetic upper features a classic lace-up closure system complete with lace pocket, perforations to provide airflow and breathability, and a TPU-reinforced toebox for enhanced protection</p>
<p>In addition, a moderately flexible mid-sole, a new, versatile Match tread pattern, and our high-friction MC2 rubber compound combine to provide optimal grip on and off the bike.</p>
<ul>
<li>Ideal for Enduro and Trail</li>
<li>
<strong>MATCH SYSTEM -</strong> MC2 rubber compound and MATCH outsole design optimize the interface with the pedal</li>
<li>
<strong>LACE CLOSURE -</strong> Classic lace closure system, with integrated pocket for lace retention</li>
<li>
<strong>WEIGHT - </strong>295g per shoe (US 9 / EU 42)
</li>
</ul>
<h3><strong>PREMIUM MATERIALS &amp; CONSTRUCTION</strong></h3>
<p>Our premium synthetic upper is constructed from durable, water-resistant materials, and is also perforated for enhanced breathability and ventilation. In addition, a traditional lace closure system complete with lace pocket keeps your foot comfortably secure.</p>
<h3><strong>MATCH OUTSOLE</strong></h3>
<p>The Trail tread pattern is designed for traction on and off the bike, great walkability, and an optimized pedal interface. The outsole stiffness zones provide direct control and reduce fatigue while featuring a flexible toe area for great pedal feel and off-bike comfort.</p>
<h3><strong>MATCH COMPOUND </strong></h3>
<p>Our MC2 flat rubber compound is optimized for grip and durability. Its high-friction &amp; low-rebound properties allow the shoe to stick to the pedal body and damp vibrations.</p>
<h3><strong>TOE PROTECTION</strong></h3>
<p>A TPU-reinforced toe box combined with an outsole that wraps the front of the shoe provides critical protection against impacts.</p>', array['crankbrothers-stamp-trail-lace-blue-dark-blue/1.jpg', 'crankbrothers-stamp-trail-lace-blue-dark-blue/2.jpg', 'crankbrothers-stamp-trail-lace-blue-dark-blue/3.jpg', 'crankbrothers-stamp-trail-lace-blue-dark-blue/4.jpg', 'crankbrothers-stamp-trail-lace-blue-dark-blue/5.jpg']::text[], 'new', 8, '2026-01-27'::date, false, false),
  ('recon-1-0-gravel-mountain-bike-shoe-1', 'Recon 1.0 Gravel & Mountain Bike Shoe', 'specialized', 'shoes', 'mtb-cycling-shoes', '<p>The Recon 1.0 was made for riders who set out on two wheels to seek the great outdoors and saddle up their bike for the adventure ahead, with the scientifically proven performance benefits of Body Geometry.The Recon 1.0’s purpose is to add confidence and functionality for riders who push their limits uphill for an unforgettable view, maybe are even clipping in for the first time, or are hopping on their trainer for an after-work hammer session on the spin bike. Comfort and versatility are key, and that’s what the Recon 1.0 was made for. Body Geometry: Like every Body Geometry shoe, the Recon 1.0 is ergonomically designed and scientifically proven to improve comfort, increase performance, and reduce the chance of injury for every rider with patented technology, while improving power by 7 watts - validated by science. Stride Technology: Stride technology provides a flexible outsole and upper around the toe box combined with a stiff cleat pocket, enabling the shoe to easily flex when walking and remain stiff and efficient when pedaling. Efficiency: The Recon 1.0 utilizes an L6 Boa Dial with soft-lace cables made from a Dyneema yarn, eliminating unwanted stretch while removing hard molded guides to give riders a more supple upper that comfortably conforms to the foot. Additionally, the outsole is optimized to put your power on the pedal through balanced stiffness.</p>', array['recon-1-0-gravel-mountain-bike-shoe-1/1.jpg', 'recon-1-0-gravel-mountain-bike-shoe-1/2.jpg', 'recon-1-0-gravel-mountain-bike-shoe-1/3.jpg', 'recon-1-0-gravel-mountain-bike-shoe-1/4.jpg', 'recon-1-0-gravel-mountain-bike-shoe-1/5.jpg']::text[], 'new', 9, '2024-05-22'::date, false, false),
  ('recon-2-0-gravel-mountain-bike-shoe', 'Recon 2.0 Gravel & Mountain Bike Shoe', 'specialized', 'shoes', 'mtb-cycling-shoes', '<p>The Recon 2.0 was made for riders who seek out dirt roads and challenging trails in search of a shoe that delivers comfort and efficiency in a durable package, with the scientifically proven performance benefits of Body Geometry. Whether you’re saddling up a Diverge or Creo to ride with your gravel group or hopping on your epic to embark on an all-day trail session, the Recon 2.0 is your partner in crime for days spent in the dirt. Body Geometry: Like every Body Geometry shoe, the Recon 2.0 is ergonomically designed and scientifically proven to improve comfort, increase performance, and reduce the chance of injury for every rider with patented technology, while improving power by 7 watts - validated by science. Stride Technology: Stride technology provides a flexible outsole and upper around the toe box combined with a stiff cleat pocket, enabling the shoe to easily flex when walking and remain stiff and efficient when pedaling. Efficiency: The Recon 2.0 features a Li2 Boa Dial for adjustability on the fly, making getting in and out of the shoe a breeze. BOA soft-lace cables made from a Dyneema yarn allow us to do away with hard molded guides for a more comfortable fit. The forefoot strap above the toes helps riders adjust volume around their toes to tailor the fit to their unique foot, connecting you to the bike for confidence when hitting a new feature or tackling loose and technical gravel.</p>', array['recon-2-0-gravel-mountain-bike-shoe/1.jpg', 'recon-2-0-gravel-mountain-bike-shoe/2.jpg', 'recon-2-0-gravel-mountain-bike-shoe/3.jpg', 'recon-2-0-gravel-mountain-bike-shoe/4.jpg', 'recon-2-0-gravel-mountain-bike-shoe/5.jpg']::text[], 'new', 11, '2024-05-22'::date, false, false),
  ('recon-3-0-gravel-mountain-bike-shoe', 'Recon 3.0 Gravel & Mountain Bike Shoe', 'specialized', 'shoes', 'mtb-cycling-shoes', '<p>KOM/QOM chasers, race podium challengers, and all devotees of speed don’t need to sacrifice comfort, durability, or off-the-bike capability when searching for an efficient race-ready shoe with the scientifically proven performance benefits of Body Geometry. A shoe that looks good, feels good, and is light yet capable can be hard to find—well; it used to be. Meet the all-new Recon 3.0, a not-so-distant relative to its S-Works counterpart: made for speed, durability, comfort, and now lighter than ever before. Body Geometry: Like every Body Geometry shoe, the Recon 3.0 is ergonomically designed and scientifically proven to improve comfort, increase performance, and reduce the chance of injury for every rider with patented technology, while improving power by 7 watts - validated by science. Stride Technology: Stride technology provides a flexible outsole and upper around the toe box combined with a stiff cleat pocket, enabling the shoe to easily flex when walking and remain stiff and efficient when pedaling. High Performance &amp; Efficiency: The Recon 3.0 pulls its cable routing, Boa dial placement, and carbon plate directly from our halo S-Works Recon. Dual, premium Li2 Boa Dials offer optimized adjustability and fit, while the cable routing ensures a locked-in feel, minimizing movement within the shoe. The carbon plate keeps the Recon 3.0 lightweight and stiff for optimal power output on the pedal, not to mention shaving 10 grams off our previous generation.</p>', array['recon-3-0-gravel-mountain-bike-shoe/1.jpg', 'recon-3-0-gravel-mountain-bike-shoe/2.jpg', 'recon-3-0-gravel-mountain-bike-shoe/3.jpg', 'recon-3-0-gravel-mountain-bike-shoe/4.jpg', 'recon-3-0-gravel-mountain-bike-shoe/5.jpg']::text[], 'new', 10, '2024-05-22'::date, false, false),
  ('recon-adv-shoe', 'Recon ADV Shoe', 'specialized', 'shoes', 'mtb-cycling-shoes', '<p>Look good, feel good, ride good—and adage as old as cycling itself… That’s the idea behind the new Recon ADV, where riding in style is just as important as the actual ride. This gravel shoe checks all the boxes in the aesthetics department, but is no slouch when it comes to cranking out miles. Recon ADV is suited for the rider who values adventure, time on the bike, and needs an all-day shoe that will keep going when the gravel ends. Recon ADV’s excellent walkability is made possible by STRIDE Toe-Flex Technology, providing a more natural feeling for off-the-bike adventuring. Don’t let the good looks fool you, this shoe is also built inside-out with our Body Geometry Technology, making it a menace on the pedals. Driven by nearly two decades of development and validated by science, we ensure there is no pain, only performance, where your body meets the bike. Through our creation of the Varus Wedge, Longitudinal Arch, and Metatarsal Button, your feet stay in their most optimal position when pedaling—as well as inline with your knee and hips.</p>', array['recon-adv-shoe/1.jpg', 'recon-adv-shoe/2.jpg', 'recon-adv-shoe/3.jpg', 'recon-adv-shoe/4.jpg', 'recon-adv-shoe/5.jpg']::text[], 'new', 5, '2024-05-23'::date, false, false),
  ('s-works-recon-evo', 'S-Works Recon Evo', 's-works', 'shoes', 'mtb-cycling-shoes', '<p>Built for XC and gravel racers chasing every watt, the S-Works Recon EVO delivers uncompromising power with all-day comfort. It fuses the race-tuned precision of Ares 2 with the proven off-road DNA of S-Works Recon, featuring our patented PowerHug closure with dual BOA® dials for a locked-in fit built for full-gas efforts. Anchored by the Body Geometry Natural Last for maximum efficiency, this is pure performance—refined; tested, and proven at the highest level.</p>', array['s-works-recon-evo/1.webp', 's-works-recon-evo/2.webp', 's-works-recon-evo/3.webp', 's-works-recon-evo/4.webp', 's-works-recon-evo/5.webp']::text[], 'new', 10, '2026-08-10'::date, false, false),
  ('s-works-recon-shoe', 'S-Works Recon Shoe', 's-works', 'shoes', 'mtb-cycling-shoes', '<p>From recent road converts, to sultans of dirt speed, the new S-Works Recon delivers pavement-bred performance to the gravel and XC discipline. Guided by more than 100,000 foot scans from our RETÜL fit data, we recognized that both a standard and a wide carbon base plate would best serve the spectrum of human foot shapes. An internal I-Beam adds stiffness and strength, eliminating the need for additional bracing. The result is an intentional fit, that''s stiff, comfortable, and tunable—to put the power down. Inside and out, Body Geometry technology is baked into the the S-Works Recon. Driven by nearly two decades of development and validated by data, we ensure there are no pain points, only performance, where your body meets the bike. Through our creation of the Varus Wedge, Longitudinal Arch, and Metatarsal Button, your feet stay in their most optimal position when pedaling—as well as inline with your knee and hips.</p>', array['s-works-recon-shoe/1.jpg', 's-works-recon-shoe/2.jpg', 's-works-recon-shoe/3.jpg', 's-works-recon-shoe/4.jpg', 's-works-recon-shoe/5.jpg']::text[], 'new', 15, '2024-05-23'::date, false, false),
  ('shimano-sh-xc903-spd-shoes', 'Shimano SH-XC903 SPD Shoes', 'shimano', 'shoes', 'mtb-cycling-shoes', '<p>S-PHYRE XC RACING SHOES THRIVE IN TOUGH CONDITIONS THANKS TO THEIR REFINED, PRO-GUIDED DESIGN.</p>

<ul>
<li>Lightweight cross country and cyclo-cross race-tuned upper offers breathable comfort in severe weather and terrain.</li>
<li>Heel cup with anti-twist stabilization secures optimal foot positioning for intense acceleration and high tempo cadences.</li>
<li>Dual low-profile BOA® Li2 dial allows precise micro-adjustment, plus the shielded bottom dial is protected against accidental releases from impacts.</li>
<li>Sleek, low-profile crossover lacing pattern elegantly secures the forefoot.</li>
<li>Lightweight SHIMANO ULTREAD XC rubber outsole with a highly technical tread pattern provides exceptional racing grip.</li>
<li>With the included talon-shaped spikes, riders can choose lightweight performance or optimal traction.</li>
<li>Surround-wrapping upper with function-specific zones and scientifically optimized materials enhance fit and pedaling performance.</li>
<li>Low stack height midsole stabilizes foot and optimizes power transfer efficiency</li>
</ul>', array['shimano-sh-xc903-spd-shoes/1.png']::text[], 'new', 4, '2025-02-13'::date, false, true),
  ('shimano-xc102-shoes', 'Shimano XC102 Shoes', 'shimano', 'shoes', 'mtb-cycling-shoes', '<p><b>ENTRY-LEVEL XC SHOES WITH ADVANCED FEATURES AND STYLE</b></p>
<p>Just because they’re entry-level doesn’t mean they have to be ordinary. The feature-packed XC102 shoes keep you moving forward, whether you''re heading out for a chill ride or sharpening your skills.</p>
<p><b>FEATURES</b></p>
<ul>
<li>Three robust hook &amp; loop straps comfortably secure the foot with a sleek look.</li>
<li>Rubber XC racing outsole designed for stable pedaling and secure walking grip.</li>
<li>26% recycled mesh upper and midsole (by weight).</li>
<li>Lightweight glass fiber reinforced nylon sole for power transfer.</li>
<li>Surround-wrapping upper structure reduces overlap and provides a glove-like fit.</li>
<li>Low stack height midsole stabilizes the foot and optimizes power transfer.</li>
<li>Perforated synthetic leather composite upper improves fit and breathability.</li>
<li>Off-set strap relieves tension along the top of the foot.</li>
</ul>', array['shimano-xc102-shoes/1.png']::text[], 'new', 9, '2025-08-29'::date, false, true),
  ('shimano-xc302-spd-shoes', 'Shimano XC302 SPD Shoes', 'shimano', 'shoes', 'mtb-cycling-shoes', '<p><b>LEVEL UP YOUR OFF-ROAD RIDING WITH XC SHOES BUILT TO TAKE ON ROUGH TERRAIN.</b></p>
<p>We designed the XC302 shoes for savvy trail lovers who demand outstanding comfort, grip, and durability. They deliver a mix of performance and style beyond what you’d expect from this grade.</p>
<p><b>FEATURES</b></p>
<ul>
<li>Fit-engineered lacing pattern and BOA® Fit System for balanced forefoot comfort.</li>
<li>Integrated seamless midsole and upper provide superior fit and stability.</li>
<li>26% recycled mesh upper and midsole (by weight).</li>
<li>Rubber XC racing outsole designed for stable pedaling and secure walking grip.</li>
<li>Lightweight glass fiber reinforced nylon sole for power transfer.</li>
<li>Low stack height midsole stabilizes the foot and optimizes power transfer.</li>
<li>Surround-wrapping upper structure reduces overlap and provides a glove-like fit.</li>
<li>Perforated synthetic leather composite upper improves fit and breathability.</li>
</ul>', array['shimano-xc302-spd-shoes/1.png']::text[], 'new', 4, '2025-08-29'::date, false, true),

  -- ---- shoes · road-cycling-shoes ----
  ('bont-riot-24-white', 'Bont Riot+ 24 White', 'bont', 'shoes', 'road-cycling-shoes', '<h3></h3>

<p>Introducing the all-new Riot 24, designed to deliver all-day comfort and a modern approach to Bont Cycling’s popular Riot series. Built using our latest ‘slide and ride’ construction method and backed by anatomically-correct shaping, the Riot 24 raises the bar once again.</p>

<p>The Riot 24 shares same sizing chart as rest of Riot Series (Riot+ BOA, Riot MTB+).</p>

<p>Featuring a carbon composite base, lowered carbon mid and forefoot shaping plus a dual-dial BOA® L6 Fit System for a precise, secure and adjustable fit, the Riot 24 forms part of Bont Cycling’s newest approach to cycling shoe design.</p>

<p>Providing a more versatile fit and feel – compared to the Riot+ BOA – the Riot 24 is for any rider of any ability, accommodating an even greater range of foot shapes, sizes and types.</p>

 
<h5>TECH SPECS 
</h5>

<table>
<tbody>
<tr>
<td>Construction</td>
<td>Carbon composite construction and Bont Cycling''s proprietary heat molding technology.</td>
</tr>
<tr>
<td>

<p>Material</p>
</td>
<td>

<p>Ultralight and supportive Microfiber upper for improved breathability, comfort, and performance.</p>
</td>
</tr>
<tr>
<td>

<p>Liner</p>
</td>
<td>

<p>Comfortable honeycomb fabric liner with lightweight padding for a cool and comfortable fit across the entire day.</p>
</td>
</tr>
<tr>
<td>

<p>Stack Height</p>
</td>
<td>

<p>Industry-leading 4.8mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability, and injury prevention.</p>
</td>
</tr>
<tr>
<td>

<p>Ventilation</p>
</td>
<td>

<p>Vented upper for superior breathability in all-weather conditions.</p>
</td>
</tr>
<tr>
<td>

<p>Inner sole</p>
</td>
<td>

<p>Lightweight, comfortable Ethylene Vinyl Acetate (EVA) designed specifically for our shoes with curved edges for a seamless transition between the foot and shoe.</p>
</td>
</tr>
<tr>
<td>

<p>Sole Guards</p>
</td>
<td>

<p>Replaceable toe and heel guards with internal fittings</p>
</td>
</tr>
<tr>
<td>

<p>Cleat Mounting</p>
</td>
<td>

<p>Carbon steel cleat t-nut hardware for long lasting and hassle-free three-hole cleat installation and adjustment</p>
</td>
</tr>
<tr>
<td>

<p>Closure System</p>
</td>
<td>

<p>BOA L6 Performance Fit System with single-direction, dual-dial adjustability for a fast, effortless and precision fit. Backed by The Boa Guarantee, dials and laces are guaranteed for the life of your shoes. (Sizes 36-39 feature a single dial).</p>
</td>
</tr>
<tr>
<td>

<p>Weight</p>
</td>
<td>

<p>235 grams (weighed, based on size 42 shoe).</p>
</td>
</tr>
</tbody>
</table>', array['bont-riot-24-white/1.jpg', 'bont-riot-24-white/2.jpg', 'bont-riot-24-white/3.jpg', 'bont-riot-24-white/4.jpg']::text[], 'new', 7, '2025-07-09'::date, false, false),
  ('bont-riot-24-wide-white', 'Bont Riot+ 24 Wide White', 'bont', 'shoes', 'road-cycling-shoes', '<p>Introducing the all-new Riot 24 Wide, designed to deliver all-day comfort and a modern approach to Bont Cycling’s popular Riot series. Built using our latest ‘slide and ride’ construction method and backed by anatomically-correct shaping, the Riot 24 raises the bar once again.</p>

<p>The Riot 24 shares same sizing chart as rest of Riot Series (Riot+ BOA, Riot MTB+).</p>

<p>Featuring a carbon composite base, lowered carbon mid and forefoot shaping plus a dual-dial BOA® L6 Fit System for a precise, secure and adjustable fit, the Riot 24 forms part of Bont Cycling’s newest approach to cycling shoe design.</p>

<p>Providing a more versatile fit and feel – compared to the Riot+ BOA – the Riot 24 is for any rider of any ability, accommodating an even greater range of foot shapes, sizes and types.</p>

 
<h5>TECH SPECS 
</h5>

<table>
<tbody>
<tr>
<td>Construction</td>
<td>Carbon composite construction and Bont Cycling''s proprietary heat molding technology.</td>
</tr>
<tr>
<td>

<p>Material</p>
</td>
<td>

<p>Ultralight and supportive Microfiber upper for improved breathability, comfort, and performance.</p>
</td>
</tr>
<tr>
<td>

<p>Liner</p>
</td>
<td>

<p>Comfortable honeycomb fabric liner with lightweight padding for a cool and comfortable fit across the entire day.</p>
</td>
</tr>
<tr>
<td>

<p>Stack Height</p>
</td>
<td>

<p>Industry-leading 4.8mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability, and injury prevention.</p>
</td>
</tr>
<tr>
<td>

<p>Ventilation</p>
</td>
<td>

<p>Vented upper for superior breathability in all-weather conditions.</p>
</td>
</tr>
<tr>
<td>

<p>Inner sole</p>
</td>
<td>

<p>Lightweight, comfortable Ethylene Vinyl Acetate (EVA) designed specifically for our shoes with curved edges for a seamless transition between the foot and shoe.</p>
</td>
</tr>
<tr>
<td>

<p>Sole Guards</p>
</td>
<td>

<p>Replaceable toe and heel guards with internal fittings</p>
</td>
</tr>
<tr>
<td>

<p>Cleat Mounting</p>
</td>
<td>

<p>Carbon steel cleat t-nut hardware for long lasting and hassle-free three-hole cleat installation and adjustment</p>
</td>
</tr>
<tr>
<td>

<p>Closure System</p>
</td>
<td>

<p>BOA L6 Performance Fit System with single-direction, dual-dial adjustability for a fast, effortless and precision fit. Backed by The Boa Guarantee, dials and laces are guaranteed for the life of your shoes. (Sizes 36-39 feature a single dial).</p>
</td>
</tr>
<tr>
<td>

<p>Weight</p>
</td>
<td>

<p>235 grams (weighed, based on size 42 shoe).</p>
</td>
</tr>
</tbody>
</table>', array['bont-riot-24-wide-white/1.jpg', 'bont-riot-24-wide-white/2.jpg', 'bont-riot-24-wide-white/3.jpg', 'bont-riot-24-wide-white/4.jpg', 'bont-riot-24-wide-white/5.jpg']::text[], 'new', 8, '2025-07-09'::date, false, false),
  ('bont-shoes-vaypor-s-li2-matte-black', 'Bont Shoes Vaypor S Li2 Matte Black', 'bont', 'shoes', 'road-cycling-shoes', '<p>Designed to deliver your best performance ride after ride, the all-new Vaypor S Li2 has received more than just a facelift with the latest BOA® Li2 Fit System providing an even more precise, secure and micro-adjustable fit.</p> <p>Promising speed, comfort and years of faithful service thanks to its anatomically-correct shaping, heat moldable construction and upgraded 316 marine grade stainless steel cleat t-nuts, the Vaypor S Li2 continues to raise the standard of professional-level road cycling shoes.</p> <p>Built to meet the rigours of the WorldTour and crafted for those who demand the finest, the all-new Vaypor S Li2 delivers the most biomechanically correct platform currently available.</p> <p><strong>Anatomically correct design</strong></p> <p>Designed and refined from more than 20,000 foot scans, our anatomically correct shaping is unrivalled when it comes to uncompromised structural support, efficiency and comfort.</p> <p>Lightweight and built to go the distance, the Vaypor S Durolite is sourced from the finest Italian suppliers.</p> <p><strong>Unidirectional carbon fiber</strong></p> <p>Built using the world''s number-one carbon from Toray of Japan, the Vaypor S chassis is hand built by our most dedicated and experienced shoe makers.</p> <p><strong>Anti-stretch upper</strong></p> <p>For a fit that feels as good from day one until the day they are retired, our anti-stretch upper will keep you connected and comfortable on every ride.</p> <p><strong>BOA Li2 Fit System</strong></p> <p>Dial in to a fast, effortless and precision fit with the BOA Li2 Fit System.</p> <table> <tbody> <tr> <td><strong>Construction</strong></td> <td>100% carbon monocoque chassis utilizing hand-laid unidirectional carbon and Bont Cycling''s proprietary heat molding technology</td> </tr> <tr> <td><strong>Material</strong></td> <td>Japanese Durolite upper supported by an embedded anti-stretch fabric for a consistent fit across the lifetime of the shoes</td> </tr> <tr> <td><strong>Liner</strong></td> <td>Comfortable faux suede liner with lightweight padding plus memory foam undersole</td> </tr> <tr> <td><strong>Stack Height</strong></td> <td>Industry leading 3.6mm stack height (sole thickness) for improved stability, a closer connection to the pedal and injury prevention</td> </tr> <tr> <td><strong>Air Vents</strong></td> <td>Frontal Air Vents with perforated forefoot for breathability in all-weather conditions</td> </tr> <tr> <td><strong>Inner sole</strong></td> <td>Lightweight, comfortable Ethylene Vinyl Acetate (EVA). Bont Cycling innersoles are designed specifically for our shoes with curved edges for a seamless transition between the foot and shoe</td> </tr> <tr> <td><strong>Sole Guards</strong></td> <td>Replaceable heel and toe guards</td> </tr> <tr> <td><strong>Cleat Mounting</strong></td> <td>Standard 3-hole road pedal configuration with alignment grid and grip. Upgraded 316 marine grade stainless steel hardware for improved removal and replacement of cleats. Also available with 4-hole Speedplay sole through custom MyBonts platform</td> </tr> <tr> <td><strong>BOA® Fit System</strong></td> <td>BOA Li2 Performance Fit System with dual-dial adjustability for a fast, effortless and precision fit. Backed by a The BOA Guarantee, dials and laces are guaranteed for the life of your shoes.<br><br><a href="https://www.boafit.com/en-us/support/warranty" rel="noopener nofollow" target="_blank">Learn more about the BOA Guarantee</a></td> </tr> <tr> <td><strong>Sizing</strong></td> <td>19 sizes (36-50) with 5mm increments across the entire range for a more simplified sizing system</td> </tr> <tr> <td><strong>Weight</strong></td> <td>230 grams (approximate weight based on size 42 shoe)</td> </tr> </tbody> </table>', array['bont-shoes-vaypor-s-li2-matte-black/1.png']::text[], 'new', 13, '2023-02-17'::date, false, false),
  ('bont-shoes-vaypor-s-li2-matte-white', 'Bont Shoes Vaypor S Li2 Matte White', 'bont', 'shoes', 'road-cycling-shoes', '<p>Designed to deliver your best performance ride after ride, the all-new Vaypor S Li2 has received more than just a facelift with the latest BOA® Li2 Fit System providing an even more precise, secure and micro-adjustable fit.</p> <p>Promising speed, comfort and years of faithful service thanks to its anatomically-correct shaping, heat moldable construction and upgraded 316 marine grade stainless steel cleat t-nuts, the Vaypor S Li2 continues to raise the standard of professional-level road cycling shoes.</p> <p>Built to meet the rigours of the WorldTour and crafted for those who demand the finest, the all-new Vaypor S Li2 delivers the most biomechanically correct platform currently available.</p> <p><strong>Anatomically correct design</strong></p> <p>Designed and refined from more than 20,000 foot scans, our anatomically correct shaping is unrivalled when it comes to uncompromised structural support, efficiency and comfort.</p> <p>Lightweight and built to go the distance, the Vaypor S Durolite is sourced from the finest Italian suppliers.</p> <p><strong>Unidirectional carbon fiber</strong></p> <p>Built using the world''s number-one carbon from Toray of Japan, the Vaypor S chassis is hand built by our most dedicated and experienced shoe makers.</p> <p><strong>Anti-stretch upper</strong></p> <p>For a fit that feels as good from day one until the day they are retired, our anti-stretch upper will keep you connected and comfortable on every ride.</p> <p><strong>BOA Li2 Fit System</strong></p> <p>Dial in to a fast, effortless and precision fit with the BOA Li2 Fit System.</p> <table> <tbody> <tr> <td><strong>Construction</strong></td> <td>100% carbon monocoque chassis utilizing hand-laid unidirectional carbon and Bont Cycling''s proprietary heat molding technology</td> </tr> <tr> <td><strong>Material</strong></td> <td>Japanese Durolite upper supported by an embedded anti-stretch fabric for a consistent fit across the lifetime of the shoes</td> </tr> <tr> <td><strong>Liner</strong></td> <td>Comfortable faux suede liner with lightweight padding plus memory foam undersole</td> </tr> <tr> <td><strong>Stack Height</strong></td> <td>Industry leading 3.6mm stack height (sole thickness) for improved stability, a closer connection to the pedal and injury prevention</td> </tr> <tr> <td><strong>Air Vents</strong></td> <td>Frontal Air Vents with perforated forefoot for breathability in all-weather conditions</td> </tr> <tr> <td><strong>Inner sole</strong></td> <td>Lightweight, comfortable Ethylene Vinyl Acetate (EVA). Bont Cycling innersoles are designed specifically for our shoes with curved edges for a seamless transition between the foot and shoe</td> </tr> <tr> <td><strong>Sole Guards</strong></td> <td>Replaceable heel and toe guards</td> </tr> <tr> <td><strong>Cleat Mounting</strong></td> <td>Standard 3-hole road pedal configuration with alignment grid and grip. Upgraded 316 marine grade stainless steel hardware for improved removal and replacement of cleats. Also available with 4-hole Speedplay sole through custom MyBonts platform</td> </tr> <tr> <td><strong>BOA® Fit System</strong></td> <td>BOA Li2 Performance Fit System with dual-dial adjustability for a fast, effortless and precision fit. Backed by a The BOA Guarantee, dials and laces are guaranteed for the life of your shoes.<br><br><a href="https://www.boafit.com/en-us/support/warranty" rel="noopener nofollow" target="_blank">Learn more about the BOA Guarantee</a></td> </tr> <tr> <td><strong>Sizing</strong></td> <td>19 sizes (36-50) with 5mm increments across the entire range for a more simplified sizing system</td> </tr> <tr> <td><strong>Weight</strong></td> <td>230 grams (approximate weight based on size 42 shoe)</td> </tr> </tbody> </table>', array['bont-shoes-vaypor-s-li2-matte-white/1.png']::text[], 'new', 13, '2023-02-17'::date, false, false),
  ('bont-vaypor-2023', 'Bont Vaypor 2023', 'bont', 'shoes', 'road-cycling-shoes', '<p>Designed to deliver the absolute best in performance with a zero-compromise approach, the Vaypor 2023 is for the rider who demands it all. When power transfer, 360-degree foot support and all-day comfort matters most, the all-new Vaypor is the ultimate choice.</p> <p>Built using a revamped hand-laid uni-directional carbon fiber base with lowered carbon forefoot profile, the Vaypor provides the very best in stability while accommodating to fit an improved range of foot types and shapes.</p> <p>Harnessing a dual-dial BOA® Li2 Fit System and backed by the <strong><a href="https://www.boafit.com/en-us/support" rel="noopener nofollow" target="_blank">BOA Lifetime Guarantee</a></strong> for a precise, secure and micro-adjustable fit, the Vaypor also features a slotted three-hole cleat arrangement for greater cleat and pedal compatibility and adjustment.</p> <p>Constructed using the highest quality and heat moldable carbon fiber from Toray of Japan, along with a lightweight Durolite upper, the Vaypor shaves up to 100g (per pair, size 42) over the Vaypor S. For those looking to hunt that next PB, the Vaypor is your shoe of choice.</p> <p>Matched with an upgraded Bont Cycling by Cobra9 innersole, the Vaypor can be further customised through the Vaypor Series innersoles (sold separately).</p> <h3><strong>Our lightest yet</strong></h3> <p>Harnessing the latest in modern construction techniques, the Vaypor delivers a super light performance package at just 200g (size 42, one shoe).</p> <h3><strong>Japanese breathable fabric</strong></h3> <p>Lightweight and built to perform, the Durolite upper is sourced from the finest Japanese suppliers.</p> <h3><strong>Unmatched comfort</strong></h3> <p>Designed to perfectly balance performance and natural foot placement, the revamped carbon fiber chassis delivers the ultimate in all-day comfort.</p> <h3><strong>Anatomically correct design</strong></h3> <p>Designed and refined from more than 20,000 foot scans, our anatomically correct shaping is unrivalled when it comes to uncompromised structural support, efficiency and comfort.</p> <h3><strong>BOA Li2 Fit System</strong></h3> <p>Dial in to a fast, effortless and precision fit with the BOA Li2 Fit System.</p> <table> <tbody> <tr> <td><strong>Construction</strong></td> <td>100% carbon fiber construction utilising hand-laid unidirectional carbon from Toray of Japan and Bont Cycling''s proprietary heat molding technology.</td> </tr> <tr> <td><strong>Material</strong></td> <td>Ultralight and supportive Japanese Durolite upper for improved breathability, comfort and performance.</td> </tr> <tr> <td><strong>Liner</strong></td> <td>Comfortable honeycomb fabric liner with lightweight padding and anti-stretch mesh for a cool and comfortable fit across the entire day.</td> </tr> <tr> <td><strong>Stack Height</strong></td> <td>Industry-leading 3.6mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability and injury prevention.</td> </tr> <tr> <td><strong>Air Vents</strong></td> <td>Front and rear drainage with vented upper for breathability and water clearance across all-weather conditions.</td> </tr> <tr> <td><strong>Inner sole</strong></td> <td>Innersole - Bont Cycling by Cobra9 innersole with carbon core and dual-density EVA.</td> </tr> <tr> <td><strong>Sole Guards</strong></td> <td>Sole Guard - Replaceable heel guards with 316 marine grade stainless steel fittings.</td> </tr> <tr> <td><strong>Cleat Mounting</strong></td> <td>Cleat Mounting: Slotted 3-hole road pedal configuration with alignment grid and grip with increase cleat adjustment forward and rearward, when compared to a fixed hole system. Carbon steel cleat t-nut hardware for long-lasting and hassle-free cleat installation and adjustment.</td> </tr> <tr> <td><strong>BOA® Fit System</strong></td> <td>BOA Li2 Performance Fit System with dual-dial adjustability for a fast, effortless and precision fit. Backed by a The BOA Lifetime Guarantee, dials and laces are guaranteed for the life of your shoes.<br><br><a href="https://www.boafit.com/en-us/support/warranty" rel="noopener nofollow" target="_blank"><strong>Learn more about the BOA Guarantee</strong></a></td> </tr> <tr> <td><strong>Sizing</strong></td> <td>19 sizes (36-50) with 5mm increments across the entire range for a more simplified sizing system.</td> </tr> <tr> <td><strong>Width options</strong></td> <td>Two widths with improved foot suitability across different shapes and types: Standard and wide.</td> </tr> <tr> <td><strong>Weight</strong></td> <td>Weight - 200 grams (weighed, based on size 42 shoe).</td> </tr> </tbody> </table>', array['bont-vaypor-2023/1.png', 'bont-vaypor-2023/2.png', 'bont-vaypor-2023/3.png', 'bont-vaypor-2023/4.png', 'bont-vaypor-2023/5.png']::text[], 'new', 9, '2023-07-10'::date, false, false),
  ('bont-zero-black', 'Bont Zero+ Black', 'bont', 'shoes', 'road-cycling-shoes', '<p>The Zero+ is without a doubt Bont Cycling''s fastest road-focussed cycling shoe. Chosen by the likes of three-time IRONMAN World Champion Jan Frodeno and worn by the sport''s quickest and most powerful track riders, the Zero+ leaves no watt wasted.</p> <p>Featuring a unique aerodynamic covering and a centrally located BOA IP1 dial, the Zero+ is the perfect shoe for wind-cheating time triallists, long-distance triathletes, rouleurs and for those concerned with only left-hand banked turns.</p> <p>Of course, it wouldn''t be a Bont Cycling shoe without an anatomical last design backed by more than 20,000 foot scans and constructed using materials born to stand the test of time. Stiff, light, durable and a finished product that is guaranteed to feel the same from the first ride through to it''s last.</p> <p><strong>Aerodynamic cover</strong></p> <p>The Zero+ is the only cycling shoe to feature a fully integrated aerodynamic covering for a smoother flow of air across the front of the foot.</p> <p><strong>Anatomically correct design</strong></p> <p>Our shoe shaping is the result of more than 20,000 laser foot scans and provides a more supportive and natural position inside the shoe.</p> <p><strong>Adjustment on the go</strong></p> <p>The aerodynamic cover is tailored to allow rapid changes when coming in or out of transition or adjustments when on the bike.</p> <p><strong>Faster across any terrain</strong></p> <p>The Zero+ is simply faster across all terrain so you can train and race in shoes built to perform in all conditions and disciplines.</p> <p><strong>BOA® Fit System</strong></p> <p>Fast, effortless and precision fit backed by the BOA Guarantee.</p> <table> <tbody> <tr> <td><strong>Construction</strong></td> <td>100% carbon monocoque chassis utilizing hand-laid unidirectional carbon and Bont Cycling''s proprietary heat molding technology.</td> </tr> <tr> <td><strong>Material</strong></td> <td>Japanese Durolite upper supported by an embedded anti-stretch fabric for a consistent fit across the lifetime of the shoes.</td> </tr> <tr> <td><strong>Liner</strong></td> <td>Comfortable faux suede liner with lightweight padding plus memory foam undersole.</td> </tr> <tr> <td><strong>Stack Height</strong></td> <td>Industry leading 3.6mm stack height (sole thickness) for improved stability, a closer connection to the pedal and injury prevention.</td> </tr> <tr> <td><strong>Air Vents</strong></td> <td>Frontal Air Vents with perforated forefoot for breathability in all-weather conditions.</td> </tr> <tr> <td><strong>Inner sole</strong></td> <td>Lightweight, comfortable Ethylene Vinyl Acetate (EVA). Bont Cycling innersoles are designed specifically for our shoes with curved edges for a seamless transition between the foot and shoe.</td> </tr> <tr> <td><strong>Sole Guards</strong></td> <td>Replaceable heel and toe guards.</td> </tr> <tr> <td><strong>Cleat Mounting</strong></td> <td>Standard 3-hole road pedal configuration with alignment grid and grip. Upgraded 316 marine grade stainless steel hardware for improved removal and replacement of cleats. Also available with 4-hole Speedplay sole through custom MyBonts platform.</td> </tr> <tr> <td><strong>BOA® Fit System</strong></td> <td>BOA IP1 Performance Fit System with single-dial adjustability for a fast, effortless and precision fit with aerodynamic cover. Backed by a The BOA Guarantee, dials and laces are guaranteed for the life of your shoes. <strong><a href="https://www.boafit.com/en-us/support/warranty" rel="noopener nofollow" target="_blank">Learn more about the BOA Guarantee</a></strong>
</td> </tr> <tr> <td><strong>Sizing</strong></td> <td>19 sizes (36-50) with 5mm increments across the entire range for a more simplified sizing system.</td> </tr> <tr> <td><strong>Weight</strong></td> <td>230 grams (approximate weight based on size 42 shoe).</td> </tr> </tbody> </table>', array['bont-zero-black/1.webp']::text[], 'new', 5, '2022-07-11'::date, false, false),
  ('bont-zero-track-laced-matte-black', 'Bont Zero+ Track / Laced Matte Black', 'bont', 'shoes', 'road-cycling-shoes', '<p>No model typifies the Bont brand premise more perfectly than the Bont Cycling Zero+. The Zero+ T track models takes our blisteringly fast model and adapts it to the needs of track cyclists. The Zero+ T features a lace-up retention system which is hidden under the aerodynamic top cover. Laces allow more effective and comfortable use of track straps – which sit over the top of the Zero+ T lace cover.</p> <p>With an improved anatomical last for even greater power transfer and support, full uni-directional carbon chassis and dimpled Durolite upper for improved aerodynamics, the Bont Zero+ is truly Lighter, Stronger &amp; Faster.</p> <h3>Faster everywhere</h3> <p>The Zero+ is the only cycling shoe to feature a fully integrated aerodynamic covering for a smoother flow of air across the front of the foot.</p> <h3>Anatomically correct design</h3> <p>Our shoe shaping is the result of more than 20,000 laser foot scans and provides a more supportive and natural position inside the shoe.</p> <table> <tbody> <tr> <td><strong>Construction</strong></td> <td>100% carbon monocoque chassis utilizing hand-laid unidirectional carbon and Bont Cycling''s proprietary heat molding technology.</td> </tr> <tr> <td><strong>Material</strong></td> <td>Japanese Durolite upper supported by an embedded anti-stretch fabric for a consistent fit across the lifetime of the shoes.</td> </tr> <tr> <td><strong>Liner</strong></td> <td>Comfortable faux suede liner with lightweight padding plus memory foam undersole.</td> </tr> <tr> <td><strong>Stack Height</strong></td> <td>Industry leading 3.6mm stack height (sole thickness) for improved stability, a closer connection to the pedal and injury prevention.</td> </tr> <tr> <td><strong>Air Vents</strong></td> <td>Frontal Air Vents with perforated forefoot for breathability in all-weather conditions.</td> </tr> <tr> <td><strong>Inner sole</strong></td> <td>Lightweight, comfortable Ethylene Vinyl Acetate (EVA). Bont Cycling innersoles are designed specifically for our shoes with curved edges for a seamless transition between the foot and shoe.</td> </tr> <tr> <td><strong>Sole Guards</strong></td> <td>Replaceable heel and toe guards.</td> </tr> <tr> <td><strong>Cleat Mounting</strong></td> <td>Standard 3-hole road pedal configuration with alignment grid and grip. Upgraded 316 marine grade stainless steel hardware for improved removal and replacement of cleats. Also available with 4-hole Speedplay sole through custom MyBonts platform.</td> </tr> <tr> <td><strong>Closure System</strong></td> <td>Bont Track Lace with aerodynamic cover.</td> </tr> <tr> <td><strong>Sizing</strong></td> <td>19 sizes (36-50) with 5mm increments across the entire range for a more simplified sizing system.</td> </tr> <tr> <td><strong>Width Options</strong></td> <td>Four regular widths: Standard, wide, Asian and narrow. Special order widths: Double wide and double wide Asian fit.</td> </tr> <tr> <td><strong>Weight</strong></td> <td>230 grams (approximate weight based on size 42 shoe).</td> </tr> </tbody> </table>', array['bont-zero-track-laced-matte-black/1.webp']::text[], 'new', 7, '2023-02-17'::date, false, false),
  ('bont-zero-track-laced-matte-white', 'Bont Zero+ Track / Laced Matte White', 'bont', 'shoes', 'road-cycling-shoes', '<p>No model typifies the Bont brand premise more perfectly than the Bont Cycling Zero+. The Zero+ T track models takes our blisteringly fast model and adapts it to the needs of track cyclists. The Zero+ T features a lace-up retention system which is hidden under the aerodynamic top cover. Laces allow more effective and comfortable use of track straps – which sit over the top of the Zero+ T lace cover.</p> <p>With an improved anatomical last for even greater power transfer and support, full uni-directional carbon chassis and dimpled Durolite upper for improved aerodynamics, the Bont Zero+ is truly Lighter, Stronger &amp; Faster.</p> <h3>Faster everywhere</h3> <p>The Zero+ is the only cycling shoe to feature a fully integrated aerodynamic covering for a smoother flow of air across the front of the foot.</p> <h3>Anatomically correct design</h3> <p>Our shoe shaping is the result of more than 20,000 laser foot scans and provides a more supportive and natural position inside the shoe.</p> <table> <tbody> <tr> <td><strong>Construction</strong></td> <td>100% carbon monocoque chassis utilizing hand-laid unidirectional carbon and Bont Cycling''s proprietary heat molding technology.</td> </tr> <tr> <td><strong>Material</strong></td> <td>Japanese Durolite upper supported by an embedded anti-stretch fabric for a consistent fit across the lifetime of the shoes.</td> </tr> <tr> <td><strong>Liner</strong></td> <td>Comfortable faux suede liner with lightweight padding plus memory foam undersole.</td> </tr> <tr> <td><strong>Stack Height</strong></td> <td>Industry leading 3.6mm stack height (sole thickness) for improved stability, a closer connection to the pedal and injury prevention.</td> </tr> <tr> <td><strong>Air Vents</strong></td> <td>Frontal Air Vents with perforated forefoot for breathability in all-weather conditions.</td> </tr> <tr> <td><strong>Inner sole</strong></td> <td>Lightweight, comfortable Ethylene Vinyl Acetate (EVA). Bont Cycling innersoles are designed specifically for our shoes with curved edges for a seamless transition between the foot and shoe.</td> </tr> <tr> <td><strong>Sole Guards</strong></td> <td>Replaceable heel and toe guards.</td> </tr> <tr> <td><strong>Cleat Mounting</strong></td> <td>Standard 3-hole road pedal configuration with alignment grid and grip. Upgraded 316 marine grade stainless steel hardware for improved removal and replacement of cleats. Also available with 4-hole Speedplay sole through custom MyBonts platform.</td> </tr> <tr> <td><strong>Closure System</strong></td> <td>Bont Track Lace with aerodynamic cover.</td> </tr> <tr> <td><strong>Sizing</strong></td> <td>19 sizes (36-50) with 5mm increments across the entire range for a more simplified sizing system.</td> </tr> <tr> <td><strong>Width Options</strong></td> <td>Four regular widths: Standard, wide, Asian and narrow. Special order widths: Double wide and double wide Asian fit.</td> </tr> <tr> <td><strong>Weight</strong></td> <td>230 grams (approximate weight based on size 42 shoe).</td> </tr> </tbody> </table>', array['bont-zero-track-laced-matte-white/1.webp', 'bont-zero-track-laced-matte-white/2.webp']::text[], 'new', 7, '2023-02-17'::date, false, false),
  ('bont-zero-white', 'Bont Zero+ White', 'bont', 'shoes', 'road-cycling-shoes', '<p>The Zero+ is without a doubt Bont Cycling''s fastest road-focussed cycling shoe. Chosen by the likes of three-time IRONMAN World Champion Jan Frodeno and worn by the sport''s quickest and most powerful track riders, the Zero+ leaves no watt wasted.</p> <p>Featuring a unique aerodynamic covering and a centrally located BOA IP1 dial, the Zero+ is the perfect shoe for wind-cheating time triallists, long-distance triathletes, rouleurs and for those concerned with only left-hand banked turns.</p> <p>Of course, it wouldn''t be a Bont Cycling shoe without an anatomical last design backed by more than 20,000 foot scans and constructed using materials born to stand the test of time. Stiff, light, durable and a finished product that is guaranteed to feel the same from the first ride through to it''s last.</p> <p><strong>Aerodynamic cover</strong></p> <p>The Zero+ is the only cycling shoe to feature a fully integrated aerodynamic covering for a smoother flow of air across the front of the foot.</p> <p><strong>Anatomically correct design</strong></p> <p>Our shoe shaping is the result of more than 20,000 laser foot scans and provides a more supportive and natural position inside the shoe.</p> <p><strong>Adjustment on the go</strong></p> <p>The aerodynamic cover is tailored to allow rapid changes when coming in or out of transition or adjustments when on the bike.</p> <p><strong>Faster across any terrain</strong></p> <p>The Zero+ is simply faster across all terrain so you can train and race in shoes built to perform in all conditions and disciplines.</p> <p><strong>BOA® Fit System</strong></p> <p>Fast, effortless and precision fit backed by the BOA Guarantee.</p> <table> <tbody> <tr> <td><strong>Construction</strong></td> <td>100% carbon monocoque chassis utilizing hand-laid unidirectional carbon and Bont Cycling''s proprietary heat molding technology.</td> </tr> <tr> <td><strong>Material</strong></td> <td>Japanese Durolite upper supported by an embedded anti-stretch fabric for a consistent fit across the lifetime of the shoes.</td> </tr> <tr> <td><strong>Liner</strong></td> <td>Comfortable faux suede liner with lightweight padding plus memory foam undersole.</td> </tr> <tr> <td><strong>Stack Height</strong></td> <td>Industry leading 3.6mm stack height (sole thickness) for improved stability, a closer connection to the pedal and injury prevention.</td> </tr> <tr> <td><strong>Air Vents</strong></td> <td>Frontal Air Vents with perforated forefoot for breathability in all-weather conditions.</td> </tr> <tr> <td><strong>Inner sole</strong></td> <td>Lightweight, comfortable Ethylene Vinyl Acetate (EVA). Bont Cycling innersoles are designed specifically for our shoes with curved edges for a seamless transition between the foot and shoe.</td> </tr> <tr> <td><strong>Sole Guards</strong></td> <td>Replaceable heel and toe guards.</td> </tr> <tr> <td><strong>Cleat Mounting</strong></td> <td>Standard 3-hole road pedal configuration with alignment grid and grip. Upgraded 316 marine grade stainless steel hardware for improved removal and replacement of cleats. Also available with 4-hole Speedplay sole through custom MyBonts platform.</td> </tr> <tr> <td><strong>BOA® Fit System</strong></td> <td>BOA IP1 Performance Fit System with single-dial adjustability for a fast, effortless and precision fit with aerodynamic cover. Backed by a The BOA Guarantee, dials and laces are guaranteed for the life of your shoes. <strong><a href="https://www.boafit.com/en-us/support/warranty" rel="noopener nofollow" target="_blank">Learn more about the BOA Guarantee</a></strong>
</td> </tr> <tr> <td><strong>Sizing</strong></td> <td>19 sizes (36-50) with 5mm increments across the entire range for a more simplified sizing system.</td> </tr> <tr> <td><strong>Weight</strong></td> <td>230 grams (approximate weight based on size 42 shoe).</td> </tr> </tbody> </table>', array['bont-zero-white/1.jpg', 'bont-zero-white/2.jpg', 'bont-zero-white/3.jpg', 'bont-zero-white/4.jpg', 'bont-zero-white/5.jpg']::text[], 'new', 6, '2021-08-20'::date, false, false),
  ('fizik-decos-carbon', 'Fizik Decos Carbon', 'fizik', 'shoes', 'road-cycling-shoes', '<p>A minimalist carbon road cycling shoe designed to merge performance and comfort to deliver a pure riding experience—an instant classic for anyone seeking the most from every mile.</p>
<p>Tempo Decos is a performance road shoe for riders outside of the demanding pro peloton.</p>
<h3><strong>MINIMAL, PURE</strong></h3>
<p>Instead, the new Decos epitomises fizik’s famed minimalist design at its finest. For these shoes we took a disciplined approach toward simplicity to deliver the pure road riding experience you expect from fizik, from epic, big-mountain rides to granfondos and beyond.</p>
<h3><strong>SIMPLY SUPPORTIVE</strong></h3>
<p>The sleek uppers utilise a resilient polyurethane-laminated material combined over a comfortable mesh, resulting in reduced yield and providing long lasting foot support where it’s needed most. The fit is practical and quickly fine-tuned with a single bi-directional Li2 BOA® dial.</p>
<h3><strong>POWERFUL AND RESPONSIVE</strong></h3>
<p>At the base, the R2 outsole’s engineered carbon fibre layup saves weight and delivers increased stiffness, with a stiffness index rating of 10, making this outsole the most responsive in the fizik range. A wide vent inlet and deep internal channelling provide cooling airflow, aiding in temperature regulation. The cleat positioning is set slightly further back compared to traditional settings to optimise pedalling efficiency and reduce knee compression—especially well-suited for very aggressive, forward aero positions.</p>
<h3><strong>TECHNOLOGIES / SPECIFICATIONS</strong></h3>
<ul>
<li>PU laminate over mesh upper</li>
<li>Li2 BOA® Fit System</li>
<li>R2 outsole – full carbon unidirectional</li>
<li>Outsole stiffness index 5</li>
<li>Weight: <strong>228 g</strong>
</li>
</ul>', array['fizik-decos-carbon/1.jpg', 'fizik-decos-carbon/2.jpg', 'fizik-decos-carbon/3.jpg', 'fizik-decos-carbon/4.jpg', 'fizik-decos-carbon/5.jpg']::text[], 'new', 0, '2025-09-05'::date, false, false),
  ('fizik-tempo-r4-overcurve-black-1', 'Fizik Tempo R4 Overcurve Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>A performance bike shoes with PU laminated mes upper that enhanced ventilation, ergonomic construction that conforms to the foot''s anatomy and R4 outsole carbon injected nylon. All-round road cycling shoe is designed to be equally at home on weekend group rides, in daily training, and stretching out on a granfondo. Behind the Overcurve R4’s lies an advanced construction technique: a resilient, polyurethane-laminated material is combined over a comfortable mesh, reducing energy loss and providing long-lasting foot support where it’s most needed.</p>', array['fizik-tempo-r4-overcurve-black-1/1.jpg', 'fizik-tempo-r4-overcurve-black-1/2.jpg', 'fizik-tempo-r4-overcurve-black-1/3.jpg', 'fizik-tempo-r4-overcurve-black-1/4.jpg', 'fizik-tempo-r4-overcurve-black-1/5.jpg']::text[], 'new', 12, '2025-09-05'::date, false, false),
  ('fizik-tempo-r4-overcurve-white-black-1', 'Fizik Tempo R4 Overcurve White/Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>A performance cycling shoe with a polyurethane-laminated mesh upper that enhances ventilation, ergonomic construction that conforms to the foot’s anatomy, and an R4 carbon-injected nylon outsole.</p>
<p>Behind the Overcurve R4’s lies an advanced construction technique: a resilient, polyurethane-laminated material is combined over a comfortable mesh, reducing energy loss and providing long-lasting foot support where it’s most needed.</p>
<p><strong>OVERCURVE</strong></p>
<p>Shoe closure is fast, reliable and secure, powered by a micro-adjustable BOA® IP1 dial in an Overcurve pattern. The Overcurve shoe construction features a staggered collar that wraps around the ankle, tracing the natural alignment of the ankle’s two bony protrusions: the lateral and medial malleoli. The result is an asymmetrical shape, with the throat of the shoe curving over the foot from its outside to its inner side.</p>
<p><strong>R4 OUTSOLE</strong></p>
<p>The moderately stiff R4 outsole strikes a balance between comfort and pedalling efficiency to make it a true all-rounder, featuring a lower profile structurally optimized with a 15% infused carbon fiber composition. The R4 outsole further provides efficient ventilation with internal channelling for effective temperature regulation. The cleat is positioned slightly further towards the heel compared to traditional placement to optimize pedalling efficiency and reduce knee compression, especially suited to aggressively forward aero riding positions.</p>
<ul>
<li>
<strong>Outsole</strong>: R4 outsole – carbon injected nylon, stiffness index 7</li>
<li>
<strong>Overcurve</strong>: asymmetrical construction that ergonomically conforms to the foot’s anatomy</li>
<li>
<strong>PU laminated mesh upper</strong>: enhanced ventilation with support where needed</li>
<li>
<strong>Weight</strong>: 230g (size 42 - 1/2 pair)</li>
</ul>', array['fizik-tempo-r4-overcurve-white-black-1/1.jpg', 'fizik-tempo-r4-overcurve-white-black-1/2.jpg', 'fizik-tempo-r4-overcurve-white-black-1/3.jpg', 'fizik-tempo-r4-overcurve-white-black-1/4.jpg', 'fizik-tempo-r4-overcurve-white-black-1/5.jpg']::text[], 'new', 3, '2025-09-05'::date, false, false),
  ('fizik-tempo-r4-overcurve-wide-black', 'Fizik Tempo R4 Overcurve Wide Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>A performance bike shoes with PU laminated mes upper that enhanced ventilation, ergonomic construction that conforms to the foot''s anatomy and R4 outsole carbon injected nylon. All-round road cycling shoe is designed to be equally at home on weekend group rides, in daily training, and stretching out on a granfondo. Behind the Overcurve R4’s lies an advanced construction technique: a resilient, polyurethane-laminated material is combined over a comfortable mesh, reducing energy loss and providing long-lasting foot support where it’s most needed.</p>', array['fizik-tempo-r4-overcurve-wide-black/1.jpg', 'fizik-tempo-r4-overcurve-wide-black/2.jpg', 'fizik-tempo-r4-overcurve-wide-black/3.jpg', 'fizik-tempo-r4-overcurve-wide-black/4.jpg', 'fizik-tempo-r4-overcurve-wide-black/5.jpg']::text[], 'new', 10, '2021-09-04'::date, false, false),
  ('fizik-tempo-r5-powerstrap-black-1', 'Fizik Tempo R5 Powerstrap Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>Tempo Powerstrap R5 is a versatile road cycling shoe with an innovative Velcro closure designed for an enveloping fit. While most Velcro closures simply pull together two sides of the shoe’s upper, in this configuration a ribbon wraps around the foot, enabling ultimate comfort and containment using just two straps. In this way, the system replicates the principle of Fizik’s Volume Control: the instep and the midfoot are separately adjustable areas that provide a fully customized fit and compression.</p>', array['fizik-tempo-r5-powerstrap-black-1/1.jpg', 'fizik-tempo-r5-powerstrap-black-1/2.jpg', 'fizik-tempo-r5-powerstrap-black-1/3.jpg', 'fizik-tempo-r5-powerstrap-black-1/4.jpg', 'fizik-tempo-r5-powerstrap-black-1/5.jpg']::text[], 'new', 6, '2025-09-05'::date, false, false),
  ('fizik-transiro-hydra-triathlon-shoes-white-metallic-blue', 'Fizik Transiro Hydra Triathlon Shoes White-Metallic/Blue', 'fizik', 'shoes', 'road-cycling-shoes', '<p>Our highly breathable, comfortable triathlon cycling shoe constructed from 3D air-mesh fabric for cooler, drier feet and built with a single-strap closure system for rapid transitions.</p>

<p>Hydra is a triathlon bike shoe designed to facilitate easier transitions, built with a breathable upper and moderately stiff nylon outsole that combines comfort and pedaling efficiency.</p>

<p>TRANSITION QUICKLY</p>
<p>As transitions become increasingly important—now considered the fourth discipline in any triathlon event, be that a full Ironman race or sprint distance—we have redesigned our tri-shoes range to meet the requirements of the most demanding athletes. Hydra is built with a single Velcro strap to allow faster, worry-free transitions, where any mistake can cost decisive time. Additionally, the enveloping strap provides the strong foot support athletes need to be efficient in every race situation.</p>

<p>EASY-BREATHING AIR MESH</p>
<p>The simple closure system is coupled with an upper made of 3D air-mesh fabric for a shoe that’s highly breathable to help avoid overly sweaty feet, making this an optimal solution for those who prefer to race sockless.</p>

<p>COMFORT, EFFICIENCY, CONTROL</p>
<p>The newly redesigned R5 nylon outsole offers comfort and a moderate level of stiffness for efficient pedaling. Additionally, cleat positioning is set slightly further back compared to traditional settings to better optimize pedaling efficiency and reduce knee compression. A wide vent inlet provides cooling airflow, aiding in temperature regulation.</p>', array['fizik-transiro-hydra-triathlon-shoes-white-metallic-blue/1.jpg', 'fizik-transiro-hydra-triathlon-shoes-white-metallic-blue/2.jpg', 'fizik-transiro-hydra-triathlon-shoes-white-metallic-blue/3.jpg', 'fizik-transiro-hydra-triathlon-shoes-white-metallic-blue/4.jpg', 'fizik-transiro-hydra-triathlon-shoes-white-metallic-blue/5.jpg']::text[], 'new', 7, '2025-03-14'::date, false, false),
  ('fizik-vento-infinito-carbon-2-white-black', 'Fizik Vento Infinito Carbon 2 White/Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>A pro-level cycling shoe with a Microtex upper, full unidirectional carbon outsole (R2) and Li2 Dual Zone Boa® Fit System configuration.</p> <p><strong>MICROTEX UPPER</strong></p> <p>The Microtex upper is supple, yet strong and stable, for a comfortable and consistent fit. Combined with fizik’s most advanced adjustment capabilities, this shoe delivers the precise, locked-in feel that racers demand.</p> <p><strong>SUPPORT AND COMFORT</strong></p> <p>A dedicated piece of the shoe''s upper wraps around the plantar arch and can be precisely adjusted for a perfect fit and improved support of the plantar fascia using the latest Li2 BOA® Platform. The volume of the forefoot area can be controlled via the Infinito, a signature fit-configuration feature. The Infinito balances tension and further eliminates pressure hot spots by using BOA® textile lace guides. This fit system acts across a larger area of the shoe’s upper, pulling the eyelets inwards consistently from all directions for a more supportive and comfortable fit.</p> <p><strong>VOLUME CONTROL SYSTEM</strong></p> <p>The Volume Control system allows for differentiated fit adjustments for the instep and forefoot areas–the shape and volume of which can vary widely between riders. Featuring the latest Li2 BOA® Fit System platform with a smaller dial diameter and lower, more aerodynamic profile, cyclists can fine tune the fit to their unique foot shape, ensuring maximum performance without compromising on comfort.</p> <p><strong>R2 CARBON OUTSOLE</strong></p> <p>The updated Infinito also features an entirely new outsole with an engineered carbon fibre layup that saves weight and delivers increased stiffness. With a stiffness index rating of 10, this outsole is the stiffest in the fizik range. A wide vent inlet and deep internal channelling provide a cooling airflow, aiding in temperature regulation. The cleat positioning is set slightly further back compared to traditional settings to optimize pedalling efficiency and reduce knee compression, especially well-suited to very aggressive, forward aero positions.</p> <ul> <li>Microtex upper</li> <li>Li2 Dual Zone BOA Fit System configuration</li> <li>
<strong>R2 carbon outsole:</strong> full carbon unidirectional, stiffness index 10</li> <li>
<strong>Weight:</strong> 227g (size 42 - 1/2 pair)</li> <li>
<strong>Vento:</strong> performance racing series designed in collaboration with professional cyclists</li> <li>
<strong>Intended use:</strong> road racing</li> </ul>', array['fizik-vento-infinito-carbon-2-white-black/1.jpg', 'fizik-vento-infinito-carbon-2-white-black/2.jpg', 'fizik-vento-infinito-carbon-2-white-black/3.jpg', 'fizik-vento-infinito-carbon-2-white-black/4.jpg', 'fizik-vento-infinito-carbon-2-white-black/5.jpg']::text[], 'new', 0, '2021-09-04'::date, false, false),
  ('fizik-vento-omna-black-black', 'Fizik Vento Omna Black/Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>A performance road cycling shoe that brings together the leading features of our pro-level line-up, now optimized for every rider.</p>
<p>Omnia is a responsive, pure road cycling shoe developed for competitive riders seeking race-ready features and performance.</p>
<p><strong>PRO PERFORMANCE FOR ALL</strong></p>
<p>With Omna, we set out to create an advanced road shoe with performance that recalls our top-tier products. Whether you’re training for your first race or facing epic climbs, this shoe has the right features for your ride. Omna is well ventilated with a PU upper that makes the shoe both lightweight and comfortable.</p>
<p><strong>DIAL UP THE COMFORT</strong></p>
<p>The closure system is similar to our signature Infinito fit configuration, using BOA® textile lace guides that balance tension and further eliminate pressure hot spots. This fit system acts across a larger area of the shoe’s upper, pulling the eyelets inwards consistently from all directions for a more supportive and comfortable fit. Featuring a single bi-directional Li2 BOA® Fit System platform, cyclists can fine tune their fit, ensuring maximum performance without compromising on comfort.</p>
<p><strong>POWER BALANCED</strong></p>
<p>The newly redesigned R5 nylon outsole offers comfort and a moderate level of stiffness for efficient pedaling. Additionally, cleat positioning is set slightly further back compared to traditional settings to better optimize pedaling efficiency and reduce knee compression. A wide vent inlet provides cooling airflow, aiding in temperature regulation.</p>
<ul>
<li>Perforated high-density PU upper</li>
<li>Li2 BOA® Dial C Fit System</li>
<li>R5 nylon outsole</li>
<li>
<strong>Stiffness index:</strong> 6</li>
<li>
<strong>Weight:</strong> 238 g</li>
<li>
<strong>Sizes:</strong> 36-48</li>
</ul>', array['fizik-vento-omna-black-black/1.jpg', 'fizik-vento-omna-black-black/2.jpg', 'fizik-vento-omna-black-black/3.jpg', 'fizik-vento-omna-black-black/4.jpg', 'fizik-vento-omna-black-black/5.jpg']::text[], 'new', 10, '2025-09-05'::date, false, false),
  ('fizik-vento-omna-white-black-1', 'Fizik Vento Omna White/Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>A performance road cycling shoe that brings together the leading features of our pro-level line-up, now optimized for every rider.</p>
<p>Omna is a responsive, pure road cycling shoe developed for competitive riders seeking race-ready features and performance.</p>
<h3><strong>PRO PERFORMANCE FOR ALL</strong></h3>
<p>With Omna, we set out to create an advanced road shoe with performance that recalls our top-tier products. Whether you’re training for your first race or facing epic climbs, this shoe has the right features for your ride. Omna is well ventilated with a PU upper that makes the shoe both lightweight and comfortable.</p>
<h3><strong>DIAL UP THE COMFORT</strong></h3>
<p>The closure system is similar to our signature Infinito fit configuration, using BOA® textile lace guides that balance tension and further eliminate pressure hot spots. This fit system acts across a larger area of the shoe’s upper, pulling the eyelets inwards consistently from all directions for a more supportive and comfortable fit. Featuring a single bi-directional Li2 BOA® Fit System platform, cyclists can fine tune their fit, ensuring maximum performance without compromising on comfort.</p>
<h3><strong>POWER BALANCED</strong></h3>
<p>The newly redesigned R5 nylon outsole offers comfort and a moderate level of stiffness for efficient pedaling. Additionally, cleat positioning is set slightly further back compared to traditional settings to better optimize pedaling efficiency and reduce knee compression. A wide vent inlet provides cooling airflow, aiding in temperature regulation.</p>
<h3><strong>TECHNOLOGIES / SPECIFICATIONS</strong></h3>
<ul>
<li>Perforated high-density PU upper</li>
<li>Li2 BOA® Dial C Fit System</li>
<li>R5 nylon outsole</li>
<li>Stiffness index 6</li>
<li>
<strong>Weight:</strong> 238 g</li>
<li>
<strong>Sizes:</strong> 36-48 (37 to 47 also in half sizes)</li>
</ul>', array['fizik-vento-omna-white-black-1/1.jpg', 'fizik-vento-omna-white-black-1/2.jpg', 'fizik-vento-omna-white-black-1/3.jpg', 'fizik-vento-omna-white-black-1/4.jpg', 'fizik-vento-omna-white-black-1/5.jpg']::text[], 'new', 4, '2025-09-05'::date, false, false),
  ('fizik-vento-omna-wide-black-black', 'Fizik Vento Omna Wide Black/Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>A performance road cycling shoe that brings together the leading features of our pro-level line-up, now optimized for every rider.</p>
<p>Omna is a responsive, pure road cycling shoe developed for competitive riders seeking race-ready features and performance.</p>
<h3><strong>HIGHER VOLUME</strong></h3>
<p>Designed with a performance fit for riders with wider feet, the Vento Omna Wide provides a higher volume fit with more room at the forefoot around the ball of the foot and metatarsals.</p>
<h3><strong>PRO PERFORMANCE FOR ALL</strong></h3>
<p>With Omna, we set out to create an advanced road shoe with performance that recalls our top-tier products. Whether you’re training for your first race or facing epic climbs, this shoe has the right features for your ride. Omna is well ventilated with a PU upper that makes the shoe both lightweight and comfortable.</p>
<h3><strong>DIAL UP THE COMFORT</strong></h3>
<p>The closure system is similar to our signature Infinito fit configuration, using BOA® textile lace guides that balance tension and further eliminate pressure hot spots. This fit system acts across a larger area of the shoe’s upper, pulling the eyelets inwards consistently from all directions for a more supportive and comfortable fit. Featuring a single bi-directional Li2 BOA® Fit System platform, cyclists can fine tune their fit, ensuring maximum performance without compromising on comfort.</p>
<h3><strong>POWER BALANCED</strong></h3>
<p>The newly redesigned R5 nylon outsole offers comfort and a moderate level of stiffness for efficient pedaling. Additionally, cleat positioning is set slightly further back compared to traditional settings to better optimize pedaling efficiency and reduce knee compression. A wide vent inlet provides cooling airflow, aiding in temperature regulation.</p>
<h3><strong>TECHNOLOGIES / SPECIFICATIONS</strong></h3>
<ul>
<li>Perforated high-density PU upper</li>
<li>Li2 BOA® Dial C Fit System</li>
<li>R5 nylon outsole</li>
<li>Stiffness index 6</li>
<li>
<strong>Weight:</strong> 240 g</li>
<li>
<strong>Sizes:</strong> 36-48 (37 to 47 also in half sizes)</li>
</ul>', array['fizik-vento-omna-wide-black-black/1.jpg', 'fizik-vento-omna-wide-black-black/2.jpg', 'fizik-vento-omna-wide-black-black/3.jpg', 'fizik-vento-omna-wide-black-black/4.jpg', 'fizik-vento-omna-wide-black-black/5.jpg']::text[], 'new', 7, '2025-07-08'::date, false, false),
  ('fizik-vento-omna-wide-white-black', 'Fizik Vento Omna Wide White/Black', 'fizik', 'shoes', 'road-cycling-shoes', '<p>FizA performance road cycling shoe that brings together the leading features of our pro-level line-up, now optimized for every rider.</p>
<p>Omna is a responsive, pure road cycling shoe developed for competitive riders seeking race-ready features and performance.</p>
<h3><strong>HIGHER VOLUME</strong></h3>
<p>Designed with a performance fit for riders with wider feet, the Vento Omna Wide provides a higher volume fit with more room at the forefoot around the ball of the foot and metatarsals.</p>
<h3><strong>PRO PERFORMANCE FOR ALL</strong></h3>
<p>With Omna, we set out to create an advanced road shoe with performance that recalls our top-tier products. Whether you’re training for your first race or facing epic climbs, this shoe has the right features for your ride. Omna is well ventilated with a PU upper that makes the shoe both lightweight and comfortable.</p>
<h3><strong>DIAL UP THE COMFORT</strong></h3>
<p>The closure system is similar to our signature Infinito fit configuration, using BOA® textile lace guides that balance tension and further eliminate pressure hot spots. This fit system acts across a larger area of the shoe’s upper, pulling the eyelets inwards consistently from all directions for a more supportive and comfortable fit. Featuring a single bi-directional Li2 BOA® Fit System platform, cyclists can fine tune their fit, ensuring maximum performance without compromising on comfort.</p>
<h3><strong>POWER BALANCED</strong></h3>
<p>The newly redesigned R5 nylon outsole offers comfort and a moderate level of stiffness for efficient pedaling. Additionally, cleat positioning is set slightly further back compared to traditional settings to better optimize pedaling efficiency and reduce knee compression. A wide vent inlet provides cooling airflow, aiding in temperature regulation.</p>
<h3><strong>TECHNOLOGIES / SPECIFICATIONS</strong></h3>
<ul>
<li>Perforated high-density PU upper</li>
<li>Li2 BOA® Dial C Fit System</li>
<li>R5 nylon outsole</li>
<li>Stiffness index 6</li>
<li>
<strong>Weight:</strong> 240 g</li>
<li>
<strong>Sizes:</strong> 36-48 (37 to 47 also in half sizes)</li>
</ul>', array['fizik-vento-omna-wide-white-black/1.jpg', 'fizik-vento-omna-wide-white-black/2.jpg', 'fizik-vento-omna-wide-white-black/3.jpg', 'fizik-vento-omna-wide-white-black/4.jpg', 'fizik-vento-omna-wide-white-black/5.jpg']::text[], 'new', 6, '2025-09-05'::date, false, false),
  ('s-works-ares-2', 'S-Works Ares 2', 's-works', 'shoes', 'road-cycling-shoes', '<p>The all-new S-Works Ares 2 is the ultimate shoe for racers looking for the most positive, locked-in feel without sacrificing comfort. Engineered with our Body Geometry methodology for power, comfort, and pedaling precision - delivering a 7-watt power increase while reducing forefoot pressure by 44%. The S-Works Ares 2 is the pinnacle of race footwear - redefined.</p>', array['s-works-ares-2/1.jpg', 's-works-ares-2/2.jpg', 's-works-ares-2/3.jpg', 's-works-ares-2/4.jpg', 's-works-ares-2/5.jpg']::text[], 'new', 11, '2025-03-21'::date, false, false),
  ('s-works-torch', 'S-Works Torch', 's-works', 'shoes', 'road-cycling-shoes', '<p>The S-Works Torch is the latest evolution of the winningest footwear in cycling. Using Body Geometry together with biomimicry, data science, and obsessive craftsmanship, we engineered a shoe so thoughtfully constructed that you’ll forget you’re wearing it. Leveraging data science, we refined every detail of the S-Works Torch’s upper for improved fit and performance. The BOA® cable is shifted down and angled, preventing lift on the ball of the foot and delivering power-enhancing structure while eliminating unwanted pressure or pinching. Adaptive materials allow natural movement of the foot where needed for comfort, while data-driven zonal reinforcement keeps the foot secured for crisp power delivery and optimal efficiency. Guided by more than 100,000 foot scans from our RETÜL fit data, we recognized that both a standard and a wide carbon base plate would best serve the spectrum of human foot shapes. An internal I-Beam adds stiffness and strength, eliminating the need for additional bracing. The result is a 20-gram weight reduction, enhanced efficiency, and immediate power transfer. Following RETÜL biomechanical data, we created an asymmetric heel cup that supports natural knee alignment and delivers the positive hold riders love while enhancing comfort by accommodating more room for the Achilles heel. The S-Works Torch is scientifically crafted to disappear on your feet and off the front.</p>', array['s-works-torch/1.jpg', 's-works-torch/2.jpg', 's-works-torch/3.jpg', 's-works-torch/4.jpg', 's-works-torch/5.jpg']::text[], 'new', 10, '2024-09-03'::date, false, false),
  ('shimano-rc102-road-shoe', 'Shimano RC102 Road Shoes', 'shimano', 'shoes', 'road-cycling-shoes', '<p><b>Do-It-All Road Cycling Shoe</b></p>
<p>The feature-rich SH-RC102 shares DNA with Shimano’s top-of-the-line S-PHYRE road shoes, combining a newly updated 3-strap closure design, perforated synthetic leather upper, and reduced stack height to deliver enhanced comfort, cooling, and performance.</p>
<p><b>Features:</b></p>
<ul>
<li>The newly updated RC102 merges top-tier technology with an entry level price, delivering all-day comfort in a do-it-all road cycling shoe</li>
<li>Secure Closure: Revised 3-strap upper design provides secure closure and enhanced power transfer for efficient pedaling performance</li>
<li>Breathability: Synthetic leather upper with perforations increases ventilation, keeping you cool and comfortable when the pace picks up</li>
<li>Comfortable Fit: Wraparound upper accommodates broad range of foot shapes, while three offset hook-and-loop straps enable customized fit</li>
<li>Walkability: Wide heel pads provide traction and stability when off the bike and walking around</li>
<li>Enhanced Visibility: Strategically placed reflective printing keeps you more visible to motorists in lowlight conditions</li>
</ul>', array['shimano-rc102-road-shoe/1.jpg', 'shimano-rc102-road-shoe/2.png', 'shimano-rc102-road-shoe/3.png']::text[], 'new', 8, '2025-08-29'::date, false, true),
  ('shimano-rc302-road-shoes', 'Shimano RC302 Road Shoes', 'shimano', 'shoes', 'road-cycling-shoes', '<p><b>Value-Packed Performance Road Shoe</b></p>
<p>Boasting a host of performance features, the RC302 is a value-packed road shoe for everyday riding. Designed for both comfort and speed, it employs an integrated seamless midsole and fiberglass-reinforced nylon sole to deliver a stiff and stable pedaling platform.</p>
<p><b>Features:</b></p>
<ul>
<li>The updated RC302 blends top-tier S-PHYRE race technology with a mid-tier price, delivering all-day comfort in a lightweight performance road shoe</li>
<li>Optimal Efficiency: Low stack height integrated midsole and new BOA fit system upper with instep strap provide stable pedaling platform and secure closure for enhanced power transfer</li>
<li>Breathability: Synthetic leather upper with strategically-placed perforations increases ventilation, keeping you cool and comfortable when the race is on</li>
<li>Dialed Fit: Surround wrapping upper accommodates broad range of foot shapes, while micro-adjustable BOA L6E dial enables a personalized fit</li>
<li>Options Abound: Available in three colorways and standard sizes from 40-48 (plus wide options from 40-52) mean there’s an ideal option for you and your style</li>
</ul>', array['shimano-rc302-road-shoes/1.jpg']::text[], 'new', 4, '2025-08-29'::date, false, true),
  ('shimano-rc302-womens-shoes', 'Shimano RC302 Womens Shoes', 'shimano', 'shoes', 'road-cycling-shoes', '<p><b>Value-Packed Women’s Performance Road Shoe</b></p>
<p>Boasting a host of performance features, the RC302W is a women’s specific road shoe for everyday riding. Designed for both comfort and speed, it employs an integrated seamless midsole and fiberglass-reinforced nylon sole to deliver a stiff and stable pedaling platform.</p>
<p><b>Features:</b></p>
<ul>
<li>The updated RC302W blends top-tier S-PHYRE race technology with a mid-tier price, delivering all-day comfort in a lightweight performance road shoe</li>
<li>Optimal Efficiency: Low stack height integrated midsole and new BOA fit system upper with instep strap provide stable pedaling platform and secure closure for enhanced power transfer</li>
<li>Breathability: Synthetic leather upper with strategically-placed perforations increases ventilation, keeping you cool and comfortable when the race is on</li>
<li>Dialed Fit: Women’s specific last and surround wrapping upper accommodate broad range of foot shapes, while micro-adjustable BOA L6E dial enables a personalized fit</li>
<li>Options Abound: Available in three colorways and standard sizes from 36-44 mean there’s an ideal option for you and your style</li>
</ul>', array['shimano-rc302-womens-shoes/1.jpg', 'shimano-rc302-womens-shoes/2.png', 'shimano-rc302-womens-shoes/3.png']::text[], 'new', 1, '2025-08-29'::date, false, true),
  ('shimano-rc503-road-shoes', 'Shimano RC503 Road Shoes', 'shimano', 'shoes', 'road-cycling-shoes', '<p>Boasting top-of-the-line race technology, the RC503 is a high-performance road cycling shoe without the high price tag. The breathable, lightweight upper provides all-around comfort and a superior fit, while the carbon-reinforced midsole delivers the kind of stiffness and stability you’d expect from a high-end cycling shoe.</p>
<ul>
<li>Best-in-Class Fit: Full surround laminated mesh upper is supple, durable, and integrates seamlessly with midsole for a snug and secure fit</li>
<li>Lightweight and Stiff: Low stack height carbon reinforced midsole with stiffness level of 8 stabilizes your foot and transfers more power to your pedals</li>
<li>Unrivaled Comfort: Synthetic leather and breathable TPU mesh upper keep you comfortable and dry on long rides, while BOA L6C dial closure promotes a perfectly personalized fit</li>
<li>Multiple Options: Color choices include Black, White, and Cyber Blue, while sizes run standard 38-48 plus wide 40-48</li>
<li>Compatible with SPD-SL Cleats: Easily clip into SPD-SL pedals for optimal pedaling efficiency</li>
</ul>', array['shimano-rc503-road-shoes/1.jpg', 'shimano-rc503-road-shoes/2.jpg']::text[], 'new', 4, '2025-08-29'::date, false, true),
  ('shimano-rc703-shoes', 'Shimano RC703 Shoes', 'shimano', 'shoes', 'road-cycling-shoes', '<p>Packed with race-focused features, the RC703 utilizes the same S-PHYRE fit technology found in our pro-level road shoes. Designed to deliver all-day comfort and efficient power transfer, it employs a low stack height midsole and new Power Zone lace guides that reduce weight and increase pedaling stability.</p>
<p><b>Features</b></p>
<ul>
<li>The updated RC703 is a race-ready road cycling shoe that’s lightweight, comfortable, and designed to help keep you at the front of the pack</li>
<li>Optimal Efficiency: Low stack height midsole, refined instep straps, and new Power Zone lace guides provide stable pedaling platform for enhanced power transfer</li>
<li>Breathability: Synthetic leather upper with strategically-placed perforations increases ventilation, keeping you cool and comfortable when the race is on</li>
<li>Dialed Fit: Surround wrapping upper accommodates broad range of foot shapes, while dual micro-adjustable BOA L6Z dial enables a personalized fit</li>
<li>Options Abound: Available in three colorways and standard sizes from 40-48 (plus half sizes 41.5-46.5 and wide options 40-50) mean there’s an ideal choice for you and your style</li>
</ul>
<p><u>Efficient Pedaling Performance</u></p>
<p>Built for riding and racing, the RC703 utilizes new Power Zone lace guides that reduce overall weight and create a lower more aero profile. That’s combined with a low stack height midsole and stiff carbon outsole to deliver a stable pedaling platform for enhanced power transfer when it matters most.</p>
<p><u>Optimized Comfort and Cooling</u></p>
<p>Constructed with supple synthetic leather and a lightweight TPU mesh, the surround wrapping upper reduces unwanted friction. Strategically placed perforations increase ventilation, keeping you cool and comfortable when the race heats up. Dual L6Z dials allow for easy micro adjustments throughout your ride.</p>', array['shimano-rc703-shoes/1.jpg']::text[], 'new', 3, '2024-09-10'::date, false, true),
  ('shimano-rc703-womens-road-shoes', 'Shimano RC703 Womens Road Shoes', 'shimano', 'shoes', 'road-cycling-shoes', '<p><b>Women’s Race Ready Road Cycling Shoe</b></p>
<p>Packed with race-focused features, the RC703W utilizes the same S-PHYRE fit technology found in our pro-level road shoes. Designed to deliver all-day comfort and efficient power transfer, it employs a women’s specific last and new Power Zone lace guides that reduce weight and increase pedaling stability.</p>
<p><b>Efficient Pedaling Performance</b></p>
<p>Built to win races, the RC703W utilizes a women’s specific last and new Power Zone lace guides that reduce overall weight and creates a lower more aero profile. That’s combined with a stiff carbon outsole to deliver a stable pedaling platform for enhanced power transfer when it matters most.</p>
<p><b>Optimized Comfort and Cooling</b></p>
<p>Constructed with supple synthetic leather and a lightweight TPU mesh, the surround wrapping upper reduces unwanted friction. Strategically placed perforations increase ventilation, keeping you cool and comfortable when the race heats up. Dual L6Z dials allow for easy micro adjustments throughout your ride.</p>
<p><b>Features:</b></p>
<ul>
<li>The updated RC703W is a race-ready road cycling shoe that’s lightweight, comfortable, and designed to help keep you at the front of the pack</li>
<li>Optimal Efficiency: Low stack height midsole, refined instep straps, and new Power Zone lace guides provide stable pedaling platform for enhanced power transfer</li>
<li>Breathability: Synthetic leather upper with strategically-placed perforations increases ventilation, keeping you cool and comfortable when the race is on</li>
<li>Dialed Fit: Women’s specific last and surround wrapping upper accommodate broad range of foot shapes, while dual micro-adjustable BOA L6Z dial enables a personalized fit</li>
<li>Options Abound: Available in two colorways and standard sizes from 36-44 mean there’s an ideal choice for you and your style</li>
</ul>', array['shimano-rc703-womens-road-shoes/1.png', 'shimano-rc703-womens-road-shoes/2.png', 'shimano-rc703-womens-road-shoes/3.png']::text[], 'new', 6, '2025-08-29'::date, false, true),
  ('shimano-rc903-road-shoe', 'Shimano RC903 Road Shoe', 'shimano', 'shoes', 'road-cycling-shoes', '<p>Shimano RC903 Road Shoe</p>

<h4>RC903 Men</h4>

<ul>
<li>Lightweight and breathable microfiber leather upper provides optimal fit and superior comfort throughout your ride.</li>
<li>Premium-finish heel cup with anti-twist stabilization secures optimal foot positioning for intense acceleration.</li>
<li>Sleek, low-profile crossover lacing pattern elegantly secures forefoot.</li>
<li>360º surround wrapping upper creates a supremely engineered fit for all riders.</li>
<li>Dual low-profile BOA® Li2 dials allow quick and precise microadjustments.</li>
<li>Integrated seamless midsole and upper construction set a new level of fit, stability and lightweight performance.</li>
</ul>', array['shimano-rc903-road-shoe/1.png']::text[], 'new', 5, '2022-12-07'::date, false, true),
  ('torch-1-0-road-shoes', 'Torch 1.0 Road Shoes', 'specialized', 'shoes', 'road-cycling-shoes', '<p>Take the performance and Body Geometry ergonomics of our high-end road shoes, put them in an affordable design, and you basically have the Torch 1.0 Road shoes. For the closure, we added a single lightweight Boa® L6 dial that features tool-free snap replacement capability, while also providing simple, on-the-fly micro-adjustments.</p>', array['torch-1-0-road-shoes/1.jpg', 'torch-1-0-road-shoes/2.jpg', 'torch-1-0-road-shoes/3.jpg', 'torch-1-0-road-shoes/4.jpg', 'torch-1-0-road-shoes/5.jpg']::text[], 'new', 19, '2025-11-04'::date, false, false),
  ('torch-2-0-road-shoes-1', 'Torch 2.0 Road Shoes', 'specialized', 'shoes', 'road-cycling-shoes', '<p>If you''re ready to step up to a higher-performing option that looks good and feels great, the Torch 2.0 is the perfect upgrade for you. The Torch 2.0 is the ideal intersection of high performance and comfort, offering you a pair of shoes you can count on, whether you’re joining their first group ride or clipping into the spin bike to get their sweat on. Body Geometry Methodology: The human body evolved to walk, not pedal, which leads to power-robbing foot collapse, misalignment of the foot, knee, and hip, as well as “hot foot” in traditional cycling shoes. The Torch 2.0, like every Body Geometry shoe, helps solve these problems with three patented technologies - Varus Wedge, Longitudinal Arch &amp; Metatarsal Button - to deliver a pain-free increase in power that’s validated by scientific testing and two decades of well-documented ass kicking. Comfort: For a secure fit, the Torch 2.0 utilizes a singular, premium Li2 Boa dial with soft woven guides for added comfort. Additionally, the fully perforated, seamless upper eliminates stitching within the shoe that can cause irritation to the top of the foot. The seamless upper is also fully laser-perforated for increased ventilation. Off-Bike Confidence: Large rubber grips on the outsole of the toe and heel provide a stable, grippy platform for a seamless transition off the bike and into your local coffee shop and provide more confidence for riders when pushing off pavement to clip in or coming to a stop at a traffic light. All in all, the rubber grips help the shoe grab onto concrete for a worry-free, stabilizing feel when not clipped in.</p>', array['torch-2-0-road-shoes-1/1.jpg', 'torch-2-0-road-shoes-1/2.jpg', 'torch-2-0-road-shoes-1/3.jpg', 'torch-2-0-road-shoes-1/4.jpg', 'torch-2-0-road-shoes-1/5.jpg']::text[], 'new', 17, '2024-09-03'::date, false, false),
  ('torch-3-0-road-shoes', 'Torch 3.0 Road Shoes', 'specialized', 'shoes', 'road-cycling-shoes', '<p>Whether you’re hunting for Strava PRs or looking to ride big elevation, the all-new Torch 3.0 is the perfect companion. Combining classic aesthetics, premium construction, and elevated comfort, the all-new Torch 3.0 is a not-so-distant relative to its S-Works counterpart. Sharing key features like a unidirectional carbon plate, dual-zone Boa closure, and a seamless upper, the Torch 3.0 is an efficient, comfortable, and dependable performance shoe. Body Geometry Methodology: The human body evolved to walk, not pedal, which leads to power-robbing foot collapse, misalignment of the foot, knee, and hip, as well as “hot foot” in traditional cycling shoes. The Torch 3.0, like every Body Geometry shoe, helps solve these problems with three patented technologies - Varus Wedge, Longitudinal Arch &amp; Metatarsal Button - to deliver a pain-free increase in power that’s validated by scientific testing and two decades of well-documented ass kicking. Carbon Plate: The Torch 3.0 features a lightweight, unidirectional carbon plate that enables balanced stiffness throughout the shoe, all while using less material, thus saving weight and ensuring efficient power transfer, mirroring its S-Works counterpart. Additionally, large rubber grips on the outsole of the toe and heel provide a stable, grippy platform for a seamless transition when pushing off the pavement to clip in or coming to a stop at a traffic light. Comfort: The key to a comfortable shoe is all in its construction—balanced stiffness paired with incremental fit adjustments and a supple upper is the perfect package for maximum comfort. It’s like the story of Goldilocks—with the Torch 3.0, we made a shoe that fits just right. Bringing riders efficient power transfer paired with premium Boa Li2 dials and a seamless TPU &amp; mesh upper makes the Torch 3.0 the perfect fit for every ride.</p>', array['torch-3-0-road-shoes/1.jpg', 'torch-3-0-road-shoes/2.jpg', 'torch-3-0-road-shoes/3.jpg', 'torch-3-0-road-shoes/4.jpg', 'torch-3-0-road-shoes/5.jpg']::text[], 'new', 14, '2024-09-03'::date, false, false),

  -- ---- shoes · shoe-accessories ----
  ('castelli-aero-race-shoecover', 'Castelli Aero Race Shoecover', 'castelli', 'shoes', 'shoe-accessories', '<p>For the days when you just want to keep the wind and rain out without any extra bulk. The thin, stretchy fabric forms to the shoe for a perfect, aero fit while blocking the wind and wet.</p>
<p><br></p>
<h3><strong>Product features</strong></h3>
<p><br><br></p>
<ul>
<li>Waterproof non-insulated aero bootie for cool and wet conditions</li>
</ul>
<p><br></p>
<ul>
<li>Waterproof PU-coated stretch fabric</li>
</ul>
<p><br></p>
<ul>
<li>Silicone bead at inside top of cuff to seal water out</li>
</ul>
<p><br></p>
<ul>
<li>Waterproof zipper</li>
</ul>
<p><br></p>
<ul>
<li>High-durability material under foot</li>
</ul>
<p><br><br></p>
<h3><strong>Technical Features</strong></h3>
<p><br><br></p>
<ul>
<li>Insulation: <strong>2/5</strong>
</li>
</ul>
<p><br></p>
<ul>
<li>Waterproofness: <strong>4/5</strong>
</li>
</ul>
<p><br></p>
<ul>
<li>Windproofness: <strong>4/5</strong>
</li>
</ul>
<p><br></p>
<ul>
<li>Breathability: <strong>3/5</strong>
</li>
</ul>
<p><br></p>
<ul>
<li>Lightness: <strong>5/5</strong>
</li>
</ul>
<p><br><br><br></p>
<ul>
<li>Weight: <strong>108gm</strong>
</li>
</ul>
<p><br></p>
<ul>
<li>Temperature: <strong>10°C - 18°C / 50°F - 64°F</strong>
</li>
</ul>
<p><br></p>
<ul>
<li>Fit: <strong>Race</strong>
</li>
</ul>
<p><br><br></p>
<p><strong>LESS IS MORE</strong> Sometimes less is more. The pros asked for a shoecover that was just enough to keep the wind out and as much rain as possible with no extra bulk or weight. We stripped out all the extra bells and whistles while still making a piece of kit that works. The fabric stretches to form to your shoe and blocks out the wind and wet. A silicone gripper inside the top of the cuff seals out water while keeping the bootie in place, and a long zipper makes for easy on and off. We''ve also added a high-durability fabric to the bottom of the bootie. It''s an aero shoecover that blocks out wind and wet.</p>', array['castelli-aero-race-shoecover/1.jpg', 'castelli-aero-race-shoecover/2.jpg', 'castelli-aero-race-shoecover/3.webp']::text[], 'new', 5, '2024-06-20'::date, false, false),
  ('castelli-entrata-shoecover', 'Castelli Entrata Shoecover', 'castelli', 'shoes', 'shoe-accessories', '<p>Wind and splash protection with fleece insulation keep the Entrata functional and simple, and your feet warm.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Warmth and protection for cold weather riding conditions</li>
<br><li>4 way stretch fabric with DWR and fleece backer</li>
<br><li>Molded center stretch panel allows easy flexing at ankle</li>
<br><li>Neoprene cuff for optimal fit</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>3/5</strong>
</li>
<br><li>Waterproofness: <strong>3/5</strong>
</li>
<br><li>Windproofness: <strong>4/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>117gm</strong>
</li>
<br><li>Temperature: <strong>4°C - 14°C / 39°F - 57°F</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul><br><p><strong>REFINED SIMPLICITY.</strong> The Entrata simply checks the boxes: it''s 4-way stretch means it''s easy to pull on, it''s fleece offers additional warmth on those chilly mornings, and it''s large neoprene cuff will keep the elements at bay. Check, check, and check, what more do you need in a bootie?</p>', array['castelli-entrata-shoecover/1.jpg', 'castelli-entrata-shoecover/2.png', 'castelli-entrata-shoecover/3.png', 'castelli-entrata-shoecover/4.png']::text[], 'new', 3, '2023-09-05'::date, false, false),
  ('castelli-espresso-shoecover', 'CASTELLI ESPRESSO SHOECOVER', 'castelli', 'shoes', 'shoe-accessories', '<p>The go-to shoecover for most cool to cold days out on the bike. The GORE-TEX INFINIUM™ WINDSTOPPER® fabric lets moisture escape, keeps heat in, and sheds light rain and road spray. The stretch in the neoprene on the back allows the shoecover to fit perfectly.</p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 4/5</p>
<p>Waterproofness 4/5</p>
<p>Windproofness 5/5</p>
<p>Breathability 3/5</p>
<p>Lightness 3/5</p>
<ul>
<li>Weight:173<em> g</em>
</li>
<li>Temperature:0°C - 14°C / 42°F - 57°F</li>
<li>Fit:Regular</li>
</ul>

<p>PRODUCT FEATURES</p>
<p>GORE-TEX INFINIUM™ WINDSTOPPER® fabric keeps wind out and heat in</p>
<p>Easy-sliding YKK® zipper for easy on/off</p>
<p>Reflective pull at heel for increased visibility and easy on/off</p>
<p>Neoprene panel at back ensures perfect, comfortable fit</p>', array['castelli-espresso-shoecover/1.webp', 'castelli-espresso-shoecover/2.webp', 'castelli-espresso-shoecover/3.webp']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('castelli-fast-feet-2-tt-shoecover', 'Castelli Fast Feet 2 TT Shoecover', 'castelli', 'shoes', 'shoe-accessories', '<p>The fastest covering for your feet, for the high speeds of time trialing.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Castelli''s Fast Feet project — for time trials</li>
<br><li>Extensively tested to be the fastest foot covering for time trialing</li>
<br><li>Silicone-coated fabric over the shoe smooths out airflow</li>
<br><li>Engineered grooved Lycra® on ankle portion helps detach airflow</li>
<br><li>Flat polyurethane tape at top to keep shoecover in place</li>
<br>
</ul><br><h3><strong>Technical features</strong></h3><br><ul>
<br><li>Weight: <strong>90gm</strong>
</li>
<br><li>Temperature: <strong>10°C - 30°C / 50°F - 86°F</strong>
</li>
<br><li>Fit: <strong>Aero</strong>
</li>
<br>
</ul><br><p>Now even faster, the Fast Feet 2 TT Shoecover is the fastest foot covering for efforts against the clock. This shoecover was designed based on extensive modeling of the different aero demands of the foot and lower leg, followed by cylinder testing to identify the ideal shapes, and then extensive dynamic wind tunnel testing to fine-tune the fastest foot covering available.</p>', array['castelli-fast-feet-2-tt-shoecover/1.jpg', 'castelli-fast-feet-2-tt-shoecover/2.png', 'castelli-fast-feet-2-tt-shoecover/3.png']::text[], 'new', 0, '2023-06-27'::date, false, false)
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
