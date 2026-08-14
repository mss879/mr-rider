-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 2 OF 10
--
-- Products 1-200 of 1423 (accessories, apparel).
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
  -- ---- accessories · bags-storage ----
  ('castelli-dry-bag-undersaddle-mini', 'Castelli Dry Bag Undersaddle Mini', 'castelli', 'accessories', 'bags-storage', '<h3><strong>Product features</strong></h3><br><ul>
<br><li>Water and stain resistant materials</li>
<br><li>Water resistant zipper</li>
<br><li>Water resistant construction</li>
<br><li>Adjustable hook and loop attachment strap</li>
<br><li>Internal storage pocket</li>
<br><li>Reflective accents</li>
<br>
</ul><br><ul>
<br><li>External dimensions: <strong>5cm x 5cm x 13cm</strong>
</li>
<br><li>Weight: <strong>81gm</strong>
</li>
<br>
</ul>', array['castelli-dry-bag-undersaddle-mini/1.jpg']::text[], 'new', 1, '2022-06-01'::date, false, false),
  ('castelli-dry-bag-undersaddle-xl', 'Castelli Dry Bag Undersaddle XL', 'castelli', 'accessories', 'bags-storage', '<h3><strong>Product features</strong></h3><br><ul>
<br><li>Water and stain resistant materials</li>
<br><li>Water resistant zipper</li>
<br><li>Water resistant construction</li>
<br><li>Adjustable hook and loop attachment straps</li>
<br><li>External mini pump sleeve</li>
<br><li>Internal storage pocket</li>
<br><li>Reflective accents</li>
<br>
</ul><br><ul>
<br><li>External dimensions: <strong>6cm x 15cm x 6cm</strong>
</li>
<br><li>Weight: <strong>81gm</strong>
</li>
<br>
</ul>', array['castelli-dry-bag-undersaddle-xl/1.jpg']::text[], 'new', 1, '2022-06-01'::date, false, false),
  ('fizik-saddle-bag', 'Fizik Saddle Bag', 'fizik', 'accessories', 'bags-storage', '<p>DURABLE PROTECTION</p>
<p>This fizik saddle bag is made from durable, PU-coated polyester featuring a water-repellent zip that, combined with welded seams, protects its contents from the outside elements.</p>
<p>RIDE READY</p>
<p>Fitting snugly to the underside of the saddle thanks to its velcro strap, this bag is designed to carry an inner tube, co2 cartridge + inflator, tire levers and a multitool, with an interior mesh pocket added to keep its contents tightly packed and well-organised.</p>', array['fizik-saddle-bag/1.jpg', 'fizik-saddle-bag/2.jpg', 'fizik-saddle-bag/3.jpg', 'fizik-saddle-bag/4.jpg']::text[], 'new', 0, '2021-08-25'::date, false, false),
  ('lezynemicrocaddysaddlebag', 'Lezyne Micro Caddy Saddle Bag', 'lezyne', 'accessories', 'bags-storage', 'Compact, aero-shaped saddle bag. Large elastic nylon strap secures caddy to the seat rails. Durable woven nylon construction. Labeled internal organizational pockets. External, quick access multi-tool sleeve. Water resistant zipper with large pull loop. Color options of high contrast red/black or black only.

Micro Caddy S: Fits one small tube, plus some small repair accessories. External pocket fits one small multi tool.

Micro Caddy M: Fits one medium or two small tubes, plus some extra repair accessories (depending on tube size). External pocket fits one medium multi tool.

Micro Caddy XL: Fits one large tube, or two medium tubes, plus some extra repair accessories (depending on tube size). External pocket fits one medium multi tool.', array['lezynemicrocaddysaddlebag/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('topeak-aero-wedge-pack', 'Topeak Aero Wedge Pack', 'topeak', 'accessories', 'bags-storage', '<h4>DESCRIPTION:</h4>

Aerodynamic seat bag holds tubes, tools and other repair items. Mounts with our innovative Quick Release Buckle system to fit all railed saddles. Four sizes offered to exactly fit rider’s needs.

<table>
<tbody>
<tr>
<td>ADDED FEATURES</td>
<td>3M™ reflective strip, Safety light clip<br>* 3M™ is a registered trademark of 3M Company.</td>
</tr>
<tr>
<td>BAG ATTACHMENT</td>
<td>Nylon straps / Buckle</td>
</tr>
<tr>
<td>CAPACITY</td>
<td>0.41 L / 25 ci (Micro)<br>0.66 L / 40 ci (Small)<br>0.98 - 1.31 L / 60 - 80 ci (Medium)<br>1.48 - 1.97 L / 90 - 120 ci (Large)</td>
</tr>
<tr>
<td>EXPANDING</td>
<td>Medium, large sizes</td>
</tr>
<tr>
<td>MATERIAL</td>
<td>1200 denier polyester</td>
</tr>
<tr>
<td>SEATPOST DIAMETER</td>
<td>Fits ø27.2 - ø34.9 mm</td>
</tr>
<tr>
<td>SIZE</td>
<td>16 x 8 x 7.5 cm / 6.3” x 3.1” x 2.9” (Micro)<br>18 x 11 x 8.5 cm / 7.1” x 4.3” x 3.3” (Small)<br>20 x 12 x 11 cm / 7.9” x 4.7” x 4.3” (Medium)<br>23 x 14 x 13 cm / 9.1” x 5.5” x 5.1” (Large)</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>85 g / 2.99 oz (Micro)<br>100 g / 3.52 oz (Small)<br>130 g / 4.58 oz (Medium)<br>165 g / 5.81 oz (Large)</td>
</tr>
</tbody>
</table>', array['topeak-aero-wedge-pack/1.jpg', 'topeak-aero-wedge-pack/2.jpg', 'topeak-aero-wedge-pack/3.jpg', 'topeak-aero-wedge-pack/4.jpg', 'topeak-aero-wedge-pack/5.jpg']::text[], 'new', 4, '2021-08-25'::date, false, false),
  ('topeak-burrito-weatherproof', 'Topeak Burrito Weatherproof', 'topeak', 'accessories', 'bags-storage', '<h4>DESCRIPTION:</h4>

A compact roll-up with three compartments and internal organizers to keep gear and small items neatly in place. The durable water repellent and stain resistant coating keeps contents dry and cleans up easily. Secure strap provides tool-free mounting to frame tube, seat post or to saddle rails.

<table>
<tbody>
<tr>
<td>COMPARTMENTS</td>
<td>3</td>
</tr>
<tr>
<td>MATERIAL</td>
<td>Polyethylene / Engineering grade polymer. Durable water repellent and stain resistant coating.</td>
</tr>
<tr>
<td>COMPATIBILITY</td>
<td>Fits inner tube sizes -26” x 1.75 - 29” x 19/2.35 and 700c. <br>Topeak CO2 inflater, CO2 cartridges, Tire levers</td>
</tr>
<tr>
<td>BAG ATTACHMENT</td>
<td>Secure strap</td>
</tr>
<tr>
<td>MOUNT</td>
<td>Saddle rails, Underneath top tube</td>
</tr>
<tr>
<td>SIZE</td>
<td>15 x 10.5 x 2 cm / 5.9” x 4.1” x 0.8”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>91 g / 3.21 oz</td>
</tr>
</tbody>
</table>', array['topeak-burrito-weatherproof/1.jpg', 'topeak-burrito-weatherproof/2.jpg', 'topeak-burrito-weatherproof/3.jpg', 'topeak-burrito-weatherproof/4.jpg', 'topeak-burrito-weatherproof/5.jpg']::text[], 'new', 1, '2021-08-25'::date, false, false),
  ('topeak-fastfuel-bolt-on', 'TOPEAK FASTFUEL BOLT-ON', 'topeak', 'accessories', 'bags-storage', '<h3>DESCRIPTION</h3>

<p>Compact and padded top tube bag for any bike or top tube with built-in water bottle bosses. The wide-open water bottle bolt slots provide the proper fit adjuments for different bike frame sizes and provides quick and convenient access to energy bars, gels, or other energy items you need on a ride.</p>

<p>Note: Sand, dirt, mud, etc., and bags that are incorrectly pack may cause the bike frame paint in contact areas become dull or scratched over time. To avoid any potential damage, you should protect the frame or rack with foam covering or protective film before attaching bags or panniers.</p>
<table>
<tbody>
<tr>
<td>CAPACITY</td>
<td>0.5 L</td>
</tr>
<tr>
<td>COMPARTMENT</td>
<td>one main</td>
</tr>
<tr>
<td>MATERIAL</td>
<td>500D Polyester/ PU leather / TPE / Engineering grade polymer</td>
</tr>
<tr>
<td>BAG ATTACHMENT</td>
<td>Option 1 - Top tube frame mount with integrated bosses<br>Option 2 - Straps on frame top tube</td>
</tr>
<tr>
<td>TOP TUBE DIAMETER</td>
<td>Fits ø35 - ø75 mm</td>
</tr>
<tr>
<td>HEAD TUBE DIAMETER</td>
<td>Fits ø30 - ø50 mm</td>
</tr>
<tr>
<td>SIZE</td>
<td>18.7 x 8.2 x 4 cm / 7.4" x 3.2" x 1.6"</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>70 g / 2.47 oz</td>
</tr>
<tr></tr>
</tbody>
</table>', array['topeak-fastfuel-bolt-on/1.webp', 'topeak-fastfuel-bolt-on/2.webp']::text[], 'new', 0, '2024-11-18'::date, false, false),
  ('topeak-saddle-pack-survival-tool-wedge-ii-14-tools', 'Topeak Saddle Pack Survival Tool Wedge II 14 Tools', 'topeak', 'accessories', 'bags-storage', '<h4>DESCRIPTION:</h4>

<p>Features durable 1000 denier, wrap around zipper, extra long 3M™ reflective strip for added safety at night and a zippered expanding main compartment for added storage. Mounts and removes quickly with our innovative QuickClick® system.</p>
<p>13 function tool kit Includes 2, 3, 4, 5 &amp; 6mm Allen wrenches, T25 Torx® wrench, Phillips screw driver, 8 &amp; 10 mm open wrenches, universal chain tool* with chain hook, 2 tire levers &amp; a glueless patch kit.</p>

<p>* The chain tool is compatible with single and multi-speed chains up to 12 speed, NOT including Campagnolo® hollow pin chains.</p>

<table>
<tbody>
<tr>
<td>ADDED FEATURES</td>
<td>17 piece tool kit, 3M™ reflective strip<br>Safety light clip, Rain Cover<br>* 3M™ is a registered trademark of 3M Company.</td>
</tr>
<tr>
<td>BAG ATTACHMENT</td>
<td>QuickClick® (F25) w/ seatpost strap</td>
</tr>
<tr>
<td>CAPACITY</td>
<td>0.95 - 1.25 L / 58 - 76 ci</td>
</tr>
<tr>
<td>EXPANDING</td>
<td>Yes</td>
</tr>
<tr>
<td>MATERIAL</td>
<td>1000 denier nylon</td>
</tr>
<tr>
<td>SEATPOST DIAMETER</td>
<td>Fits ø25.4 - ø34.9 mm</td>
</tr>
<tr>
<td>SIZE</td>
<td>16.5 x 12.3 x 10.5 cm / 6.5” x 4.8” x 4.1”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>445 g / 15.66 oz</td>
</tr>
</tbody>
</table>', array['topeak-saddle-pack-survival-tool-wedge-ii-14-tools/1.jpg', 'topeak-saddle-pack-survival-tool-wedge-ii-14-tools/2.jpg', 'topeak-saddle-pack-survival-tool-wedge-ii-14-tools/3.jpg']::text[], 'new', 1, '2021-08-25'::date, false, false),
  ('topeak-tubular-barbag-1', 'Topeak Tubular Barbag', 'topeak', 'accessories', 'bags-storage', '<p>A stylish handlebar duffle features full-length zipper for easy access and is perfect for short trips to carry anything you could need for several hours in the city or on some nearby trails.</p> <table> <tbody> <tr> <td><strong>COMPARTMENT</strong></td> <td>one main, two side mesh pockets</td> </tr> <tr> <td><strong>CAPACITY</strong></td> <td>3.8 L</td> </tr> <tr> <td><strong>MATERIAL</strong></td> <td>600D Polyester, water repellent and stain resistant</td> </tr> <tr> <td><strong>BAG ATTACHMENT</strong></td> <td>Two anti-slip straps and one elastic cord</td> </tr> <tr> <td><strong>MOUNT</strong></td> <td>ø30-ø55 mm handlebars</td> </tr> <tr> <td><strong>HEAD TUBE DIAMETER</strong></td> <td>ø35-ø100 mm</td> </tr> <tr> <td><strong>MAX LOAD</strong></td> <td>3 kg</td> </tr> <tr> <td><strong>SIZE</strong></td> <td>23 x ø14 cm</td> </tr> <tr> <td><strong>WEIGHT</strong></td> <td>258 g</td> </tr> </tbody> </table> <h3><strong>FLEXIBLE MOUNTING OPTIONS</strong></h3> <p>with elastic cord &amp; Molle-compatible strap</p> <h3><strong>TWO SIDE MESH POCKETS</strong></h3> <p>Adds convenience when grabbing energy bars, gels, or other energy items</p> <h3><strong>MOLLE-COMPATIBLE STRAP</strong></h3> <p>Adds the flexibility of mounting on different frame sizes</p> <p>Quickly mounts on handlebar with two anti-slip straps and one elastic cord for security</p>', array['topeak-tubular-barbag-1/1.png', 'topeak-tubular-barbag-1/2.jpg', 'topeak-tubular-barbag-1/3.jpg', 'topeak-tubular-barbag-1/4.jpg', 'topeak-tubular-barbag-1/5.jpg']::text[], 'new', 1, '2025-08-19'::date, false, false),
  ('topeak-wedge-drybag-2', 'Topeak Wedge Drybag Small', 'topeak', 'accessories', 'bags-storage', '<h4>DESCRIPTION:</h4>

Protect your gear while riding in wet, nasty conditions. Constructed from a tough, sonically welded and seam sealed waterproof material. Mounts with our innovative Quick Release Buckle system to fit all railed saddles.
 

<table>
<tbody>
<tr>
<td>INSULATION</td>
<td>Semi-rigid EVA foam</td>
</tr>
<tr>
<td>ATTACHMENT</td>
<td>Nylon straps / Buckle</td>
</tr>
<tr>
<td>CAPACITY</td>
<td>0.6 L / 36 ci (Small)<br>1 L / 61 ci (Medium)<br>1.5 L / 91.5 ci (Large)</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>140 g / 4.93 oz (Small)<br>170 g / 5.98 oz (Medium)<br>245 g / 8.62 oz (Large)</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Safety light clip, Reflective printing</td>
</tr>
<tr>
<td>SEATPOST DIAMETER</td>
<td>Fits ø25.4 - ø34.9 mm</td>
</tr>
<tr>
<td>SIZE</td>
<td>15 x 9 x 9 cm / 5.9” x 3.5” x 3.5” (Small)<br>18.5 x 11.5 x 11 cm / 6.9” x 4.5” x 4.3” (Medium)<br>23 x 13 x 11 cm / 9.1” x 5.1” x 4.3” (Large)</td>
</tr>
<tr>
<td>MATERIAL</td>
<td>210 denier / 420 denier nylon waterproof fabric sonically welded seams</td>
</tr>
</tbody>
</table>', array['topeak-wedge-drybag-2/1.jpg', 'topeak-wedge-drybag-2/2.jpg', 'topeak-wedge-drybag-2/3.jpg', 'topeak-wedge-drybag-2/4.jpg']::text[], 'new', 1, '2021-09-07'::date, false, false),
  ('topeak-wedge-pack-ii-3', 'Topeak Wedge Pack II Small', 'topeak', 'accessories', 'bags-storage', '<h4>DESCRIPTION:</h4>

Features durable 1000 denier, wrap around zipper and extra long 3M™ reflective strip for added safety at night. Mounts and removes quickly with our innovative QuickClick® system. Four sizes offered to exactly fit rider’s needs.
 

<table>
<tbody>
<tr>
<td>ADDED FEATURES</td>
<td>3M™ reflective strip, Safety light clip<br>Rain cover for Small, Medium &amp; Large sizes<br>* 3M™ is a registered trademark of 3M Company.</td>
</tr>
<tr>
<td>BAG ATTACHMENT</td>
<td>QuickClick® (F25) w/ seatpost strap</td>
</tr>
<tr>
<td>CAPACITY</td>
<td>0.5 L / 30 ci (Micro) <br>0.8 L / 50 ci (Small) <br>0.95 - 1.25 L / 58 - 76 ci Medium) <br>1.25 - 1.65 L / 76 - 100 ci (Large)</td>
</tr>
<tr>
<td>EXPANDING</td>
<td>Medium &amp; Large sizes</td>
</tr>
<tr>
<td>MATERIAL</td>
<td>1000 denier nylon</td>
</tr>
<tr>
<td>SEATPOST DIAMETER</td>
<td>Fits ø25.4 - ø34.9 mm (Small, Medium &amp; Large sizes)</td>
</tr>
<tr>
<td>SIZE</td>
<td>12.5 x 9.5 x 8.5 cm / 4.9” x 3.7” x 3.3” (Micro)<br>16.5 x 11.8 x 10.5 cm /6.5” x 4.6” x 4.1” (Small)<br>16.5 x 12.3 x 10.5 cm /6.5” x 4.8” x 4.1” (Medium)<br>18.5 x 13 x 11.5 cm /7.3” x 5.1” x 4.5” (Large)</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>77 g / 2.71 oz (Micro) <br>135 g / 4.75 oz (Small) <br>152 g / 5.35 oz (Medium) <br>183 g / 6.44 oz (Large)</td>
</tr>
</tbody>
</table>', array['topeak-wedge-pack-ii-3/1.jpg', 'topeak-wedge-pack-ii-3/2.jpg', 'topeak-wedge-pack-ii-3/3.jpg', 'topeak-wedge-pack-ii-3/4.jpg', 'topeak-wedge-pack-ii-3/5.jpg']::text[], 'new', 1, '2021-09-07'::date, false, false),
  ('ulac-handlebar-bag-15l-with-carabiner', 'ULAC Handlebar Bag 1.5L with Carabiner', 'ulac', 'accessories', 'bags-storage', '<p>Designed for Road and MTB Racers, the Neo Porter Coursier Sprint offers 1.5L of space, which is ideal for a windbreaker, spare tube, mobile phone and other essentials.<br><br>Like all in our Coursier Collection, the Coursier Sprint comes with front eyelets as well as a multipurpose karabiner. You can utilize the eyelets for sunglasses, bike lights, small bike locks, etc.<br><br>Neo Porter Coursier utilizes water-resistant technical fabric and YKK zipper for all weather and road conditions. Like all our bag collections, the Neo Porter Coursier comes with 2 velcros and 1 multistrap for extra stabilization.</p>
<p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing. *Please make sure there is a minimum 120mm clearance between handlebars and tire. </strong></p>
<p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p>
<h4><strong>SPECIALITY</strong></h4>
<ul>
<li>Lightweight of 170g. = 0.37lbs</li>
<li>Fits most Bikes and E-Bikes</li>
<li>Attaches perfectly on Handlebar</li>
<li>Water-resistant fabric</li>
<li>Soft touch / Scratch free</li>
<li>Padded protection</li>
<li>Front eyelet</li>
<li>Removable shoulder strap</li>
<li>Complimentary karabiner</li>
</ul>
<h4><strong>SPEC</strong></h4>
<ul>
<li>Size: 180mm (W) x 100mm (R) </li>
<li>Weight: 170g = 0.37lbs</li>
<li>Capacity: 1.5L</li>
<li>Material: Main fabric: Nylon</li>
</ul>
<p><strong><em>Please check the specs before purchasing</em></strong></p>
<h4><strong>ACCESSORIES</strong></h4>
<ul>
<li>Karabiner</li>
<li>Shoulder strap</li>
</ul>', array['ulac-handlebar-bag-15l-with-carabiner/1.jpg', 'ulac-handlebar-bag-15l-with-carabiner/2.jpg', 'ulac-handlebar-bag-15l-with-carabiner/3.jpg', 'ulac-handlebar-bag-15l-with-carabiner/4.webp', 'ulac-handlebar-bag-15l-with-carabiner/5.webp']::text[], 'new', 0, '2022-12-13'::date, false, false),
  ('ulac-handlebar-roll-bag-11l-with-carabiner', 'ULAC Handlebar Roll Bag 1.1L with Carabiner', 'ulac', 'accessories', 'bags-storage', '<p>Pure cycling sports focused. The Coursier Pulse is rather condensed compared to the rest of the Coursier family and offers 1.1 liters of space. But make no mistake, the bag is purpose designed for quick sports or a city ride.<br><br>To maintain the Coursier design tradition, the Coursier Pulse also offers side eyelets and a karabiner for various applications / uses.<br><br>Neo Porter Coursier utilizes water-resistant technical fabric and YKK zipper for all weather and road conditions. Like all our bag collections, the Neo Porter Coursier comes with 2 velcros and 1 multistrap for extra stabilization.</p>
<p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing. *Please make sure there is a minimum 120mm clearance between handlebars and tire. </strong></p>
<p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p>
<h4><strong>SPECIALITY</strong></h4>
<ul>
<li>Lightweight of 130g. = 0.28lbs</li>
<li>Fits most Bikes and E-Bikes</li>
<li>Attaches perfectly on Handlebar</li>
<li>Water-resistant fabric</li>
<li>Soft touch / Scratch free</li>
<li>Padded protection</li>
<li>Side eyelet</li>
<li>Removable shoulder strap</li>
<li>Complimentary karabiner</li>
</ul>
<h4><strong>SPEC</strong></h4>
<ul>
<li>Size: 170mm (W) x 90mm (R)</li>
<li>Weight: 130g = 0.28lbs</li>
<li>Capacity: 1.1L</li>
<li>Material: Main fabric: Nylon</li>
</ul>
<p><strong><em>Please check the specs before purchasing</em></strong></p>
<h4><strong>ACCESSORIES</strong></h4>
<ul>
<li>Karabiner</li>
<li>Shoulder strap</li>
</ul>', array['ulac-handlebar-roll-bag-11l-with-carabiner/1.jpg', 'ulac-handlebar-roll-bag-11l-with-carabiner/2.jpg', 'ulac-handlebar-roll-bag-11l-with-carabiner/3.jpg', 'ulac-handlebar-roll-bag-11l-with-carabiner/4.jpg', 'ulac-handlebar-roll-bag-11l-with-carabiner/5.jpg']::text[], 'new', 0, '2022-12-13'::date, false, false),
  ('ulac-neo-porter-coursier-gt-max-handlebar-roll-4-2l', 'ULAC Neo Porter Coursier GT Max Handlebar Roll 4.2L', 'ulac', 'accessories', 'bags-storage', '<p>The biggest of the Coursierpak family! The Coursier GT Max comes with all-waterproof materials as well as a spacious 4.2 liters volume, which will definitely fit all the cycling essentials. In addition to the capacity and the standard pockets, we have included an extra pocket on the top for quick mobile phone access. Moreover, we also integrated a set of elastic bands to store items such as a windbreaker, sunglasses or umbrella.</p>

<p>On top of all, we have designed the bag in a way that you wouldn’t need a rack to support and still maintain a perfect balance while riding.</p>

<p>In terms of details, we’ve also equipped the bag with a double zipper for easier, quicker access. Better yet, inside the bag, we have included a small waterproof wallet, just in case you need to store cards, coins and change to take with you.</p>

<p>As always, all Coursier bags come with a complimentary karabiner for versatile applications.<br><br>Coursier Max comes with 3 velcros and 1 multistrap for extra stabilization.</p>

<p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing.  </strong></p>

<p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p>
<p><br><br></p>
<ul>
<li>Weighs 435g. = 0.95lbs</li>
</ul>

<ul>
<li>Fits most Bikes and E-Bikes</li>
</ul>

<ul>
<li>Water-resistant zipper</li>
</ul>

<ul>
<li>Attaches perfectly to Handlebar</li>
</ul>

<ul>
<li>Padded protection</li>
</ul>

<ul>
<li>Waterproof fabric</li>
</ul>

<ul>
<li>Soft touch / Scratch free</li>
</ul>

<ul>
<li>Front eyelet</li>
</ul>

<ul>
<li>Small inside pocket</li>
</ul>

<ul>
<li>Complimentary waterproof wallet</li>
</ul>

<ul>
<li>Complimentary karabiner</li>
</ul>

<ul>
<li>Quick-access top mesh pocket</li>
</ul>

<ul>
<li>Elastic bands for windbreaker</li>
</ul>

<ul>
<li>Karabiner </li>
</ul>

<ul>
<li>Wallet</li>
</ul>
<p><br><br><br></p>
<ul>
<li>
<strong>Main bag:</strong> 260 x 125 x 160mm</li>
</ul>

<ul>
<li>
<strong>Small wallet:</strong> 155 x 105mm</li>
</ul>

<ul>
<li>
<strong>Weight:</strong> 435g. = 0.95lbs</li>
</ul>

<ul>
<li>
<strong>Capacity:</strong> 4.2L</li>
</ul>

<ul>
<li>
<strong>Main fabric:</strong> Waterproof nylon + polyester </li>
</ul>
<p><br><br></p>
<p><strong><em>Please check the specs before purchasing</em></strong></p>

<p><strong><em></em></strong></p>', array['ulac-neo-porter-coursier-gt-max-handlebar-roll-4-2l/1.png', 'ulac-neo-porter-coursier-gt-max-handlebar-roll-4-2l/2.png', 'ulac-neo-porter-coursier-gt-max-handlebar-roll-4-2l/3.png', 'ulac-neo-porter-coursier-gt-max-handlebar-roll-4-2l/4.png', 'ulac-neo-porter-coursier-gt-max-handlebar-roll-4-2l/5.png']::text[], 'new', 2, '2024-09-11'::date, false, false),
  ('ulac-neo-porter-coursier-gt-pro-handlebar-roll-3-8l', 'ULAC Neo Porter Coursier GT Pro Handlebar Roll 3.8L', 'ulac', 'accessories', 'bags-storage', '<p>Following the design language of the OG Coursier, the Coursier GT PRO is now upgraded, not just with advanced waterproof material, but also a massive capacity of 3.8L. In addition, you can utilize the front multistrap for a pump or windbreaker.</p>

<p>The Coursier GT PRO is designed for seasoned bikepackers who have high expectations of durability (material) and longevity (volume). This handlebar bag is definitely suitable for a longer bikepacking trip!</p>

<p>Like all in our Coursier Collection, the Coursier GT PRO comes with front eyelets and a multipurpose triangular karabiner. You can utilize the eyelets for sunglasses, bike lights, small bike locks, etc.</p>

<p>Coursier GT PRO comes with 2 velcros and 1 multistrap for extra stabilization.</p>

<p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing.  </strong></p>

<p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p>
<p><br><br></p>
<ul>
<li>Lightweight of 290g. = 0.63lbs.</li>
</ul>

<ul>
<li>Fits most Bikes and E-Bikes</li>
</ul>

<ul>
<li>Water-resistant zipper</li>
</ul>

<ul>
<li>Attaches perfectly to Handlebar</li>
</ul>

<ul>
<li>Padded protection</li>
</ul>

<ul>
<li>Waterproof fabric</li>
</ul>

<ul>
<li>Soft touch / Scratch free</li>
</ul>

<ul>
<li>Front eyelet</li>
</ul>

<ul>
<li>Complimentary karabiner</li>
</ul>

<ul>
<li>Quick-access side mesh pockets</li>
</ul>

<ul>
<li>Elastic bands for windbreaker</li>
</ul>

<ul>
<li>Shoulder strap</li>
</ul>

<ul>
<li>Karabiner </li>
</ul>

<ul>
<li>Shoulder Strap</li>
</ul>
<p><br><br><br></p>
<ul>
<li>Size: 240mm (W) x 140mm (R)</li>
</ul>

<ul>
<li>Weight: 290g. = 0.63lbs</li>
</ul>

<ul>
<li>Capacity: 3.8L</li>
</ul>

<ul>
<li>Main fabric: Waterproof nylon + polyester </li>
</ul>
<p><br><br></p>
<p><strong><em>Please check the specs before purchasing</em></strong></p>

<p><strong><em></em></strong></p>', array['ulac-neo-porter-coursier-gt-pro-handlebar-roll-3-8l/1.png', 'ulac-neo-porter-coursier-gt-pro-handlebar-roll-3-8l/2.png', 'ulac-neo-porter-coursier-gt-pro-handlebar-roll-3-8l/3.png', 'ulac-neo-porter-coursier-gt-pro-handlebar-roll-3-8l/4.png', 'ulac-neo-porter-coursier-gt-pro-handlebar-roll-3-8l/5.png']::text[], 'new', 2, '2024-09-11'::date, false, false),
  ('ulac-neo-porter-coursier-handlebar-roll-2-7l', 'ULAC Neo Porter Coursier Handlebar Roll 2.7L', 'ulac', 'accessories', 'bags-storage', '<p>UlaDesigned with city commuters in mind, the Neo Porter Coursier provides a spacious yet lightweight (2.7 liter) bag perfect for a bikepacking trip. It will fit all your essentials such as multitools, snacks, and even windbreakers.<br><br>In addition, the front eyelets will accommodate your bike lights and sunglasses, and we have integrated a handy karabiner for versatile applications. It comes with a shoulder strap for easy transport.<br><br>Neo Porter Coursier utilizes water-resistant technical fabric and YKK zipper for all weather and road conditions. Like all our bag collections, the Neo Porter Coursier comes with 2 velcros and 1 multistrap for extra stabilization.</p>
<p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing. *Please make sure there is a minimum 120mm clearance between handlebars and tire. </strong></p>
<p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p>
<h4><strong>Speciality</strong></h4>
<ul>
<li>Lightweight of 190g. = 0.4lbs</li>
<li>Fits most Bikes and E-Bikes</li>
<li>Attaches perfectly on Handlebar</li>
<li>Water-resistant fabric</li>
<li>Soft touch / Scratch free</li>
<li>Padded protection</li>
<li>Front eyelet</li>
<li>Free shoulder strap</li>
<li>Complimentary karabiner </li>
</ul>
<h4><strong>Spec</strong></h4>
<ul>
<li>Size: 200mm (W) x 120mm (R) </li>
<li>Weight: 190g = 0.4lbs</li>
<li>Capacity: 2.7L</li>
<li>Material: Main fabric: Nylon</li>
</ul>
<p><strong><em>Please check the specs before purchasing</em></strong></p>
<h4><strong>Accessories</strong></h4>
<ul>
<li>Karabiner</li>
<li>Shoulder strap</li>
</ul>', array['ulac-neo-porter-coursier-handlebar-roll-2-7l/1.jpg', 'ulac-neo-porter-coursier-handlebar-roll-2-7l/2.jpg', 'ulac-neo-porter-coursier-handlebar-roll-2-7l/3.jpg', 'ulac-neo-porter-coursier-handlebar-roll-2-7l/4.jpg', 'ulac-neo-porter-coursier-handlebar-roll-2-7l/5.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('ulac-neo-porter-nomadpak-gelande-1-8l', 'ULAC Neo Porter Nomadpak Gelände 1.8L', 'ulac', 'accessories', 'bags-storage', '<p>As the name suggests, the Nomadpak collection of bicycle bags is designed for urban nomads.</p><br><p>Last season, we defined the Nomadpak’s design language, as showcased through our Trekking (Top Tube) and Touring (Frame) bags. This season, we are introducing the Gelände pannier-style top tube bag.</p><br><p>Adapting the Nomadpak Trekking’s exterior design, Gelände offers an even more spacious 1.8 liters, plus the advanced waterproof fabric is definitely capable of commuting, touring, or even hitting the gravel.</p><br><p>For space management, there are two additional pockets on both sides for better access to energy gels, Allen keys or snack bars. On the left pocket we added an extra multiband for securing your mobile phone while you ride. For internal organization, we have included a mesh pocket on both sides.</p><br><p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing.  </strong></p><br><p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p><br><h3><strong>Speciality</strong></h3><br><ul>
<br><li>Lightweight of 260g. = 0.57lbs</li>
<br><li>Fits most Bikes and E-Bikes with two velcros</li>
<br><li>Attaches perfectly on Top Tube</li>
<br><li>Soft touch / Scratch free</li>
<br><li>Padded protection</li>
<br><li>Waterproof fabric</li>
<br><li>Water-resistant zipper</li>
<br><li>External side pocket designed to store mobile phone</li>
<br><li>Small inside mesh pockets</li>
<br>
</ul><br><h3><strong>Spec</strong></h3><br><ul>
<br><li>Size: <strong>210 x 175 x 90mm</strong>
</li>
<br><li>Weight: <strong>225g. = 0.49lbs</strong>
</li>
<br><li>Capacity: <strong>1.8L</strong>
</li>
<br><li>Main fabric: <strong>Waterproof nylon + polyester</strong>
</li>
<br>
</ul><br><p><strong><em>Please check the specs before purchasing</em></strong></p><br><br><p><strong><em></em></strong></p>', array['ulac-neo-porter-nomadpak-gelande-1-8l/1.png', 'ulac-neo-porter-nomadpak-gelande-1-8l/2.png', 'ulac-neo-porter-nomadpak-gelande-1-8l/3.png', 'ulac-neo-porter-nomadpak-gelande-1-8l/4.png']::text[], 'new', 1, '2024-09-10'::date, false, false),
  ('ulac-neo-porter-nomadpak-touring-gt-3-5l', 'ULAC Neo Porter Nomadpak Touring GT 3.5L', 'ulac', 'accessories', 'bags-storage', '<p>The Touring GT is especially designed for bikepackers, offering a massive 3.5L for extended usage / duration. In addition, the Touring GT utilizes an advanced waterproof material giving a light weight of 235 grams. In its exterior design, we managed to preserve the popular Nomadpak design language with both pockets useful for items like energy bars, small tools or even a mobile phone. For stabilization, we offer four velcros so you can decide which mounting method / position fits best according to your bicycle''s geometry.</p><br><p><strong>*Please ensure the fit of the Neo Porter to your frame dimensions before purchasing.  </strong></p><br><p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p><br><ul>
<br><li>Lightweight of 235 = 0.51lbs</li>
<br><li>Fits most Bikes and E-Bikes with four velcros</li>
<br><li>Attaches perfectly on most frame</li>
<br><li>Soft touch / Scratch free</li>
<br><li>Padded protection</li>
<br><li>Waterproof fabric</li>
<br><li>Water-resistant zipper</li>
<br><li>External pockets</li>
<br><li>Two inside mesh pockets</li>
<br><li>Velcro strap x 4</li>
<br>
</ul><br><ul>
<br><li>
<strong>Size:</strong> 400 x 140 x 65mm</li>
<br><li>
<strong>Weight:</strong> 235g. = 0.51lbs</li>
<br><li>
<strong>Capacity:</strong> 3.5L</li>
<br><li>
<strong>Main fabric:</strong> Waterproof nylon + polyester </li>
<br>
</ul><br><p><strong><em>Please check the specs before purchasing</em></strong></p><br><br>', array['ulac-neo-porter-nomadpak-touring-gt-3-5l/1.png', 'ulac-neo-porter-nomadpak-touring-gt-3-5l/2.png', 'ulac-neo-porter-nomadpak-touring-gt-3-5l/3.png', 'ulac-neo-porter-nomadpak-touring-gt-3-5l/4.png', 'ulac-neo-porter-nomadpak-touring-gt-3-5l/5.png']::text[], 'new', 1, '2024-09-11'::date, false, false),
  ('ulac-neo-porter-nomadpak-touring-max-2-2l', 'ULAC Neo Porter Nomadpak Touring Max 2.2L', 'ulac', 'accessories', 'bags-storage', '<p>Designed for longer distance bikepacking / commute, and the larger size of the Nomadpak Family, the Touring Max offers a spacious 2.2 liter capacity. The carefully engineered bag shape will fit perfectly inside the triangle of most bikes. Like the Nomadpak tradition, on top of its 2.2 Liter, we also designed an extra magnetic pocket on the side, which offers quicker access to some of the essentials. For internal organization, we included a mesh pocket, to separate smaller items.</p> <p>For stabilization, we offer four velcros so you can decide which mounting method / position fits best according to your bicycle''s geometry.</p> <p><strong>Nomadpak features a new design with a perimeter utilizing 100% waterproof technical material and a YKK waterproof zipper. </strong></p> <p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing.  </strong></p> <p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p> <ul> <li>Lightweight of 180g. = 0.39lbs</li> <li>Fits most Bikes and E-Bikes</li> <li>Attaches perfectly on most frame</li> <li>Soft touch / Scratch free</li> <li>Padded protection</li> <li>100% Waterproof perimeter</li> <li>Water-resistant techno fabric</li> <li>Weather resistant YKK zip</li> <li>External magnetic pocket</li> <li>Small inside pocket</li> <li>Velcro strap x 4</li> </ul> <p>Size: 320 x 160 x 60mm</p> <p>Weight: 180g. = 0.39lbs</p> <p>Capacity: 2.2L</p> <p>Material: Main fabric: Nylon </p> <p><strong><em>Please check the specs before purchasing</em></strong></p>', array['ulac-neo-porter-nomadpak-touring-max-2-2l/1.jpg', 'ulac-neo-porter-nomadpak-touring-max-2-2l/2.jpg', 'ulac-neo-porter-nomadpak-touring-max-2-2l/3.jpg', 'ulac-neo-porter-nomadpak-touring-max-2-2l/4.jpg', 'ulac-neo-porter-nomadpak-touring-max-2-2l/5.jpg']::text[], 'new', 1, '2024-09-11'::date, false, false),
  ('ulac-neo-porter-nomadpak-touring-pro-1-5l', 'ULAC Neo Porter Nomadpak Touring Pro 1.5L', 'ulac', 'accessories', 'bags-storage', '<p>The Nomadpak Touring Pro frame bag offers an optimal 1.5 liter size, which is ideal for your everyday bike commute. The design of the Touring bag will fit perfectly in the triangle of most bikes and E-bikes. Understanding that volume matters, we designed an additional magnetic pocket on the left side, which provides cyclists faster access to smaller essentials. Moreover, on the inside, we have designed a mesh pocket for better organization.</p> <p>For stabilization, we offer four velcros so you can decide which mounting method / position fits best according to your bicycle''s geometry.</p> <p><strong>Nomadpak features a new design with a perimeter utilizing 100% waterproof technical material and a YKK waterproof zipper. </strong></p> <p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing.  </strong></p> <p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p> <ul> <li>Lightweight of 170g.</li> <li>Fits most Bikes and E-Bikes</li> <li>Attaches perfectly on most frame</li> <li>Soft touch / Scratch free</li> <li>Padded protection</li> <li>100% Waterproof perimeter</li> <li>Water-resistant techno fabric</li> <li>Weather resistant YKK zip</li> <li>External magnetic side pocket</li> <li>Small inside pocket</li> <li>
<strong>Size</strong>: 280 x 130 x 60mm</li> <li>
<strong>Weight</strong>: 170g</li> <li>
<strong>Capacity</strong>: 1.5L</li> <li>
<strong>Material</strong>: Main fabric: Nylon</li> <li>Velcro strap x 4   </li> </ul> <p><strong><em>Please check the specs before purchasing.</em></strong></p> <p><strong><em></em></strong></p>', array['ulac-neo-porter-nomadpak-touring-pro-1-5l/1.jpg', 'ulac-neo-porter-nomadpak-touring-pro-1-5l/2.jpg', 'ulac-neo-porter-nomadpak-touring-pro-1-5l/3.jpg', 'ulac-neo-porter-nomadpak-touring-pro-1-5l/4.jpg', 'ulac-neo-porter-nomadpak-touring-pro-1-5l/5.jpg']::text[], 'new', 2, '2024-09-11'::date, false, false),
  ('ulac-neo-porter-nomadpak-touring-z-1-7l', 'ULAC Neo Porter Nomadpak Touring Z 1.7L', 'ulac', 'accessories', 'bags-storage', '<p>Not too big, not too small, the Touring Z offers 1.7L of space and with its unique triangular shape design it will fit nicely under the frame. The Z features two zippers on one side with the top zipper as the main compartment, and the lower zippered pocket is designed for smaller items such as energy gel, hex tool, or co2 inflator.</p><br><p>On the other side, we have designed a bigger pocket for riders to quickly access items such as a mobile phone or snack bar.</p><br><p>The Touring Z utilizes advanced waterproof fabric, which is definitely suitable for commuting, touring, or even hitting the gravel.</p><br><p><strong>*Please ensure the fit of the Neo Porter to your frame dimensions before purchasing.  </strong></p><br><p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p><br><ul>
<br><li>Lightweight of 199g. = 0.43lbs</li>
<br><li>Fits most Bikes and E-Bikes with three velcros</li>
<br><li>Attaches perfectly on most frame</li>
<br><li>Soft touch / Scratch free</li>
<br><li>Padded protection</li>
<br><li>Waterproof fabric</li>
<br><li>Water-resistant zipper</li>
<br><li>External side pocket designed to store mobile phone</li>
<br><li>Small inside mesh pockets </li>
<br><li>Velcro strap x 3</li>
<br>
</ul><br><ul>
<br><li>
<strong>Size:</strong> 210 x 170 x 65mm</li>
<br><li>
<strong>Weight:</strong> 199g. = 0.43lbs</li>
<br><li>
<strong>Capacity:</strong> 1.7L</li>
<br><li>
<strong>Main fabric:</strong> Waterproof nylon + polyester</li>
<br>
</ul><br><p><strong><em>Please check the specs before purchasing</em></strong></p><br><br><p><strong><em></em></strong></p>', array['ulac-neo-porter-nomadpak-touring-z-1-7l/1.png', 'ulac-neo-porter-nomadpak-touring-z-1-7l/2.png', 'ulac-neo-porter-nomadpak-touring-z-1-7l/3.png', 'ulac-neo-porter-nomadpak-touring-z-1-7l/4.png', 'ulac-neo-porter-nomadpak-touring-z-1-7l/5.png']::text[], 'new', 1, '2024-09-11'::date, false, false),
  ('ulac-neo-porter-nomadpak-trekking-gt-1-0l', 'ULAC Neo Porter Nomadpak Trekking GT 1.0L', 'ulac', 'accessories', 'bags-storage', '<p>The Trekking GT is a whole different ball game than the rest of the Nomadpak family. The GT utilizes a more advanced waterproof fabric for reduced weight (110g.). In terms of the exterior design, we''ve maintained the classic Nomadpak design language, with pockets on both sides you can use to store as many energy gels for time trials. We''ve also tweaked the form a bit to be more aerodynamic while still offering an adequate 1L of space.</p><br><p>For stabilization, we offer three velcros so you can decide which mounting method / position fits best according to your bicycle''s geometry.</p><br><p>In addition to the standard velcros, the GT also comes with water bottle bolt slots which, provide a proper fit for gravel bikes. </p><br><p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing.  </strong></p><br><p><strong>*Bolts are not included. </strong></p><br><p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p><br><h3><strong>Speciality</strong></h3><br><ul>
<br><li>Lightweight of 110 = 0.24lbs</li>
<br><li>Fits most Bikes and E-Bikes with three velcros</li>
<br><li>Attaches perfectly on Top Tube</li>
<br><li>Bolt slot-ready</li>
<br><li>Aerodynamic design</li>
<br><li>Soft touch / Scratch free</li>
<br><li>Padded protection</li>
<br><li>Waterproof fabric</li>
<br><li>Water-resistant zipper</li>
<br><li>External side pockets</li>
<br><li>Small inside mesh pocket</li>
<br><li>Velcro strap x 3</li>
<br>
</ul><br><h3><strong>Spec</strong></h3><br><ul>
<br><li>Size: <strong>240 x 80 x 60mm</strong>
</li>
<br><li>Weight: <strong>110g. = 0.24lbs</strong>
</li>
<br><li>Capacity: <strong>1.0L</strong>
</li>
<br><li>Main fabric: <strong>Waterproof nylon + polyester</strong>
</li>
<br>
</ul><br><p><strong><em>Please check the specs before purchasing</em></strong></p><br><br>', array['ulac-neo-porter-nomadpak-trekking-gt-1-0l/1.png', 'ulac-neo-porter-nomadpak-trekking-gt-1-0l/2.png', 'ulac-neo-porter-nomadpak-trekking-gt-1-0l/3.jpg', 'ulac-neo-porter-nomadpak-trekking-gt-1-0l/4.png', 'ulac-neo-porter-nomadpak-trekking-gt-1-0l/5.png']::text[], 'new', 1, '2024-09-10'::date, false, false),
  ('ulac-neo-porter-nomadpak-trekking-max-1-6l', 'ULAC Neo Porter Nomadpak Trekking Max 1.6L', 'ulac', 'accessories', 'bags-storage', '<p>The largest of the Trekking Top Tube Collection! Trekking Max offers a huge 1.6 liter capacity, which is prefect for most bikepacking and everyday commutes. In order to utilize the space more efficiently, we have designed two pockets on both sides especially for small essentials. What''s more, on the left pocket we added an extra multiband in case you need to store your mobile phone. This will prevent your phone from falling off while riding. For internal organization, we have included a mesh pocket.</p> <p>For stabilization, we offer three velcros so you can decide which mounting method / position fits best according to your bicycle''s geometry.</p> <p><strong>Nomadpak features a new design with a perimeter utilizing 100% waterproof technical material and a YKK waterproof zipper. </strong></p> <p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing.  </strong></p> <p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p> <ul> <li>Lightweight of 150g. = 0.33lbs</li> <li>Fits most Bikes and E-Bikes</li> <li>Attaches perfectly on Top Tube</li> <li>Soft touch / Scratch free</li> <li>100% Waterproof perimeter</li> <li>Padded protection</li> <li>Water-resistant techno fabric</li> <li>Weather resistant YKK zip</li> <li>External side pocket designed to store mobile phone</li> <li>Small inside pocket</li> <li>Velcro strap x 3</li> </ul> <p>Size: 250 x 110 x 65mm</p> <p>Weight: 150g. = 0.33lbs</p> <p>Capacity: 1.6L</p> <p>Material: Main fabric: Nylon </p> <p><strong><em>Please check the specs before purchasing</em></strong></p>', array['ulac-neo-porter-nomadpak-trekking-max-1-6l/1.jpg', 'ulac-neo-porter-nomadpak-trekking-max-1-6l/2.jpg', 'ulac-neo-porter-nomadpak-trekking-max-1-6l/3.jpg']::text[], 'new', 1, '2024-09-10'::date, false, false),
  ('ulac-neo-porter-nomadpak-trekking-pro-1-2l', 'ULAC Neo Porter Nomadpak Trekking Pro 1.2L', 'ulac', 'accessories', 'bags-storage', '<p>Not too big, not to small, just optimal is how I would describe the Trekking Pro top tube bag. The Trekking Pro provides an adequate 1.2 liter capacity, which is good enough for a day trip. Moreover, we understand the importance of space management, and have included two additional pockets on both sides. This way the cyclist can have better access for items such as energy gel, Allen key or snack bar. In addition, on the left pocket we added an extra multiband in case you need to store your mobile phone. This will prevent your phone from falling off while riding. For internal organization, we have included a mesh pocket.</p>
<p>For stabilization, we offer three velcros so you can decide which mounting method / position fits best according to your bicycle''s geometry.</p>
<p><strong>Nomadpak features a new design with a perimeter utilizing 100% waterproof technical material and a YKK waterproof zipper</strong>.</p>
<p><strong>*Please ensure the fit of the Neo Porter to your frame and handlebar dimensions before purchasing.  </strong></p>
<p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p>
<ul>
<li>Lightweight of 130g. = 0.28lbs</li>
<li>Fits most Bikes and E-Bikes</li>
<li>Attaches perfectly on Top Tube</li>
<li>Soft touch / Scratch free</li>
<li>Padded protection</li>
<li>100% Waterproof perimeter</li>
<li>Water-resistant techno fabric</li>
<li>Weather resistant YKK zip</li>
<li>External side pocket designed to store mobile phone</li>
<li>Small inside pocket</li>
<li>Velcro strap x 3</li>
</ul>
<p>Size: 210 x 100 x 60mm</p>
<p>Weight: 130g. = 0.28lbs</p>
<p>Capacity: 1.2L</p>
<p>Material: Main fabric: Nylon </p>
<p><strong><em>Please check the specs before purchasing</em></strong></p>', array['ulac-neo-porter-nomadpak-trekking-pro-1-2l/1.jpg', 'ulac-neo-porter-nomadpak-trekking-pro-1-2l/2.jpg', 'ulac-neo-porter-nomadpak-trekking-pro-1-2l/3.jpg', 'ulac-neo-porter-nomadpak-trekking-pro-1-2l/4.jpg', 'ulac-neo-porter-nomadpak-trekking-pro-1-2l/5.jpg']::text[], 'new', 3, '2024-09-10'::date, false, false),
  ('ulac-neo-porter-radtail-gt-5-8l', 'ULAC Neo Porter Radtail GT 5.8L', 'ulac', 'accessories', 'bags-storage', '<p>Gravel and adventure focused: the Radtail GT is definitely designed for seasoned bikepackers and their epic journey. While maintaining style and being lightweight, waterproof, and with a large capacity, we have gone through long miles and tests in order to achieve an optimal riding experience.<br><br>The Radtail GT comes with versatile rear eyelets so you can place a bike light at almost any position. In addition, you can utilize the top multistrap for a windbreaker or a mini pump.<br><br>Moreover, understanding the potentially harsh gravel environment, we have included an easy access waterproof inner dry bag.<br><br>All Radtail saddle bags come with a unique triangular karabiner for various applications / uses. For well-rounded stabilization, Radtail GT features one velcro and two buckles.</p><br><p><strong>*Please ensure the fit of the Neo Porter to your seat post and saddle dimensions before purchasing.  </strong></p><br><p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p><br><ul>
<br><li>Light weight of 288g. = 0.63lbs</li>
<br><li>Large capacity</li>
<br><li>Fits most Bikes and E-Bikes</li>
<br><li>Attaches perfectly to saddle and seat post</li>
<br><li>Soft touch / Scratch free</li>
<br><li>Waterproof fabric</li>
<br><li>Back and side eyelet for taillight and other applications</li>
<br><li>Inner waterproof bag </li>
<br><li>Top multistrap for windbreaker</li>
<br><li>Complimentary triangular karabiner</li>
<br><li>Size: <strong>450 (max) x 140 x 100 mm</strong>
</li>
<br><li>Weight: <strong>288g (bag only)</strong>
</li>
<br><li>Capacity: <strong>5.8L</strong>
</li>
<br><li>Main fabric: <strong>Waterproof nylon + polyester</strong>
</li>
<br>
</ul><br><p><strong><em>Please check the specs before purchasing</em></strong></p><br><ul>
<br><li>Triangle karabiner x 1 </li>
<br><li>Inner waterproof dry bag</li>
<br>
</ul><br>', array['ulac-neo-porter-radtail-gt-5-8l/1.jpg', 'ulac-neo-porter-radtail-gt-5-8l/2.jpg', 'ulac-neo-porter-radtail-gt-5-8l/3.jpg', 'ulac-neo-porter-radtail-gt-5-8l/4.jpg', 'ulac-neo-porter-radtail-gt-5-8l/5.jpg']::text[], 'new', 3, '2024-09-11'::date, false, false),
  ('ulac-neo-porter-radtail-gt-pro-8-8l', 'ULAC Neo Porter Radtail GT Pro 8.8L', 'ulac', 'accessories', 'bags-storage', '<p>With 8.8L of capacity, the Radtail GT Pro is by far the largest bicycle bag in the Neo Porter Collection with a focus on long distance bikepacking travelers. Because of its large volume, we have to test dozens of fabrics in order to achieve both optimal weight and waterproofing for a better riding experience.<br><br>The Radtail GT PRO comes with versatile rear eyelets so you can place a bike light at almost any position. In addition, you can utilize the top multistrap for a windbreaker or a mini pump.<br><br>Moreover, understanding the potentially harsh gravel environment, we have included an easy access waterproof inner bag.<br><br>All Radtail saddle bags come with a unique triangular karabiner for various applications / uses. For well-rounded stabilization, Radtail GT PRO features one velcro and two buckles.</p><br><p><strong>*Please ensure the fit of the Neo Porter to your seat post and saddle dimensions before purchasing.  </strong></p><br><p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p><br><ul>
<br><li>Light weight of 315g. = 0.69lbs</li>
<br><li>Large capacity of 8.8L</li>
<br><li>Fits most Bikes and E-Bikes</li>
<br><li>Attaches perfectly to saddle and seat post</li>
<br><li>Soft touch / Scratch free</li>
<br><li>Waterproof fabric</li>
<br><li>Back and side eyelet for taillight and other applications</li>
<br><li>Inner waterproof dry bag </li>
<br><li>Top multistrap for windbreaker</li>
<br><li>Complimentary triangular karabiner</li>
<br><li>Size: 500 (max) x 160 x 120 mm</li>
<br><li>Weight: 315g. = 0.69lbs (bag only)</li>
<br><li>Capacity: 8.8L</li>
<br><li>Main fabric: Waterproof nylon + polyester</li>
<br>
</ul><br><p><strong><em>Please check the specs before purchasing</em></strong></p><br><ul>
<br><li>Triangle karabiner x 1 </li>
<br><li>Inner waterproof dry bag</li>
<br>
</ul><br>', array['ulac-neo-porter-radtail-gt-pro-8-8l/1.jpg', 'ulac-neo-porter-radtail-gt-pro-8-8l/2.jpg', 'ulac-neo-porter-radtail-gt-pro-8-8l/3.jpg', 'ulac-neo-porter-radtail-gt-pro-8-8l/4.jpg', 'ulac-neo-porter-radtail-gt-pro-8-8l/5.jpg']::text[], 'new', 1, '2024-09-11'::date, false, false),
  ('ulac-radtail-go-0-6l-1', 'ULAC Radtail Go 0.6L', 'ulac', 'accessories', 'bags-storage', '<p>Focused on pure cycling sports and designed for riders who only carry the essentials, Radtail Go weighs only 86g, and is rather condensed (0.6L) compared to the rest of the family.</p><br><p>An optimal saddle bag designed to store all essentials for repairs and maintenance. Introducing the Radtail Seat Bag collection in the Neo Porter Bicycle Bag family. </p><br><p>The Radtail combines both Nomadpak and Coursier design language, utilizing advanced waterproof fabric, weather resistant zipper, and eyelet placement.</p><br><p>Featuring a two-eyelet design, with the rear one for the taillight, for the side one you can decide whether you would like to add an extra light for more night ride safety or simply attach smaller items such as locks.</p><br><p>On the inside, we have included a mesh pocket for better organization.</p><br><p>All Radtail saddle bags come with a unique triangular karabiner for various applications / uses.</p><br><p>We offer three sizes (<a href="https://dealerportal.prv.co.nz/product-group/23205-ulac-radtail-max-1-3l/category/1556-saddle-bags" rel="noopener nofollow" target="_blank"><strong>MAX: 1.3L</strong></a> / <a href="https://dealerportal.prv.co.nz/product-group/23204-ulac-radtail-pro-1-0l/category/1556-saddle-bags" rel="noopener nofollow" target="_blank"><strong>PRO: 1.0L</strong></a> / GO: 0.6L) which is definitely sufficient for racing, commute, or touring.</p><br><p>For well-rounded stabilization, Radtail features three velcros.</p><br><p><strong>*Please ensure the fit of the Neo Porter to your seat post and saddle dimensions before purchasing.  </strong></p><br><p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p><br><h3><strong>Speciality</strong></h3><br><ul>
<br><li>Light weight of 86g. = 0.18lbs</li>
<br><li>Fits most Bikes and E-Bikes</li>
<br><li>Attaches perfectly to saddle and seat post</li>
<br><li>Soft touch / Scratch free</li>
<br><li>Padded protection</li>
<br><li>Waterproof fabric</li>
<br><li>Weather resistant zipper</li>
<br><li>Back and side eyelet for taillight and other applications</li>
<br><li>Inside mesh pocket </li>
<br><li>Complimentary triangular karabiner</li>
<br>
</ul><br><h3><strong>Spec</strong></h3><br><ul>
<br><li>Size: <strong>120 x 80 x 85mm</strong>
</li>
<br><li>Weight: <strong>86g. = 0.18lbs (bag only)</strong>
</li>
<br><li>Capacity: <strong>0.6L</strong>
</li>
<br><li>Main fabric: <strong>Waterproof nylon + polyester</strong>
</li>
<br>
</ul><br><p><strong><em>Please check the specs before purchasing</em></strong></p><br><h3><strong>Accessories</strong></h3><br><ul>
<br><li>Triangle karabiner x 1 </li>
<br>
</ul>', array['ulac-radtail-go-0-6l-1/1.webp', 'ulac-radtail-go-0-6l-1/2.webp', 'ulac-radtail-go-0-6l-1/3.webp', 'ulac-radtail-go-0-6l-1/4.webp']::text[], 'new', 3, '2024-09-11'::date, false, false),
  ('ulac-radtail-max-1-3l-1', 'ULAC Radtail Max 1.3L', 'ulac', 'accessories', 'bags-storage', '<p>For urban bicycle nomads, the Radtail Max has that OG Neo Porter spirit, specially designed for urban bikepackers. The Max offers a spacious 1.3L and will fit all your essentials such as multitools, snacks, windbreaker and tubes.</p><br><p>An optimal saddle bag designed to store all essentials for repairs and maintenance. Introducing the Radtail Seat Bag collection in the Neo Porter Bicycle Bag family. </p><br><p>The Radtail combines both Nomadpak and Coursier design language, utilizing advanced waterproof fabric, weather resistant zipper, and eyelet placement.</p><br><p>Featuring a two-eyelet design, with the rear one for the taillight, for the side one you can decide whether you would like to add an extra light for more night ride safety or simply attach smaller items such as locks.</p><br><p>On the inside, we have included a mesh pocket for better organization.</p><br><p>All Radtail saddle bags come with a unique triangular karabiner for various applications / uses.</p><br><p>We offer three sizes (MAX: 1.3L / <a href="https://dealerportal.prv.co.nz/product-group/23204-ulac-radtail-pro-1-0l/category/1556-saddle-bags" rel="noopener nofollow" target="_blank"><strong>PRO: 1.0L</strong></a> / <a href="https://dealerportal.prv.co.nz/product-group/23203-ulac-radtail-go-0-6l/category/1556-saddle-bags" rel="noopener nofollow" target="_blank"><strong>GO: 0.6L</strong></a>) which is definitely sufficient for racing, commute, or touring.</p><br><p>For well-rounded stabilization, Radtail features three velcros.</p><br><p><strong>*Please ensure the fit of the Neo Porter to your seat post and saddle dimensions before purchasing.  </strong></p><br><p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p><br><h3><strong>Speciality</strong></h3><br><ul>
<br><li>Light weight of 104g. = 0.22lbs</li>
<br><li>Fits most Bikes and E-Bikes</li>
<br><li>Attaches perfectly to saddle and seat post</li>
<br><li>Soft touch / Scratch free</li>
<br><li>Padded protection</li>
<br><li>Waterproof fabric</li>
<br><li>Weather resistant zipper</li>
<br><li>Back and side eyelet for taillight and other applications</li>
<br><li>Inside mesh pocket </li>
<br><li>Complimentary triangular karabiner</li>
<br>
</ul><br><h3><strong>Spec</strong></h3><br><ul>
<br><li>Size: <strong>160 x 100 x 100mm</strong>
</li>
<br><li>Weight: <strong>108g. = 0.23lbs (bag only)</strong>
</li>
<br><li>Capacity: <strong>1.3L</strong>
</li>
<br><li>Main fabric: <strong>Waterproof nylon + polyester</strong>
</li>
<br>
</ul><br><p><strong><em>Please check the specs before purchasing</em></strong></p><br><h3><strong>Accessories</strong></h3><br><ul>
<br><li>Triangle karabiner x 1</li>
<br>
</ul>', array['ulac-radtail-max-1-3l-1/1.webp']::text[], 'new', 1, '2024-09-11'::date, false, false),
  ('ulac-radtail-pro-1-0l-1', 'ULAC Radtail Pro 1.0L', 'ulac', 'accessories', 'bags-storage', '<p>A design more oriented to bicycle commutes and exercise, the Radtial Pro offers a decent 1.0L capacity, which is adequate for a half day ride.</p>

<p>An optimal saddle bag designed to store all essentials for repairs and maintenance. Introducing the Radtail Seat Bag collection in the Neo Porter Bicycle Bag family. </p>

<p>The Radtail combines both Nomadpak and Coursier design language, utilizing advanced waterproof fabric, weather resistant zipper, and eyelet placement.</p>

<p>Featuring a two-eyelet design, with the rear one for the taillight, for the side one you can decide whether you would like to add an extra light for more night ride safety or simply attach smaller items such as locks.</p>

<p>On the inside, we have included a mesh pocket for better organization.</p>

<p>All Radtail saddle bags come with a unique triangular karabiner for various applications / uses.</p>

<p>We offer three sizes (<a href="https://dealerportal.prv.co.nz/product-group/23205-ulac-radtail-max-1-3l/category/1556-saddle-bags" rel="noopener nofollow" target="_blank"><strong>MAX: 1.3L</strong></a> / PRO: 1.0L / <a href="https://dealerportal.prv.co.nz/product-group/23203-ulac-radtail-go-0-6l/category/1556-saddle-bags" rel="noopener nofollow" target="_blank"><strong>GO: 0.6L</strong></a>) which is definitely sufficient for racing, commute, or touring.</p>

<p>For well-rounded stabilization, Radtail features three velcros.</p>

<p><strong>*Please ensure the fit of the Neo Porter to your seat post and saddle dimensions before purchasing.  </strong></p>

<p><strong>*Ensure the bag does not interfere with safe riding before using.</strong></p>

<h3><strong>Specialty</strong></h3>
<p><br><br></p>
<ul>
<li>Light weight of 90g. = 0.19lbs</li>
</ul>

<ul>
<li>Fits most Bikes and E-Bikes</li>
</ul>

<ul>
<li>Attaches perfectly to saddle and seat post</li>
</ul>

<ul>
<li>Soft touch / Scratch free</li>
</ul>

<ul>
<li>Padded protection</li>
</ul>

<ul>
<li>Waterproof fabric</li>
</ul>

<ul>
<li>Weather resistant zipper</li>
</ul>

<ul>
<li>Back and side eyelet for taillight and other applications</li>
</ul>

<ul>
<li>Inside mesh pocket </li>
</ul>

<ul>
<li>Complimentary triangular karabiner</li>
</ul>
<p><br><br></p>
<h3><strong>Spec</strong></h3>
<p><br><br></p>
<ul>
<li>Size: <strong>140 x 90 x 90mm</strong>
</li>
</ul>

<ul>
<li>Weight: <strong>90g. = 0.19lbs (bag only)</strong>
</li>
</ul>

<ul>
<li>Capacity: <strong>1.0L</strong>
</li>
</ul>

<ul>
<li>Main fabric: <strong>Waterproof nylon + polyester</strong>
</li>
</ul>
<p><br><br></p>
<p><strong><em>Please check the specs before purchasing</em></strong></p>

<h3><strong>Accessories</strong></h3>
<p><br><br></p>
<ul>
<li>Triangle karabiner x 1</li>
</ul>', array['ulac-radtail-pro-1-0l-1/1.webp', 'ulac-radtail-pro-1-0l-1/2.webp', 'ulac-radtail-pro-1-0l-1/3.webp']::text[], 'new', 3, '2024-09-11'::date, false, false),
  ('ulac-radtail-verve-0-5l', 'ULAC Radtail Verve 0.5L', 'ulac', 'accessories', 'bags-storage', '<p>Minimalist design for all cyclists. The Radtail Verve offers a 0.5L capacity, which is the most compact in the Radtail collection. Verve features a super wide velcro strap to keep the bag firmly in place below the saddle. Like the rest of the Radtail family, the Verve utilizes advanced waterproofed fabric.</p>
<p>One thing unique that makes the Verve stand out is the dual zippers. Unlike most similar bags on the market, this design definitely enhances the “quick access” feature. <br><br>Radtail Verve features a two-eyelet design, with the rear one for the tail light and one for the bottom so you can decide whether you would like to add an extra light for more night ride safety, or simply to attach smaller accessories.<br><br>All Radtail saddle bags come with a unique triangular karabiner for various applications / uses.</p>
<p>We offer four sizes (MAX: 1.3L / PRO: 1.0L / GO: 0.6L / VERVE: 0.5L) which is definitely sufficient for racing, commute, or touring.</p>

<ul>
<li>Light weight of 100g. = 0.22lbs</li>
<li>Dual zippers</li>
<li>Fits most Bikes and E-Bikes</li>
<li>Attaches perfectly to saddle and seat post</li>
<li>Soft touch / Scratch free</li>
<li>Padded protection</li>
<li>Waterproof fabric</li>
<li>Weather resistant zipper</li>
<li>Back and bottom eyelet for taillight and other applications</li>
<li>Inside mesh pocket </li>
<li>Complimentary triangular karabiner</li>
<li>Size: 130 x 90 x 45mm</li>
<li>Weight: 100g. = 0.22lbs (bag only)</li>
<li>Capacity: 0.5L</li>
<li>Main fabric: Waterproof nylon + polyester</li>
</ul>', array['ulac-radtail-verve-0-5l/1.jpg', 'ulac-radtail-verve-0-5l/2.jpg', 'ulac-radtail-verve-0-5l/3.jpg', 'ulac-radtail-verve-0-5l/4.jpg', 'ulac-radtail-verve-0-5l/5.jpg']::text[], 'new', 4, '2024-09-11'::date, false, false),

  -- ---- accessories · bike-accessories ----
  ('dogears', 'Dogears Garmin Fix', 'generic', 'accessories', 'bike-accessories', '<p><strong>$5.00 Shipping Nationwide / Free On Orders $50.00+</strong><br><br></p>
<p>North Island Delivery: 1-2 Working Days</p>
<p>South Island Delivery: 2-4 Working Days</p>
<p><strong>Description</strong></p>
<p>A replacement aluminium QR plate for your Garmin.  The unit is designed as a DIY repair for broken QR tabs across all GARMIN Edge series units. An installation guide on how to replace the QR interface, as well as the necessary adhesive, are included. </p>

- Includes -

<ul>
<li>Dog Ears QR Replacement Plate (includes Tap Screw x2)</li>
<li>''Superglue'' Adhesive</li>
<li>Installation Guide</li>
</ul>', array['dogears/1.png']::text[], 'new', 1, '2022-03-25'::date, false, false),
  ('garminflushoutfrontmount', 'Garmin Flush Out-Front Mount', 'garmin', 'accessories', 'bike-accessories', '<p>Stay ahead of the pack with this extended out-front bike mount that lets you take full advantage of your Edge without compromising your ride. This mount with extended arm allows you to stay in a comfortable heads-up position for easier monitoring and improved safety. The <a href="https://buy.garmin.com/en-US/US/p/591983" rel="noopener nofollow" target="_blank">flush out-front mount insert</a> is included with the purchase of this bike mount. Compatible with 25.4 mm, 26.0 mm, 31.8 mm and 35.0 mm handlebars.</p>', array['garminflushoutfrontmount/1.jpg', 'garminflushoutfrontmount/2.jpg']::text[], 'new', 0, '2025-02-24'::date, false, false),
  ('mammoth-lock-key-guardian-10-x-1800mm', 'Mammoth Lock Key Guardian 10 x 1800mm', 'mr-rider', 'accessories', 'bike-accessories', '', array['mammoth-lock-key-guardian-10-x-1800mm/1.jpg']::text[], 'new', 1, '2023-07-05'::date, false, false),
  ('xxf-bike-bag-ultimate-pro-xl', 'XXF Bike Travel Case for Road Bikes', 'xxf', 'accessories', 'bike-accessories', '<p><strong>Description </strong></p>
<p>Bike transport bag<br>Brand: XXF<br>Color: Black-grey       <br>Material: Nylon 1680D                                        <br>Size: 110*56*97cm<br>Package dimension: 123*48*26cm    <br>Net weight: around 11kg</p>
<p>Full protection for your bike</p>
<p>1680D Nylon high quality material and auto-inflatable pads on the both sides of bag will protect your bike during transit perfectly.</p>
<p>4 360degree spinning wheels on the bag of bottom for easy moving from any direction.YKK Zippers will be stronger and smooth.</p>
<p>No need to remove the handlebar when packing bike into bag! It is so relaxed and time-saving!</p>
<p>Internal structure including frame &amp; fork mounting bracket, Rear Derailleur protection holder and Pads.</p>
<p>A couple of wheel bags included.</p>
<p>Fits: Road bikes, TT (triathlon) bikes.</p>', array['xxf-bike-bag-ultimate-pro-xl/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),

  -- ---- accessories · bottle-cages ----
  ('bmc-aero-cage-set', 'BMC Aero Cage Set', 'bmc', 'accessories', 'bottle-cages', '<p>Our Aerocore system consists of two superlight bottle cages that seamlessly integrate with the reshaped downtube and seat tube, resulting in significant drag reduction when used with bottles.</p>', array['bmc-aero-cage-set/1.webp', 'bmc-aero-cage-set/2.webp']::text[], 'new', 2, '2026-04-13'::date, false, true),
  ('elite-cage-pb-t-race-carbon-tubular-black', 'Elite Cage PB T-Race Carbon Tubular Black', 'elite', 'accessories', 'bottle-cages', '<p>Elite Cage PB T-Race Carbon Tubular Black </p>
<h3>T-RACE CARBON</h3>

<p><strong>T-Race Carbon</strong> is Elite’s new <strong>bottle cage with carbon fiber</strong>, designed to make it easier to insert and remove the bottle from all sides during races.<br><br>Made in ultra-lightweight and <strong>highly resistant carbon-reinforced material</strong>, it’s great on the road but also when you’re riding on your <strong>mountain bike</strong> or over <strong>gravel tracks</strong> as it ensures great retention and resistance over any terrain, even the roughest.</p>

<h3>MAX LIGHTNESS</h3>

<p><strong>Vico Carbon</strong>''s structure combined with the high resistance of carbon fiber ensure great resistance at only <strong>15 grams</strong>, which is a record-weight for a high-end bottle cage.<br><br>By doing so we can get rid of nearly 50% of plastic materials compared to traditional carbon-reinforced cages. And this makes it just perfect for every climbs and routes you’re planning to explore with the <strong>firmest bottle retention</strong> over rough terrains.</p>

<h3>EASY INSERTION AND MAX BOTTLE RETENTION</h3>

<p><strong>T-Race Carbon</strong> is made with Adriano Design. This cage is shaped by the letter “T” as in Time Trial on the side of the bicycle’s frame.<br><br>The structure is designed to ensure the <strong>smoothest insertion and extraction</strong> of the bottle with its wide snap-fit opening, which is particularly useful on bicycles with smaller or sloping frames. <br>This cage makes an excellent work in keeping the bottle body firmly in place, both on its high and low sections, so there’s <strong>total retention</strong> even on bumpy roads. Perfect for <strong>gravel tracks </strong>and <strong>mountain bikes</strong>.</p>

<ul>
<li>

Weight
15 g

</li>
<li>

reinforced with
Carbon fiber

</li>
<li>

Diameter

</li>
</ul>', array['elite-cage-pb-t-race-carbon-tubular-black/1.png']::text[], 'new', 0, '2023-06-02'::date, false, false),
  ('elite-cage-t-race', 'Elite Cage T-Race', 'elite', 'accessories', 'bottle-cages', '<p><strong>T-Race </strong>is Elite’s new soft touch bottlecage designed to make it easier to insert and remove the bottle from all sides<strong> </strong>during races.<br><br>Made in highly resistant fibre-reinforced material, it’s great on the road but also with mountain bikes or over gravel tracks as it ensures great retention and resistance over any terrain.</p>

<p><strong>Easy insertion from both sides</strong><br>T-Race is the Elite-designed bottlecage in cooperation with Adriano Design that, when installed on the frame, reproduces the ''T'' for Time Trial with this bottlecage.</p>
<p>The monoblock structure of the <strong>T-Race</strong> ensures easy insertion of the bottle from both sides thanks to the wide opening that allows for quick insertion and extraction, also ideal for bicycles distinguished by smaller sized or slooping frames.</p>

<p><strong>Great grip on the bottle</strong><br><strong>T-Race</strong> also ensures great grip on the bottle thanks to its structure designed to keep the bottle body in place in its upper and lower sections, safe and secure also when facing intense vibrations and collisions on rough terrains. The first athletes to test this product out have been gravel and mountain bike cyclists.</p>
<p><strong> </strong></p>
<p><strong>Style, lightness and compatibility</strong><br>Weighing just a little more than 29 g, this bottlecage adds no useless weight on your bicycle and yet retains high retention and resistance performances.</p>
<p>Available in four visually striking colors thanks to its soft touch finishing, <strong>T-Race</strong> is distinguished by an elegant and modern racing-style design, ideal for all frames (diameter is standard 74 mm).</p>', array['elite-cage-t-race/1.webp', 'elite-cage-t-race/2.jpg', 'elite-cage-t-race/3.jpg', 'elite-cage-t-race/4.jpg']::text[], 'new', 4, '2024-10-10'::date, false, false),
  ('elite-cannibal-xc-cages', 'Elite Cannibal XC Cages', 'elite', 'accessories', 'bottle-cages', '<p><strong>CANNIBAL XC </strong>is a very versatile bottlecage.</p>
<p>Side insertion is the main feature of this bottlecage.</p>
<p>Innovative, practical and winning - CANNIBAL XC features a modern and innovative design, created so the cyclist could easily insert and extract the bottle from the front or the side with one simple move.</p>
<p>The first that adapts to the bottle Light and resistant, <strong>CANNIBAL XC </strong>ensures a great hold on the bottle under any circumstance, even the most challenging ones.It''s compatible with all frames, although considering its features the <strong>CANNIBAL XC</strong> is particularly suited for small slooping frames (with smaller central triangle).Mounting it on the bike''s frame is quick and simple, so there''s a wide range of positions to suit every need.</p>', array['elite-cannibal-xc-cages/1.png']::text[], 'new', 1, '2023-05-19'::date, false, false),
  ('elite-custom-race-cages', 'Elite Custom Race Cages', 'elite', 'accessories', 'bottle-cages', '<p>Elite Fibre Glass Custom Race Bottle Cage. This striking cage shape from Elite is ideal for rougher rides and mountain bike use.</p>', array['elite-custom-race-cages/1.jpg', 'elite-custom-race-cages/2.jpg', 'elite-custom-race-cages/3.jpg', 'elite-custom-race-cages/4.jpg']::text[], 'new', 3, '2023-05-19'::date, false, false),
  ('elite-custom-race-plus-cages', 'Elite Custom Race Plus Cages', 'elite', 'accessories', 'bottle-cages', '<p>Elite Fibre Glass Custom Race Bottle Cage. This striking cage shape from Elite is ideal for rougher rides and mountain bike use.</p>', array['elite-custom-race-plus-cages/1.jpg', 'elite-custom-race-plus-cages/2.jpg', 'elite-custom-race-plus-cages/3.png', 'elite-custom-race-plus-cages/4.jpg', 'elite-custom-race-plus-cages/5.jpg']::text[], 'new', 5, '2023-05-19'::date, false, false),
  ('elite-vico-carbon-cages', 'Elite Vico Carbon Cages', 'elite', 'accessories', 'bottle-cages', '<p>Chosen by the best World Tour pro teams. VICO is the first-choice carbon bottlecage used by the best World Tour teams. Feedback given by champions made it possible to design and manufacture this bottle cage, so it could meet all riders'' needs. Many years of races and victories with the world''s best professional teams have helped us design, test and create a bottle cage that will meet the expectations of even the most demanding cyclists. Weight: 23g.</p>', array['elite-vico-carbon-cages/1.jpg', 'elite-vico-carbon-cages/2.jpg', 'elite-vico-carbon-cages/3.jpg', 'elite-vico-carbon-cages/4.jpg', 'elite-vico-carbon-cages/5.jpg']::text[], 'new', 4, '2023-05-19'::date, false, false),
  ('enve-water-bottle-cage', 'ENVE - WATER BOTTLE CAGE', 'enve', 'accessories', 'bottle-cages', '<p><strong>What it is:</strong><br> Lightweight carbon fiber water bottle cage<br> <br> <strong>Why we made it:</strong><br> A water bottle cage is perhaps the most under-appreciated component on a bike. Ours is designed to hold your water bottle no matter the terrain or application. The ENVE Water Bottle Cage is light, durable, and offers easy side and vertical entry. Please drink and ride responsibly</p>', array['enve-water-bottle-cage/1.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),
  ('specializedribcage', 'Specialized Rib Cage', 'specialized', 'accessories', 'bottle-cages', '<p><strong>Description:</strong></p>
<p>The Rib Cage II is not only a sleek, lightweight water bottle cage, but it''s also been designed to be fast in the wind. Of course, it also performs its primary task of holding tight to bottles dutifully, so you won''t be losing bottles when the road gets rough.</p>
<ul>
<li>SWAT™-compatible design allows for storage and tool integration.</li>
<li>Super-low bottle position improves the aerodynamic profile.</li>
<li>Tuned compression design provides a secure bottle retention with easy in-and-out accessibility.</li>
<li>Reinforced composite material improves durability without adding weight.</li>
<li>Sleek, minimalist design with razor-sharp graphics.</li>
<li>Accepts SWAT™ Cage Mount Road or MTB Tool.</li>
<li>Accepts MTB SWAT™ Box (when used on compatible frames).</li>
<li>Weight: 33g</li>
</ul>', array['specializedribcage/1.jpg']::text[], 'new', 2, '2021-08-19'::date, false, false),
  ('supacaz-fly-cage', 'Supacaz Fly Cage', 'supacaz', 'accessories', 'bottle-cages', '<p>An absolute stunner, the Fly Cage Ano screams style. The clean lines and laser etched graphics really stand out. No cage outperforms the Fly Cage Ano with it’s lock tight yet accessible wings. At just 18g, its no wonder this 100% aluminum masterpiece is the world’s number one selling cage. </p>

<ul>
<li>100% Anodized Aluminum</li>
<li>LockTight Wings</li>
<li>Laser Etched Graphics</li>
<li>Road/MTB Approved</li>
<li>18g &amp; Durable</li>
</ul>', array['supacaz-fly-cage/1.jpg']::text[], 'new', 0, '2023-07-05'::date, false, false),
  ('supacaz-side-swipe-cage', 'Supacaz Side Swipe Cage', 'supacaz', 'accessories', 'bottle-cages', '<p>A true side entry design with style for days. Perfect for full suspension bikes and any small road/MTB rig. A uniquely shaped LockTight Wing resists forces from big hits and rough roads, keeping your bottle ultra secure while allowing direct access from the side.</p>

<ul>
<li>100% Tough Polycarbonate</li>
<li>12mm Installation Adjustability</li>
<li>Embossed Pattern</li>
<li>Road/MTB/Gravel Approved</li>
<li> High-End &amp; Durable</li>
<li>Available For Right</li>
</ul>', array['supacaz-side-swipe-cage/1.jpg']::text[], 'new', 0, '2023-07-05'::date, false, false),

  -- ---- accessories · chamois-cream-rider-care ----
  ('ass-magic-chamois-cream-travel-pack', 'Ass Magic Chamois Cream Travel Pack', 'ass-magic', 'accessories', 'chamois-cream-rider-care', '<p>Assw</p>

<h3><br></h3>
<p><strong>ASS MAGIC CHAMOIS CREAM TRAVEL PACK</strong></p>
<p>Take your trusted ASS MAGIC Chamois Cream with you wherever you go, thanks to our convenient and easy-to-use Travel Pack.</p>
<p><br></p>
<p><strong>COMPACT AND CONVENIENT</strong></p>
<p>Our Travel Pack includes 10 x 8ml snap-it sachets, each perfectly portioned for single use. They''re easy to pop into your bag when travelling to events, or for those long bike rides when a reapplication might be needed.</p>
<p><br></p>
<p><strong>QUALITY YOU TRUST</strong></p>
<p>Stay comfortable and chafe-free with our lanolin-based cream, enhanced with beeswax and a secret blend of essential oils. Each ingredient is chosen for its specific properties, giving our cream anti-bacterial, and anti-fungal capabilities.</p>
<p><br></p>
<p><strong>EASY TO APPLY</strong></p>
<p>Apply a generous amount of ASS MAGIC Chamois Cream to your nether regions and enjoy an unparalleled level of comfort throughout your ride. Make every day''s ride the ride of your life with</p>
<p><strong><br></strong></p>
<p><strong>ASS MAGIC. PRODUCT DETAILS</strong></p>
<p>Package: 10 x 8ml Snap-it Sachets Application: Chamois Cream Properties: Anti-septic, Anti-bacterial, Anti-fungal Don''t let discomfort ruin your next ride. Order your ASS MAGIC Chamois Cream Travel Pack today and experience the magic wherever you go!</p>', array['ass-magic-chamois-cream-travel-pack/1.webp']::text[], 'new', 1, '2025-03-24'::date, false, false),
  ('ass-magic-chamois-cream-tub', 'Ass Magic Chamois Cream Tub', 'ass-magic', 'accessories', 'chamois-cream-rider-care', '<h3>ASS MAGIC CHAMOIS CREAM: YOUR ULTIMATE ANTI-CHAFE SOLUTION</h3>
<h3></h3>
<p>Experience superior comfort in your sports activities with <strong>ASS MAGIC Chamois Cream</strong>, the finest anti-chafe cream designed for your most sensitive areas. Crafted and tested by leading experts and athletes, this cream ensures every adventure is completed in comfort.</p>
<h3>A SIGNATURE BLEND OF VITAL INGREDIENTS</h3>
<h3></h3>
<p>Our signature blend of vital ingredients not only promotes personal hygiene but also provides superior anti-chafing protection through the incorporation of Lanolin and Synthetic Beeswax. Initially designed for cyclists, ASS MAGIC has evolved into a versatile anti-chafe solution for sportspeople across various disciplines.</p>
<h3>HOW TO USE ASS MAGIC</h3>
<h3></h3>
<p>ASS MAGIC can be applied directly to your skin or to the chamois of your cycling shorts. When applying to your skin, avoid double-dipping! Use a clean hand to scoop about 5 to 10ml per ride and apply it to the areas of your rear in contact with the saddle.</p>
<h3>TOP USAGE TIPS</h3>
<h3></h3>
<p>ASS MAGIC can also be applied to the chamois of your cycling shorts, focusing on the area in contact with your saddle. Moreover, you can apply ASS MAGIC to any other area where you have previously experienced chafing.</p>
<h3>AFTERCARE TIPS</h3>
<h3></h3>
<p>For optimal hygiene, it is recommended that cyclists change out of their cycling shorts and shower as soon as possible after riding. This practice significantly reduces the risk of saddle sores and infections. Further care can be taken by applying our Skin Repair Cream, specifically designed to soothe and rejuvenate your skin post-ride.</p>
<h3>CAUTION</h3>
<h3></h3>
<p>Discontinue use and consult your doctor if allergic symptoms occur. For external use only and not to be ingested. Not suitable for children under 3 years old.</p>
<h3>MAGIC SOLUTIONS FOR YOUR COMFORT</h3>
<h3></h3>
<p>If you find a sprinkle of discomfort sneaking into your rides, turn your attention to your saddle, bike setup, or cycling shorts. Tweak each element individually to accurately pinpoint any issue that could be casting a shadow over your magical journey. For more insightful tips and tricks, make sure to visit our blog!</p>
<p>Upgrade your comfort with <strong>ASS MAGIC Chamois Cream</strong> and make every ride a truly magical experience!</p>', array['ass-magic-chamois-cream-tub/1.webp']::text[], 'new', 1, '2025-03-24'::date, false, false),
  ('breezebands-magnetic-nasal-strips', 'BreezeBands Magnetic Nasal Strips', 'mr-rider', 'accessories', 'chamois-cream-rider-care', '<p>BreezeBands are reusable magnetic nasal strips designed to gently open your nasal passages and support easier, more natural breathing. Nothing goes inside your nose. A small magnetic tab sits on each side of the bridge, and the reusable band clips on from the outside, lifting the nasal walls open so air can move more freely.</p>
<p>For riders, that means less reaching for mouth breathing on climbs, less dry throat and mouth after a cold morning ride, and a more comfortable session start to finish. Off the bike, BreezeBands are designed to support quieter, easier breathing while you sleep, which is where the real recovery happens.</p>
<p>No medication. No single-use strips landing in the bin after every ride. Just a reusable band you can use night after night, ride after ride.</p>
<h4>Why riders like them</h4>
<p><strong>Easier airflow</strong><br>BreezeBands are designed to open the nose wider than traditional adhesive strips, supporting easier nasal breathing during training and recovery.</p>
<p><strong>Better sleep, better recovery</strong><br>Many users report reduced snoring and more settled sleep, which supports the recovery you need between hard days.</p>
<p><strong>Reusable and durable</strong><br>Made from high quality, medical-grade plastic with extra-strong neodymium magnets. Replace the adhesive tabs, not the whole strip.</p>
<p><strong>Pain-free fit</strong><br>Nothing goes inside the nose. Comfortable enough to forget you''re wearing it.</p>
<h4>What''s in the starter kit</h4>
<ul>
<li>
<strong>4 magnetic nasal strips</strong> in four different sizes, so you can find the fit that''s right for your nose</li>
<li>
<strong>Magnetic adhesive tabs</strong>, available in 30 tabs (15 uses) or 60 tabs (30 uses)</li>
<li>
<strong>The applicator</strong>, for quick and accurate tab placement</li>
</ul>
<h4>How to use</h4>
<ol>
<li>Use the applicator to place a tab on each side of your nose, just above the crease of the nostril.</li>
<li>Clip the BreezeBand onto the tabs. The magnets hold it in place.</li>
<li>Ride or sleep. Remove the band afterwards and reuse it. Each pair of tabs lasts around two uses.</li>
</ol>
<p>Tabs are sold separately as refills, so once you''ve found your size the ongoing cost is just the tabs.</p>', array['breezebands-magnetic-nasal-strips/1.jpg', 'breezebands-magnetic-nasal-strips/2.jpg', 'breezebands-magnetic-nasal-strips/3.jpg']::text[], 'new', 3, '2026-08-12'::date, false, false),
  ('chamois-buttr-coconut-anti-chafe-cream', 'CHAMOIS BUTT''R - COCONUT ANTI-CHAFE CREAM', 'chamois-buttr', 'accessories', 'chamois-cream-rider-care', '<p>Certified Organic Coconut Oil and Shea Butter deeply moisturize to reduce friction, while restorative ingredients contain natural antiseptic properties to soothe already chafed skin. </p>
<p>Think of it as a protective shield for your undercarriage. Chamois Butt''r creates a friction-free barrier between your skin and your bike shorts, so you can pedal away without feeling like you just had a sandpaper dance party down there. A smooth layer of moisture barrier allows your skin to glide, preventing uncomfortable chafing.</p>
<p>Apply Chamois Butt''r directly to skin or your chamois pad for immediate relief and comfortable miles on all of your adventures. Chamois Butt’r products can be applied directly <em>anywhere</em> you experience chafing discomfort, or where your skin rubs against skin or clothing (i.e., armpits, nipples, thighs, bra strap area, etc.)</p>
<p><br><strong>BENEFITS</strong></p>
<ul>
<li>No greasy residue</li>
<li>Cooling and tingling, Euro-style!</li>
<li>Immediately improves comfort</li>
<li>Soothes already chafed or irritated skin</li>
<li>Rinses out of clothing and off of skin easily</li>
<li>Won’t damage or discolor technical clothing</li>
<li>No parabens, phthalates, gluten or artificial fragrances</li>
<li>Can be applied to any skin areas that are at risk of chafing</li>
</ul>
<p><br><strong>KEY INGREDIENTS</strong></p>
<ul>
<li>Organic Coconut Oil</li>
<li>Tea Tree Oil</li>
<li>Aloe Vera</li>
<li>Vitamin A</li>
<li>Vitamin E</li>
<li>Lavender</li>
<li>Shea Butter</li>
</ul>

<p><a></a></p>', array['chamois-buttr-coconut-anti-chafe-cream/1.jpg', 'chamois-buttr-coconut-anti-chafe-cream/2.jpg', 'chamois-buttr-coconut-anti-chafe-cream/3.jpg', 'chamois-buttr-coconut-anti-chafe-cream/4.jpg', 'chamois-buttr-coconut-anti-chafe-cream/5.jpg']::text[], 'new', 1, '2026-04-02'::date, false, false),
  ('chamois-buttr-eurostyle-anti-chafe-cream', 'CHAMOIS BUTT''R - EUROSTYLE ANTI-CHAFE CREAM', 'chamois-buttr', 'accessories', 'chamois-cream-rider-care', '<p>Chamois Butt’r Eurostyle anti-chafe cream is specifically formulated with menthol and witch hazel to produce a cooling and soothing effect for cyclists who prefer a traditional European chamois creme. Chamois Butt’r lubricates, soothes, and softens the skin of all riders who experience chafing.</p>
<p>Think of it as a protective shield for your undercarriage. Chamois Butt''r creates a friction-free barrier between your skin and your bike shorts, so you can pedal away without feeling like you just had a sandpaper dance party down there. A smooth layer of moisture barrier allows your skin to glide, preventing uncomfortable chafing.</p>
<p>Apply Chamois Butt''r directly to skin or your chamois pad for immediate relief and comfortable miles on all of your adventures. Chamois Butt’r products can be applied directly <em>anywhere</em> you experience chafing discomfort, or where your skin rubs against skin or clothing (i.e., armpits, nipples, thighs, bra strap area, etc.)</p>
<p><br><strong>BENEFITS</strong></p>
<ul>
<li>No greasy residue</li>
<li>Cooling and tingling, Euro-style!</li>
<li>Immediately improves comfort</li>
<li>Soothes already chafed or irritated skin</li>
<li>Rinses out of clothing and off of skin easily</li>
<li>Won’t damage or discolor technical clothing</li>
<li>No parabens, phthalates, gluten or artificial fragrances</li>
<li>Can be applied to any skin areas that are at risk of chafing</li>
</ul>
<p><br><strong>KEY INGREDIENTS</strong></p>
<ul>
<li>Menthol</li>
<li>Witch Hazel</li>
<li>Vitamin A</li>
<li>Vitamin E<br><br>
</li>
</ul>

<p><a></a></p>', array['chamois-buttr-eurostyle-anti-chafe-cream/1.jpg', 'chamois-buttr-eurostyle-anti-chafe-cream/2.jpg', 'chamois-buttr-eurostyle-anti-chafe-cream/3.jpg', 'chamois-buttr-eurostyle-anti-chafe-cream/4.jpg', 'chamois-buttr-eurostyle-anti-chafe-cream/5.jpg']::text[], 'new', 1, '2026-04-02'::date, false, false),
  ('chamois-buttr-her-anti-chafe-cream', 'CHAMOIS BUTT''R - HER'' ANTI-CHAFE CREAM', 'chamois-buttr', 'accessories', 'chamois-cream-rider-care', '<p>Chamois Butt''r Her’ was made specifically for women’s more neutral skin pH. It uses premium ingredients including aloe vera, green tea leaf extract, tea tree oil, shea butter, &amp; lavender oil for their naturally occurring beneficial properties.</p>
<p>Her'' was created by our founder''s wife (a female sports medicine doctor) and developed with professional women cyclists for sensitive skin. Women with more sensitive skin benefit from using products developed with their natural body chemistry in mind.</p>
<p>Think of it as a protective shield for your undercarriage. Chamois Butt''r Her'' creates a friction-free barrier between your skin and your bike shorts, so you can pedal away without feeling like you just had a sandpaper dance party down there. A smooth layer of moisture barrier allows your skin to glide, preventing uncomfortable chafing.</p>
<p>Apply Chamois Butt''r Her'' directly to skin or your chamois pad for immediate relief and comfortable miles on all of your adventures. Chamois Butt’r products can be applied directly <em>anywhere</em> you experience chafing discomfort, or where your skin rubs against skin or clothing (i.e., armpits, nipples, thighs, bra strap area, etc.)</p>
<p>Safe for men, too!</p>
<p><br><strong>BENEFITS</strong></p>
<ul>
<li>No greasy residue</li>
<li>Immediately improves comfort</li>
<li>Soothes already chafed or irritated skin</li>
<li>Rinses out of clothing and off of skin easily</li>
<li>Won’t damage or discolor technical clothing</li>
<li>No parabens, phthalates, gluten or artificial fragrances</li>
<li>Can be applied to any skin areas that are at risk of chafing</li>
</ul>
<p><br><strong>KEY INGREDIENTS</strong></p>
<ul>
<li>Aloe Vera</li>
<li>Lavender Oil</li>
<li>Shea Butter</li>
<li>Green Tea Leaf Extract</li>
<li>Tea Tree Oil<br><br>
</li>
</ul>

<p><a></a></p>', array['chamois-buttr-her-anti-chafe-cream/1.jpg', 'chamois-buttr-her-anti-chafe-cream/2.jpg', 'chamois-buttr-her-anti-chafe-cream/3.jpg', 'chamois-buttr-her-anti-chafe-cream/4.jpg', 'chamois-buttr-her-anti-chafe-cream/5.jpg']::text[], 'new', 1, '2026-04-02'::date, false, false),
  ('chamois-buttr-original-anti-chafe-cream', 'CHAMOIS BUTT''R - ORIGINAL ANTI-CHAFE CREAM', 'chamois-buttr', 'accessories', 'chamois-cream-rider-care', '<p>Chamois Butt’r Original is a non-greasy skin lubricant developed by cyclists for use with all types of chamois. Chamois Butt’r lubricates, soothes, and softens the skin of all riders who experience chafing.</p>
<p>Think of it as a protective shield for your undercarriage. Chamois Butt''r creates a friction-free barrier between your skin and your bike shorts, so you can pedal away without feeling like you just had a sandpaper dance party down there. A smooth layer of moisture barrier allows your skin to glide, preventing uncomfortable chafing.</p>
<p>Apply Chamois Butt''r directly to skin or your chamois pad for immediate relief and comfortable miles on all of your adventures. Chamois Butt’r products can be applied directly <em>anywhere</em> you experience chafing discomfort, or where your skin rubs against skin or clothing (i.e., armpits, nipples, thighs, bra strap area, etc.)</p>
<p><br><strong>BENEFITS</strong></p>
<ul>
<li>No greasy residue</li>
<li>Immediately improves comfort</li>
<li>Soothes already chafed or irritated skin</li>
<li>Rinses out of clothing and off of skin easily</li>
<li>Won’t damage or discolor technical clothing</li>
<li>No parabens, phthalates, gluten or artificial fragrances</li>
<li>Can be applied to any skin areas that are at risk of chafing</li>
</ul>
<p><br><strong>KEY INGREDIENTS</strong></p>
<ul>
<li>Aloe Vera</li>
<li>Vitamin A</li>
<li>Vitamin E<br><br>
</li>
</ul>

<p><a></a></p>', array['chamois-buttr-original-anti-chafe-cream/1.jpg', 'chamois-buttr-original-anti-chafe-cream/2.jpg', 'chamois-buttr-original-anti-chafe-cream/3.jpg', 'chamois-buttr-original-anti-chafe-cream/4.jpg', 'chamois-buttr-original-anti-chafe-cream/5.jpg']::text[], 'new', 1, '2026-04-02'::date, false, false),
  ('chamois-buttr-ultra-balm', 'CHAMOIS BUTT''R - ULTRA BALM', 'chamois-buttr', 'accessories', 'chamois-cream-rider-care', '<p>This versatile balm is made for the most demanding conditions (think your longest rides or the wettest, hottest, or just nastiest conditions). Our founder, Steve Mathews, originally made this product for himself to fill a need for longer distances, to be longer lasting than our creams so he didn''t need to reapply as much, <em>and</em> be easier to carry than an 237ml tube of Butt''r.</p>
<p>Ultra is very different from our other Butt''r creams (and for some rides, that''s a good thing!). We spent six years perfecting Ultra balm''s formula to be thicker than our anti-chafe creams for advanced protection and longer lasting comfort. Basically, Ultra is made to be applied and stay where you put it. We worked to perfect this formula with a select group of experienced long distance and ultra endurance cyclists, as well as everyday cyclists and bikepackers, to ensure this balm was up to the test.</p>
<p>Never tested on animals. No harsh chemicals. No parabens, phthalates, petrolatum, or gluten. Recyclable packaging. Made in the USA.</p>
<p><br><strong>BENEFITS</strong></p>
<ul>
<li>Solid balm, softens to touch</li>
<li>One application lasts all day</li>
<li>Made with natural ingredients</li>
<li>Made for the most demanding anti-chafe needs, but protects any skin areas (great to cover healing skin!)</li>
<li>No petroleum! Made with high quality natural ingredients like beeswax, coconut oil, shea butter, and peppermint oil</li>
<li>No tingle! Natural peppermint oil smells great, but contains no skin tingle.</li>
<li>Help us recycle! These 148ml cans are made to be reused. The lid screws tight so you can stash your cash, zip ties, or snacks on trips or recycle to be repurposed.</li>
</ul>
<p><br><strong>KEY INGREDIENTS</strong></p>
<ul>
<li>Coconut Oil</li>
<li>Beeswax</li>
<li>Shea Butter</li>
<li>Peppermint Oil</li>
</ul>
<p><br><strong>DIRECTIONS</strong></p>
<ul>
<li>Apply directly to skin or chamois pad to protect skin and help prevent chafing.</li>
<li>If the product is hard, use your fingers to warm it up</li>
<li>Rub excess into skin</li>
<li>Reapply as needed</li>
<li>Reuse or recycle metal packaging</li>
</ul>

<p><a></a></p>', array['chamois-buttr-ultra-balm/1.jpg', 'chamois-buttr-ultra-balm/2.jpg', 'chamois-buttr-ultra-balm/3.jpg', 'chamois-buttr-ultra-balm/4.jpg', 'chamois-buttr-ultra-balm/5.jpg']::text[], 'new', 1, '2026-04-02'::date, false, false),
  ('muc-off-athlete-performance-luxury-chamois-cream-100ml', 'Muc-Off Athlete Performance Luxury Chamois Cream 100ml', 'muc-off', 'accessories', 'chamois-cream-rider-care', '<p>Saddle sores? It happens to the best of us.</p>
<p>Chafing? That''s part of being an athlete who trains 24/7/365 in all conditions.</p>
<p>Unhappy with the existing choices, in 2015 we decided it was time to put our 25 years of experience of cycling into developing the ultimate, high-performance Chamois Cream. With the help of our pro teams and athletes, we looked at every possible way to improve rider experience.</p>
<p>The result? A specially formulated cream to deeply moisturise your skin for total riding comfort and protection, over long distances, in all conditions.</p>
<p>We believe we’ve created the best cream out there.</p>
<p>Deliberately excluding nasty parabens and toxins, we have made sure our Chamois Cream is infused with essential provitamin moisturisers to help create that long lasting hydrated feeling on your skin.</p>
<p>Our luxury formula uses natural ingredients – including aloe vera, witch hazel, shea butter and sunflower oil – to create a mild cooling effect for total riding comfort.</p>
<p>Designed to form a protective barrier to help prevent skin damage on sensitive areas, it’s also anti-bacterial, and ideal for all riding styles from hard-fought classics through to long sportives, whether on the road or on a trail!</p>
<p>Created first and foremost for cyclists, our formula is also an essential companion for triathletes, runners and endurance athletes of all disciplines who want to minimise chafing.</p>
<p><br><strong>FEATURES:</strong></p>
<ul>
<li>Choose from great value 250ml tub, convenient 100ml tube or 5x10ml travel sachet pack</li>
<li>Anti-Bacterial</li>
<li>Does not contain any materials that are prohibited by WADA</li>
<li>Extreme skin lubricant naturally reduces the friction of your skin</li>
<li>Free from parabens and formaldehyde</li>
<li>Luxury formulation, deeply moisturising for total riding comfort</li>
<li>Enriched with natural Aloe Vera, Witch Hazel, Shea Butter and Sunflower Oil</li>
<li>Contains provitamins</li>
<li>Has a mild cooling function</li>
</ul>', array['muc-off-athlete-performance-luxury-chamois-cream-100ml/1.jpg', 'muc-off-athlete-performance-luxury-chamois-cream-100ml/2.png']::text[], 'new', 0, '2025-03-24'::date, false, false),
  ('muc-off-athlete-performance-luxury-chamois-cream-250ml', 'Muc-Off Athlete Performance Luxury Chamois Cream 250ml', 'muc-off', 'accessories', 'chamois-cream-rider-care', '<p>Saddle sores? It happens to the best of us.</p>
<p>Chafing? That''s part of being an athlete who trains 24/7/365 in all conditions.</p>
<p>Unhappy with the existing choices, in 2015 we decided it was time to put our 25 years of experience of cycling into developing the ultimate, high-performance Chamois Cream. With the help of our pro teams and athletes, we looked at every possible way to improve rider experience.</p>
<p>The result? A specially formulated cream to deeply moisturise your skin for total riding comfort and protection, over long distances, in all conditions.</p>
<p>We believe we’ve created the best cream out there.</p>
<p>Deliberately excluding nasty parabens and toxins, we have made sure our Chamois Cream is infused with essential provitamin moisturisers to help create that long lasting hydrated feeling on your skin.</p>
<p>Our luxury formula uses natural ingredients – including aloe vera, witch hazel, shea butter and sunflower oil – to create a mild cooling effect for total riding comfort.</p>
<p>Designed to form a protective barrier to help prevent skin damage on sensitive areas, it’s also anti-bacterial, and ideal for all riding styles from hard-fought classics through to long sportives, whether on the road or on a trail!</p>
<p>Created first and foremost for cyclists, our formula is also an essential companion for triathletes, runners and endurance athletes of all disciplines who want to minimise chafing.</p>
<p><br><strong>FEATURES:</strong></p>
<ul>
<li>Choose from great value 250ml tub, convenient 100ml tube or 5x10ml travel sachet pack</li>
<li>Anti-Bacterial</li>
<li>Does not contain any materials that are prohibited by WADA</li>
<li>Extreme skin lubricant naturally reduces the friction of your skin</li>
<li>Free from parabens and formaldehyde</li>
<li>Luxury formulation, deeply moisturising for total riding comfort</li>
<li>Enriched with natural Aloe Vera, Witch Hazel, Shea Butter and Sunflower Oil</li>
<li>Contains provitamins</li>
<li>Has a mild cooling function</li>
</ul>', array['muc-off-athlete-performance-luxury-chamois-cream-250ml/1.jpg']::text[], 'new', 0, '2025-03-24'::date, false, false),
  ('sweetcheeksbuttbutter', 'Sweet Cheeks Butt Butter', 'sweet-cheeks', 'accessories', 'chamois-cream-rider-care', '<p>Sweet Cheeks Butt Butter </p>
<p>A natural anti-chafing cream for all athletes. Soothing and antiseptic, it helps to prevent chafing, blisters and sores when biking, running or swimming. Apply Butt Butter before you exercise to any spots that rub or are irritated. Because it is Beeswax based, it is safe to use with wetsuits and stays on the skin even in wet conditions.</p>

<p>Some favourite uses of Butt Butter are:</p>
<p>• on the neck with wetsuits</p>
<p>• toes to prevent blisters while running</p>
<p>• bike chamois to keep you comfortable on your saddle</p>
<p>• On your lower back for kayaking</p>
<p>Ingredients:</p>

<p>NZ Beeswax, NZ Comfrey Leaf and Calendula Oil,  Apricot Kernel Oil, Aloe Vera Gel, Spring Water, Pure Essential Oils of NZ Lavender and Manuka, Emulsifier E, Geoguard.</p>', array['sweetcheeksbuttbutter/1.jpg']::text[], 'new', 2, '2023-05-25'::date, false, false),

  -- ---- accessories · cycling-glasses ----
  ('100-aerocraft-glasses', '100% AEROCRAFT Glasses', '100-percent', 'accessories', 'cycling-glasses', '<p>An Evolution Of Speed</p>
<p>Meet Aerocraft, where form meets function in Sport Performance eyewear innovation. At the core of Aerocraft''s distinctive appearance lies our revolutionary 3DPlane Molded Lens technology, a signature feature integrated into our MX and Snow goggles since 2019. This innovative technology not only offers a striking aesthetic; it redefines the standards of optical clarity.<br>Crafted to perfection, the unique design shape of the 3DPlane Molded Lens blends seamlessly into the lightweight, flexible temples, ensuring a comfortable and secure fit without compromising on style or performance.<br>Elevate your experience to new heights with Aerocraft. Engineered to deliver an unparalleled field of view, Aerocraft transcends conventional eyewear boundaries, seamlessly merging style and functionality.</p>
<p>FEATURES:<br>• Designed in California<br>• Ultra HD lenses manufactured from high-impact resistant and lightweight polycarbonate<br>• Category defining ULTRA HD lens provides unmatched optical clarity<br>• Injection-molded 2mm impact-rated, shatter-resistant lens<br>• 6-base cylindrical shield lens for increased peripheral view and protection<br>• 360º visibility for unobstructed views and optimal field of vision<br>• Interchangeable scratch resistant lenses provide 100% UV protection (UV400)<br>• Hydrophobic and Oleophobic lens treatment repels water, dirt and oil<br>• Adjustable temple tips for the perfect fit<br>• Durable, flexible and lightweight TR90 frame<br>• Ultra-grip rubber nose and temple tips provide a secure fit no matter how much you sweat<br>• Also available with contrast-defining HiPER lens and photochromic lens<br>• Comes with a hard case, microfiber cleaning bag, and extra alternative fit nose pads</p>', array['100-aerocraft-glasses/1.jpg', '100-aerocraft-glasses/2.jpg', '100-aerocraft-glasses/3.jpg']::text[], 'new', 3, '2024-05-09'::date, false, false),
  ('100-hypercraft-glasses', '100% HyperCraft Glasses', '100-percent', 'accessories', 'cycling-glasses', '<p>Through the integration of their patented UltraCarbon technology, 100% developed the Hypercraft sunglasses into a lighter, stronger, and more dynamic performance shield than any other on the market. Feel nothing at just 23 grams, but see everything with the laser cut rimless lens, which offers increased peripheral view and protection, as well as full spectrum UV protection and scratch resistance. Hydrophobic and oleophobic lens treatments repel water, dirt, and oil keeping vision clear, while rubber nose and temple tips grip to provide a secure fit.</p>

<table>
<tbody>
<tr>
<th>Accessories:</th>
<td>Comes with a hard case, microfiber cleaning bag, clear replacement lens, and extra alternative fit nose pad</td>
</tr>
<tr>
<th>Features:</th>
<td>Streamlined Laser Cut Rimless Shield / Hydrophobic and oleophobic lens treatment repels water, dirt, and oil / highest quality scratch-resistant lens / Complete full-spectrum UV protection / 5.5-base cylindrical shield lens / Ultra-grip rubber nose and temple tips</td>
</tr>
<tr>
<th>Frame:</th>
<td>Frame: 100% proprietary material blend of carbon and TR90 / HiPER Lens: Filter Category 3, Light Transmission 10 / Clear Lens: Filter Category 0, Light Transmission 93%</td>
</tr>
<tr>
<th>Weight:</th>
<td>23g / ultimate performance with minimal weight</td>
</tr>
</tbody>
</table>', array['100-hypercraft-glasses/1.jpg', '100-hypercraft-glasses/2.jpg', '100-hypercraft-glasses/3.jpg', '100-hypercraft-glasses/4.jpg', '100-hypercraft-glasses/5.jpg']::text[], 'new', 0, '2023-02-23'::date, false, false),
  ('100-hypercraft-sq-glasses', '100% Hypercraft SQ Glasses', '100-percent', 'accessories', 'cycling-glasses', '<table>
<tbody>
<tr>
<td>Featuring UltraCarbon™ technology, the Hypercraft® SQ offers a unique fit for fans of the Hypercraft® by offering a shorter lens with a square profile. The wide lens covers an extensive field of vision for unmatched protection from all angles.   UltraLight. UltraPerformance. UltraCarbon™.</td>
</tr>
</tbody>
</table>
<table>
<tbody>
<tr>
<td>-Designed in California<br>-Superior optics with Ultra HD lenses made from crack and chemical resistant nylon<br>-5.5-base cylindrical shield lens for increased peripheral view and protection<br>-100% proprietary UltraCarbon™ material for a durable, strong and lightweight frame<br>-100% UV protection (UV400)<br>-Scratch-resistant lens coating of the highest quality<br>-Streamlined Laser Cut Rimless Shield with superior ventilation positioned with aerodynamic angles<br>-Hydrophobic and oleophobic lens treatment repels water, dirt, and oil<br>-Temple arm scoops to manage moisture<br>-Available with contrast-defining HiPER® lens and photochromic lens<br>-Complete full-spectrum UV protection, including UVA, UVB and UV400 wavelengths<br>-Ultra-grip rubber nose and temple tips provide a secure fit<br>-Ultra-lightweight of 23 grams offers ultimate performance with minimal weight<br>-Comes with a hard case, microfiber cleaning bag, clear replacement lens and extra alternative fit nosepad</td>
</tr>
</tbody>
</table>', array['100-hypercraft-sq-glasses/1.jpg', '100-hypercraft-sq-glasses/2.jpg']::text[], 'new', 1, '2023-11-08'::date, false, false),
  ('100-hypercraft-xs', '100% Hypercraft XS', '100-percent', 'accessories', 'cycling-glasses', '<table>
<tbody>
<tr>
<td>HYPERCRAFT® XS introduces a new generation of athletes to the lightest, strongest and most dynamic performance shield on the market. Loaded with the same game-changing UltraCarbonTM technology of HYPERCRAFT®, this smaller-scale shield is designed for those smaller faces, uncompromising women, and young athletes that demand bold performance eyewear.</td>
</tr>
</tbody>
</table>
<table>
<tbody>
<tr>
<td>•Designed in California<br>•Superior optics with Ultra HD lenses made from crack and chemical resistant nylon<br>•5.5-base cylindrical shield lens for increased peripheral view and protection<br>•100% proprietary UltraCarbon™ material for a durable, strong and lightweight frame<br>•100% UV protection (UV400)<br>•Scratch-resistant lens coating of the highest quality<br>•Streamlined Laser Cut Rimless Shield with superior ventilation positioned with aerodynamic angles<br>•Hydrophobic and oleophobic lens treatment repels water, dirt, and oil<br>•Temple arm scoops to manage moisture<br>•Available with contrast-defining HiPER® lens and photochromic lens<br>•Complete full-spectrum UV protection, including UVA, UVB and UV400 wavelengths<br>•Ultra-grip rubber nose and temple tips provide a secure fit<br>•Ultra-lightweight of 23 grams offers ultimate performance with minimal weight<br>•Comes with a hard case, microfiber cleaning bag, clear replacement lens and extra alternative fit nosepad</td>
</tr>
</tbody>
</table>', array['100-hypercraft-xs/1.jpg', '100-hypercraft-xs/2.jpg', '100-hypercraft-xs/3.jpg', '100-hypercraft-xs/4.jpg']::text[], 'new', 0, '2025-03-19'::date, false, false),
  ('100-korbin', '100% Korbin', '100-percent', 'accessories', 'cycling-glasses', '<p>Meet Korbin, the pinnacle of Sport Performance eyewear innovation. At the heart of Korbin''s distinctive design is our groundbreaking 3DPlane</p>
<p>Moulded Lens technology. This revolutionary advancement not only enhances its aesthetic appeal but also sets new benchmarks in optic clarity.</p>
<p>Designed to provide an expansive field of view, Korbin transcends traditional eyewear boundaries, offering athletes an unrivalled experience. This</p>
<p>fusion of innovative lens technology with futuristic design principles elevates Korbin to unparalleled heights in eyewear excellence.</p>', array['100-korbin/1.jpg', '100-korbin/2.jpg', '100-korbin/3.jpg']::text[], 'new', 1, '2024-08-23'::date, false, false),
  ('100-s2-glasses', '100% S2 Glasses', '100-percent', 'accessories', 'cycling-glasses', '<p>Inspired by Speedcraft''s legendary success on some of cycling''s biggest stages, the S2 redefines speed in a package designed for everyday sports performance. The innovative technologies and 100% signature lens have been fine tuned for riding of any level and application. The laser-etched edges provide the look of a full frame in a rimless, cylindrical shaped shield, for 360-degree visibility and comfort. A Hydroilo lens coating repels oil and water, while integrated ventilation ports reduce fogging. Ultra-grip rubber nose and temple tips keep things secure, there is even an alternative fit nose piece and spare clear lens included.</p>

<table>
<tbody>
<tr>
<th>Accessories:</th>
<td>Includes spare clear lens and alternative fit nose piece.</td>
</tr>
<tr>
<th>Display:</th>
<td>Colour Lens: Filter Category 3, Light Transmission 12% / Clear Lens: Filter Category 0, Light Transmission 93%</td>
</tr>
<tr>
<th>Features:</th>
<td>Cylindrical shield shape offers unobstructed view / 5.5 base ensures superior fit / HYDROILO lens coating repels oil and water / Ultra-grip rubber nose and temple tips</td>
</tr>
</tbody>
</table>', array['100-s2-glasses/1.jpg', '100-s2-glasses/2.jpg', '100-s2-glasses/3.jpg', '100-s2-glasses/4.jpg', '100-s2-glasses/5.jpg']::text[], 'new', 2, '2023-02-23'::date, false, false),
  ('100-s3-glasses', '100% S3 Glasses', '100-percent', 'accessories', 'cycling-glasses', '<p>The S3 sunglasses bring together the understated brow of the S2 sunglasses with the iconic intake vents of the Speedcraft.</p>
<p>Optimising your vision, the S3 sunglasses feature a 5.5 base cylindrical shield lens with Ultra-HD technology. The lens increases your peripheral vision and protection, delivering 100% UV protection, and impact resistance. The hard coated, scratch resistant lens is also treated with hydrophobic and oleophobic coatings which repel water, oil, dirt, and more. Additional lens ventilation prevents fogging – keeping your vision clear in the most extreme conditions.</p>
<p>Promoting all-day comfort, the S3 half-rim frame is formed from durable, flexible, and lightweight TR90. For added stabilisation the nose and temple tips are formed from ultra-grip rubber ensuring a cushioned and secure fit.</p>
<p><b>In the Box</b><br>Hard case<br>Microfibre cleaning bag<br>Clear replacement lens<br>Standard and alternative-fit nose pads</p>

<p>Note: Limited Edition and Photochromic do not include extra lense. </p>', array['100-s3-glasses/1.jpg', '100-s3-glasses/2.jpg', '100-s3-glasses/3.jpg', '100-s3-glasses/4.webp', '100-s3-glasses/5.jpg']::text[], 'new', 2, '2023-02-23'::date, false, false),
  ('100-slendale-glasses', '100% Slendale Glasses', '100-percent', 'accessories', 'cycling-glasses', '<p><strong>SLENDALE</strong></p>
<p>The updated design of the original Glendale sunglasses combines timeless aesthetics with modern functionality, resulting in a sleeker and lighter sunglass that can be worn comfortably for everyday activities while still exuding style. The shield lens of the Slendale seamlessly integrates into a lightweight frame, providing a wide range of users with a comfortable fit at an affordable price.</p>

<p>Features:</p>
<p>• Designed in California</p>
<p>• Ultra HD lenses manufactured from shatter proof and impact resistant polycarbonate</p>
<p>• 5.5-base cylindrical shield lens for increased peripheral view and protection</p>
<p>• 100% UV protection</p>
<p>• Scratch resistant lens coating of the highest quality</p>
<p>• Additional lens ventilation to prevent fogging</p>
<p>• Hydrophobic and Oleophobic lens treatment repels water, dirt and oil</p>
<p>• Durable, flexible and lightweight TR90 frame</p>
<p>• Ultra-grip rubber nose and temple tips provide a secure fit</p>
<p>• Adjustable temple tips to ensure proper fit</p>
<p>• Also available with contrast-defining HiPER lens</p>', array['100-slendale-glasses/1.jpg', '100-slendale-glasses/2.jpg', '100-slendale-glasses/3.jpg', '100-slendale-glasses/4.jpg', '100-slendale-glasses/5.jpg']::text[], 'new', 2, '2024-03-08'::date, false, false),
  ('100-speedcraft-glasses', '100% SpeedCraft Glasses', '100-percent', 'accessories', 'cycling-glasses', '<p>The eyewear of choice for world champion cyclist Peter Sagan, the Speedcraft is fully loaded with 100%’s most advanced optical shield technology for the ultimate in sports performance. The 100% signature lens, with its cylindrical shield, features 360-degree visibility in the riding position. The highly impact resistant and lightweight polycarbonate lens provides 100% UV protection, scratch resistance, is easily interchangeable, and with the HYDROILO lens treatment, repel water, dirt and oil, keeping your vision clear and focused. Ultra-grip rubber nose and temple pieces help provide all-day comfort while the lower air scoops increase ventilation and reduce moisture on the lens.</p>

<table>
<tbody>
<tr>
<th>Accessories:</th>
<td>Comes with a hard case, microfiber cleaning bag, alternate fit nose pad and clear replacement lens</td>
</tr>
<tr>
<th>Features:</th>
<td>TR90 frame / High-impact resistant polycarbonate lenses / 5-base cylindrical shield lens / 360 degree visibility / Interchangeable scratch-resistant lenses / 100% UV protection / Lower air scoops to increase ventilation / HYDROILO lens treatment repels water, dirt and oil / Temple arm scoops</td>
</tr>
</tbody>
</table>', array['100-speedcraft-glasses/1.jpg', '100-speedcraft-glasses/2.jpg', '100-speedcraft-glasses/3.jpg', '100-speedcraft-glasses/4.jpg', '100-speedcraft-glasses/5.jpg']::text[], 'new', 0, '2023-02-23'::date, false, false),
  ('oakley-cybr-dyno', 'Oakley Cybr Dyno', 'oakley', 'accessories', 'cycling-glasses', 'CYBR DYNO was made for movement. An expansion of Oakley®’s rimless sport product line, CYBR DYNO features a unique, futuristic lens shape with a rimless, lightweight O Matter™ frame that fits a variety of head sizes and optimizes field of view. Alt Iridium lens detailing brings aesthetic appeal while the ventilated design adds function by maximizing airflow. For comfort and durability, CYBR DYNO has ligature nosepads plus lightweight O Matter™ temples and no-slip integrated Unobtainium® earsocks. To experience enhanced color and contrast everywhere you go, Prizm™ Lens Technology provides the details.
• SHIELD: A toric shield of Plutonite® in a rimless design for a fashion-forward style.<br>• LENSES: Available with Prizm™ lenses that are designed to enhance color, contrast and detail -- coming in a range of color hues to match any style look.<br>• LIGHTWEIGHT: Rimless design reduces frame mass to provide durability and all-day comfort.<br>• GRIP: Unobtainium® nosepads and temples increase grip to help keep eyewear securely in place without sacrificing comfort.', array['oakley-cybr-dyno/1.png', 'oakley-cybr-dyno/2.webp']::text[], 'new', 0, '2025-04-15'::date, false, false),
  ('oakley-cybr-zero', 'Oakley Cybr Zero', 'oakley', 'accessories', 'cycling-glasses', 'With a futuristic design and functional fit, CYBR ZERO was made for effortless sport performance. Delivering flexibility and comfort, CYBR ZERO builds off our heritage of rimless sport product that is ultra lightweight, fits a variety of head sizes and optimizes field of view. Alt Iridium lens detailing adds unique aesthetic appeal while ligature nosepads deliver comfort and the ventilated design allows for enhanced airflow. CYBR ZERO’s lightweight, O Matter™ temples have integrated Unobtainium® earsocks to provide a no-slip grip. For enhanced color and contrast everywhere you go, Prizm™ Lens Technology provides the details.

Read less

• SHIELD: A toric shield of Plutonite® in a rimless design for a fashion-forward style.<br>• LENSES: Available with Prizm™ lenses that are designed to enhance color, contrast and detail -- coming in a range of color hues to match any style look.<br>• LIGHTWEIGHT: Rimless design reduces frame mass to provide durability and all-day comfort.<br>• GRIP: Unobtainium® nosepads and temples increase grip to help keep eyewear securely in place without sacrificing comfort.', array['oakley-cybr-zero/1.png']::text[], 'new', 0, '2025-08-27'::date, false, false),
  ('oakley-encoder', 'Oakley Encoder', 'oakley', 'accessories', 'cycling-glasses', '<p> <strong>Description:</strong></p>
<strong></strong>
<strong></strong>
<strong></strong>
Purpose-built for use across multiple sport categories, Encoder is a sport performance style designed with hat and helmet fit functionality in mind. The progressive wrap design creates a unique look with superior coverage and enhanced field of view. The extended wrap of the lens, coupled with calibrated rigidity and low-profile temples make Encoder an obvious choice for a broad range of sports across a variety of light conditions.

<br>

• MULTI-SPORT DESIGN - Functional sport design with optimized coverage, wider field of view, frame retention and impact protection.<br>• REVOLUTIONARY LENS DESIGN - Advancements in optical design have allowed the lens to be designed with an extended wrap and rigidity in key areas that mimic the structural properties of a frame.<br>• HAT AND HELMET FIT TEMPLES - O-Matter™ temples have been designed to be low profile to fit with hats and helmets.<br>• NO-SLIP GRIP - Unobtainium® earsocks and nosepads help provide sport level retention with a no-slip grip and all-day comfort.<br>• SEE MORE DETAILS - Available with Prizm™ lenses that are designed to enhance color, contrast so you can see more detail.', array['oakley-encoder/1.jpg', 'oakley-encoder/2.png', 'oakley-encoder/3.webp', 'oakley-encoder/4.webp', 'oakley-encoder/5.webp']::text[], 'new', 1, '2021-09-01'::date, false, true),
  ('oakleyradarev', 'Oakley Radar EV', 'oakley', 'accessories', 'cycling-glasses', '<p><strong>Description:</strong></p>
<p>A new milestone in the heritage of performance, Radar® EV takes breakthroughs of a revolutionary design even further with a taller lens that extends the upper field of view. From the comfort and protection of the O Matter® frame to the grip of its Unobtanium® components, this premium design builds on the legacy of Radar innovation and style.FEATURES:</p>
<p>Path lenses enhance performance if traditional lenses touch your cheeks and help extend the upper field of view</p>
<p>Plutonite® Lenses offer top UV Protection filtering 100% of all UVA, UVB, UVC and harmful blue light up to 400nm</p>
<p>O-Matter™ stress-resistant frame material is both lightweight and durable for all-day comfort and protection</p>
<p>Prizm™ is a revolution in lens optics built on decades of color science research. Prizm™ lenses provide unprecedented control of light transmission resulting in colors precisely tuned to maximize contrast and enhance visibility.</p>
<p>Improving safety, comfort and performance, Oakley HDPolarized lenses filter out 99% of reflected glare without the haze and optical distortion that can come with polarized lenses made with conventional manufacturing techniques.</p>', array['oakleyradarev/1.jpg', 'oakleyradarev/2.jpg', 'oakleyradarev/3.jpg', 'oakleyradarev/4.png', 'oakleyradarev/5.png']::text[], 'new', 1, '2021-08-27'::date, false, true),
  ('oakley-radar-plate', 'Oakley Radar Plate', 'oakley', 'accessories', 'cycling-glasses', 'Welcome to the evolution of the sport performance sunglass, where timeless Oakley attitude meets modern design and detail. Taking requests from our athletes, we expanded the Radar® family and its functionality with Radar Plate, which delivers an upgraded bridge field of view plus Unobtainium® nose pads and no-slip Unobtainium® earsocks for durability and comfort. To experience enhanced color and contrast everywhere you go, Prizm™ Lens Technology provides the details.
• FRAME MATERIAL: Lightweight O Matter™ frame material with ellipse metal icon accents.<br>• NO-SLIP GRIP: Unobtainium® earsocks and nosepads for increased comfort and performance.<br>• SEE MORE DETAILS: Oakley performance shield lens technology with HDO®. Available with Prizm™ lenses to enhance color, contrast and detail for an optimized experience. Polarized and Iridium® lens options available.<br>• OAKLEY PRESCRIPTION LENSES: Available with Oakley Authentic Prescription Lenses for consistent high quality in fit, form and function from lens to frame.', array['oakley-radar-plate/1.png', 'oakley-radar-plate/2.jpg', 'oakley-radar-plate/3.jpg', 'oakley-radar-plate/4.jpg']::text[], 'new', 0, '2025-04-15'::date, false, false),
  ('oakley-rslv-glasses', 'Oakley RSLV Glasses', 'oakley', 'accessories', 'cycling-glasses', 'Big and bold, yet clean and sleek, RSLV is designed to fit on larger heads and faces. The frame design and cylindrical lens sit wider on the face, maximizing coverage and comfort while enhancing your peripheral view. Unobtainium® earsocks and nosepads help securely keep the frame in place and O Matter™ temples help allow that every day, everywhere fit. Available with Prizm™ Lens Technology to enhance color, contrast and detail for an optimized experience.

• FIT – Designed to fit on larger heads and faces<br>• DESIGN - Functional sport design with optimized coverage, field of view, retention and impact protection<br>• FRAME MATERIAL - Strong yet light O Matter® frame provides durability and all-day comfort<br>• ADDED RETENTION - Earsocks are molded the temples to help provide all day comfort and excellent retention<br>• NOSEPADS - Unobtainium® nosepads for a no-slip grip<br>• SEE MORE DETAILS - Available with Prizm™ Lens Technology that is engineered to enhance color and contrast to see more detail', array['oakley-rslv-glasses/1.png', 'oakley-rslv-glasses/2.png', 'oakley-rslv-glasses/3.jpg']::text[], 'new', 2, '2024-09-25'::date, false, true),
  ('oakley-sphaera-slash', 'Oakley Sphaera Slash', 'oakley', 'accessories', 'cycling-glasses', 'Consider Sphaera™ Slash your permission to push past any limits. The result of decades of research with athletes, Sphaera Slash was designed with an alternative “slash” lens shape to help reduce cheek crash, and optimizes sport performance through a wide field of view and lightweight O Matter™ frame. The front vent on the frame provides enhanced airflow while Unobtainium® nosepads and molded-in earsocks deliver a no-slip grip for effortless wear with hats and helmets. To experience enhanced color and contrast everywhere you go, Prizm™ Lens Technology provides the details.
• DESIGNED FOR MULTI-SPORT USAGE: Modern, sleek design with an extended field of view and optimized retention and comfort. The “slash” lens shape helps minimize cheek crash.<br>• LIGHTWEIGHT AND DURABLE: O Matter™ frame material provides all-day comfort<br>• NO-SLIP GRIP: Unobtainium® nosepads and earsocks provide no-slip grip when wet to help increase retention and help grip with hats and helmets<br>• SEE MORE DETAILS - Prizm™ Lens Technology engineered to enhance color and contrast to see more detail', array['oakley-sphaera-slash/1.png', 'oakley-sphaera-slash/2.jpg', 'oakley-sphaera-slash/3.webp']::text[], 'new', 1, '2025-04-15'::date, false, true),
  ('oakley-sphaera-glasses', 'Oakley Sphaera Strike Glasses', 'oakley', 'accessories', 'cycling-glasses', '<p>Oakley Sphaera Glasses</p>
Designed for boundary-pushing performance, no matter the sport, Sphaera’s wide field of view guarantees you’ll see it all - and with Prizm™ Lens Technology, you’ll see it all in detail. The lightweight O Matter™ frame is designed to wear with hats and helmets, and the frame features a front vent to ensure enhanced airflow. Unobtainium® nosepads and molded-in earsocks provide no-slip grip when you break a sweat. Experience the pinnacle of sport performance eyewear with Sphaera – put them on and then forget them forever.

<br>

• DESIGNED FOR MULTI-SPORT USAGE: Modern, sleek design with an extended field of view and optimized retention and comfort<br>• LIGHTWEIGHT AND DURABLE: O Matter™ frame material provides all-day comfort<br>• NO-SLIP GRIP: Unobtainium® nosepads and earsocks provide no-slip grip when wet to help increase retention and help grip with hats and helmets<br>• Prizm™ Lens Technology engineered to enhance color and contrast to see more detail', array['oakley-sphaera-glasses/1.png', 'oakley-sphaera-glasses/2.png', 'oakley-sphaera-glasses/3.png', 'oakley-sphaera-glasses/4.png', 'oakley-sphaera-glasses/5.jpg']::text[], 'new', 3, '2026-04-08'::date, false, true),
  ('oakley-stunt-devil', 'Oakley Stunt Devil', 'oakley', 'accessories', 'cycling-glasses', 'Fit for your burning drive to excel. Stunt Devil is the ultimate sports eyewear model, boosting head contact surface area to ensure otherworldly retention, grip, and comfort: game on!

<br>

• <strong>HyperGrip Technology</strong>: Oakley HyperGrip utilizes flexible earsocks for maximum comfort and retention, offering a more secure fit while distributing weight evenly for a lightweight feel, even during the most intense activities<br><br>• <strong>Unobtainium® Nosepad</strong>: Unobtanium is the first innovative material patented by Oakley to ensure maximum comfort by increasing grip with perspiration and keeping the frame in place without slipping<br><br>• <strong>O-Matter™ Frame</strong>: Oakley’s injection molded thermoplastic frame material provides improved strength and flexibility over traditional acetate, andis built to withstand from shifting or deforming over time<br><br>• The model comes with 2 interchangeable nosepads for adaptable nose fit', array['oakley-stunt-devil/1.png']::text[], 'new', 0, '2025-10-07'::date, false, false),
  ('oakley-sutro', 'Oakley Sutro', 'oakley', 'accessories', 'cycling-glasses', '<p>Description:</p>
<p>Oakley’s obsession with innovation has created a legacy of science, sculpture and defiance of conventional thinking. Oakley’s superior lenses are tested under extreme circumstances to guarantee uncompromising protection against high-mass impact, while the brand’s Plutonite® technology stops every wavelength of ultraviolet radiation from the sun. Whether you’re after a pair of the brand’s signature sunglasses or basics that tap into their motorcycle roots, their wide range is set to become the backbone of your everyday wardrobe.</p>
<ul>
<li>Oversized acetate frames- Prizm™ lenses to enhance visibility </li>
<li>Unobtanium® earsocks and nosepads keep shades in place </li>
<li>Branding at temples </li>
<li>Comes in zip hard case with drawstring bag </li>
<li>Temple Length: 140 </li>
<li>Lens Bridge Size: 75 13 </li>
<li> Assembled in the United States</li>
</ul>', array['oakley-sutro/1.avif', 'oakley-sutro/2.webp', 'oakley-sutro/3.jpg', 'oakley-sutro/4.jpg', 'oakley-sutro/5.jpg']::text[], 'new', 2, '2021-08-24'::date, false, true),
  ('oakleysutrolite', 'Oakley Sutro Lite', 'oakley', 'accessories', 'cycling-glasses', '<p><strong>Description:</strong></p>
<p>The Sutro family expands with a semi-rimless version of the popular style for greater field of view. Inspired by the daily life of urban cyclists, the high-wrap shield creates a bold, versatile look, protects from the elements and enhances vision with Prizm™ Lens Technology, while inspiring athletes to move confidently and seamlessly through their day.</p>', array['oakleysutrolite/1.jpg', 'oakleysutrolite/2.jpg', 'oakleysutrolite/3.jpg', 'oakleysutrolite/4.jpg', 'oakleysutrolite/5.jpg']::text[], 'new', 5, '2021-08-24'::date, false, true),
  ('oakey-sutro-lite-sweep', 'Oakley Sutro Lite Sweep', 'oakley', 'accessories', 'cycling-glasses', '<h3>OAKLEY SUNGLASSES SUTRO LITE SWEEP</h3>

<p>  Sutro Lite Sweep blends the Oakley Eyeshade Heritage with the ever popular Sutro silhouette. With a sporty design, enhanced coverage and big lens, for that extended field of view. Sutro Lite Sweep also has retention and impact protection, so while standing you out from the crowd, they also provide maximum durability and comfort. Available in a range of colours, with non-vented and vented lenses, giving you extra airflow to keep cool, no matter what the activity.</p>', array['oakey-sutro-lite-sweep/1.png', 'oakey-sutro-lite-sweep/2.webp', 'oakey-sutro-lite-sweep/3.png', 'oakey-sutro-lite-sweep/4.jpg', 'oakey-sutro-lite-sweep/5.webp']::text[], 'new', 3, '2022-04-19'::date, false, true),
  ('ulac-neo-vue-hoko-eyewear', 'ULAC Neo Vue HOKO Eyewear', 'ulac', 'accessories', 'cycling-glasses', '<p>FEATURES</p>

<p>Featuring Köri photochromic lenses for optimal vision across a range of light conditions, the Hoko’s aggressive styling and superior optical performance are engineered for any athletic endeavor.</p>
<p><b>All Neo Vue Sunglasses comes with a complimentary Neo Porter dual purpose Handlebar Bag / Protective Case.</b></p>
<p>* Please double check your frame and lens color choice before purchasing. </p>
<p>* Please ensure the fit of the Neo Porter to your handlebar dimensions before mounting. </p>
<p>* Check the sunglasses thoroughly before using; do not continue to use if damaged. </p>
<p>* Store your Neo Vue in the included case or soft pouch.</p>
<p>* Always clean your Neo Vue with a clean and dry cloth (included). </p>
<p>* DO NOT use cleaning fluids, solvents or alcohol to clean the lens.</p>
<p>* DO NOT wipe your lens down with any type of paper product including tissues, paper towels or napkins.</p>
<p>SPECIALTY</p>

<ul>
<li>Light weight of 28 g = 0.061 lbs</li>
<li>1.5 mm cylindrical lens with high impact resistance</li>
<li>Available in Photochromic and Polarized lenses</li>
<li>100% UV400 lens protection blocks 100% of UVA/UVB rays</li>
<li>TR90 frame, super durable, fatigue resistant</li>
<li>Köri lens tech: engineered by ULAC to provide higher contrast, lowest color distortion and eye fatigue reduction.</li>
<li>Complementary Neo Porter Handlebar Bag </li>
<li>Adjustable nose pads</li>
<li>Microfiber pouch + wiping cloth</li>
<li>RX insert</li>
</ul>

<p>NEO VUE SPEC</p>

<p>Frame material: TR90</p>
<p>Lenses: PC Photocrhromic / Polarized  </p>
<p>Weight: 28g. = 0.061bs</p>
<p>NEO PORTER SPEC</p>

<p>Size: 165 x 80 x 85mm</p>
<p>Weight: 175g = 0.385lbs</p>
<p>Capacity: 0.9L</p>
<p>Main fabric: Waterproof nylon + polyester </p>
<p><strong><em>Please check the specs before purchasing</em></strong></p>
<p>ACCESSORIES</p>

<ul>
<li>Velcro strap x 2</li>
<li>Multistrap x 1 </li>
<li>Microfiber pouch </li>
<li>Wiping cloth</li>
<li>RX insert</li>
</ul>', array['ulac-neo-vue-hoko-eyewear/1.jpg', 'ulac-neo-vue-hoko-eyewear/2.jpg', 'ulac-neo-vue-hoko-eyewear/3.jpg', 'ulac-neo-vue-hoko-eyewear/4.jpg', 'ulac-neo-vue-hoko-eyewear/5.jpg']::text[], 'new', 3, '2025-08-01'::date, false, false),
  ('ulac-neo-vue-luft-eyewear', 'ULAC Neo Vue LUFT Eyewear', 'ulac', 'accessories', 'cycling-glasses', '<p>FEATURES</p><p>With its solid full-frame attachment style, the Luft provides a true enthusiast experience in pragmatic cycling eyewear. Luft comes with three popular Köri coated lenses and one polarized for ultimate UV protection.</p><p><strong>All Neo Vue Sunglasses comes with a complimentary Neo Porter dual purpose Handlebar Bag / Protective Case. </strong></p><p>* Please double check your frame and lens color choice before purchasing. </p><p>* Please ensure the fit of the Neo Porter to your handlebar dimensions before mounting. </p><p>* Check the sunglasses thoroughly before using; do not continue to use if damaged. </p><p>* Store your Neo Vue in the included case or soft pouch.</p><p>* Always clean your Neo Vue with a clean and dry cloth (included). </p><p>* DO NOT use cleaning fluids, solvents or alcohol to clean the lens.</p><p>* DO NOT wipe your lens down with any type of paper product including tissues, paper towels or napkins.</p><p>SPECIALTY</p><ul>
<li>Light weight of 30 g = 0.066 lbs</li>
<li>1.5 mm cylindrical lens with high impact resistance</li>
<li>Available in Köri coating and Polarized lenses</li>
<li>100% UV400 lens protection blocks 100% of UVA/UVB rays</li>
<li>TR90 frame, super durable, fatigue resistant</li>
<li>Köri lens tech: engineered by ULAC to provide higher contrast, lowest color distortion and eye fatigue reduction.</li>
<li>Complementary Neo Porter Handlebar Bag </li>
<li>Adjustable nose pads</li>
<li>Microfiber pouch + wiping cloth</li>
<li>Replacement clear lenses  </li>
<li>RX insert</li>
</ul><p>NEO VUE SPEC</p><p>Frame material: TR90</p><p>Lenses: PC Photocrhromic / Polarized  </p><p>Weight: 30g. = 0.066bs</p><p>NEO PORTER SPEC</p><p>Size: 165 x 80 x 85mm</p><p>Weight: 175g = 0.385lbs</p><p>Capacity: 0.9L</p><p>Main fabric: Waterproof nylon + polyester </p><p><strong><em>Please check the specs before purchasing</em></strong></p><p>ACCESSORIES</p><ul>
<li>Velcro strap x 2</li>
<li>Multistrap x 1 </li>
<li>Microfiber pouch </li>
<li>Wiping cloth</li>
<li>RX insert</li>
<li>Replacement clear lenses </li>
</ul>', array['ulac-neo-vue-luft-eyewear/1.jpg', 'ulac-neo-vue-luft-eyewear/2.jpg', 'ulac-neo-vue-luft-eyewear/3.jpg', 'ulac-neo-vue-luft-eyewear/4.jpg', 'ulac-neo-vue-luft-eyewear/5.jpg']::text[], 'new', 3, '2025-08-01'::date, false, false),
  ('ulac-neo-vue-otaku-eyewear', 'ULAC Neo Vue OTAKU Eyewear', 'ulac', 'accessories', 'cycling-glasses', '<p>FEATURES</p>

<p>Casual + Touring, the Otaku is a full frame lightweight (25 gram) sport performance sunglasses. With a selection of 4 different multilayered Köri coated photochromic and polarized lenses, poor vision shall no longer be an option.</p>
<p><strong>All Neo Vue Sunglasses comes with a complimentary Neo Porter dual purpose Handlebar Bag / Protective Case. </strong></p>
<p>* Please double check your frame and lens color choice before purchasing. </p>
<p>* Please ensure the fit of the Neo Porter to your handlebar dimensions before mounting. </p>
<p>* Check the sunglasses thoroughly before using; do not continue to use if damaged. </p>
<p>* Store your Neo Vue in the included case or soft pouch.</p>
<p>* Always clean your Neo Vue with a clean and dry cloth (included). </p>
<p>* DO NOT use cleaning fluids, solvents or alcohol to clean the lens.</p>
<p>* DO NOT wipe your lens down with any type of paper product including tissues, paper towels or napkins.</p>
<p>SPECIALTY</p>
<ul>
<li>Light weight of 25 g = 0.055 lbs</li>
<li>Wide fit</li>
<li>1.3 mm cylindrical lens with high impact resistance</li>
<li>Available in Photochromic and Polarized lenses</li>
<li>100% UV400 lens protection blocks 100% of UVA/UVB rays</li>
<li>TR90 frame, super durable, fatigue resistant</li>
<li>Köri lens tech: engineered by ULAC to provide higher contrast, lowest color distortion and eye fatigue reduction.</li>
<li>Complementary Neo Porter Handlebar Bag </li>
<li>Adjustable nose pads</li>
<li>Microfiber pouch + wiping cloth</li>
<li>RX insert</li>
</ul>

<p>NEO VUE SPEC</p>
<p>Frame material: TR90</p>
<p>Lenses: PC Photocrhromic / Polarized </p>
<p>Weight: 25g. = 0.055bs</p>
<p>NEO PORTER SPEC</p>

<p>Size: 165 x 80 x 85mm</p>
<p>Weight: 175g = 0.385lbs</p>
<p>Capacity: 0.9L</p>
<p>Main fabric: Waterproof nylon + polyester </p>
<p><strong><em>Please check the specs before purchasing</em></strong></p>
<p>ACCESSORIES</p>
<ul>
<li>Velcro strap x 2</li>
<li>Multistrap x 1 </li>
<li>Microfiber pouch </li>
<li>Wiping cloth</li>
<li>RX insert</li>
</ul>', array['ulac-neo-vue-otaku-eyewear/1.jpg', 'ulac-neo-vue-otaku-eyewear/2.jpg', 'ulac-neo-vue-otaku-eyewear/3.jpg', 'ulac-neo-vue-otaku-eyewear/4.jpg', 'ulac-neo-vue-otaku-eyewear/5.jpg']::text[], 'new', 4, '2025-08-01'::date, false, false),
  ('ulac-neo-vue-visionar-eyewear', 'ULAC Neo Vue VISIONAR Eyewear', 'ulac', 'accessories', 'cycling-glasses', '<p>FEATURES</p><p>Wild at heart, the Visionär rimless sunglesses is tuned to the needs of any activities and sports from hiking to cycling, jogging to fishing. Weighing only 18 grams, the Visionär is ideal eyewear for daily application.</p><p><strong>All Neo Vue Sunglasses comes with a complimentary Neo Porter dual purpose Handlebar Bag / Protective Case. </strong></p><p>* Please double check your frame and lens color choice before purchasing. </p><p>* Please ensure the fit of the Neo Porter to your handlebar dimensions before mounting. </p><p>* Check the sunglasses thoroughly before using; do not continue to use if damaged. </p><p>* Store your Neo Vue in the included case or soft pouch.</p><p>* Always clean your Neo Vue with a clean and dry cloth (included). </p><p>* DO NOT use cleaning fluids, solvents or alcohol to clean the lens.</p><p>* DO NOT wipe your lens down with any type of paper product including tissues, paper towels or napkins.</p><p>SPECIALTY</p><ul>
<li>Light weight of 18g = 0.039lbs</li>
<li>1.37 mm cylindrical lens with high impact resistance</li>
<li>Available in Photochromic lenses</li>
<li>100% UV400 lens protection blocks 100% of UVA/UVB rays</li>
<li>TR90 frame, super durable, fatigue resistant</li>
<li>Köri lens tech: engineered by ULAC to provide higher contrast, lowest color distortion and eye fatigue reduction.  </li>
<li>Complementary Neo Porter Handlebar Bag </li>
<li>Microfiber pouch + wiping cloth</li>
</ul><p>NEO VUE SPEC</p><p>Frame material: TR90</p><p>Lenses: PC Photocrhromic </p><p>Weight: 18g. = 0.39lbs</p><p>NEO PORTER SPEC</p><p>Size: 165 x 80 x 85mm</p><p>Weight: 175g = 0.385lbs</p><p>Capacity: 0.9L</p><p>Main fabric: Waterproof nylon + polyester </p><p><strong><em>Please check the specs before purchasing</em></strong></p><p>ACCESSORIES</p><ul>
<li>Velcro strap x 2</li>
<li>Multistrap x 1 </li>
<li>Microfiber pouch </li>
<li>Wiping cloth</li>
</ul>', array['ulac-neo-vue-visionar-eyewear/1.jpg', 'ulac-neo-vue-visionar-eyewear/2.jpg', 'ulac-neo-vue-visionar-eyewear/3.jpg', 'ulac-neo-vue-visionar-eyewear/4.jpg', 'ulac-neo-vue-visionar-eyewear/5.jpg']::text[], 'new', 4, '2025-08-01'::date, false, false),

  -- ---- accessories · hydration-systems ----
  ('camelbakpodiumbigchill', 'Camelbak Podium Big Chill', 'camelbak', 'accessories', 'hydration-systems', '<p>Derived from superior materials including Trutaste Polypropylene, and featuring double-wall insulation, the CamelBak Podium Chill Insulated Water Bottle is the perfect cold-storage water bottle for cycling adventures. Keeping your body properly hydrated and improving your on-road performance is simplified thanks to this revolutionary sports bottle. Cycling enthusiasts have for years trusted CamelBak to provide them superior bottles for water that are optimized for peak performance. And the Podium Chill bike water bottle continues to elevate CamelBak as the best of the best in the cycling world. This premium bicycle water bottle has been reengineered to securely fit in a variety of bicycle bottle cages. The water bottles are easy to squeeze, allowing you to take in more water with less effort. Our CamelBak reusable sports water bottles are engineered with a high flow, self-sealing cap, which maximizes flow rate while reducing spills and splashes.</p>

<h3>Features</h3>
<ul>
<li>
Double-walled construction: keeps water cold twice as long
</li>
<li>
Optimized cage fit: Engineered to securely fit in a variety of bottle cages
</li>
<li>
Easy squeeze: get more fluid with less effort
</li>
<li>
High flow, self-sealing cap: maximizes flow rate while eliminating splatters and spills
</li>
</ul>

<h3>Specifications</h3>

Capacity
.71L / 24oz

Cap Material
The Jet Valve™ is made from medical grade, self-sealing silicone

User Group
All

Dimensions
10.47 x 2.91 x 2.91 in / 26.6 x 7.4 x 7.4 cm

Material
BPA-Free TruTaste™ Polypropylene

Weight
4 oz. / 122 gm

Gear Range
Minimal', array['camelbakpodiumbigchill/1.jpg']::text[], 'new', 0, '2025-04-17'::date, false, false),
  ('elite-fly-bottles-750ml', 'Elite Fly Bottles 750ml', 'elite', 'accessories', 'hydration-systems', '<p>The lightest sport bottle available worldwide. Odorless, soft and durable plastic material, the result of an experimental research project realized by Elite. New colours. With ergonomic cap and it’s multi-material made. It guarantees an increased and easier liquid flow. Diameter 74 mm. BPA free.</p>', array['elite-fly-bottles-750ml/1.jpg', 'elite-fly-bottles-750ml/2.jpg', 'elite-fly-bottles-750ml/3.jpg', 'elite-fly-bottles-750ml/4.jpg']::text[], 'new', 0, '2022-01-17'::date, false, false),
  ('elite-fly-tex-bottles-550ml-1', 'Elite Fly Tex Bottles 550ml', 'elite', 'accessories', 'hydration-systems', '<p>The Elite<strong> Fly Tex </strong>is the <strong>WorldTour’s most used water bottle</strong> because it’s incredibly lightweight. It’s the world’s lightest bottle.</p>
<p>Its <strong>record weight </strong>(at only 51 g for the 550 ml version) makes it possible for us to <strong>use less plastic material </strong>as we make it, and guarantee the Elite-classic ergonomic structure that it''s easy to squeeze so <strong>liquid flow is abundant with the lightest pressure</strong>.</p>
<p><strong>Fly Tex Elite</strong> is available in <strong>many different colour options</strong> for a <strong>perfect match with your bike</strong> and your <strong>bottle cage</strong>. The bottle features an immediately identifiable sport-like design with a <strong>new texture designed to improve grip</strong> on the bottle, which is sweet when you’re riding your bike.</p>
<h3><strong>Extreme liquid flow</strong></h3>
<p>The ergonomic cap with wider flat push-pull nozzle and a wider mouth ensure <strong>high liquid flow</strong>, which is also guaranteed by the soft bottle body: you will just need to squeeze gently your <strong>Fly Tex</strong> to get a <strong>vigorous liquid flow</strong>.</p>
<p>Easy to open and close with your mouth, the <strong>Fly Tex</strong>’s valve is ideal when you’re using this bottle while you’re moving on your bike. The bigger opening make it easy to <strong>fill the bottle up</strong> and <strong>wash it properly</strong>.</p>
<h3><strong>Compact design</strong></h3>
<p>Feturing a new racing design, the Elite <strong>Fly Tex</strong> bottles work extraordinary <strong>well and stable in all cages</strong> so that bottle insertion and extraction are smooth and easy every time you''re riding. Compact design means the <strong>Fly </strong>is perfect for road bikes as well as gravel bikes and mountain bikes that feature smaller frames.</p>
<p>The bottle’s practical and sustainable structure is designed to <strong>eliminate excess material</strong> during production and, by doing so, have the <strong>lightest product </strong>in the market with no waste.</p>
<h3><strong>Less plastic, only performance</strong></h3>
<p>Elite firmly believes that each athlete is responsible for taking care of the world and the environment everyone rides in. In developing our products and implementing new sustainable manufacturing processes, we consider both materials and technologies. That’s why we’re proud to use over <strong>30% less plastic than average</strong> to create one single bottle of the Fly range. </p>
<p>By making our <strong>Fly Tex</strong> bottles so lightweight by design, we can significantly reduce our carbon footprint and help ease pressure on the environment by ensuring the lowest CO2 emissions from our produtcion of water bottles.</p>
<h3><strong>Hygienic, innovative materials</strong></h3>
<p>This bottle is manufactured using innovative, odorless, soft and resistant plastic materials, which is the result of a 3-year long study conducted with multiple universities research centers. </p>
<p>The<strong> Fly Tex</strong> is also <strong>h</strong><strong>ygienic and easy to wash. </strong>It features a <strong>20% wider mouth</strong> compared to standard bottles to help our customers achieve better hydration and properly hygienize their bottles. Fly bottles are <strong>easy to disassemble</strong>, so you can <strong>dry both the bottle body and the cap with nozzle </strong>and avoid any mold growth inside or the subsequent bad smell.</p>
<h3><strong>Other info</strong></h3>
<ul>
<li>Development
<ul>
<li>Innovative, odorless, soft and resistant plastic materials.</li>
</ul>
</li>
<li>Lightness
<ul>
<li>30% lighter than any other standard bottle</li>
</ul>
</li>
<li>Ergonomic grip
<ul>
<li>Bottle surface features a new grip that makes it safer and easier to use.</li>
</ul>
</li>
<li>
<strong>Weight:</strong> 51gm (550mL)</li>
<li>
<strong>Material:</strong> Plastic</li>
<li>
<strong>Diameter:</strong> 74mm</li>
</ul>', array['elite-fly-tex-bottles-550ml-1/1.png', 'elite-fly-tex-bottles-550ml-1/2.png', 'elite-fly-tex-bottles-550ml-1/3.png', 'elite-fly-tex-bottles-550ml-1/4.png', 'elite-fly-tex-bottles-550ml-1/5.png']::text[], 'new', 0, '2025-04-17'::date, false, false),
  ('elite-fly-tex-bottles-750ml-1', 'Elite Fly Tex Bottles 750ml', 'elite', 'accessories', 'hydration-systems', '<p>The Elite<strong> Fly Tex </strong>is the <strong>WorldTour’s most used water bottle</strong> because it’s incredibly lightweight. It’s the world’s lightest bottle.</p>
<p>Its <strong>record weight </strong>(at only 51 g for the 550 ml version) makes it possible for us to <strong>use less plastic material </strong>as we make it, and guarantee the Elite-classic ergonomic structure that it''s easy to squeeze so <strong>liquid flow is abundant with the lightest pressure</strong>.</p>
<p><strong>Fly Tex Elite</strong> is available in <strong>many different colour options</strong> for a <strong>perfect match with your bike</strong> and your <strong>bottle cage</strong>. The bottle features an immediately identifiable sport-like design with a <strong>new texture designed to improve grip</strong> on the bottle, which is sweet when you’re riding your bike.</p>
<h3><strong>Extreme liquid flow</strong></h3>
<p>The ergonomic cap with wider flat push-pull nozzle and a wider mouth ensure <strong>high liquid flow</strong>, which is also guaranteed by the soft bottle body: you will just need to squeeze gently your <strong>Fly Tex</strong> to get a <strong>vigorous liquid flow</strong>.</p>
<p>Easy to open and close with your mouth, the <strong>Fly Tex</strong>’s valve is ideal when you’re using this bottle while you’re moving on your bike. The bigger opening make it easy to <strong>fill the bottle up</strong> and <strong>wash it properly</strong>.</p>
<h3><strong>Compact design</strong></h3>
<p>Feturing a new racing design, the Elite <strong>Fly Tex</strong> bottles work extraordinary <strong>well and stable in all cages</strong> so that bottle insertion and extraction are smooth and easy every time you''re riding. Compact design means the <strong>Fly </strong>is perfect for road bikes as well as gravel bikes and mountain bikes that feature smaller frames.</p>
<p>The bottle’s practical and sustainable structure is designed to <strong>eliminate excess material</strong> during production and, by doing so, have the <strong>lightest product </strong>in the market with no waste.</p>
<h3><strong>Less plastic, only performance</strong></h3>
<p>Elite firmly believes that each athlete is responsible for taking care of the world and the environment everyone rides in. In developing our products and implementing new sustainable manufacturing processes, we consider both materials and technologies. That’s why we’re proud to use over <strong>30% less plastic than average</strong> to create one single bottle of the Fly range. </p>
<p>By making our <strong>Fly Tex</strong> bottles so lightweight by design, we can significantly reduce our carbon footprint and help ease pressure on the environment by ensuring the lowest CO2 emissions from our produtcion of water bottles.</p>
<h3><strong>Hygienic, innovative materials</strong></h3>
<p>This bottle is manufactured using innovative, odorless, soft and resistant plastic materials, which is the result of a 3-year long study conducted with multiple universities research centers. </p>
<p>The<strong> Fly Tex</strong> is also <strong>h</strong><strong>ygienic and easy to wash. </strong>It features a <strong>20% wider mouth</strong> compared to standard bottles to help our customers achieve better hydration and properly hygienize their bottles. Fly bottles are <strong>easy to disassemble</strong>, so you can <strong>dry both the bottle body and the cap with nozzle </strong>and avoid any mold growth inside or the subsequent bad smell.</p>
<h3><strong>Other info</strong></h3>
<ul>
<li>Development
<ul>
<li>Innovative, odorless, soft and resistant plastic materials.</li>
</ul>
</li>
<li>Lightness
<ul>
<li>30% lighter than any other standard bottle</li>
</ul>
</li>
<li>Ergonomic grip
<ul>
<li>Bottle surface features a new grip that makes it safer and easier to use.</li>
</ul>
</li>
<li>
<strong>Weight:</strong> 51gm (550mL)</li>
<li>
<strong>Material:</strong> Plastic</li>
<li>
<strong>Diameter:</strong> 74mm</li>
</ul>', array['elite-fly-tex-bottles-750ml-1/1.png', 'elite-fly-tex-bottles-750ml-1/2.png', 'elite-fly-tex-bottles-750ml-1/3.png']::text[], 'new', 1, '2025-04-17'::date, false, false),
  ('elite-jet-bottles-550ml', 'Elite Jet Bottles 550ml', 'elite', 'accessories', 'hydration-systems', '<p>With the all conquering Fly having proven itself beyond all reasonable doubt in the pro peloton, the Jet is an everyday bottle with a true race pedigree. High flow valve, orginally used on the Fly, delivers fluid almost twice as fast as the previous Corsa design. Body of the bottle is thicker than the Fly and more robust for daily use but still competitively light and easy to squeeze. Integrated blow-off valve feature greatly reduces the chance of a dropped bottle taking down a rider, making this a safer option for racing, sportives or group rides. 100% biodegradable, entire bottle, including the cap is compostable and will return to the elements once buried in earth thanks to the corn - rather than oil - based plastic. Dishwasher safe and BPA-free.</p>', array['elite-jet-bottles-550ml/1.jpg', 'elite-jet-bottles-550ml/2.jpg', 'elite-jet-bottles-550ml/3.jpg']::text[], 'new', 2, '2022-01-17'::date, false, false),
  ('elite-jet-bottles-750ml', 'Elite Jet Bottles 750ml', 'elite', 'accessories', 'hydration-systems', '<p>With the all conquering Fly having proven itself beyond all reasonable doubt in the pro peloton, the Jet is an everyday bottle with a true race pedigree. High flow valve, orginally used on the Fly, delivers fluid almost twice as fast as the previous Corsa design. Body of the bottle is thicker than the Fly and more robust for daily use but still competitively light and easy to squeeze. Integrated blow-off valve feature greatly reduces the chance of a dropped bottle taking down a rider, making this a safer option for racing, sportives or group rides. 100% biodegradable, entire bottle, including the cap is compostable and will return to the elements once buried in earth thanks to the corn - rather than oil - based plastic. Dishwasher safe and BPA-free.</p>', array['elite-jet-bottles-750ml/1.png']::text[], 'new', 1, '2022-01-17'::date, false, false),
  ('elite-jet-bottles-950ml', 'Elite Jet Bottles 950ml', 'elite', 'accessories', 'hydration-systems', '<h3>Elite Jet Bottle</h3>
<h3><strong>Race-Bred Performance for Everyday Use</strong></h3>
<p>Building on the success of the <strong>all-conquering Fly bottle</strong>, the <strong>Elite Jet</strong> is designed as an everyday hydration solution with a true race pedigree. It features the <strong>high-flow valve</strong> first introduced on the Fly, delivering almost twice the fluid flow compared to the previous Corsa design, ensuring fast and efficient hydration.</p>
<p>The Jet’s body is slightly thicker and more robust than the Fly, making it durable enough for daily use while still being <strong>lightweight and easy to squeeze</strong>. For added safety, the <strong>integrated blow-off valve</strong> reduces the risk of dropped bottles causing accidents in races or group rides.</p>
<p>Environmentally conscious and rider-friendly, the Jet is <strong>100% biodegradable</strong>—the entire bottle, including the cap, is made from <strong>corn-based plastic</strong> that will compost naturally. It’s also <strong>dishwasher safe and BPA-free</strong>, combining performance with sustainability.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>High-flow valve</strong> – almost 2x faster fluid delivery than Corsa design</p>
</li>
<li>
<p><strong>Durable construction</strong> – thicker than Fly, built for daily use</p>
</li>
<li>
<p><strong>Lightweight and easy to squeeze</strong> for effortless hydration</p>
</li>
<li>
<p><strong>Integrated blow-off valve</strong> for added rider safety in races and group rides</p>
</li>
<li>
<p><strong>100% biodegradable</strong> – corn-based plastic, fully compostable</p>
</li>
<li>
<p><strong>Dishwasher safe &amp; BPA-free</strong></p>
</li>
</ul>', array['elite-jet-bottles-950ml/1.jpg']::text[], 'new', 0, '2022-01-17'::date, false, false),
  ('elite-kit-crono-cx', 'Elite Kit Crono CX', 'elite', 'accessories', 'hydration-systems', '<p>The perfect kit for time trials and triathlon</p> <p>Kit Crono CX Fiberglass is a bottle and bottlecage kit designed and manufactured to ensure max aerodynamic properties, perfect for time trials and triathlon.</p> <p>It''s WorldTour teams'' most-used aerodynamic gearing.</p> <p><strong>Developed and tested in a wind tunnel</strong></p> <p>Multiple wind tunnel tests while designing it made it possible to streamline all surfaces in order to obtain unprecedented aerodynamic results.</p> <p>The exclusive coupling system for bottle and bottlecage, developed ad hoc, makes for a stable and secure grip on the bottle even at high cycling speed, typical for time trials.</p> <p><strong>Aerodynamic finish</strong></p> <p>The bottle on the Kit Crono CX Fiberglass features a speed-effect finish, perfect to improve aerodynamic penetration while working out. It''s no surprise that this kit is one of the most used by pro triathlon athletes and most WorldTour teams.  </p> <p>Liquid flow happens only with a slight touch of the hand on the bottle body, which is <em>squeezable</em>.<br>Features an air-tight nozzle to avoid and accidental liquid spill even when the bottle is upside down. It also ensures an unidirectional and copious liquid flow, about 47 ml/sec.</p> <p><strong>Great resistance</strong></p> <p>The bottlecage on the Kit Crono CX Fiberglass is made in a monocoque structure with totally fibre-reinforced, highly resistant material. It has been carefully designed to reduce those elements not under stress as much as possible and conversely reinforce those areas that actually are, in order to ensure high resistance and durability.</p> <p><strong>Other info</strong></p> <ul> <li>Complies with UCI regulations <ul> <li>It''s a product that complies with the UCI provisions and was chosen and used by the best Pro Teams in the world</li> </ul> </li> <li>Perfect for triathlon <ul> <li>It''s also ideal for triathlons, another discipline where weight and aerodynamic properties are key</li> </ul> </li> <li>Dishwasher safe (40°C / 104°F) <ul> <li>The kit is also dishwasher safe   </li> </ul> </li> </ul>', array['elite-kit-crono-cx/1.png']::text[], 'new', 1, '2023-05-19'::date, false, false),
  ('elitespokencyclesbottles', 'Elite Spoken Cycles Bottles', 'elite', 'accessories', 'hydration-systems', '<p><strong>Description</strong></p>
<p>Elite Spoken Cycles Bottles</p>
<p>500ml </p>', array['elitespokencyclesbottles/1.png']::text[], 'new', 1, '2021-09-01'::date, false, false),
  ('sisbottle', 'SIS Bottle', 'sis', 'accessories', 'hydration-systems', '<p>A clean, fast, and convenient way to prepare and use SiS drinksThis bottle is specially made for SiS, with handy markings that are a key part of the easy-mix systemTo use, start by adding drink powder up to the appropriate level; part fill with water and shake to mix the drink; finally top up to the final level with more waterThe result is no fuss, no mess, with less chance of contaminating your drink.</p>', array['sisbottle/1.webp']::text[], 'new', 0, '2022-05-27'::date, false, false),

  -- ---- accessories · racks-storage ----
  ('bike-rakz-ezi-hold', 'Bike Rakz Ezi Hold', 'generic', 'accessories', 'racks-storage', '<h3>BIKE RAKZ - EZI HOLD</h3>

<p>The BIKE RAKZ EZI-HOLD wall-mounted Bike Rack offers a minimalist storage solution with an innovative design. Its side-to-side movement of -85°~+65° makes accessing and taking down your bikes simple and efficient, much like turning the pages of a book. This design will save you time and effort when storing and removing your bicycle.</p>
<p>The EZI HOLD can be placed in apartments, homes, garages and sheds. It is compatible with universal bike types: road, hybrid, cyclocross, MTB, BMX bikes and etc. up to 30kg/66lbs. This one helps free-up your floor space, make your garage or indoor space tidy and clutter-free!</p>

<h3>Features</h3>
<ul>
<li>No Heavy Lifting: just balance the bike on the rear wheel and push it into the rack</li>
<li>DIY wall display allows for individual design for bike lovers</li>
<li>Wall Mounted Tyre Stop: protects the bike and the wall from scratches</li>
</ul>

<h3>Specifications</h3>

Weight Capacity
30kg

Max tyre width
90mm

Colours
Black, Black-Red

Dimensions
82x250x185mm

Warranty
5 years', array['bike-rakz-ezi-hold/1.jpg']::text[], 'new', 1, '2024-09-10'::date, false, false),
  ('ezi-grip-advantage-folding-bike-rack', 'Ezi Grip Advantage Folding Bike Rack', 'ezi-grip', 'accessories', 'racks-storage', '<p>$5 Shipping Nationwide / Free On Orders $50.00+</p>
<ul>
<li>North Island Delivery: 1-2 Working Days</li>
<li>South Island Delivery: 2-4 Working Days</li>
</ul>

<p>This Ezi-Grip 4 Advantage Folding Bike Rack is designed to carry up to 4 bikes to your ''favourite trail or epic mountain pass.<br><br>The Advantage 4 Bike Folding Prong cycle rack is suitable for bikes of most types. The arms can be easily removed and folded away for easy storage when parked up at home. The fixed straight bottom socket includes 2 metal loops for securing bikes and can also be used to lock bikes to the rack , with the use of a cable style lock.<br> <br>Product Features:<br> </p>
<ul>
<li>Capacity for 2-4 bikes</li>
<li>Foam padding to protect your baby</li>
<li>Bungy Kit</li>
<li>Allen Key</li>
<li>The fixed straight bottom socket includes 2 metal loops for securing bikes</li>
<li>Fits on both 1-7/8 and 50mm style tow balls</li>
<li>Upright stem length: 80cm</li>
<li>Maximum bike weight: 60kg</li>
<li>Assembled Dimensions 4 Bike: 540mm W x 780 mm D x 884 mm H</li>
<li>Assembled Dimensions 2 Bike: 540mm W x 615 mm D x 884 mm H</li>
</ul>', array['ezi-grip-advantage-folding-bike-rack/1.jpg']::text[], 'new', 0, '2021-08-21'::date, false, false),
  ('feedback-sports-rakk-2-0-bike-storage-stand', 'FEEDBACK SPORTS - RAKK 2.0 BIKE STORAGE STAND', 'feedback-sports', 'accessories', 'racks-storage', '<p><strong>You love your bikes and when you’re not riding them you want a simple, non-permanent and effective bike parking solution.</strong></p>
<p>The often imitated, but never duplicated RAKK 2.0 is a patented, versatile bike storage solution for front or rear wheel parking. Making contact with only your tyre, the RAKK 2.0 is an ideal bike parking solution for every type of bike. </p>
<p>Compared to the original Rakk,  Rakk 2.0 has a wider body, deeper wheel cradle, larger tyre contact pulleys, and longer arm.</p>
<p>Rakk 2.0 is made for modern bikes of all types, supporting bikes up to 34kgs with stability and ease of use. The RAKK design supports bicycles by contacting only the tyre and is compatible with a wide array of bike styles, frame sizes and wheel/tyre sizes. Park your bikes anywhere in the room by the front or rear wheel with confidence and stability.</p>

<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>Ideal bicycle storage space for apartments, garages, basements, sheds or even a retail bike shop.</li>
<li>Securely park bikes up to 34kgs.</li>
<li>Versatile design allows for bike parking with front or rear wheel without risk of scratching rims or spokes.</li>
<li>3-Position pulley accommodates multiple wheel sizes and bikes with fenders.</li>
<li>Pulley arm folds flat to a compact unit for travel or storage when not in use.</li>
<li>Spring-loaded design is hands-free – simply roll the bike into the wheel slot and the swing arm holds securely.</li>
<li>Rubber feet with large contact patch maximizes floor grip.</li>
<li>Durable powder coated steel maintains a long-term clean finish.</li>
<li>Plastic free, 100% recyclable packaging.</li>
<li>Some assembly required (tool included).</li>
</ul>

<p><a></a></p>', array['feedback-sports-rakk-2-0-bike-storage-stand/1.jpg', 'feedback-sports-rakk-2-0-bike-storage-stand/2.jpg', 'feedback-sports-rakk-2-0-bike-storage-stand/3.jpg', 'feedback-sports-rakk-2-0-bike-storage-stand/4.jpg', 'feedback-sports-rakk-2-0-bike-storage-stand/5.jpg']::text[], 'new', 1, '2025-05-19'::date, false, false),
  ('feedback-sports-rakk-2-0e-bike-storage-stand', 'FEEDBACK SPORTS - RAKK 2.0E BIKE STORAGE STAND', 'feedback-sports', 'accessories', 'racks-storage', '<p><strong>You love your e-bike, and when you’re not riding it you want a simple, non-permanent and effective bike parking and charging solution.</strong></p>
<p>The often imitated, but never duplicated RAKK 2.0E is a patented, versatile bike storage solution for front or rear wheel parking. Making contact with only your tyre, the RAKK 2.0E is an ideal bike parking solution for every type of electric bike. Rakk 2.0E also keeps charging cables organized while your ebike is safely parked. </p>
<p>Based on the Rakk 2.0 with a wider body, deeper wheel cradle, larger tyre contact pulleys, and longer arm, the RAKK 2.0 E features a secure tray for the e-bike charger plus cable magnets to organize the plugs.</p>
<p>Rakk 2.0E easily fits oversized e-bike wheels and tyres, supporting bikes up to 34kgs with stability and ease of use. The RAKK design supports bicycles by contacting only the tyre and is compatible with a wide array of bike styles, frame sizes and wheel/tyre sizes. Park your bikes anywhere in the room by the front or rear wheel with confidence and stability.</p>

<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>E-bike specific bike storage stand accommodates tyres sizes (width): 23mm-4.5", tire diameter 20"-29" (20"x1.5” tires or wider).</li>
<li>Adjustable charger tray keeps valuable ebike charger and cables clean, safe, and organized.</li>
<li>Magnetic cord organizers keep the charger cord off the ground and out of harm''s way.</li>
<li>Securely park bikes up to 34kgs.</li>
<li>Versatile design allows for bike parking with front or rear wheel without risk of scratching rims or spokes.</li>
<li>3-Position pulley accommodates multiple wheel sizes and bikes with fenders.</li>
<li>Pulley arm folds flat to a compact unit for travel or storage when not in use.</li>
<li>Spring-loaded design is hands-free – simply roll the bike into the wheel slot and the swing arm holds securely.</li>
<li>Rubber feet with large contact patch maximizes floor grip.</li>
<li>Durable powder coated steel maintains a long-term clean finish.</li>
<li>Plastic free, 100% recyclable packaging.</li>
<li>Some assembly required (tool included).</li>
</ul>

<p><a></a></p>', array['feedback-sports-rakk-2-0e-bike-storage-stand/1.jpg', 'feedback-sports-rakk-2-0e-bike-storage-stand/2.jpg', 'feedback-sports-rakk-2-0e-bike-storage-stand/3.jpg', 'feedback-sports-rakk-2-0e-bike-storage-stand/4.jpg', 'feedback-sports-rakk-2-0e-bike-storage-stand/5.jpg']::text[], 'new', 1, '2025-05-19'::date, false, false),
  ('velo-hinge-2-0', 'FEEDBACK SPORTS - VELO HINGE 2.0', 'feedback-sports', 'accessories', 'racks-storage', '<p><strong>With a stiffer, stronger body and a longer wheel hook, the Velo Hinge 2.0 is made for modern bikes of all types. </strong></p>
<p>Updated to easily fit bigger, wider wheels and tires, the familiar function of our patented Velo Hinge design allows bikes to pivot for easy access to neighboring bikes plus permits flat, space-saving bike storage along a wall. New grip tape on the tire contact plate adds stability. When not in use, the hook folds into the hinge for a clean aesthetic.</p>
<p>More than just a standard wall hook for bikes, the Velo Hinge is an innovative and elegant bike storage hook on a hinged plate to hang your bike by the front wheel and also allow it to safely swing sideways, to rest flat along the wall. Fitting almost any bike and swinging either left or right to match your needs, the Velo Hinge maximizes your space while showing love to your bicycles and your living space. And when not in use, it tucks away so you’ll hardly know its there.</p>
<ul>
<li>Long, angled wheel hook accommodates deep profile road wheels and wide mountain bike rims/tires. 700C X23mm - 29" X 3.0".</li>
<li>Patented hinge design allows bike to pivot left or right.</li>
<li>Secure load capacity of 50lbs (22.7kg) when properly stud mounted.</li>
<li>Mounts to any standard, wood framed wall stud. (Consult a hardware store for mounting options to masonry walls or steel stud framed walls.)</li>
<li>Anti-slip front plate to keep wheel in place.</li>
<li>Hook opening of 4" (10cm) can accommodate most road, cyclocross and mountain bikes.</li>
<li>Maximizes available bicycle storage space for apartments, garages, basements and sheds.</li>
<li>Ideal for storing bikes in a small space.</li>
<li>Rear wheel bumper stabilizes the bike to prevent swaying.</li>
<li>Wheel retaining hook folds away when not in use.</li>
<li>Durable powder coated steel maintains a long-term clean finish and soft-touch hook won''t mark rims.</li>
</ul>

<p><a></a></p>', array['velo-hinge-2-0/1.jpg', 'velo-hinge-2-0/2.jpg', 'velo-hinge-2-0/3.jpg', 'velo-hinge-2-0/4.jpg', 'velo-hinge-2-0/5.jpg']::text[], 'new', 0, '2024-09-10'::date, false, false),
  ('feedback-sports-velo-wall-post-bicycle-storage', 'FEEDBACK SPORTS - VELO WALL POST BICYCLE STORAGE', 'feedback-sports', 'accessories', 'racks-storage', '<p>Sometimes the most convenient bike and wheel storage solutions are also the most simple. And with the Velo Wall Post we decided that simple and elegant weren’t mutually exclusive. Use it to hang your bike, your wheels, spare tires, tubes you’ve been meaning to patch, pre-glued tubular tires, your rain-soaked kit after a long ride, or whatever sporting goods storage needs you can dream up. And when you’re not using it, fold it up out of your way and you won’t even notice it’s there. If that weren’t enough already, there’s also a port for your lock to make sure your belongings stay put.<br><br></p>
<ul>
<li>Convenient bicycle storage for apartments, homes, garages and sheds</li>
<li>Soft rubber contact points protect frames, components, wheels or whatever else you hang</li>
<li>Storage system fits most any road bike, cyclocross bike, mountain bike, or electric bikes</li>
<li>Folds up when not in use</li>
<li>Mounts to any standard wall stud – hardware included</li>
<li>Use your existing lock in the lock port (2.54cm opening) for added security</li>
<li>30.5cm usable length</li>
<li>22.7kg total load capacity</li>
</ul>
<p><br><br></p>', array['feedback-sports-velo-wall-post-bicycle-storage/1.jpg', 'feedback-sports-velo-wall-post-bicycle-storage/2.jpg', 'feedback-sports-velo-wall-post-bicycle-storage/3.jpg', 'feedback-sports-velo-wall-post-bicycle-storage/4.jpg', 'feedback-sports-velo-wall-post-bicycle-storage/5.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('feedback-sports-velo-wall-rack-2d-bicycle-storage', 'FEEDBACK SPORTS - VELO WALL RACK 2D BICYCLE STORAGE', 'feedback-sports', 'accessories', 'racks-storage', '<p>Because you love your bicycles, when you’re not riding them you want to protect them and you need a simple, effective, wall-mount bike parking solution. The Velo Wall Rack 2D is a high quality, versatile bike storage for one bike. The arms adjust horizontally and vertically, and have soft rubber protecting your bike’s finish, making the Velo Wall Rack a brilliant bike storage solution for expensive road, cyclocross, mountain and even some electric bikes.<br><br></p>
<ul>
<li>Ideal bicycle storage solution for apartments, homes, garages and sheds</li>
<li>Soft rubber contact points protect frame finishes</li>
<li>Storage system fits most any road bike, cyclocross bike, mountain bike, or electric bike</li>
<li>Frame cradles safely accommodate most any frame tube shape</li>
<li>Design independently adjusts arms horizontally and vertically to position your bike perfectly</li>
<li>Durable anodized aluminum maintains a long-term clean finish</li>
<li>Cradles adjust horizontally 20.3 - 30.5cm from wall</li>
<li>Cradles adjust vertically 17.8cm</li>
<li>Awesome bike parking solution for even the heaviest of bikes – 22.7kg max load</li>
<li>Mounts to a standard wall stud</li>
<li>Mounting hardware included</li>
</ul>
<p>May not be suitable for wide handlebars (780mm+), long wheelbases, or fat bikes. Please see our Rakk or Rakk XL for storage options suitable for these bikes.</p>
<p><br><br></p>', array['feedback-sports-velo-wall-rack-2d-bicycle-storage/1.jpg', 'feedback-sports-velo-wall-rack-2d-bicycle-storage/2.jpg', 'feedback-sports-velo-wall-rack-2d-bicycle-storage/3.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('kids-ride-shotgun-20-child-bike-seat', 'Kids Ride Shotgun - 2.0 Child Bike Seat', 'shotgun', 'accessories', 'racks-storage', '<p>The Shotgun 2.0 is your go-to mtb child seat with quick release fitting and zero bike modifications required. With adjustable footpeg positions, the Shotgun 2.0 grows with your child.</p>
<p><strong>ABOUT THE SHOTGUN 2.0 CHILD BIKE SEAT</strong></p>
<ul>
<li>Designed for children 2 – 5 years (up to 60lb / 27kg).</li>
<li>Frame mounted with full rubber protection (for alloy or carbon frames).</li>
<li>Quick release fitting for fast installation and removal.</li>
<li>Adjustable width and angle to fit all modern mountain bikes.</li>
<li>Two footpeg positions to grow with your child.</li>
<li>Also available as a combo with the Shotgun 2.0 handlebars.</li>
</ul>', array['kids-ride-shotgun-20-child-bike-seat/1.jpg', 'kids-ride-shotgun-20-child-bike-seat/2.jpg']::text[], 'new', 1, '2025-10-22'::date, false, false),
  ('kids-ride-shotgun-pro-evo', 'Kids Ride Shotgun - Pro EVO', 'shotgun', 'accessories', 'racks-storage', '<p><strong>KIDS RIDE SHOTGUN - PRO EVO</strong></p>
<p><strong>ONE SEAT, TWO SETUPS, FOUR YEARS OF ADVENTURE</strong></p>
<p>If you’re a new parent who loves to ride, you’ve probably discovered that most infant seats won''t fit your mountain bike – or get you into nature with your little one.That’s why we''ve created the Shotgun Pro EVO, a 2-in-1 convertible child seat, built specifically for mountain bikes.Starting with our new harnessed seat, and transforming into our award winning Pro seat when your child''s ready— the Pro EVO is an all-in-one solution that lets you share the ride all the way from 9 months to 5 years. </p>
<p>So you can do what you love, with who you love, from day one.</p>
<p><strong>MEET THE SHOTGUN PRO EVO..... </strong></p>', array['kids-ride-shotgun-pro-evo/1.jpg']::text[], 'new', 0, '2025-10-20'::date, false, false),
  ('seasucker-bomber-3-bike-rack', 'Seasucker Bomber 3 Bike Rack', 'seasucker', 'accessories', 'racks-storage', '<p>The Bomber is our 3-bike behemoth. It’s a fork-mount-style rack featuring our always-up-to-date HUSKE Fork Mount. Five powerful 210 lb pull-strength rated vacuum mounts hold it solidly on your car’s roof, trunk, or back glass. Incredibly easy to install, and removes in just seconds. Fits on virtually any car. Minimal assembly required.</p> <strong>Don''t forget to grab HUSKE Plugs!</strong> <p>Our HUSKE plugs snap directly into the HUSKE base that comes with your rack. Just figure out what front hub your bike has and pick from any of the plugs below.</p> <p><strong>What''s in the box:</strong></p> <ul> <li>- Bomber 3-Bike Rack with (5) powerful 210 lb pull-strength rated vacuum mounts hold it solidly on your car’s roof, trunk, or back glass.</li> <li>- (3) Rear Wheel Strap with 22 inches of velcro (can accommodate most fat bike tires) for securing the back tires.</li> <li>- (3) HUSKE Universal Fork Mounts.</li> <li>- Spare SeaSucker pump.</li> <li>- Crank Arm Strap (prevents pedals from contacting roof).</li> <li>- 5g Lube Tube for vacuum pump maintenance.</li> </ul> <p>Minimal Assembly Required.</p> <ul> <li>- Holds 3 bicycles – up to 45 lbs each.</li> <li>- Made for roof top, trunk or hatchback attachment.</li> <li>- Attaches to metal, glass or fiberglass surfaces.</li> <li>- 3/4" thick high-density polyethylene (HDPE) body for strength and durability.</li> <li>- Approx. 41" x 11" footprint. Stands 3 tall without fork mount attached. 6.75" with fork mount.</li> <li>- Approx. 17 lbs.</li> </ul>', array['seasucker-bomber-3-bike-rack/1.jpg', 'seasucker-bomber-3-bike-rack/2.jpg', 'seasucker-bomber-3-bike-rack/3.jpg', 'seasucker-bomber-3-bike-rack/4.png', 'seasucker-bomber-3-bike-rack/5.png']::text[], 'new', 0, '2021-08-30'::date, false, false),
  ('seasucker-falcon-1-bike-rack', 'Seasucker Falcon 1 Bike Rack', 'seasucker', 'accessories', 'racks-storage', '<p>The Falcon is our pickup-truck-specific 1-bike carrier. It’s a fork-mount-style rack, with two of our powerful (210lb pull-strength rated) vacuum cups holding it onto the back window of your pickup. Incredibly easy to install, and removes in just seconds, all without marking your car.</p>', array['seasucker-falcon-1-bike-rack/1.jpg']::text[], 'new', 0, '2021-08-30'::date, false, false),
  ('seasucker-hornet-1-bike-handlebar-mount', 'Seasucker Hornet 1 Bike Handlebar Mount', 'seasucker', 'accessories', 'racks-storage', '<p>Our Hornet 1-bike rack is a small-scale revolution. We call it the “Smallest Bike Rack in the World” because it is. The Hornet is far and away the most travel-friendly rack on the market, but it works equally well for everyday use.</p> <p>Unlike most other SeaSucker racks, the Hornet is a “leave-the-front-wheel-on” bike rack. It is designed to mount to the back window of any hatchback, SUV, or minivan using two of SeaSucker’s powerful 4.5” vacuum mounts (120lb rated pull-strength each) to hold the handlebars and hang a bike weighing not more than 35 lbs from the rear glass. Plastic ladder straps securely hold both road and MTB bars to the vacuum mounts.</p> <p>As with all SeaSucker bike racks, the pump-action vacuum mounts also allow the user to attach the rack in just seconds, making the Hornet one of the easiest and fastest racks to install. Simply pump the two vacuum mounts onto the back windshield, close the ladder straps around the bars and you’re done. And when it comes time to remove it, the Hornet detaches just as quickly and breaks back down into its component parts for storage in its case.</p> <p><strong>What''s in the box:</strong></p> <ul> <li>- (2) 4.5” vacuum mounts (120lb rated pull-strength each) to hold the handlebars via plastic ladder straps.</li> <li>- Zippered travel case</li> <li>- Mandatory safety strap that loops around the bike’s steerer tube and into a sewn-in cam buckle. The strap’s tail has a built-in plastic peg that, when closed in the hatchback, secures the strap to the car.</li> </ul> <ul> <li>- For back window attachment on hatchbacks, SUVs, and vans.</li> <li>- Not intended for use on bikes weighing more than 35 pounds.</li> <li>- Rack fits into a 9.5”x7”x4” zippered carrying case for easy storage and travel.</li> <li>- Approx. 4.5" x 4.5" footprint per each vacuum mounts (two included).</li> <li>- Zippered travel case measures 10" long, 7" wide and 3" tall.</li> </ul>', array['seasucker-hornet-1-bike-handlebar-mount/1.jpg', 'seasucker-hornet-1-bike-handlebar-mount/2.jpg', 'seasucker-hornet-1-bike-handlebar-mount/3.jpg', 'seasucker-hornet-1-bike-handlebar-mount/4.png', 'seasucker-hornet-1-bike-handlebar-mount/5.png']::text[], 'new', 0, '2021-08-30'::date, false, false),
  ('seasucker-mini-bomber-2-bike-rack', 'Seasucker Mini Bomber 2 Bike Rack', 'seasucker', 'accessories', 'racks-storage', '<p>The Mini Bomber is probably our most versatile model. We typically recommend this model for e-bike riders. This 2-bike fork-mount rack is designed to attach to your car’s roof, trunk, or your SUV’s back glass. The HDPE body flexes to conform to your car’s curves. With four 6” SeaSucker vacuum mounts, this rack has plenty of muscle. Fits on virtually any car. Minimal assembly required.</p> <strong>Don''t forget to grab HUSKE Plugs!</strong> <p>Our HUSKE plugs snap directly into the HUSKE base that comes with your rack.</p> <p><strong>What’s in the box</strong></p> <ul> <li>- Mini Bomber 2-Bike Rack with (4) powerful 210 lb pull-strength rated vacuum mounts hold it solidly on your car’s roof, trunk, or back glass.</li> <li>- (2) HUSKE Universal Fork Mount.</li> <li>- (2) Rear Wheel Strap with 22 inches of velcro (can accommodate most fat bike tires) for securing the back tires.</li> <li>- Spare SeaSucker pump.</li> <li>- (2) Crank Arm Straps (prevents pedals from contacting roof).</li> <li>- 5g Lube Tube for vacuum pump maintenance.</li> </ul> <p><em>Minimal Assembly Required.</em></p> <ul> <li>- Holds 2 bicycles – up to 45 lbs each.</li> <li>- Made for roof top, trunk or hatchback attachment.</li> <li>- Attaches to metal, glass or fiberglass surfaces.</li> <li>- 3/4” thick high-density polyethylene (HDPE) body for strength and durability.</li> <li>- Approx. 27” x 8” footprint. Stands 3" tall without fork mount attached. 6.75" with fork mount.</li> <li>- Approx. 12 lbs.</li> </ul>', array['seasucker-mini-bomber-2-bike-rack/1.jpg', 'seasucker-mini-bomber-2-bike-rack/2.jpg', 'seasucker-mini-bomber-2-bike-rack/3.jpg', 'seasucker-mini-bomber-2-bike-rack/4.jpg']::text[], 'new', 0, '2021-08-30'::date, false, false),
  ('seasucker-talon-1-bike-rack', 'Seasucker Talon 1 Bike Rack', 'seasucker', 'accessories', 'racks-storage', '<p>The Talon is our workhorse 1-bike carrier and our best seller. It’s a fork-mount-style rack featuring our always-up-to-date HUSKE Fork Mount. Three of our powerful (210lb pull-strength rated each) vacuum cups hold it securely on your car’s roof, trunk or back glass. Small and light enough to fit into a bike bag or carry-on luggage for you adventurous types who travel with your bikes. Probably the easiest rack in the world to install, and removes in just seconds, all without marking your car. Fits on virtually any car.</p> <strong>Don''t forget to grab HUSKE Plugs!</strong> <p>Our HUSKE plugs snap directly into the HUSKE base that comes with your rack. Just figure out what front hub your bike has and pick from any of the plugs below.</p> <strong>What’s in the box</strong> <ul> <ul> <li>- Talon 1-Bike Rack with (3) powerful 210 lb pull-strength rated vacuum mounts hold it solidly on your car’s roof, trunk, or back glass.</li> <li>- HUSKE Universal Fork Mount.</li> <li>- Rear Wheel Strap with 22 inches of velcro (can accommodate most fat bike tires) for securing the back tires.</li> <li>- Spare SeaSucker pump.</li> <li>- Crank Arm Straps (prevents pedals from contacting roof).</li> <li>- 5g Lube Tube for vacuum pump maintenance.</li> </ul> </ul> <p>Minimal Assembly Required.</p>', array['seasucker-talon-1-bike-rack/1.jpg', 'seasucker-talon-1-bike-rack/2.jpg', 'seasucker-talon-1-bike-rack/3.png', 'seasucker-talon-1-bike-rack/4.jpg', 'seasucker-talon-1-bike-rack/5.jpg']::text[], 'new', 0, '2024-05-21'::date, false, false),
  ('thule-ride-along-baby-seat', 'Thule Ride Along Baby Seat', 'thule', 'accessories', 'racks-storage', '<p>$5 Shipping Nationwide / Free On Orders $50.00+</p>
<ul>
<li>North Island Delivery: 1-2 Working Days</li>
<li>South Island Delivery: 2-4 Working Days</li>
</ul>

<p><strong>Ride Along</strong></p>
<p><strong>Features</strong></p>
<ul>
<li>Adjustable padded harness to provide maximum child comfort and a safe, custom fit</li>
<li>DualBeam suspension system absorbs road shock to ensure a smooth, comfortable ride for the child</li>
<li>One-hand tilt function of up to 20 degrees, allows for five different reclining options</li>
<li>Single-hand adjustable foot straps and foot rests allow for convenience and flexibility as a child grows</li>
<li>Universal quick release bracket allows seat to mount/dismount from bike in seconds and is compatible with most bike frames (27.2-40mm diameter round frames and maximum 40x55mm oval frames)</li>
<li>Childproof safety buckle with large buttons quickly secures child</li>
<li>Detachable, water-repellent padding is machine washable and reversible, offering two color options</li>
<li>Built-in reflector and safety light attachment point provides added visibility</li>
<li>Lockable with Thule One-Key System (lock included)</li>
<li>Designed and tested for children from <a href="http://www.thule.com/en/nz/products/active-with-kids/bike-trailers-and-seats/bike-seats/thule-ridealong-_-1683326" rel="noopener nofollow" target="_blank">9 months*</a> to 6 years old, up to 48.5 lbs/22 kg</li>
<li>Meets international safety standards</li>
</ul>
<p>*Consult a pediatrician for children under 1 year old.</p>
<p><strong>Specifications:</strong></p>
<ul>
<li>
<strong></strong>Children capacity: 1               
</li>
<li>
<strong></strong>5-point child safety harness       
</li>
<li>
<strong></strong>Weight capacity: 22 kg
</li>
<li>
<strong></strong>Weight (kg): 5kg
</li>
<li>
<strong></strong>Colour: Grey
</li>
<li>
<strong></strong>Warranty: 5 years
</li>
</ul>

<p><strong>Ride Along Mini</strong></p>
<p>Let your child see the world in a whole new way!<br>This front child bike seat has an intuitive design for a safe, easy, and enjoyable ride.<br><br>Give your child maximum comfort and a safe, custom fit thanks to the adjustable padded 5-point harness. Single-hand, adjustable foot straps and footrests are easy to use and adjust as a child grows. You can mount/dismount the seat from your bike in seconds with the universal quick release bracket, fitting both normal and ahead stems.<br><br><strong>Features:</strong></p>
<ul>
<li>
<strong></strong>Be sure of correct mounting of the seat thanks to the safety indicator integrated in the quick release bracket.
</li>
<li>
<strong></strong>Quickly secure your child with the childproof safety buckle with large buttons.
</li>
<li>
<strong></strong>Your child can place their hands on the soft handle bar during the ride.
</li>
<li>
<strong></strong>Reversible, detachable, water-repellent, and machine-washable padding.
</li>
<li>
<strong></strong>Lock the seat to the bike with the Thule One-Key System (lock included).
</li>
<li>
<strong></strong>Designed and tested for children from 9 months* to 3 years old, up to 33 lbs/15 kg.*Consult a pediatrician for children under 1 year old.
</li>
<li>
<strong></strong>Meets stringent safety standards (DIN EN 14344). TÜV-approved.
</li>
</ul>

<p><strong>Specifications:</strong></p>
<ul>
<li>
<strong></strong>Children capacity: 1
</li>
<li>
<strong></strong>Meets safety standards               
</li>
<li>
<strong></strong>5-point child safety harness       
</li>
<li>
<strong></strong>Weight capacity: 15 kg
</li>
<li>
<strong></strong>Weight (kg): 2.7 kg
</li>
<li>
<strong></strong>Colour: Grey
</li>
<li>
<strong></strong>Warranty: 5 years
</li>
</ul>', array['thule-ride-along-baby-seat/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('thule-velocompact-925-bike-rack', 'Thule Velocompact 925 Bike Rack', 'thule', 'accessories', 'racks-storage', '<h4>Features</h4>

<ul>
<li>Compatible with all NZ towball sizes and most configurations (Interchangeable ball systems require 12mm of parallel sided neck under the ball.  Cone shaped ball mounts interfere with the coupler)</li>
<li>Easy mounting of bikes through detachable bike arms</li>
<li>Carries bikes with large wheelbases thanks to single action extendable wheel holders</li>
<li>Wide tilt angle allows opening of even very large rear doors - even with bikes mounted. We recommend test fitting on tall vans to confirm clearance</li>
<li>Easy boot access even with bikes mounted thanks to smart foot pedal tilt</li>
<li>Adjustable one hand coupling for easy mounting of carrier</li>
<li>Simple to fasten wheels thanks to long wheel straps with pump buckles</li>
<li>Simple to fold flat and store – fits most car boots</li>
<li>Lock your bikes to the bike carrier and your carrier to the tow bar (locks included)</li>
<li>Pre-assembled, no tools required</li>
<li>Fulfills the City Crash norm</li>
<li>Compatible with all towball sizes and most configurations (except 47mm gooseneck / Euro style and interchangeable ball mounts with cone shaped bases)</li>
<li>Fitted with NZ flat 7 pin trailer wiring plug</li>
</ul>

<h4>Technical Specifications</h4>

<table>
<tbody>
<tr>
<td>Technical specifications</td>
<td> </td>
</tr>
<tr>
<td>

Load capacity Bikes

</td>
<td>2</td>
</tr>
<tr>
<td>Load capacity (kg)</td>
<td>46 kg</td>
</tr>
<tr>
<td>Fits wheel dimensions</td>
<td>3" Max</td>
</tr>
<tr>
<td>Max bike weight</td>
<td>25 kg</td>
</tr>
<tr>
<td>Distance between bikes</td>
<td>19 cm</td>
</tr>
<tr>
<td>Length (cm)</td>
<td>103 cm</td>
</tr>
<tr>
<td>Width (cm)</td>
<td>59 cm</td>
</tr>
<tr>
<td>Weight (kg)</td>
<td>14.3 kg</td>
</tr>
<tr>
<td>Fits frame dimensions</td>
<td>22-80 mm</td>
</tr>
<tr>
<td>Detachable frame holders</td>
<td> √</td>
</tr>
<tr>
<td>Tiltable with bikes</td>
<td> √</td>
</tr>
<tr>
<td>One Key System compatible</td>
<td> √</td>
</tr>
<tr>
<td>Fits cars with exterior spare tyre</td>
<td> Adapter Required: Thule VeloCompact Spare wheel adapter</td>
</tr>
<tr>
<td>Fits most bikes with disc brakes</td>
<td> √</td>
</tr>
<tr>
<td>Rear lights</td>
<td> √</td>
</tr>
<tr>
<td>Powerplug</td>
<td>7-pin</td>
</tr>
<tr>
<td>TÜV Approved</td>
<td>-</td>
</tr>
<tr>
<td>Fulfils City Crash norm</td>
<td> √</td>
</tr>
<tr>
<td>Miscellaneous</td>
<td>-</td>
</tr>
<tr>
<td>SKU No</td>
<td>925</td>
</tr>
</tbody>
</table>', array['thule-velocompact-925-bike-rack/1.jpg']::text[], 'new', 0, '2021-08-21'::date, false, false),
  ('topeak-baby-seats', 'Topeak Baby Seats', 'topeak', 'accessories', 'racks-storage', '<table>
<tbody>
<tr>
<td>BAG COMPATIBILITY</td>
<td>MTX QuickTrack® system</td>
</tr>
<tr>
<td>MAX WEIGHT CAPACITY</td>
<td>BabySeat -<br>22 kg / 48.5 lb (Meets EN-14344 Class A22 regulations) <br>18 kg / 40 lb (Meets ASTM F1625 regulations) <br>Rack - <br>27 kg / 60 lb, Meets EN 14872 / ISO 11243</td>
</tr>
<tr>
<td>RACK</td>
<td>6061 T-6 hollow aluminum</td>
</tr>
<tr>
<td>SAFETY FEATURES</td>
<td>Adjustable foot rests with straps, Roll bar handle<br>Shoulder harness with multiple height adjustment system<br>Full body cocoonRear reflector</td>
</tr>
<tr>
<td>SEAT BODY</td>
<td>Molded engineering grade polymer</td>
</tr>
<tr>
<td>SIZE</td>
<td>77.4 x 58.5 x 39.5 cm / 23” x 15.5” x 30.5” (Seat)<br>40 x 34 x 17 cm / 15.7" x 13.4” x 6.7” (Rack)</td>
</tr>
<tr>
<td>SUSPENSION</td>
<td>Dual steel spring</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>3.13 kg / 6.9 lb (Seat)<br>580 g / 1.27 lb (Rack)</td>
</tr>
</tbody>
</table>', array['topeak-baby-seats/1.jpg', 'topeak-baby-seats/2.jpg', 'topeak-baby-seats/3.jpg', 'topeak-baby-seats/4.jpg', 'topeak-baby-seats/5.jpg']::text[], 'new', 3, '2021-08-30'::date, false, false),
  ('yakima-justclick-2-bike-rack', 'Yakima JustClick 2 Bike Rack', 'yakima', 'accessories', 'racks-storage', '<p>With space for two bikes and the ability to add a third, this tow ball carrier is a technical marvel for all cyclists. </p>
<p>The simple “Just Click” system makes it easy and secure to mount to your vehicle’s tow ball. Created with the future in mind, it is capable of carrying electric bikes.</p>

<p><strong>Features</strong></p>
<ul>
<li>Extendable wheel tray to suit most frame sizes</li>
<li>Integrated wheels allow you to transport and store with ease</li>
<li>"Just Click" onto the tow ball and the red/green indicator confirms secure attachment</li>
<li>Carries tyre sizes 83 mm (3.25") wide</li>
<li>Elevated rear tray allows for optimum bike positioning</li>
<li>Convenient drive-up ramp for electric bikes (sold separately)</li>
<li>Optional extension for extra bike (sold separately)</li>
<li>Includes Integrated Lock System</li>
<li>Convenient tilting system allow for access to rear of vehicle</li>
<li>Fitted with 7-pin flat plug</li>
<li>Fits 50mm tow ball which is supplied with the rack.</li>
</ul>

<p><strong>Specification</strong></p>
<p>Weight: 17.30 kg</p>
<p>Dimensions: L 58 cm  x  W 100 cm  x  H 77 cm</p>
<p>Capacity: 2 bike capacity. Total max. bike weight 60 kg</p>', array['yakima-justclick-2-bike-rack/1.jpg']::text[], 'new', 0, '2021-08-21'::date, false, false),
  ('yakima-tubetop', 'Yakima TubeTop', 'yakima', 'accessories', 'racks-storage', '<p><strong>TubeTop</strong></p>
<p>Hook any funky-top-tubed bike to a mast-style hitch rack with the TubeTop. Installs quickly and securely to seat post and stem to create a faux-top-tube so your bike mounts solidly to the rack. Large moulded collars are gentle to your bike''s finish. Bike capacity up to 20 kg.</p>
<p><strong>Features</strong></p>
<ul>
<li>Adapter that makes your bike compatible with most mast-style hitch racks</li>
<li>Installs quickly and securely to your seat post and stem to adapt a wide range of bikes for transport</li>
<li>Keeps your bike mounted solidly on single and dual arm mounts</li>
<li>Oversized diameter tubing and anti-rotation inserts for greater stability</li>
<li>Large moulded collars are gentle with your bike stem and seat post</li>
<li>Bike Capacity: 1 bike weighing up to 20 kg</li>
</ul>

<p><strong>Specification</strong></p>
<p>Weight: 1.60 kg<br>Dimensions: L 55.9 cm  x  W 2.5 cm  x  H 2.5 cm<br>Capacity: Bike weight up to 20 kg</p>
<p><a href="http://assets.yakima.com/Product/instructions/8002531/1" rel="noopener nofollow" target="_blank">Installation Instructions</a></p>', array['yakima-tubetop/1.jpg']::text[], 'new', 0, '2023-02-09'::date, false, false),

  -- ---- apparel · arm-leg-warmers ----
  ('castelli-arm-sleeves-upf-50-light', 'Castelli Arm Sleeves UPF 50 + Light', 'castelli', 'apparel', 'arm-leg-warmers', '<p>SURPRISINGLY USEFUL. We can officially only rate these warmers at UPF 50+, but in our laboratory tests they actually blocked 99.8 percent of damaging UV rays. We used a polyester base that is not only more effective than nylon at blocking UV rays but is also much better at keeping you dry, which means these arm sleeves are better in both cooler and warmer conditions. We’ve kept the construction very clean to eliminate seams that can rub, and we used our double-sided silicone elastic to make sure they stay in place. They fold up extremely small, so they’re great to stick in your pockets for your next big mountain day.</p>', array['castelli-arm-sleeves-upf-50-light/1.jpg']::text[], 'new', 0, '2025-09-09'::date, false, false),
  ('castelli-espresso-arm-warmers', 'Castelli Espresso Arm Warmers', 'castelli', 'apparel', 'arm-leg-warmers', '<p>Cas</p>

<p>Soft and warm for those chilly dry days.</p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 3/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 2/5</p>
<p>Breathability 4/5</p>
<p>Lightness 4/5 </p>
<ul>
<li>Weight:74<em> g</em>
</li>
<li>Temperature:8°C - 20°C / 46°F - 68°F</li>
</ul>
<p>PRODUCT FEATURES</p>

<p>Warm and soft Espresso thermal fabric</p>
<p>Single-piece construction to reduce seams</p>
<p>Silicone gripper at top prevents sliding</p>', array['castelli-espresso-arm-warmers/1.jpg', 'castelli-espresso-arm-warmers/2.jpg', 'castelli-espresso-arm-warmers/3.jpg', 'castelli-espresso-arm-warmers/4.jpg']::text[], 'new', 13, '2025-06-09'::date, false, false),
  ('castelli-nano-flex-kneewarmer', 'Castelli Nano Flex + Kneewarmer', 'castelli', 'apparel', 'arm-leg-warmers', '<p>MORE FLEX, MORE NANO. Our Nano Flex warmers have been in our collection for seven years, and we’ve finally found a way to improve them. We’ve added an insert on the back in Nano Light fabric to help them bend around your elbow or knee better while keeping all the water protection. More comfort due to more flexibility, and in a slightly more compact package.</p>', array['castelli-nano-flex-kneewarmer/1.jpg']::text[], 'new', 1, '2021-08-22'::date, false, false),
  ('castelli-nano-flex-legwarmer', 'Castelli Nano Flex + Legwarmer', 'castelli', 'apparel', 'arm-leg-warmers', '<p>MORE FLEX, MORE NANO. Our Nano Flex warmers have been in our collection for seven years, and we’ve finally found a way to improve them. We’ve added an insert on the back in Nano Light fabric to help them bend around your elbow or knee better while keeping all the water protection. More comfort due to more flexibility, and in a slightly more compact package.</p>', array['castelli-nano-flex-legwarmer/1.jpg']::text[], 'new', 0, '2021-08-22'::date, false, false),
  ('castelli-nano-flex-3g-arm-warmer', 'Castelli Nano Flex 3G Arm Warmer', 'castelli', 'apparel', 'arm-leg-warmers', '<p>Nano Flex for the ultimate warmer: warm and comfortable in dry conditions, water repellent in damp conditions, and still warm in extreme conditions.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Water-repellent thermal and breathable</li>
<br><li>Nano Flex fabric</li>
<br><li>Flat-lock stitching with single seam</li>
<br><li>Double-sided silicone grippers to keep warmers in place</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>3/5</strong>
</li>
<br><li>Waterproofness: <strong>3/5</strong>
</li>
<br><li>Windproofness: <strong>3/5</strong>
</li>
<br><li>Breathability: <strong>4/5</strong>
</li>
<br><li>Lightness: <strong>4/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>66gm</strong>
</li>
<br><li>Temperature: <strong>8°C - 20°C / 46°F - 68°F</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul><br><p><strong>NANO FLEX ALL-CONDITION WARMERS</strong> Choose Nano Flex for warmers that are great in dry conditions but also give some extra protection and warmth in wet conditions. We invented the category of water-protective thermal fabrics, and Castelli''s proprietary Nano Flex is often imitated but never equalled. No compromises for any conditions.</p>', array['castelli-nano-flex-3g-arm-warmer/1.jpg']::text[], 'new', 2, '2021-08-22'::date, false, false),
  ('castelli-nano-flex-3g-kneewarmer', 'Castelli Nano Flex 3G Kneewarmer', 'castelli', 'apparel', 'arm-leg-warmers', '<p>Nano Flex for the ultimate warmer: warm and comfortable in dry conditions, water repellent in damp conditions, and still warm in extreme conditions.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Water-repellent thermal and breathable Nano Flex fabric</li>
<br><li>Flat-lock stitching with single seam</li>
<br><li>Double-sided silicone grippers to keep warmers in place</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>3/5</strong>
</li>
<br><li>Waterproofness: <strong>3/5</strong>
</li>
<br><li>Windproofness: <strong>3/5</strong>
</li>
<br><li>Breathability: <strong>4/5</strong>
</li>
<br><li>Lightness: <strong>4/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>89gm</strong>
</li>
<br><li>Temperature: <strong>8°C - 20°C / 46°F - 68°F</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul><br><p><strong>NANO FLEX ALL-CONDITION WARMERS</strong> Choose Nano Flex for warmers that are great in dry conditions but also give some extra protection and warmth in wet conditions. We invented the category of water-protective thermal fabrics, and Castelli''s proprietary Nano Flex is often imitated but never equalled. No compromises for any conditions.</p>', array['castelli-nano-flex-3g-kneewarmer/1.jpg']::text[], 'new', 4, '2021-08-22'::date, false, false),
  ('castelli-nano-flex-3g-leg-warmer', 'Castelli Nano Flex 3G Leg Warmer', 'castelli', 'apparel', 'arm-leg-warmers', '<p>NANO FLEX ALL-CONDITION WARMERS. Choose Nano Flex for warmers that are great in dry conditions but also give some extra protection and warmth in wet conditions. We invented the category of water-protective thermal fabrics, and Castelli''s proprietary Nano Flex is often imitated but never equaled. No compromises for any conditions.</p>', array['castelli-nano-flex-3g-leg-warmer/1.jpg']::text[], 'new', 4, '2021-08-22'::date, false, false),
  ('castelli-pro-seamless-knee-warmer-1', 'Castelli Pro Seamless Knee Warmer', 'castelli', 'apparel', 'arm-leg-warmers', '<p>Wide temperature range combined with high-stretch seamless comfort makes this our most versatile warmer.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Mid-weight seamless arm warmer</li>
<br><li>Surprisingly warm without causing overheating</li>
<br><li>Unique polyester/nylon/Lycra® 78%/15%/7% blend</li>
<br><li>Fully seamless construction</li>
<br><li>Folds up extra small</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>3/5</strong>
</li>
<br><li>Waterproofness: <strong>1/5</strong>
</li>
<br><li>Windproofness: <strong>3/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>4/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>52gm</strong>
</li>
<br><li>Temperature: <strong>10°C - 20°C / 50°F - 68°F</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul>', array['castelli-pro-seamless-knee-warmer-1/1.jpg']::text[], 'new', 0, '2022-06-01'::date, false, false),
  ('castelli-thermoflex-2-knee-warmer-1', 'Castelli ThermoFlex 2 Knee Warmer', 'castelli', 'apparel', 'arm-leg-warmers', '<p>Thermoflex is luxuriously warm and stretchy in dry conditions but is not intended for wet conditions.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Thermoflex fleece fabric is warm, stretchy and soft</li>
<li>Single-piece construction with flat-lock seams</li>
<li>Embossed Castelli wordmark logos</li>
<li>Dual-sided silicone gripper elastic at top prevents sliding down</li>
</ul>
<p><strong>Technical Features</strong></p>
<ul>
<li>Insulation: 4/5</li>
<li>Waterproofness: 2/5</li>
<li>Windproofness: 2/5</li>
<li>Breathability: 3/5</li>
<li>Lightness: 3/5</li>
</ul>
<ul>
<li>Weight: 118gm
</li>
<li>Temperature: 8°C - 20°C / 46°F - 68°F
</li>
<li>Fit: Comfortable
</li>
</ul>', array['castelli-thermoflex-2-knee-warmer-1/1.jpg']::text[], 'new', 1, '2025-05-14'::date, false, false),
  ('castelli-thermoflex-2-leg-warmer-1', 'Castelli ThermoFlex 2 Leg Warmer', 'castelli', 'apparel', 'arm-leg-warmers', '<p>Thermoflex is luxuriously warm and stretchy in dry conditions but is not intended for wet conditions.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Thermoflex fleece fabric is warm, stretchy and soft</li>
<li>Single-piece construction with flat-lock seams</li>
<li>Embossed Castelli wordmark logos</li>
<li>Dual-sided silicone gripper elastic at top prevents sliding down</li>
</ul>
<p><strong>Technical Features</strong></p>
<ul>
<li>Insulation: 4/5</li>
<li>Waterproofness: 2/5</li>
<li>Windproofness: 2/5</li>
<li>Breathability: 3/5</li>
<li>Lightness: 3/5</li>
</ul>
<ul>
<li>Weight: 158gm
</li>
<li>Temperature: 8°C - 20°C / 46°F - 68°F
</li>
<li>Fit: Comfortable
</li>
</ul>', array['castelli-thermoflex-2-leg-warmer-1/1.jpg']::text[], 'new', 0, '2025-05-14'::date, false, false),
  ('sportfulthermodrytexkneewarmers', 'Sportful Thermodrytex Knee Warmers', 'sportful', 'apparel', 'arm-leg-warmers', '<p><strong>Description:</strong></p>
<p>For days when you don''t need to pull on winter tights but at the same time there''s a definite chill in the air, Sportful''s Thermodrytex Knee Warmers provide the versatility to balance warmth and breathability as you ride during transitional seasons of the year.<br>Whether it''s to give warmth on a chilly morning before you warm up, when paired with either summer race shorts or thermal cycling shorts, the Thermodrytex Knee Warmers are a brilliant accessory to give you easy control of warmth throughout a ride and extra coverage over the vulnerable knees. The high degree of breathability also ensures sweat doesn''t hang around when you up the pace or the sun finally offers some warmth. Thanks to the lightweight design they''re also easy to roll up and stow in a jersey pocket when not needed. </p>', array['sportfulthermodrytexkneewarmers/1.jpg']::text[], 'new', 1, '2021-08-19'::date, false, false),
  ('thermal-arm-warmers', 'Thermal Arm Warmers', 'specialized', 'apparel', 'arm-leg-warmers', '<p>Arm warmers are an essential layering piece, and the Thermal Arm Warmers are no exception. Throw ''em in your pocket for a post-work spin, or start with them on for a ride with inclement weather—these warmers are warmer than our Seamless Warmers, ensuring you have plenty of insulation from Old Man Winter''s sting.</p>', array['thermal-arm-warmers/1.jpg']::text[], 'new', 0, '2024-08-05'::date, false, false),
  ('thermal-knee-warmers', 'Thermal Knee Warmers', 'specialized', 'apparel', 'arm-leg-warmers', '<p>Knee warmers are an essential layering piece, and the Thermal Knee Warmers are no exception. Throw ''em in your pocket for a post-work spin, or start with them on for a ride with inclement weather—these warmers are warmer than our Seamless Warmers, ensuring you have plenty of insulation from Old Man Winter''s sting.</p>', array['thermal-knee-warmers/1.jpg', 'thermal-knee-warmers/2.jpg', 'thermal-knee-warmers/3.jpg', 'thermal-knee-warmers/4.jpg', 'thermal-knee-warmers/5.jpg']::text[], 'new', 5, '2024-08-05'::date, false, false),
  ('thermal-leg-warmers', 'Thermal Leg Warmers', 'specialized', 'apparel', 'arm-leg-warmers', '<p>Leg warmers are an essential layering piece, and the Thermal Knee Warmers are no exception. Throw ''em in your pocket for a post-work spin, or start with them on for a ride with inclement weather—these warmers are warmer than our Seamless Warmers, ensuring you have plenty of insulation from Old Man Winter''s sting.</p>', array['thermal-leg-warmers/1.jpg', 'thermal-leg-warmers/2.jpg', 'thermal-leg-warmers/3.jpg', 'thermal-leg-warmers/4.jpg', 'thermal-leg-warmers/5.jpg']::text[], 'new', 2, '2024-08-05'::date, false, false),

  -- ---- apparel · base-layers ----
  ('castelli-active-cooling-sleeveless-baselayer-mens', 'Castelli Active Cooling Sleeveless Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Made to hold a bit of moisture close to your skin to actively cool you on hot days through evaporative cooling.</p><p><br></p><p>PRODUCT FEATURES </p><p>Base layer to cool you on hot days</p><p>Polartec® Delta fabric features regulated drying so that the evaporative effect cools your core</p><p>Sleeveless design with minimalist construction</p><p>Sublimated overprint</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 5/5</p><p>Lightness 4/5</p><ul>
<li>Weight: 128<em> g</em>
</li>
<li>Temperature: 25°C - 35°C</li>
</ul>', array['castelli-active-cooling-sleeveless-baselayer-mens/1.jpg', 'castelli-active-cooling-sleeveless-baselayer-mens/2.jpg', 'castelli-active-cooling-sleeveless-baselayer-mens/3.jpg']::text[], 'new', 5, '2025-11-12'::date, false, false),
  ('castelli-bandito-wool-ls-baselayer-mens', 'Castelli Bandito Wool LS Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Lightweight merino wool blend for warmth and moisture management during moderate-intensity and cold rides.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>125 g/m2 48% merino / 47% recycled polyester / 5% elastane fabric gives the warmth of wool with the durability and wicking of polyester</li>
<br><li>Machine washable</li>
<br><li>High collar</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>4/5</strong>
</li>
<br><li>Waterproofness: <strong>1/5</strong>
</li>
<br><li>Windproofness: <strong>1/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>234gm</strong>
</li>
<br><li>Temperature: <strong>-4°C - 10°C / 25°F - 50°F</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul><br><p>The natural warmth of wool is mixed with recycled polyester to improve wicking in this warm and comfortable base layer. It''s stretchy for a great fit, the sleeves are long enough to cover to the wrists, and you might even use it to lounge around the house. It''s that comfortable.</p>', array['castelli-bandito-wool-ls-baselayer-mens/1.jpg', 'castelli-bandito-wool-ls-baselayer-mens/2.jpg', 'castelli-bandito-wool-ls-baselayer-mens/3.jpg', 'castelli-bandito-wool-ls-baselayer-mens/4.jpg']::text[], 'new', 0, '2024-07-12'::date, false, false),
  ('castelli-bandito-wool-ls-baselayer-womens', 'Castelli Bandito Wool LS Baselayer Women''s', 'castelli', 'apparel', 'base-layers', '<p>Lightweight merino wool blend for warmth and moisture management during moderate-intensity and cold rides.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>125 g/m2 48% merino / 47% recycled polyester / 5% elastane fabric gives the warmth of wool with the durability and wicking of polyester</li>
<br><li>Machine washable</li>
<br><li>High collar</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>4/5</strong>
</li>
<br><li>Waterproofness: <strong>1/5</strong>
</li>
<br><li>Windproofness: <strong>1/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>199gm</strong>
</li>
<br><li>Temperature: <strong>-2°C - 14°C / 28°F - 57°F</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul><br><p>The natural warmth of wool is mixed with recycled polyester to improve wicking in this warm and comfortable base layer. It''s stretchy for a great fit, the sleeves are long enough to cover to the wrists, and you might even use it to lounge around the house. It''s that comfortable.</p>', array['castelli-bandito-wool-ls-baselayer-womens/1.jpg', 'castelli-bandito-wool-ls-baselayer-womens/2.jpg', 'castelli-bandito-wool-ls-baselayer-womens/3.jpg', 'castelli-bandito-wool-ls-baselayer-womens/4.jpg', 'castelli-bandito-wool-ls-baselayer-womens/5.jpg']::text[], 'new', 0, '2024-07-12'::date, false, false),
  ('castelli-bandito-wool-ss-baselayer-mens', 'Castelli Bandito Wool SS Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Short-sleeve lightweight merino wool base layer to wear under a Gabba or jersey for cool rides.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>125 g/m2 48% merino / 47% recycled polyester / 5% elastane fabric gives the warmth of wool with the durability and wicking of polyester</li>
<br><li>Machine washable</li>
<br><li>High collar</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>4/5</strong>
</li>
<br><li>Waterproofness: <strong>1/5</strong>
</li>
<br><li>Windproofness: <strong>1/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>159gm</strong>
</li>
<br><li>Temperature: <strong>8°C - 14°C / 46°F - 57°F</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul><br><p>For high-intensity rides or races in cool conditions, you can use this under a Gabba or jersey/vest for extra core warmth, even if it gets wet. The sleeves are long enough to interface with your arm warmers.</p>', array['castelli-bandito-wool-ss-baselayer-mens/1.jpg', 'castelli-bandito-wool-ss-baselayer-mens/2.jpg', 'castelli-bandito-wool-ss-baselayer-mens/3.jpg', 'castelli-bandito-wool-ss-baselayer-mens/4.jpg']::text[], 'new', 1, '2024-07-12'::date, false, false),
  ('castelli-baselayer-flanders-warm-neck-warmer', 'Castelli Baselayer Flanders Warm Neck Warmer', 'castelli', 'apparel', 'base-layers', '<p>Made with our warmest base-layer fabric and an extra-long neck that can be pulled up to cover your mouth and face. </p>
<p><br></p>
<p>Another piece that started in a pro riders focus group – our warmest base layer (Flanders) with essentially a built-in neck warmer. On merely cold days, keep the neck down to fill in the space inside the collar of your jacket. On brutally cold days, pull it up over your face for extra warmth, with the double layer SottoZero fleece fabric to keep you even warmer.</p>

<p><br></p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 5/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 3/5</p>
<p>Lightness 3/5</p>
<p><br></p>

<ul>
<li>Weight:268<em> g</em>
</li>
<li>Temperature:-4°C - 6°C / 25°F - 43°F
</li>
<li>
Fit:Tailored

</li>
</ul>

<p><br></p>
<p>PRODUCT FEATURES</p>

<p>SottoZero multi-denier 100% polyester fleece fabric</p>
<p>Flat-lock stitching</p>
<p>Mesh armpit insert</p>
<p>Higher than normal neck can be pulled up to act as a neck warmer</p>', array['castelli-baselayer-flanders-warm-neck-warmer/1.webp', 'castelli-baselayer-flanders-warm-neck-warmer/2.webp']::text[], 'new', 0, '2025-05-14'::date, false, false),
  ('castelli-bolero-long-sleeve-baselayer-mens', 'Castelli Bolero Long Sleeve Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Aero sleeves for aerodynamic gains.</p><br><h3><strong>Product Features</strong></h3><br><ul>
<br><li>Sleeves with aero trip ribbing for maximal aerodynamic gain.</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Breathability: <strong>5/5</strong>
</li>
<br><li>Lightness: <strong>5/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>70gm</strong>
</li>
<br><li>Fit: <strong>Aero</strong>
</li>
<br>
</ul><br><p><strong>AERO SLEEVES FOR AERODYNAMIC GAINS.</strong> If you have a keen eye, you''ll have noticed the lines running down the arms of our pro riders when they race TTs. These aero ribs are our Bolero sleeves. The ribs create aerodynamic trip strips, making our TT suits even faster. If you''re ready to set your next PB, the Bolero sleeves are a must.</p>', array['castelli-bolero-long-sleeve-baselayer-mens/1.jpg', 'castelli-bolero-long-sleeve-baselayer-mens/2.jpg', 'castelli-bolero-long-sleeve-baselayer-mens/3.jpg', 'castelli-bolero-long-sleeve-baselayer-mens/4.jpg', 'castelli-bolero-long-sleeve-baselayer-mens/5.jpg']::text[], 'new', 5, '2024-07-12'::date, false, false),
  ('castelli-bolero-mesh-short-sleeve-baselayer-mens', 'Castelli Bolero Mesh Short Sleeve Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Aero base layer for aerodynamic gains.</p><br><h3><strong>Product Features</strong></h3><br><ul>
<br><li>Open mesh body for optimal moisture wicking and airflow</li>
<br><li>Sleeves with aero trip ribbing for maximal aerodynamic gain</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Breathability: <strong>5/5</strong>
</li>
<br><li>Lightness: <strong>5/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight:<strong>152gm</strong>
</li>
<br><li>Temperature: <strong>18°C - 35°C / 64°F - 95°F</strong>
</li>
<br><li>Fit: <strong>Race</strong>
</li>
<br>
</ul><br><p><strong>AERO BASE LAYER FOR AERODYNAMIC GAINS.</strong> If you have a keen eye, you''ll have noticed the lines running down the arms of our pro riders when they race TTs. These aero ribs are our Bolero sleeves. The ribs create aerodynamic trip strips, making our Aero Jerseys and San Remo Speedsuits even faster. We''ve incorporated this short-sleeve version into a base layer for road racing. Not only will you be faster, but the open mesh of the base layer will keep you cool and dry.</p>', array['castelli-bolero-mesh-short-sleeve-baselayer-mens/1.jpg', 'castelli-bolero-mesh-short-sleeve-baselayer-mens/2.jpg', 'castelli-bolero-mesh-short-sleeve-baselayer-mens/3.jpg', 'castelli-bolero-mesh-short-sleeve-baselayer-mens/4.jpg', 'castelli-bolero-mesh-short-sleeve-baselayer-mens/5.jpg']::text[], 'new', 3, '2024-07-12'::date, false, false),
  ('castelli-bolero-short-sleeve-baselayer-mens', 'Castelli Bolero Short Sleeve Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Aero base layer for aerodynamic gains.</p><br><h3><strong>Product Features</strong></h3><br><ul>
<br><li>Sleeves with aero trip ribbing for maximal aerodynamic gain.</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Breathability: <strong>5/5</strong>
</li>
<br><li>Lightness: <strong>5/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight:<strong>54gm</strong>
</li>
<br><li>Fit: <strong>Race</strong>
</li>
<br>
</ul><br><p><strong>AERO SLEEVES FOR AERODYNAMIC GAINS.</strong> If you have a keen eye, you''ll have noticed the lines running down the arms of our pro riders when they race TTs. These aero ribs are our Bolero sleeves — here in a short-sleeve version. The ribs create aerodynamic trip strips, making our Aero Jerseys and San Remo Speedsuits even faster.</p>', array['castelli-bolero-short-sleeve-baselayer-mens/1.jpg', 'castelli-bolero-short-sleeve-baselayer-mens/2.jpg', 'castelli-bolero-short-sleeve-baselayer-mens/3.jpg', 'castelli-bolero-short-sleeve-baselayer-mens/4.jpg']::text[], 'new', 0, '2024-07-12'::date, false, false),
  ('castelli-core-mesh-3-short-sleeve-baselayer-mens', 'Castelli Core Mesh 3 Short Sleeve Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Our lightest and airiest base layer wicks moisture away from your skin, while the open mesh helps hold the jersey up and away from the skin. It''s good for warm conditions, and some riders even like it on a hot day, as it allows airflow between the jersey and skin.</p><p>PRODUCT FEATURES</p><p>Magic Mesh 90% polyester, 10% Elastane wicking fabric</p><p>Minimalist lightweight construction</p><p>Reduced seams for maximum comfort</p><p>TECHNICAL FEATURES</p><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 4/5</p><p>Lightness 5/5</p><ul>
<li>Weight: 131<em> g</em>
</li>
<li>Temperature:20°C - 30°C</li>
<li>Fit: Regular</li>
</ul>', array['castelli-core-mesh-3-short-sleeve-baselayer-mens/1.jpg', 'castelli-core-mesh-3-short-sleeve-baselayer-mens/2.jpg', 'castelli-core-mesh-3-short-sleeve-baselayer-mens/3.jpg']::text[], 'new', 3, '2025-11-12'::date, false, false),
  ('castelli-core-mesh-3-sleeveless-baselayer-mens', 'Castelli Core Mesh 3 Sleeveless Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Our lightest and airiest base layer wicks moisture away from your skin, while the open mesh helps hold the jersey up and away from the skin. It''s good for warm conditions, and some riders even like it on a hot day, as it allows airflow between the jersey and skin.</p>

<p>PRODUCT FEATURES</p>
<p>Magic Mesh 90% polyester, 10% Elastane wicking fabric</p>
<p>Minimalist lightweight construction</p>
<p>Reduced seams for maximum comfort</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>
<p>Lightness 5/5</p>

<ul>
<li>Weight: 115<em> g</em>
</li>
<li>Temperature: 20°C - 40°C</li>
<li>Fit: Regular</li>
</ul>', array['castelli-core-mesh-3-sleeveless-baselayer-mens/1.jpg', 'castelli-core-mesh-3-sleeveless-baselayer-mens/2.jpg', 'castelli-core-mesh-3-sleeveless-baselayer-mens/3.jpg', 'castelli-core-mesh-3-sleeveless-baselayer-mens/4.jpg', 'castelli-core-mesh-3-sleeveless-baselayer-mens/5.jpg']::text[], 'new', 5, '2025-11-12'::date, false, false),
  ('castelli-core-seamless-long-sleeve-baselayer-mens-1', 'Castelli Core Seamless Long Sleeve Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Seamless for comfort and surprisingly warm for its weight, this base layer is ideal in cool conditions, providing excellent moisture management.</p>
<p>Time to give seamless base layers another try. Seamless construction promises stretch and comfort, but most base layers on the market have a nylon and Lycra® mix that feels comfortable when you put it on but then ends up feeling wet when you''re actually riding, and you freeze when you stop. We''ve worked hard to make this Core Seamless base layer keep you warm and dry, thanks to the addition of polypropylene and polyester yarns, while not compromising the stretch comfort of seamless. We think we''ve found the sweet spot that also provides a nice level of warmth for cool to cold days.</p>
<p><strong>Product features</strong></p>
<ul>
<li>84% polyester / 16% polypropylene yarns provide soft, warm wicking and exceptional stretch fit</li>
<li>Seamless construction means extra comfort</li>
<li>Lighter weight on side and back</li>
<li>Wide neck opening to fit under short-collared jerseys</li>
<li>Weight: 206gm
</li>
<li>Temperature: 4°C - 16°C / 39°F - 61°F
</li>
<li>
Fit: Comfortable

</li>
</ul>', array['castelli-core-seamless-long-sleeve-baselayer-mens-1/1.jpg', 'castelli-core-seamless-long-sleeve-baselayer-mens-1/2.jpg', 'castelli-core-seamless-long-sleeve-baselayer-mens-1/3.jpg', 'castelli-core-seamless-long-sleeve-baselayer-mens-1/4.jpg']::text[], 'new', 0, '2025-05-20'::date, false, false),
  ('castelli-core-seamless-ss-baselayer-mens-1', 'Castelli Core Seamless SS Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Seamless for comfort and surprisinaly warm for its weight, this base laver is ideal in cool conditions, providing excellent moisture management.</p>
<ul>
<li>Polyester Polypropylene Elastane yarns provide soft warm wicking while providing exceptional stretch fit.</li>
<li>Seamless construction means extra comfort</li>
<li>Lighter weight on side and back</li>
<li>Wide neck opening so it fits under short collared jerseys</li>
<li>Weight: 152gm
</li>
<li>Temperature: 8°C - 20°C / 46°F - 68°F
</li>
</ul>', array['castelli-core-seamless-ss-baselayer-mens-1/1.jpg', 'castelli-core-seamless-ss-baselayer-mens-1/2.jpg', 'castelli-core-seamless-ss-baselayer-mens-1/3.jpg', 'castelli-core-seamless-ss-baselayer-mens-1/4.jpg', 'castelli-core-seamless-ss-baselayer-mens-1/5.jpg']::text[], 'new', 0, '2025-05-20'::date, false, false),
  ('castelli-flanders-2-warm-ls-baselayer-womens-1', 'Castelli Flanders 2 Warm LS Baselayer Women''s', 'castelli', 'apparel', 'base-layers', '<p>Warm, dry, comfortable and very soft. This base layer feels warm from the moment you put it on. The best choice for cold-weather riding.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>SottoZero Fleece multi-denier 100% polyester fabric</li>
<br><li>Flat-lock stitching</li>
<br><li>Mesh armpit insert</li>
<br><li>Flat hem tucks away in tights</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>223gm</strong>
</li>
<br><li>Temperature: <strong>-4°C - 10°C / 25°F - 50°F</strong>
</li>
<br><li>Fit: <strong>Comfortable</strong>
</li>
<br>
</ul><br><p><strong>BLUSTERY WEATHER? NO PROBLEM</strong> This product was made for the conditions of Flanders in February. Or basically any month in Flanders between September and May. High-loft fleece on the inside provides warmth to spare, and you’ll love the softness on your skin with the excellent moisture management of this 100% multi-denier fabric. It''s stretchy for a perfect fit, and the flat-lock seams add an extra touch of quality.</p>', array['castelli-flanders-2-warm-ls-baselayer-womens-1/1.jpg', 'castelli-flanders-2-warm-ls-baselayer-womens-1/2.jpg', 'castelli-flanders-2-warm-ls-baselayer-womens-1/3.jpg', 'castelli-flanders-2-warm-ls-baselayer-womens-1/4.jpg', 'castelli-flanders-2-warm-ls-baselayer-womens-1/5.jpg']::text[], 'new', 1, '2024-07-12'::date, false, false),
  ('castelli-flanders-warm-ls-baselayer-mens-1', 'Castelli Flanders Warm LS Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>Warm, dry, comfortable. This is the base layer you want if you''re riding outside in cold temperatures.</p><br><h3><strong>Product Features</strong></h3><br><ul>
<br><li>SottoZero Fleece multi-denier 100% polyester fabric</li>
<br><li>Flat-lock stitching</li>
<br><li>Mesh armpit insert</li>
<br><li>Flat hem tucks away in tights</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>5/5</strong>
</li>
<br><li>Waterproofness: <strong>1/5</strong>
</li>
<br><li>Windproofness: <strong>1/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>116gm</strong>
</li>
<br><li>Temperature: <strong>-2°C - 10°C / 28°F - 50°F</strong>
</li>
<br><li>Fit: <strong>Tailored</strong>
</li>
<br>
</ul><br><p><strong>BLUSTERY WEATHER? NO PROBLEM</strong> This product was made for the conditions of Flanders in February. Or basically any month between September and May. High-loft fleece on the inside provides warmth to spare, and you’ll love the softness on your skin with the excellent moisture management of this 100% multi-denier fabric. It’s stretchy for a perfect fit, and the flat-lock seams add an extra touch of quality.</p>', array['castelli-flanders-warm-ls-baselayer-mens-1/1.jpg', 'castelli-flanders-warm-ls-baselayer-mens-1/2.jpg', 'castelli-flanders-warm-ls-baselayer-mens-1/3.jpg', 'castelli-flanders-warm-ls-baselayer-mens-1/4.jpg', 'castelli-flanders-warm-ls-baselayer-mens-1/5.jpg']::text[], 'new', 0, '2024-07-12'::date, false, false),
  ('castelli-pro-mesh-2-0-sl-sleeveless-baselayer-mens', 'Castelli Pro Mesh 2.0 SL Sleeveless Baselayer Men''s', 'castelli', 'apparel', 'base-layers', '<p>WorldTour winning base layer with a graphic print that shows your style on the inside.</p><p><br></p><p>Product features</p><ul>
<li>3D mesh fabric for excellent moisture management</li>
<li>Sublimated print graphic</li>
<li>Waist hem stays flat under shorts</li>
<li>Temperature:15°C - 28°C 
</li>
</ul><ul><li>Fit:Regular
</li></ul>', array['castelli-pro-mesh-2-0-sl-sleeveless-baselayer-mens/1.jpg', 'castelli-pro-mesh-2-0-sl-sleeveless-baselayer-mens/2.jpg', 'castelli-pro-mesh-2-0-sl-sleeveless-baselayer-mens/3.jpg', 'castelli-pro-mesh-2-0-sl-sleeveless-baselayer-mens/4.jpg']::text[], 'new', 3, '2025-05-14'::date, false, false),
  ('castelli-pro-mesh-3-sleeveless-baselayer-womens-1', 'Castelli Pro Mesh 3 Sleeveless Baselayer Women''s', 'castelli', 'apparel', 'base-layers', '<p>Pro-level comfort and moisture management with colorful graphics.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>3D mesh fabric for excellent moisture management</li>
<br><li>Sublimated print graphic</li>
<br><li>Waist hem stays flat under shorts</li>
<br>
</ul><br><h3><strong>Technical features</strong></h3><br><ul>
<br><li>Weight: <strong>97gm</strong>
</li>
<br><li>Temperature: <strong>15°C - 30°C / 59°F - 86°F</strong>
</li>
<br>
</ul><br><p><strong>PRO DUTY</strong> This is the same fabric we use in the base layers for our pro riders, and you’ll appreciate the extreme comfort and wide temperature range even if you just buy the piece because you like the color.</p>', array['castelli-pro-mesh-3-sleeveless-baselayer-womens-1/1.png', 'castelli-pro-mesh-3-sleeveless-baselayer-womens-1/2.png']::text[], 'new', 1, '2024-07-12'::date, false, false),
  ('castelli-pro-mesh-4-sleeveless-baselayer-womens-1', 'Castelli Pro Mesh 4 Sleeveless Baselayer Women''s', 'castelli', 'apparel', 'base-layers', '<p>Pro-level comfort and moisture management with colorful graphics.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>3D mesh fabric for excellent moisture management</li>
<br><li>Sublimated print graphic</li>
<br><li>Waist hem stays flat under shorts</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>107gm</strong>
</li>
<br><li>Temperature: <strong>15°C - 30°C</strong>
</li>
<br><li>Fit: <strong>Comfortable</strong>
</li>
<br>
</ul><br><p>This is the same fabric we use in the base layers for our pro riders, and you''ll appreciate the extreme comfort and wide temperature range even if you just buy the piece because you like the color.</p>', array['castelli-pro-mesh-4-sleeveless-baselayer-womens-1/1.jpg', 'castelli-pro-mesh-4-sleeveless-baselayer-womens-1/2.jpg', 'castelli-pro-mesh-4-sleeveless-baselayer-womens-1/3.jpg', 'castelli-pro-mesh-4-sleeveless-baselayer-womens-1/4.jpg']::text[], 'new', 2, '2024-07-12'::date, false, false),
  ('castelli-pro-mesh-sleeveless-baselayer-womens-2', 'Castelli Pro Mesh Sleeveless Baselayer Women''s', 'castelli', 'apparel', 'base-layers', '<p>Made for the widest range of conditions and designed to keep you dry in cool to mild temperatures.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Breathability 5/5</p><p>Lightness 5/5</p><ul>
<li>Weight: 88<em> g</em>
</li>
<li>Temperature: 15°C - 28°C / 59°F - 82°F</li>
<li>Fit: Regular</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>3D mesh fabric for excellent moisture management</p><p>Sublimated print graphic</p><p>Waist hem stays flat under shorts</p><p><br></p><p>PRO-LEVEL BASE LAYER.</p><p>The pro cyclists we work with know the importance of having the right base layer for the conditions. The Pro Mesh is made for the widest range of conditions and is designed to keep you dry in cool to mild temperatures. We’ll even put it under a Flanders Warm base layer in the coldest conditions. We’ve given it a graphic print so you can show off that you have something special when you open your jersey zip.</p>', array['castelli-pro-mesh-sleeveless-baselayer-womens-2/1.jpg', 'castelli-pro-mesh-sleeveless-baselayer-womens-2/2.jpg', 'castelli-pro-mesh-sleeveless-baselayer-womens-2/3.jpg', 'castelli-pro-mesh-sleeveless-baselayer-womens-2/4.jpg', 'castelli-pro-mesh-sleeveless-baselayer-womens-2/5.jpg']::text[], 'new', 5, '2025-11-12'::date, false, false),
  ('velotoze-aeroflow-baselayer', 'VeloToze AeroFlow Baselayer', 'velotoze', 'apparel', 'base-layers', '<h4><strong>ENGINEERED FOR SPEED. DESIGNED FOR COMFORT.</strong></h4>The veloToze <strong>AeroFlow Base Layer</strong> is the latest innovation in cycling apparel, built to help riders slice through the wind while staying cool and supported. Developed with input from World Tour athletes and tested in real-world race conditions, <strong>AeroFlow</strong> redefines what a base layer can do.
<strong>Aero-Optimized Fabric:</strong> Proprietary ribbed texture channels airflow across the torso, reducing drag and enhancing aerodynamic efficiency.
<strong>Moisture Management: </strong>Lightweight, breathable fibers wick sweat away instantly, keeping you dry even during high-intensity efforts.
<strong>Second-Skin Fit: </strong>Precision-cut panels and tailored construction hug the body for maximum comfort without bunching or restriction.
<strong>Temperature Regulation: </strong>Designed to stabilize core temperature, whether you’re climbing under the sun or sprinting in cooler conditions.The AeroFlow Base Layer helps you cut through the air while keeping you comfortable in the race. It’s a <strong>game-changer for cyclists aiming for peak performance</strong>, combining aerodynamic gains with all-day wearability.  
<strong>MATERIALS</strong>
94% Polyester, 6% Spandex <br>

 

<strong>CARE GUIDE</strong>• Machine wash cold with like colors.<br>• Hang dry, do not machine dry.<br>• Do not iron.<br>• Do not bleach.', array['velotoze-aeroflow-baselayer/1.webp', 'velotoze-aeroflow-baselayer/2.webp', 'velotoze-aeroflow-baselayer/3.webp', 'velotoze-aeroflow-baselayer/4.webp', 'velotoze-aeroflow-baselayer/5.webp']::text[], 'new', 4, '2026-03-06'::date, false, false),
  ('velotoze-cooling-vest', 'VeloToze Cooling Vest', 'velotoze', 'apparel', 'base-layers', '<p><strong>STAY COOL AND COMFORTABLE WITH THE VELOTOZE COOLING VEST</strong></p><p><br></p><p>Cycling in the heat or during intense indoor training sessions can be a real challenge. That''s why we''ve engineered the veloToze Cooling Vest to help you beat the heat and stay cooler for longer. Whether you''re hammering a Zwift race or braving scorching outdoor conditions, this vest is your ideal solution for staying refreshed and focused. </p><p><strong><br></strong></p><p><strong>Specially Placed Ice Pack Pockets: </strong>This vest features four strategically placed pockets with 4 specially crafted Cooling Packs placed close to your body. These Cooling Packs are engineered to last 45 minutes each, ensuring sustained cooling throughout your indoor training session, or race without interfering with your cycling motion.</p><p><strong><br></strong></p><p><strong>Breathable and Wicking Fabric:</strong> Crafted from a highly breathable and moisture-wicking fabric, this vest ensures that sweat is efficiently pulled away from your body, leaving you feeling fresh and dry.</p><p><strong><br></strong></p><p><strong>Snug Fit:</strong> The Cooling Vest zips on to provide a comfortable, snug fit. It feels like a second skin, allowing you to focus on your ride rather than discomfort or overheating.</p><p><strong><br></strong></p><p><strong>Maximum Ventilation:</strong> The full front zipper offers added versatility. You can fully unzip it while riding to enjoy maximum ventilation.</p><p>No matter where your cycling journey takes you, indoors or outdoors, the Cooling Vest is engineered to keep you cooler and more comfortable, even when the temperatures soar.</p><p><strong><br></strong></p><p><strong>INSTRUCTIONS</strong></p><ul>
<li><p>At least 4 hours before ride, lay Cooling Packs flat in freezer</p></li>
<li><p>Before beginning ride, place Cooling Packs in Cycling Vest pockets. Place 3 smaller Cooling Packs in lower back and under arm pockets. Place 1 larger Cooling Pack in upper back pocket.</p></li>
<li><p>Change out Cooling Packs while you ride if desired (additional Cooling Packs sold separately) </p></li>
</ul><p><strong><br></strong></p><p><strong>CYCLING VEST MATERIALS</strong></p><ul><li><p>Cycling Vest: 100% polyester</p></li></ul><p><strong><br></strong></p><p><strong>CYCLING VEST CARE INSTRUCTIONS</strong></p><ul>
<li><p>Machine wash cool on gentle cycle with like colors. Hang dry. </p></li>
<li><p>Do not bleach. Do not iron.</p></li>
</ul><p><strong><br></strong></p><p><strong>COOLING PACK CARE INSTRUCTIONS</strong></p><ul><li><p>Rinse cooling packs after use and lay flat in freezer</p></li></ul>', array['velotoze-cooling-vest/1.jpg', 'velotoze-cooling-vest/2.jpg', 'velotoze-cooling-vest/3.png', 'velotoze-cooling-vest/4.jpg', 'velotoze-cooling-vest/5.jpg']::text[], 'new', 3, '2025-05-14'::date, false, false),

  -- ---- apparel · bib-shorts ----
  ('castelli-competizione-2-bibshort-mens', 'Castelli Competizione 2 Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>Made to do everything right without overdoing anything.</p>

<p>PRODUCT FEATURES</p>
<p>KISS Air2 seat pad for all-day comfort</p>
<p>Affinity Pro Lycra® fabric on inside of leg for outstanding stretch and rebound</p>
<p>Vortex V2 textured fabric on legs for better aerodynamics</p>
<p>Raw-edge leg gripper with integrated silicone</p>
<p>Flat-lock stitching</p>
<p>UPF 50+</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>

Lightness 4/5
<ul>
<li>Weight:189<em> g</em>
</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F</li>
<li>Fit:Tailored</li>
</ul>

<p>MADE TO DO EVERYTHING RIGHT WITHOUT OVERDOING ANYTHING.</p>
We made this short to incorporate as much technology as possible from our top-of-the-line pro-level race short at a more accessible price. And although it''s certainly capable of weekend racing, it''s also a great comfort performance short even if you never pin on a number.
The majority of the Competizione 2 Bibshort features our Vortex textured fabric. We''ve used a wide, stretchy leg gripper with integrated silicone to ensure a comfortable, secure fit. The KISS Air2 seat pad has most of the comfort of our top seat pad but represents maximum value. We''ve given the bib straps an update: the back is in mesh for breathability, while the straps are a lightweight elastic and are comfortable for hours in the saddle.
The intangible part that you''ll appreciate most is our knack for building in perfect fit, thanks to the Castelli pattern engineering team. This is the short that brings the best of Castelli''s know-how in building comfort performance shorts into an accessible product for your cycling wardrobe.', array['castelli-competizione-2-bibshort-mens/1.webp', 'castelli-competizione-2-bibshort-mens/2.webp', 'castelli-competizione-2-bibshort-mens/3.webp', 'castelli-competizione-2-bibshort-mens/4.webp']::text[], 'new', 6, '2025-08-14'::date, false, false),
  ('castelli-endurance-3-bibshort-mens-1', 'Castelli Endurance 3 Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>Endurance-level comfort for every ride with Castelli''s most comfortable seat pad.</p>

<h3><strong>Product features</strong></h3>
<p><br><br></p>
<ul>
<li>Endurance Evolution fabric provides optimum muscle support and feels drier in nearly all conditions</li>
</ul>

<ul>
<li>Anatomic cut for perfect on-bike fit</li>
</ul>

<ul>
<li>Mesh bib straps and back to keep you cooler</li>
</ul>

<ul>
<li>Progetto X2 Air Seamless seat pad for even greater comfort and improved airflow</li>
</ul>

<ul>
<li>GIRO3 leg grippers lie flat</li>
</ul>
<p><br><br><br></p>
<ul>
<li>Weight: <strong>181gm</strong>
</li>
</ul>

<ul>
<li>Temperature: <strong>15°C - 35°C / 59°F - 95°F</strong>
</li>
</ul>

<ul>
<li>Fit: <strong>Tailored</strong>
</li>
</ul>
<p><br><br></p>
<p>The main story of this short is the use of our renowned top-of-the-line Progetto X2 Air Seamless seat pad in an otherwise traditional short, but in fact every little detail has been obsessed over to ensure your comfort on your next long endurance ride. A great pad is useless without great fit. The seams are placed around the hip area to create a perfect shape on the bike. The Endurance Evolution fabric has a soft hand while providing good compression and excellent moisture management. And it''s all held in place with the amazingly comfortable GIRO3 leg gripper. This short offers exceptional value and is ready to deliver lasting comfort on your longest rides.</p>', array['castelli-endurance-3-bibshort-mens-1/1.jpg', 'castelli-endurance-3-bibshort-mens-1/2.jpg', 'castelli-endurance-3-bibshort-mens-1/3.jpg', 'castelli-endurance-3-bibshort-mens-1/4.jpg', 'castelli-endurance-3-bibshort-mens-1/5.jpg']::text[], 'new', 5, '2024-11-27'::date, false, false),
  ('castelli-endurance-bibshort-womens-1', 'Castelli Endurance Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>Endurance-level comfort for every ride with Castelli''s most comfortable seat pad.</p> <p>The main story of this short is the use of our renowned top-of-the-line Progetto X2 Air Donna seamless seat pad in a mostly traditional short, but in fact every little detail has been obsessed over to ensure your comfort on your next long endurance ride. A great pad is useless without great fit. The seams are placed around the hip area to create a perfect shape on the bike. The Endurance Evolution fabric has a soft hand while providing good compression and excellent moisture management. And it''s all held in place with the amazingly comfortable GIRO3 leg gripper. On your long endurance rides you''ll especially appreciate Castelli''s drop-tail bib construction. The wider bib straps are free floating so you can cross them in front or back. They pull tight enough to keep your shorts in place, but when the need arises they stretch long enough that you can take a bathroom break without having to remove your jersey and bibs. This short offers exceptional value and is ready to deliver lasting comfort on your longest rides.</p> <h3><strong>Product features</strong></h3> <ul> <li>Endurance Evolution fabric provides optimum muscle support and feels drier in nearly all conditions</li> <li>Anatomic cut for perfect on-bike fit</li> <li>Bib straps can cross in front or back and are extra elastic, allowing short to be pulled down for pee stops without removing bibs</li> <li>Women’s-specific Progetto X2 Air Donna seamless seat pad for even greater comfort and improved airflow</li> <li>GIRO3 leg grippers lie flat</li> </ul> <ul> <li>Weight: <strong>200gm</strong>
</li> <li>Fit: <strong>Comfortable</strong>
</li> </ul>', array['castelli-endurance-bibshort-womens-1/1.jpg', 'castelli-endurance-bibshort-womens-1/2.jpg']::text[], 'new', 4, '2026-06-24'::date, false, false),
  ('castelli-entrata-2-bibshort-mens-1', 'Castelli Entrata 2 Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>To carry the scorpion logo, a bibshort needs to be amazing even if it''s "entry level." This short brings together quality fabrics, our KISS Air2 seat pad, and eight-panel construction with an overall focus on comfort and durability.</p>

<h3><strong>Product features</strong></h3>
<p><br><br></p>
<ul>
<li>KISS Air2 seat pad for all-day comfort</li>
</ul>

<ul>
<li>Pro Dry matte Lycra® for good compression and moisture management</li>
</ul>

<ul>
<li>8-panel construction for perfect fit</li>
</ul>

<ul>
<li>Rear reflective panels on lower leg</li>
</ul>

<ul>
<li>GIRO3 engineered flat leg band</li>
</ul>

<ul>
<li>Mesh straps for comfort and breathability</li>
</ul>
<p><br><br><br></p>
<ul>
<li>Weight: <strong>173gm</strong>
</li>
</ul>

<ul>
<li>Temperature: <strong>15°C - 35°C / 59°F - 95°F</strong>
</li>
</ul>

<ul>
<li>Fit: <strong>Regular</strong>
</li>
</ul>
<p><br><br></p>
<p>This short gives you every reason to step up to Castelli. We have innovation in our DNA. We''ve brought you most of the innovations in a cycling short over the years: the first Lycra® shorts on the market, the first minimalist and flat bib straps, and the first flat leg grippers. All these advances have become industry standards, and we keep pushing and innovating in our high-end shorts. The Entrata short is where all that knowledge and experience trickles down into a short that just plain works. The fabric is just the right weight with just the right stretch and with a matte finish that looks just right. The KISS Air2 seat pad is just right, as is the GIRO3 leg gripper. And the short fits just right because we obsess over the fit of every short we make. We wanted this short to be just right for many years to come, so we stitch on the logos and stitch in the reflective panels on the back. The Entrata short is just right for you.</p>', array['castelli-entrata-2-bibshort-mens-1/1.jpg', 'castelli-entrata-2-bibshort-mens-1/2.jpg', 'castelli-entrata-2-bibshort-mens-1/3.jpg', 'castelli-entrata-2-bibshort-mens-1/4.jpg', 'castelli-entrata-2-bibshort-mens-1/5.jpg']::text[], 'new', 6, '2024-04-10'::date, false, false),
  ('castelli-espresso-2-bibshort-mens', 'Castelli Espresso 2 Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>Designed to be favorite bibshort with both comfort and style. Revised &amp; Refined. 2.0.</p>

<p>This started with our favorite bibshort — the one we reach for every ride. But staying still isn’t in our nature. Driven by our obsession with performance, design, and innovation, we looked for every opportunity to refine. Subtle adjustments in fit, improved construction details, and fabric updates to our bib straps that push comfort and efficiency just that little bit further. Not a revolution, but a series of gains that add up on the road. This update also marks something bigger: the introduction of our new logo. A cleaner, more confident identity that reflects where we’re headed — without forgetting where we’ve come from. The result? The best bibshort we’ve ever made.</p>

<p>TECHNICAL FEATURES </p>

<p>Breathability 4/5</p>

<p>Lightness 4/5</p>

<ul>
<li>Weight: 211<em> g</em>
</li>
<li>Temperature: 15°C - 35°C / 59°F - 95°F</li>
<li>Fit: Tailored</li>
</ul>

<p>PRODUCT FEATURES</p>
<p>Castelli-engineered Espresso Doppio fabric for comfort and perfect fit</p>
<p>Progetto X2 Air Seamless seat pad for all-day comfort</p>
<p>Raw-cut leg endings with silicone grippers</p>
<p>Stretch-mesh bib straps for ventilation and comfort</p>
<p>Pocket on rear for added storage</p>

<p>PRODUCT CARE</p>
<p>Machine wash at 30 degrees celsius, tumble dry cool Do not bleach, do not iron, do not iron print, do not dry clean Wash similar colours together</p>', array['castelli-espresso-2-bibshort-mens/1.webp', 'castelli-espresso-2-bibshort-mens/2.webp', 'castelli-espresso-2-bibshort-mens/3.webp', 'castelli-espresso-2-bibshort-mens/4.webp', 'castelli-espresso-2-bibshort-mens/5.webp']::text[], 'new', 4, '2026-03-25'::date, false, false),
  ('castelli-espresso-2-w-dt-bibshort-womens', 'Castelli Espresso 2 W DT Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>Your favourite bibshort. Revised &amp; refined. 2.0</p><p><br></p><p>TECHNICAL FEATURES</p><p>Breathability 4/5</p><p>Lightness 4/5</p><ul>
<li>Weight:174<em> g</em>
</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F</li>
<li>Fit:Tailored</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p><br></p><p>Castelli-engineered Espresso Doppio fabric for comfort and perfect fit</p><p>Raw-cut leg endings with silicone grippers</p><p>Drop Tail stretch bib straps for comfort and easy nature breaks</p><p>Progetto X2 Air Seamless Donna seat pad for all-day comfort</p><p>Extended front and rear panels with folded lightweight mesh for smoother interface with jersey</p><p>Designed for improved comfort and coverage where bibshort and jersey meet</p><p><br></p><p>ESPRESSO 2 W DT BIBSHORT — REFINED BY RIDERS, PERFECTED BY CASTELLI</p>Our goal was clear: to create the most comfortable and functional bibshort on the market for female riders. No shortcuts, no compromises — just a deep focus on real performance for real women who ride. We started with what we already loved, then pushed every detail further. Improved fit through precise pattern work, refined bib construction for better support and easier wear. Alongside these updates, we introduced our new logo — a subtle but important step forward in our design evolution. Clean, modern, and made to move with you. This is the result of countless hours of testing, feedback, and fine-tuning. Built for comfort. Designed for performance. Made for women who ride hard.', array['castelli-espresso-2-w-dt-bibshort-womens/1.webp', 'castelli-espresso-2-w-dt-bibshort-womens/2.webp', 'castelli-espresso-2-w-dt-bibshort-womens/3.webp', 'castelli-espresso-2-w-dt-bibshort-womens/4.webp', 'castelli-espresso-2-w-dt-bibshort-womens/5.webp']::text[], 'new', 3, '2026-05-18'::date, false, false),
  ('castelli-espresso-bibshort-mens', 'Castelli Espresso Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>Your new favourite bibshort. Designed and engineered with an emphasis on comfort and performance, this short is the best short for most of your rides.</p>
<p>Product features:</p>
<ul>
<li>Castelli engineered Espresso Doppio fabric for comfort and a perfect fit</li>
<li>Raw-cut leg ending with silicone gripper</li>
<li>Stretch mesh bib straps for ventilation and comfort</li>
<li>Pocket on rear for added storage</li>
<li>Progetto X2 Air Seamless seat pad for all-day comfort</li>
<li>Reflective tabs for increased visibility</li>
</ul>
<p>Technical Features:</p>
<ul>
<li>Weight:192 g</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F</li>
<li>Fit:Tailored</li>
</ul>', array['castelli-espresso-bibshort-mens/1.jpg', 'castelli-espresso-bibshort-mens/2.jpg', 'castelli-espresso-bibshort-mens/3.jpg', 'castelli-espresso-bibshort-mens/4.jpg', 'castelli-espresso-bibshort-mens/5.jpg']::text[], 'new', 19, '2025-11-11'::date, false, false),
  ('castelli-espresso-w-dt-bibshort-womens', 'Castelli Espresso W DT Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>Your new favourite bibshort. Designed and engineered with an emphasis on comfort and performance, this short is the best short for most of your rides.</p>
<p>Product features</p>
<ul>
<li>Castelli engineered Espresso Doppio fabric for comfort and a perfect fit</li>
<li>Raw-cut leg ending with silicone gripper</li>
<li>Stretch mesh bib straps for ventilation and comfort</li>
<li>Pocket on rear for added storage</li>
<li>Progetto X2 Air Seamless seat pad for all-day comfort</li>
<li>Reflective tabs for increased visibility</li>
</ul>

<p><br></p>
<p>Technical Features </p>
<ul>
<li>Weight:201<em> g</em>
</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F
</li>
<li>
Fit:Tailored

<p><br></p>
</li>
</ul>', array['castelli-espresso-w-dt-bibshort-womens/1.jpg', 'castelli-espresso-w-dt-bibshort-womens/2.jpg', 'castelli-espresso-w-dt-bibshort-womens/3.jpg', 'castelli-espresso-w-dt-bibshort-womens/4.jpg', 'castelli-espresso-w-dt-bibshort-womens/5.jpg']::text[], 'new', 12, '2025-12-08'::date, false, false),
  ('castelli-free-aero-race-s-bibshort-mens', 'Castelli Free Aero Race S Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>Comfort and aerodynamics meet in the fastest, most comfortable Free Aero Race Bibshort to date.</p>

<p>PRODUCT FEATURES</p>
<p>Aero-optimized Forza2 Stretch fabric for maximum comfort and aerodynamic advantage</p>
<p>Aero-optimized fabric delivers 3% decrease in CdA</p>
<p>Lie-flat bib straps and a breathable mesh back keep you cooler</p>
<p>Silicone leg grippers to keep leg endings in place</p>
<p>Progetto X2 Air Seamless seat pad for comfort even on your longest rides</p>
<p>Back pocket for extra storage or race radio</p>
<p>Short fabric rated to 50+ UPF protection</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>

Lightness 4/5
<ul>
<li>Weight:196<em> g</em>
</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F</li>
<li>Fit:Race</li>
</ul>

<p>DEVELOPED TO MEET THE DEMANDS OF THE PERFORMANCE CYCLIST.</p>
From your local training route to the world''s toughest bike races, the Free Aero Race S Bibshort was developed to meet the demands of the performance cyclist.
When you swing a leg over a bike, the first thing you want out of your bibshorts is comfort. The Forza2 Stretch fabric molds to the body without constriction, allowing the fabric to move with every pedal stroke. The bib straps are kept lightweight and minimal while still being supportive, stretchy, and breathable to maintain a high level of comfort. The silicone grippers at the leg endings keep the short in place right where you want it. And, of course, we''ve used our Progetto X2 Air Seamless seat pad so you can stay comfortable even on the longest training days.
In the modern world of performance cycling, aerodynamics has quickly become one of the most important components. After countless hours in the wind tunnel, we''ve aero optimized the bibshort to give you a 3% decrease in CdA, making it the fastest Free Aero Race Bibshort we''ve ever created. This means every watt you produce can be used to make you go forward faster.', array['castelli-free-aero-race-s-bibshort-mens/1.jpg', 'castelli-free-aero-race-s-bibshort-mens/2.jpg', 'castelli-free-aero-race-s-bibshort-mens/3.jpg', 'castelli-free-aero-race-s-bibshort-mens/4.jpg', 'castelli-free-aero-race-s-bibshort-mens/5.jpg']::text[], 'new', 14, '2025-12-08'::date, false, false),
  ('castelli-free-aero-race-s-bibshort-womens', 'Castelli Free Aero Race S Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>Comfort and aerodynamics meet in the fastest, most comfortable Free Aero Race Bibshort to date.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 4/5</p><p>Lightness 4/5</p><ul>
<li>Weight:206<em> g</em>
</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F</li>
<li>Fit:Race</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Aero-optimized Forza2 Stretch fabric for maximum comfort and aerodynamic advantage</p><p>Aero-optimized fabric delivers 3% decrease in CdA</p><p>Drop Tail stretch bib straps for comfort and easy nature breaks</p><p>Silicone leg grippers to keep the leg endings in place</p><p>Progetto X2 Air Seamless Donna seat pad for comfort even on your longest rides</p><p>Back pocket for extra storage or race radio</p><p>Short fabric rated to 50+ UPF protection</p><p><br></p><p>DEVELOPED TO MEET THE DEMANDS OF THE PERFORMANCE CYCLIST.</p><p>From your local training route to the world''s toughest bike races, the Free Aero Race S W Bibshort was developed to meet the demands of the performance cyclist. When you swing a leg over a bike, the first thing you want out of your bibshorts is comfort. The Forza2 Stretch fabric molds to the body without constriction, allowing the fabric to move with every pedal stroke. The bib straps are kept lightweight and minimal while still being supportive, stretchy, and breathable to maintain a high level of comfort. The silicone grippers at the leg endings keep the short in place right where you want it. And, of course, we''ve used our Progetto X2 Air Seamless Donna seat pad so you can stay comfortable even on the longest training days. In the modern world of performance cycling, aerodynamics has quickly become one of the most important components. After countless hours in the wind tunnel, we''ve aero optimized the bibshort to give you a 3% decrease in CdA, making it the fastest Free Aero Race Bibshort we''ve ever created. This means every watt you produce can be used to make you go forward faster.</p>', array['castelli-free-aero-race-s-bibshort-womens/1.jpg', 'castelli-free-aero-race-s-bibshort-womens/2.jpg', 'castelli-free-aero-race-s-bibshort-womens/3.jpg', 'castelli-free-aero-race-s-bibshort-womens/4.jpg', 'castelli-free-aero-race-s-bibshort-womens/5.jpg']::text[], 'new', 10, '2025-12-08'::date, false, false),
  ('castelli-free-aero-rc-bibshort-mens', 'Castelli Free Aero RC Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>The perfect mix of comfort and speed. Engineered for top-level racing, which also makes it supremely comfortable for every ride and rider.</p>

<p><strong>INNOVATIVE EVOLUTION</strong> The Free Aero RC Bibshort is our top race short, which also means that it''s insanely comfortable even if you never pin on a number. It''s fair to say that we''ve been working on this short for the past 15 years. That''s how long it''s been since the original Free Aero Race Bibshort was first introduced, initially as our top-of-the-line race short. Since then it has won three Tours de France, three editions of the Giro d''Italia, one Vuelta and San Remo, but it also became the best-selling product in the history of Castelli because, simply put, this is the short that does everything well. The concept is quite simple: start with the best pad we know how to make, surround it with a supportive short with good muscle compression, and then remove everything else that''s not absolutely necessary. You feel Free thanks to the reduced number of panels and the reduced number of seams. In fact, the short portion has just 5 panels compared to 10 in the previous generation. You feel Free because of further refinements to the Progetto X2 Air seamless seat pad. The two densities of foam plus the gel pads provide progressive damping, while the separate Skin Care Layer is soft and stretchy to move with your skin. You feel Free thanks to the most minimal bibs you''ve ever seen in a short, including open-weave straps for maximum airflow. But we reinforced the yoke so the straps stay in place and made the mesh back narrow for coverage that is minimal yet just enough to hold the shorts in place. And the bib elegantly frames a convenient pocket at the center back. You feel Free because this is the first high-end short that doesn''t need any sort of gripper or elastic at the end of the leg to keep the leg in place. Getting this right meant 28 prototypes and our most extensive test program ever, and it results in the most comfortable leg ending we''ve ever made. The Forza 2 fabric has 32% Lycra® with a high modulus for exceptional muscle support and just the right amount of compression. There''s reflective piping on the back. And all logos are either stitched or embossed for durability.</p>

<p><strong>Product features</strong></p>
<p><br><br></p>
<ul>
<li>High-compression 215 g Forza 2 fabric with 32% Lycra® content provides exceptional muscle support and compression</li>
</ul>

<ul>
<li>Progetto X2 Air seamless seat pad is soft against the skin but well padded for long-distance comfort</li>
</ul>

<ul>
<li>Minimalist bib straps allow maximum airflow, while a reinforced yoke keeps the straps flat over the shoulders</li>
</ul>

<ul>
<li>Rear mesh pocket</li>
</ul>

<ul>
<li>5-panel construction for reduced seams and less chafing</li>
</ul>

<ul>
<li>Stitched scorpion logo patch and embossed Castelli wordmark for durability</li>
</ul>

<ul>
<li>Reflective piping on back of legs</li>
</ul>

<ul>
<li>Raw-cut edge at waist for extra stretch and comfort</li>
</ul>

<ul>
<li>Raw-cut leg ending engineered to stay put without silicone grippers</li>
</ul>

<ul>
<li>Weight: 197gm
</li>
</ul>

<ul>
<li>Temperature: 15°C - 35°C / 59°F - 95°F
</li>
</ul>

<ul>
<li>Fit: Aero
</li>
</ul>', array['castelli-free-aero-rc-bibshort-mens/1.jpg', 'castelli-free-aero-rc-bibshort-mens/2.jpg', 'castelli-free-aero-rc-bibshort-mens/3.jpg', 'castelli-free-aero-rc-bibshort-mens/4.jpg', 'castelli-free-aero-rc-bibshort-mens/5.jpg']::text[], 'new', 2, '2023-01-23'::date, false, false),
  ('castelli-free-aero-rc-bibshort-womens-1', 'Castelli Free Aero RC Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>The perfect mix of comfort and speed. Engineered for top-level racing, which also makes it supremely comfortable for every ride and rider.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>High-compression 215 g Forza 2 fabric with 32% Lycra® content provides exceptional muscle support and compression</li>
<br><li>Women’s-specific Progetto X2 Air Donna seamless seat pad is soft against the skin but well padded for long-distance comfort</li>
<br><li>Minimalist bib straps allow maximum airflow, while a reinforced yoke keeps the straps flat over the shoulders</li>
<br><li>Rear mesh pocket</li>
<br><li>5-panel construction for reduced seams and less chafing</li>
<br><li>Stitched scorpion logo patch and embossed Castelli wordmark for durability</li>
<br><li>Reflective piping on back of legs</li>
<br><li>Raw-cut edge at waist for extra stretch and comfort</li>
<br><li>Raw-cut leg ending engineered to stay put without silicone grippers</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>193gm</strong>
</li>
<br><li>Temperature: <strong>15°C - 35°C</strong>
</li>
<br><li>Fit: <strong>Aero</strong>
</li>
<br>
</ul><br><p><strong>INNOVATIVE EVOLUTION</strong> The Free Aero RC Bibshort is our top race short, which also means that it''s insanely comfortable even if you never pin on a number. It''s fair to say that we''ve been working on this short for the past 15 years. That''s how long it''s been since the original Free Aero Race Bibshort was first introduced, initially as our top-of-the-line race short. The various versions of the Free have dressed all our pro women''s teams over this time, and it also became the best-selling women''s short in the history of Castelli because, simply put, this is the short that does everything well. The concept is quite simple: start with the best pad we know how to make, surround it with a supportive short with good muscle compression, and then remove everything else that''s not absolutely necessary. You feel Free thanks to the reduced number of panels and the reduced number of seams. In fact, the short portion has just 5 panels compared to 10 in the previous generation. You feel Free because of further refinements to the Progetto X2 Air seamless seat pad. The two densities of foam plus the gel pads provide progressive damping, while the separate Skin Care Layer is soft and stretchy to move with your skin. You feel Free thanks to the most minimal bibs you''ve ever seen in a short, including open-weave straps for maximum airflow. But we reinforced the yoke so the straps stay in place and made the mesh back narrow for coverage that is minimal yet just enough to hold the shorts in place. And the bib elegantly frames a convenient pocket at the center back. You feel Free because this is the first high-end short that doesn''t need any sort of gripper or elastic at the end of the leg to keep the leg in place. Getting this right meant 28 prototypes and our most extensive test program ever, and it results in the most comfortable leg ending we''ve ever made. The Forza 2 fabric has 32% Lycra® with a high modulus for exceptional muscle support and just the right amount of compression. There''s reflective piping on the back. And all logos are either stitched or embossed for durability.</p>', array['castelli-free-aero-rc-bibshort-womens-1/1.png', 'castelli-free-aero-rc-bibshort-womens-1/2.png', 'castelli-free-aero-rc-bibshort-womens-1/3.jpg', 'castelli-free-aero-rc-bibshort-womens-1/4.jpg', 'castelli-free-aero-rc-bibshort-womens-1/5.png']::text[], 'new', 0, '2024-08-09'::date, false, false),
  ('castelli-free-unlimited-bibshort-womens-1', 'Castelli Free Unlimited Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>Comfort, performance, protection, and storage. Designed for gravel but equally at home on adventure or endurance rides, or if you just love pockets. Drop-tail bib straps.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>High-compression 215 g Forza 2 fabric with 32% Lycra® content provides exceptional muscle support and compression</li>
<br><li>Dyneema® side panels to protect in the event of a tumble, 15x stronger than steel</li>
<br><li>Women''s-specific Progetto X2 Air Donna seamless seat pad is soft against the skin but well padded for long-distance comfort</li>
<br><li>Drop-tail bib straps can cross in front or back and allow pee breaks without removing bibs</li>
<br><li>Large compression pocket on each leg</li>
<br><li>Raw-cut edge at waist for extra stretch and comfort</li>
<br><li>Raw-cut leg ending engineered to stay put without silicone grippers</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>193gm</strong>
</li>
<br><li>Temperature: <strong>15°C - 35°C</strong>
</li>
<br><li>Fit: <strong>Performance</strong>
</li>
<br>
</ul><br><p>This is the no-compromise gravel or endurance MTB short. It combines the best features of Castelli''s premier race short, the Free Aero RC Bibshort, with Dyneema® side panels for protection in case of a fall, and side pockets for storage. It''s made first and foremost for riding comfort. It uses the top-of-the-line Progetto X2 Air Donna seamless seat pad that provides progressive damping and the softest, stretchiest skin contact layer available. The Forza 2 fabric provides just the right level of compression and muscle support for your longest rides. The bib straps are Castelli''s drop-tail design, stretchy enough to be pulled down for a pee break while providing enough pull to keep your shorts in place. They''re free floating so you can choose to cross them in front or back. At the leg ending there''s a raw-cut edge that you''ll hardly feel, and the combination of the Forza 2 fabric with just the right length and circumference means that no silicone gripper is required. It''s a big leap forward in terms of comfort. The two large leg pockets are lined with an extremely light and fast-wicking fabric so you won''t notice the extra layer, yet they hold a surprising amount of gear, allowing you to forgo a traditional pocketed cycling jersey. The Unlimited short really does know no limits.</p>', array['castelli-free-unlimited-bibshort-womens-1/1.jpg', 'castelli-free-unlimited-bibshort-womens-1/2.jpg', 'castelli-free-unlimited-bibshort-womens-1/3.jpg', 'castelli-free-unlimited-bibshort-womens-1/4.jpg', 'castelli-free-unlimited-bibshort-womens-1/5.jpg']::text[], 'new', 2, '2024-08-09'::date, false, false),
  ('castelli-omloop-nano-bibshort-womens-1', 'Castelli Omloop Nano Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>Warmer shorts with Nano Flex protection are great for cool fall days, or together with knee or leg warmers for colder conditions. The minimalist seaming and logoing make this short look like it means business.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>New Nano Flex 3G fabric is exceptionally warm and soft yet with even better rain protection</li>
<br><li>Reduced seaming for improved comfort and fit</li>
<br><li>Mesh bib straps don''t hold moisture</li>
<br><li>KISS Air2 Donna seat pad for long-distance comfort</li>
<br><li>Embossed logos for durability</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>4/5</strong>
</li>
<br><li>Waterproofness: <strong>3/5</strong>
</li>
<br><li>Windproofness: <strong>3/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>216gm</strong>
</li>
<br><li>Temperature: <strong>14°C - 20°C / 57°F - 68°F</strong>
</li>
<br><li>Fit: <strong>Race</strong>
</li>
<br>
</ul>', array['castelli-omloop-nano-bibshort-womens-1/1.jpg', 'castelli-omloop-nano-bibshort-womens-1/2.jpg', 'castelli-omloop-nano-bibshort-womens-1/3.jpg', 'castelli-omloop-nano-bibshort-womens-1/4.jpg', 'castelli-omloop-nano-bibshort-womens-1/5.jpg']::text[], 'new', 0, '2024-08-09'::date, false, false),
  ('castelli-prima-2-bibshort-womens', 'Castelli Prima 2 Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>Comfortable so all you need to do is enjoy the ride.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 4/5</p><p>Lightness 4/5 </p><ul>
<li>Weight:174<em> g</em>
</li>
<li>Temperature:16°C - 35°C / 60°F - 95°F</li>
<li>Fit:Regular</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Pro2 Dry Soft fabric feels amazing on the skin and supremely comfortable</p><p>Anatomic construction for perfect fit</p><p>Lie-flat leg back with silicone gripper</p><p>Soft, stretchy elastic bib straps with drop-tail design for easy nature breaks</p><p>KISS Air 2 Donna seat pad</p><p>Color inserts to match your favorite jersey</p><p>Reflective tabs for safety</p><p><br></p><p>COMFORTABLE SO ALL YOU NEED TO DO IS ENJOY THE RIDE.</p>This short was made with you in mind first. The fabric is soft and stretchy and feels amazing on the skin while giving you support where you need it. The lie-flat grippers keep the shorts in place without squeezing your legs. Our drop-tail bib strap design, which allows for easier nature breaks, is made possible with the stretchy and soft elastic bib straps that offer maximal stretch but also return to keep your shorts in place when you''re on the bike. The KISS Air 2 Donna seat pad is made to keep you comfortable for hours in the saddle. All this is done to make sure you can enjoy your ride in comfort.', array['castelli-prima-2-bibshort-womens/1.webp', 'castelli-prima-2-bibshort-womens/2.webp', 'castelli-prima-2-bibshort-womens/3.webp', 'castelli-prima-2-bibshort-womens/4.webp', 'castelli-prima-2-bibshort-womens/5.webp']::text[], 'new', 6, '2026-05-18'::date, false, false),
  ('castelli-unlimited-2-cargo-bibshort-mens', 'Castelli Unlimited 2 Cargo Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>Equally at home on tarmac or gravel, the Unlimited Cargo Bibshort knows no limits. This three-pocket short is ready for your next adventure.</p><p><br></p><p>Long-distance comfort, all-surface durability, and lots of carrying capacity — this is the story of the Unlimited 2 Cargo Bibshort. With the KISS Air2 seat pad, it''s made for comfort in the saddle. Then we added pockets. On each leg you have a cargo pocket that can expand to hold a lot of gear, yet it compresses to prevent your stuff from bouncing around. Perfect for gravel rides, but also a great choice for the increasing number of riders who want more pockets for their road rides.</p><p><br></p><p>TECHNICAL FEATURES </p><ul>
<li>Weight: 187<em> g</em>
</li>
<li>Temperature: 15°C - 35°C / 59°F - 95°F</li>
<li>Fit: Tailored</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Affinity Pro fabric for outstanding stretch and rebound</p><p>Lightweight minimalist bib straps to minimize weight and keep you cool</p><p>Silicone leg grippers to keep leg endings in place</p><p>KISS Air2 seat pad for long-distance comfort</p><p>Mesh side pockets with elastic closure</p><p>Back pocket for extra storage</p><p><br></p><p>PRODUCT CARE</p><p>Machine wash at 30 degrees celsius, tumble dry cool Do not bleach, do not iron, do not iron print, do not dry clean Wash similar colours together</p>', array['castelli-unlimited-2-cargo-bibshort-mens/1.webp', 'castelli-unlimited-2-cargo-bibshort-mens/2.webp']::text[], 'new', 5, '2026-03-25'::date, false, false),
  ('castelli-unlimited-cargo-bibshort-mens-1', 'Castelli Unlimited Cargo Bibshort Men''s', 'castelli', 'apparel', 'bib-shorts', '<p>Equally at home on tarmac or gravel, the Unlimited Cargo Bibshort knows no limits. This four-pocket short is ready for your next adventure.</p>
<p>Long-distance comfort, all-surface durability, and lots of carrying capacity is the story of the Unlimited Cargo Bibshort. With the Affinity Pro fabric and KISS Air2 seat pad, it''s made for comfort in the saddle. Then we added pockets. Four of them, in fact. On each leg you have a cargo pocket that can expand to hold a lot of gear, yet it compresses to prevent your stuff from bouncing around. The side pockets have a flap over the top to keep stuff from falling out. The GIRO4 grippers finish things off, making this a comfortable and useful piece of kit for your next ride. Perfect for gravel rides, but also a great choice for the increasing number of riders who want more pockets for their road rides.</p>
<h3><strong>Product features</strong></h3>
<ul>
<li>Made for fast riding on unlimited terrain</li>
<li>Affinity Pro Lycra® fabric on inside of leg for outstanding stretch and rebound</li>
<li>2 mesh rear pockets built into mesh bib straps</li>
<li>2 cargo-style side pockets with flap over top to keep stuff from falling out</li>
<li>KISS Air2 seat pad for long-distance comfort</li>
<li>GIRO4 leg grippers</li>
</ul>
<ul>
<li>Weight: <strong>237gm</strong>
</li>
<li>Temperature: <strong>15°C - 35°C</strong>
</li>
<li>Fit: <strong>Comfortable</strong>
</li>
</ul>', array['castelli-unlimited-cargo-bibshort-mens-1/1.jpg', 'castelli-unlimited-cargo-bibshort-mens-1/2.jpg', 'castelli-unlimited-cargo-bibshort-mens-1/3.jpg', 'castelli-unlimited-cargo-bibshort-mens-1/4.jpg', 'castelli-unlimited-cargo-bibshort-mens-1/5.jpg']::text[], 'new', 3, '2025-09-01'::date, false, false),
  ('castelli-unlimited-cargo-bibshort-womens-1', 'Castelli Unlimited Cargo Bibshort Women''s', 'castelli', 'apparel', 'bib-shorts', '<p>Equally at home on tarmac or gravel, the Unlimited Cargo Bibshort knows no limits. This cargo-pocket short is ready for your next adventure.</p> <p>Long-distance comfort, all-surface durability, and lots of carrying capacity is the story of the Unlimited Cargo Bibshort. With the Affinity Pro fabric and women''s-specific KISS Air2 Donna seat pad, it''s made for comfort in the saddle. Our drop-tail bib construction allows for convenient nature breaks, and the cargo-style side pockets have a flap over the top to keep stuff from falling out. The GIRO4 grippers finish things off, making this a comfortable and useful piece of kit for your next ride. Perfect for gravel rides, but also a great choice for the increasing number of riders who want more pockets for their road rides.</p> <h3><strong>Product features</strong></h3> <ul> <li>Made for fast riding on unlimited terrain</li> <li>Affinity Pro Lycra® fabric on inside of leg for outstanding stretch and rebound</li> <li>Drop-tail bib construction for more convenient nature breaks</li> <li>2 cargo-style side pockets with flap over top to keep stuff from falling out</li> <li>KISS Air2 Donna seat pad for long-distance comfort</li> <li>GIRO4 leg grippers</li> </ul> <ul> <li>Weight: <strong>230gm</strong>
</li> <li>Temperature: <strong>15°C - 35°C</strong>
</li> <li>Fit: <strong>Comfortable</strong>
</li> </ul>', array['castelli-unlimited-cargo-bibshort-womens-1/1.jpg', 'castelli-unlimited-cargo-bibshort-womens-1/2.jpg', 'castelli-unlimited-cargo-bibshort-womens-1/3.jpg', 'castelli-unlimited-cargo-bibshort-womens-1/4.jpg', 'castelli-unlimited-cargo-bibshort-womens-1/5.jpg']::text[], 'new', 2, '2025-12-08'::date, false, false),
  ('mens-prime-bib-shorts', 'Men''s Prime Bib Shorts', 'specialized', 'apparel', 'bib-shorts', '<p>The perfect apparel for the perfect ride, that''s what our Prime apparel is all about. The best fabrics, constructions, and technologies go into these pieces, and the Men''s Prime Bib Shorts are no exception. Starting with the uppers, the open suspender design keeps the bibs right where you want them, without constricting any upper body movements. The suspender fabric is also extremely soft and plush, eliminating any shoulder discomfort or irritation. The pre-molded, triple-density foam Body Geometry Contour 3D Chamois is contoured to perfectly match the curvature of your body, all while being soft and supportive in all the right places. With the Prime Bib Shorts, you''re sure to embrace the "chamois time is training time" motto as they''re so comfortable, you won''t want to take them off.</p>', array['mens-prime-bib-shorts/1.jpg', 'mens-prime-bib-shorts/2.jpg', 'mens-prime-bib-shorts/3.jpg', 'mens-prime-bib-shorts/4.jpg', 'mens-prime-bib-shorts/5.jpg']::text[], 'new', 0, '2024-08-06'::date, false, false),
  ('mens-specialized-foundation-bib-shorts', 'Men''s Specialized Foundation Bib Shorts', 'specialized', 'apparel', 'bib-shorts', '<p>Find your perfect fit with the Men''s Foundation Bib Shorts—designed for riders of every shape, size, and style. These bibs are all about effortless comfort, with high-stretch fabric and a low-compression fit that moves with you, not against you. Plush elastic suspenders and a lightweight back panel keep things soft and breathable, so you can focus on the road, not your gear. And thanks to elasticated cuffs with silicone grippers, you’ll never have to worry about ride-up or distractions. The advanced Single Density Body Geometry 3D Chamois takes comfort to the next level, delivering cushioning and support exactly where you need it. Plus, the bib shorts are made from 80% recycled nylon and 20% recycled elastane, letting you ride comfortably while treading lightly on the planet. No more second-guessing your gear—these bibs make every ride better, whether you’re going the distance or keeping it casual. The Men''s Foundation Bib Shorts are here to prove that comfort is for every body.</p>', array['mens-specialized-foundation-bib-shorts/1.jpg', 'mens-specialized-foundation-bib-shorts/2.jpg', 'mens-specialized-foundation-bib-shorts/3.jpg', 'mens-specialized-foundation-bib-shorts/4.jpg', 'mens-specialized-foundation-bib-shorts/5.jpg']::text[], 'new', 4, '2025-08-26'::date, false, false),
  ('red-bull-bora-hansgrohe-race-bib-short', 'Red Bull - BORA - hansgrohe Race Bib Short', 'specialized', 'apparel', 'bib-shorts', '<p>Ride like the pros with the Red Bull - BORA - hansgrohe Race Bib Short, designed to World Tour specifications. Four-way stretch fabric wicks sweat, while breathable suspenders ensure a secure fit. Raw-cut leg openings and a high-compression fit support muscles and reduce fatigue. Featuring the Triple Density Body Geometry Chamois, these bibs deliver pro-level comfort and performance for every ride.</p>', array['red-bull-bora-hansgrohe-race-bib-short/1.jpg', 'red-bull-bora-hansgrohe-race-bib-short/2.jpg', 'red-bull-bora-hansgrohe-race-bib-short/3.jpg', 'red-bull-bora-hansgrohe-race-bib-short/4.jpg', 'red-bull-bora-hansgrohe-race-bib-short/5.jpg']::text[], 'new', 3, '2026-01-09'::date, false, false),
  ('sportfulclassicbibshort', 'Sportful Classic Bib Short', 'sportful', 'apparel', 'bib-shorts', '<p><strong>Sportful Classic Bibshort</strong></p>
<p>The Sportful Classic Bibshort combines comfort, support, and value in a versatile design inspired by Sportful’s pro-level models. Built for riders who want performance without compromise, it delivers a reliable fit and all-day comfort, whether you’re training or tackling longer rides.</p>
<h3>Key Features</h3>
<ul>
<li>
<p><strong>Supportive Compression</strong> – High-quality leg fabric provides muscle support and reduces fatigue.</p>
</li>
<li>
<p><strong>Smooth &amp; Aerodynamic</strong> – Flat-lock seams positioned on the back of the legs reduce friction and enhance aerodynamics.</p>
</li>
<li>
<p><strong>Secure Fit</strong> – Laser-cut leg bands with silicone grippers hold shorts in place without restricting movement.</p>
</li>
<li>
<p><strong>Ride-Ready Comfort</strong> – BodyFit Pro seat pad balances cushioning and freedom of movement, with excellent moisture management.</p>
</li>
<li>
<p><strong>Added Safety</strong> – Reflective detailing improves visibility in low-light conditions.</p>
</li>
</ul>
<p><strong>Ideal for:</strong> intermediate cyclists, advanced riders on medium-length training rides, or anyone seeking a high-value bibshort with pro-level comfort.</p>', array['sportfulclassicbibshort/1.jpg']::text[], 'new', 3, '2021-08-19'::date, false, false),
  ('sportfullimitedbibshort', 'Sportful Limited Bib Short', 'sportful', 'apparel', 'bib-shorts', '<h3></h3>
<p><strong>Description:</strong></p>
<p>The Pros choice for better race performance</p>
<p>The race short par excellence. It''s not easy to combine maximum freedom of movement and extreme comfort for long hours in the saddle. But with the TC Pro seat pad, the AeroFlow fabric and many tricks learned over the years in the pro cycling world, this short has succeeded.</p>
<p>The top racing short in the Sportful road line. Tried, tested, and developed with the pros of Team BORA-hansgrohe, this is the standard short for the team throughout the season. It’s the most used version, on which we’ve based the Air, for hot days, and the Shield, the protective version in the event of a fall.</p>
<p>The LTD Bibshort is built around the TC Pro seat pad, which ensures sufficient comfort even in the longest races such as Milan–San Remo, and allows maximum freedom of movement in any situation, including mass sprints (yes, sprinters are the most demanding in terms of freedom of movement).</p>
<p>The construction of the legs in AeroFlow gives the right degree of compression and stretch for comfort and adherence, and the leg endings are in elastic without seams. The real secret of this short is the flat-lock seams and their positioning: we’ve reduced them to a minimum and inserted them in places where friction is minimal. No irritation or hindrance during your maximum effort.</p>
<p><strong>WHO IS IT FOR?</strong></p>
<p>For those who climb on the saddle ready for a challenge and competition and who want a short for their granfondos, their hardest training sessions, and their everyday contests with their riding partners.</p>
<p><strong>WHY YOU WILL LOVE IT?</strong></p>
<p>Road racing short. Minimal bulk, racing structure and cut, and a seat pad that ensures comfort and freedom of movement even in the longest races.</p>', array['sportfullimitedbibshort/1.webp']::text[], 'new', 1, '2021-08-19'::date, false, false),
  ('sportfulsupergiarabibshorts', 'Sportful Supergiara Bib Shorts', 'sportful', 'apparel', 'bib-shorts', '<p><strong>Description:</strong></p>
<p>A short specifically designed for use with a gravel bike: a special pad and three mesh pockets to increase the cargo capacity. Whether you want to tackle Dirty Kanza or a gravel experience of many hours (or days), you won''t be able to do without it.<br><br>The feedback we receive on our top-of-the-line gravel short is, in most cases, quite direct and positive. Those who have tried it have fallen in love with it for a number of reasons that make it our absolute favorite product for gravel races or long-distance adventures. Let’s start with the things you’ll notice immediately: two back pockets and a mesh side pocket on the left leg. We designed them because we know how important it is to have plenty of space on these occasions. Energy bars, bananas, knives, lighters, gloves, arm warmers — in recent years we’ve seen our customers put pretty much everything in those pockets!<br>Next up, the fit: it’s a garment with a rather race-oriented approach. The first time you put it on, it will seem quite compressive due to its structure and the very important upper part that will help you on longer rides. Once you’re on the bike, though, you won’t even notice it this is the strong point of this garment. A race fit offering almost “tourist-level” comfort.<br>The seat pad is our DMS pad, designed specifically for gravel, which combines different density levels with a smaller shape than other pads. We’ve placed and sewn it in a different position than what we use for our road shorts, to perfectly correspond to the position of the body — which is different on a gravel bike — and to the necessary movement on the roughest roads.<br>And for those who also ride at night, there are, of course, reflective details on the sides of the legs, for maximum visibility.<br><br>WHO IS IT FOR?<br>For those who like to push their limits on gravel. For those who spend many hours in the saddle or participate in gravel races and are looking for the best ally able to provide comfort, performance, visibility, and additional pocket capacity.</p>', array['sportfulsupergiarabibshorts/1.png', 'sportfulsupergiarabibshorts/2.jpg', 'sportfulsupergiarabibshorts/3.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('womens-prime-bib-shorts-1', 'Women''s Prime Bib Shorts', 'specialized', 'apparel', 'bib-shorts', '<p>Ride longer, push harder, and stay focused with the Women''s Prime Bib Shorts. Redesigned for 2025, they combine moisture-wicking fabric to keep you cool, raw-cut suspenders for maximum airflow, and elasticated cuffs that stay put no matter how hard you go. The mid-compression fit offers just the right support, while the Triple Density Body Geometry Chamois keeps you comfy for every epic mile. Your new favorite bibs for every big ride.</p>', array['womens-prime-bib-shorts-1/1.webp', 'womens-prime-bib-shorts-1/2.webp']::text[], 'new', 2, '2025-09-04'::date, false, false),
  ('womens-specialized-foundation-bib-shorts', 'Women''s Specialized Foundation Bib Shorts', 'specialized', 'apparel', 'bib-shorts', '<p>Elevate your ride to unmatched comfort for every rider with our Specialized Foundation Bib Shorts. The high-stretch fabric offers a low-compression fit, combining comfort and support seamlessly. Plush elastic suspenders, along with a lightweight back panel, ensure a soft feel against your skin while aiding temperature control. The elasticated cuff with silicone gripper provides a gentle, secure hold on your legs, preventing ride-up and distractions. Designed with your ultimate comfort in mind, these bib shorts feature our advanced Single Density Body Geometry 3D Chamois for unparalleled cushioning. Plus, our commitment to sustainability shines through with the fabric composition, made from 80% recycled nylon and 20% recycled elastane, ensuring you not only ride in comfort but also with a conscience. Choosing the perfect pair of bib shorts just got easier. Experience the ride of a lifetime with our Specialized Foundation Bib Shorts.</p>', array['womens-specialized-foundation-bib-shorts/1.jpg', 'womens-specialized-foundation-bib-shorts/2.jpg', 'womens-specialized-foundation-bib-shorts/3.jpg', 'womens-specialized-foundation-bib-shorts/4.jpg', 'womens-specialized-foundation-bib-shorts/5.jpg']::text[], 'new', 0, '2025-10-30'::date, false, false),

  -- ---- apparel · bib-tights ----
  ('castelli-entrata-bibtight-mens-1', 'Castelli Entrata Bibtight Men''s', 'castelli', 'apparel', 'bib-tights', '<p>Less is more is the concept behind this tight. With quality fabrics, a soft seat pad and reduced seam patterning, this tight simply keeps you warm and comfortable on all but the coldest days.</p>
<p>The Entrata Bibtight reflects the same obsessive drive for function, comfort and performance seen in all our tights, combined with fabrics and components that were top of the line a few years ago. Our Thermoflex fabric was considered a breakthrough, the best you could get, until a decade ago when we developed Nano Flex and added water repellency. If you don''t ride in cold, wet conditions you''ll appreciate the luxurious warmth and stretch of this fabric. The tight has minimal seams for comfort, and our KISS Air2 seat pad features generous padding and quite possibly the softest surface fabric in the business. It''s everything you need to comfortably enjoy dry winter rides.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Thermoflex fabric for warmth and comfort</li>
<li>KISS Air2 seat pad is so good it''s the choice of some of our pro riders</li>
<li>Mesh bib straps</li>
<li>Ankle zippers for easy on/off</li>
<li>Reflective logo below knee</li>
<li>Reflective flap over ankle zipper for extra visibility</li>
<li>Weight: 262gm
</li>
<li>Temperature: 6°C - 14°C / 43°F - 57°F
</li>
<li>Fit: Comfortable
 
</li>
</ul>', array['castelli-entrata-bibtight-mens-1/1.png', 'castelli-entrata-bibtight-mens-1/2.png', 'castelli-entrata-bibtight-mens-1/3.png', 'castelli-entrata-bibtight-mens-1/4.png']::text[], 'new', 2, '2026-04-24'::date, false, false),
  ('castelli-entrata-bibtight-womens', 'Castelli Entrata Bibtight Women''s', 'castelli', 'apparel', 'bib-tights', '<p>"Less is more" is the concept behind this tight. With quality fabrics, a soft seat pad, and reduced seam patterning, this tight simply keeps you warm and comfortable on all but the coldest days.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 1/5</p><p>Windproofness 3/5</p><p>Breathability 3/5</p><p>Lightness 3/5</p><ul>
<li>Weight:252<em> g</em>
</li>
<li>Temperature:6°C - 14°C / 43°F - 57°F</li>
<li>Fit:Regular</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Thermoflex fabric for warmth and comfort</p><p>KISS Air2 Donna seat pad gives great cushioning without excessive bulk</p><p>Mesh bib straps</p><p>Ankle zippers for easy on/off</p><p>Reflective panel below knee</p><p><br></p><p>The Entrata Bibtight reflects the same obsessive drive for function, comfort, and performance seen in all our tights, combined with fabrics and components that were top of the line a few years ago. Our Thermoflex fabric was considered a breakthrough, the best you could get, until a decade ago when we developed Nano Flex and added water repellency. If you don''t ride in cold, wet conditions you''ll appreciate the luxurious warmth and stretch of this fabric. The tight has minimal seams for comfort, and our KISS Air2 Donna seat pad features generous padding and quite possibly the softest surface fabric in the business. It''s everything you need to comfortably enjoy dry winter rides.</p>', array['castelli-entrata-bibtight-womens/1.webp', 'castelli-entrata-bibtight-womens/2.webp', 'castelli-entrata-bibtight-womens/3.webp', 'castelli-entrata-bibtight-womens/4.webp', 'castelli-entrata-bibtight-womens/5.webp']::text[], 'new', 2, '2026-04-20'::date, false, false),
  ('castelli-entrata-tight-womens', 'Castelli Entrata Tight Women''s', 'castelli', 'apparel', 'bib-tights', '<p>For the rider who doesn''t want bib straps, here''s the performance waist tight. With quality fabrics, a soft seat pad, and reduced seam patterning, this tight simply keeps you warm and comfortable on all but the coldest days.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 1/5</p><p>Windproofness 3/5</p><p>Breathability 3/5</p><p>Lightness 3/5</p><p><br></p><ul>
<li>Weight:245<em> g</em>
</li>
<li>Temperature:6°C - 12°C / 43°F - 54°F
</li>
<li>Fit:Regular
</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Thermoflex fabric for warmth and comfort</p><p>KISS Air2 Donna seat pad gives great cushioning without excessive bulk</p><p>Lie-flat elastic waist</p><p>Ankle zippers for easy on/off</p><p>Reflective panel below knee</p><p><br></p><p>The Entrata Tight brings you all the performance of the Entrata Bibtight, just without the bib straps. You''ll appreciate the luxurious warmth and stretch of the soft brushed fleece Thermoflex fabric. The tight has minimal seams for comfort, and our KISS Air2 Donna seat pad features generous padding and quite possibly the softest surface fabric in the business. It''s everything you need to comfortably enjoy dry winter rides.</p>', array['castelli-entrata-tight-womens/1.webp', 'castelli-entrata-tight-womens/2.webp', 'castelli-entrata-tight-womens/3.webp', 'castelli-entrata-tight-womens/4.webp']::text[], 'new', 4, '2026-04-20'::date, false, false),
  ('castelli-espresso-bibtight-mens', 'Castelli Espresso Bibtight Men''s', 'castelli', 'apparel', 'bib-tights', '<p>The best winter bibtight for most of your winter riding. With a focus on comfort, we''ve used warm and soft Thermoflex fabric throughout, with carefully placed seams to minimize irritation, and the Progetto X2 Air Seamless seat pad for comfort on the longest days in the saddle.</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 4/5</p>

<p>Waterproofness 1/5</p>
Windproofness 3/5

<p>Breathability 4/5</p>

<p>Lightness 3/5</p>

<ul>
<li>Weight:308<em> g</em>
</li>
<li>Temperature:4°C - 15°C / 39°F - 59°F
</li>
<li>
Fit:Regular

</li>
</ul>

<p>PRODUCT FEATURES</p>
<p>Thermoflex fabric for warmth, stretch, and comfort</p>
<p>Stretch mesh bib straps for ventilation and comfort</p>
<p>Progetto X2 Air Seamless seat pad for long-distance comfort</p>
<p>Zipperless ankle to reduce bulk</p>
<p>Reflective tab on back of leg</p>', array['castelli-espresso-bibtight-mens/1.jpg', 'castelli-espresso-bibtight-mens/2.jpg', 'castelli-espresso-bibtight-mens/3.jpg', 'castelli-espresso-bibtight-mens/4.jpg', 'castelli-espresso-bibtight-mens/5.jpg']::text[], 'new', 1, '2025-06-09'::date, false, false),
  ('castelli-espresso-w-dt-bibtight-womens', 'Castelli Espresso W DT Bibtight Women''s', 'castelli', 'apparel', 'bib-tights', '<p>The best winter bibtight for most of your winter riding. With a focus on comfort, we''ve used warm and soft Thermoflex fabric throughout, with carefully placed seams to minimize irritation, and the Progetto X2 Air Seamless Donna seat pad for comfort on the longest days in the saddle. </p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 4/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 3/5</p>
<p>Breathability 4/5</p>
<p>Lightness 3/5 </p>
<ul>
<li>Weight:262<em> g</em>
</li>
<li>Temperature:4°C - 15°C / 39°F - 59°F</li>
<li>Fit:Regular</li>
</ul>
<p>PRODUCT FEATURES</p>

<p>Thermoflex fabric for warmth, stretch, and comfort</p>
<p>Drop Tail stretch bib straps for comfort and easy nature breaks</p>
<p>Progetto X2 Air Seamless Donna seat pad for long-distance comfort</p>
<p>Zipperless ankle to reduce bulk</p>
<p>Reflective tab on back of leg</p>', array['castelli-espresso-w-dt-bibtight-womens/1.jpg', 'castelli-espresso-w-dt-bibtight-womens/2.jpg', 'castelli-espresso-w-dt-bibtight-womens/3.jpg', 'castelli-espresso-w-dt-bibtight-womens/4.jpg']::text[], 'new', 0, '2025-06-09'::date, false, false),
  ('castelli-omloop-thermal-bibshort-mens', 'Castelli Omloop Thermal Bibshort Men''s', 'castelli', 'apparel', 'bib-tights', '<p>The ultimate short for cool days, cut just above the knee in Thermoflex fabric and the Progetto X2 Air seamless pad.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 1/5</p><p>Windproofness 2/5</p><p>Breathability 5/5</p><p>Lightness 4/5</p><ul>
<li>Weight:247<em> g</em>
</li>
<li>Temperature:12°C - 18°C / 54°F - 64°F</li>
<li>Fit:Tailored</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Extreme comfort in a thermal short, offering just the right level of warmth for fall and spring rides</p><p>Castelli Thermoflex fleece 80% nylon / 20% elastane fabric for extra warmth with maximum stretch and comfort</p><p>Minimal-seam construction</p><p>Raw-cut leg endings finish just above knee</p><p>Elastic seamless bib straps with mesh back</p><p>Progetto X2 Air seamless seat pad</p>', array['castelli-omloop-thermal-bibshort-mens/1.webp', 'castelli-omloop-thermal-bibshort-mens/2.webp', 'castelli-omloop-thermal-bibshort-mens/3.webp', 'castelli-omloop-thermal-bibshort-mens/4.webp', 'castelli-omloop-thermal-bibshort-mens/5.webp']::text[], 'new', 2, '2026-04-20'::date, false, false),
  ('castelli-omloop-thermal-dt-womens', 'Castelli Omloop Thermal DT Women''s', 'castelli', 'apparel', 'bib-tights', '<p>The ultimate short for cool days, cut just above the knee in Thermoflex fabric and the Progetto X2 Air seamless pad.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 1/5</p><p>Windproofness 2/5</p><p>Breathability 5/5</p><p>Lightness 4/5</p><ul>
<li>Weight:226<em> g</em>
</li>
<li>Temperature:12°C - 18°C / 54°F - 64°F</li>
<li>Fit:Tailored</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Extreme comfort in a thermal short, offering just the right level of warmth for fall and spring rides</p><p>Castelli Thermoflex fleece 80% nylon / 20% elastane fabric for extra warmth with maximum stretch and comfort</p><p>Minimal-seam construction</p><p>Raw-cut leg endings finish just above knee</p><p>Drop Tail bib strap system for bathroom breaks without need to remove jersey or jacket</p><p>Progetto X2 Air seamless seat pad</p>', array['castelli-omloop-thermal-dt-womens/1.webp', 'castelli-omloop-thermal-dt-womens/2.webp', 'castelli-omloop-thermal-dt-womens/3.webp', 'castelli-omloop-thermal-dt-womens/4.webp', 'castelli-omloop-thermal-dt-womens/5.webp']::text[], 'new', 5, '2026-04-20'::date, false, false),
  ('castelli-sorpasso-ros-womens-bibtight', 'Castelli Sorpasso RoS Women''s Bibtight', 'castelli', 'apparel', 'bib-tights', '<p>Made for long hours in the widest range of conditions, this tight features our ultra-stretchy, warm and water-repellent Nano Flex 3G fabric with the extra warmth of Nano Flex Xtra Dry on the hips and thighs, along with an anatomical cut and the Progetto X2 Air seamless seat pad for long-distance comfort.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Nano Flex 3G fabric for our best mix of warmth, stretchy compression, softness and water repellency</li>
<br><li>Nano Flex Xtra Dry fabric panel on upper front and thighs for extra warmth</li>
<br><li>Anatomic cut to hips and knee</li>
<br><li>Reflective inserts for maximum visibility from behind</li>
<br><li>Lie-flat elastic bib straps</li>
<br><li>YKK® Camlock® zippers at ankles</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>4/5</strong>
</li>
<br><li>Waterproofness: <strong>4/5</strong>
</li>
<br><li>Windproofness: <strong>4/5</strong>
</li>
<br><li>Breathability: <strong>4/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong> </li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>350gm</strong>
</li>
<br><li>Temperature: <strong>-2°C - 10°C / 28°F - 50°F</strong>
</li>
<br><li>Fit: <strong>Tailored</strong>
</li>
<br>
</ul><br><p>We made this tight for serious winter riding. That means keeping you protected and comfortable in the widest possible range of conditions. Easy to say, but harder to actually do. The main part of the tight uses our Nano Flex 3G fabric, the third generation of our proprietary nanotechnology fabric treatment that adds a high level of water repellency without affecting the breathability, stretch or warmth of the fabric. You get a highly stretchy, compressive fit that moves with you, for luxurious comfort with the best protection on the market. We add Nano Flex Xtra Dry panels to provide a bit more wind protection and warmth in the front and over the thighs. It''s not only about the fabrics: anatomical patterning gives a bend at the knee and the hip, while the seamless bib straps lie flat so you hardly notice them. Our generously padded women''s-specific Progetto X2 Air seamless seat pad make long rides more comfortable, and you have multiple reflective panels to keep you visible. We''ve designed this as the go-to tight for a full winter''s riding.</p>', array['castelli-sorpasso-ros-womens-bibtight/1.jpg', 'castelli-sorpasso-ros-womens-bibtight/2.jpg', 'castelli-sorpasso-ros-womens-bibtight/3.jpg', 'castelli-sorpasso-ros-womens-bibtight/4.jpg', 'castelli-sorpasso-ros-womens-bibtight/5.jpg']::text[], 'new', 1, '2024-08-07'::date, false, false),
  ('castelli-tutto-nano-bibtight-mens', 'Castelli Tutto Nano Bibtight Men''s', 'castelli', 'apparel', 'bib-tights', '<p>IT JUST HAPPENS TO BE GOOD IN THE RAIN TOO. Our Nano Flex 3G fabric is the result of a decade of development. It''s our best all-around fabric for winter tights: warm, stretchy, luxuriously soft, highly breathable and on top of that it features our proprietary third generation of nanotechnology water-repellent finish. While other companies are using simple chemical water-repellent finishes, we create a nanotechnology mechanical repellency to enhance a chemical DWR finish. You stay drier and more comfortable. Even though this tight features our latest water-repellency technology, don''t think of it as just a niche rain tight. The fabric makes for a great dry-weather tight, and the reduced-seam anatomical cut makes it extremely comfortable. We use the pro-level KISS Air2 seat pad along with a mesh bib and zippered ankles. This is the tight that''s good at everything.</p>', array['castelli-tutto-nano-bibtight-mens/1.jpg', 'castelli-tutto-nano-bibtight-mens/2.jpg']::text[], 'new', 0, '2024-05-17'::date, false, false),
  ('sportful-neo-knickers', 'Sportful Womens Neo Knickers', 'sportful', 'apparel', 'bib-tights', '<p>DESIGNED TO BE COMFORTABLE FROM THE VERY FIRST RIDES.</p>
<p>The Neo Bibknicker combines simplicity, comfort, and effectiveness on the bike.</p>
<h3></h3>

<ul>
<li>New construction with raw-cut fabric on inner part of leg to eliminate seams in areas that could cause chafing</li>
<li>Short made with 200 g/m2 Lycra®</li>
<li>Outer part of leg finished with applied band, with grip dots to ensure stretch</li>
<li>New multi density, two layered Bodyfit Pro W MD Seatpad</li>
</ul>
<h3></h3>

MAIN FABRIC:  80% polyamide 20% elastane<br>BOTTOM LEGS:  78% polyester 22% elastane<br>WAIST:  80% polyester 20% elastane', array['sportful-neo-knickers/1.jpg']::text[], 'new', 1, '2022-04-28'::date, false, false),

  -- ---- apparel · caps-hats ----
  ('castelli-giro-cycling-cap', 'Castelli #Giro Cycling Cap', 'castelli', 'apparel', 'caps-hats', '<p>Cycling cap to show your support for your favourite leader''s classification.</p>
<h3><b>Product features</b></h3>
<ul>
<li>Classic 100% cotton cycling cap</li>
<li>Dyed fabrics with printed graphic under bill</li>
</ul>
<ul>
<li>Fit: <b>Comfortable</b>
</li>
</ul>', array['castelli-giro-cycling-cap/1.jpg', 'castelli-giro-cycling-cap/2.jpg', 'castelli-giro-cycling-cap/3.jpg', 'castelli-giro-cycling-cap/4.jpg', 'castelli-giro-cycling-cap/5.jpg']::text[], 'new', 0, '2025-05-14'::date, false, false),
  ('castelli-bandito-thermal-winter-cap', 'Castelli Bandito Thermal Winter Cap', 'castelli', 'apparel', 'caps-hats', '<p>DESCRIPTION<br>A thoroughly modern take on a traditional-looking piece.</p>
<p>We use a merino wool layer over a polyester jersey liner — the wool provides insulation and pulls the moisture away from the skin.</p>
<p>The forehead and earflap are double layered for warmth, while the cap is thin enough to comfortably fit under your helmet.</p>
<p>Product features</p>
<p>Traditional style with technical construction<br>Merino wool/polyester mix outer layer with thin jersey liner over ears and forehead<br>Reinforced visor<br>Reflective detailing</p>', array['castelli-bandito-thermal-winter-cap/1.webp']::text[], 'new', 0, '2025-05-14'::date, false, false),
  ('castelli-como-neck-warmer', 'Castelli Como Neck Warmer', 'castelli', 'apparel', 'caps-hats', '<p>TECHNICAL FEATURES</p><ul><li>Weight:39<em> g</em>
</li></ul><p>PRODUCT FEATURES</p>
<p>Tubular seamless polyester jersey construction</p>
<p>Great sublimated graphic to match your favorite Castelli jacket</p>', array['castelli-como-neck-warmer/1.jpg']::text[], 'new', 1, '2025-06-19'::date, false, false),
  ('castelli-giro-ditalia-cap', 'Castelli Giro d''Italia Cap', 'castelli', 'apparel', 'caps-hats', '<p>Performance cap for hot days. Your go-to cap to complete your kit.</p><p>TECHNICAL FEATURES</p><ul>
<li>Weight:28<em> g</em>
</li>
<li>Temperature:15°C - 38°C / 59°F - 100°F</li>
<li>Fit:Regular</li>
</ul><p>PRODUCT FEATURES</p>
<p>Complete your Giro d''Italia kit with a matching cap</p>
<p>Performance mesh for optimal cooling</p>
<p>Fabric designed for maximal wicking</p>
<p>UPF 50</p>', array['castelli-giro-ditalia-cap/1.jpg', 'castelli-giro-ditalia-cap/2.jpg', 'castelli-giro-ditalia-cap/3.jpg']::text[], 'new', 0, '2025-05-14'::date, false, false),
  ('castelli-light-head-thingy', 'Castelli Light Head Thingy', 'castelli', 'apparel', 'caps-hats', '<h3>DESCRIPTION</h3>

<ul>
<li>100% polyester for maximum moisture management</li>
<li>Seamless continuous-tube construction</li>
<li>Sublimated graphic</li>
<li>Summer weight</li>
<li>Protects from the sun''s rays or provides a little extra warmth on cool days</li>
</ul>', array['castelli-light-head-thingy/1.webp']::text[], 'new', 1, '2025-05-14'::date, false, false),
  ('castelli-pro-thermal-2-headband', 'Castelli Pro Thermal 2 Headband', 'castelli', 'apparel', 'caps-hats', '<p>Thermoflex is warm, soft, and stretchy</p>
<p>Flat-lock stitching</p>
<p>Contoured to cover ears</p>
<p>Raw-cut edge lies flat and doesn''t bunch under helmet</p>
<p>Reflective detailing on back</p>

<p>TECHNICAL FEATURES</p>
<ul>
<li>Weight:23<em> g</em>
</li>
</ul>', array['castelli-pro-thermal-2-headband/1.webp']::text[], 'new', 1, '2026-05-08'::date, false, false),
  ('castelli-pro-thermal-2-headband-womens', 'Castelli Pro Thermal 2 Headband Women''s', 'castelli', 'apparel', 'caps-hats', '<p>Thermoflex is warm, soft, and stretchy</p>
<p>Flat-lock stitching</p>
<p>Contoured to cover ears</p>
<p>Raw-cut edge lies flat and doesn''t bunch under helmet</p>
<p>Reflective detailing on back</p>
<p><br></p>
<p>TECHNICAL FEATURES</p>
<ul>
<li>Weight:23<em> g</em>
</li>
</ul>', array['castelli-pro-thermal-2-headband-womens/1.webp', 'castelli-pro-thermal-2-headband-womens/2.webp']::text[], 'new', 2, '2026-05-08'::date, false, false),
  ('castelli-pro-thermal-2-skully', 'Castelli Pro Thermal 2 Skully', 'castelli', 'apparel', 'caps-hats', '<p> PRODUCT FEATURES</p>
 Thermoflex is warm, soft, and stretchy

<p>Flat-lock stitching</p>
<p>Contoured to cover ears</p>
<p>Raw-cut edge lies flat and doesn''t bunch under helmet</p>
<p>Reflective detailing on back</p>', array['castelli-pro-thermal-2-skully/1.jpg', 'castelli-pro-thermal-2-skully/2.jpg', 'castelli-pro-thermal-2-skully/3.jpg']::text[], 'new', 3, '2025-06-19'::date, false, false),
  ('castelli-pro-thermal-headband-3', 'Castelli Pro Thermal Headband', 'castelli', 'apparel', 'caps-hats', '<p>PRODUCT FEATURES</p>
<p>Thermoflex is warm, soft, and stretchy</p>
<p>Flat-lock stitching</p>
<p>Contoured to cover ears</p>
<p>Raw-cut edge lies flat and doesn''t bunch under helmet</p>
<p>Reflective detailing on back</p>
<p><br></p>
<p>TECHNICAL FEATURES</p>
<p>Weight:23<em> g</em></p>', array['castelli-pro-thermal-headband-3/1.webp']::text[], 'new', 0, '2026-05-08'::date, false, false),
  ('castelli-pro-thermal-skully-womens-2', 'Castelli Pro Thermal Skully Women''s', 'castelli', 'apparel', 'caps-hats', '<p>Made for warmth with excellent wicking while minimizing bulk under your helmet. This simple helmet liner has a raw-cut edge so it doesn''t interfere with the straps or helmet cage, while the Thermoflex fabric is surprisingly warm and wicks away moisture.</p>
<p><strong>Product Features</strong></p>
<ul>
<li>Thermoflex is warm, soft and stretchy</li>
<li>Raw-cut edge lies flat and doesn''t bunch under helmet</li>
<li>Opening at back for ponytail</li>
<li>Weight: 33gm
</li>
</ul>', array['castelli-pro-thermal-skully-womens-2/1.png']::text[], 'new', 0, '2025-05-14'::date, false, false),
  ('spokencyclestruckercap', 'Spoken Cycles Trucker Cap', 'mr-rider', 'apparel', 'caps-hats', '<p>Spoken Cycles Trucker Cap</p>', array['spokencyclestruckercap/1.jpg']::text[], 'new', 0, '2023-06-23'::date, false, false),
  ('velotoze-balaclava', 'VeloToze Balaclava', 'velotoze', 'apparel', 'caps-hats', '<h4><strong>INTRODUCING VELOTOZE BALACLAVA WITH SNAPS - CUSTOMIZE YOUR WAY</strong></h4>
<p>In the world of cycling gear innovation, veloToze has once again pushed the boundaries with its latest creation: Balaclava with Snaps. Unveiling the first-ever cycling balaclava designed with snaps, it is a game-changing solution to the age-old challenge of fluctuating weather conditions. Cyclists can now seamlessly transition between different configurations to suit varying riding conditions. At the heart of this innovative design are the strategically placed snaps, allowing riders to transform the balaclava into three distinct configurations:</p>
<p><strong> </strong></p>
<p><strong>1. Skull Cap:</strong> When the weather calls for minimal coverage, simply snap off the balaclava''s face and neck sections to convert it into a lightweight skull cap. </p>
<p><strong>2. Neck Gaiter:</strong> For added protection against chilly winds or sudden temperature drops, detach the top section of the balaclava and wear it as a standalone neck gaiter. </p>
<p><strong>3. Balaclava:</strong> When faced with harsh weather conditions or the need for full-face coverage, snap the Skull Cap and Neck Gaiter together to form a complete Balaclava. </p>
<p><strong> </strong></p>
<p><strong>Moisture-Wicking Fabric</strong>: Our balaclava features a moisture-wicking fabric that efficiently removes perspiration from your skin. This means you can stay dry and comfortable, even during high-intensity activities. </p>
<p><strong> </strong></p>
<p><strong>Breathable Design</strong>: Whether you''re on a demanding hike or cycling up a long steep climb, our breathable design with perforated holes ensures you remain cool and comfortable so you don''t overheat during your adventures.</p>
<p><strong> </strong></p>
<p><strong>Cotton-Like Softness</strong>: We understand that extended outdoor excursions require gear that''s gentle on your skin. Our balaclava offers cotton-like softness, making it a pleasure to wear for long rides. </p>
<p><strong> </strong></p>
<p><strong>Built-In UV Protection</strong>: Don''t let the sun''s harmful rays ruin your outdoor experience. Our Balaclava provides built-in UV protection (UPF 50+), shielding you from potential sunburn and skin damage. </p>
<p>Whether you''re embarking on a long-distance endurance ride or tackling off-road trails, the veloToze Balaclava with Snaps is the ultimate cycling companion. Versatile, adaptable, and performance-driven, it''s designed to elevate your riding experience and keep you focused on the road ahead. </p>
<h4><strong>MATERIALS</strong></h4>
<ul>
<li>88% Polyester, 12% Spandex</li>
</ul>
<h4><strong>CARE INSTRUCTIONS</strong></h4>
<ul>
<li>Machine wash cool on a gentle cycle with like colors. Hang dry. Do not machine dry. Do not iron. Do not bleach.</li>
</ul>', array['velotoze-balaclava/1.jpg', 'velotoze-balaclava/2.jpg', 'velotoze-balaclava/3.jpg', 'velotoze-balaclava/4.jpg']::text[], 'new', 1, '2025-05-14'::date, false, false),

  -- ---- apparel · gilets-vests ----
  ('castelli-aria-vest-mens', 'Castelli Aria Vest Men''s', 'castelli', 'apparel', 'gilets-vests', '<p>Our lightest and most packable wind shell that fits close to body with a stretch breathable back. It effectively blocks wind on the front without causing overheating.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Ultralight windproof woven microfiber front</li>
<br><li>Striped mesh back is stretchy to avoid fabric flapping in the wind</li>
<br><li>Folds up extremely small</li>
<br><li>Rear pocket</li>
<br><li>YKK® Vislon® zipper</li>
<br><li>Reflective piping</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>75gm</strong>
</li>
<br><li>Temperature: <strong>12°C - 20°C / 54°F - 68°F</strong>
</li>
<br><li>Fit: <strong>Tailored</strong>
</li>
<br>
</ul><br><p><strong>NEAR WEIGHTLESS PROTECTION</strong> We have reinterpreted the classic wind vest to make it as svelte as the rest of your wardrobe. This vest is designed to completely block the wind on the front while allowing ample breathability on the back. The fabrics are so impossibly light that you''ll be surprised at how much warmer you stay with this vest over your standard jersey. But the magic comes from the cut and the stretch fabric on the back, which take up all the loose fabric and make the vest fit close to body without feeling tight or looking ridiculous. When you''re ready to take it off, the vest folds into its rear pocket and stashes away, taking up minimal space in your jersey pocket.</p>', array['castelli-aria-vest-mens/1.jpg', 'castelli-aria-vest-mens/2.jpg', 'castelli-aria-vest-mens/3.jpg', 'castelli-aria-vest-mens/4.jpg', 'castelli-aria-vest-mens/5.jpg']::text[], 'new', 1, '2024-08-07'::date, false, false),
  ('castelli-espresso-vest', 'Castelli Espresso Vest', 'castelli', 'apparel', 'gilets-vests', '<p>Packable wind vest to match your favourite Espresso kit. The front fabric blocks the wind while still being breathable. On the back we''ve added three pockets for easy access to what you might need while riding.</p><p><br></p><p>The Espresso Vest is made to pair perfectly with your favorite Espresso kit. But not only does it look great, it has all the performance you''d expect. The stretch woven fabric on the front keeps out most of the wind but allows just enough to pass through to keep you dry. We use the same fabric from the Espresso Jersey on the back for great stretch and comfort, so the fit of the vest is just right. We''ve provided 3 pockets for added storage and so you can easily access anything you might need quickly. The zipper on the front opens from the top and bottom for improved temperature regulation and to make accessing your jersey pockets easier. Elastic at the waist keeps the vest in place, and the reflective tab on the back adds extra visibility. All this amazing performance, plus it still packs down to stow away in a pocket if you don''t need it.</p><p><br></p><p>PRODUCT FEATURES</p><p>Stretch woven front to allow just enough air through to keep you dry and comfortable</p><p>Air_O Stretch fabric on back and sides for breathability, comfort, and perfect fit</p><p>3 back pockets</p><p>Top- and bottom-opening YKK® zipper</p><p>Elastic at waist to keep vest in place</p><p>Reflective tab on back for added visibility</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 1/5</p><p>Windproofness 4/5</p><p>Breathability 2/5</p><p>Lightness 4/5</p><p>Weight:116 g<br>Temperature:12°C - 20°C / 54°F - 68°F<br>Fit:Regular</p><p><br></p>', array['castelli-espresso-vest/1.jpg', 'castelli-espresso-vest/2.jpg', 'castelli-espresso-vest/3.jpg', 'castelli-espresso-vest/4.jpg', 'castelli-espresso-vest/5.jpg']::text[], 'new', 6, '2025-05-21'::date, false, false),
  ('castelli-espresso-vest-womens', 'Castelli Espresso Vest Women''s', 'castelli', 'apparel', 'gilets-vests', '<p>Packable wind vest to match your favorite Espresso kit. The front fabric blocks the wind while still being breathable. On the back we''ve added three pockets for easy access to what you might need while riding.</p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 1/5</p><p>Windproofness 4/5</p><p>Breathability 2/5</p><p>Lightness 4/5</p><ul>
<li>Weight:118<em> g</em>
</li>
<li>Temperature:12°C - 18°C / 54°F - 64°F</li>
<li>Fit:Regular </li>
</ul>
<p>PRODUCT FEATURES</p>
<p>Stretch woven front to allow just enough air through to keep you dry and comfortable</p>
<p>Air_O Stretch fabric on back and sides for breathability, comfort, and perfect fit</p>
<p>3 back pockets</p>
<p>Top- and bottom-opening YKK® zipper</p>
<p>Elastic at waist to keep vest in place</p>
<p>Reflective tab on back for added visibility</p>', array['castelli-espresso-vest-womens/1.jpg', 'castelli-espresso-vest-womens/2.jpg', 'castelli-espresso-vest-womens/3.jpg', 'castelli-espresso-vest-womens/4.jpg', 'castelli-espresso-vest-womens/5.jpg']::text[], 'new', 3, '2025-06-19'::date, false, false),
  ('castelli-fly-vest-mens', 'Castelli Fly Vest Men''s', 'castelli', 'apparel', 'gilets-vests', '<p>The Fly Vest, giving you just enough warmth to take the chill off, is an amazingly lightweight garment. Featuring brand-new lightweight construction with Castelli FLY Fabric Technologies: FFT. The sides and back offer enough stretch to get the perfect fit for this unbelievably lightweight vest.</p>

<p>Product features</p>

<ul>
<li>Super-lightweight construction with just enough warmth and protection</li>
<li>Low/no collar for temperature regulation</li>
<li>Castelli FLY Fabric Technologies: FFT</li>
<li>GORE-TEX INFINIUM™ WINDSTOPPER® inner lining</li>
<li>CLIMA SL Insulation for extra warmth</li>
<li>FLY SL Shell for wind and rain protection</li>
<li>100% recycled post-consumer outer shell and lining</li>
<li>Top and bottom-opening YKK® Vislon® zipper</li>
<li>3 back pockets with zippered security pocket for valuables</li>
<li>Elastic and silicone at waist to keep vest in place</li>
<li>Reflectivity at waist</li>
</ul>

<p>It almost doesn''t seem possible that a vest this lightweight can perform this well. When you first pick it up, you almost want to toss it in the air it''s so light. Castelli FLY Fabric Technologies: FFT make this almost-impossible vest possible. The CLIMA SL insulation layer and FLY SL shell are made with 100% recycled fibers that are amazingly soft and lightweight. The FLY SL shell is also treated with a water-repellent finish to keep you dry. The GORE-TEX INFINIUM™ WINDSTOPPER® inner lining provides outstanding wind protection and is extremely breathable. The back of the vest has a stretchy jersey-weight fabric to reduce the weight and allow for a close, comfortable fit. The low collar sits against the chest to keep any wind from coming in, and the YKK® Vislon® zipper slides easily to open up the vest for extra ventilation. Three back pockets allow for ample storage, and reflective details increase visibility. It''s amazing this much protection and practicality can be found in such a lightweight vest.</p>', array['castelli-fly-vest-mens/1.webp', 'castelli-fly-vest-mens/2.webp', 'castelli-fly-vest-mens/3.webp']::text[], 'new', 1, '2025-05-21'::date, false, false),
  ('castelli-perfetto-ros-vest-womens', 'Castelli Perfetto RoS Vest Women''s', 'castelli', 'apparel', 'gilets-vests', '<p>PERFETTO VEST IS NOW EVEN MORE PERFECT. The Perfetto Vest has been a favorite with everyone from our pro riders to Castelli staff to performance cyclists everywhere. But we wanted to make it even more perfect, so we developed a new exclusive GORE-TEX INFINIUM™ WINDSTOPPER® fabric that is both lighter and more water repellent than the old fabric while maintaining the stretch and breathability. We matched it up with better water repellency in the back while maintaining the breathability, and further improved details like the back pockets and reflectivity. A more perfect Perfetto Vest.</p>', array['castelli-perfetto-ros-vest-womens/1.jpg', 'castelli-perfetto-ros-vest-womens/2.jpg']::text[], 'new', 3, '2021-08-22'::date, false, false),
  ('castelli-pro-thermal-mid-vest-mens', 'Castelli Pro Thermal Mid Vest Men''s', 'castelli', 'apparel', 'gilets-vests', '<p>This thermal vest is a favorite of our pro riders since it adds some extra warmth for your core without sacrificing breathability or causing overheating. We built it without a windproof membrane, so you''ll never feel damp inside.</p>
<h3><strong>Technical Features</strong></h3>
<ul>
<li>Waterproofness: <strong>3/5</strong>
</li>
<li>Insulation: <strong>2/5</strong>
</li>
<li>Windproofness: <strong>2/5</strong>
</li>
<li>Breathability: <strong>3/5</strong>
</li>
<li>Lightness: <strong>4/5</strong>
</li>
</ul>
<h3><strong>Product features</strong></h3>
<ul>
<li>Mid-weight Warmer X-Stretch brushed fabric</li>
<li>3 back pockets</li>
<li>Elastic at waist</li>
<li>YKK® Vislon® zipper</li>
<li>3 rear pockets</li>
</ul>
<ul>
<li>Weight: <strong>174gm</strong>
</li>
<li>Temperature: <strong>10°C - 18°C / 50°F - 64°F</strong>
</li>
<li>Fit: <strong>Race</strong>
</li>
</ul>
<p><strong>PRO EQUIPMENT</strong> This is a piece that pro riders consider essential but that isn''t used very often by regular cyclists. It''s a thermal vest with no wind protection; the simple use of our mid-weight Warmer X-Stretch fabric provides a good bit of extra warmth for your core, but without trapping moisture inside a membrane. It''s ideal for high-intensity riding in cool weather or staying comfortably warm on a mild-temperature recovery day. Find out why the pros always have one in their race bag.</p>', array['castelli-pro-thermal-mid-vest-mens/1.jpg', 'castelli-pro-thermal-mid-vest-mens/2.jpg', 'castelli-pro-thermal-mid-vest-mens/3.jpg', 'castelli-pro-thermal-mid-vest-mens/4.jpg', 'castelli-pro-thermal-mid-vest-mens/5.jpg']::text[], 'new', 0, '2025-09-12'::date, false, false),
  ('castelli-squadra-stretch-vest-mens-1', 'Castelli Squadra Stretch Vest Men''s', 'castelli', 'apparel', 'gilets-vests', '<p>The Squadra Stretch Vest is the simple yet elegant solution to keep the wind off your core in cool conditions while providing a close-to-body fit and excellent ventilation.</p>
<p>We''ve completely reengineered our entry-level vest. A new coated ripstop fabric keeps the wind off the front and spray off the back, while the tightly knit side panels allow the vest to stretch to fit a wide range of shapes while keeping a close-to-body fit that eliminates fabric flapping in the wind. The collar is cut high and the back long for extra protection, and the color blocking of the stretch panels and the reflective details on the chest and tail give it an elegant design touch.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Coated ripstop nylon front and back to keep wind off</li>
<li>Tightly knit stretch panels on sides for perfect fit and ventilation</li>
<li>High collar to keep drafts out</li>
<li>Reflective details on chest and lower back for low-light visibility</li>
<li>Weight: 104gm
</li>
<li>Temperature: 12°C - 20°C / 54°F - 68°F
</li>
<li>
Fit: Performance

</li>
</ul>', array['castelli-squadra-stretch-vest-mens-1/1.png', 'castelli-squadra-stretch-vest-mens-1/2.png', 'castelli-squadra-stretch-vest-mens-1/3.png', 'castelli-squadra-stretch-vest-mens-1/4.png']::text[], 'new', 3, '2025-05-21'::date, false, false),
  ('mens-prime-wind-vest-1', 'Men''s Prime Wind Vest', 'specialized', 'apparel', 'gilets-vests', '<p>Perfect for windy days and cool starts, the Men''s Prime Wind Vest features a windproof ripstop front and breathable mesh back for balanced comfort. Now 28% lighter, it packs down easily into a jersey pocket. Elastic at the waist and armholes seals out cold air, while a two-way zipper offers quick venting and easy pocket access—ideal for variable conditions and fast-paced rides.</p>', array['mens-prime-wind-vest-1/1.jpg', 'mens-prime-wind-vest-1/2.jpg', 'mens-prime-wind-vest-1/3.jpg', 'mens-prime-wind-vest-1/4.jpg', 'mens-prime-wind-vest-1/5.jpg']::text[], 'new', 2, '2025-09-05'::date, false, false)
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
