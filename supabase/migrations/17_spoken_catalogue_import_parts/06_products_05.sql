-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 6 OF 10
--
-- Products 801-1000 of 1423 (components, electronics, framesets, helmets).
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
  -- ---- components · saddles ----
  ('bridge-comp-with-mimic', 'Bridge Comp with MIMIC', 'specialized', 'components', 'saddles', '<p>The Bridge Comp with MIMIC technology is the perfect saddle choice for both on- and off-road riding. The broad, flat profile provides added control, while the Level 3 padding adds exceptional sitbone comfort. The center channel—equipped with our patented, award-winning MIMIC technology—perfectly adapts to your body to give you the support and comfort you need. This Comp version is equipped with light, durable Cr-Mo rails, as well as an even softer density, Level 3 padding for extra comfort.</p>', array['bridge-comp-with-mimic/1.jpg', 'bridge-comp-with-mimic/2.jpg', 'bridge-comp-with-mimic/3.jpg', 'bridge-comp-with-mimic/4.png']::text[], 'new', 3, '2024-11-15'::date, false, false),
  ('bridge-sport', 'Bridge Sport', 'specialized', 'components', 'saddles', '<p>The Bridge Sport is the perfect saddle choice for both on- and off-road expeditions. The broad, flat profile allows for added control, while the patented Body Geometry channel is optimized to assure proper blood flow to sensitive arteries. This Sport version is equipped with durable, steel rails, as well as an even softer density, Level 3 padding for extra comfort.</p>', array['bridge-sport/1.jpg', 'bridge-sport/2.jpg', 'bridge-sport/3.jpg', 'bridge-sport/4.png']::text[], 'new', 2, '2024-11-15'::date, false, false),
  ('fizik-antares-versus-evo-r1-adaptive', 'Fizik Antares Versus Evo R1 Adaptive', 'mr-rider', 'components', 'saddles', '<p>A 3D printed bike saddle with a revolutionary padding with carbon reinforced nylon shell and a highly stiff carbon rail (R1).</p>', array['fizik-antares-versus-evo-r1-adaptive/1.jpg', 'fizik-antares-versus-evo-r1-adaptive/2.jpg', 'fizik-antares-versus-evo-r1-adaptive/3.jpg', 'fizik-antares-versus-evo-r1-adaptive/4.jpg', 'fizik-antares-versus-evo-r1-adaptive/5.jpg']::text[], 'new', 0, '2026-08-10'::date, false, false),
  ('fizik-antares-versus-evo-r3-adaptive', 'Fizik Antares Versus Evo R3 Adaptive', 'fizik', 'components', 'saddles', '<p>A 3D-printed bike saddle with a carbon-reinforced nylon shell and Kium hollow rails with a high strength-to-weight ratio.</p> <p><strong>A 3D PRINTED PADDING</strong></p> <p>The evolution of digital 3D printing allowed us to develop a new saddle without the constraints or limitations imposed by traditional production methods and materials. The Adaptive saddle padding is crafted by Carbon using its revolutionary Digital Light Synthesis technology. DLS is an additive manufacturing process which uses digital ultraviolet light projection, oxygen permeable optics, and programmable liquid resins to produce parts with excellent mechanical properties, resolution and surface finish.</p> <p><strong>TAILORED ZONAL CUSHIONING</strong></p> <p>Using Carbon technology, biomechanists and engineers have an unprecedented possibility: to design and manufacture multiple functional zones within the saddle, tuning each of them separately for specific mechanical properties.Each of these key functional zones is engineered with a distinctive cushioning and mechanical response, joined together progressively and seamlessly in the same padding.</p> <p><strong>LAB TESTED, ROAD PROVEN</strong></p> <p>Professional cyclists and amateur riders were tested in both the fizik labs and on the road. During each development phase, every iteration was carefully tested. A great focus has been put on understanding how the pressure patterns change according to different bike geometries, riding positions, and riding styles.</p> <p><strong>FROM AN IDEA, DIRECTLY TO SCALABLE PRODUCTION</strong></p> <p>Thanks to this one-of-its-kind combination of process and material, we’ve been given the chance to develop a product five times faster, creating and field-testing hundreds of iterations. Being applicable to mass production, this technology completely remaps the traditional manufacturing process, accelerating and leaping over all intermediate phases.</p> <p><strong>LONG-LASTING PERFORMANCE</strong></p> <p>The saddle is very easy to clean. Even with the filthiest road muck, all you need to do is simply hose it over with water. Whatever gets in, gets out. We’ve put it through the most severe tests, simulating accelerated weathering, UV aging and wear resistance by following strict protocols.</p> <ul> <li>
<strong>Adaptive:</strong> Carbon® Digital Light Synthesis™ 3D printing technology, offering seamlessly engineered zonal cushioning</li> <li>
<strong>Versus Evo:</strong> Engineered with a degree of flexibilty and a full channel design for pressure relief on soft tissue area</li> <li>
<strong>R3:</strong> A combination of a ride compliant carbon reinforced nylon shell and a Kium hollow rail with high strength-to-weight ratio grad</li> <li>
<strong>Intended use:</strong> road racing</li> <li>
<strong>Concepts:</strong> this is a product of the fizik Concepts programme, a cross-disciplinary collaboration of leading industry experts and academics carrying out research and analysis on technology, design, physiology and bikefitting in search of ways to improve cycling performance.</li> </ul> <p><strong>Specifications</strong></p> <ul> <li>139 mm <ul> <li>
<strong>Length:</strong> 274 mm</li> <li>
<strong>Width:</strong> 139 mm</li> <li>
<strong>Weight:</strong> 217 g</li> <li>
<strong>Height at 75mm width:</strong> 58 mm</li> <li>
<strong>Length from nose to 75mm width:</strong> 148 mm</li> <li>
<strong>Rail: </strong>7 x 7 mm</li> </ul> </li> <li>149 mm <ul> <li>
<strong>Length:</strong> 274 mm</li> <li>
<strong>Width:</strong> 149 mm</li> <li>
<strong>Weight:</strong> 220 g</li> <li>
<strong>Height at 75mm width:</strong> 58 mm</li> <li>
<strong>Length from nose to 75mm width:</strong> 148 mm</li> <li>
<strong>Rail:</strong> 7 x 7 mm</li> </ul> </li> </ul>', array['fizik-antares-versus-evo-r3-adaptive/1.jpg', 'fizik-antares-versus-evo-r3-adaptive/2.jpg', 'fizik-antares-versus-evo-r3-adaptive/3.jpg', 'fizik-antares-versus-evo-r3-adaptive/4.jpg', 'fizik-antares-versus-evo-r3-adaptive/5.jpg']::text[], 'new', 0, '2021-09-17'::date, false, false),
  ('fizik-saddle-aliante-r3-regular-anthricite-black-k', 'Fizik Saddle Aliante R3 Regular Anthricite/Black K', 'fizik', 'components', 'saddles', '', array['fizik-saddle-aliante-r3-regular-anthricite-black-k/1.png', 'fizik-saddle-aliante-r3-regular-anthricite-black-k/2.png']::text[], 'new', 1, '2021-09-17'::date, false, false),
  ('fizik-saddle-aliante-r5-black-kium-rail', 'Fizik Saddle Aliante R5 Black Kium Rail#', 'fizik', 'components', 'saddles', '', array['fizik-saddle-aliante-r5-black-kium-rail/1.jpg']::text[], 'new', 1, '2021-09-17'::date, false, false),
  ('fizik-tempo-argo-r3', 'Fizik Tempo Argo R3', 'fizik', 'components', 'saddles', '<p>An endurance bike saddle with a ride-compliant carbon reinforced nylon shell and Kium hollow rail and a progressive cushioning, with lower compression modulus.</p>
<ul>
<li>Argo: versatile short-nose saddle that encourages stability and relieves pressure on soft tissue area</li>
<li>R3: a combination of a ride-compliant carbon reinforced nylon shell and a Kium hollow rail with high strength-to-weight ratio</li>
<li>Wingflex: the shell''s side edges flex and adapt to rider''s inner leg movement</li>
<li>Type 2 foam: progressive cushioning, with lower compression modulus</li>
</ul>

<br>
TEMPO ARGO R3 150
<ul>
<li>Length: 260 mm</li>
<li>Width: 150 mm</li>
<li>Weight: 229 g</li>
<li>Height at 75mm width: 43 mm</li>
<li>Length from nose to 75mm width: 103 mm</li>
<li>Rail: 7x7 mm</li>
</ul>

TEMPO ARGO R3 160
<ul>
<li>Length: 260 mm</li>
<li>Width: 160 mm</li>
<li>Weight: 235 g</li>
<li>Height at 75mm width: 45 mm</li>
<li>Length from nose to 75mm width: 103 mm</li>
<li>Rail: 7x7 mm</li>
</ul>', array['fizik-tempo-argo-r3/1.jpg', 'fizik-tempo-argo-r3/2.jpg', 'fizik-tempo-argo-r3/3.jpg', 'fizik-tempo-argo-r3/4.jpg', 'fizik-tempo-argo-r3/5.jpg']::text[], 'new', 1, '2021-09-17'::date, false, false),
  ('fizik-tempo-argo-r5', 'Fizik Tempo Argo R5', 'fizik', 'components', 'saddles', '<p>TEMPO ARGO R5 is a versatile endurance road saddle with a short-nosed design and generous ischial support that encourages stability.</p>
<p>Where a traditional saddle shape encourages riders to shift their position frequently for better leverage, Argo puts the rider in a more planted position, making for greater stability and better weight distribution.</p>
<p>Tempo Argo’s short length allows the rider to sit further forward without placing undue pressure on sensitive tissues.<br>It also features an ergonomic cutout that was developed using detailed pressure analysis and input from medical experts.</p>
<p>Argo is our most versatile saddle shape and each version suits different riding styles. As the edurance riding option, Tempo Argo has been engineered to deliver a riding feel that suits the balanced geometry of today’s all-purpose road machines.</p>
<p>The padding is made from fizik’s proprietary Type 2 foam formulation, slightly thicker around the ischial sit bones area to support a more upright riding posture.<br>The cushioning is slightly softer and more progressive than the type we use on our racing saddles, providing more long-distance comfort.</p>
<p>Argo is a product of the Fizik Concepts programme, a cross-disciplinary collaboration of leading industry experts and academics carrying out research and analysis on technology, design, physiology and bike-fitting in search of ways to improve cycling performance.</p>
<ul>
<li>Tempo: Versatility road series designed for the most enjoyable riding experience</li>
<li>Argo: versatile short nose saddle that encourages stability and reliefs pressure on soft tissue area</li>
<li>R5: a combination of a ride compliant carbon reinforced nylon shell and an S-Alloy rail</li>
<li>Wingflex: the shell''s side edges flex and adapt to rider''s inner legs movement</li>
<li>Type 2 foam: progressive cushioning, with lower compression modulus</li>
</ul>
<p>TEMPO ARGO R5 150 mm</p>
<ul>
<li>Length: 260 mm</li>
<li>Width: 150 mm</li>
<li>Weight: 241 g</li>
<li>Height at 75mm width: 45 mm</li>
<li>Length from nose to 75mm width: 103 mm</li>
<li>Rail: 7x7 mm</li>
</ul>
<p>TEMPO ARGO R5 160 mm</p>
<ul>
<li>Length: 260 mm</li>
<li>Width: 160 mm</li>
<li>Weight: 247 g</li>
<li>Height at 75mm width: 45 mm</li>
<li>Length from nose to 75mm width: 103 mm</li>
<li>Rail: 7x7 mm</li>
</ul>', array['fizik-tempo-argo-r5/1.jpg', 'fizik-tempo-argo-r5/2.jpg', 'fizik-tempo-argo-r5/3.jpg', 'fizik-tempo-argo-r5/4.jpg', 'fizik-tempo-argo-r5/5.jpg']::text[], 'new', 2, '2021-09-17'::date, false, false),
  ('fizik-tempo-r4-overcurve-wide-white-black', 'Fizik Tempo R4 Overcurve Wide White/Black', 'fizik', 'components', 'saddles', '<p>A perfect cycling shoes for wide feet with PU laminate over mesh upper, BOA® IP1-B dial closure, R4 outsole and a higher volume fit.</p>
<p>All-round road cycling shoe is designed to be equally at home on weekend group rides, in daily training, and stretching out on a granfondo.</p>
<p>The Overcurve R4’s classic aesthetic belies an advanced construction technique: a resilient polyurethane laminated material is combined over a comfortable mesh, reducing energy loss and providing long-lasting foot support where it’s most needed. Designed with a performance fit for riders with wider feet, the Overcurve R4 Wide provides a higher volume fit with more room at the forefoot around the ball of the foot and metatarsals.</p>
<p><strong>OVERCURVE</strong></p>
<p>Shoe closure is fast, reliable and secure, powered by a micro-adjustable BOA® IP1 dial in an Overcurve pattern. The Overcurve shoe construction features a staggered collar that wraps around the ankle, tracing the natural alignment of the ankle’s two bony protrusions: the lateral and medial malleoli. The result is an asymmetrical shape, with the throat of the shoe curving over the foot from its outside to its inner side.</p>
<p><strong>R4 OUTSOLE</strong></p>
<p>The moderately stiff R4 outsole strikes a balance between comfort and pedalling efficiency to make it a true all-rounder, featuring a lower profile structurally optimized with a 15% infused carbon fiber composition. The R4 outsole further provides efficient ventilation with internal channelling for effective temperature regulation. The cleat is positioned slightly further towards the heel compared to traditional placement to optimize pedalling efficiency and reduce knee compression, especially suited to aggressively forward aero riding positions.</p>
<p><strong>FEATURES</strong></p>
<ul>
<li>PU laminate over mesh upper</li>
<li>BOA® IP1-B dial closure</li>
<li>R4 outsole – carbon injected nylon, stiffness index 7</li>
<li>Weight: 232 g (size 42- ½ pair)</li>
<li>Sizes: 37-48 (37-47 also in half sizes)</li>
<li>Tempo: versatility road series designed for the most enjoyable riding experience</li>
<li>Intended use: Road cycling - designed and engineered to perform on paved roads, from the smoothest tarmac to the most demanding pavé</li>
</ul>', array['fizik-tempo-r4-overcurve-wide-white-black/1.png', 'fizik-tempo-r4-overcurve-wide-white-black/2.png', 'fizik-tempo-r4-overcurve-wide-white-black/3.png', 'fizik-tempo-r4-overcurve-wide-white-black/4.png', 'fizik-tempo-r4-overcurve-wide-white-black/5.png']::text[], 'new', 6, '2023-07-19'::date, false, false),
  ('fizik-transiro-aeris-ld-r3-adaptive', 'Fizik Transiro Aeris LD R3 Adaptive', 'fizik', 'components', 'saddles', '<p><strong>The new speed of comfort</strong></p><p>The Fizik Aeris LD Adaptive is a lightweight saddle designed for triathlons with a wider nose and 3D-printed Adaptive padding that provides more support and stability in long races when riding in forward leaning, aerodynamic positions.</p><p><strong>Features of the Fizik Transiro Aeris Long Distance R3 Adaptive</strong></p><ul>
<li>compliant &amp; carbon reinforced nylon shell</li>
<li>Adaptive 3D-printed padding</li>
<li>Kium hollow struts</li>
<li>Optimal support in aerodynamic position</li>
<li>Central channel for unparalleled pressure relief</li>
<li>long distance version</li>
</ul><p><strong>Details of the Fizik Transiro Aeris Long Distance R3 Adaptive</strong></p><h4>3D-printed padding</h4><p>Adaptive 3D-printed padding has expanded the Aeris family, creating the perfect combination for those who want exceptional, long-lasting comfort on a triathlon saddle. This saddle is designed with a wider nose to provide more support and stability in the forward leaning, aerodynamic racing position.</p><h4>Customized cushioning</h4><p>The advancement of digital 3D printing makes it possible to develop a saddle without the restrictions or limitations of traditional production methods and materials. The Adaptive saddle padding is manufactured by Carbon using their revolutionary Digital Light Synthesis technology. DLS is an additive manufacturing process that uses digital ultraviolet light, oxygen permeable optics and programmable liquid resins to produce parts with superior mechanical properties, resolution and surface quality.</p><h4>Lab tested &amp; road proven</h4><p>With carbon technology, biomechanists and engineers have an unprecedented opportunity: to design and manufacture multiple functional zones within the saddle, with each zone tuned separately for specific mechanical properties. Each of these key zones is designed for a different cushioning and mechanical response, progressively and seamlessly merging into the same padding. The result? A reduction in peak pressure through improved weight distribution for increased comfort across the entire saddle surface.</p><h4>The customization advantage</h4><p>The long-distance version of the Aeris Adaptive is designed with a wider nose and a long, deep channel that allows for unprecedented pressure relief while maintaining the firm support and balance needed for long hours in aero positions. At the nose, the strut loop provides added strength to prevent asymmetric fatigue while also serving as a hook to hold the bike in transition areas of the race. One of the many benefits of Adaptive technology is that it allows a channel to be integrated instead of a cutout, with a soft central functional zone that improves weight distribution for better pressure relief and increased comfort during longer rides in aero positions. At the same time, the surface of the padding provides a non-slip grip that avoids unnecessary movements that could affect performance.</p><h4>Multiple functions for different disciplines</h4><p>The Aeris comes with an optional connection to integrate a water bottle holder on the back of the saddle. The link is designed to hold bottles at an angle that is out of the way during the critical climbing and descending phases in the transition zones. In compliance with UCI regulations, the Aeris is equipped with a revolutionary rail mount that not only provides a more aerodynamic feel, but also allows for a wide range of adjustment necessary to achieve the ideal riding position to beat the wind. The Aeris R3 Adaptive offers both strength and weight savings through the combination of a ride-ready, carbon-reinforced nylon shell and a hollow Kium brace.</p><p><strong><br></strong></p><p><strong>SPECIFICATIONS</strong></p><ul><li>TRANSIRO AERIS LONG DISTANCE Adaptive R3 135 mm<ul>
<li>
<strong>Length:</strong> 242 mm</li>
<li>
<strong>Width:</strong> 135 mm</li>
<li>
<strong>Height at 75 mm width:</strong> 50 mm</li>
<li>
<strong>Length from nose to 75mm width:</strong> 99 mm</li>
<li>
<strong>Nose Width:</strong> 55 mm</li>
<li>
<strong>Weight:</strong> 220 g</li>
<li>
<strong>Rail:</strong> 7x7 mm Kium</li>
<li>
<strong>Shell Material: </strong>Carbon reinforced nylon shell</li>
</ul>
</li></ul>', array['fizik-transiro-aeris-ld-r3-adaptive/1.webp', 'fizik-transiro-aeris-ld-r3-adaptive/2.webp', 'fizik-transiro-aeris-ld-r3-adaptive/3.webp', 'fizik-transiro-aeris-ld-r3-adaptive/4.webp', 'fizik-transiro-aeris-ld-r3-adaptive/5.webp']::text[], 'new', 1, '2026-03-19'::date, false, false),
  ('fizik-transiro-aeris-ld-r5', 'Fizik Transiro Aeris LD R5', 'fizik', 'components', 'saddles', '<p>Aeris Long Distance is a split-nose triathlon bike saddle designed to provide greater support and stability when riding in forward, aerodynamic racing positions.</p>

<p><strong>THE SCIENCE OF COMFORT &amp; SPEED</strong></p>

<p>Innovation in bike-fitting analysis alongside research on cycling aerodynamics led us to rethink our triathlon and time-trial saddles. In a field where marginal gains are fundamental, being able to provide a saddle that allows comfort in the most extreme aerodynamic positions represents a leap forward in performance achievement.</p>

<p><strong>DESIGNED TO GO THE DISTANCE</strong></p>

<p>The Long-Distance version of Aeris is engineered with a split-nose construction. The independent halves of the nose allow for an unprecedented pressure-relief system while continuing to maintain the firm support and balance needed for long hours spent pushing in aero positions. At the nose, the rail loop provides strength to avoid asymmetrical fatigue while also acting as a hook to hold the bike in place in race transition zones.</p>

<p><strong>SUPPORTING TRI RIDERS</strong></p>

<p>The saddle padding consists of our type-1 formulation—thicker on the nose, where triathletes and time-trialists spend most of their time, and slimmer on the ischial bones to provide a firmer feeling for when riders need to rise from the aero position.</p>

<p><strong>NUMEROUS FEATURES FOR MULTI-DISCIPLINE</strong></p>

<p>Aeris comes with an optional Link to integrate a water-bottle cage to the rear of the saddle. The link is designed to hold bottles at an angle that is out of the way during the critical mounting and dismounting phases at transition zones. Complying with UCI rules, Aeris is equipped with a revolutionary rail insertion that provides a more aero feeling by allowing for a broad range of adjustability, necessary to achieve the ideal forward riding position to beat the wind.</p>
<p><br><br></p>
<ul>
<li>
<strong>Aeris:</strong> Triathlon saddle designed to provide support and stability while in the aerodynamic time-trial position</li>
</ul>

<ul>
<li>
<strong>R5:</strong> Combination of a ride-compliant, carbon-reinforced nylon shell and an S-Alloy rail</li>
</ul>

<ul>
<li>
<strong>Split nose:</strong> The nose is split into two halves for an unprecedented pressure-relief system that maintains the firm support and balance needed for long hours spent pedaling in the aero, time-trial position</li>
</ul>

<ul>
<li>
<strong>Integrated hydration mount:</strong> An optional link serves to integrate a water-bottle cage onto the back of the saddle</li>
</ul>
<p><br><br></p>
<h3><strong>SPECIFICATIONS</strong></h3>
<p><br><br></p>
<ul>
<li>TRANSIRO AERIS LONG DISTANCE R5 135 mm<br><br>
<ul>
<li>
<strong>Length:</strong> 242 mm</li>
</ul>
<br>
<ul>
<li>
<strong>Width:</strong> 135 mm</li>
</ul>
<br>
<ul>
<li>
<strong>Height at 75 mm width:</strong> 50 mm</li>
</ul>
<br>
<ul>
<li>
<strong>Length from nose to 75mm width:</strong> 99 mm</li>
</ul>
<br>
<ul>
<li>
<strong>Nose Width:</strong> 55 mm</li>
</ul>
<br>
<ul>
<li>
<strong>Weight:</strong> 218 g</li>
</ul>
<br>
<ul>
<li>
<strong>Rail:</strong> 7x7 mm</li>
</ul>
<br>
<ul>
<li>
<strong>Aeris Link weight:</strong> 14 g</li>
</ul>
<br><br>
</li>
</ul>', array['fizik-transiro-aeris-ld-r5/1.jpg', 'fizik-transiro-aeris-ld-r5/2.jpg', 'fizik-transiro-aeris-ld-r5/3.jpg', 'fizik-transiro-aeris-ld-r5/4.jpg', 'fizik-transiro-aeris-ld-r5/5.jpg']::text[], 'new', 1, '2024-06-17'::date, false, false),
  ('fizik-transiro-aeris-sd-r5', 'Fizik Transiro Aeris SD R5', 'fizik', 'components', 'saddles', '<p>The Aeris short-distance saddle is designed to encourage maximum stability and support for time trialists and triathletes requiring an optimal platform from which to deliver power while in forward, aerodynamic riding positions.</p><br><p><strong>THE SCIENCE OF COMFORT &amp; SPEED</strong></p><br><p>Innovation in bike-fitting analysis alongside research on cycling aerodynamics led us to rethink our triathlon and time-trial saddles. In a field where marginal gains are fundamental, being able to provide a saddle that allows comfort in the most extreme aerodynamic positions represents a leap forward in performance achievement.</p><br><p><strong>SPRINT TO VICTORY</strong></p><br><p>The Short-Distance version of Aeris has been engineered to provide support and stability for athletes competing in both time trials and short-course, no-draft triathlons. A pressure relief cutout, which progressively transitions into a channeled nose, increases comfort. At the same time, the properly dimensioned nose provides the right level of support and stability to allow riders to produce maximum power while in forward, aerodynamic positions.</p><br><p><strong>SMARTER RIDER SUPPORT</strong></p><br><p>The saddle padding consists of our type-1 formulation—thicker on the nose, where triathletes and time-trialists spend most of their time, and slimmer on the ischial bones to provide a firmer feeling for when riders need to rise from the aero position.</p><br><p><strong>NUMEROUS FEATURES FOR MULTI-DISCIPLINE</strong></p><br><p>Aeris comes with an optional Link to integrate a water-bottle cage to the rear of the saddle. The link is designed to hold bottles at an angle that is out of the way during the critical mounting and dismounting phases at transition zones. Complying with UCI rules, Aeris is equipped with a revolutionary rail insertion that provides a more aero feeling by allowing for a broad range of adjustability, necessary to achieve the ideal forward riding position to beat the wind.</p><br><ul>
<br><li>
<strong>Aeris:</strong> Triathlon saddle designed to provide support and stability while in the aerodynamic time-trial position</li>
<br><li>
<strong>R5:</strong> Combination of a ride-compliant, carbon-reinforced nylon shell and an S-Alloy rail</li>
<br><li>
<strong>Integrated hydration mount:</strong> An optional link serves to integrate a water-bottle cage onto the back of the saddle</li>
<br>
</ul><br><h3><strong>SPECIFICATIONS</strong></h3><br><ul>
<br><li>TRANSIRO AERIS SHORT DISTANCE R5 135 mm<br><ul>
<br><li>
<strong>Length:</strong> 243 mm</li>
<br><li>
<strong>Width:</strong> 135 mm</li>
<br><li>
<strong>Height at 75 mm width:</strong> 51 mm</li>
<br><li>
<strong>Length from nose to 75mm width:</strong> 115 mm</li>
<br><li>
<strong>Nose Width:</strong> 45 mm</li>
<br><li>
<strong>Weight:</strong> 209 g</li>
<br><li>
<strong>Rail:</strong> 7x7 mm</li>
<br><li>
<strong>Aeris Link weight:</strong> 14 g</li>
<br>
</ul>
<br>
</li>
<br>
</ul>', array['fizik-transiro-aeris-sd-r5/1.jpg', 'fizik-transiro-aeris-sd-r5/2.jpg', 'fizik-transiro-aeris-sd-r5/3.jpg', 'fizik-transiro-aeris-sd-r5/4.jpg', 'fizik-transiro-aeris-sd-r5/5.jpg']::text[], 'new', 0, '2024-06-17'::date, false, false),
  ('fizik-vento-argo-00-adaptive-1', 'Fizik Vento Argo 00 Adaptive', 'fizik', 'components', 'saddles', '<p>Our short-nose performance cycling racing saddle featuring 3D-printed padding for zonal cushioning comfort across the entire surface and full-carbon shell and rails to save weight without sacrificing support.</p> <p>Fizik Adaptive 3D-printed padding is finally expanding to the Argo family, creating the perfect match for those who want exceptional, long-lasting comfort on a versatile platform that provides both stability and balance.</p> <h3><strong>3D-PRINTED PADDING</strong></h3> <p>Fizik Adaptive 3D-printed padding has expanded to the Argo family, creating the perfect match for those who want exceptional, long-lasting comfort on a versatile platform that provides both stability and balance.</p> <h3><strong>TAILORED ZONAL CUSHIONING</strong></h3> <p>The evolution of digital 3D printing has allowed us to develop a new saddle without the constraints or limitations imposed by traditional production methods and materials. The Adaptive saddle padding is crafted by Carbon® using their revolutionary Digital Light Synthesis technology. DLS is an additive manufacturing process which uses digital ultraviolet light projection, oxygen permeable optics and programmable liquid resins to produce parts with excellent mechanical properties, resolution and surface finish.</p> <h3><strong>LAB TESTED, ROAD PROVEN</strong></h3> <p>Using Carbon technology, biomechanics and engineers have an unprecedented possibility: to design and manufacture multiple functional zones within the saddle, tuning each of them separately for specific mechanical properties. Each of these key functional zones is engineered for a distinctive cushioning and mechanical response, joined together progressively and seamlessly in the same padding. The result? A 60% reduction in peak pressure through improved weight distribution for increased comfort across the entire saddle surface.</p> <h3><strong>ARGO FOR ALL ROADS</strong></h3> <p>Our most versatile saddle shape, Argo is at home on a variety of bike and surface types. Whether rolling on smooth tarmac or navigating technical terrain, Argo is engineered to help riders find a better posture, putting them in a more planted position for greater stability and improved weight distribution. Additionally, the shorter, drop-nose design provides superior support when adopting a powerful, aerodynamic pedaling position.</p> <h3><strong>DESIGN, TEST, RIDE</strong></h3> <p>To develop the ideal Adaptive comfort zones, we studied the various riding positions and pressure points of professional cyclists and amateur riders alike, both in the fizik labs and out on open roads, gravel tracks and trails. During each development phase, new iterations were carefully tested with great focus put on understanding how pressure patterns change according to different bike geometries, riding positions, and surface types.</p> <h3><strong>FULL CARBON</strong></h3> <p>The 00 is the lightest option in our Argo range, with a lower profile 3D-printed padding combined with an incredibly stiff high-module, full-carbon shell and rails, all tuned for maximum power transfer, without compromising on comfort.</p> <h3><strong>TECHNOLOGIES/SPECIFICATIONS</strong></h3> <ul> <li>
<strong>Adaptive:</strong> Carbon® Digital Light Synthesis™ 3D-printing technology, offering seamlessly engineered zonal cushioning</li> <li>
<strong>Argo:</strong> Versatile short-nose saddle that encourages stability and relieves pressure on sensitive areas</li> <li>
<strong>00:</strong> A combination of a high-module, full-carbon shell and rails for maximum stiffness and minimal weight</li> </ul> <p><strong>ARGO 00 140 - ADAPTIVE</strong></p> <ul> <li>Length: <strong>265 mm</strong>
</li> <li>Width: <strong>140 mm</strong>
</li> <li>Height at 75 mm width: <strong>43 mm</strong>
</li> <li>Length from nose to 75mm width: <strong>114 mm</strong>
</li> <li>Weight: <strong>175 g</strong>
</li> <li>Rail: <strong>7x9 mm</strong>
</li> </ul> <p><strong>ARGO 00 150 - ADAPTIVE</strong></p> <ul> <li>Length: <strong>265 mm</strong>
</li> <li>Width: <strong>150 mm</strong>
</li> <li>Height at 75 mm width: <strong>43 mm</strong>
</li> <li>Length from nose to 75 mm width: <strong>114 mm</strong>
</li> <li>Weight: <strong>186 g</strong>
</li> <li>Rail: <strong>7x9 mm</strong>
</li> </ul>', array['fizik-vento-argo-00-adaptive-1/1.jpg', 'fizik-vento-argo-00-adaptive-1/2.jpg', 'fizik-vento-argo-00-adaptive-1/3.jpg', 'fizik-vento-argo-00-adaptive-1/4.jpg', 'fizik-vento-argo-00-adaptive-1/5.jpg']::text[], 'new', 2, '2024-06-17'::date, false, false),
  ('fizik-vento-argo-r1', 'Fizik Vento Argo R1', 'fizik', 'components', 'saddles', '<p>VENTO ARGO R1 is a performance racing saddle with a short-nose design that improves stability and allows for a more aggressive, aero riding position. Where a traditional saddle shape encourages riders to shift their position frequently for better leverage, Argo puts the rider in a more planted position, making for greater stability and better weight distribution. Vento Argo’s short length allows the rider to sit further forward without placing undue pressure on sensitive tissues. It also features an ergonomic cutout that was developed using detailed pressure analysis and input from medical experts. Argo is our most versatile saddle shape and each version suits different riding styles. As the racing option, Vento Argo has been engineered to deliver a riding feel that suits race bikes with aggressive geometry. The padding is made from fizik’s proprietary Type 1 foam formulation, which has a lower profile and is reactive and springy for instantaneous response and optimal power transfer. The purposeful shape of its design helps you achieve a better riding posture: the dropped nose supports the pubic ramus when the pelvis rotates forward to add power or to get more aero. Argo is a product of the fizik Concepts programme, a cross-disciplinary collaboration of leading industry experts and academics carrying out research and analysis on technology, design, physiology and bike-fitting in search of ways to improve cycling performance.</p>', array['fizik-vento-argo-r1/1.jpg', 'fizik-vento-argo-r1/2.jpg', 'fizik-vento-argo-r1/3.jpg', 'fizik-vento-argo-r1/4.jpg', 'fizik-vento-argo-r1/5.jpg']::text[], 'new', 1, '2021-09-17'::date, false, false),
  ('fizik-vento-argo-r1-adaptive-1', 'Fizik Vento Argo R1 Adaptive', 'fizik', 'components', 'saddles', '<p>An advanced 3D-printed bike saddle with a versatile short-nosed design and lightweight carbon rail system to prioritize comfort, responsiveness and stability across a variety of body types and riding positions.</p> <p>Fizik Adaptive 3D-printed padding is finally expanding to the Argo family, creating the perfect match for those who want exceptional, long-lasting comfort on a versatile platform that provides both stability and balance.</p> <p><strong>3D-PRINTED PADDING</strong></p> <p>The evolution of digital 3D printing has allowed us to develop a new saddle without the constraints or limitations imposed by traditional production methods and materials. The Adaptive saddle padding is crafted by Carbon using their revolutionary Digital Light Synthesis technology. DLS is an additive manufacturing process which uses digital ultraviolet light projection, oxygen permeable optics and programmable liquid resins to produce parts with excellent mechanical properties, resolution, and surface finish.</p> <p><strong>TAILORED ZONAL CUSHIONING</strong></p> <p>Using Carbon technology, biomechanics and engineers have an unprecedented possibility: to design and manufacture multiple functional zones within the saddle, tuning each of them separately for specific mechanical properties. Each of these key functional zones is engineered for a distinctive cushioning and mechanical response, joined together progressively and seamlessly in the same padding. The result? A 60% reduction in peak pressure through improved weight distribution for increased comfort across the entire saddle surface.</p> <p><strong>ARGO FOR ALL ROADS</strong></p> <p>Our most versatile saddle shape, Argo is at home on a variety of bike and surface types. Whether rolling on smooth tarmac or navigating technical terrain, Argo is engineered to help riders find a better posture, putting them in a more planted position for greater stability and improved weight distribution. Additionally, the shorter, drop-nose design provides superior support when adopting a powerful, aerodynamic pedaling position.</p> <p><strong>DESIGN, TEST, RIDE</strong></p> <p>To develop the ideal Adaptive comfort zones, we studied the various riding positions and pressure points of professional cyclists and amateur riders alike, both in the fizik labs and out on open roads, gravel tracks and trails. During each development phase, new iterations were carefully tested with great focus put on understanding how pressure patterns change according to different bike geometries, riding positions, and surface types.</p> <p><strong>LONG-LASTING PERFORMANCE</strong></p> <p>The saddle is very easy to clean. Even with the filthiest road muck, gravel dust, or trail spray, all you need to do is simply hose it off with water. Whatever gets in, comes out. We’ve put it through the most severe tests, simulating accelerated weathering, UV aging and wear resistance by following strict protocols.</p> <ul> <li>
<strong>Adaptive:</strong> Carbon® Digital Light Synthesis™ 3D-printing technology, offering seamlessly engineered zonal cushioning</li> <li>
<strong>Argo:</strong> versatile short-nosed saddle that encourages stability and relieves pressure on soft tissue</li> <li>
<strong>R1:</strong> A combination of a ride-compliant, carbon-reinforced nylon shell and a highly stiff carbon rail</li> </ul> <p><strong>SPECIFICATIONS</strong></p> <ul> <li>140mm <ul> <li>
<strong>Length:</strong> 265 mm</li> <li>
<strong>Width:</strong> 140 mm</li> <li>
<strong>Height at 75 mm width:</strong> 45.5 mm</li> <li>
<strong>Length from nose to 75mm width:</strong> 114 mm</li> <li>
<strong>Weight:</strong> 190 g</li> <li>
<strong>Rail:</strong> 10x7 mm</li> </ul> </li> <li>150mm <ul> <li>
<strong>Length:</strong> 265 mm</li> <li>
<strong>Width:</strong> 150 mm</li> <li>
<strong>Height at 75 mm width:</strong> 45.5 mm</li> <li>
<strong>Length from nose to 75 mm width:</strong> 114 mm</li> <li>
<strong>Weight:</strong> 196 g</li> <li>
<strong>Rail:</strong> 10x7 mm</li> </ul> </li> </ul>', array['fizik-vento-argo-r1-adaptive-1/1.jpg', 'fizik-vento-argo-r1-adaptive-1/2.jpg', 'fizik-vento-argo-r1-adaptive-1/3.jpg', 'fizik-vento-argo-r1-adaptive-1/4.jpg', 'fizik-vento-argo-r1-adaptive-1/5.jpg']::text[], 'new', 1, '2024-06-17'::date, false, false),
  ('fizik-vento-argo-r3', 'Fizik Vento Argo R3', 'fizik', 'components', 'saddles', '<p>VENTO ARGO R3 is a performance racing saddle with a short-nose design that improves stability and allows for a more aggressive, aero riding position. Where a traditional saddle shape encourages riders to shift their position frequently for better leverage, Argo puts the rider in a more planted position, making for greater stability and better weight distribution. Vento Argo’s short length allows the rider to sit further forward without placing undue pressure on sensitive tissues. It also features an ergonomic cutout that was developed using detailed pressure analysis and input from medical experts. Argo is our most versatile saddle shape and each version suits different riding styles. As the racing option, Vento Argo has been engineered to deliver a riding feel that suits race bikes with aggressive geometry. The padding is made from fizik’s proprietary Type 1 foam formulation, which has a lower profile and is reactive and springy for instantaneous response and optimal power transfer.</p>', array['fizik-vento-argo-r3/1.jpg', 'fizik-vento-argo-r3/2.jpg', 'fizik-vento-argo-r3/3.jpg', 'fizik-vento-argo-r3/4.jpg', 'fizik-vento-argo-r3/5.jpg']::text[], 'new', 2, '2021-09-17'::date, false, false),
  ('fizik-vento-argo-r3-adaptive-1', 'Fizik Vento Argo R3 Adaptive', 'fizik', 'components', 'saddles', '<p>Our versatile, short-nosed cycling saddle featuring the revolutionary zonal comfort of 3D-printed cushioning and the high strength-to-weight performance of our Kium hollow rail system.</p> <p>Fizik Adaptive 3D-printed padding is finally expanding to the Argo family, creating the perfect match for those who want exceptional, long-lasting comfort on a versatile platform that provides both stability and balance.</p> <p><strong>3D-PRINTED PADDING</strong></p> <p>The evolution of digital 3D printing has allowed us to develop a new saddle without the constraints or limitations imposed by traditional production methods and materials. The Adaptive saddle padding is crafted by Carbon using their revolutionary Digital Light Synthesis technology. DLS is an additive manufacturing process which uses digital ultraviolet light projection, oxygen permeable optics and programmable liquid resins to produce parts with excellent mechanical properties, resolution, and surface finish.</p> <p><strong>TAILORED ZONAL CUSHIONING</strong></p> <p>Using Carbon technology, biomechanics and engineers have an unprecedented possibility: to design and manufacture multiple functional zones within the saddle, tuning each of them separately for specific mechanical properties. Each of these key functional zones is engineered for a distinctive cushioning and mechanical response, joined together progressively and seamlessly in the same padding. The result? A 60% reduction in peak pressure through improved weight distribution for increased comfort across the entire saddle surface.</p> <p><strong>ARGO FOR ALL ROADS</strong></p> <p>Our most versatile saddle shape, Argo is at home on a variety of bike and surface types. Whether rolling on smooth tarmac or navigating technical terrain, Argo is engineered to help riders find a better posture, putting them in a more planted position for greater stability and improved weight distribution. Additionally, the shorter, drop-nose design provides superior support when adopting a powerful, aerodynamic pedaling position.</p> <p><strong>DESIGN, TEST, RIDE</strong></p> <p>To develop the ideal Adaptive comfort zones, we studied the various riding positions and pressure points of professional cyclists and amateur riders alike, both in the fizik labs and out on open roads, gravel tracks and trails. During each development phase, new iterations were carefully tested with great focus put on understanding how pressure patterns change according to different bike geometries, riding positions, and surface types.</p> <p><strong>LONG-LASTING PERFORMANCE</strong></p> <p>The saddle is very easy to clean. Even with the filthiest road muck, gravel dust, or trail spray, all you need to do is simply hose it off with water. Whatever gets in, comes out. We’ve put it through the most severe tests, simulating accelerated weathering, UV aging and wear resistance by following strict protocols.</p> <ul> <li>
<strong>Adaptive:</strong> Carbon® Digital Light Synthesis™ 3D-printing technology, offering seamlessly engineered zonal cushioning</li> <li>
<strong>Argo:</strong> versatile short-nosed saddle that encourages stability and relieves pressure on soft tissue</li> <li>
<strong>R3:</strong> a combination of a ride-compliant, carbon-reinforced nylon shell and a Kium hollow rail with high strength-to-weight ratio</li> </ul> <p><strong>Specifications</strong></p> <ul> <li>140mm <ul> <li>
<strong>Length:</strong> 265 mm</li> <li>
<strong>Width:</strong> 140 mm</li> <li>
<strong>Height at 75 mm width:</strong> 45.5 mm</li> <li>
<strong>Length from nose to 75mm width:</strong> 114 mm</li> <li>
<strong>Weight:</strong> 224 g</li> <li>
<strong>Rail:</strong> 7x7 mm</li> </ul> </li> <li>150mm <ul> <li>
<strong>Length:</strong> 265 mm</li> <li>
<strong>Width:</strong> 150 mm</li> <li>
<strong>Height at 75 mm width:</strong> 45.5 mm</li> <li>
<strong>Length from nose to 75 mm width:</strong> 114 mm</li> <li>
<strong>Weight:</strong> 230 g</li> <li>
<strong>Rail:</strong> 7x7 mm</li> </ul> </li> </ul>', array['fizik-vento-argo-r3-adaptive-1/1.jpg', 'fizik-vento-argo-r3-adaptive-1/2.jpg', 'fizik-vento-argo-r3-adaptive-1/3.jpg', 'fizik-vento-argo-r3-adaptive-1/4.jpg', 'fizik-vento-argo-r3-adaptive-1/5.jpg']::text[], 'new', 0, '2024-06-17'::date, false, false),
  ('fizik-vento-argo-r5-1', 'Fizik Vento Argo R5', 'fizik', 'components', 'saddles', '<p>A performance racing saddle that combines a ride-compliant carbon-reinforced nylon shell and S-Alloy rails.</p> <p>VENTO ARGO R5 is a performance racing saddle with a short-nose design that improves stability and allows for a more aggressive, aero riding position.</p> <p>Where a traditional saddle shape encourages riders to shift their position frequently for better leverage, Argo puts the rider in a more planted position, making for greater stability and better weight distribution. Vento Argo’s short length allows the rider to sit further forward without placing undue pressure on sensitive tissues.</p> <p>It also features an ergonomic cutout that was developed using detailed pressure analysis and input from medical experts. Argo is our most versatile saddle shape and each version suits different riding styles. As the racing option, Vento Argo has been engineered to deliver a riding feel that suits race bikes with aggressive geometry.</p> <p>The padding is made from fizik’s proprietary Type 1 foam formulation, which has a lower profile and is reactive and springy for instantaneous response and optimal power transfer.</p> <p>The purposeful shape of its design helps you achieve a better riding posture: the dropped nose supports the pubic ramus when the pelvis rotates forward to add power or to get more aero.</p> <p>Argo is a product of the Fizik Concepts programme, a cross-disciplinary collaboration of leading industry experts and academics carrying out research and analysis on technology, design, physiology and bike-fitting in search of ways to improve cycling performance.</p> <ul> <li>
<strong>Vento:</strong> Performance racing series designed in collaboration with professional cyclists</li> <li>
<strong>Argo:</strong> versatile short nose saddle that encourages stability and reliefs pressure on soft tissue area</li> <li>
<strong>R5:</strong> a combination of a ride compliant carbon reinforced nylon shell and an S-Alloy rail</li> <li>
<strong>Type 1 foam:</strong> low profile, reactive and springy for efficent power transfer</li> </ul> <h3>SPECIFICATIONS</h3> <p>VENTO ARGO R5 140 mm</p> <ul> <li>
<strong>Length:</strong> 265 mm</li> <li>
<strong>Width:</strong> 140 mm</li> <li>
<strong>Weight:</strong> 225 g</li> <li>
<strong>Height at 75mm width:</strong> 45 mm</li> <li>
<strong>Length from nose to 75mm width:</strong> 114 mm</li> <li>
<strong>Rail:</strong> 7x7 mm</li> </ul> <p>VENTO ARGO R5 150 mm</p> <ul> <li>
<strong>Length:</strong> 265 mm</li> <li>
<strong>Width:</strong> 150 mm</li> <li>
<strong>Weight:</strong> 232 g</li> <li>
<strong>Height at 75mm width:</strong> 45 mm</li> <li>
<strong>Length from nose to 75mm width:</strong> 114 mm</li> <li>
<strong>Rail:</strong> 7x7 mm</li> </ul>', array['fizik-vento-argo-r5-1/1.jpg', 'fizik-vento-argo-r5-1/2.jpg', 'fizik-vento-argo-r5-1/3.jpg', 'fizik-vento-argo-r5-1/4.jpg', 'fizik-vento-argo-r5-1/5.jpg']::text[], 'new', 2, '2024-06-17'::date, false, false),
  ('ism-pl-1-0-black-l-275-w-135-stainsteel-alloy', 'ISM PL 1.0 Black L-275 / W-135 StainSteel Alloy', 'ism', 'components', 'saddles', '<p><strong>This model is a replacement for our previous Podium model.</strong></p>
<p>The PL 1.0 is the perfect saddle for your high-performance bike. A fresh take on our Breakaway saddle, the PL 1.0 fits into the Performance Long category. It features bold new graphics and all of the comfort you expect from ISM. All of the PL saddles are a full 275mm long and allow for superb fore-aft rider movement. The rear measures 135mm wide – adding support for those that like to roll their hips back while climbing. Like all ISM saddles, the PL 1.0 is nose-less and designed to remove pressure from soft tissue, ensuring maximum blood flow, no genital numbness, and a healthier, more enjoyable ride.</p>
<p><strong>Key features:</strong></p>
<ul>
<li>Long shape allows for fore-aft movement</li>
<li>Wider rear section than our Performance Narrow line</li>
</ul>
<p><strong>Commonly used for:</strong></p>
<ul>
<li>Road bikes</li>
<li>Mountain bikes</li>
</ul>
<p><strong>Tech specs:</strong></p>
<ul>
<li>Category: Performance Long</li>
<li>Length: 275mm</li>
<li>Width: 135mm</li>
<li>Padding: 30-Series Foam and Gel</li>
<li>Rails: Propriety Stainless Steel Alloy Rails</li>
</ul>', array['ism-pl-1-0-black-l-275-w-135-stainsteel-alloy/1.jpg', 'ism-pl-1-0-black-l-275-w-135-stainsteel-alloy/2.jpg', 'ism-pl-1-0-black-l-275-w-135-stainsteel-alloy/3.jpg']::text[], 'new', 1, '2025-08-19'::date, false, false),
  ('ism-pl-1-1-black-l-275-w-135-chromoly-rails', 'ISM PL 1.1 Black L-275 / W-135 Chromoly Rails', 'ism', 'components', 'saddles', '<p><strong>ISMisThis model is a replacement for our previous Prologue model</strong></p>
<p>The PL 1.1 is a new version of our very popular Prologue saddle, with updated racing graphics. Like the other PL models, it features a full 275mm length, and generous 135mm rear section – perfect for riders who rotate back while climbing. Compared to the PL 1.0, the 1.1 has an increased level of padding – ideal for riding in thin triathlon-style shorts, or for anyone who simply wants a softer ride. Like all ISM saddles, the PL 1.1 is nose-less and designed to remove pressure from soft tissue, ensuring maximum blood flow, no genital numbness, and a healthier, more enjoyable ride.</p>
<p><strong>Key features:</strong></p>
<ul>
<li>Long shape allows for fore-aft movement</li>
<li>Wider rear section than Performance Narrow</li>
<li>Most padding available in Performance Long</li>
</ul>
<p><strong>Commonly used for:</strong></p>
<ul>
<li>Gravel bikes</li>
<li>Road bikes</li>
<li>Mountain bikes</li>
</ul>
<p><strong>Tech specs:</strong></p>
<ul>
<li>Category: Performance Long</li>
<li>Length: 275mm</li>
<li>Width: 135mm</li>
<li>Padding: 40-Series Foam and Gel</li>
<li>Rails: Chromoly</li>
</ul>', array['ism-pl-1-1-black-l-275-w-135-chromoly-rails/1.jpg', 'ism-pl-1-1-black-l-275-w-135-chromoly-rails/2.jpg', 'ism-pl-1-1-black-l-275-w-135-chromoly-rails/3.jpg']::text[], 'new', 1, '2026-02-13'::date, false, false),
  ('ism-pn-1-0-black-l-275-w-110-stainsteel-alloy', 'ISM PN 1.0 Black L-275 / W-110 StainSteel Alloy', 'ism', 'components', 'saddles', '<p><strong>This model is a replacement for our previous Attack model</strong></p>
<p>The PN 1.0 is ready to take on any road. With the same chassis as the beloved Attack saddle, the PN 1.0 has a sleek updated look to match any bike. While originally slated as a road bike saddle, it has proven to be equally loved by triathletes and time trialists. Like the other PN saddles, the PN 1.0 is 110mm wide, offering superb thigh and hamstring clearance. This allows for more rider body movement around the seat, and is great for diving into fast corners. Like all ISM saddles, the PN 1.0 is nose-less and designed to remove pressure from soft tissue, ensuring maximum blood flow, no genital numbness, and a healthier, more enjoyable ride.</p>
<p><strong>Key features:</strong></p>
<ul>
<li>Narrow design for maximum thigh clearance</li>
<li>Enables total freedom-of-movement for the rider</li>
</ul>
<p><strong>Commonly used for:</strong></p>
<ul>
<li>Road bikes</li>
<li>Triathlon bikes</li>
<li>Time Trial bikes</li>
</ul>
<p><strong>Tech specs:</strong></p>
<ul>
<li>Category: Performance Narrow</li>
<li>Length: 275mm</li>
<li>Width: 110mm</li>
<li>Padding: 25-Series Foam and Gel</li>
<li>Rails: Proprietary Stainless Steel Alloy</li>
</ul>', array['ism-pn-1-0-black-l-275-w-110-stainsteel-alloy/1.jpg', 'ism-pn-1-0-black-l-275-w-110-stainsteel-alloy/2.jpg', 'ism-pn-1-0-black-l-275-w-110-stainsteel-alloy/3.jpg']::text[], 'new', 1, '2025-08-19'::date, false, false),
  ('ism-pn-1-1-black-l-275-w-110-satin-steel-rails', 'ISM PN 1.1 Black L-275 / W-110 Satin Steel Rails', 'ism', 'components', 'saddles', '<p>The PN 1.1 answers the call for a softer option in our Performance Narrow line. It has 40-series padding, making it a great choice for riding in thin triathlon-style shorts, or for anyone who simply wants a softer ride. Similar to the other PN saddles, the PN 1.1 is 110mm wide, offering superb thigh and hamstring clearance. This allows for more rider body movement around the seat, and is great for diving into fast corners. Like all ISM saddles, the PN 1.1 is nose-less and designed to remove pressure from soft tissue, ensuring maximum blood flow, no genital numbness, and a healthier, more enjoyable ride.</p>
<p><strong>Key features:</strong></p>
<ul>
<li>Narrow design for maximum thigh clearance</li>
<li>Enables total freedom-of-movement for the rider</li>
<li>Same shape as the PN 1.0, with extra padding</li>
</ul>
<p><strong>Commonly used for:</strong></p>
<ul>
<li>Road bikes</li>
<li>Triathlon bikes</li>
<li>Time Trial bikes</li>
</ul>
<p><strong>Tech specs:</strong></p>
<ul>
<li>Category: Performance Narrow</li>
<li>Length: 275mm</li>
<li>Width: 110mm</li>
<li>Padding: 40-Series Foam and Gel</li>
<li>Rails: Satin Steel</li>
</ul>', array['ism-pn-1-1-black-l-275-w-110-satin-steel-rails/1.jpg', 'ism-pn-1-1-black-l-275-w-110-satin-steel-rails/2.jpg', 'ism-pn-1-1-black-l-275-w-110-satin-steel-rails/3.jpg']::text[], 'new', 1, '2026-02-13'::date, false, false),
  ('phenom-comp', 'Phenom Comp', 'specialized', 'components', 'saddles', '<p>The Phenom Comp was designed for comfort and strength over long days on the road or trail. It features a carbon-reinforced shell with outer edges that conform to your body for a near-custom fit. This version, unlike the Expert, has durable Cr-Mo rails for peace of mind, and like the Expert, it has our medium density, Level 2 Padding for ample support and comfort. Likewise, at the tail, you''ll find the Phenom hallmarks of a rounded, anti-snag design, and throughout the saddle, an expertly tuned construction that provides the ideal degree of both stiffness and efficiency.</p>', array['phenom-comp/1.jpg', 'phenom-comp/2.jpg', 'phenom-comp/3.jpg', 'phenom-comp/4.jpg', 'phenom-comp/5.jpg']::text[], 'new', 2, '2024-11-15'::date, false, false),
  ('phenom-comp-with-mimic', 'Phenom Comp With MIMIC', 'specialized', 'components', 'saddles', '<p>For as long as there''ve been saddles, women have been having issues with them. But where some see unsolvable problems, we see practical solutions. With our patented design, MIMIC technology helps create a saddle that perfectly adapts to your body to give you the support you need. And when you combine this technology with the long-nosed, flat profile of the Phenom Comp saddle, with its hollow Cr-Mo rails and Level 2 padding for extra comfort, you get a high-performance saddle that''s designed to help you perform at your best. It still features all of the Body Geometry design characteristics you know and love, so you can be assured of superior, all-day comfort in any ride position.</p>', array['phenom-comp-with-mimic/1.jpg', 'phenom-comp-with-mimic/2.jpg', 'phenom-comp-with-mimic/3.jpg']::text[], 'new', 3, '2024-11-15'::date, false, false),
  ('phenom-expert', 'Phenom Expert', 'specialized', 'components', 'saddles', '<p>The Phenom Expert was designed for comfort and strength over long days on the road or trail. It features a carbon-reinforced shell with outer-edges that conform to your body for a near-custom fit. This version, unlike the Pro, has rugged titanium rails for lightweight durability, it has our medium density, Level 2 Padding for ample support and comfort. Likewise, at the tail, you''ll find the Phenom hallmarks of a rounded, anti-snag design, and throughout the saddle, an expertly-tuned construction that provides the ideal degree of both stiffness and efficiency.</p>', array['phenom-expert/1.jpg', 'phenom-expert/2.jpg', 'phenom-expert/3.jpg', 'phenom-expert/4.jpg', 'phenom-expert/5.jpg']::text[], 'new', 0, '2024-11-15'::date, false, false),
  ('phenom-expert-with-mimic', 'Phenom Expert With MIMIC', 'specialized', 'components', 'saddles', '<p>For as long as there''ve been saddles, women have been having issues with them. But where some see unsolvable problems, we see practical solutions. With our patented design, MIMIC technology helps create a saddle that perfectly adapts to your body to give you the support you need. And when you combine this technology with the long-nosed, flat profile of the Phenom Expert saddle, with its hollow titanium rails and Level 2 padding for extra comfort, you get a high-performance saddle that''s designed to help you perform at your best. It still features all of the Body Geometry design characteristics you know and love, so you can be assured of superior, all-day comfort in any ride position.</p>', array['phenom-expert-with-mimic/1.jpg', 'phenom-expert-with-mimic/2.jpg', 'phenom-expert-with-mimic/3.jpg', 'phenom-expert-with-mimic/4.png']::text[], 'new', 0, '2024-11-15'::date, false, false),
  ('phenom-pro-with-mirror', 'Phenom Pro with Mirror', 'specialized', 'components', 'saddles', '<p>Well known for its long body and flat profile, the Phenom is the shape of choice for many of the best racers in the world, ranging from World Tour riders to World DH Champion, Loïc Bruni. Like every saddle we make, the Phenom Pro with Mirror was ergonomically designed and scientifically proven with our Body Geometry methodology and our Mirror 3D printing — resulting in up to 28% less pressure, right where it counts.</p>', array['phenom-pro-with-mirror/1.jpg', 'phenom-pro-with-mirror/2.jpg', 'phenom-pro-with-mirror/3.jpg', 'phenom-pro-with-mirror/4.png']::text[], 'new', 2, '2025-04-15'::date, false, false),
  ('power-comp', 'Power Comp', 'specialized', 'components', 'saddles', '<p>The Power Comp saddle features a stiff, carbon-reinforced shell and a Body Geometry design that caters to all riders. Where it differs, however, is a matter of rails—Cr-Mo rails to be exact. This means that you sacrifice some weight savings, but otherwise, you receive the same superior performance in all seating positions—especially aggressive ones. Proven through blood flow testing and pressure mapping, and featuring our medium-grade Level 2 PU padding, the extra wide and elongated Body Geometry channel and proper sit bone support provides all-day comfort.</p>', array['power-comp/1.jpg', 'power-comp/2.png']::text[], 'new', 1, '2024-11-15'::date, false, false),
  ('power-comp-with-mimic', 'Power Comp with MIMIC', 'specialized', 'components', 'saddles', '<p>For as long as there''ve been saddles, women have been having issues with them. But where some see unsolvable problems, we see practical solutions. With our patented design, MIMIC technology helps create a saddle that perfectly adapts to your body to give you the support you need. And when you combine this technology with our Power Comp saddle, with its hollow Cr-Mo rails and Level 2 padding for extra comfort, you get a high-performance saddle that''s designed to help you perform at your best. It still features all of the Body Geometry design characteristics you know and love, so you can be assured of superior, all-day comfort in any ride position.</p>', array['power-comp-with-mimic/1.jpg', 'power-comp-with-mimic/2.jpg', 'power-comp-with-mimic/3.jpg', 'power-comp-with-mimic/4.jpg']::text[], 'new', 3, '2024-06-17'::date, false, false),
  ('power-evo-pro-with-mirror', 'Power EVO Pro with Mirror', 'specialized', 'components', 'saddles', '<p>Since ‘97; Body Geometry has delivered on the promise to be one with your bike, through our promise for ergonomically designed and scientifically proven products that improve performance and comfort to unlock human potential. Every saddle we create starts with data, through pressure mapping, anatomical measurement, and real-world testing with pro athletes and everyday riders. Body Geometry shapes are engineered to support the body where it needs it and relieve it where it doesn’t.</p>', array['power-evo-pro-with-mirror/1.webp', 'power-evo-pro-with-mirror/2.webp', 'power-evo-pro-with-mirror/3.webp', 'power-evo-pro-with-mirror/4.png']::text[], 'new', 4, '2026-04-13'::date, false, false),
  ('specialized-power-expert-saddle', 'Power Expert', 'specialized', 'components', 'saddles', '<p> The ultra-light Power Expert saddle is Body Geometry designed for both men and women to have top performance in a more aggressive position. Proven through blood-flow testing and pressure mapping, the extra wide and elongated Body Geometry channel and proper sitbone support allows for all day comfort.</p>

<ul>
<li>Patented Body Geometry design is lab tested for both men and women to assure blood flow to sensitive arteries</li>
<li>Stiff, carbon-reinforced shell for longevity and all-day riding efficiency</li>
<li>Lightweight and supportive PU padding for comfort and support on longer rides</li>
<li>Lightweight and durable hollow titanium rails</li>
<li>Tough, light and water resistant cover</li>
<li>Level 2 padding: Medium density foam; bike feel with additional cushioning</li>
<li>SWAT compatible mounts co-moulded into the saddle base allow for sleek and integrated storage solutions</li>
<li>Size 143mm/ Weight 233g</li>
<li>Size 155mm/ Weight 235g</li>
<li>Size 168mm/ Weight 238g</li>
</ul>', array['specialized-power-expert-saddle/1.jpg']::text[], 'new', 0, '2025-06-19'::date, false, false),
  ('power-expert-with-mirror', 'Power Expert with Mirror', 'specialized', 'components', 'saddles', '<p>The Perfect Reflection of You. The Power Expert with Mirror saddle combines comfort and performance for riders whether they are podium-seeking crushers or everyday cruisers. The Body Geometry designed Power shape with high-tech Mirror inserts provide sit bone-friendly support road to mountain uses. ATTAINABLE TECH: The Power Expert with Mirror saddle provides riders with a significant reduction in pain-causing pressure when compared to it’s foam counterpart, the Power Comp Saddle. Inside the saddle are two tear drop shaped Mirror Technology inserts that target sit bone pressure. Riders around the world will be stoked that the new Expert level Power Saddle with Mirror technology make these benefits more attainable than ever. POWER SHAPE: Our beloved Power shape, with a cutout. The patented Body Geometry design is lab-tested to ensure blood flow to sensitive arteries. Is it a road saddle? Mountain saddle? In short, yes. We hate to say a product works “for everything”; but it does. We believe that performance—in saddle speak—means comfort. And whatever shape and material suits you, will be your highest performing saddle. MIRROR TECHNOLOGY: We developed Mirror technology by 3D printing from a liquid polymer to be a perfect reflection of you. Mirror technology allows for infinite density tuning with a single material, but any material is only as good as the designers and engineers that use it. Thanks to our Body Geometry methodology, Retül data, and decades of experience, the 3D-printed matrix is tuned to support the sit bones across a greater area, creating a hammock effect that lets the saddle support your weight, not the tissue around your sit bones. ANY BODY, EVERY RIDE: We know that every body is different, but the issues facing riders in the saddle are the same — sit bone pressure, scar tissue build-up, and blood flow loss. Using pressure mapping, blind comfort studies, and blood flow studies, Body Geometry and Mirror Saddles don’t just promise to solve these issues for people—we’ve proven they do. Plus, this is the first saddle with Mirror technology in additional sizes (130 and 168). ALL AROUND USE: The Power Expert With Mirror saddle uses the same 3D printed technology as the S-Works Power with Mirror except the Expert has 4-way stretch cover to keep mud and debris out of the nooks and crannies of the Mirror lattice. That dirt-shedding feature, plus super durable, yet light weight hollow titanium rails make the Power Expert with Mirror the smart choice for gravel and mountain riders, in addition to those who stick to paved surfaces.</p>', array['power-expert-with-mirror/1.jpg', 'power-expert-with-mirror/2.jpg', 'power-expert-with-mirror/3.jpg']::text[], 'new', 3, '2024-06-17'::date, false, false),
  ('power-pro-with-mirror', 'Power Pro with Mirror', 'specialized', 'components', 'saddles', '<p>Mirror goes Pro. Our best-reviewed saddle technology, based on two decades of Body Geometry research and development, is now available on the Power Pro saddle. Looking beyond foam, we developed Mirror technology. By 3D printing with a liquid polymer to create an infinitely tunable honeycomb structure, Mirror saddles perfectly reflect your anatomy to keep you comfortable, powerful, and healthy in your unique position. The Power Pro with Mirror starts with our Power shape—beloved by riders worldwide for its extra-wide and elongated Body Geometry channel—and is topped with the exact same Mirror pad as our S-Works Power with Mirror, a patent-pending matrix of 14,000 struts and 7,799 nodes, each of which can be tuned individually to deliver unprecedented sit bone comfort and soft tissue protection. But our Pro-level saddle features titanium rails and a reclaimed carbon fiber base to bring Mirror technology to more riders on more terrain than ever before. The bike may be the most sustainable transportation ever created, but we need to do more. The saddle’s carbon base is built with our all-new reclaimed carbon process. This is our first step on the road to closed-loop production, maximizing efficiency in production and minimizing waste. Using carbon scraps from factory production, combined with injected nylon, we’re building a more sustainable carbon base. With the Power Pro’s titanium rails, Mirror technology is now more durable than ever. It’s so strong that our Mirror technology is now trail-ready, so go ahead and huck that gap. Trail riders have sit bones too, after all. Whether you''re on the road or trail, going up or down, the Power Pro with Mirror will get you there comfortably and quickly. It’s the perfect reflection of you.</p>', array['power-pro-with-mirror/1.jpg', 'power-pro-with-mirror/2.jpg', 'power-pro-with-mirror/3.jpg']::text[], 'new', 2, '2024-06-17'::date, false, false),
  ('rivo-sport', 'Rivo Sport', 'specialized', 'components', 'saddles', '<p>The Rivo Sport utilizes new Air Foam technology with level 4 padding to offer a saddle that looks and feels equally comfortable, ensuring a smooth ride. Based on the successful bridge shape and channel, the Rivo Sport delivers the best elements of the Bridge with added comfort. With the durable PP shell and steel rails, the Rivo Sport is the perfect saddle to take you from point A to point B. Clothes required, chamois optional.</p>', array['rivo-sport/1.jpg', 'rivo-sport/2.jpg', 'rivo-sport/3.jpg', 'rivo-sport/4.png']::text[], 'new', 1, '2025-08-19'::date, false, false),
  ('romin-evo-comp-with-mimic', 'Romin EVO Comp with MIMIC', 'specialized', 'components', 'saddles', '<p>For as long as there''ve been saddles, women have been having issues with them. But where some see unsolvable problems, we see practical solutions. With our patented design, MIMIC technology helps create a saddle that perfectly adapts to your body to give you the support you need. And when you combine this technology with the long-nosed, curved profile of the Romin Evo Comp saddle, with its hollow Cr-Mo rails and Level 2 padding for extra comfort, you get a high-performance saddle that''s designed to help you perform at your best. It still features all of the Body Geometry design characteristics you know and love, so you can be assured of superior, all-day comfort in any ride position.</p>', array['romin-evo-comp-with-mimic/1.jpg', 'romin-evo-comp-with-mimic/2.jpg', 'romin-evo-comp-with-mimic/3.jpg', 'romin-evo-comp-with-mimic/4.png']::text[], 'new', 3, '2024-11-15'::date, false, false),
  ('romin-evo-expert-with-mimic', 'Romin EVO Expert with MIMIC', 'specialized', 'components', 'saddles', '<p>For as long as there''ve been saddles, women have been having issues with them. But where some see unsolvable problems, we see practical solutions. With our patented design, MIMIC technology helps create a saddle that perfectly adapts to your body to give you the support you need. And when you combine this technology with the long-nosed, curved profile of the Romin Evo Expert saddle, with its hollow titanium rails and Level 2 padding for extra comfort, you get a high-performance saddle that''s designed to help you perform at your best. It still features all of the Body Geometry design characteristics you know and love, so you can be assured of superior, all-day comfort in any ride position.</p>', array['romin-evo-expert-with-mimic/1.jpg', 'romin-evo-expert-with-mimic/2.jpg', 'romin-evo-expert-with-mimic/3.jpg', 'romin-evo-expert-with-mimic/4.png']::text[], 'new', 0, '2024-11-15'::date, false, false),
  ('romin-evo-pro-with-mirror', 'Romin EVO Pro with Mirror', 'specialized', 'components', 'saddles', '<p>The Romin EVO Pro with Mirror starts with our Body Geometry methodology and combines this with our game-changing Mirror saddle technology to create an unmatched combination of performance and comfort. The saddle is designed for riders that prefer an agressive, performance inspired position that still protects soft tissue and blood flow. The result? 26% less pressure, right where it counts. PERFORMANCE MEETS COMFORT: The new Romin EVO Pro with Mirror saddle uses the exact same 3D printed pad as the S-Works Romin EVO Pro with Mirror but now comes with a nylon and reclaimed carbon fiber shell and hollow Ti rails. Our Romin EVO has been a favorite for our professional athletes and racers everywhere season after season. Its traditional long shape is designed to relieve pressure in aggressive, race-inspired positions while allowing the rider to slide backward and forward on the saddle to provide the ideal position for tempo climbing or maximum wattage efforts. Now with Mirror technology, the saddle reduces pressure by up to 26% compared to traditional foam saddles, validated with extensive high-resolution pressure mapping studies. It uses a 3D printed matrix with 22,200 struts and 10,700 nodes and features a unique concave shell to deliver our thickest Mirror pad yet. To ensure your fit is dialed, it comes in two widths: 155mm and 143mm. BODY GEOMETRY AND MIRROR: We know that every body is different, but the issues facing riders in the saddle are the same — sit bone pain, scar tissue build-up, and blood flow loss. Using pressure mapping, blind comfort studies, and even penile blood flow studies (yeah, we did that), Body Geometry and Mirror Saddles don’t just promise to solve these issues for men and women — we’ve proved they do. Unlike traditional single-density foam, Mirror technology allows for infinite density tuning with a single material. But any material is only as good as the designers and engineers that use it. Thanks to our Body Geometry methodology, Retül data, and decades of experience, the 3D-printed matrix is tuned to support the sit bones across a greater area, creating a hammock effect that lets the saddle support your weight, not the tissue around your sit bones. DURABILITY AND SUSTAINABILITY: By using reclaimed carbon fiber in the shell, we’re keeping scrap carbon fiber out of landfills while creating a light and durable saddle. Add to this hollow Ti rails, and you’ve got a saddle light enough for performance road and XC riding - just 243 grams in a 143 mm width — and tough enough for gravel and trail riding.</p>', array['romin-evo-pro-with-mirror/1.jpg', 'romin-evo-pro-with-mirror/2.jpg', 'romin-evo-pro-with-mirror/3.jpg']::text[], 'new', 2, '2024-11-15'::date, false, false),
  ('s-works-phenom-with-mirror', 'S-Works Phenom with Mirror', 's-works', 'components', 'saddles', '<p>Well known for its long body and flat profile, the Phenom is the shape of choice for many of the best racers in the world, ranging from Tour of Flanders winner Kasper Asgreen to World DH Champion Loic Bruni. Like every saddle we make, the S-Works Phenom with Mirror was ergonomically designed and scientifically proven - our Body Geometry methodology - combined with our Mirror 3D printing - resulting in 28% less pressure, right where it counts. BODY GEOMETRY: We know that every body is different, but the issues facing riders in the saddle are the same — sit bone pressure, scar tissue build-up, and blood flow loss. Using pressure mapping, blind comfort studies, and even penile blood flow studies (yeah, we did that), Body Geometry and Mirror Saddles don’t just promise to solve these issues for men and women — we’ve scientifically proven they do. SOFT TISSUE RELIEF: Using a concave shape and ultra-compliant carbon shell, we’ve created a space for a thicker Mirror print, using 20,055 struts and 8,735 nodes - resulting in a 28% reduction in sit bone pressure compared to a traditional foam saddle, measured by our ultra high-resolution pressure mapping. PERFORMANCE-INSPIRED SHAPING: Being our longest and flattest saddle from tail to nose, the S-Works Phenom with Mirror’s shape and construction enables maximum movement for optimal positioning for power - enabling riders to easily adjust their position on the saddle for tempo efforts and supports riders movement in and out of the saddle on climbs.</p>', array['s-works-phenom-with-mirror/1.jpg', 's-works-phenom-with-mirror/2.jpg', 's-works-phenom-with-mirror/3.jpg', 's-works-phenom-with-mirror/4.png']::text[], 'new', 2, '2024-11-15'::date, false, false),
  ('s-works-power', 'S-Works Power', 's-works', 'components', 'saddles', '<p>The extremely lightweight S-Works Power saddle has a stiff, FACT carbon shell and rails, and is a high-performance saddle that''s designed to help you perform at your best. Its Body Geometry design, with our lightest level of padding, caters to both men and women, and helps deliver superior performance in all seating positions. Proven through blood flow testing and pressure mapping, the extra wide and elongated Body Geometry channel and proper sit bone support provides all day comfort.</p>', array['s-works-power/1.jpg', 's-works-power/2.jpg', 's-works-power/3.jpg', 's-works-power/4.jpg', 's-works-power/5.jpg']::text[], 'new', 2, '2024-11-15'::date, false, false),
  ('s-works-power-evo-with-mirror', 'S-Works Power EVO with Mirror', 's-works', 'components', 'saddles', '<p>Get out of the pain cave and into your power positions with the S-Works Power EVO with Mirror, the most comfortable, high-performance saddle we’ve ever measured. Engineered for dynamic riders who move front to back, it uses Body Geometry science and elite rider insights for unrivaled comfort and performance offering 34.1% less nose pressure and 28.8% less sit bone pressure vs. foam saddles, plus 18% less midline pressure vs. Power Mirror. Power EVO supports you in every position.</p>', array['s-works-power-evo-with-mirror/1.jpg', 's-works-power-evo-with-mirror/2.jpg', 's-works-power-evo-with-mirror/3.jpg', 's-works-power-evo-with-mirror/4.png']::text[], 'new', 3, '2025-07-10'::date, false, false),
  ('s-works-power-with-mirror', 'S-Works Power with Mirror', 's-works', 'components', 'saddles', '<p>The S-works Power with Mirror technology is the perfect reflection of you. We’re redefining comfort and performance with Mirror technology to take Body Geometry into the future. The last big material innovation in saddle design happened decades ago with the introduction of foam. To develop a next-generation saddle, we had to look beyond foam and develop a next-generation technology. The S-Works Power Saddle with Mirror is the future. We developed Mirror technology by 3D printing from a liquid polymer to perfectly reflect your anatomy. This revolutionary process creates a complex honeycomb structure that allows us to infinitely tune the material’s density in a way impossible with foam. The result is a patent-pending matrix of 14,000 struts and 7,799 nodes, each of which can be tuned individually. And when you combine this technology with our extremely lightweight S-Works Power saddle, with its flexed-tuned FACT carbon shell and ultra-light rails, you get a high-performance saddle that''s designed to help you perform at your best. It features all of the Body Geometry design characteristics you know and love, so you can be assured of superior, all-day comfort for your unique position.</p>', array['s-works-power-with-mirror/1.jpg', 's-works-power-with-mirror/2.jpg', 's-works-power-with-mirror/3.jpg', 's-works-power-with-mirror/4.jpg', 's-works-power-with-mirror/5.jpg']::text[], 'new', 2, '2024-06-17'::date, false, false),
  ('s-works-romin-evo-with-mirror', 'S-Works Romin EVO with Mirror', 's-works', 'components', 'saddles', '<p>Our pro-favorite S-Works Romin EVO with Mirror saddle is designed to deliver exceptional comfort and ensure blood flow to soft tissue when riding in a low, aero position. By replacing foam with our Mirror technology, we’ve also reduced sit bone pressure up to 26%. We developed Mirror technology by 3D printing from a liquid polymer to perfectly reflect your anatomy. This revolutionary process creates a complex honeycomb structure that allows us to infinitely tune the material’s density in a way impossible with foam. The Body Geometry ergonomic supportive cut-out is designed to maximize blood flow, while the unique saddle shape allows you to maintain comfort, even in a competitive, aerodynamic position. Our very first concave FACT carbon fiber shell enabled us to create our thickest Mirror pad ever with 22,200 struts and 10,700 nodes, while oversized carbon rails create a saddle that''s ready for anything. The carbon-railed, lightweight S-Works Romin EVO with Mirror is a high-performance saddle that''s designed to put you in a position for optimal power transfer and comfort as you put pressure on your competition.</p>', array['s-works-romin-evo-with-mirror/1.jpg', 's-works-romin-evo-with-mirror/2.jpg', 's-works-romin-evo-with-mirror/3.jpg', 's-works-romin-evo-with-mirror/4.png']::text[], 'new', 2, '2024-06-17'::date, false, false),
  ('selle-italia-model-x-superflow-saddle', 'Selle Italia Model X Superflow Saddle', 'selle-italia', 'components', 'saddles', '<p>The Selle Italia Model X, is a revolutionary saddle designed to be made as sustainably as possibly.</p>
<p>Selle Italia instead of relocating production to contain costs, it has designed, built and patented a new production process, which has allowed the development of an Italian product at a competitive price.</p>
<p>Model X is in fact made with a fully automated production process: the product is made of polypropylene and all the various components of the saddle are assembled without the use of glue materials. The result is a product optimized in terms of comfort and quality level, 100% Made in Italy.</p>
<p>The Model X is 145mm wide with a Soft-Tek cover to resist scratches and scrapes. The polypropylene rails add to the comfort factor. With a central channel providing flex on the wings, the saddle will spread the rider''s weight evenly whilst relieving pressure. It is an ideal saddle for all round riding. gravel and day to day use.</p>', array['selle-italia-model-x-superflow-saddle/1.webp', 'selle-italia-model-x-superflow-saddle/2.webp']::text[], 'new', 1, '2026-06-23'::date, false, false),
  ('sitero', 'Sitero', 'specialized', 'components', 'saddles', '<p>Designed with our Retül fit specialists, doctors, and engineers, the Sitero is the best-fitting saddle for aerodynamic time trial positions. A wide channel, progressive shape, level 2 padding and multiple width options provide optimal comfort and support for long distance rides in an aerodynamic position. And to further ensure that this is the best Triathlon/Time Trial saddle on the market, it features hollow Chromoly rails and SWAT™ mounts that allow for aerodynamic storage of your ride essentials.</p>', array['sitero/1.jpg', 'sitero/2.jpg', 'sitero/3.jpg', 'sitero/4.png']::text[], 'new', 0, '2025-08-19'::date, false, false),

  -- ---- components · seatposts ----
  ('s-works-rapide-post', 'S-Works Rapide Post', 's-works', 'components', 'seatposts', '<p>The S-Works Rapide Post is engineered to reduce drag where airflow is highest. Using our Moving Leg Mannequin, we discovered pedaling drives high speed air directly onto the post, making it a critical aero surface. A deeper profile with reduced frontal area and our thinnest section ever in this zone delivers cleaner flow and improved aero performance, while our refined FACT carbon layup preserves balanced compliance for all day comfort.</p>', array['s-works-rapide-post/1.webp', 's-works-rapide-post/2.webp', 's-works-rapide-post/3.png']::text[], 'new', 2, '2026-07-09'::date, false, false),

  -- ---- components · stems ----
  ('3t-apto-team-stealth-6-deg', '3T Apto Team Stealth +/-6 deg', '3t', 'components', 'stems', '<p>A stem may not seem to be the most exciting bike part, but it is in our DNA to care about it in great detail. After all, no other part has such a big effect on your riding position and thus your speed, comfort and enjoyment. With the APTO, 60 years of innovation and elegance in 3T stem design come together in a moving sculpture.</p> <p><strong>BARFLY COMPATIBLE:</strong> The Apto Stealth stem is compatible with the Bar Fly Race Direct GPS mount.</p> <p><strong>STEERER CLAMP:</strong> Double bolts hold the steerer securely and provide redundancy for extra safety.</p> <p><strong>REVERSE FACEPLATE BOLTS:</strong> These clean up the faceplate for a more elegant design, in particular in combination with our new drop bars.</p> <p><strong>CLASSIC RUBBER LOGO:</strong> The 3D rubber logo is a nod to the iconic 3T stems of yesteryear.</p> <p><strong>DIMENSIONS &amp; WEIGHTS</strong></p> <table> <tbody> <tr> <td>L1 Length (mm)</td> <td><strong>70</strong></td> <td><strong>80</strong></td> <td><strong>90</strong></td> <td><strong>100</strong></td> <td><strong>110</strong></td> <td><strong>120</strong></td> <td><strong>130</strong></td> </tr> <tr> <td>A1 Angle (degrees)</td> <td>+/-6</td> <td>+/-6</td> <td>+/-6</td> <td>+/-6</td> <td>+/-6</td> <td>+/-6</td> <td>+/-6</td> </tr> <tr> <td>S1 Stack (mm)</td> <td>40</td> <td>40</td> <td>40</td> <td>40</td> <td>40</td> <td>40</td> <td>40</td> </tr> <tr> <td>Weight (g)</td> <td>129</td> <td>136</td> <td>141</td> <td>149</td> <td>156</td> <td>161</td> <td>169</td> </tr> </tbody> </table> <p><strong>SPECIFICATIONS</strong></p> <table> <tbody> <tr> <td><strong>Material</strong></td> <td>Alloy 6061</td> </tr> <tr> <td><strong>Steerer diameter</strong></td> <td>28.6mm (1 1/8”)</td> </tr> <tr> <td><strong>Handlebar diameter</strong></td> <td>31.8mm</td> </tr> <tr> <td><strong>Key size</strong></td> <td>4mm Allen key</td> </tr> <tr> <td><strong>Steerer bolt torque</strong></td> <td>5Nm</td> </tr> <tr> <td><strong>Faceplate bolt torque</strong></td> <td>5Nm</td> </tr> <tr> <td><strong>Finish</strong></td> <td>Stealth Black</td> </tr> </tbody> </table>', array['3t-apto-team-stealth-6-deg/1.jpg', '3t-apto-team-stealth-6-deg/2.jpg', '3t-apto-team-stealth-6-deg/3.jpg', '3t-apto-team-stealth-6-deg/4.jpg']::text[], 'new', 3, '2023-07-19'::date, false, false),
  ('propltroadstem', 'Pro PLT Road Stem', 'pro', 'components', 'stems', '<p>PRO parts are born from a collaboration between our expert product engineers and the needs of the world’s leading cyclists.</p>

<p><strong>FEATURES:</strong></p>
<ul>
<li>3D forged AL-2014 construction</li>
<li>Sizes: 50 - 130mm, ±10° angle</li>
<li>Suitable for 1-1/8" forks</li>
<li>Diameter handlebar clamp: 31.8mm</li>
<li>Headlock system for a secure front clamp fixation</li>
</ul>', array['propltroadstem/1.jpg']::text[], 'new', 0, '2024-08-08'::date, false, false),
  ('redshift-shockstop-suspension-stem-6-deg', 'Redshift Shockstop Suspension Stem +/- 6 deg', 'redshift', 'components', 'stems', '<p>The patented ShockStop Suspension Stem smooths out road imperfections, reducing fatigue and strain. Whether you''re on a local group ride, or exploring gravel back roads, the ShockStop Stem will make your ride smoother, faster, and more comfortable.</p> <p>The minimal design of the ShockStop Stem blends seamlessly with the aesthetic of modern bikes, while reducing fatigue and strain. Along with the ShockStop Suspension Seatpost, this system works together to suspend the rider and smooth out rough terrain on the bike you already own, making your ride smoother, faster, and more comfortable.</p> <h4>Benefits:</h4> <p>• Go further - reduce fatigue from bumps and vibrations</p> <p>• Ride faster - energy that is normally wasted suspending your body is converted into forward motion</p> <p>• Take control - customize your suspension feel to float over obstacles and maintain control over rough terrain</p> <h4>Details:</h4> <p>• +/-6 degree in 80mm, 90mm, 100mm, 110mm, and 120mm lengths<br>• Effective suspension travel:<br> - Up to 20mm<br>• Includes 5 swappable elastomers to fine tune your riding style<br>• Check technical specs for compatibility</p> <h4>What''s in the Box:</h4> <p>• 1 x ShockStop Stem<br>• 5 x swappable elastomers (2 pre-installed, 3 additional in box)<br>• All required hardware</p>', array['redshift-shockstop-suspension-stem-6-deg/1.png', 'redshift-shockstop-suspension-stem-6-deg/2.jpg', 'redshift-shockstop-suspension-stem-6-deg/3.jpg', 'redshift-shockstop-suspension-stem-6-deg/4.jpg', 'redshift-shockstop-suspension-stem-6-deg/5.jpg']::text[], 'new', 3, '2021-08-30'::date, false, false),
  ('redshift-shockstop-suspension-stem-30-deg', 'Redshift Shockstop Suspension Stem +30 deg', 'redshift', 'components', 'stems', '<p>The patented ShockStop Suspension Stem smooths out road imperfections, reducing fatigue and strain. Whether you''re on a local group ride, or exploring gravel back roads, the ShockStop Stem will make your ride smoother, faster, and more comfortable.</p> <p>The minimal design of the ShockStop Stem blends seamlessly with the aesthetic of modern bikes, while reducing fatigue and strain. Along with the ShockStop Suspension Seatpost, this system works together to suspend the rider and smooth out rough terrain on the bike you already own, making your ride smoother, faster, and more comfortable.</p> <h4>Benefits:</h4> <p>• Go further - reduce fatigue from bumps and vibrations</p> <p>• Ride faster - energy that is normally wasted suspending your body is converted into forward motion</p> <p>• Take control - customize your suspension feel to float over obstacles and maintain control over rough terrain</p> <h4>Details:</h4> <p>• +30 degree high-rise version in 100mm length only <br>• Effective suspension travel:<br> - Up to 20mm<br>• Includes 5 swappable elastomers to fine tune your riding style<br>• Check technical specs for compatibility</p> <h4>What''s in the Box:</h4> <p>• 1 x ShockStop Stem<br>• 5 x swappable elastomers (2 pre-installed, 3 additional in box)<br>• All required hardware</p>', array['redshift-shockstop-suspension-stem-30-deg/1.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('specialized-s-works-tarmac-sl7-stem', 'Specialized S-Works Tarmac SL7 Stem', 'specialized', 'components', 'stems', '<p>Lean and clean. The lightweight and stiff S-Works Tarmac Stem features integrated cable routing for Tarmac SL7 models to clean up the cockpit without complicating the bike build. Specialized S-Works Tarmac SL7 Stem</p>', array['specialized-s-works-tarmac-sl7-stem/1.jpg']::text[], 'new', 6, '2023-05-22'::date, false, false),
  ('thomson-x4-0d-31-8-clamp-stem', 'THOMSON - X4 0° 31.8 CLAMP STEM', 'thomson', 'components', 'stems', '<p>Too many modern mountain bike stems sacrifice strength and torsional stiffness for a few grams of saved weight. The Thomson X4 is the leader in strength and stiffness.</p>
<p>The Thomson X4 stem allows you to realize the benefits of stiffer forks and stiffer 31.8 bars. X4 offers precise steering, tracking, and more control while riding, all wrapped up in a beautiful design.</p>', array['thomson-x4-0d-31-8-clamp-stem/1.jpg']::text[], 'new', 8, '2021-09-11'::date, false, false),
  ('thomson-x4-10d-31-8-clamp-stem', 'THOMSON - X4 10° 31.8 CLAMP STEM', 'thomson', 'components', 'stems', '<p>Too many modern mountain bike stems sacrifice strength and torsional stiffness for a few grams of saved weight. The Thomson X4 is the leader in strength and stiffness.</p>
<p>The Thomson X4 stem allows you to realize the benefits of stiffer forks and stiffer 31.8 bars. X4 offers precise steering, tracking, and more control while riding, all wrapped up in a beautiful design.</p>', array['thomson-x4-10d-31-8-clamp-stem/1.jpg']::text[], 'new', 8, '2021-09-11'::date, false, false),
  ('thomson-x4-35-clamp-stem', 'THOMSON - X4 35 CLAMP STEM', 'thomson', 'components', 'stems', '<p>The X4 is absolutely the best combination of strength and weight available. Enduro and downhill riders can run Thomson confidently. X4 offers precise steering and tracking for the ultimate in control while riding. 32mm, 40mm, and 50mm stems are available in block style only.<br><br> The Thomson 35mm X4 stem allows you to realize the benefits of stiffer forks and stiffer 35mm bars. X4 offers precise steering, tracking, and more control while riding, all wrapped up in a beautiful design.</p>', array['thomson-x4-35-clamp-stem/1.jpg', 'thomson-x4-35-clamp-stem/2.jpg', 'thomson-x4-35-clamp-stem/3.jpg']::text[], 'new', 3, '2021-09-11'::date, false, false),
  ('thomson-x4-40-50-60mm-31-8-clamp-stem', 'THOMSON - X4 40/50/60MM 31.8 CLAMP STEM', 'thomson', 'components', 'stems', '<p>Too many modern mountain bike stems sacrifice strength and torsional stiffness for a few grams of saved weight. The Thomson X4 is the leader in strength and stiffness.</p>
<p>The Thomson X4 stem allows you to realize the benefits of stiffer forks and stiffer 31.8 bars. X4 offers precise steering, tracking, and more control while riding, all wrapped up in a beautiful design.</p>', array['thomson-x4-40-50-60mm-31-8-clamp-stem/1.jpg']::text[], 'new', 2, '2021-09-11'::date, false, false),

  -- ---- electronics · bike-computers ----
  ('garmin-edge-1040', 'Garmin Edge 1040', 'garmin', 'electronics', 'bike-computers', '<h3>PACKED WITH PERFORMANCE FEATURES</h3>

<p>Never stop cycling with the ultimate GPS bike computer you can depend on when you need it most. Edge 1040 is ready for any ride, from remote gravel trails to epic climbs.</p>

<h3></h3>
<p>Go deep. Dense tree cover and the urban canyon are no match for its spot-on accuracy with multi-band GNSS.</p>

<h3></h3>
<p>Ride farther, charge less. Get up to 35 hours of battery life in demanding use plus up to 70 hours in battery saver mode.</p>

<h3></h3>
<p>Your cycling ability1 and the course demands help you understand your strengths and weaknesses.</p>

<h3></h3>
<p>Ride like a local with ride type-specific maps and navigation.</p>

<h3></h3>
<p>Can’t wait to ride? You’re in luck. Take this Edge device out of the box, and you’ll be riding in no time.</p>

<h3></h3>
<p>Know how much is left in your tank with stamina1 insights.</p>
<h3>Handheld Only</h3>
<ul>
<li>Edge® 1040</li>
<li>Mounts (standard and out-front)</li>
<li>USB cable</li>
<li>Tether</li>
<li>Documentation</li>
</ul>
<h3>Bundle</h3>
<ul>
<li>Edge® 1040</li>
<li>Speed and cadence sensor</li>
<li>HRM-Dual™ Monitor</li>
<li>Mounts (standard and out-front)</li>
<li>USB cable</li>
<li>Tether</li>
<li>Documentation</li>
</ul>', array['garmin-edge-1040/1.jpg']::text[], 'new', 2, '2022-08-16'::date, false, false),
  ('garmin-edge-1040-solar', 'Garmin Edge 1040 Solar', 'garmin', 'electronics', 'bike-computers', '<h3>POWERED BY THE SUN</h3>

<p>Never stop cycling with the ultimate solar powered GPS bike computer you can depend on when you need it most. is ready for any ride, from remote gravel trails to epic climbs.</p>

<h3><br></h3>
<p>Keep on pushing. Power Glass™ solar charging1 extends battery life up to 42 minutes per hour in battery saver mode.</p>

<h3><br></h3>
<p>Ride farther, charge less. With solar charging, get up to 45 hours of battery life in demanding use cases and up to 100 hours in battery saver mode1.</p>

<h3><br></h3>
<p>Go deep. Dense tree cover and the urban canyon are no match for its spot-on accuracy with multi-band GNSS.</p>

<h3><br></h3>
<p>Your cycling ability2 and the course demands help you understand your strengths and weaknesses.</p>

<h3><br></h3>
<p>Ride like a local with ride type-specific maps and navigation.</p>

<h3><br></h3>
<p>Know how much is left in your tank with stamina2 insights.</p>

<p>In the box:</p>

<ul>
<li>Edge® 1040 Solar</li>
<li>Black silicone case</li>
<li>Mounts (MTB, standard and out-front)</li>
<li>USB cable</li>
<li>Tether</li>
<li>Documentation</li>
</ul>', array['garmin-edge-1040-solar/1.jpg']::text[], 'new', 1, '2022-08-01'::date, false, false),
  ('garmin-edge-1050', 'Garmin Edge 1050', 'garmin', 'electronics', 'bike-computers', '<p>The premium Edge® 1050 cycling computer features a vivid colour touchscreen display so you can see your maps and stats in stunning detail. And to make sure you never stop cycling, it has up to 20 hours of battery life in the most demanding use cases and up to 60 hours in battery saver mode. Get alerts for road hazards reported by fellow cyclists, and for group rides, see in-ride messaging, leaderboards and more when used with your compatible smartphone and the Garmin Connect™ app. When it’s time to focus on individual training for a race or personal goal, Edge 1050 delivers. It works seamlessly with our free Garmin training plans for cyclists. Event adaptive training delivers personalised workouts that adapt to your performance, recovery and more when riding with your compatible power meter and heart rate monitor. A built-in speaker delivers clear workout and navigation prompts plus a bike bell so you can alert riders and pedestrians. This cycling computer also has Garmin Pay™ contactless payments (with a supported bank), making that post-ride latte a little sweeter. </p>
<p><strong>Features:</strong></p>
<ul>
<li>Premium GPS cycling computer with vivid colour touchscreen display combines superior navigation, planning and performance tracking, cycling awareness and smart connectivity</li>
<li>Battery life: In demanding use cases, get up to 20 hours, or get up to 60 hours in battery saver mode</li>
<li>Get alerts for road hazards reported by fellow cyclists, and contribute your own edits (when used with your compatible smartphone)</li>
<li>Easily create courses right on the device by using the responsive touchscreen, and see road surface type on the map for more awareness while planning and riding</li>
<li>When used with your compatible smartphone and the Garmin Connect™ app, stay connected on group rides with in-ride messaging, live locations and incident detection alerts; plus, add fun and competition with in-ride leaderboards for climbs and post-ride awards</li>
<li>Hear workout and navigation prompts, and alert riders and pedestrians with a loud on-device bike bell, thanks to a built-in speaker</li>
<li>Make purchases on the go with Garmin Pay™ contactless payments (with a supported bank)</li>
<li>View workouts customised to your event or goal, and get personalised coaching that adapts to your current training load and recovery when riding with your compatible power meter and heart rate monitor</li>
<li>See remaining ascent and grade when climbing on every ride so you can gauge your effort with the ClimbPro ascent planner</li>
<li>Manage your efforts with the power guide feature, which recommends power targets throughout a course; and now, power guide incorporates real-time stamina and wind to adjust your targets while you ride, when paired with your compatible power meter</li>
<li>Get stamina insights while you ride, so you can keep an eye on how much longer you can really push it, when paired with your compatible power meter and heart rate monitor</li>
<li>Map manager with Wi-Fi® connectivity allows you to add, swap or update maps on your device </li>
</ul>

<h3>VIVID COLOUR DISPLAY</h3>
<p>See your stats and maps in greater detail than ever before with a vivid colour touchscreen display and new ways to view your data.</p>

<h3>BATTERY THAT’S READY FOR THE RIDE</h3>
<p>In demanding use cases, get up to 20 hours, or get up to 60 hours in battery saver mode.</p>

<h3>ROAD HAZARD ALERTS</h3>
<p>Get alerts for road hazards reported by fellow cyclists, and contribute your own edits1.</p>

<h3>GROUPRIDE</h3>
<p>Stay connected on group rides1 with in-ride messaging, live locations and incident detection alerts2; plus, add fun and competition with in-ride leaderboards for climbs and postride awards.</p>

<h3>EVENT ADAPTIVE TRAINING</h3>
<p>When it’s time to focus on training, Edge 1050 delivers. It works seamlessly with our free Garmin training plans for cyclists. Event adaptive training delivers personalised workouts that adapt to your performance and recovery3.</p>

<h3>BUILT-IN SPEAKER</h3>
<p>Hear workout and navigation verbal prompts, and alert riders and pedestrians ahead of you with a loud on-device bike bell.</p>', array['garmin-edge-1050/1.jpg']::text[], 'new', 1, '2024-06-26'::date, false, false),
  ('garminedge130plus', 'Garmin Edge 130 Plus', 'garmin', 'electronics', 'bike-computers', '<p>MAKE EVERY RIDE COUNT</p>
<p>Never stop cycling with this compact GPS bike computer. Whether you ride to explore new trails or to save the planet in your daily commute, go with Edge 130 Plus.</p>
<p>ADVANCED WORKOUTS</p>
<p>Sync workouts from your Garmin Connect™ account and others such as TrainingPeaks®, right to your Edge device. View your upcoming training and launch into the relevant workout seamlessly.</p>
<p>PERFORMANCE MONITORING</p>
<p>Improve your fitness with dynamic performance insights such as VO2 max, heart rate4 and more.</p>

<p>CLIMBPRO FEATURE</p>
<p>Automatically see the remaining ascent and grade when you’re climbing while following a route or course. This helps you gauge your effort and see how much you have left to suffer.</p>
<p>MULTI-GNSS</p>
<p>Edge 130 Plus uses multiple satellite systems (GPS, GLONASS and Galileo) to track in more challenging environments than GPS alone. A built-in altimeter also shows how high you’ve ridden.</p>
<p>EASY NAVIGATION</p>
<p>Stay on track with turn prompts, plus a breadcrumb map to see where you’ve been and where you’re going. At the end of the ride, Edge 130 Plus can even direct you back to your starting location.</p>
<p>CRISP, CLEAR SCREEN</p>
<p>See your directions on a 1.8-inch display that’s sharp and easy to read in direct sunlight or low-light conditions.</p>
<p>VARIA™ COMPATIBILITY</p>
<p>Pair the Edge 130 Plus with our Varia rearview radar and lights so you can easily see and be seen.</p>
<p>INCIDENT DETECTION</p>
<p>This Edge automatically sends your location to preloaded emergency contacts if it detects an incident1.</p>
<p>SMART NOTIFICATIONS</p>
<p>Receive texts and alerts right on your Edge, when paired with a compatible smartphone.</p>
<p>CONNECT IQ™</p>
<p>Download custom data fields from our Connect IQ Store to see more of your stats at a glance.</p>
<p>SYNC WITH GARMIN CONNECT</p>
<p>The Garmin Connect app is home to a thriving online community where people on the go can connect and compete — and even share their triumphs via social media.</p>
<p>SMART TRAINER COMPATIBILITY</p>
<p>Coming soon, pair Edge 130 Plus with your Tacx® indoor trainer so you can ride when you want and where you want.</p>
<p>Features</p>
<ul>
<li>No more excuses. Wirelessly sync workouts right to your Edge device.</li>
<li>Are we there yet? The ClimbPro feature helps you gauge your effort on a hilly route.</li>
<li>Know where to go. Thanks to easy-to-follow navigation with turn prompts.</li>
<li>Extra awareness and incident detection1. Peace of mind for you and your fans back home.</li>
<li>Stay in touch while you’re on your bike with a variety of connected features2.</li>
<li>Get more from every charge — up to 12 hours of battery life in GPS mode3.</li>
<li>
</li>
</ul>
<h3>Standard (Device Only)</h3>
<ul>
<li>Edge® 130 Plus</li>
<li>Standard Mount</li>
<li>USB cable</li>
<li>Tether</li>
<li>Manuals</li>
</ul>
<h3>Bundle</h3>
<ul>
<li>Edge® 130 Plus</li>
<li><a href="https://buy.garmin.com/en-GB/GB/p/649059/" rel="noopener nofollow" target="_blank">HRM-Dual™</a></li>
<li>Standard Mount</li>
<li>USB cable</li>
<li>Tether</li>
<li>Manuals</li>
</ul>', array['garminedge130plus/1.jpg', 'garminedge130plus/2.webp']::text[], 'new', 1, '2025-02-11'::date, false, false),
  ('garin-edge-540', 'Garmin Edge 540', 'garmin', 'electronics', 'bike-computers', '<h3>Garmin Edge 540 GPS Cycling Computer</h3>

<p>Get the most out of yourself and unleash your full potential with the <strong>Garmin Edge® 540 bike computer</strong>. Featuring a sleek and lightweight design with a 2.6-inch display with button controls, nothing stands in the way of your adventures on the mountain bike or your long training rides. With ClimbProTM without previously loaded route you know exactly how long the next climb is. Thanks to Power Guide you can control your power input and with Stamina you can keep an eye on your remaining energy. Determine your personal strengths and weaknesses and get feedback on the requirements of the planned route. Popularity maps recommend the most traveled routes for road bike or MTB from billions of kilometers. Record your ride data precisely thanks to multi-frequency reception of global satellite systems and adjust your settings conveniently via smartphone.</p>
<h3>Highlights of the Garmin Edge® 540 bike computer</h3>
<ul>
<li>2.6 inch display and button operation in a slim and lightweight design</li>
<li>ClimbProTM even without previously loaded route</li>
<li>Physiological readings and route-specific performance management with Power Guide and Stamina</li>
<li>Extensive navigation functions with Trendline Popularity map overlay</li>
<li>Multi-frequency reception of global satellite systems</li>
<li>Easy setup directly on the Edge or via smartphone</li>
</ul>

<h3>Features of the Garmin Edge® 540 navigation computer</h3>
<h4>Design</h4>
<p>Slim and lightweight design with always easy to read 2.6'''' (66 mm) display. Simple and clear user interface with button operation.</p>
<h4>Battery life</h4>
<p>Up to 26 hours of GPS battery life when paired with sensors and smartphone and active navigation, and up to 42 hours in power saving mode.</p>
<h4>Multi-frequency</h4>
<p>High-precision route recording through multi-frequency reception of global satellite systems (GPS, GLONASS, GALILEO) - even in narrow mountain valleys or urban canyons.</p>
<h4>Climbpro</h4>
<p>The proven ClimbPro function you can now use even without a previously loaded route to get valuable data on the slope, distance and altitude of the climb and to perfectly manage your forces.</p>
<h4>App compatibility</h4>
<p>Device settings - including data fields - are easy to make directly on the Edge or via smartphone in the Garmin Connect app with real-time synchronization.</p>
<h4>Power Guide</h4>
<p>Power Guide helps you find the optimal power input for your route and its elevation profile to create a power strategy for your route.</p>
<h4>Stamina Residual Energy</h4>
<p>Stamina tracks your cycling training performance and shows you the available energy you have during your physical activity. This allows you to optimize your energy consumption during your activity and avoid premature exhaustion.</p>
<h4>Cycling ability</h4>
<p>Find out your strengths as a cyclist and compare them to the demands of a route so you can assess what you''re up against.</p>
<h4>Bike navigation</h4>
<p>Extensive navigation features on the preloaded Garmin bike map. Optimized route recalculation on the most popular roads and trails right on the device.</p>
<h4>Trendline Popularity map</h4>
<p>The Trendline Popularity map overlay uses billions of miles of Garmin Connect data to help you find the most popular routes for your activity. You can view the heatmap information directly on your Edge''s map.</p>
<h4>Route planning</h4>
<p>Route planning and syncing on the device and in Garmin Connect. Automatic route synchronization from platforms like Strava and Komoot.</p>
<h4>Performance Analysis</h4>
<p>Monitor your training status, training load and load focus, altitude and heat acclimatization, and fluid and food intake.</p>
<h4>Recovery time</h4>
<p>After each workout, recovery time tells you when you''re ready for your next activity.</p>
<h4>Workout Planning</h4>
<p>Easily sync workouts with Garmin Connect, TrainingPeaks® or TrainerRoad with prompts to catch up on missed workouts. Alternatively, get personalized workout suggestions based on your training load and VO2max right on the Edge.</p>
<h4>MTB Dynamics</h4>
<p>Grit, flow &amp; jump analysis - the new MTB Dynamics provide all the data mountain bikers need to analyze jumps and descents.</p>
<h4>Varia Compatibility</h4>
<p>Pair your Varia radar for safer cycling. This allows you to spot vehicles from up to 140 meters away and draw attention to you with the bright tail light.</p>
<h4>Connected Features</h4>
<p>Smart notifications, weather information, rider-to-rider messaging, Live &amp; GroupTrack, and customization options via Connect IQ.</p>
<h4>Alarm</h4>
<p>Alarm if your bike is moved while you''re away and the option to find your Edge''s last location if it''s lost in a crash.</p>
<h4>Inreach Compatible</h4>
<p>Stay in touch with your friends even without cellular reception. Share your location or send an SOS emergency call via the Iridium satellite network to the 24/7 staffed IERCC emergency call center.</p>
<p><strong>Included in delivery:</strong></p>
<ul>
<li>Garmin Edge® 540 bike computer</li>
<li>Standard mount</li>
<li>Aero handlebar mount</li>
<li>Mounting strap</li>
<li>Charging / data cable (USB-C)</li>
</ul>', array['garin-edge-540/1.png']::text[], 'new', 1, '2023-05-01'::date, false, false),
  ('garmin-edge-540-solar-gps-cycling-computer', 'Garmin Edge 540 Solar GPS Cycling Computer', 'garmin', 'electronics', 'bike-computers', '<h3>Garmin Edge 540 Solar GPS Cycling Computer</h3>

<p>Get the most out of yourself and unleash your full potential with the <strong>Garmin Edge® 540 Solar bike computer</strong>. With a sleek, lightweight design and 2.6-inch display with push-button controls, nothing stands in the way of your adventures on the mountain bike or your long training rides. With ClimbPro without previously loaded route you know exactly how long the next climb is. Thanks to Power Guide you can control your power input and with Stamina you can keep an eye on your remaining energy. Determine your personal strengths and weaknesses and get feedback on the requirements of the planned route. Popularity maps recommend the most traveled routes for road bike or MTB from billions of kilometers. Precisely record your ride data thanks to multi-frequency reception of global satellite systems and conveniently adjust your settings via smartphone.</p>
<h3>Highlights of the Garmin Edge® 540 Solar bike computer</h3>
<ul>
<li>2.6 inch display and button operation in a slim and lightweight design</li>
<li>ClimbPro even without previously charged track</li>
<li>Power Glass solar lens with solar technology and a battery life in GPS mode up to 32 hours</li>
<li>Physiological readings and route-specific performance management with Power Guide and Stamina</li>
<li>Extensive navigation features with Trendline Popularity map overlay</li>
<li>Multi-frequency reception of global satellite systems</li>
<li>Easy setup directly on the Edge or via smartphone</li>
</ul>
<h3>Features of the Garmin Edge® 540 Solar navigation computer</h3>
<h4>Design</h4>
<p>Slim and lightweight design with always easy to read 2.6'''' (66 mm) display. Simple and clear user interface with button operation.</p>
<h4>Power Glass Solar Lens</h4>
<p>The Edge 540 Solar features a Power Glass solar-powered lens that harnesses the sun''s energy to extend battery life. Up to 32 hours of GPS battery life and up to 60 hours in power-saving mode - enough for new destinations and even longer adventures on the bike.</p>
<h4>Battery life</h4>
<p>Up to 32 hours of GPS battery life when paired with sensors and smartphone and actively navigating, and up to 42 hours in power-saving mode.</p>
<h4>Multi-frequency</h4>
<p>High-precision route recording through multi-frequency reception of global satellite systems (GPS, GLONASS, GALILEO) - even in narrow mountain valleys or urban canyons.</p>
<h4>Climbpro</h4>
<p>The proven ClimbPro function you can now use even without a previously loaded route to get valuable data on the slope, distance and altitude of the climb and to perfectly manage your forces.</p>
<h4>App compatibility</h4>
<p>Device settings - including data fields - are easy to make directly on the Edge or via smartphone in the Garmin Connect app with real-time synchronization.</p>
<h4>Power Guide</h4>
<p>Power Guide helps you find the optimal power input for your route and its elevation profile to create a power strategy for your route.</p>
<h4>Stamina Residual Energy</h4>
<p>Stamina tracks your cycling training performance and shows you the available energy you have during your physical activity. This allows you to optimize your energy consumption during your activity and avoid premature exhaustion.</p>
<h4>Cycling ability</h4>
<p>Find out your strengths as a cyclist and compare them to the demands of a route so you can assess what you''re up against.</p>
<h4>Bike navigation</h4>
<p>Extensive navigation features on the preloaded Garmin bike map. Optimized route recalculation on the most popular roads and trails right on the device.</p>
<h4>Trendline Popularity map</h4>
<p>The Trendline Popularity map overlay uses billions of miles of Garmin Connect data to help you find the most popular routes for your activity. You can view the heatmap information directly on your Edge''s map.</p>
<h4>Route planning</h4>
<p>Route planning and syncing on the device and in Garmin Connect. Automatic route synchronization from platforms like Strava and Komoot.</p>
<h4>Performance Analysis</h4>
<p>Monitor your training status, training load and load focus, altitude and heat acclimatization, and fluid and food intake.</p>
<h4>Recovery time</h4>
<p>After each workout, recovery time tells you when you''re ready for your next activity.</p>
<h4>Workout Planning</h4>
<p>Easily sync workouts with Garmin Connect, TrainingPeaks® or TrainerRoad with prompts to catch up on missed workouts. Alternatively, get personalized workout suggestions based on your training load and VO2max right on the Edge.</p>
<h4>MTB Dynamics</h4>
<p>Grit, flow &amp; jump analysis - the new MTB Dynamics provide all the data mountain bikers need to analyze jumps and descents.</p>
<h4>Varia Compatibility</h4>
<p>Pair your Varia radar for safer cycling. This allows you to spot vehicles from up to 140 meters away and draw attention to you with the bright tail light.</p>
<h4>Connected Features</h4>
<p>Smart notifications, weather information, rider-to-rider messaging, Live &amp; GroupTrack, and customization options via Connect IQ.</p>
<h4>Alarm</h4>
<p>Alarm if your bike is moved while you''re away and the option to find your Edge''s last location if it''s lost in a crash.</p>
<h4>Inreach Compatible</h4>
<p>Stay in touch with your friends even without cellular reception. Share your location or send an SOS emergency call via the Iridium satellite network to the 24/7 staffed IERCC emergency call center.</p>
<p><strong>Included in delivery:</strong></p>
<ul>
<li>Garmin Edge® 540 Solar Bike Computer</li>
<li>Standard mount</li>
<li>Aero handlebar mount</li>
<li>Mounting strap</li>
<li>Charging / data cable (USB-C)</li>
</ul>', array['garmin-edge-540-solar-gps-cycling-computer/1.jpg']::text[], 'new', 1, '2023-05-01'::date, false, false),
  ('garmin-edge-550', 'Garmin Edge 550', 'garmin', 'electronics', 'bike-computers', '<h3>SMALL IN SIZE. BIG ON PERFORMANCE</h3>

<p>Edge 550 is the compact GPS cycling computer featuring a vivid colour display with buttons to give you the right insights, guidance and fueling advice to perform better than ever. Some training and performance features require a <a href="https://support.garmin.com/en-NZ/?faq=HShLPmOrV27VgUdVxgCJeA" rel="noopener nofollow" target="_blank">compatible heart rate monitor, power meter or both.</a></p>

<p>VIVID COLOUR DISPLAY SHOWS MAPS AND STATS IN STUNNING DETAIL</p>

<p>UP TO 12 HOURS OF BATTERY LIFE IN DEMANDING USE CASES AND UP TO 36 HOURS IN BATTERY SAVER MODE</p>

<p>GET ROAD HAZARD ALERTS REPORTED BY FELLOW CYCLISTS1</p>

<p>ADVANCED TRAINING AND PERFORMANCE INSIGHTS</p>

<p>STAY CONNECTED AND COMPETITIVE WITH THE GROUPRIDE FEATURE</p>

<p>RIDE LIKE A LOCAL WITH PRELOADED TOPOACTIVE MAPS AND TRAILFORKS DATA</p>', array['garmin-edge-550/1.jpg']::text[], 'new', 1, '2025-09-16'::date, false, false),
  ('garmin-edge-840', 'Garmin Edge 840', 'garmin', 'electronics', 'bike-computers', '<h3>Garmin Edge® 840 GPS Cycling Computer</h3>
<p><strong>Unleash your full potential on every ride.</strong> The Garmin Edge® 840 combines <strong>cutting-edge performance metrics, precise navigation, and a sleek, lightweight design</strong> to help you ride smarter and stronger—whether on mountain trails or long road sessions.</p>

<h3><strong>Key Features</strong></h3>
<ul>
<li>
<p><strong>2.6" color touch display</strong> – Slim, lightweight, and easy-to-read interface.</p>
</li>
<li>
<p><strong>ClimbPro</strong> – Track slope, distance, and elevation of climbs even without a preloaded route.</p>
</li>
<li>
<p><strong>Power Guide &amp; Stamina</strong> – Manage your energy and optimize your power output throughout the ride.</p>
</li>
<li>
<p><strong>Trendline Popularity Map</strong> – Navigate using the most popular routes derived from billions of miles of Garmin Connect data.</p>
</li>
<li>
<p><strong>Multi-frequency satellite reception</strong> – High-precision tracking via GPS, GLONASS, and GALILEO, even in challenging terrain or urban environments.</p>
</li>
<li>
<p><strong>MTB Dynamics</strong> – Grit, flow, and jump analysis for mountain biking performance insights.</p>
</li>
<li>
<p><strong>Varia Radar Compatibility</strong> – See vehicles approaching from up to 140 meters away and stay visible with the tail light.</p>
</li>
<li>
<p><strong>Connected Features</strong> – Smart notifications, weather updates, Live &amp; GroupTrack, rider-to-rider messaging, and customization via Connect IQ.</p>
</li>
<li>
<p><strong>InReach Compatibility</strong> – Send SOS calls or share your location via the Iridium satellite network even without cellular coverage.</p>
</li>
<li>
<p><strong>Security Alarm</strong> – Alert if your bike is moved, with the ability to locate your Edge after a crash or loss.</p>
</li>
</ul>

<h3><strong>Performance &amp; Training Tools</strong></h3>
<ul>
<li>
<p><strong>Workout Planning &amp; Syncing</strong> – Sync workouts with Garmin Connect, TrainingPeaks®, or TrainerRoad. Get personalized suggestions based on your training load and VO2max.</p>
</li>
<li>
<p><strong>Performance Analysis</strong> – Track training status, load focus, heat &amp; altitude acclimatization, and nutrition intake.</p>
</li>
<li>
<p><strong>Recovery Time</strong> – Know when you’re ready for your next ride.</p>
</li>
<li>
<p><strong>Cycling Ability Assessment</strong> – Evaluate your strengths versus the demands of a route.</p>
</li>
</ul>

<h3><strong>Battery &amp; Connectivity</strong></h3>
<ul>
<li>
<p><strong>Up to 26 hours GPS battery life</strong> with sensors and navigation; up to 42 hours in power-saving mode.</p>
</li>
<li>
<p><strong>Easy setup</strong> – Configure directly on the Edge or via the Garmin Connect app.</p>
</li>
</ul>

<h3><strong>Included in the Box</strong></h3>
<ul>
<li>
<p>Garmin Edge® 840 bike computer</p>
</li>
<li>
<p>Standard mount</p>
</li>
<li>
<p>Aero handlebar mount</p>
</li>
<li>
<p>Mounting strap</p>
</li>
<li>
<p>USB-C charging/data cable</p>
</li>
</ul>', array['garmin-edge-840/1.jpg']::text[], 'new', 1, '2023-05-01'::date, false, false),
  ('garmin-edge-840-solar-gps-cycling-computer', 'Garmin Edge 840 Solar GPS Cycling Computer', 'garmin', 'electronics', 'bike-computers', '<h3>Garmin Edge 840 Solar GPS Cycling Computer</h3>

<p>Get the most out of yourself and unleash your full potential with the <strong>Garmin Edge® 840 Solar bike computer</strong>. With a sleek and lightweight design and 2.6-inch color touch display, nothing stands in the way of your mountain bike adventures or long training rides. With ClimbPro without a pre-loaded track, you know exactly how long the next climb is. Thanks to Power Guide you can control your power input and with Stamina you can keep an eye on your remaining energy. Determine your personal strengths and weaknesses and get feedback on the requirements of the planned route. Popularity maps recommend the most traveled routes for road bike or MTB from billions of kilometers. Record your ride data precisely thanks to multi-frequency reception of global satellite systems and adjust your settings conveniently via smartphone.</p>
<h3>Highlights of the Garmin Edge® 840 Solar bike computer</h3>
<ul>
<li>2.6 inch color touch display in a slim and lightweight design</li>
<li>ClimbPro even without previously charged track</li>
<li>Power Glass solar lens with solar technology and a battery life in GPS mode up to 32 hours</li>
<li>Physiological readings and route-specific performance management with Power Guide and Stamina</li>
<li>Extensive navigation features with Trendline Popularity map overlay</li>
<li>Multi-frequency reception of global satellite systems</li>
<li>Easy setup directly on the Edge or via smartphone</li>
</ul>
<h3>Features of the Garmin Edge® 840 Solar navigation computer</h3>
<h4>Design</h4>
<p>Slim and lightweight design with always easy to read 2.6'''' (66 mm) touch display. Simple and clear color user interface.</p>
<h4>Power Glass Solar Lens</h4>
<p>The Edge 840 Solar features a Power Glass solar-powered lens that harnesses the sun''s energy to extend battery life. Up to 32 hours of GPS battery life and up to 60 hours in power-saving mode - enough for new destinations and even longer adventures on the bike.</p>
<h4>Battery life</h4>
<p>Up to 32 hours of GPS battery life when paired with sensors and smartphone and actively navigating, and up to 42 hours in power-saving mode.</p>
<h4>Multi-frequency</h4>
<p>High-precision route recording through multi-frequency reception of global satellite systems (GPS, GLONASS, GALILEO) - even in narrow mountain valleys or urban canyons.</p>
<h4>Climbpro</h4>
<p>The proven ClimbPro function you can now use even without a previously loaded route to get valuable data on the slope, distance and altitude of the climb and to perfectly manage your forces.</p>
<h4>App compatibility</h4>
<p>Device settings - including data fields - are easy to make directly on the Edge or via smartphone in the Garmin Connect app with real-time synchronization.</p>
<h4>Power Guide</h4>
<p>Power Guide helps you find the optimal power input for your route and its elevation profile to create a power strategy for your route.</p>
<h4>Stamina Residual Energy</h4>
<p>Stamina tracks your cycling training performance and shows you the available energy you have during your physical activity. This allows you to optimize your energy consumption during your activity and avoid premature exhaustion.</p>
<h4>Cycling ability</h4>
<p>Find out your strengths as a cyclist and compare them to the demands of a route so you can assess what you''re up against.</p>
<h4>Bike navigation</h4>
<p>Extensive navigation features on the preloaded Garmin bike map. Optimized route recalculation on the most popular roads and trails right on the device.</p>
<h4>Trendline Popularity map</h4>
<p>The Trendline Popularity map overlay uses billions of miles of Garmin Connect data to help you find the most popular routes for your activity. You can view the heatmap information directly on your Edge''s map.</p>
<h4>Route planning</h4>
<p>Route planning and syncing on the device and in Garmin Connect. Automatic route synchronization from platforms like Strava and Komoot.</p>
<h4>Performance Analysis</h4>
<p>Monitor your training status, training load and load focus, altitude and heat acclimatization, and fluid and food intake.</p>
<h4>Recovery time</h4>
<p>After each workout, recovery time tells you when you''re ready for your next activity.</p>
<h4>Workout Planning</h4>
<p>Easily sync workouts with Garmin Connect, TrainingPeaks® or TrainerRoad with prompts to catch up on missed workouts. Alternatively, get personalized workout suggestions based on your training load and VO2max right on the Edge.</p>
<h4>MTB Dynamics</h4>
<p>Grit, flow &amp; jump analysis - the new MTB Dynamics provide all the data mountain bikers need to analyze jumps and descents.</p>
<h4>Varia Compatibility</h4>
<p>Pair your Varia radar for safer cycling. This allows you to spot vehicles from up to 140 meters away and draw attention to you with the bright tail light.</p>
<h4>Connected Features</h4>
<p>Smart notifications, weather information, rider-to-rider messaging, Live &amp; GroupTrack, and customization options via Connect IQ.</p>
<h4>Alarm</h4>
<p>Alarm if your bike is moved while you''re away and the option to find your Edge''s last location if it''s lost in a crash.</p>
<h4>Inreach Compatible</h4>
<p>Stay in touch with your friends even without cellular reception. Share your location or send an SOS emergency call via the Iridium satellite network to the 24/7 staffed IERCC emergency call center.</p>
<p><strong>Included in delivery:</strong></p>
<ul>
<li>Garmin Edge® 840 Solar bike computer.</li>
<li>Standard mount</li>
<li>Aero handlebar mount</li>
<li>Mounting strap</li>
<li>Charging / data cable (USB-C)</li>
</ul>', array['garmin-edge-840-solar-gps-cycling-computer/1.png']::text[], 'new', 1, '2023-05-01'::date, false, false),
  ('garmin-edge-850', 'Garmin Edge 850', 'garmin', 'electronics', 'bike-computers', '<h3>SMALL IN SIZE. BIG ON PERFORMANCE</h3>

<p>Edge 850 is the compact GPS cycling computer featuring a vivid colour touchscreen display with buttons to give you the right insights, guidance and fuelling advice to perform better than ever. Some training and performance features require a <a href="https://support.garmin.com/en-NZ/?faq=HShLPmOrV27VgUdVxgCJeA" rel="noopener nofollow" target="_blank">compatible heart rate monitor, power meter or both.</a></p>

<p>VIVID COLOUR DISPLAY SHOWS MAPS AND STATS IN STUNNING DETAIL</p>

<p>UP TO 12 HOURS OF BATTERY LIFE IN DEMANDING USE CASES AND UP TO 36 HOURS IN BATTERY SAVER MODE</p>

<p>GET ROAD HAZARD ALERTS REPORTED BY FELLOW CYCLISTS1</p>

<p>ADVANCED TRAINING AND PERFORMANCE INSIGHTS</p>

<p>STAY CONNECTED AND COMPETITIVE WITH THE GROUPRIDE FEATURE</p>

<p>ALERT RIDERS AND PEDESTRIANS WITH AN ON-DEVICE BIKE BELL</p>', array['garmin-edge-850/1.jpg']::text[], 'new', 1, '2025-09-16'::date, false, false),
  ('garmin-edge-explore-2-gps', 'Garmin Edge Explore 2 GPS', 'garmin', 'electronics', 'bike-computers', '<p><b>THE WORLD IS WAITING</b></p>
<p>When you need a dependable, easy-to-use GPS cycling computer, Edge Explore 2 is there when you need it most. So ride on and discover new trails — Edge has got you covered.</p>
<ul>
<li>Get lost in your ride — Edge will always get you back home with bike-specific navigation.</li>
<li>No more draining your phone battery using a mapping app. Edge has up to 16 hours of battery life in demanding use and up to 24 hours in battery saver mode.</li>
<li>Create courses through the Garmin Connect™ app, Strava, Komoot, Wikiloc and more, and sync to your Edge in a snap.</li>
<li>Riding with your compatible eBike? You bet Edge has your back. Get eBike routing based on battery status, assist level and range.</li>
<li>Stay aware and in touch with incident detection1 plus compatibility with Varia™ cycling radar.</li>
</ul>
<p><b>ACTIVITY PROFILES</b></p>
<p>With preloaded road, off-road and indoor activity profiles, Edge Explore 2 is simple to set up and ready to use right out of the box.</p>
<p><b>RIDE TYPE-SPECIFIC MAPS</b></p>
<p>Ride like a local, whatever your bike type, with improved maps that highlight popular roads and trails, high-traffic areas to avoid and searchable points of interest.</p>
<p><b>TURN-BY-TURN DIRECTIONS</b></p>
<p>Find your way with turn-by-turn directions and alerts that notify you of upcoming turns.</p>
<p><b>OFF-COURSE RECALCULATION</b></p>
<p>Feel free to pause route guidance and off-course notifications while you go off-course to explore. When you’re ready to get back on track, Edge Explore 2 will show you the way.</p>
<p><b>CLIMBPRO FEATURE</b></p>
<p>Automatically see the remaining ascent and grade when you’re climbing while following a route or course. This helps you gauge your effort and how long it’ll take to reach the top. You can even save your climbs for postride review on your device or in the Garmin Connect app.</p>
<p><b>EBIKE COMPATIBILITY</b></p>
<p>If you have an eBike that’s compatible2 with SHIMANO STEPS or ANT+® technology, you can see a dedicated eBike status screen showing data fields, including battery life and more. Even get smart routing and range alerts based on battery status, assist level and your planned course.</p>
<p><b>VARIA COMPATIBILITY</b></p>
<p>Pair the Edge Explore 2 GPS cycling computer with your Varia rearview radar and lights so you can easily see and be seen.</p>
<p><b>INCIDENT DETECTION</b></p>
<p>This Edge device automatically sends a message with your location to preloaded emergency contacts if it detects an incident1.</p>
<p><b>BIKE ALARM</b></p>
<p>The PIN-protected bike alarm will notify you on your paired smartphone if your bike is moved while you’re inside getting water or making a pit stop.</p>
<p><b>SMART TRAINER COMPATIBILITY</b></p>
<p>Pair Edge® Explore 2 with your Tacx® indoor trainer so you can train when and where you want.</p>
<p><b>AUTOMATIC SETUP</b></p>
<p>Be ready to ride in moments, instead of wasting time configuring settings. Get prepopulated custom ride profiles based on ride type and your chosen sensors. You can manage your ride profiles directly from your device or connected smartphone.</p>
<p><b>GROUPTRACK FEATURE</b></p>
<p>After pairing with your smartphone, keep an eye on your riding companions, even when they fall out of sight — and let them keep an eye on you. GroupTrack is available for riders using compatible Garmin devices and can keep tabs on up to 50 of your friends at once. Just look at your screen to see updates.</p>
<p><b>GROUP MESSAGING</b></p>
<p>Pair with your smartphone, and stay in touch with your riding crew when you get separated from the pack. Group messaging is available for riders using compatible Garmin devices, and only riders with those devices may be messaged.</p>
<p><b>SMART NOTIFICATIONS</b></p>
<p>Receive texts and alerts right on your Edge device when paired with your compatible smartphone.</p>
<p><b>SPECTATOR MESSAGING</b></p>
<p>When paired to your smartphone, get mid-race motivation with text messages from your family and friends.</p>
<p><b>LIVE EVENT SHARING</b></p>
<p>When paired to your smartphone, automatically send live ride updates to family and friends — without lifting a finger. So while you’re exploring, they can stay up to date with your speed, kilometres completed and more.</p>
<p><b>SYNC WITH GARMIN CONNECT</b></p>
<p>The Garmin Connect app is home to a thriving online community where people on the go can connect and compete — and even share their triumphs via social media.</p>
<p><b>CONNECT IQ™ STORE</b></p>
<p>Download custom data fields, and get apps and widgets from the Connect IQ Store app downloaded to your compatible smartphone.</p>

<h3>SPECIFICATIONS</h3>
<table>
<tbody>
<tr>
<td>Dimensions</td>
<td>4.2″ x 2.2″ x 0.8″ (106.1x 55.7 x 20.6 mm)</td>
</tr>
<tr>
<td>Touchscreen</td>
<td>Yes</td>
</tr>
<tr>
<td>Color Display</td>
<td>Yes</td>
</tr>
<tr>
<td>Display Size</td>
<td>3.00″</td>
</tr>
<tr>
<td>Display Resolution</td>
<td>240 x 400 pixels</td>
</tr>
<tr>
<td>Weight</td>
<td>104 g</td>
</tr>
<tr>
<td>Water Rating</td>
<td>IPX7</td>
</tr>
<tr>
<td>Battery Type</td>
<td>Rechargeable lithium-ion</td>
</tr>
<tr>
<td>Battery Life</td>
<td>up to 16 hours</td>
</tr>
<tr>
<td>Battery Save Mode</td>
<td>Yes</td>
</tr>
<tr>
<td>Ability To Add Maps</td>
<td>Yes</td>
</tr>
<tr>
<td>Bike Alarm</td>
<td>Yes</td>
</tr>
<tr>
<td>External Memory Storage</td>
<td>16 GB internal memory</td>
</tr>
<tr>
<td>Waypoints/Favorites/Locations</td>
<td>200</td>
</tr>
<tr>
<td>Navigation Routes</td>
<td>100 Courses</td>
</tr>
<tr>
<td>History</td>
<td>200 hours</td>
</tr>
<tr>
<td>Gps</td>
<td>Yes</td>
</tr>
<tr>
<td>Glonass</td>
<td>Yes</td>
</tr>
<tr>
<td>Galileo</td>
<td>Yes</td>
</tr>
<tr>
<td>Barometric Altimeter</td>
<td>Yes</td>
</tr>
<tr>
<td>Accelerometer</td>
<td>Yes</td>
</tr>
<tr>
<td>Connectivity</td>
<td>Bluetooth, ANT+</td>
</tr>
<tr>
<td>Connect Iq</td>
<td>Yes</td>
</tr>
<tr>
<td>On-Device Connect Iq Store</td>
<td>Yes</td>
</tr>
<tr>
<td>Smart Notifications</td>
<td>Yes</td>
</tr>
<tr>
<td>Text Response/Reject Phone Call With Text (Android Only)</td>
<td>Yes</td>
</tr>
<tr>
<td>Weather</td>
<td>Yes</td>
</tr>
<tr>
<td>Realtime Settings Sync With Garmin Connect Mobile</td>
<td>Yes</td>
</tr>
<tr>
<td>Controls Smartphone Music</td>
<td>Yes</td>
</tr>
<tr>
<td>Calories Burned</td>
<td>Yes</td>
</tr>
<tr>
<td>Smartphone Compatibility</td>
<td>iPhone, Android</td>
</tr>
<tr>
<td>Livetrack</td>
<td>Yes</td>
</tr>
<tr>
<td>Group Livetrack</td>
<td>Yes</td>
</tr>
<tr>
<td>Rider-To-Rider Messaging</td>
<td>Yes</td>
</tr>
<tr>
<td>Incident Detection</td>
<td>Yes</td>
</tr>
<tr>
<td>Find My Edge</td>
<td>Yes</td>
</tr>
<tr>
<td>Weather Alerts</td>
<td>Yes</td>
</tr>
<tr>
<td>Inreach Compatible</td>
<td>Yes</td>
</tr>
<tr>
<td>Intensity Minutes</td>
<td>Yes</td>
</tr>
<tr>
<td>Customizable Data Pages</td>
<td>Yes</td>
</tr>
<tr>
<td>Auto Pause</td>
<td>Yes</td>
</tr>
<tr>
<td>Auto Lap</td>
<td>Yes</td>
</tr>
<tr>
<td>Vo2 Max</td>
<td>Yes</td>
</tr>
<tr>
<td>Recovery Advisor</td>
<td>Yes</td>
</tr>
<tr>
<td>Auto Scroll</td>
<td>Yes</td>
</tr>
<tr>
<td>Climbpro Ascent Planner - Cycling</td>
<td>Yes</td>
</tr>
<tr>
<td>Cycle Map (Routable Cycling-Specific Street Map)</td>
<td>Yes</td>
</tr>
<tr>
<td>Alerts (Triggers Alarm When You Reach Goals Including Time, Distance, Heart Rate Or Calories)</td>
<td>Yes</td>
</tr>
<tr>
<td>Courses</td>
<td>Yes</td>
</tr>
<tr>
<td>On-Device Course Creator</td>
<td>Yes</td>
</tr>
<tr>
<td>On-Device Location Search</td>
<td>Yes</td>
</tr>
<tr>
<td>Trendline Popularity Routing - Cycling</td>
<td>Yes</td>
</tr>
<tr>
<td>Popularity Heatmap</td>
<td>Yes</td>
</tr>
<tr>
<td>Power Meter Compatible</td>
<td>Yes</td>
</tr>
<tr>
<td>Varia Remote Control</td>
<td>Yes</td>
</tr>
<tr>
<td>Smart Trainer Control</td>
<td>Yes</td>
</tr>
</tbody>
</table>', array['garmin-edge-explore-2-gps/1.jpg']::text[], 'new', 1, '2024-12-13'::date, false, false),
  ('garmin-edge-mtb', 'Garmin Edge MTB', 'garmin', 'electronics', 'bike-computers', '<h3>THE BIKE COMPUTER MADE FOR MOUNTAIN BIKERS​</h3>

<p>Edge MTB is made tough with a rugged, compact design that’s ready for long days on the trails. And new enduro and downhill ride profiles with 5 Hz GPS recording during descents mean you can see greater detail about the lines you take.</p>

<h3>BUILT TO SHRED</h3>
<p>Featuring a compact, rugged 7-button design with scratch-resistant Corning Gorilla Glass, the Edge MTB bike computer can stand up to the most extreme rides.</p>

<h3>ENDURO AND DOWNHILL RIDE PROFILES</h3>
<p>The enduro ride profile tracks total ascent and descent from each run and for the ride overall. The downhill profile laps each time you finish a descent, so your return to the top via shuttle or ski lift doesn’t affect your ride stats.</p>

<h3>5 HZ GPS RECORDING</h3>
<p>See greater detail about the lines you take down the trail with multi-band GPS with 5 Hz GPS recording while using the enduro or downhill ride profiles.</p>

<h3>UNLOCK NEW TRAIL DATA</h3>
<p>With preloaded Trailforks maps, you can dig into trail details before you ride. And get guidance along the way with Forksight mode to see the names of trails up ahead , distance elevation and more.</p>

<h3>SET TIMING GATES</h3>
<p>Set timing gates throughout a course to track split times and better understand your ride or race performance in real time.</p>

<h3>RIP ALL DAY LONG</h3>
<p>Edge MTB is built with long riding days in mind, with up to 14 hours of battery life in demanding use cases or up to 26 hours in battery saver mode.</p>
<p>IN THE BOX</p>
<ul>
<li>Edge MTB cycling computer</li>
<li>MTB Mount</li>
<li>Top tube mount with strap</li>
<li>Tether</li>
<li>Charging/data cable</li>
<li>Documentation</li>
</ul>', array['garmin-edge-mtb/1.png']::text[], 'new', 1, '2025-06-20'::date, false, false),
  ('garmin-edge-top-tube-mtb-mount', 'Garmin Edge Top Tube MTB Mount', 'garmin', 'electronics', 'bike-computers', '<p>Edge Top Tube mount kit includes a bolted or silicone strap option, giving cyclists the flexibility to mount their Edge cycling computer in the best location for their bike and riding needs.</p>
<ul>
<li>Top tube mount</li>
<li>Strap</li>
<li>Adapter shims</li>
<li>Tether</li>
<li>Hardware</li>
<li>Documentation</li>
</ul>', array['garmin-edge-top-tube-mtb-mount/1.webp', 'garmin-edge-top-tube-mtb-mount/2.png', 'garmin-edge-top-tube-mtb-mount/3.webp']::text[], 'new', 1, '2026-04-23'::date, false, false),
  ('hammerhead-karoo-gps-computer', 'Hammerhead Karoo GPS Computer', 'hammerhead', 'electronics', 'bike-computers', '<table>
<tbody>
<tr>
<td>
<p><strong>HAMMERHEAD KAROO GPS COMPUTER</strong></p>
<p>The Hammerhead Karoo cycling computer represents the pinnacle of innovation, design, and performance. The stunning screen, premium materials, and all-day battery life combine to make Karoo a cycling computer without compromise. Easy to use in every condition thanks to thoughtful hardware and software design, Karoo allows you to focus on the road - and the ride - instead of your equipment. Featuring comprehensive structured workout support, industry best navigation, and a Companion App and Dashboard that let you manage your Karoo without removing it from the handlebars; Karoo helps you hit your training goals, explore new routes, and enjoy every ride. The pièce de resistance is Karoo’s unparalleled control of your bike’s connected components, from SRAM AXS products to E-Bikes to ANT+ lights</p>
<p><strong>SPECIFICATIONS</strong></p>
<table>
<tbody>
<tr>
<th><strong>Processor</strong></th>
<td>Quad Core 2.0 GHz</td>
</tr>
<tr>
<th><strong>Memory</strong></th>
<td>64GB Storage, 4GB RAM</td>
</tr>
<tr>
<th><strong>Satellite Connectivity</strong></th>
<td>Multi-band (L1 + L5) GNSS</td>
</tr>
<tr>
<th><strong>Satellite Constellations</strong></th>
<td>GPS, GLONASS, Galileo, QZSS, BEIDOU</td>
</tr>
<tr>
<th><strong>Charging</strong></th>
<td>USB C</td>
</tr>
<tr>
<th><strong>Charge time</strong></th>
<td>30% in 30 minutes, 100% in 2.5 hours</td>
</tr>
<tr>
<th><strong>Battery life</strong></th>
<td>15+ hours</td>
</tr>
<tr>
<th><strong>Sensor Connectivity</strong></th>
<td>ANT+ and Bluetooth</td>
</tr>
<tr>
<th><strong>Dimensions (in MM)</strong></th>
<td>102.8 x 61.66 x 21.1</td>
</tr>
<tr>
<th><strong>Display resolution</strong></th>
<td>480 x 800 pixels</td>
</tr>
<tr>
<th><strong>Rechargeable battery</strong></th>
<td>Yes</td>
</tr>
<tr>
<th><strong>Screen dimensions</strong></th>
<td>3.2"</td>
</tr>
<tr>
<th><strong>Screen type</strong></th>
<td>Touchscreen</td>
</tr>
<tr>
<th><strong>Water resistance</strong></th>
<td>IP67</td>
</tr>
<tr>
<th><strong>Device Weight</strong></th>
<td>118grams</td>
</tr>
<tr>
<th><strong>Operating Temperature</strong></th>
<td>-10C-55C</td>
</tr>
<tr>
<th><strong>Barometric Altimete</strong>r</th>
<td>Yes</td>
</tr>
<tr>
<th><strong>Magnetometer</strong></th>
<td>Yes</td>
</tr>
<tr>
<th><strong>Gyroscope</strong></th>
<td>Yes</td>
</tr>
<tr>
<th><strong>Accelerometer</strong></th>
<td>Yes</td>
</tr>
<tr>
<th><strong>Ambient Light Sensor</strong></th>
<td>Yes</td>
</tr>
<tr>
<th><strong>Temperature Sensor</strong></th>
<td>Yes</td>
</tr>
<tr>
<th><strong>Battery Size</strong></th>
<td>2600 mAh</td>
</tr>
<tr>
<th><strong>Auditory alerts</strong></th>
<td>Beeper</td>
</tr>
</tbody>
</table>
</td>
<td> </td>
<td>
<p><strong>FEATURES</strong></p>
<ul>
<li>Karoo features a smartphone-like screen with industry-leading display for colorful visualizations and intuitive configurations of your ride data and maps</li>
<li>Control Karoo your way — no matter the conditions — with a responsive touch screen and easy-to-use hardware buttons</li>
<li>Spend less time waiting and more time riding thanks to 64GB of memory, 4GB of RAM, and extended battery life providing more maps, faster map rendering, and longer uptime</li>
<li>Multi-band GNSS technology gives pin-point accuracy on any path, whether in crowded cities, tight singletrack, tree covered trails, or anywhere in between</li>
<li>Choose your preferred surface-specific routing type (road, MTB, gravel) and explore new paths with our best-in-class maps and navigation, including free global maps, instant route syncing from connected accounts, and automatic climb detection with — or without — a route</li>
<li>Unparalleled connectivity with SRAM AXS products allows for easier customization, better equipment awareness, and simple pairing with your groupsets, power meters, tire pressure sensors, and more. Karoo’s best-in-class support for ANT+ radars and lights make it easier than ever to be safe on the road in any riding condition</li>
<li>Easily pair Karoo to your E-Bike and access LEV E-Bike data fields such as motor assist level, estimated range, E-Bike motor output, and E-Bike battery level</li>
</ul>
</td>
</tr>
</tbody>
</table>', array['hammerhead-karoo-gps-computer/1.jpg']::text[], 'new', 0, '2025-08-29'::date, false, false),
  ('k-edge-computer-mounts', 'K-Edge Computer Mounts', 'k-edge', 'electronics', 'bike-computers', '<p><strong>CHOSEN BY THE BEST!</strong><br>K-EDGE has machined a reputation for quality, precision, and performance out of a block of aluminium.  Found on the bikes of more than half the Tour de France peloton, K-EDGE is the leader in cycling computer mounts, light and camera mounts, chain catchers, and more. K-EDGE’s unique advantage is its ability to quickly and efficiently turn cyclist’s most urgent product needs into reality.  Born in 2009 from the need for an efficient Chain Catcher, K-EDGE continues to turn out Pro Tour level product to solve cycling’s modern challenges.<br><br>K-Edge is chosen by... BORA Hansgrohe, Lotto Soudal, TREK Segafredo, AG2R La Mondiale, TEAM Ineos, Mitchelton Scott, Katusha Alpecin, Dimension Data, Quick-Step and many more!<br><br><strong><em>Road Cycling</em></strong><br>K-EDGE is the pioneer and leader in chain catchers and computer mounts.  Since 2009, Tour de France, Paris Roubaix and World Champions have ensured success with K-EDGE. The pro peloton and their mechanics trust K-EDGE computer mounts, Chain Catchers, number holders and camera / light mounts.<br><br><strong><em>Cyclocross / Gravel</em></strong><br>Strong, dependable, proven… Not all Chain Catchers, chain guides and computer mounts are created equal. K-EDGE Chain Catchers and chain guides are designed and tested to reseat a chain under full pedal load, because stuff happens when you least expect it. Protect your bike, your computer and your results by upgrading to K-EDGE.<br><br><strong><em>Mountain</em></strong><br>K-EDGE knows dirt. Having brought the cycling industry the professional chain catcher and out-front computer mount, K-EDGE now makes mountain bike computer mounts and chain guides for cross country, downhill, enduro and trail riders everywhere. K-EDGE’s factory looks out onto Boise, Idaho’s seemingly endless singletrack. It’s sort of an extension to our test lab.</p>', array['k-edge-computer-mounts/1.jpg', 'k-edge-computer-mounts/2.jpg', 'k-edge-computer-mounts/3.jpg', 'k-edge-computer-mounts/4.jpg', 'k-edge-computer-mounts/5.jpg']::text[], 'new', 8, '2023-06-02'::date, false, false),
  ('wahoo-element-ace-gps-bike-computer', 'Wahoo Element Ace GPS Bike Computer', 'wahoo', 'electronics', 'bike-computers', '<p>The Clarity Cyclists Need:</p>
<ul>
<li>The largest display in the category.</li>
<li>Brilliant colour and contrast.</li>
<li>Touchscreen easily scales for better readability.</li>
<li>Redesigned user interface makes it simple to read.</li>
</ul>
<p>The Intuitiveness Cyclists Expect:</p>
<ul>
<li>
Simplified navigation experience minimises interactions.
</li>
<li>
Ride management tools help you go from "Zero to Ride" faster.
</li>
<li>
Improved 3rd Party provider integrations.
</li>
<li>
Integrated wind sensor helps you account for the conditions.
</li>
</ul>

<p><strong><em>CLARITY AND CONTROL</em></strong><br>ACE''s display is the largest in the GPS Bike Computer market.  The 3.8" TFT display''s size and quality provides unmatched viewing and browsing experience in all lighting conditions.</p>
<p>Touchscreen and Perfect View Zoom combine to give riders total control over the size and position of the information on screen.</p>

<p><strong><em>INTEGRATED INTUITION</em></strong><br>Streamlined route management makes it simple to add, manage and share routes.    Innovations like voice turn-by-turn keep you focused on the road in front of you and not on your device.  Detailed map layers make it easier to visualise points-of-interest, road types, elevation and more.</p>

<p><strong><em>RIDE LIKE THE WIND</em></strong><br>Introducing Aero Insights.</p>
<p>The ELEMNT ACE is the first bike computer to feature an integrated wind sensor to provide riders insight into the impact of one of cycling’s most critical variables, aerodynamics.</p>

<p><strong><em>ALWAYS READY TO RIDE</em></strong><br>The all-new Ready To Ride dashboard is the best landing page among cycling computers.  Riders can quickly configure their activity type, routes, and workout to start their ride.<br>Sensor icons allow users to quickly ensure they are paired, charged, and ready to go!</p>

<p><strong><em>MAKE ACE YOUR OWN</em></strong><br>ACE''s removable trim will allow riders to personalise their computer with a variety of colour options (sold separately).</p>
<p><strong> </strong></p>
<p><strong>- SPECIFICATIONS -</strong></p>
<p><strong></strong>Physical</p>
<ul>
<li>Weight - 208g 
</li>
<li>
Dimensions - 125 x 70 x 20 mm</li>
<li>Water Ingress Protection Rating: IPX7</li>
</ul>
<p>Display</p>
<ul>
<li>Display Size: 3.8” (9.65cm)</li>
<li>Touchscreen: Yes</li>
<li>Display Type: TFT</li>
<li>Mount: Premium Aluminum Alloy</li>
</ul>
<p>Battery</p>
<ul>
<li>Type: Rechargeable Lithium-ion</li>
<li>Life: 30 hours</li>
</ul>
<p>Connectivity</p>
<ul>
<li>Protocol: WiFi, BTL, 5.0, &amp; ANT+</li>
<li>Memory:64GB</li>
<li>GPS: Dual-Band</li>
<li>Accelerometer: Yes</li>
<li>Altimeter: Yes</li>
<li>Gyroscope: Yes</li>
<li>Charging Cable: USB-C </li>
<li>Charging Cable: 61cm</li>
</ul>', array['wahoo-element-ace-gps-bike-computer/1.jpg']::text[], 'new', 1, '2024-12-04'::date, false, false),
  ('wahoo-elemnt-bolt-3-gps-bike-computer', 'Wahoo ELEMNT BOLT 3 GPS Bike Computer', 'wahoo', 'electronics', 'bike-computers', '<p>Compact, aerodynamic, and built for speed. The all-new ELEMNT BOLT combines a race-ready design with a larger, high-contrast 2.3” display for crisp readability at any speed and in any conditions. Powered by the ELEMNT experience, its intuitive ride intelligence, smart navigation, and seamless connectivity make every interaction effortless—whether you''re racing, training, or chasing your next PR.</p>
<h3></h3>

<h4>BUILT FOR SPEED</h4>
<p>ELEMNT BOLT’s aerodynamic design minimizes drag, while its compact form factor keeps weight low without sacrificing the data you need to push harder. Whether you’re attacking a climb, sprinting for the line, or logging miles, BOLT delivers pro-level performance in a streamlined package.</p>
<h4>SEE MORE. RIDE SMARTER.</h4>
<p>A small screen shouldn’t mean small details. BOLT’s high-resolution 2.3” display delivers crisp clarity with a screen that gets brighter in sunlight and a backlight for the dark conditions. Essential ride metrics, detailed maps, and notifications stay sharp and readable at a glance, so you can ride with confidence.</p>
<h4>NAVIGATION THAT WORKS LIKE YOU EXPECT</h4>
<p>BOLT makes getting where you need to go easier than ever with intuitive navigation that feels as familiar as your smartphone. Easily share routes from Apple Maps, Google Maps, Komoot, Strava, and more—or use on-device features like route to start or saved locations to adapt on the fly.</p>
<h4>RIDE FAST. RIDE READY.</h4>
<p>The all-new Ready-To-Ride Dashboard simplifies pre-ride setup, so you spend less time tapping through menus and more time riding. Load routes, workouts, check sensors, and verify battery life—all in seconds.</p>
<h4>A SEAMLESS CYCLING EXPERIENCE</h4>
<p>BOLT seamlessly integrates with the Wahoo Ecosystem of training products and popular training apps like TrainingPeaks, Intervals.icu, TrainerRoad, and more, making it easier than ever to train, track, and analyze performance. Sync structured workouts, monitor real-time data, and review post-ride insights—all in one connected experience without the hassle.</p>
<h3>FEATURE DETAILS</h3>
<h4>NAVIGATION &amp; ROUTE MANAGEMENT</h4>
<ul>
<li>
<p>Dual-Band GPS – Enhances accuracy in challenging environments.</p>
</li>
<li>
<p>On-Device Smart Navigation: Features like Back on Track, Route to Start, and Retrace Route get you where you want to go wherever you’re at.</p>
</li>
<ul>
<li>
<p>Get Me Started: Find the fastest way to the start of your route.</p>
</li>
<li>
<p>Back On Track: Find the quickest way to get back on course.</p>
</li>
<li>
<p>Take Me To: Pick a place and ELEMNT will create a route to get you there.</p>
</li>
<li>
<p>Saved Location: Access a favored location and create a route to get you there.</p>
</li>
<li>
<p>Route To Start: Create the fastest route back to your starting point.</p>
</li>
<li>
<p>Retrace Route: Follow your own track  back to where you started.</p>
</li>
</ul>
<li>
<p>Detailed Map Layers: See POIs, road types, elevation profiles, and more with improved mapping.</p>
</li>
<li>
<p>Google Maps Route Sharing: Use Google Maps to quickly create and send routes to your ELEMNT.</p>
</li>
<li>
<p>Public Route Sharing – Share a route instantly via the Wahoo App.</p>
</li>
<li>
<p>Summit Features: Stay prepared for every climb ahead, even without a preloaded route.</p>
</li>
<li>
<p>Strava Segments + Points of Interest – Stay on pace for PRs and easily locate stops along the way.</p>
</li>
</ul>
<h4>SCREEN &amp; INTERFACE</h4>
<ul>
<li>
<p>2.3” High-Resolution TFT Color Display: Optimized for clarity, especially in bright sunlight.</p>
</li>
<li>
<p>Revamped User Interface: Clean, modern, and easier to use than ever.</p>
</li>
</ul>
<h4>CONNECTED EXPERIENCE</h4>
<ul>
<li>
<p>Wahoo App – A single hub for all your Wahoo devices and ride data.</p>
</li>
<li>
<p>Indoor &amp; Outdoor Workouts – Load workouts from Wahoo SYSTM, TrainingPeaks, and more.</p>
</li>
<li>
<p>Sensor Connectivity – Pair with Wahoo TRACKR heart rate, speed, and cadence sensors.</p>
</li>
<li>
<p>Live Tracking: Share real-time location with friends, family, or teammates.</p>
</li>
<li>
<p>Custom Alerts: Create notifications for time, distance, or calories burned.</p>
</li>
<li>
<p>New API for Structured Workouts: Seamlessly import training plans from any provider.</p>
</li>
<li>
<p>Music &amp; Device Control – Manage Spotify, Apple Music, radar, lights, and GoPro directly from your ELEMNT.</p>
</li>
</ul>
<h4>HARDWARE &amp; DESIGN</h4>
<ul>
<li>
<p>Race-Ready Form Factor: Lightweight, aerodynamic, and built for speed.</p>
</li>
<li>
<p>Tactile Buttons: Quick access to key functions in all conditions.</p>
</li>
<li>
<p>Up to 20 Hours of Battery Life: Enough power for race day and beyond.</p>
</li>
</ul>
<h3>WHAT’S IN THE BOX?</h3>
<ul>
<li>
<p>ELEMNT BOLT Bike Computer</p>
</li>
<li>
<p>Out-front Mount</p>
</li>
<li>
<p>USB-C to USB-C Charging Cable</p>
</li>
<li>
<p>Important Product Information</p>
</li>
</ul>
<h3>Specifications</h3>
<ul>
<li>
<p>Total Weight:  3.0oz (84g) </p>
</li>
<li>
<p>Dimensions:  3.26in x 1.85in x .78in (83mm x 47mm x 24mm)</p>
</li>
<li>
<p>Display Size:  2.3in (58.4mm)   </p>
</li>
<li>
<p>Touchscreen: No</p>
</li>
<li>
<p>Display Type: TFT</p>
</li>
<li>
<p>Battery:   Rechargeable Lithium-ion</p>
</li>
<li>
<p>Battery Life:  Up to 20 hours</p>
</li>
<li>
<p>Connectivity: WiFi, BTLE 5.0, &amp; ANT+</p>
</li>
<li>
<p>Water Resistance:  IPX7 (submersion up to 1 meter for 30 minutes)</p>
</li>
<li>
<p>Memory:  32GB</p>
</li>
<li>
<p>RAM:   2GB</p>
</li>
<li>
<p>GPS:    Dual-Band</p>
</li>
<li>
<p>Accelerometer: Yes</p>
</li>
<li>
<p>Altimeter:  Yes</p>
</li>
<li>
<p>Gyroscope:  Yes</p>
</li>
<li>
<p>Charging Cable:  USB-C </p>
</li>
<li>
<p>Charging Cable:  24in-61cm</p>
</li>
<li>
<p>Mount:  Plastic, out-front mount compatible with 31.8mm handlebars</p>
</li>
</ul>', array['wahoo-elemnt-bolt-3-gps-bike-computer/1.jpg', 'wahoo-elemnt-bolt-3-gps-bike-computer/2.jpg', 'wahoo-elemnt-bolt-3-gps-bike-computer/3.jpg', 'wahoo-elemnt-bolt-3-gps-bike-computer/4.jpg', 'wahoo-elemnt-bolt-3-gps-bike-computer/5.jpg']::text[], 'new', 1, '2025-05-07'::date, false, false),
  ('wahoo-elemnt-roam-3-gps-bike-computer', 'Wahoo ELEMNT ROAM 3 GPS Bike Computer', 'wahoo', 'electronics', 'bike-computers', '<p>Powerful, robust and adventure ready, the all-new ELEMNT ROAM combines a large, anti-glare display with touchscreen convenience and dynamic ride intelligence to make every ride effortless. With crisp, easy-to-read mapping,  intuitive navigation, and smart features that handle the details before, during, and after your ride, the ELEMNT ROAM keeps you focused on the road ahead. Whether you''re exploring new routes or pushing through an endurance challenge, the ELEMNT ROAM is always ready for your next big ride.</p>
<h3>KEY PRODUCT STORIES</h3>
<h4>SEE EVERYTHING. NAVIGATE ANYWHERE.</h4>
<p>ROAM’s larger 2.8” high-contrast display enhances visibility in any environment, combining brilliant color, sharp contrast, and exceptional readability. Its adaptive brightness ensures clarity in direct sunlight, while the backlight keeps data visible in low-light conditions. Anti-reflective coatings further improve visibility, reducing distractions from rain or glare. Tying it all together, the redesigned user interface features a clean, modern look—making key data easier to read at a glance.</p>
<h4>SMARTER MAPPING. EFFORTLESS EXPLORATION.</h4>
<p>Navigation should be simple, not stressful. ROAM minimizes cyclist’s mental workload with audible turn-by-turn guidance, detailed map layers, and intuitive routing. Key route details—like points of interest, road types, and elevation profiles—are built into the maps, so you can stay focused on the ride. Whether sticking to a planned route or adjusting on the fly, ROAM makes navigation feel effortless, just like your smartphone.</p>
<h3>CONTROL AT YOUR FINGERTIPS</h3>
<p>Tap, pinch, zoom, swipe—interact with your ride like you do with your phone. ROAM’s responsive touchscreen makes it easy to adjust maps, scroll through data, and control your experience with precision. And with glove-friendly functionality and tactile side buttons, you stay in control no matter the conditions.</p>
<h4>READY TO RIDE IN SECONDS.</h4>
<p>The all-new Ready-To-Ride Dashboard gets you rolling faster. Quickly set your activity type, routes, and workout in one streamlined view. Paired sensors, battery status, and key ride metrics are displayed at a glance, so you spend less time setting up and more time riding.</p>
<h4>A SEAMLESS CYCLING EXPERIENCE.</h4>
<p>ROAM seamlessly integrates with the Wahoo Ecosystem of training products and popular training apps like Strava, Komoot, and MTB Project, making it easier than ever to train, track, and analyze performance. Sync structured workouts, monitor real-time data, and review post-ride insights—all in one connected experience, without the hassle.</p>
<h3>FEATURE DETAILS</h3>
<h4>NAVIGATION &amp; ROUTE MANAGEMENT</h4>
<ul>
<li>
<p>Dual-Band GPS – Enhances accuracy in challenging environments.</p>
</li>
<li>
<p>On-Device Smart Navigation: Features like Back on Track, Route to Start, and Retrace Route get you where you want to go wherever you’re at.</p>
</li>
<ul>
<li>
<p>Get Me Started: Find the fastest way to the start of your route.</p>
</li>
<li>
<p>Back On Track: Find the quickest way to get back on course.</p>
</li>
<li>
<p>Take Me To: Pick a place and ELEMNT will create a route to get you there.</p>
</li>
<li>
<p>Saved Location: Access a favored location and create a route to get you there.</p>
</li>
<li>
<p>Route To Start: Create the fastest route back to your starting point.</p>
</li>
<li>
<p>Retrace Route: Follow your own track  back to where you started.</p>
</li>
</ul>
<li>
<p>Detailed Map Layers: See POIs, road types, elevation profiles, and more with improved mapping.</p>
</li>
<li>
<p>Google Maps Route Sharing: Use Google Maps to quickly create and send routes to your ELEMNT.</p>
</li>
<li>
<p>Audible Turn-By-Turn Directions: Built-in speaker reduces screen reliance.</p>
</li>
<li>
<p>Public Route Sharing – Share a route instantly via the Wahoo App.</p>
</li>
<li>
<p>Summit Features: Stay prepared for every climb ahead, even without a preloaded route.</p>
</li>
<li>
<p>Strava Segments + Points of Interest – Stay on pace for PRs and easily locate stops along the way.</p>
</li>
</ul>
<h4>SCREEN &amp; INTERFACE</h4>
<ul>
<li>
<p>2.8” High-Resolution TFT Display: Bigger, bolder and more beautiful display for superior readability.</p>
</li>
<li>
<p>Brilliant Color &amp; Sharper Contrast: Optimized for easy viewing in all conditions.</p>
</li>
<li>
<p>Touchscreen Control: Multi-touch gestures make zooming, swiping, and interacting seamless, even in wet conditions.</p>
</li>
<li>
<p>Revamped User Interface: Clean, modern, and easier to use than ever.</p>
</li>
</ul>
<h4>CONNECTED EXPERIENCE</h4>
<ul>
<li>
<p>Wahoo App – A single hub for all your Wahoo devices and ride data.</p>
</li>
<li>
<p>Indoor &amp; Outdoor Workouts – Load workouts from Wahoo SYSTM, TrainingPeaks, and more.</p>
</li>
<li>
<p>Sensor Connectivity – Pairs with bluetooth and ANT+ heart rate, speed, and cadence sensors.</p>
</li>
<li>
<p>Live Tracking: Share real-time location with friends, family, or teammates.</p>
</li>
<li>
<p>Custom Alerts: Create notifications for time, distance, or calories burned.</p>
</li>
<li>
<p>New API for Structured Workouts: Seamlessly import training plans from any provider.</p>
</li>
<li>
<p>Music &amp; Device Control – Manage Spotify, Apple Music, radar, lights, and GoPro directly from your ELEMNT.</p>
</li>
</ul>
<h4>HARDWARE &amp; DESIGN</h4>
<ul>
<li>
<p>Lightweight, Raceable Form Factor: Power meets performance in a sleek but robust design.</p>
</li>
<li>
<p>Tactile Side Buttons: Reliable, easy access to core functions in any condition.</p>
</li>
<li>
<p>Up to 25 Hours of Battery Life: Enough power for long adventures and back-to-back rides.</p>
</li>
</ul>
<h3>WHAT’S IN THE BOX?</h3>
<ul>
<li>
<p>ELEMNT ROAM Bike Computer</p>
</li>
<li>
<p>Out-front Mount</p>
</li>
<li>
<p>USB-C to USB-C Charging Cable</p>
</li>
<li>
<p>Important Product Information</p>
</li>
</ul>

<h3>Specifications</h3>
<ul>
<li>
<p>Total Weight:  3.8oz (109g)</p>
</li>
<li>
<p>Dimensions:  3.8in x 2.1in x .78in  (96mm x 53mm x 24mm)        </p>
</li>
<li>
<p>Display Size  2.8in (71.1mm)</p>
</li>
<li>
<p>Touchscreen: Yes</p>
</li>
<li>
<p>Display Type: TFT</p>
</li>
<li>
<p>Battery:   Rechargeable Lithium-ion</p>
</li>
<li>
<p>Battery Life:  Up to 25 hours</p>
</li>
<li>
<p>Connectivity: WiFi, BTLE 5.0, &amp; ANT+</p>
</li>
<li>
<p>Water Resistance:  IPX7 (submersion up to 1 meter for 30 minutes)</p>
</li>
<li>
<p>Memory:  64GB</p>
</li>
<li>
<p>RAM:   2GB</p>
</li>
<li>
<p>GPS:    Dual-Band</p>
</li>
<li>
<p>Accelerometer: Yes</p>
</li>
<li>
<p>Altimeter:  Yes</p>
</li>
<li>
<p>Gyroscope:  Yes</p>
</li>
<li>
<p>Charging Cable:  USB-C </p>
</li>
<li>
<p>Charging Cable:  24in-61cm</p>
</li>
<li>
<p>Mount:  Plastic,out-front mount compatible with 31.8mm handlebars</p>
</li>
</ul>', array['wahoo-elemnt-roam-3-gps-bike-computer/1.jpg', 'wahoo-elemnt-roam-3-gps-bike-computer/2.jpg', 'wahoo-elemnt-roam-3-gps-bike-computer/3.jpg', 'wahoo-elemnt-roam-3-gps-bike-computer/4.jpg', 'wahoo-elemnt-roam-3-gps-bike-computer/5.jpg']::text[], 'new', 1, '2025-05-07'::date, false, false),

  -- ---- electronics · electronic-accessories ----
  ('blackburn-dayblazer-front-light-mount-kit', 'Blackburn Dayblazer Front Light Mount Kit', 'blackburn', 'electronics', 'electronic-accessories', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER FRONT LIGHT HANDLEBAR STRAP MOUNTING KIT</strong></p>

 <p>This is a replacement front handlebar strap for the Blackburn Dayblazer headlight</p>
 </td>
 <td> </td>
 <td>
 
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-front-light-mount-kit/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('garmin-seat-rail-mount-kit', 'Garmin Seat Rail Mount Kit', 'garmin', 'electronics', 'electronic-accessories', '<p><strong>Garmin Varia Seat Rail Mount Kit</strong></p>
<p>Keep your bike setup clean while making sure your Varia radar is positioned for maximum visibility. The Garmin Varia Seat Rail Mount Kit allows you to securely attach a compatible Varia rearview radar beneath your saddle using standard seat rails. This under-saddle position provides a clear line of sight for approaching vehicles while keeping your seatpost free and uncluttered.</p>
<h3>Key Features</h3>
<ul>
<li>
<p><strong>Enhanced Safety</strong> – Positions your Varia radar for better visibility to motorists.</p>
</li>
<li>
<p><strong>Streamlined Design</strong> – Mounts neatly under your saddle for a clean look.</p>
</li>
<li>
<p><strong>Easy Installation</strong> – Simple setup with a 4 mm hex wrench (not included).</p>
</li>
<li>
<p><strong>Reliable Fit</strong> – Designed for standard 7 mm alloy seat rails.</p>
</li>
<li>
<p><strong>Wide Compatibility</strong> – Works with Varia models including RTL510, RTL515, RVR315, and RCT715.</p>
</li>
</ul>
<h3>What’s in the Box</h3>
<ul>
<li>
<p>Seat rail clamp</p>
</li>
<li>
<p>Friction flange mount extender</p>
</li>
<li>
<p>Quarter-turn adapter</p>
</li>
<li>
<p>Lever-lock adapter</p>
</li>
<li>
<p>Two M4 bolts</p>
</li>
</ul>
<p><strong>Garmin Part Number:</strong> 010-13254-00</p>', array['garmin-seat-rail-mount-kit/1.jpg']::text[], 'new', 0, '2025-02-11'::date, false, false),
  ('knog-blinder-600-900-1300-gopro-mount', 'KNOG BLINDER 700/1000/1400 GOPRO MOUNT', 'knog', 'electronics', 'electronic-accessories', '<p>FOR A CLEAN COCKPIT</p>
<p>Get the most out of your Blinder front bike light with this spare Blinder GoPro Mount, that can be mounted below your cycling computer or to a compatible helmet mount. Compatible with the Blinder 600/900/1300 range.</p>

<p><a></a></p>', array['knog-blinder-600-900-1300-gopro-mount/1.jpg', 'knog-blinder-600-900-1300-gopro-mount/2.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('knog-blinder-600-900-1300-helmet-mount', 'KNOG BLINDER 700/1000/1400 HELMET MOUNT', 'knog', 'electronics', 'electronic-accessories', '<p>POWERFUL DIRECTIONAL LIGHT</p>
<p>Looking for a helmet mounted lighting solution? Pair the Blinder Helmet Mount with any front light from the Blinder 600/900/1300 range, and get powerfully bright directional lighting exactly where you want it. Blinder Helmet Mount is secured to your helmet by wrapping the extra long velcro strap around your helmets top air vents, and it''s designed to stay locked in place even on the roughest of trails.</p>

<p><a></a></p>', array['knog-blinder-600-900-1300-helmet-mount/1.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('knog-blinder-link-spare-saddle-mount', 'KNOG BLINDER LINK - SPARE SADDLE MOUNT', 'knog', 'electronics', 'electronic-accessories', '<p>Spare Saddle Mounts for the Blinder Link Rear Bike Light.</p>', array['knog-blinder-link-spare-saddle-mount/1.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),

  -- ---- electronics · front-lights ----
  ('blackburn-dayblazer-1000-front-light', 'Blackburn Dayblazer 1000 Front Light', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER 1000 FRONT LIGHT</strong></p>

 <p>Great Value And Plenty Of Power? You Really Can Have It All.</p>

 <p>Put quite simply, the Dayblazer 1000 is the best value light we’ve ever developed. Featuring up to1000 lumens of perfectly-focused nighttime illumination, our BLITZ Daytime Running Mode to grab the attention of cars, the choice between a helmet or bar mount, ample side visibility and IP-67 submersibility, the DB1000 is going to get you noticed without breaking the bank.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>1000 Lumens </li>
 <li>Focused beam for better daytime visibility.</li>
 <li>Handlebar or helmet mounting</li>
 <li>Includes Action-Camera style mount</li>
 <li>IP67 Waterproof</li>
 <li>4 Hour USB charging</li>
 <li>Lithium Ion batterty</li>
 <li> OSRAM 3737 LED</li>
 <li>130 grams</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-1000-front-light/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-dayblazer-1000-front-65-rear-combo-set', 'Blackburn Dayblazer 1000 Front/65 Rear Combo Set', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER 1000 FRONT / 65 REAR COMBO SET</strong></p>

 <p><strong>Day Blazer 1000 Front Light</strong></p>

 <ul>
 <li>1000 Lumens </li>
 <li>Focused bean for better daytime visibility </li>
 <li>Handlebar or helmet mounting</li>
 <li>Includes Action-Camera style mount</li>
 <li>IP67 Waterproof</li>
 <li>4 Hour USB charging</li>
 <li>Lithium Ion batterty</li>
 <li> OSRAM 3737 LED</li>
 <li>130 grams</li>
 </ul>
 </td>
 <td> </td>
 <td>
 

 <p><strong>Dayblazer 65 Rear Light</strong></p>

 <ul>
 <li>Charging cable included, no tools required</li>
 <li>Lithium Polymer battery</li>
 <li>Waterproof to IP-67 standard</li>
 <li>TIR Lenses</li>
 <li>LED Fuel Gauge/Charge Indicator</li>
 <li>Polycarbonite Construction</li>
 <li>2 hour recharge time</li>
 <li>Runtime: Solid 1.6hrs (50 lumen), High Flash/Low Strobe 3hrs (65 lumen)/6hrs (35 lumen)</li>
 <li>48g    </li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-1000-front-65-rear-combo-set/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-dayblazer-1500-front-light-1', 'Blackburn Dayblazer 1500 Front Light', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER 1500 FRONT LIGHT</strong></p>

 <p>Can’t decide if you want to hit the local trail system for a midnight shred, or commute home on a January evening? The sleek and compact Dayblazer 1500 has you covered whatever your preference. Weighing in at a scant 140 grams, the DB 1500 features a unique TIR lens design and full 2 hour runtime at 1500 lumens, allowing it to exceed what has come to be expected for a self-contained, bar mounted light. Whether you run it on your bars, or to your helmet (with the supplied Action Camera Mount) the DB 1500 will help you see, and be seen, anywhere you want to ride. The 1500 also features a low power mode that lets you run it at 400 lumens for up to 6 hours. </p>

 <table>
 <tbody>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>1500 Lumens </li>
 <li>Focused bean for better daytime visibility </li>
 <li>Handlebar or helmet mounting</li>
 <li>Includes Action-Camera style mount</li>
 <li>IP67 Waterproof</li>
 <li>5 Hour USB charging</li>
 <li>Lithium Ion batterty</li>
 <li>(2) OSRAM 3737 LEDs</li>
 <li>140 grams</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-1500-front-light-1/1.png', 'blackburn-dayblazer-1500-front-light-1/2.png', 'blackburn-dayblazer-1500-front-light-1/3.png', 'blackburn-dayblazer-1500-front-light-1/4.png', 'blackburn-dayblazer-1500-front-light-1/5.png']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-dayblazer-1500-front-65-rear-combo-set', 'Blackburn Dayblazer 1500 Front/65 Rear Combo Set', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER 1500 FRONT / 65 REAR COMBO SET</strong></p>

 <p><strong>Day Blazer 1500 Front Light</strong></p>

 <ul>
 <li>1500 Lumens </li>
 <li>Focused bean for better daytime visibility </li>
 <li>Handlebar or helmet mounting</li>
 <li>Includes Action-Camera style mount</li>
 <li>IP67 Waterproof</li>
 <li>5 Hour USB charging</li>
 <li>Lithium Ion batterty</li>
 <li>2 OSRAM 3737 LED</li>
 <li>130 grams</li>
 </ul>
 </td>
 <td> </td>
 <td>
 

 <p><strong>Dayblazer 65 Rear Light</strong></p>

 <ul>
 <li>Charging cable included, no tools required</li>
 <li>Lithium Polymer battery</li>
 <li>Waterproof to IP-67 standard</li>
 <li>TIR Lenses</li>
 <li>LED Fuel Gauge/Charge Indicator</li>
 <li>Polycarbonite Construction</li>
 <li>2 hour recharge time</li>
 <li>Runtime: Solid 1.6hrs (50 lumen), High Flash/Low Strobe 3hrs (65 lumen)/6hrs (35 lumen)</li>
 <li>48g    </li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-1500-front-65-rear-combo-set/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-dayblazer-500-front-light', 'Blackburn Dayblazer 500 Front Light', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER 500 FRONT LIGHT</strong></p>

 <p>AWESOME LIGHT. AWESOME PRICE.</p>

 <p><strong>Run Time </strong></p>

 <ul>
 <li>High mode: 2 hours at 500 lumens, </li>
 <li>Medium mode: 4 hours at 250 lumens<strong>, </strong></li>
 <li>Strobe mode:<strong> </strong>20 hours at 65 lumens</li>
 </ul>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li><strong>Lithium Battery Packaged </strong>In Product</li>
 <li><strong>Recharge Type </strong>Micro-USB rechargeable — Charges via any standard USB port (charging cable included)</li>
 <li><strong>Number of Batteries </strong>1.00</li>
 <li><strong>Brightness </strong>Up to 500 lumens</li>
 <li><strong>Batteries Included </strong>Batteries Included</li>
 <li><strong>Battery Type </strong>Lithium Ion</li>
 <li><strong>Batteries Needed </strong>Yes</li>
 <li>Strap mount with quick release for easy removal during charging</li>
 <li>Universal Light Mount action-camera-style mount Included</li>
 <li>LED Fuel Gauge / Charge Indicator</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-500-front-light/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-dayblazer-550-grid-rear-light-set', 'Blackburn Dayblazer 550 & Grid Rear Light Set', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER 550 &amp; GRID REAR LIGHT SET</strong></p>

 <p>Join forces with our popular Dayblazer 550 combined with the Grid Rear, packing a punch with lumens, COB technology, multiple modes and extended battery life.</p>

 <p><strong>Big Light Set, Small Price.</strong></p>

 <p>The Dayblazer 550''s high-power BLITZ daytime running mode and side visibility grab the attention of cars or light your way through a dark section of the commute. The Grid Rear Light has a wide COB light array and long run time. Ready for those commuting in the city, riding the open roads, or heading to their local trail. The Dayblazer 550 and Grid Rear Light Set offer plenty of rechargeable power to keep you visible while out riding and are well-powered to be seen.</p>

 <p><strong>Recharge Type </strong>Micro-USB rechargeable — Charges via any standard USB port (charging cable included)<br>
 <strong>Brightness </strong>Up to 550 lumens front, 40 lumens rear <br>
 <strong>Mounting Options  </strong>Swivel mount - A rotating mount allows the light to be adjusted to center on the road! This versatile silicone mount fits handlebars from 22–35mm and can be used to strap to some helmets. (Dayblazer 550 Front Light) Silicone strap mount stretches to fit a wide variety of sizes. Integrated pack and belt attachment clip</p>

 <p><strong>Water Resistance </strong>IP-65 Ingress protection rating or "IP Rating," is a techy way to describe the level of water- and dust-proofness of a product. This light meets the IP-65 Standard, which means it is totally protected against dust/grit and protected against low-pressure water jets coming from any direction.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>RUN TIME:</strong></p>

 <ul>
 <li>Front Blitz mode: 1 hour at 550 lumens</li>
 <li>Front high mode: 1.5 hours at 275 lumens</li>
 <li>Front low mode: 5 hours at 75 lumens</li>
 <li>Front pulse mode: 5.5 hours at 100 lumens</li>
 <li>Front strobe mode: 12 hours at 65 lumens</li>
 <li>Rear solid mode: 1.5 hours at 40 lumens</li>
 <li>Rear pulse mode: 4 hours at 30 lumens (+2 hours auto-Eco)</li>
 <li>Rear strobe mode: 7.5 hours at 20 lumens (+2 hours auto-Eco)</li>
 <li>Rear eco mode: 20 hours at 20 lumens</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-550-grid-rear-light-set/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-dayblazer-550-front-light-1', 'Blackburn Dayblazer 550 Front Light', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER 550 FRONT LIGHT</strong></p>

 <p>AWESOME LIGHT. AWESOME PRICE.</p>

 <p>Featuring eye-popping BLITZ Daytime Running Mode to grab the attention of cars, IP-67 submersibility and ample side visibility, the Dayblazer 550 puts light where riders need it most.</p>

 <p><strong>Water Resistance</strong></p>

 <ul>
 <li>IP-67 submersible - Ingress protection rating, or "IP Rating," is a techy way to describe the level of water- and dust-proofness of a product. This light meets the IP-67 Standard, which means it is totally protected against dust/grit and fully protected against the effects of immersion between 15cm and 1 meter for 30 minutes.</li>
 </ul>

 <p><strong>Run Time </strong></p>

 <ul>
 <li>Blitz mode: 1 hour at 550 lumens<strong>, </strong></li>
 <li>High mode: 1.5 hours at 275 lumens, </li>
 <li>Low mode: 5 hours at 75 lumens<strong>, </strong></li>
 <li>Pulse mode: 5.5 hours at 100 lumens<strong>, </strong></li>
 <li>Strobe mode:<strong> </strong>12 hours at 65 lumens</li>
 </ul>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li><strong>Lithium Battery Packaged </strong>In Product</li>
 <li><strong>Recharge Type </strong>Micro-USB rechargeable — Charges via any standard USB port (charging cable included)</li>
 <li><strong>Number of Batteries </strong>1.00</li>
 <li><strong>Brightness </strong>Up to 550 lumens</li>
 <li><strong>Batteries Included </strong>Batteries Included</li>
 <li><strong>Lithium Battery Energy Content Watt Hours </strong>10.1</li>
 <li><strong>Battery Type </strong>Lithium Ion</li>
 <li><strong>Batteries Needed </strong>Yes</li>
 <li><strong>Recharge Time </strong>3-hour recharge</li>
 <li><strong>Mounting Options </strong>Swivel mount - A rotating mount allows the light to be adjusted to center on the road! This versatile silicone mount fits handlebars from 22–35mm and can be used to strap to some helmets.</li>
 <li>Universal Light Mount action-camera-style mount sold separately</li>
 <li><strong>Weight </strong>59 grams</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-550-front-light-1/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-grid-light-set', 'Blackburn Grid Light Set', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN GRID FRONT AND REAR LIGHT SET</strong></p>

 <p>Grid Front and Rear Lights have four mode options, you can choose if you need high lumen power or extended run time. A complete set ready for those commuting in the city, riding the open roads, or heading to their local trail. The Grid Light Set offers plenty of rechargeable power to keep you visible while out riding.</p>

 <p><strong>Water Resistance </strong>IP-65 Ingress protection rating or "IP Rating," is a techy way to describe the level of water- and dust-proofness of a product. This light meets the IP-65 Standard, which means it is totally protected against dust/grit and protected against low-pressure water jets coming from any direction.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Recharge Type</strong></th>
 <td>USB-C Rechargable</td>
 </tr>
 <tr>
 <th><strong>Max Brightness</strong></th>
 <td>110 Lumens (F), 40 Lumens (R)</td>
 </tr>
 <tr>
 <th><strong>Mounting Options</strong></th>
 <td>Silicone Strap, Clip Attachment</td>
 </tr>
 <tr>
 <th><strong>Product Weight</strong></th>
 <td>47g Each</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>Run Time</strong></p>

 <ul>
 <li>Front solid mode: 1.5 hours at 110 lumens</li>
 <li>Front pulse mode: 4 hours at 75 lumens (+2 hours auto-Eco)</li>
 <li>Front strobe mode: 8.5 hours at 40 lumens (+2 hours auto-Eco)</li>
 <li>Front eco flash mode: 20 hours at 40 lumens</li>
 <li>Rear solid mode: 1.5 hours at 40 lumens</li>
 <li>Rear pulse mode: 4 hours at 30 lumens (+2 hours auto-Eco)</li>
 <li>Rear strobe mode: 7.5 hours at 20 lumens (+2 hours auto-Eco)</li>
 <li>Rear eco mode: 20 hours at 20 lumens</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-grid-light-set/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-luminate-360-light-set', 'Blackburn Luminate 360 Light Set', 'blackburn', 'electronics', 'front-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN LUMINATE 360 LIGHT SET</strong></p>

 <p>We Understand Being Able To See In The Dark Is Important, but we also believe that so is being visible to cars. A recent study by the national highway traffic safety administration (NHTSA) showed 27% of bicycle accidents are side impacts and 30% of fatalities occur in intersections (2010-2017). With the illuminate 360 set, being seen from all angles when cycling has never been easier. The grid side beacon was imagined to work with Head/Tail lights to keep you more visible from a full 360 degrees. While the grid side beacon can be used as a stand alone light, we believe it works best as part of our Luminate 360 light set the dayblazer 400 front light and the 65 rear light are spec''d with blitz mode to keep you bright enough to be seen, day or night</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Weight</strong></th>
 <td>165g</td>
 </tr>
 <tr>
 <th><strong>Batteries</strong></th>
 <td>4 Lithium Ion Batteries Included</td>
 </tr>
 <tr>
 <th><strong>Charger Type</strong></th>
 <td>Micro USB</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>IP STANDARD IP-65 SUBMERSIBLE</strong> - Ingress protection rating or IP Rating is a techy way to describe the level of water and dust proofness of a product. This light meets the IP-65 standard, which means it is totally protected against dust and grit and protected against low pressure water jets from any direction</p>

 <ul>
 <li><strong>REAR LUMEN OUTPUT / RUNTIME </strong>Solid 50 lumen, 1.6 hr runtime; High Flash 65 lumen, 3 hr runtime; Low Strobe 35 lumen, 6 hr runtime</li>
 <li><strong>SIDE / LUMEN OUTPUT / RUNTIME </strong>High/Solid 85 lumen, 1.5 hr runtime; Low/Solid 50 lumen, 3 hr runtime; High/Flash 85 lumen, 3 hr runtime; Low/Strobe 50 lumen 6 hr runtime</li>
 <li><strong>FRONT / LUMEN OUTPUT / RUNTIME </strong>Blitz 400 lumen, 1 hr runtime; Low 200 lumen, 1.5 hr runtime; Pulse 200 lumen, 6 hr runtime; Strobe 200 lumen, 10 hr runtime </li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-luminate-360-light-set/1.jpg', 'blackburn-luminate-360-light-set/2.jpg', 'blackburn-luminate-360-light-set/3.png', 'blackburn-luminate-360-light-set/4.png']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('knog-blinder-1000-blinder-square-bike-lightset', 'KNOG BLINDER 1000 + BLINDER SQUARE BIKE LIGHTSET', 'knog', 'electronics', 'front-lights', '<p>POWERFUL &amp; VERSATILE</p>
<p><strong>The perfect choice for road cyclists who demand the very best in safety and performance. With long runtimes, carefully considered beam angles, powerful light output and multiple mounting options – the Blinder 1000 &amp; Blinder Square combo will impress, while greatly improving your confidence on the road.</strong></p>
<p>WEIGHT: Blinder 1000 - 140g | 167g with Flex-Mount | 161g with GoPro Mount<br><br></p>
<p><strong>PRODUCT HIGHLIGHTS:</strong><br><br></p>
<p>BLINDER 1000 </p>
<ul>
<li>Produces a powerful 1000 lumen road focused beam.</li>
<li>Provides quality illumination up to 100m.</li>
<li>Industry leading battery tech provides 2 hrs runtime on full brightness.</li>
<li>Up to 120 hours runtime on Eco flash mode.</li>
<li>Includes two mounts; a go-pro style attachment for mounting under a computer and a tough rubber strap for the handlebar.</li>
<li>Pre-programmed with 6 light modes to suit all conditions.</li>
<li>USB-C rechargeable (cable not supplied).</li>
<li>100% waterproof with an IP67 rating.</li>
<li>Intelligent button LEDs show battery level &amp; charge status.</li>
<li>Side illumination windows for improved visibility.</li>
</ul>

<p>BLINDER SQUARE REAR</p>
<ul>
<li>Be seen from up to 450 metres away.</li>
<li>USB rechargeable.</li>
<li>Integrated USB-A connector for cable free charging.</li>
<li>Waterproof with IP67 rating.</li>
<li>Up to 60 hr runtime.</li>
<li>8 light mode settings.</li>
</ul>

<p><a></a></p>', array['knog-blinder-1000-blinder-square-bike-lightset/1.jpg', 'knog-blinder-1000-blinder-square-bike-lightset/2.jpg', 'knog-blinder-1000-blinder-square-bike-lightset/3.jpg', 'knog-blinder-1000-blinder-square-bike-lightset/4.jpg', 'knog-blinder-1000-blinder-square-bike-lightset/5.jpg']::text[], 'new', 1, '2026-04-14'::date, false, false),
  ('knog-blinder-1000-cobber-reflex-lightset', 'KNOG BLINDER 1000 + COBBER REFLEX LIGHTSET', 'knog', 'electronics', 'front-lights', '<p><strong>BLINDER 1000</strong></p>
<p>The perfect choice for road cyclists who demand the very best in performance. Combining robust CNC construction, compact design, perfect beam angles, powerfully bright output and multiple mounting options, Blinder 1000 front bike light raises the bar by which front bike lights are measured.</p>
<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>Produces a powerful 1000 lumen road focused beam.</li>
<li>Provides quality illumination up to 100m.</li>
<li>Industry leading battery tech provides 2 hrs runtime on full brightness.</li>
<li>Up to 120 hours runtime on Eco Flash mode.</li>
<li>Includes two mounts; a go-pro style attachment for mounting under a computer and a tough rubber strap for the handlebar.</li>
<li>Pre-programmed with 6 light modes to suit all conditions.</li>
<li>USB-C rechargeable (cable not supplied).</li>
<li>100% waterproof with an IP67 rating.</li>
<li>Intelligent button LEDs show battery level &amp; charge status.</li>
<li>Side illumination windows for improved visibility.</li>
<li>Weight: 140g | 167g with Flex-Mount | 161g with GoPro Mount</li>
</ul>

<p><strong>COBBER REFLEX</strong><br><br>The Cobber Reflex Rear is engineered for high visibility in all directions, emitting 300 lumens of light with 170º coverage to ensure riders stay seen from behind and the sides. With a range of modes, USB-C recharging, and IP67 waterproofing, it’s built for consistency and confidence in any conditions.</p>
<p>Featuring our revolutionary Reflex technology, The Cobber Reflex provides users with reflexive lighting modes that adapt to their riding conditions. It''s programmed off thousands of collected GPS data readings and features auto-on/auto-off modes, motion-activated deceleration modes, and a dynamic tilt mode, all of which help improve rider safety by signalling to vehicles of changes in the road or riders speed for a safer ride.</p>
<p>Visit <strong><a href="https://modemaker.knog.com/" rel="noopener nofollow" target="_blank">https://modemaker.knog.com/</a></strong> to <strong>configure your Cobber Reflex</strong> and <strong>customise</strong> its modes. </p>
<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>Powerful 250 lumen output</li>
<li>Revolutionary Reflex technology - auto-on/auto-off modes, motion-activated deceleration modes and a dynamic tilt mode.</li>
<li>A 170 degree beam angle that wraps light around you, not just behind you. 330º when paired with the Cobber Reflex Front Light.</li>
<li>USB-C rechargeable</li>
<li>Multiple steady and flash modes</li>
<li>IP67 waterproof</li>
<li>Secure, tool-free mounting</li>
<li>Weight: 39g</li>
</ul>

<p><a></a></p>', array['knog-blinder-1000-cobber-reflex-lightset/1.jpg', 'knog-blinder-1000-cobber-reflex-lightset/2.jpg', 'knog-blinder-1000-cobber-reflex-lightset/3.jpg', 'knog-blinder-1000-cobber-reflex-lightset/4.jpg', 'knog-blinder-1000-cobber-reflex-lightset/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('knog-blinder-1000-front-bike-light', 'KNOG BLINDER 1000 FRONT BIKE LIGHT', 'knog', 'electronics', 'front-lights', '<p><br>POWERFUL &amp; VERSATILE</p>
<p><strong>The perfect choice for road cyclists who demand the very best in performance. Combining robust CNC construction, compact design, perfect beam angles, powerfully bright output and multiple mounting options, Blinder 1000 front bike light raises the bar by which front bike lights are measured.</strong></p>

<p><strong>PRODUCT HIGHLIGHTS:</strong><br><br></p>
<p><strong>WEIGHT:</strong> 140g | 167g with Flex-Mount | 161g with GoPro Mount</p>
<ul>
<li>Produces a powerful 1000 lumen road focused beam.</li>
<li>Provides quality illumination up to 100m.</li>
<li>Industry leading battery tech provides 2 hrs runtime on full brightness.</li>
<li>Up to 120 hours runtime on Eco Flash mode.</li>
<li>Includes two mounts; a go-pro style attachment for mounting under a computer and a tough rubber strap for the handlebar.</li>
<li>Pre-programmed with 6 light modes to suit all conditions.</li>
<li>USB-C rechargeable (cable not supplied).</li>
<li>100% waterproof with an IP67 rating.</li>
<li>Intelligent button LEDs show battery level &amp; charge status.</li>
<li>Side illumination windows for improved visibility.</li>
</ul>

<p><strong>ROCK-SOLID MOUNTING SYSTEMS</strong></p>
<p>Blinder 1000 comes with two seperate mounts. A tough and flexible rubber handlebar mount that fits diameters from 22.2mm to 35mm, and a Go-Pro compatible mount that can position the light below your computer.</p>
<p><strong>INTELLIGENT SILICONE BUTTON</strong></p>
<p>This large, easy-to-operate button allows the rider to easily select one of the seven available modes. The button also features a LED ring that glows while the light is charging and turns off when the light has achieved full charge capacity. No need to guess when your light requires a recharge with a convenient LED that lights up red when your light dips below 10% remaining charge.</p>
<p><strong>INDUSTRY-LEADING BATTERY TECHNOLOGY</strong></p>
<p>Blinder 1000 is powered by a 21700 3.7V lithium ion battery. This technology provides best-in-class power-to-weight ratio, meaning you get to enjoy a more compact design with longer runtimes than most other lights in this category. Recharge is achieved simply by plugging into any USB C port.</p>
<p><strong>HIGH-POWERED ROAD-FOCUSED BEAM</strong></p>
<p>An innovative and considered design combines two wide beam optics with two narrow beam optics to provide high quality illumination for up to 80 m. At the optimum angle of 22 degrees, you get more light where you want it.</p>
<p><strong>UNIBODY CNC CONSTRUCTION</strong></p>
<p>The manufacture of the new Blinder is a first for Knog, as it is constructed from a single piece of industrial grade aluminium using CNC machining. Constructing the light using this method makes for an unbelievably strong product that is also lightweight and impervious to corrosion. CNC machined chassis cooling fins help prevent the head unit from overheating, and dual-function side body vents allow dual mounting options and help regulate the battery temperature.</p>
<p>A final level of protection is achieved by anodising the aluminium body, resulting in an unparalleled durable finish that reinforces its natural ability to withstand the elements and that cannot flake, peel or blister.</p>
<p><strong>100% WATERPROOF</strong></p>
<p>With an IP67 rating, Blinders can be submerged in 1 metre of water for 30 minutes and still come out shining.</p>

<p><a></a></p>', array['knog-blinder-1000-front-bike-light/1.jpg', 'knog-blinder-1000-front-bike-light/2.jpg', 'knog-blinder-1000-front-bike-light/3.jpg', 'knog-blinder-1000-front-bike-light/4.jpg', 'knog-blinder-1000-front-bike-light/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('knog-blinder-1300', 'KNOG BLINDER 1300 FRONT BIKE LIGHT', 'knog', 'electronics', 'front-lights', '<p>Blinder 1300 is precise, powerful, long-lasting and the perfect choice for road and gravel cyclists who demand the very best performance from their equipment. Combining robust CNC construction, compact design, perfect beam angles, an incredible weight-to-power ratio and multiple mounting options, Blinder 1300 front bike light raises the bar by which front bike lights are measured.</p>
<p><strong>WEIGHT:</strong> 162g | 180g with Flex-Mount | 174g with GoPro Mount</p>
<ul>
<li>Produces a powerful 1300 lumen road focused beam</li>
<li>Provides quality illumination up to 120m</li>
<li>Industry leading battery tech provides 1.5 hrs runtime on full brightness</li>
<li>Up to 120 hours runtime on Eco Flash mode</li>
<li>Includes two mounts; a tough rubber strap for over / under the handlebar, and a Go-Pro style mount for mounting under a computer or to a compatible helmet mount.</li>
<li>Pre-programmed with 6 light modes to suit all conditions</li>
<li>USB-C rechargeable (cable not supplied)</li>
<li>100% waterproof with an IP67 rating</li>
<li>Intelligent button LEDs show battery level &amp; charge status</li>
<li>Side illumination windows for improved visibility</li>
</ul>
<h3>ROCK SOLID MOUNTING OPTIONS</h3>
<p>Blinder 1300 comes with two seperate mounts. A tough and flexible rubber handlebar mount that fits diameters from 22.2mm to 35mm, and a Go-Pro compatible mount that can position the light below your computer.</p>
<h3>INTELLIGENT SILICONE BUTTON</h3>
<p>This large, easy-to-operate button allows the rider to easily select one of the seven available modes. The button also features a LED ring that glows while the light is charging and turns off when the light has achieved full charge capacity. No need to guess when your light requires a recharge with a convenient LED that lights up red when your light dips below 10% remaining charge.</p>
<h3><strong>INDUSTRY-LEADING BATTERY TECHNOLOGY</strong></h3>
<p>Blinder 1300 is powered by a 21700 3.7V lithium ion battery. This technology provides best-in-class power-to-weight ratio, meaning you get to enjoy a more compact design with longer runtimes than most other lights in this category. Recharge is achieved simply by plugging into any USB C port.</p>
<h3><strong>HIGH-POWERED ROAD-FOCUSED BEAM</strong></h3>
<p>An innovative and considered design combines two wide beam optics with two narrow beam optics to provide high quality illumination for up to 120 m. At the optimum angle of 23 degrees, you get more light where you want it.</p>
<h3><strong>UNIBODY CNC CONSTRUCTION</strong></h3>
<p>The manufacture of the new Blinder is a first for Knog, as it is constructed from a single piece of industrial grade aluminium using CNC machining. Constructing the light using this method makes for an unbelievably strong product that is also lightweight and impervious to corrosion. CNC machined chassis cooling fins help prevent the head unit from overheating, and dual-function side body vents allow dual mounting options and help regulate the battery temperature.<br><br>A final level of protection is achieved by anodising the aluminium body, resulting in an unparalleled durable finish that reinforces its natural ability to withstand the elements and that cannot flake, peel or blister.</p>
<h3>100% WATERPROOF</h3>
<p>With an IP67 rating, Blinders can be submerged in 1 metre of water for 30 minutes and still come out shining.</p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-blinder-1300/1.jpg', 'knog-blinder-1300/2.jpg', 'knog-blinder-1300/3.jpg', 'knog-blinder-1300/4.jpg', 'knog-blinder-1300/5.jpg']::text[], 'new', 0, '2024-04-09'::date, false, false),
  ('knog-blinder-1400-cobber-reflex-lightset', 'KNOG BLINDER 1400 + COBBER REFLEX LIGHTSET', 'knog', 'electronics', 'front-lights', '<p><strong>BLINDER 1400</strong></p>
<p>Designed for all-road and gravel riders, the next generation Blinder 1400 front bike light is engineered for power &amp; performance on and off the tarmac. The additional LEDs on this top-of-the-range light are paired with precision beam optics to help you see more on the trails, while the dual mount options (included) give you the choice of rock-solid bar mounting or attaching under a computer.</p>
<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>Produces a powerful lumen road focused beam with up to 1400 lumen brightness.</li>
<li>Provides quality illumination up to 120m.</li>
<li>Industry leading battery tech provides 1.5 hrs runtime on full brightness.</li>
<li>Up to 120 hours runtime on Eco Flash mode.</li>
<li>Includes two mounts; a go-pro style attachment for mounting under a computer and a tough rubber strap for the handlebar.</li>
<li>Pre-programmed with 6 light modes to suit all conditions.</li>
<li>USB-C rechargeable (cable not supplied).</li>
<li>100% waterproof with an IP67 rating.</li>
<li>Intelligent button LEDs show battery level &amp; charge status.</li>
<li>Side illumination windows for improved visibility.</li>
<li>Weight: 162g | 180g with Flex-Mount | 174g with GoPro Mount</li>
</ul>

<p><strong>COBBER REFLEX</strong><br><br>The Cobber Reflex Rear is engineered for high visibility in all directions, emitting 300 lumens of light with 170º coverage to ensure riders stay seen from behind and the sides. With a range of modes, USB-C recharging, and IP67 waterproofing, it’s built for consistency and confidence in any conditions.</p>
<p>Featuring our revolutionary Reflex technology, The Cobber Reflex provides users with reflexive lighting modes that adapt to their riding conditions. It''s programmed off thousands of collected GPS data readings and features auto-on/auto-off modes, motion-activated deceleration modes, and a dynamic tilt mode, all of which help improve rider safety by signalling to vehicles of changes in the road or riders speed for a safer ride.</p>
<p>Visit <strong><a href="https://modemaker.knog.com/" rel="noopener nofollow" target="_blank">https://modemaker.knog.com/</a></strong> to <strong>configure your Cobber Reflex</strong> and <strong>customise</strong> its modes. </p>
<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>Powerful 250 lumen output</li>
<li>Revolutionary Reflex technology - auto-on/auto-off modes, motion-activated deceleration modes and a dynamic tilt mode.</li>
<li>A 170 degree beam angle that wraps light around you, not just behind you. 330º when paired with the Cobber Reflex Front Light.</li>
<li>USB-C rechargeable</li>
<li>Multiple steady and flash modes</li>
<li>IP67 waterproof</li>
<li>Secure, tool-free mounting</li>
<li>Weight: 39g</li>
</ul>

<p><a></a></p>', array['knog-blinder-1400-cobber-reflex-lightset/1.jpg', 'knog-blinder-1400-cobber-reflex-lightset/2.jpg', 'knog-blinder-1400-cobber-reflex-lightset/3.jpg', 'knog-blinder-1400-cobber-reflex-lightset/4.jpg', 'knog-blinder-1400-cobber-reflex-lightset/5.jpg']::text[], 'new', 1, '2026-04-14'::date, false, false),
  ('knog-blinder-1400-front-bike-light', 'KNOG BLINDER 1400 FRONT BIKE LIGHT', 'knog', 'electronics', 'front-lights', '<p><br>POWERFUL &amp; VERSATILE</p>
<p><strong>Designed for all-road and gravel riders, the next generation Blinder 1400 front bike light is engineered for power &amp; performance on and off the tarmac. The additional LEDs on this top-of-the-range light are paired with precision beam optics to help you see more on the trails, while the dual mount options (included) give you the choice of rock-solid bar mounting or attaching under a computer.</strong></p>

<p><strong>PRODUCT HIGHLIGHTS:</strong><br><br></p>
<p><strong>WEIGHT:</strong> 162g | 180g with Flex-Mount | 174g with GoPro Mount</p>
<ul>
<li>Produces a powerful 1400 lumen road focused beam.</li>
<li>Provides quality illumination up to 120m.</li>
<li>Industry leading battery tech provides 1.5 hrs runtime on high brightness.</li>
<li>Up to 120 hours runtime on Eco Flash mode.</li>
<li>Includes two mounts; a tough rubber strap for over / under the handlebar, and a Go-Pro style mount for mounting under a computer or to a compatible helmet mount.</li>
<li>Pre-programmed with 6 light modes to suit all conditions.</li>
<li>USB-C rechargeable (cable not supplied).</li>
<li>100% waterproof with an IP67 rating.</li>
<li>Intelligent button LEDs show battery level &amp; charge status.</li>
<li>Side illumination windows for improved visibility.</li>
</ul>

<p><strong>ROCK-SOLID MOUNTING SYSTEMS</strong></p>
<p>Blinder 1400 comes with two seperate mounts. A tough and flexible rubber handlebar mount that fits diameters from 22.2mm to 35mm, and a Go-Pro compatible mount that can position the light below your computer.</p>
<p><strong>INTELLIGENT SILICONE BUTTON</strong></p>
<p>This large, easy-to-operate button allows the rider to easily select one of the seven available modes. The button also features a LED ring that glows while the light is charging and turns off when the light has achieved full charge capacity. No need to guess when your light requires a recharge with a convenient LED that lights up red when your light dips below 10% remaining charge.</p>
<p><strong>INDUSTRY-LEADING BATTERY TECHNOLOGY</strong></p>
<p>Blinder 1400 is powered by a 21700 3.7V lithium ion battery. This technology provides best-in-class power-to-weight ratio, meaning you get to enjoy a more compact design with longer runtimes than most other lights in this category. Recharge is achieved simply by plugging into any USB C port.</p>
<p><strong>HIGH-POWERED ROAD-FOCUSED BEAM</strong></p>
<p>An innovative and considered design combines two wide beam optics with two narrow beam optics to provide high quality illumination for up to 80 m. At the optimum angle of 22 degrees, you get more light where you want it.</p>
<p><strong>UNIBODY CNC CONSTRUCTION</strong></p>
<p>The manufacture of the new Blinder is a first for Knog, as it is constructed from a single piece of industrial grade aluminium using CNC machining. Constructing the light using this method makes for an unbelievably strong product that is also lightweight and impervious to corrosion. CNC machined chassis cooling fins help prevent the head unit from overheating, and dual-function side body vents allow dual mounting options and help regulate the battery temperature.</p>
<p>A final level of protection is achieved by anodising the aluminium body, resulting in an unparalleled durable finish that reinforces its natural ability to withstand the elements and that cannot flake, peel or blister.</p>
<p><strong>100% WATERPROOF</strong></p>
<p>With an IP67 rating, Blinders can be submerged in 1 metre of water for 30 minutes and still come out shining.</p>

<p><a></a></p>', array['knog-blinder-1400-front-bike-light/1.jpg', 'knog-blinder-1400-front-bike-light/2.jpg', 'knog-blinder-1400-front-bike-light/3.jpg', 'knog-blinder-1400-front-bike-light/4.jpg', 'knog-blinder-1400-front-bike-light/5.jpg']::text[], 'new', 1, '2026-04-14'::date, false, false),
  ('knog-blinder-400-plus-bike-lightset', 'KNOG BLINDER 400 + PLUS BIKE LIGHTSET', 'knog', 'electronics', 'front-lights', '<p><strong>BLINDER 400</strong></p>
<p>The Blinder 400 is your gateway into the high-powered Blinder universe. Built with a rugged composite nylon body and housing a 1850mAh battery, this 400-lumen light delivers reliable, high-performance illumination for every ride.</p>
<p>We’ve carefully selected the LED to produce a clear, daylight-colored beam, reducing eye strain and fatigue—perfect for night rides. Despite its compact and lightweight design, the Blinder 400 features a focused 18° optic, ensuring the light is perfect for long-range visibility.</p>
<p><strong>PEAK LUMENS:</strong> 400 <br><strong>MAX RUNTIME:</strong> 120 hrs<br><strong>MOUNT:</strong> Silicon Strap. Compatible with Blinder GoPro Mount and Helmet Mount<br><strong>WEIGHT:</strong> 90g<br><strong>DIMENSIONS:</strong> H: 32mm x W: 32mm x L: 84mm</p>
<p><br><strong>PLUS REAR </strong></p>
<p>The Plus Light, our most versatile bike light ever. Mount to your handlebar,fork, seat post, seat says or remove from the mount and clip it onto just about anything - Socks, bags, jerseys, you name it.</p>
<p><strong>PEAK LUMENS:</strong> 20<br><strong>PEAK RUNTIME:</strong> 40 hrs<br><strong>RECHARGE TIME:</strong> 4hrs<br><strong>MOUNT:</strong> Silicon Strap w/ Magnetic Junction, Wearable Clip<br><strong>WEIGHT:</strong> 14g<br><strong>DIMENSIONS:</strong> H: 66mm x W: 24mm x L:14mm </p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-blinder-400-plus-bike-lightset/1.jpg', 'knog-blinder-400-plus-bike-lightset/2.jpg', 'knog-blinder-400-plus-bike-lightset/3.jpg', 'knog-blinder-400-plus-bike-lightset/4.jpg', 'knog-blinder-400-plus-bike-lightset/5.jpg']::text[], 'new', 1, '2026-06-08'::date, false, false),
  ('knog-blinder-600-plus-lightset', 'KNOG BLINDER 600 + PLUS BIKE LIGHTSET', 'knog', 'electronics', 'front-lights', '<p>This brilliantly designed light set is bright, dependable and the perfect partner for commuters on urban streets. With more than enough power to be seen night and day, long runtimes and easy on / off mounting, this combo will greatly improve your safety while being a delight to use.</p>
<p><strong>WEIGHT<br>Blinder 600</strong> 140g | 155g with Flex-Mount<br><strong>Plus:</strong> 18g</p>
<p>Combining robust CNC construction, compact design, perfect beam angles and powerful light output, <strong>Blinder 600</strong> is a top-shelf front bike light.</p>
<ul>
<li>Produces a powerful 600 lumen road focused beam</li>
<li>Provides quality illumination up to 80m</li>
<li>Industry leading battery tech provides 2 hrs runtime on full brightness</li>
<li>Up to 120 hours runtime on Eco flash mode</li>
<li>Includes a tough and durable mount for over or under bar mounting</li>
<li>Pre-programmed with 6 light modes to suit all conditions</li>
<li>USB-C rechargeable (cable not supplied)</li>
<li>100% waterproof with an IP67 rating</li>
<li>Intelligent button LEDs show battery level &amp; charge status</li>
<li>Side illumination windows for improved visibility</li>
</ul>
<p><br><strong>Plus rear</strong> is simply a pleasure to use; versitile mounting options, magnetic attachment and the ability to remove from the mount and clip it onto just about anything.</p>
<ul>
<li>Be seen from up to 450 metres away</li>
<li>Integrated USB-A connector for cable free charging</li>
<li>Waterproof with IP66 rating</li>
<li>Wearable</li>
<li>Ultralight at just 18 grams</li>
<li>Up to 40 hr runtime</li>
</ul>
<h3>ROCK SOLID MOUNTING SYSTEM</h3>
<p>Included with the Blinder 600 is a tough and flexible rubber handlebar mount that fits diameters from 22.2mm to 35mm. With the option of mounting on top or below your bar, Blinder 600 can be positioned to best suit your set-up.</p>
<h3>INTELLIGENT SILICONE BUTTON</h3>
<p>An LED light around Blinder''s soft touch silicone button allows you to quickly see remaining charge and the charging status. A quick press of the button when it''s off shows you remaining charge, with green being 100-50% charge remaining, yellow 50-25%, and red under 25%. When charging, a yellow flash indicates the light is being charged, which turns green when full..</p>
<h3><strong>INDUSTRY-LEADING BATTERY TECHNOLOGY</strong></h3>
<p>Blinder 600 is powered by a 18650 3.7V lithium ion battery. This technology provides best-in-class power-to-weight ratio, meaning you get to enjoy a more compact design with longer runtimes than most other lights in this category. Recharge is achieved simply by plugging into any USB C port.</p>
<h3><strong>HIGH-POWERED ROAD-FOCUSED BEAM</strong></h3>
<p>An innovative and considered design combines two wide beam optics with two narrow beam optics to provide high quality illumination for up to 80 m. At the optimum angle of 22 degrees, you get more light where you want it.</p>
<h3><strong>CABLE-FREE CHARGING</strong></h3>
<p>Plus plugs directly into USB-A ports &amp; is designed to be exposed to the elements. Just remove from it’s magnetic mount and you’re ready to charge.</p>
<h3>MOUNT IT OR WEAR IT</h3>
<p>Mount the Plus on the seat post, seat stay... anything goes. Or remove from the mount and clip it onto a bag, sock or jacket.</p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-blinder-600-plus-lightset/1.jpg', 'knog-blinder-600-plus-lightset/2.jpg', 'knog-blinder-600-plus-lightset/3.jpg', 'knog-blinder-600-plus-lightset/4.jpg', 'knog-blinder-600-plus-lightset/5.jpg']::text[], 'new', 0, '2025-05-26'::date, false, false),
  ('knog-blinder-700-plus-bike-lightset', 'KNOG BLINDER 700 + PLUS BIKE LIGHTSET', 'knog', 'electronics', 'front-lights', '<p>POWERFUL &amp; VERSATILE</p>
<p><strong>This brilliantly designed light set is bright, dependable and the perfect partner for commuters on urban streets. With more than enough power to be seen night and day, long runtimes and easy on / off mounting, this combo will greatly improve your safety while being a delight to use.</strong></p>
<p>WEIGHT: Blinder 700 - 140g | 155g with Flex-Mount, Plus Rear - 18g</p>

<p>PRODUCT HIGHLIGHTS:</p>

<p>BLINDER 700 </p>
<ul>
<li>Produces a powerful 700 lumen road focused beam.</li>
<li>Provides quality illumination up to 80m.</li>
<li>Industry leading battery tech provides 2 hrs runtime on full brightness.</li>
<li>Up to 120 hours runtime on Eco flash mode.</li>
<li>Includes a tough and durable mount for over or under bar mounting.</li>
<li>Pre-programmed with 6 light modes to suit all conditions.</li>
<li>USB-C rechargeable (cable not supplied).</li>
<li>100% waterproof with an IP67 rating.</li>
<li>Intelligent button LEDs show battery level &amp; charge status.</li>
<li>Side illumination windows for improved visibility.</li>
</ul>

<p>PLUS REAR</p>
<ul>
<li>Be seen from up to 450 metres away.</li>
<li>Integrated USB-A connector for cable free charging.</li>
<li>Waterproof with IP66 rating.</li>
<li>Wearable.</li>
<li>Ultralight at just 18 grams.</li>
<li>Up to 40 hr runtime.</li>
</ul>

<p><a></a></p>', array['knog-blinder-700-plus-bike-lightset/1.jpg', 'knog-blinder-700-plus-bike-lightset/2.jpg', 'knog-blinder-700-plus-bike-lightset/3.jpg', 'knog-blinder-700-plus-bike-lightset/4.jpg', 'knog-blinder-700-plus-bike-lightset/5.jpg']::text[], 'new', 1, '2026-04-14'::date, false, false),
  ('knog-blinder-700-front-bike-light', 'KNOG BLINDER 700 FRONT BIKE LIGHT', 'knog', 'electronics', 'front-lights', '<p>POWERFUL &amp; VERSATILE</p>
<p><strong>The perfect choice for urban cyclists who take their rides and their safety seriously. Combining robust CNC construction, compact design, perfect beam angles and powerful light output, Blinder 700 front bike light raises the bar by which front bike lights are measured.</strong></p>

<p>PRODUCT HIGHLIGHTS:<br><br></p>
<p><strong>WEIGHT:</strong> 140g | 155g with Flex-Mount </p>
<ul>
<li>Produces a powerful 700 lumen road focused beam</li>
<li>Provides quality illumination up to 80m</li>
<li>Industry leading battery tech provides 2 hrs runtime on full brightness</li>
<li>Up to 120 hours runtime on Eco flash mode</li>
<li>Includes a tough and durable mount for over or under bar mounting</li>
<li>Pre-programmed with 6 light modes to suit all conditions</li>
<li>USB-C rechargeable (cable not supplied)</li>
<li>100% waterproof with an IP67 rating</li>
<li>Intelligent button LEDs show battery level &amp; charge status</li>
<li>Side illumination windows for improved visibility</li>
<li>Compatible with Blinder GoPro and Helmet mounts (sold separately)</li>
</ul>

<p><strong>ROCK-SOLID MOUNTING SYSTEMS</strong></p>
<p>Included with the light is a tough and flexible rubber handlebar mount that fits diameters from 22.2mm to 35mm. With the option of mounting on top or below your bar, Blinder 600 can be positioned to best suit your set-up.</p>
<p><strong>INTELLIGENT SILICONE BUTTON</strong></p>
<p>This large, easy-to-operate button allows the rider to easily select one of the seven available modes. The button also features a LED ring that glows while the light is charging and turns off when the light has achieved full charge capacity. No need to guess when your light requires a recharge with a convenient LED that lights up red when your light dips below 10% remaining charge.</p>
<p><strong>INDUSTRY-LEADING BATTERY TECHNOLOGY</strong></p>
<p>Blinder 600 is powered by a 18650 3.7V lithium ion battery. This technology provides best-in-class power-to-weight ratio, meaning you get to enjoy a more compact design with longer runtimes than most other lights in this category. Recharge is achieved simply by plugging into any USB C port.</p>
<p><strong>HIGH-POWERED ROAD-FOCUSED BEAM</strong></p>
<p>An innovative and considered design combines two wide beam optics with two narrow beam optics to provide high quality illumination for up to 80 m. At the optimum angle of 22 degrees, you get more light where you want it.</p>
<p><strong>UNIBODY CNC CONSTRUCTION</strong></p>
<p>The manufacture of the new Blinder is a first for Knog, as it is constructed from a single piece of industrial grade aluminium using CNC machining. Constructing the light using this method makes for an unbelievably strong product that is also lightweight and impervious to corrosion. CNC machined chassis cooling fins help prevent the head unit from overheating, and dual-function side body vents allow dual mounting options and help regulate the battery temperature.</p>
<p>A final level of protection is achieved by anodising the aluminium body, resulting in an unparalleled durable finish that reinforces its natural ability to withstand the elements and that cannot flake, peel or blister.</p>
<p><strong>100% WATERPROOF</strong></p>
<p>With an IP67 rating, Blinders can be submerged in 1 metre of water for 30 minutes and still come out shining.</p>

<p><a></a></p>', array['knog-blinder-700-front-bike-light/1.jpg', 'knog-blinder-700-front-bike-light/2.jpg', 'knog-blinder-700-front-bike-light/3.jpg', 'knog-blinder-700-front-bike-light/4.jpg', 'knog-blinder-700-front-bike-light/5.jpg']::text[], 'new', 1, '2026-04-14'::date, false, false),
  ('knog-blinder-twinpack', 'KNOG BLINDER BIKE LIGHT TWINPACK', 'knog', 'electronics', 'front-lights', '<p><em>Describing these lights as bright is a serious under-statement. Using new COB technology, Blinder lights produce a punchy 200 lumens on the front and 100 lumens on the rear, that will ensure you’re seen and safe in all light conditions.</em></p>
<p><strong>INTEGRATED USB PLUG</strong><br>No charging cable is required for your Blinder, its integrated USB plugs directly into USB ports. It has a charge time of 4 hours. When your Blinder is running low on battery, a red led will light up next to the button. This ring will turn green and then turn off once the Blinder is fully charged and ready to go.</p>
<p><strong>TOOL-LESS MOUNT</strong><br>Blinder lights comes with a tool-less removable silicone strap for bars and seat posts 22 – 32mm in diameter. A large strap is also provided that will fit tubes and head tube profiles with a circumference of up to 200mm. Knog’s tool-less mounting system makes attaching your light incredibly simple and using silicone straps means there’ll be no chance of damaging your bikes frame or beloved paint job.</p>
<p><strong>EASY ON, EASY OFF</strong><br>Removing your Blinder for charging or security purposes is a doddle with our handy clasp removal system. Strong enough to hold your light firmly in place when in use and big enough to use even when wearing gloves in colder conditions, this is a king amongst clasps.</p>
<p><strong>BLINDINGLY BRIGHT</strong></p>
<p>Producing 200 lumens of light output makes this Blinder a seriously bright option for any cyclist. Efficient Chip on Board (COB) LEDs provide maximum brightness level for up to 90% of the battery burn time.<br>Producing 200 lumens of light output makes this Blinder a seriously bright option for any cyclist. Efficient Chip on Board (COB) LEDs provide maximum brightness level for up to 90% of the battery burn time.</p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-blinder-twinpack/1.jpg', 'knog-blinder-twinpack/2.jpg', 'knog-blinder-twinpack/3.jpg', 'knog-blinder-twinpack/4.jpg', 'knog-blinder-twinpack/5.jpg']::text[], 'new', 2, '2021-09-16'::date, false, false),
  ('knog-blinder-front-light-square', 'KNOG BLINDER FRONT BIKE LIGHT', 'knog', 'electronics', 'front-lights', '<p><em>Describing these lights as bright is a serious under-statement. Using new COB technology, Blinder lights produce a punchy 200 lumens on the front and 100 lumens on the rear, that will ensure you’re seen and safe in all light conditions.</em></p>
<p><strong>INTEGRATED USB PLUG</strong><br>No charging cable is required for your Blinder, its integrated USB plugs directly into USB ports. It has a charge time of 4 hours. When your Blinder is running low on battery, a red led will light up next to the button. This ring will turn green and then turn off once the Blinder is fully charged and ready to go.</p>
<p><strong>TOOL-LESS MOUNT</strong><br>Blinder lights comes with a tool-less removable silicone strap for bars and seat posts 22 – 32mm in diameter. A large strap is also provided that will fit tubes and head tube profiles with a circumference of up to 200mm. Knog’s tool-less mounting system makes attaching your light incredibly simple and using silicone straps means there’ll be no chance of damaging your bikes frame or beloved paint job.</p>
<p><strong>EASY ON, EASY OFF</strong><br>Removing your Blinder for charging or security purposes is a doddle with our handy clasp removal system. Strong enough to hold your light firmly in place when in use and big enough to use even when wearing gloves in colder conditions, this is a king amongst clasps.</p>
<p><strong>BLINDINGLY BRIGHT</strong><br>Producing 200 lumens of light output makes this Blinder a seriously bright option for any cyclist. Efficient Chip on Board (COB) LEDs provide maximum brightness level for up to 90% of the battery burn time.</p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-blinder-front-light-square/1.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('knog-cobber-reflex-rear', 'KNOG COBBER REFLEX - REAR', 'knog', 'electronics', 'front-lights', '<p>The Cobber Reflex Rear is engineered for high visibility in all directions, emitting 250 lumens of light with 170º coverage to ensure riders stay seen from behind and the sides. With a range of modes, USB-C recharging, and IP67 waterproofing, it’s built for consistency and confidence in any conditions.</p>
<p>Featuring our revolutionary Reflex technology, The Cobber Reflex provides users with reflexive lighting modes that adapt to their riding conditions. It''s programmed off thousands of collected GPS data readings and features auto-on/auto-off modes, motion-activated deceleration modes, and a dynamic tilt mode, all of which help improve rider safety by signalling to vehicles of changes in the road or riders speed for a safer ride.</p>
<p>Visit <strong><a href="https://modemaker.knog.com/" rel="noopener nofollow" target="_blank">https://modemaker.knog.com/</a></strong> to <strong>configure your Cobber Reflex</strong> and <strong>customise</strong> its modes.  </p>
<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>Powerful 250 lumen output</li>
<li>Revolutionary Reflex technology - auto-on/auto-off modes, motion-activated deceleration modes and a dynamic tilt mode.</li>
<li>A 170 degree beam angle that wraps light around you, not just behind you. 330º when paired with the Cobber Reflex Front Light.</li>
<li>USB-C rechargeable</li>
<li>Multiple steady and flash modes</li>
<li>IP67 waterproof</li>
<li>Secure, tool-free mounting</li>
<li>Size: 28 x 43 x 62 mm</li>
<li>Weight: 39g</li>
</ul>

<p><a></a></p>', array['knog-cobber-reflex-rear/1.jpg', 'knog-cobber-reflex-rear/2.jpg', 'knog-cobber-reflex-rear/3.jpg', 'knog-cobber-reflex-rear/4.jpg', 'knog-cobber-reflex-rear/5.jpg']::text[], 'new', 1, '2026-05-07'::date, false, false),
  ('knog-blinder-901', 'Knog EF Blinder 900 Special Edition', 'knog', 'electronics', 'front-lights', '<p>Blinder 900 is powerful, long-lasting, precise and the perfect choice for road cyclists who demand the very best in performance. Combining robust CNC construction, compact design, perfect beam angles, powerfully bright output and multiple mounting options, Blinder 900 front bike light raises the bar by which front bike lights are measured.</p>
<p><strong>WEIGHT:</strong> 149g | 167g with Flex-Mount | 161g with GoPro Mount</p>
<ul>
<li>Produces a powerful 900 lumen road focused beam</li>
<li>Provides quality illumination up to 100m</li>
<li>Industry leading battery tech provides 2 hrs runtime on full brightness</li>
<li>Up to 120 hours runtime on Eco Flash mode</li>
<li>Includes two mounts; a go-pro style attachment for mounting under a computer and a tough rubber strap for the handlebar.</li>
<li>Pre-programmed with 6 light modes to suit all conditions</li>
<li>USB-C rechargeable (cable not supplied)</li>
<li>100% waterproof with an IP67 rating</li>
<li>Intelligent button LEDs show battery level &amp; charge status</li>
<li>Side illumination windows for improved visibility</li>
</ul>
<h3>ROCK SOLID MOUNTING OPTIONS</h3>
<p>Blinder 900 comes with two seperate mounts. A tough and flexible rubber handlebar mount that fits diameters from 22.2mm to 35mm, and a Go-Pro compatible mount that can position the light below your computer.</p>
<h3>INTELLIGENT SILICONE BUTTON</h3>
<p>This large, easy-to-operate button allows the rider to easily select one of the seven available modes. The button also features a LED ring that glows while the light is charging and turns off when the light has achieved full charge capacity. No need to guess when your light requires a recharge with a convenient LED that lights up red when your light dips below 10% remaining charge.</p>
<h3><strong>INDUSTRY-LEADING BATTERY TECHNOLOGY</strong></h3>
<p>Blinder 900 is powered by a 21700 3.7V lithium ion battery. This technology provides best-in-class power-to-weight ratio, meaning you get to enjoy a more compact design with longer runtimes than most other lights in this category. Recharge is achieved simply by plugging into any USB C port.</p>
<h3><strong>HIGH-POWERED ROAD-FOCUSED BEAM</strong></h3>
<p>An innovative and considered design combines two wide beam optics with two narrow beam optics to provide high quality illumination for up to 100 m. At the optimum angle of 22 degrees, you get more light where you want it.</p>
<h3><strong>UNIBODY CNC CONSTRUCTION</strong></h3>
<p>The manufacture of the new Blinder is a first for Knog, as it is constructed from a single piece of industrial grade aluminium using CNC machining. Constructing the light using this method makes for an unbelievably strong product that is also lightweight and impervious to corrosion. CNC machined chassis cooling fins help prevent the head unit from overheating, and dual-function side body vents allow dual mounting options and help regulate the battery temperature.<br><br>A final level of protection is achieved by anodising the aluminium body, resulting in an unparalleled durable finish that reinforces its natural ability to withstand the elements and that cannot flake, peel or blister.</p>
<h3>100% WATERPROOF</h3>
<p>With an IP67 rating, Blinders can be submerged in 1 metre of water for 30 minutes and still come out shining.</p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-blinder-901/1.jpg', 'knog-blinder-901/2.jpg', 'knog-blinder-901/3.jpg', 'knog-blinder-901/4.png', 'knog-blinder-901/5.png']::text[], 'new', 1, '2025-04-24'::date, false, false),
  ('knog-plus-twinpack', 'KNOG PLUS BIKE LIGHT TWINPACK', 'knog', 'electronics', 'front-lights', '<p><em>Plus front and rear bike lights are super-bright, wearable and USB rechargable. With an output of 40 lumens of light from the front and 20 lumens from the rear, the integrated COB LEDs ensures you are well seen up to 1km away.</em></p>
<p><strong>GET LIT</strong></p>
<p>Efficient Chip on Board (COB) LEDs are designed to provide maximum brightness level for up to 90% of the battery burn time in each mode, and provides run times of up to 40 hours on eco flash.</p>
<p><strong>NO CHARGING CABLE REQUIRED</strong></p>
<p>Plus plugs directly into USB ports &amp; is designed to be exposed to the elements. Just remove from its magnetic mount and you’re ready to charge.</p>
<p><strong>MULTIPLE MOUNTING METHODS</strong></p>
<p>Handlebars, forks, seatposts, pannier racks and stays. Vertical and horizontal. Standard and oversize handlebars and seatposts (22.2 – 31.8mm+). Anything goes.</p>
<p><strong>IT''S WEARABLE TOO</strong></p>
<p>Swapping cycling for camping or running? No dramas. Remove the light from it’s magnetic mount and it now doubles as a wearable night running light and versatile camping light. Use the clip to attach the light to your tshirt, shorts, socks, headband, backpack, dog collar (we could go on…)</p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-plus-twinpack/1.jpg', 'knog-plus-twinpack/2.jpg', 'knog-plus-twinpack/3.jpg', 'knog-plus-twinpack/4.jpg', 'knog-plus-twinpack/5.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('knog-plus-front-light', 'KNOG PLUS FRONT BIKE LIGHT', 'knog', 'electronics', 'front-lights', '<p><em>Plus Front bike light is a super-bright, wearable and USB rechargeable bike light. An output of 40 lumens of light from the integrated COB LEDs ensures you are well seen up to 1km away.</em></p>
<p><strong>GET LIT</strong><br>The Plus front light pumps out an impressive 40 lumens of light and has 5 different light modes. It’ll keep you lit up all night long, with run times of up to 40 hours on eco flash. Efficient Chip on Board (COB) LEDs are designed to provide maximum brightness level for up to 90% of the battery burn time for each mode.</p>
<p><strong>NO CHARGING CABLE REQUIRED</strong><br>The integrated USB plug makes charging Plus is a breeze. No charging cable required, Plus plugs directly into USB ports &amp; is designed to be exposed to the elements. Just remove from it’s magnetic mount and you’re ready to charge.</p>
<p><strong>IT''S WEARABLE TOO</strong><br>Swapping cycling for camping or running? No dramas. Remove the light from it’s magnetic mount and it now doubles as a wearable night running light and versatile camping light. Use the clip to attach the light to your t-shirt, shorts, socks, headband, backpack, dog collar (we could go on…)</p>
<p><strong>MULTIPLE MOUNTING METHODS</strong><br>Where can you mount the Plus? Where can’t you mount it! Handlebars, forks, seatposts, pannier racks and stays. Vertical and horizontal. Standard and oversize handlebars and seatposts (22.2 – 31.8mm+). Anything goes.</p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-plus-front-light/1.jpg', 'knog-plus-front-light/2.jpg', 'knog-plus-front-light/3.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('moon-light-gemini-front-80-lumens-usb', 'Moon Light Gemini Front 80 Lumens USB', 'moonlight', 'electronics', 'front-lights', '<p>2 pcs high brightness red LED. CNC Aluminium heat sink casing. Auto safe mode. Mode memory function. Rechargeable lithium polymer battery (3.7V 300 mAh). 7 modes: Mode1 / Mode2 / Mode3 / FL 1 / FL 2 / ALT FL / DAY FLASH (DOUBLE BLAST). Quick release universal bracket RB-22 (fits all round bars and AERO style bars). Low battery, charging and fully charged indicator. Automatic fully charged cut-off system. Side visibility. Water resistant (IPX 4).</p>', array['moon-light-gemini-front-80-lumens-usb/1.jpg', 'moon-light-gemini-front-80-lumens-usb/2.jpg', 'moon-light-gemini-front-80-lumens-usb/3.jpg', 'moon-light-gemini-front-80-lumens-usb/4.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('ravemen-fr1100', 'Ravemen FR1100', 'ravemen', 'electronics', 'front-lights', '<p>With a powerful 1100-lumen output for night riding and multiple daytime flash modes, the FR1100 keeps you visible in all conditions. Its integrated out-front mount design fits seamlessly under Garmin-style bike computers, saving space while enhancing both illumination and visibility.</p>

<p>Built with a high-efficiency thermal system, smart auto on/off function, and a long-lasting battery with power bank capability, it’s engineered to perform on every ride—making it your ideal front light for safety riding.</p>

<p>Night illumination - 1100-lumen high-brightness output for nighttime riding. Equipped with two high-intensity LEDs for effective road illumination. Featuring an upgraded lens design that delivers a more even beam pattern, longer projection distance, and a maximum beam range of up to 105 meters.</p>

<p>Daytime warning - Eye-catching warning flashing mode to keep you visible at daytime riding.</p>

<p>Integrated bike computer stacking design - The integrated bike computer stacking design adds a warning light between the mount and the bike computer, saving space while providing illumination. Compatible with mainstream bike computers, supporting all Garmin-style mounting bases.</p>

<p>Power bank function - 2500mAh large battery, can provide emergency charging for bike computers.</p>

<p>Auto on/off function - Automatic power control: the light turns off after 2 minutes of inactivity and powers on automatically when vibration is detected.</p>

<p>Heat dissipation design - Aluminum alloy housing with an upgraded copper base plate and airflow groove design for more efficient heat dissipation, even in high-output modes.</p>

<p>Long battery life - Battery life lasts up to 46 hours.</p>

<p>Battery indicator - When the light is off, press the power button to activate the battery indicator and check the battery level. Battery indicator: Green: 40%~100%; Red: 5%~40%; Flashing red: &lt;5%.</p>

<p>Mode selection - Six lighting modes for various environments.</p>

<ul>
	<li>LED: Two high-efficiency LEDS</li>
	<li>Battery: 2500mAh/3.7V rechargeable Li-polymer battery</li>
	<li>Dimensions (Headlight): 82mm (L)*61mm (W)*25.4mm (H)</li>
	<li>Weight (Headlight): 119g</li>
</ul>

<p>Design and specifications are subject to change without notice</p>', array['ravemen-fr1100/1.jpg', 'ravemen-fr1100/2.jpg', 'ravemen-fr1100/3.jpg', 'ravemen-fr1100/4.jpg', 'ravemen-fr1100/5.jpg']::text[], 'new', 1, '2026-05-27'::date, false, false),
  ('ravemen-fr160', 'Ravemen FR160', 'ravemen', 'electronics', 'front-lights', '<p>FR160 is a light-weight and easy-to-use daytime visible bike headlight. With the high efficiency COB LEDs (max 160 lumens) and the special design of the eye-catching warning flashing mode, it increases the riders'' visibility significantly in daytime riding.</p>

<p>The light is compact and compatible with Garmin/Wahoo/Bryton computer mounts and works with Garmin computers.</p>

<p>It is IPX6 heavy rain resistance and designed with type-c charging port.A tether is recommended to secure your computer to the handlebar</p>

<p>NOTE:</p>

<ul>
	<li>The FR160 is a BE SEEN light only.</li>
	<li>The FR160 is not compatible with Garmin Time Trial/Tri Bar Mount.</li>
</ul>

<p>Daytime visible warning flashing mode - With the special design of flashing pattern, the eye-catching warning flashing mode of FR160 will keep you visible at daytime riding; 3 constant modes and 3 flashing modes for various riding situations.</p>

<p>Wide-angle lens with side visibility - Increase your side visibility when riding through the crossroad.</p>

<p>USB-C charging port - Reversible connector to charge the light easily and no need to flip around looking for the correct orientation; built in red charging indicator.</p>

<p>IPX 6 water-resistance design - The light is usable when riding in the rain. (Please make sure the cap of the charging port is securely mounted after charging)</p>

<ul>
	<li>LED: COB LED</li>
	<li>Battery: 380mAh/3.7V rechargeable Li-polymer battery</li>
	<li>Dimensions (Headlight): 75mm (L)*57mm (W)*21mm (H)</li>
	<li>Weight (Headlight): 55g</li>
</ul>

<p>Design and specifications are subject to change without notice</p>

<p>What''s in the box - FR160 *1, USB-C cable*1, manual/warranty card*1</p>', array['ravemen-fr160/1.jpg', 'ravemen-fr160/2.jpg', 'ravemen-fr160/3.jpg', 'ravemen-fr160/4.jpg', 'ravemen-fr160/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-fr300', 'Ravemen FR300', 'ravemen', 'electronics', 'front-lights', '<p>FR300 is a highly visible daytime running headlight to help you ride safely. It gives out 300 lumens in the warning flashing mode and works with Garmin or Wahoo computer mounts to keep your handlebar clean.</p>

<p>It can also be a power bank to charge your bike computer when in need. With the auto on-off mode, you can use the light conveniently. Make sure you are visible and ride safely with RAVEMEN FR300. A tether is recommended to secure your computer to the handlebar</p>

<p>Brighter daytime visible warning flashing mode - With the 300 lumens eye-catching warning flashing mode, FR300 will keep you visible at daytime riding; 3 constant modes and 3 flashing modes for various ridings.</p>

<p>Wide-angle lens with side visibility - Increase your side visibility when riding through the crossroad.</p>

<p>Standard Garmin quarter-turn mount - The light can be mounted between the Garmin bike mount and computers; You can also fix the light at the bottom of Garmin Flush out-front mount. </p>

<p>Adapters for Wahoo computers included - For Wahoo computers, replace the top and bottom Garmin adapters with the Wahoo one. (<em>Note: FR300 DOES NOT work with the original Wahoo Element Bolt aero out-front mount.</em>)</p>

<p>USB-C charging and discharging port - Charge the light easily or use it as a backup power bank to charge your bike computer(USB-C cable and USB-C to micro USB cable included). </p>

<p><em>Warnings: 1. DO NOT charge your mobile phone or other devices with the light, otherwise it might damage the light and void the warranty; 2. DO NOT charge or discharge the light in ythe rain.</em></p>

<p>Auto on-off mode - Hands-free operation and no worry about forgetting to turn off the light.</p>

<p>Tether included for extra security - Use the tether to secure the light or computer for gravel or unpaved road riding.</p>

<p>IPX 6 water-resistance design - The light is usable when riding in the rain. (Make sure the cap of the charging port is securely mounted after charging)</p>

<ul>
	<li>LED: COB LED</li>
	<li>Battery: 1200mAh/3.7V rechargeable Li-polymer battery</li>
	<li>Dimensions (Headlight): 82mm (L)*60mm (W)*25.5mm (H)</li>
	<li>Weight (Headlight): 75g</li>
</ul>

<p>Design and specifications are subject to change without notice</p>

<p>What''s in the box - FR300 *1, USB-C cable*1, USB-C to Micro USB cable*1, tether*1, adapting kit for Wahoo*1, manual/warranty card*1</p>', array['ravemen-fr300/1.jpg', 'ravemen-fr300/2.jpg', 'ravemen-fr300/3.jpg', 'ravemen-fr300/4.jpg', 'ravemen-fr300/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-fr500', 'Ravemen FR500', 'ravemen', 'electronics', 'front-lights', '<p>With 500 lumens of bright night illumination and multiple daytime flash modes, the FR500 keeps you visible at all times.</p>

<p>Its space-saving design fits under Garmin-style bike computers, while the smart auto on/off function ensures hands-free convenience. Built to handle any ride, it''s your ideal front light for safety ridings.</p>

<p>Night illumination - 500-lumen high-brightness lighting, suitable for night riding. Two high-brightness LEDs enable night illumination with a unique lens projection effect.</p>

<p>Daytime warning - Eye-catching warning flashing mode to keep you visible at daytime riding.</p>

<p>Integrated bike computer stacking design - The integrated bike computer stacking design adds a warning light between the mount and the bike computer, saving space while providing illumination. Compatible with mainstream bike computers, supporting all Garmin-style mounting bases.</p>

<p>Power bank function - 2000mAh large battery, can provide emergency charging for bike computers.</p>

<p>Auto on/off function - The FR500 turns off automatically after 2 minutes of inactivity and turns on automatically when vibration is detected.</p>

<p>Heat dissipation design - Aluminum alloy heat dissipation design</p>

<p>Long battery life - Battery life lasts up to 36 hours.</p>

<p>Battery indicator - When the light is off, press the power button to activate the battery indicator and check the battery level. Battery indicator: Green: 40%~100%; Red: 5%~40%; Flashing red: &lt;5%.</p>

<p>IPX6 water-resistance function - No need to cover in rainy weather, ensuring all-weather cycling safety.</p>

<p>Mode selection - Six lighting modes for various environments.</p>

<ul>
	<li>LED: Two high-efficiency LEDS</li>
	<li>Battery: 2000mAh/3.7V rechargeable Li-polymer battery</li>
	<li>Dimensions (Headlight): 82mm (L)*60mm (W)*29mm (H)</li>
	<li>Weight (Headlight): 101g</li>
</ul>

<p>Design and specifications are subject to change without notice</p>

<p>What''s in the box - FR500*1, USB-C cable*1, USB-C to Micro USB cable*1, adapting kit for Wahoo*1, tether*1, manual/warranty card*1</p>', array['ravemen-fr500/1.jpg', 'ravemen-fr500/2.jpg', 'ravemen-fr500/3.jpg', 'ravemen-fr500/4.jpg', 'ravemen-fr500/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-k1000', 'Ravemen K1000', 'ravemen', 'electronics', 'front-lights', '<p>Cyclists, meet your perfect ride partner.  Embrace the hands-free convenience of its intelligent mode and revel in the superior illumination that Ravemen is renowned for. Its unique AI Night Riding Mode frees your hands, automatically adjusting brightness based on your cycling habits, maximizing battery life for worry-free riding.</p>

<p>It can also function as a power bank, featuring an all-in-one USB Type-C interface for charging and discharging. And it is built to withstand any weather or riding challenge, compatible with any mount style you prefer. Let''s experience the ultimate in cycling illumination!</p>

<p>AI night riding mode - Learns your habits, providing perfect illumination tailored to your daily commutes. Let you embrace the hands-free convenience and maximum battery efficiency.</p>

<p>Versatile USB-C Ports - With the USB-C port, light your way while charging. Or discharge as a power bank.</p>

<p>Unique Wide-Angle Layered Lens - Experience brighter front illumination and wider side visibility. Minimize glare for pedestrians while improving visibility and stability.</p>

<p>Intelligent daytime riding mode - Automatically adjust brightness according to ambient light change.</p>

<p>Inverted mount support - Save handlebar space, ensuring a sleek setup with a standard GoPro interface mount. (Upside-down bracket included)</p>

<p>Power Level Indicator - Check the power level with a simple button press.</p>

<p>Durable and Waterproof - Aircraft-grade aluminium body with IPX7 waterproof rating, ready for extreme weather and riding situations.</p>

<ul>
	<li>LED: 1*high-efficiency white LED;</li>
	<li>Battery: 4000mAh/3.6V Li-ion battery;</li>
	<li>Dimensions/Weight(Headlight): 106.5mm*34mm*37mm/177g;</li>
</ul>

<p>What''s in the box - K1000*1, upside-down mount*1, USB-C charging cable*1, manual/warranty card*1, rubber strap mount*1(for round handlebars of 22.2mm to 35mm diameter and some aero handlebars)</p>', array['ravemen-k1000/1.jpg', 'ravemen-k1000/2.jpg', 'ravemen-k1000/3.jpg', 'ravemen-k1000/4.jpg', 'ravemen-k1000/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-k1400', 'Ravemen K1400', 'ravemen', 'electronics', 'front-lights', '<p>Cyclists, meet your perfect ride partner.  Embrace the hands-free convenience of its intelligent mode and revel in the superior illumination that Ravemen is renowned for. Its unique AI Night Riding Mode frees your hands, automatically adjusting brightness based on your cycling habits, maximizing battery life for worry-free riding.</p>

<p>It can also function as a power bank, featuring an all-in-one USB Type-C interface for charging and discharging. And it is built to withstand any weather or riding challenge, compatible with any mount style you prefer. Let''s experience the ultimate in cycling illumination!</p>

<p>AI night riding mode - Learn your habits, providing perfect illumination tailored to your daily commutes. Let you embrace the hands-free convenience and maximum battery efficiency.</p>

<p>Versatile USB-C Ports - With the USB-C port, light your way while charging. Or discharge as a power bank.</p>

<p>Unique Wide-Angle Layered Lens - Experience brighter front illumination and wider side visibility. Minimize glare for pedestrians while improving visibility and stability.</p>

<p>Wireless remote control (included) - Easily switch between modes with a single click</p>

<p>Intelligent daytime riding mode - Automatically adjust brightness according to ambient light change.</p>

<p>Inverted mount support - Save handlebar space, ensuring a sleek setup with a standard GoPro interface mount. (Upside-down bracket included)</p>

<p>Power Level Indicator - Check the power level with a simple button press.</p>

<p>Durable and Waterproof - Aircraft-grade aluminium body with IPX7 waterproof rating, ready for extreme weather and riding situations.</p>

<ul>
	<li>LED: 1*high-efficiency white LED</li>
	<li>Battery: 4000mAh/3.6V Li-ion battery;</li>
	<li>Dimensions/Weight (Headlight): 106.5mm*34mm*37mm/177g;</li>
</ul>

<p>What''s in the box - K1400*1, wireless switch*1, upside-down mount*1, USB-C charging cable*1, manual/warranty card*1, rubber strap mount*1(for round handlebars of 22.2mm to 35mm diameter and some aero handlebars)</p>', array['ravemen-k1400/1.jpg', 'ravemen-k1400/2.jpg', 'ravemen-k1400/3.jpg', 'ravemen-k1400/4.jpg', 'ravemen-k1400/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-k1800', 'Ravemen K1800', 'ravemen', 'electronics', 'front-lights', '<p>Cyclists, meet your perfect ride partner.  Embrace the hands-free convenience of its intelligent mode and revel in the superior illumination that Ravemen is renowned for. Its unique AI Night Riding Mode frees your hands, automatically adjusting brightness based on your cycling habits, maximizing battery life for worry-free riding.</p>

<p>It can also function as a power bank, featuring an all-in-one USB Type-C interface for charging and discharging. And it is built to withstand any weather or riding challenge, compatible with any mount style you prefer. Let''s experience the ultimate in cycling illumination!</p>

<p>AI night riding mode - Learn your habits, providing perfect illumination tailored to your daily commutes. Let you embrace the hands-free convenience and maximum battery efficiency.</p>

<p>Versatile USB-C Ports - With the USB-C port, light your way while charging. Or discharge as a power bank.</p>

<p>Unique Wide-Angle Layered Lens - Experience brighter front illumination and wider side visibility. Minimize glare for pedestrians while improving visibility and stability.</p>

<p>Wireless remote control (included) - Easily switch between modes with a single click</p>

<p>Intelligent daytime riding mode - Automatically adjust brightness according to ambient light change.</p>

<p>Inverted mount support - Save handlebar space, ensuring a sleek setup with a standard GoPro interface mount. (Upside-down bracket included)</p>

<p>Power Level Indicator - Check the power level with a simple button press.</p>

<p>Durable and Waterproof - Aircraft-grade aluminium body with IPX7 waterproof rating, ready for extreme weather and riding situations.</p>

<ul>
	<li>LED: 1*high-efficiency white LED;</li>
	<li>Battery: 5000mAh/3.6V Li-ion battery;</li>
	<li>Dimensions/Weight(Headlight): 106.5mm*34mm*37mm/181g;</li>
</ul>

<p>What''s in the box - K1800*1, wireless switch*1, upside-down mount*1, USB-C charging cable*1, manual/warranty card*1, rubber strap mount*1(for round handlebars of 22.2mm to 35mm diameter and some aero handlebars).</p>', array['ravemen-k1800/1.jpg', 'ravemen-k1800/2.jpg', 'ravemen-k1800/3.jpg', 'ravemen-k1800/4.jpg', 'ravemen-k1800/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-k450', 'Ravemen K450', 'ravemen', 'electronics', 'front-lights', '<p>Experience the freedom and safety of the K450, a  light-sensitive headlight that transforms your ride. Seamlessly adapting to changing ambient light, it automatically switches modes, allowing you to focus on the journey ahead.</p>

<p>The uniform floodlight offers a broad and crystal-clear view, ensuring you see and be seen from every angle. Elevate your cycling experience with the K450, where innovation meets incredible lighting performance.</p>

<p>Intelligent daytime riding mode - Automatically adjust brightness according to ambient light change.</p>

<p>Uniform floodlight - Enjoy a safer ride with the uniform floodlight, offering even-distributed light and superior side visibility.</p>

<p>USB-C fast rechargeable - Recharge swiftly – just 1.5 hours for a full charge, and it can also light your way while charging.</p>

<p>Inverted mount support - Save handlebar space, ensuring a sleek setup with a standard GoPro interface mount. (Upside-down bracket included)</p>

<p>Power Level Indicator - Check the power level with a simple button press.</p>

<p>Unique Wide-Angle Layered Lens - Experience brighter front illumination and wider side visibility. Minimize glare for pedestrians while improving visibility and stability.</p>

<p>Durable and Waterproof - Aircraft-grade aluminium body with IPX7 waterproof rating, ready for extreme weather and riding situations.</p>

<p>In the box - </p>

<ul>
	<li>LED: 1*high efficiency white LED;</li>
	<li>Battery: 2200mAh/3.7V Li-ion battery;</li>
	<li>Dimensions/Weight (Headlight): 10mm*34mm*37mm/138g;
</li>
</ul>', array['ravemen-k450/1.jpg', 'ravemen-k450/2.jpg', 'ravemen-k450/3.jpg', 'ravemen-k450/4.jpg', 'ravemen-k450/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-k700', 'Ravemen K700', 'ravemen', 'electronics', 'front-lights', '<p>Experience the freedom and safety of the K700, a  light-sensitive headlight that transforms your ride. Seamlessly adapting to changing ambient light, it automatically switches modes, allowing you to focus on the journey ahead.</p>

<p>The uniform floodlight offers a broad and crystal-clear view, ensuring you see and be seen from every angle. Elevate your cycling experience with the K700, where innovation meets incredible lighting performance.</p>

<p>Intelligent daytime riding mode - Automatically adjust brightness according to ambient light change.</p>

<p>Uniform floodlight - Enjoy a safer ride with the uniform floodlight, offering even-distributed light and superior side visibility.</p>

<p>USB-C fast rechargeable - Recharge swiftly – just 1.5 hours for a full charge, and it can also light your way while charging.</p>

<p>Inverted mount support - Save handlebar space, ensuring a sleek setup with a standard GoPro interface mount. (Upside-down bracket included)</p>

<p>Power Level Indicator - Check the power level with a simple button press.</p>

<p>Unique Wide-Angle Layered Lens - Experience brighter front illumination and wider side visibility. Minimize glare for pedestrians while improving visibility and stability.</p>

<p>Durable and Waterproof - Aircraft-grade aluminium body with IPX7 waterproof rating, ready for extreme weather and riding situations.</p>

<p>What''s in the box - K700*1, upside-down mount*1, USB-C charging cable*1, manual/warranty card*1, rubber strap mount*1 (for round handlebars of 22.2mm to 35mm diameter and some aero handlebars)</p>', array['ravemen-k700/1.jpg', 'ravemen-k700/2.jpg', 'ravemen-k700/3.jpg', 'ravemen-k700/4.jpg', 'ravemen-k700/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-nt301-with-hd-recording', 'Ravemen NT301 with HD Recording', 'ravemen', 'electronics', 'front-lights', '<p>The RAVEMEN NT301 is a smart tail light that redefines cycling safety and recording. Equipped with a 138° ultra-wide HD camera, it captures crystal-clear 2K footage of license plates, road conditions, and unexpected moments. Its smart accident detection automatically locks crucial footage to prevent overwriting, while the loop recording system ensures continuous recording without storage worries.</p>

<p>With a wide-angle rear and side visibility design, it enhances your presence on the road from multiple directions, keeping you safer on every ride.</p>

<p>Ultra-Wide 2K HD Recording - Equipped with a 138° ultra-wide HD camera capable of recording up to 2K/25fps, easily capturing license plates, road conditions, and unexpected moments in stunning clarity.</p>

<p>Wide-Angle Visibility - The NT301 features one red warning LED that provide an expanded visible range from the rear and sides. Its wide-angle lighting design makes you more noticeable to drivers approaching from different directions, improving overall riding safety.</p>

<p>Intelligent Accident Detection Locking - Automatically detects accident scenarios and locks the video to prevent crucial footage from being overwritten.</p>

<p>Seamless Loop Recording - Smart loop recording automatically overwrites the oldest files, ensuring your memory card never gets full and continuous recording is always maintained.</p>

<p>Extended Battery Life - Enjoy up to 130 hours of continuous use on a full charge — always ready for long rides without interruption.(Camera and tail light on simultaneously)</p>

<p>Brake Detection - When braking, the tail light automatically brightens for 2 seconds to alert vehicles behind you, effectively reducing the risk of rear-end collisions.</p>

<p>Smart Battery Indicator - Check battery status at a single press: green (&gt;25%), red (0–25%), and flashing red (below 10%) — keeping you informed before power runs out.</p>

<p>IPX6 Waterproof Rating - Fully weatherproof, ensuring safety and performance even in rainy conditions.</p>

<ul>
	<li>LED: High-efficency red LEDs</li>
	<li>Battery: 3200mAh/3.7V Li-polymer battery</li>
	<li>Dimensions (Tail light):88mm (L)*36mm (W)*49.7mm (H)</li>
	<li>Weight (Tail light): 130g</li>
</ul>

<p>What''s in the box - NT301*1(16GB microSD card included), ABM17*1, - ABM21*1, USB-C charging cable*1,manual/warranty card*1</p>', array['ravemen-nt301-with-hd-recording/1.jpg', 'ravemen-nt301-with-hd-recording/2.jpg', 'ravemen-nt301-with-hd-recording/3.jpg', 'ravemen-nt301-with-hd-recording/4.jpg', 'ravemen-nt301-with-hd-recording/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),

  -- ---- electronics · heart-rate-monitors ----
  ('garmin-hrm-200', 'Garmin HRM 200', 'garmin', 'electronics', 'heart-rate-monitors', '<p>NEVER MISS A BEAT<br>When you need accurate heart rate and heart rate variability (HRV) data, the HRM 200 heart rate monitor is there to capture it all.</p>
<p>TRAINING VERSATILITY<br>Move how you choose. This monitor provides accurate heart rate data for all your activities, including running, indoor and outdoor cycling, strength training and more.</p>
<p>CONNECTIVITY<br>The HRM 200 heart rate monitor sends accurate real-time heart rate and HRV data to your compatible Garmin smartwatches and Edge® cycling computers, compatible fitness equipment, the Tacx Training™ app and other apps.</p>
<p>COMFORTABLE WEAR<br>The small, lightweight heart rate module fits within the width of the soft, comfortable strap. It comes in 2 sizes (XS–S and M–XL), so you can choose the ideal fit for your body.</p>
<p>FUNCTIONAL AND DURABLE<br>The LED light lets you know when HRM 200 is awake and ready to go — or when the battery is running low. With the button, easily wake and pair your heart rate monitor. Plus, HRM 200 is durable with a 3 ATM water rating.</p>
<p>BATTERY LIFE<br>Don’t worry about running out of juice. The HRM 200 monitor comes with a user-replaceable battery and gets up to 1 year of battery life.</p>
<p>MACHINE WASHABLE<br>Cleaning it is simple. Just remove the module and toss the strap into the washing machine.</p>

<table>
<tbody>
<tr>
<th>SIZE RANGE</th>
<td>XS-S: Strap length: 56–72 cm (22"–28")<br>Fits chest size 60–85 cm (23.5–33.5”)<br><br>M-XL: Strap length: 72–106 cm (28"–42")<br>Fits chest size 80–119 cm (31.5–47")</td>
</tr>
</tbody>
</table>', array['garmin-hrm-200/1.jpg']::text[], 'new', 2, '2025-02-11'::date, false, false),
  ('garmin-hrm-600', 'Garmin HRM 600', 'garmin', 'electronics', 'heart-rate-monitors', '<h3>TRAIN WITH HEART</h3>

<p>The HRM 600 premium heart rate monitor is built for data-driven performance athletes looking for accurate heart rate and HRV data plus running dynamics.</p>

<p>SENDS REAL-TIME HEART RATE AND HRV DATA TO COMPATIBLE DEVICES AND APPS</p>

<p>UP TO 2 MONTHS OF BATTERY LIFE WITH A RECHARGEABLE BATTERY</p>

<p>RUNNING DYNAMICS WHEN PAIRED WITH YOUR COMPATIBLE SMARTWATCH</p>

<p>RECORD ACTIVITIES AND SYNC TO THE GARMIN CONNECT™ SMARTPHONE APP WITHOUT A WATCH</p>

<p>COMFORTABLE, MACHINE-WASHABLE STRAP AVAILABLE IN TWO SIZES</p>

<p>DURABLE AND VERSATILE WITH A 5 ATM WATER RATING</p>

<h3>WHAT YOU''LL LOVE</h3>

<h3>CONNECTIVITY</h3>
<p>HRM 600 sends accurate real-time heart rate and HRV data to your compatible Garmin smartwatches and Edge® cycling computers, compatible fitness equipment, the <a href="https://www.garmin.com/en-NZ/p/696770/" rel="noopener nofollow" target="_blank">Tacx Training™</a> app and other apps.</p>

<h3>EXPANDED RUNNING DYNAMICS</h3>
<p>Improve your running form with running dynamics, including step speed loss1 to understand how much you slow down when your foot hits the ground, in addition to vertical oscillation and ground contact time and balance (requires compatible smartwatch2).</p>

<h3>ACTIVITY RECORDING</h3>
<p>During activities where you can’t wear a watch, such as team sports or martial arts, the HRM 600 heart rate monitor will record your workout and sync data — including heart rate, calories, speed, distance and more — directly to the <a href="https://www.garmin.com/en-NZ/p/125677" rel="noopener nofollow" target="_blank">Garmin Connect app3.</a></p>

<h3>ACTIVITY TRACKING</h3>
<p>HRM 600 tracks daily metrics, including steps, heart rate, calories burned and intensity minutes, and syncs that data directly to the Garmin Connect app to update on all your devices.</p>

<h3>TRAINING VERSATILITY</h3>
<p>For indoor track and treadmill runs, the HRM 600 heart rate monitor sends pace and distance to your compatible smartwatch2. And during swim activities, HRM 600 stores your heart rate data and forwards it to your compatible smartwatch2 when your activity is saved.</p>

<h3>FUNCTIONAL AND DURABLE</h3>
<p>The LED light lets you know when the HRM 600 is awake and ready to go — or when the battery is running low. With the button, easily wake and pair your heart rate monitor. Plus, HRM 600 is durable with a <a href="https://www.garmin.com/legal/waterrating-definitions/" rel="noopener nofollow" target="_blank">5 ATM water rating.</a></p>', array['garmin-hrm-600/1.jpg']::text[], 'new', 2, '2025-05-19'::date, false, false),
  ('garmindualheartratemonitor', 'Garmin HRM Dual', 'garmin', 'electronics', 'heart-rate-monitors', 'This premium heart rate strap transmits real-time heart rate data over ANT+® connectivity and BLUETOOTH® Low Energy technology, giving you more options to train indoors, outdoors or even online. With it, you’ll be able to consistently receive accurate heart rate on your Garmin device, in online training apps such as Zwift or even the compatible fitness equipment in your favorite class at the gym. So however you like to train, you’ll get the accurate, real-time heart rate you need to take your performance to the next level. HRM-Dual features a soft strap that is comfortable and adjustable. Simply remove the heart rate module, and it’s washable, too. And don’t worry about running out of juice.<br><br>Features:

<ul>
<li>The battery lasts for up to 3.5 years. 
</li>
<li>Module: 2.4" W x 1.3" H x 0.4" D (62 mm x 34 mm x 11 mm)</li>
<li>Strap Length: Adjustable from 25" to 52" (63.5 cm to 132 cm)</li>
<li>Weight: 1.9 oz (54.4 g)</li>
<li>Water Resistance: 1 ATM</li>
<li>Battery: User-replaceable size CR2032 (3 volts)</li>
<li>Battery Life: Up to 3.5 years (based on average use of 1 hour per day)</li>
<li>Operating Temperature: 23°F–122°F (-5°C–50°C)</li>
<li>Radio Frequency/Protocol: 2.4 GHz ANT wireless communications protocol; Bluetooth® Wireless Technology 5.0</li>
<li>Range: 3 m</li>
<li>System Compatibility: ANT+, Bluetooth</li>
</ul>', array['garmindualheartratemonitor/1.jpg']::text[], 'new', 1, '2026-01-29'::date, false, false),
  ('magene-heart-rate-strap', 'Magene H603 Chest Strap Heart Rate Monitor', 'magene', 'electronics', 'heart-rate-monitors', '<p><strong>High-Performance, Real-time Heart Rate Tracking</strong></p>
<p>Utilizing advanced ECG processing circuits, the H603 directly extracts heart rate data from your ECG waveform using its self-researched algorithm. By eliminating noise interference caused by movement and sweating, it provides only the most accurate heart rate data.</p>

<p><strong>Split Chest Strap Design</strong></p>
<p>Unlike traditional chest strap designs, the H603 adopts a split chest strap design to enhance your product experience.</p>

<p><strong>Long Battery Life</strong></p>
<p>The battery lasts up to 1000 hours per charge. That''s equivalent to 1 hour per day, 4 times a week, for 2.5 years!</p>
<p>*The battery life data is based on laboratory testing.</p>

<p><strong>Compatible with ANT+ &amp; Bluetooth</strong></p>
<p>Record your workout data via both ANT+™ device and Bluetooth App simultaneously, ensuring stable transmission with 2 data copies.</p>
<p>ANT+™ Compatibility: Magene, Wahoo, Garmin, iGPSPORT, Bryton</p>
<p>Bluetooth Compatibility: Zwift, Onelap, Strava, Kinomap, Wahoo Fitness, TrainerRoad, Rouvy, Fulgaz, Nike Run Club, Openrider, Elite HRV, Selfloops HRV</p>
<p>*Note: The red light indicates that the monitor is ready to use.</p>

<table>
<tbody>
<tr>
<td>Specifications</td>
</tr>
<tr>
<th>Dimensions</th>
<td>62.3*35.1*11.5mm</td>
</tr>
<tr>
<th>Chest Strap Length</th>
<td>64-86cm (±2cm)</td>
</tr>
<tr>
<th>Chest Strap Type</th>
<td>Split Chest Strap</td>
</tr>
<tr>
<th>Battery Life</th>
<td>CR2032*1</td>
</tr>
<tr>
<th>Interface</th>
<td>Bluetooth 4.2, ANT+™</td>
</tr>
<tr>
<th>HR Unit</th>
<td>BPM</td>
</tr>
<tr>
<th>HR Accuracy</th>
<td>±1 BPM</td>
</tr>
<tr>
<th>HR Range</th>
<td>30-240 BPM</td>
</tr>
<tr>
<th>Waterproof Grade</th>
<td>IP67</td>
</tr>
<tr>
<th>Weight</th>
<td>16g for heart rate monitor, 30±1g for the chest strap</td>
</tr>
</tbody>
</table>', array['magene-heart-rate-strap/1.jpg']::text[], 'new', 0, '2025-10-21'::date, false, false),
  ('wahoo-tickr-fit-heart-rate-monitor-armband', 'Wahoo Tickr Fit Heart Rate Monitor Armband', 'wahoo', 'electronics', 'heart-rate-monitors', '<p>Providing accurate heart rate and calorie burn data in the most comfortable form factor yet, the TICKR FIT comes equipped with Bluetooth and ANT+ technology to seamlessly pair with fitness apps, smartphones, and GPS bike computers &amp; watches. Worn on the forearm, the TICKR FIT comes with an adjustable band that is designed for your most gruelling workouts, featuring water-resistant technology and a rechargeable battery that lasts up to 30 hours.</p>
<p>- FEATURES -</p>
<p>Ultimate Precision</p>
<p>TICKR FIT uses the latest in optical heart rate technology to give you accurate heart rate and calorie burn data.</p>

<p>Comfortable and Secure</p>
<p>Made from advanced performance materials, TICKR FIT is designed to comfortably fit around your arm, yet fit securely during intense activity.</p>

<p>Connect with Confidence</p>
<p>TICKR FIT connects to smartphones, GPS watches and bike computers, and verifies TICKR FIT is connected by using convenient LED lights</p>

<p>Wahoo Fitness Burn &amp; Burst Heart Rate Training Plan</p>
<p>Eight week training program designed to burn fat and improve performance; free within the iOS Wahoo Fitness App.</p>

<p>Rechargeable Battery</p>
<p>Get 30+ Hours of continual use on a single charge.</p>

<p>IPX7 Rating</p>
<p>Sweatproof and waterproof up to 5 ft.</p>

<p>On/Off Button</p>
<p>Easily power the TICKR FIT on and off</p>
<p>- SPECIFICATIONS -</p>

<p>Physical</p>
<ul>
<li>Dimensions (Strap) - 260 x 25.4mm / 375mm x 25.4mm (small / large)</li>
<li>Water rating - IPX7 resistant</li>
</ul>

<p>Battery</p>
<ul>
<li>Type - rechargeable</li>
<li>Life - 30+ hours</li>
</ul>
<p>Connectivity</p>
<ul>
<li>Type - ANT+ and Bluetooth Smart</li>
<li>Android compatibility - v4.3 or newer</li>
<li>Apple compatibility - iPad gen 3 (or newer) / iPhone 4S (or newer) / iPod touch (5th Gen) / Apple watch / Apple TV</li>
</ul>', array['wahoo-tickr-fit-heart-rate-monitor-armband/1.jpg']::text[], 'new', 1, '2023-02-15'::date, false, false),
  ('wahoo-trackr-heart-rate-monitor', 'Wahoo TRACKR Heart Rate Monitor', 'wahoo', 'electronics', 'heart-rate-monitors', '<h3>Wahoo TICKR Heart Rate Monitor</h3>
<h3><strong>Accurate Heart Rate Tracking for All Your Workouts</strong></h3>
<p>The <strong>Wahoo TICKR</strong> combines a lightweight, adjustable strap with a powerful heart rate pod to provide accurate real-time heart rate data during training. Whether you’re running, cycling, or using gym equipment, it keeps track of your effort and performance so you can train smarter.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Lightweight &amp; Comfortable</strong> – Pod + strap weighs just 51g, strap adjustable from 68.5–91.4cm (fits up to 127cm chest)</p>
</li>
<li>
<p><strong>Long Battery Life</strong> – Rechargeable lithium-ion battery lasts over 100 hours</p>
</li>
<li>
<p><strong>Sweat &amp; Water Resistant</strong> – IPX7 rating (submersible up to 1m for 30 minutes)</p>
</li>
<li>
<p><strong>Washable Strap</strong> – Hand wash only</p>
</li>
<li>
<p><strong>Compact Pod</strong> – 11g, dimensions: W 6.15cm x H 3.05cm x D 0.95cm</p>
</li>
<li>
<p><strong>No On/Off Needed</strong> – Automatic operation</p>
</li>
</ul>

<h3>Specifications</h3>
<ul>
<li>
<ul>
<li>
<p><strong>Pod &amp; Strap Weight:</strong> 51g</p>
</li>
<li>
<p><strong>Pod Weight:</strong> 11g</p>
</li>
<li>
<p><strong>Strap Weight:</strong> 40g</p>
</li>
<li>
<p><strong>Strap Dimensions:</strong> 68.5–91.4cm (fits up to 127cm chest)</p>
</li>
<li>
<p><strong>Battery:</strong> Rechargeable lithium-ion</p>
</li>
<li>
<p><strong>Battery Life:</strong> 100+ hours</p>
</li>
<li>
<p><strong>Water Rating:</strong> IPX7</p>
</li>
<li>
<p><strong>Washable:</strong> Hand wash strap only</p>
</li>
</ul>
</li>
</ul>', array['wahoo-trackr-heart-rate-monitor/1.jpg', 'wahoo-trackr-heart-rate-monitor/2.jpg', 'wahoo-trackr-heart-rate-monitor/3.jpg', 'wahoo-trackr-heart-rate-monitor/4.jpg']::text[], 'new', 1, '2024-06-26'::date, false, false),

  -- ---- electronics · power-meters ----
  ('favero-assioma-duo-double-side-power-meter-pedals-ant-po', 'Favero Assioma DUO Double Side Power Meter Pedals - ANT+ Power Cadence Torque', 'favero', 'electronics', 'power-meters', '<p>Assioma Power Meter Pedals - breakthrough technology applied to cycling, to make your training more efficient and effective than ever. Set your targets with ultra-precise and reliable watt measurements. Hard facts, not estimates, to make the most of each pedal stroke.</p>

<p>PEACE OF MIND<br>Favero offer 2-Year replacement warranty against defect.</p>

<p>EASY TO INSTALL. FAST TO MOVE BETWEEN BIKES.<br>Install and move your Assioma power meter from one bike to another just like a normal pedal, easily and without special tools.</p>

<p>HARD FACTS TO MAKE THE MOST OF EVERY PEDAL STROKE.<br>To provide you with unprecedented detailed and precise data, the Assioma power sensors are placed on the pedals, exactly where your force goes. Pair it with your smartphone or bike computer instantly, using Bluetooth and ANT+ communication.</p>

<p>AUTOMATIC TEMPERATURE COMPENSATION<br>You can count on the most accurate and consistent real-time power data thanks to proprietary technologies, innovative software solutions and the advanced electronics of Assioma. Ride without fear in the snow, rain, mud, or sweltering heat: the automatic temperature compensation (ATC) ensures exact and reliable watt measurements in any weather conditions at temperatures between -10°C and 60°C.</p>

<p>WATERPROOF, RESISTANT ... AND THE LIGHTEST EVER MADE<br>The lightest and most compact pedal-based power meter: with no protruding elements, it does not interfere with the pedalling. Not even when cornering. Protected by a bi-component resin block, the power meter sensor is extremely resistant to shocks and fully waterproof.</p>

<p>USB RECHARGEABLE - WITH AUTOMATIC STANDBY<br>The lithium-ion technology provides a long battery life: up to 50 hrs with a single charge. You can recharge your cycling power meters simultaneously thanks to the battery charger with double USB cable and magnetic connectors.</p>
<p>After a few minutes of inactivity, Assioma automatically sets to stand-by and instantly switches on as soon as you start pedaling.</p>

<p>ASSIOMA APP - MANAGE WITH CONFIDENCE<br>With the Assioma App you can monitor the battery charge level, set crank-arm length, wirelessly update firmware, and keep up to date on new data analysis functions.</p>

<p>- MEASURED DATA -</p>
<ul>
<li>Power - measures the power hundreds of times per second and continuously transmit the collected data to your bike computer or smartphone via Bluetooth and ANT + technology.</li>
</ul>
<ul>
<li>Cadence - indicates the number of revolutions made by the pedal in one minute (rpm). The in-built cadence sensor of Assioma constantly detects and transmits this value to the bike computer: making it therefore superfluous to use a separate cadence sensor.</li>
</ul>
<ul>
<li>Left/Right Balance (DUO only) - indicates, as a percentage, the power individually generated by the left leg and the right leg. The L/R Power Balance values allow you to monitor the dominant/non-dominant leg ratio and observe how this varies in relation to different racing and fitness conditions. This can be useful to correct penalizing imbalances: also in post-traumatic rehabilitation programs. Unlike others, the Assioma power meter pedals return these metrics through real dual-sided measurements, not estimates</li>
</ul>
<ul>
<li>Torque Efficiency (TE) - indicates, as a percentage, how much of the power generated during one pedal stroke actually contributed to the propulsion of the cyclist. A 100% Torque Effectiveness occurs when no Negative Power has been accumulated during a pedal stroke. The typical TE value may vary between 60% and 100%. Assioma UNO indicates the Torque Effectiveness value for the left leg; whereas Assioma DUO provides data for both left and right leg.</li>
</ul>
<ul>
<li>Pedal smoothness (PS) - indicates, as a percentage, how evenly distributed the power is in a full revolution of a pedal stroke. A value of 100% means that the power is delivered constantly throughout all the revolution: the higher the value the "rounder" the pedaling. Assioma UNO indicates the PS value of the left leg; whereas Assioma DUO provides separate data for both the left and the right leg.</li>
</ul>

<p>- SPECIFICATIONS -</p>
<p>Data Recording &amp; Transmission</p>
<ul>
<li>Protocol - ANT+ PWR (CT + PO) profile, Bluetooth v4.0</li>
<li>Transmitted data - power (Watt), cadence (rpm), L/R balance % (only for Assioma DUO), torque efficiency (TE), pedal stroke uniformity (PS)</li>
<li>Power range - 0 to 2000 W</li>
<li>Power accuracy - ± 2%</li>
<li>L/R balance - 0 to 100% (DUO only)</li>
<li>Cadence - 30 to 180 rpm</li>
<li>Cadence sensor - internal, built-in</li>
</ul>
<p>Battery</p>
<ul>
<li>Type - rechargeable LI battery</li>
<li>Life ~ 50 hour life</li>
</ul>
<p>Physical</p>
<ul>
<li>Pedal weight - 149.5 g / 125 g (w or w/o sensor)</li>
<li>Resistance - IP67</li>
<li>Max cyclist weight - 120 Kg</li>
<li>Compatible cleats - FAVERO red cleats (art. 771-42), black cleats (art. 771-40) LOOK Keo cleats (only original)</li>
</ul>
<p><strong>Please Allow 7 Days Shipping if not In Stock</strong></p>', array['favero-assioma-duo-double-side-power-meter-pedals-ant-po/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('favero-assioma-duo-double-side-power-meter-spindles-for-', 'Favero Assioma DUO Double Side Power Meter Spindles - For Shimano - ANT+ Power Cadence Torque', 'favero', 'electronics', 'power-meters', '<p>Power meter with sensors on both sides compatible with Shimano® pedal bodies*. <br>Increased Q-factor: +64/+65mm**<br><br>Overview</p>
<p>Designed for the compatibility with Shimano® road<br>Assioma DUO-Shi has been designed for Shimano® road users, as it offers the opportunity to keep on riding with your current Shimano® pedal bodies* without giving up on the trustability and precision of Assioma.<br><br>Installation into your own Shimano® pedal bodies<br>Installing Assioma DUO-Shi into your own compatible Shimano® pedal bodies* is simple and quick. Watch our video for the installation.<br><br>*Compatible Shimano® pedal bodies<br>Assioma DUO-Shi is compatible with the following Shimano® pedal bodies: PD-R8000, PD-R7000, PD-6800, PD-R550 and PD-R540.<br><br>**Increased Q-factor?<br>The Q-factor of Assioma Look® version is of +54mm, whereas that of Assioma DUO-Shi measures +64mm with the PD-R7000/R550/R540 pedal bodies and +65mm with the PD-R8000/6800.<br>Despite an initial concern related to the increase of the q-factor, we decided to proceed with the project considering that body size (height, pelvis width, etc.) is a subjective factor contributing to determining which is the best q-factor for each one of us.<br>A final, positive feedback from our beta testers has eventually validated the product.<br><br>Easy to install<br>Install and move your Assioma from one bike to another just like your normal pedals. You can do it easily and without extra tools or the need for a mechanic.<br><br>IAV Cycling Dynamics<br>Assioma provides advanced metrics called IAV Cycling Dynamics: IAV Power Phase and IAV Rider Position. These metrics, combined with the classic power data permit you to analyze in detail your pedaling technique and how your position on the bike influences performance.<br><br>IAV Power and gyroscope<br>Unlike others, the measurement of Assioma is not affected by errors related to very irregular pedaling (e.g. uphill sprints) or the use of oval chainrings. This is because Assioma can detect the actual instantaneous angular velocity during the whole pedal stroke, thus providing ±1% accuracy in any conditions. Not only in the lab.<br><br>Bluetooth and ANT+<br>Assioma communicates with bike computers and smartphones (both Android and iOS) via Bluetooth and ANT+.<br><br>Real dual-sided power data<br>Assioma DUO-Shi measures power individually on both legs; this makes possible to observe with accuracy not only Total Power, but also L/R Balance, Torque Effectiveness (TE), Pedal Smoothness (PS), etc.<br><br>Accuracy and consistency<br>Assioma guarantees accurate and consistent data in all conditions on the road, and at any temperature ranging from -10°C and 60°C, thanks also to the ATC (Automatic Temperature Compensation).<br><br>Waterproof and resistant<br>The power sensors are protected by a bi-component resin block, extremely resistant to shocks and completely waterproof.<br><br>Rechargeable and green<br>Assioma is the only pedal-based power meter for road with integrated rechargeable batteries; a single charge ensures at least 50 hours of use.<br><br>Tested and guaranteed<br>Favero Electronics produces every power meter in-house and tests each of them thoroughly to fully satisfy the standard required by current regulations.</p>
<p>Specifications</p>
<ul>
<li>Power sensors for the right and left pedal</li>
<li>Dual-sided power measurement</li>
<li>Cadence sensor: included, inbuilt</li>
<li>Gyroscope: included, inbuilt</li>
<li>Power calculation system: IAV (Instantaneous Angular Velocity-based)</li>
<li>IAV Cycling Dynamics: yes</li>
<li>Oval-chainring compatible: yes</li>
<li>Weight of Assioma DUO-Shi without pedal bodies: 99,0g per side (battery included)</li>
<li>Weight of Assioma DUO-Shi with PD-R8000 pedal body: 157,0g per side (battery included)</li>
<li>Adapter’s material: aerospace aluminium alloy</li>
<li>Battery type: rechargeable lithium battery</li>
<li>Battery life: at least 50 hours</li>
<li>Radio communication: Bluetooth v4.0, ANT+ PWR profile (CT + PO)</li>
<li>Accuracy power measurement: ± 1%</li>
<li>Temperature compensation: -10°C / +60°C</li>
<li>Waterproofness rating: IP67</li>
<li>Q-factor with:<br>-PD-R7000/R550/R540: +64 mm<br>-PD-R8000/6800: +65 mm</li>
<li>Bike type: road</li>
<li>Made in Italy</li>
<li>Warranty: 2 years</li>
</ul>
<p>Package content</p>
<ul>
<li>Left power sensor with adapter for Shimano® pedal bodies*</li>
<li>Right power sensor with adapter for Shimano® pedal bodies*</li>
<li>Battery charger including plugs (EU, US, UK, AU)</li>
<li>2 two-meter long micro-USB/USB cables with 2 magnetic connectors</li>
<li>Hex key and 4 washers for the installation</li>
<li>Assioma user manual</li>
<li>Assioma DUO-Shi user manual</li>
<li></li>
</ul>
<p><strong>Please Allow 7 Days Shipping if not In Stock</strong></p>', array['favero-assioma-duo-double-side-power-meter-spindles-for-/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('favero-assioma-pro-mx-1-power-pedals-single', 'Favero Assioma PRO MX-1 Power Pedals - Single', 'favero', 'electronics', 'power-meters', '<p>Assioma PRO MX is the revolutionary pedal-based power meter for MTB and gravel 100% SPD® compatible.</p>
<p>You can use it with the cleats provided within the box or with the original Shimano® SM-SH51.</p>
<p>It inherits the reliability and extreme precision of the Favero road power pedals, adding unparalleled resistance to shocks during your challenges on the trail.<br><br><br><strong>- FEATURES -</strong></p>
<p><strong></strong><strong><em>Easy to install and universally compatible</em></strong><br>The Favero Assioma PRO MX-1 power meter pedals can be installed and swapped between bikes like any other pedal: in a few minutes and without special tools or the assistance of a mechanic.<br><br>They feature both Bluetooth and ANT+ communication channels, which makes them compatible with the majority of bike computers and smart watches on the market, as well as with the major training apps such as Zwift, Strava, Bkool, TrainerRoad, Rouvy and many others.<br><br><br><strong><em>Compact spindle to protect the technology</em></strong><br>All the electronic components and the integrated rechargeable battery are safely stored within an extremely compact and resistant spindle.<br><br>Those unpleasant inconveniences of battery-related dropouts typical of the replaceable batteries are thus avoided thanks to the strategic position of the rechargeable battery and the consequent absence of external electrical contacts.<br><br>On top of that, without battery compartments or power ports that can be opened and closed, water, mud, and dust cannot enter, thus guaranteeing extreme reliability even in adverse weather conditions.<br><br><strong>The product is IP67-certified.</strong><br><br><br><strong><em>Extremely resistant to shocks and impacts</em></strong><br>The pedal body in aluminium 6061-T6 is extremely robust and light, ready for all types of terrain.  <br><br>The clipless system features a surface hardness of up to 800 HV, ensuring that the power meter pedal is as resistant to shocks as never seen before.<br><br><br><strong><em>IAV Power and Data Measured by Assioma PRO MX-1</em></strong><br></p>
<p>Thanks to the special IAV Power System, the Assioma measurements take into account our irregular pedaling (e.g., sprints, climbs) or the use of oval chainrings when calculating power, guaranteeing an accuracy of ±1% in any situation.  Assioma PRO MX offers extremely comprehensive data reading via ANT+ and Bluetooth.</p>

<p>Measures:</p>
<ul>
<li>Power</li>
<li>Cadence</li>
<li>PCO (Platform Center Offset)</li>
<li>PP (Power Phase)</li>
<li>TE (Torque Efficiency)</li>
<li>PS (Pedal Smoothness)</li>
<li>RP (Rider Position)</li>
</ul>

<p><br><strong><em>Rechargeable</em></strong><br>Assioma PRO MX-1 uses integrated rechargeable batteries: a single charge guarantees at least 60 hours of use. Charging takes place via a magnetic system, which avoids any problems related to accidental tugging of the charging cable.<br> <br><strong><em>Made in Italy</em></strong><br>Favero Electronics produces each power meter in its headquarters in Italy and tests its good functioning individually through careful laboratory tests, fully satisfying the standards required by current regulations.<br><br><br><strong>- SPECIFICATIONS -</strong></p>
<ul>
<li>Pedals for MTB and gravel with power sensor only on left side</li>
<li>Weight per power pedal: 191.4 g</li>
<li>L/R Balance</li>
<li>Cadence sensor: included, inbuilt</li>
<li>Gyroscope: included, inbuilt</li>
<li>Power calculation system: IAV (Instantaneous Angular Velocity-based)</li>
<li>Cycling Dynamics: Available</li>
<li>Data visible via ANT+ or on the Favero Assioma App:
<ul>
<li>Power</li>
<li>Cadence</li>
<li>PCO</li>
<li>Power Phase (PP)</li>
<li>Pedal Smoothness (PS)</li>
<li>Torque Efficiency (TE)</li>
<li>Rider Position (no App Favero Assioma)</li>
</ul>
</li>
<li>
Data visible via Bluetooth:
<ul>
<li>Power</li>
<li>Cadence</li>
</ul>
</li>
<li>Oval-chainrings compatible: yes</li>
<li>Battery type: rechargeable, lithium-ion</li>
<li>Battery life: at least 60 hours</li>
<li>Radio communication: ANT+, Bluetooth</li>
<li>Accuracy power measurement: ± 1%</li>
<li>Thermal compensation: -10°C / +55°C</li>
<li>Waterproofness rating: IP67</li>
<li>
Safety standard - DIN EN ISO 4210</li>
<li>Bike Category 3: Riding in rough terrain and drops less than 61 cm</li>
<li>Stack height: 11.2 mm</li>
<li>
Compatible cleats:
<ul>
<li>Provided cleats (art. 773-00-62)</li>
<li>Shimano® SM-SH51 cleats</li>
</ul>
</li>
<li>Bike types: MTB XC, CX, gravel</li>
<li>Made in Italy</li>
<li>Warranty: 2 yrs</li>
</ul>

<p><strong></strong><strong>- IN THE BOX -</strong></p>
<ul>
<li>
Left pedal with power sensor
</li>
<li>
Right pedal without power sensor
</li>
<li>
MTB-compatible SPD® cleats
</li>
<li>
4 Washers
</li>
<li>
Magnetic charging connector (2x MX-2 | 1x MX-1)
</li>
<li>
1 Micro USB 2-way charging cable
</li>
<li>
1 Greasing tools kit
</li>
<li>
1 Guarantee and safety manual
</li>
</ul>
<p><strong>Please Allow 7 Days Shipping if not In Stock</strong></p>', array['favero-assioma-pro-mx-1-power-pedals-single/1.jpg']::text[], 'new', 0, '2024-05-17'::date, false, false),
  ('favero-assioma-pro-mx-2-power-pedals-dual', 'Favero Assioma PRO MX-2 Power Pedals - Dual', 'favero', 'electronics', 'power-meters', '<p>Assioma PRO MX is the revolutionary pedal-based power meter for MTB and gravel 100% SPD® compatible.</p>
<p>You can use it with the cleats provided within the box or with the original Shimano® SM-SH51.</p>
<p>It inherits the reliability and extreme precision of the Favero road power pedals, adding unparalleled resistance to shocks during your challenges on the trail.<br><br><br><strong>- FEATURES -</strong></p>
<p><strong></strong><strong><em>Easy to install and universally compatible</em></strong><br>The Favero Assioma PRO MX-2 power meter pedals can be installed and swapped between bikes like any other pedal: in a few minutes and without special tools or the assistance of a mechanic.<br><br>They feature both Bluetooth and ANT+ communication channels, which makes them compatible with the majority of bike computers and smart watches on the market, as well as with the major training apps such as Zwift, Strava, Bkool, TrainerRoad, Rouvy and many others.<br><br><br><strong><em>Compact spindle to protect the technology</em></strong><br>All the electronic components and the integrated rechargeable battery are safely stored within an extremely compact and resistant spindle.<br><br>Those unpleasant inconveniences of battery-related dropouts typical of the replaceable batteries are thus avoided thanks to the strategic position of the rechargeable battery and the consequent absence of external electrical contacts.<br><br>On top of that, without battery compartments or power ports that can be opened and closed, water, mud, and dust cannot enter, thus guaranteeing extreme reliability even in adverse weather conditions.<br><br><strong>The product is IP67-certified.</strong><br><br><br><strong><em>Extremely resistant to shocks and impacts</em></strong><br>The pedal body in aluminium 6061-T6 is extremely robust and light, ready for all types of terrain.  <br><br>The clipless system features a surface hardness of up to 800 HV, ensuring that the power meter pedal is as resistant to shocks as never seen before.<br><br><br><strong><em>IAV Power and Data Measured by Assioma PRO MX-2</em></strong><br>Thanks to the special IAV Power System, Assioma''s measurements take into account our irregular pedaling (e.g., sprints, climbs) or the use of oval chainrings when calculating power, guaranteeing an accuracy of ±1% in any situation.<br><br>Assioma PRO MX-2 offers extremely comprehensive data reading via ANT+ and Bluetooth.<br><br>Measures:</p>
<ul>
<li>Power</li>
<li>Cadence</li>
<li>L/R Balance</li>
<li>PCO (Platform Center Offset)</li>
<li>PP (Power Phase)</li>
<li>TE (Torque Efficiency)</li>
<li>PS (Pedal Smoothness)</li>
<li>RP (Rider Position)</li>
</ul>
<p><em><strong></strong></em><strong><em></em></strong><em><strong>Real L/R balance data, not estimated</strong></em><br>The data provided by Assioma PRO MX-2 is based on measurements taken separately on the right and left sides. This allows you to accurately observe not only the total power, but also the left/right balance, which therefore translates into a real and non-estimated data reading.<br><br><strong><em>Rechargeable</em></strong><br>Assioma PRO MX-2 uses integrated rechargeable batteries: a single charge guarantees at least 60 hours of use. Charging takes place via a magnetic system, which avoids any problems related to accidental tugging of the charging cable.<br> <br><strong><em>Made in Italy</em></strong><br>Favero Electronics produces each power meter in its headquarters in Italy and tests its good functioning individually through careful laboratory tests, fully satisfying the standards required by current regulations.<br><br><br><strong>- SPECIFICATIONS -</strong></p>
<ul>
<li>Pedals for MTB and gravel with power meter on both sides</li>
<li>Weight per power pedal: 191.4 g</li>
<li>L/R Balance</li>
<li>Cadence sensor: included, inbuilt</li>
<li>Gyroscope: included, inbuilt</li>
<li>Power calculation system: IAV (Instantaneous Angular Velocity-based)</li>
<li>Cycling Dynamics: Available</li>
<li>Data visible via ANT+ or on the Favero Assioma App:
<ul>
<li>Power</li>
<li>Cadence</li>
<li>L/R Balance</li>
<li>PCO</li>
<li>Power Phase (PP)</li>
<li>Pedal Smoothness (PS)</li>
<li>Torque Efficiency (TE)</li>
<li>Rider Position (no App Favero Assioma)</li>
</ul>
</li>
<li>Data visible via Bluetooth:
<ul>
<li>Power</li>
<li>Cadence</li>
<li>L/R Balance</li>
</ul>
</li>
<li>Oval-chainrings compatible: yes</li>
<li>Battery type: rechargeable, lithium-ion</li>
<li>Battery life: at least 60 hours</li>
<li>Radio communication: ANT+, Bluetooth</li>
<li>Accuracy power measurement: ± 1%</li>
<li>Thermal compensation: -10°C / +55°C</li>
<li>Waterproofness rating: IP67</li>
<li>Safety standard - DIN EN ISO 4210</li>
<li>Bike Category 3: Riding in rough terrain and drops less than 61 cm</li>
<li>Stack height: 11.2 mm</li>
<li>Compatible cleats:
<ul>
<li>Provided cleats (art. 773-00-62)</li>
<li>Shimano® SM-SH51 cleats</li>
</ul>
</li>
<li>Bike types: MTB XC, CX, gravel</li>
<li>Made in Italy</li>
<li>Warranty: 2 yrs</li>
</ul>

<p><strong></strong><strong>- IN THE BOX -</strong></p>
<ul>
<li>Left pedal with power sensor</li>
<li>Right pedal with power sensor</li>
<li>MTB-compatible SPD® cleats</li>
<li>4 Washers</li>
<li>Magnetic charging connector (2x MX-2 | 1x MX-1)</li>
<li>1 Micro USB 2-way charging cable</li>
<li>1 Greasing tools kit</li>
<li>1 Guarantee and safety manual</li>
</ul>
<p><strong>Please Allow 7 Days Shipping if not In Stock</strong><br></p>', array['favero-assioma-pro-mx-2-power-pedals-dual/1.jpg']::text[], 'new', 0, '2024-05-17'::date, false, false),
  ('favero-assioma-pro-rs-1-power-pedals-single', 'Favero Assioma PRO RS-1 Power Pedals - Single', 'favero', 'electronics', 'power-meters', '<p>Assioma PRO RS is the lightest road power meter pedal available with just 123.5g per pedal.</p>
<p>Compatible with Shimano® SPD-SL® cleats, it delivers pro-level performance and over 60 hours of use per charge—no power dropouts.  The power spindle, which safely houses all the important electronic parts and battery, is completely sealed and independent from the pedal body. This so-called “split approach” makes it durable, and extremely easy to maintain.  Its sleek design, with a q-factor of just +53mm and a stack-height of 10.5mm, makes it perfect to improve performance and achieve results on your road training.</p>
<p>The Assioma PRO RS power meter offers ±1% accuracy thanks to the IAV Power System, and the most complete power data reading available with a wealth of advanced metrics. A modular design lets you switch between road and MTB bodies while keeping the same power sensor. The best power meter pedal to train with precision and ride with confidence.</p>

<p><strong>MAIN FEATURES</strong></p>
<ul>
<li>Left pedal with power sensor</li>
<li>Right pedal without power sensor</li>
<li>100% Shimano® SPD-SL® cleat compatibility</li>
<li>Lightest power pedal – Just 123.5 g per side</li>
<li>±1% Power Accuracy even with oval chainrings</li>
<li>Rechargeable Battery – 60+ hours per charge</li>
<li>Advanced cycling metrics (PCO included)</li>
<li>Pedal body in carbon-fibre tech-polymers
<ul>
<li>Low stack height (10.5 mm)</li>
<li>Low q-factor (+53mm)</li>
</ul>
</li>
<li>Modular design – interchangeable pedal bodies</li>
<li>Made in Italy</li>
</ul>

<p><strong>TECH SPECS</strong></p>
<ul>
<li>SPD-SL® road power pedals with power meter only on the left side</li>
<li>Weight left pedal with power sensor: 123.5 g</li>
<li>Weight right pedal without power sensor: 122.5 g</li>
<li>Cadence sensor: included, inbuilt</li>
<li>Gyroscope: included, inbuilt</li>
<li>Power calculation system: IAV (Instantaneous Angular Velocity-based)</li>
<li>Cycling Dynamics: available</li>
<li>Data visible via ANT+ or on the Favero Assioma App:
<ul>
<li>Power</li>
<li>Cadence</li>
<li>PCO2</li>
<li>Power Phase (PP)</li>
<li>Pedal Smoothness (PS)</li>
<li>Torque Effectiveness (TE)</li>
<li>Rider Position (no App Favero Assioma)</li>
</ul>
</li>
<li>Data visible via Bluetooth:
<ul>
<li>Power</li>
<li>Cadence</li>
</ul>
</li>
<li>Oval-chainrings compatible: Yes</li>
<li>Battery type: rechargeable, lithium-ion</li>
<li>Battery life: at least 60 hours</li>
<li>Radicommunication: ANT+, Bluetooth</li>
<li>Accuracy power measurement: ± 1%</li>
<li>Thermal compensation: yes</li>
<li>Waterproofness rating: IP67</li>
<li>Q-factor: +53mm</li>
<li>Pedal stack height: 10.5 mm</li>
<li>Compatible cleats:
<ul>
<li>Provided cleats (art. 773-20-64)</li>
<li>Shimano® SM-SH10, SM-SH11 or SM-SH12</li>
</ul>
</li>
<li>Bike types: road cycling</li>
<li>Warranty: 2 yrs</li>
</ul>

<p><strong>PACKAGE CONTENT</strong></p>
<ul>
<li>Power meter with sensor on the left side only</li>
<li>Two-way charging cable</li>
<li>1 Magnetic connector</li>
<li>Shimano® compatible SPD-SL® cleats</li>
<li>4 Washers</li>
<li>Greasing tools kit</li>
</ul>', array['favero-assioma-pro-rs-1-power-pedals-single/1.jpg']::text[], 'new', 0, '2025-11-19'::date, false, false),
  ('favero-assioma-uno-single-side-power-meter-pedals-ant-po', 'Favero Assioma UNO Single Side Power Meter Pedals - ANT+ Power Cadence Torque', 'favero', 'electronics', 'power-meters', '<p>Assioma Power Meter Pedals - breakthrough technology applied to cycling, to make your training more efficient and effective than ever. Set your targets with ultra-precise and reliable watt measurements. Hard facts, not estimates, to make the most of each pedal stroke.</p>
<p>Favero Assioma UNO measures power from the left pedal only, doubling the output to provide total power for L/R. For readings of both Left and Right, consider the Favero Assioma DUO. For those owners of Favero Assioma UNO who wish to include right-side power, consider the Favero Assioma UNO Upgrade (part code 772-05).</p>

<p>PEACE OF MIND<br>Favero offer 2-Year replacement warranty against defect.</p>

<p>EASY TO INSTALL. FAST TO MOVE BETWEEN BIKES.<br>Install and move your Assioma power meter from one bike to another just like a normal pedal, easily and without special tools.</p>

<p>HARD FACTS TO MAKE THE MOST OF EVERY PEDAL STROKE.<br>To provide you with unprecedented detailed and precise data, the Assioma power sensors are placed on the pedals, exactly where your force goes. Pair it with your smartphone or bike computer instantly, using Bluetooth and ANT+ communication.</p>

<p>AUTOMATIC TEMPERATURE COMPENSATION<br>You can count on the most accurate and consistent real-time power data thanks to proprietary technologies, innovative software solutions and the advanced electronics of Assioma. Ride without fear in the snow, rain, mud, or sweltering heat: the automatic temperature compensation (ATC) ensures exact and reliable watt measurements in any weather conditions at temperatures between -10°C and 60°C.</p>

<p>WATERPROOF, RESISTANT ... AND THE LIGHTEST EVER MADE<br>The lightest and most compact pedal-based power meter: with no protruding elements, it does not interfere with the pedalling. Not even when cornering. Protected by a bi-component resin block, the power meter sensor is extremely resistant to shocks and fully waterproof.</p>

<p>USB RECHARGEABLE - WITH AUTOMATIC STANDBY<br>The lithium-ion technology provides a long battery life: up to 50 hrs with a single charge. You can recharge your cycling power meters simultaneously thanks to the battery charger with double USB cable and magnetic connectors.</p>
<p>After a few minutes of inactivity, Assioma automatically sets to stand-by and instantly switches on as soon as you start pedaling.</p>

<p>ASSIOMA APP - MANAGE WITH CONFIDENCE<br>With the Assioma App you can monitor the battery charge level, set crank-arm length, wirelessly update firmware, and keep up to date on new data analysis functions.</p>

<p>- MEASURED DATA -</p>
<ul>
<li>Power - measures the power hundreds of times per second and continuously transmit the collected data to your bike computer or smartphone via Bluetooth and ANT + technology.</li>
</ul>
<ul>
<li>Cadence - indicates the number of revolutions made by the pedal in one minute (rpm). The in-built cadence sensor of Assioma constantly detects and transmits this value to the bike computer: making it therefore superfluous to use a separate cadence sensor.</li>
</ul>
<ul>
<li>Left/Right Balance (DUO only) - indicates, as a percentage, the power individually generated by the left leg and the right leg. The L/R Power Balance values allow you to monitor the dominant/non-dominant leg ratio and observe how this varies in relation to different racing and fitness conditions. This can be useful to correct penalizing imbalances: also in post-traumatic rehabilitation programs. Unlike others, the Assioma power meter pedals return these metrics through real dual-sided measurements, not estimates</li>
</ul>
<ul>
<li>Torque Efficiency (TE) - indicates, as a percentage, how much of the power generated during one pedal stroke actually contributed to the propulsion of the cyclist. A 100% Torque Effectiveness occurs when no Negative Power has been accumulated during a pedal stroke. The typical TE value may vary between 60% and 100%. Assioma UNO indicates the Torque Effectiveness value for the left leg; whereas Assioma DUO provides data for both left and right leg.</li>
</ul>
<ul>
<li>Pedal smoothness (PS) - indicates, as a percentage, how evenly distributed the power is in a full revolution of a pedal stroke. A value of 100% means that the power is delivered constantly throughout all the revolution: the higher the value the "rounder" the pedaling. Assioma UNO indicates the PS value of the left leg; whereas Assioma DUO provides separate data for both the left and the right leg.</li>
</ul>

<p>- SPECIFICATIONS -</p>
<p>Data Recording &amp; Transmission</p>
<ul>
<li>Protocol - ANT+ PWR (CT + PO) profile, Bluetooth v4.0</li>
<li>Transmitted data - power (Watt), cadence (rpm), L/R balance % (only for Assioma DUO), torque efficiency (TE), pedal stroke uniformity (PS)</li>
<li>Power range - 0 to 2000 W</li>
<li>Power accuracy - ± 2%</li>
<li>L/R balance - 0 to 100% (DUO only)</li>
<li>Cadence - 30 to 180 rpm</li>
<li>Cadence sensor - internal, built-in</li>
</ul>
<p>Battery</p>
<ul>
<li>Type - rechargeable LI battery</li>
<li>Life ~ 50 hour life</li>
</ul>
<p>Physical</p>
<ul>
<li>Pedal weight - 149.5 g / 125 g (w or w/o sensor)</li>
<li>Resistance - IP67</li>
<li>Max cyclist weight - 120 Kg</li>
<li>Compatible cleats - FAVERO red cleats (art. 771-42), black cleats (art. 771-40) LOOK Keo cleats (only original)</li>
</ul>
<p><strong>Please Allow 7 Days Shipping if not In Stock</strong></p>', array['favero-assioma-uno-single-side-power-meter-pedals-ant-po/1.jpg']::text[], 'new', 0, '2024-05-17'::date, false, false),
  ('garmin-rally-rk100', 'Garmin Rally RK100', 'garmin', 'electronics', 'power-meters', '<h3>Perfectly designed to help you push yourself.</h3>
<h3>IMPECCABLY DESIGNED PEDAL</h3>
<p>Rally power meters have undergone rigorous testing to ensure total reliability. Featuring a superior design with sensors housed inside, this sleek pedal installs like any pedal. And it''s quick to transfer between bikes.</p>
<h3>RELIABLE READINGS</h3>
<p>By precisely measuring your cadence and forces detected on the left pedal, Rally RK100 doubles the value to provide total power. Want more metrics? Upgrade later to the <a href="https://buy.garmin.com/en-AU/AU/p/699171" rel="noopener nofollow" target="_blank">dual-sensing system.</a></p>
<h3>CLEAT COMPATIBILITY</h3>
<p>For a comfortable ride, these pedals are designed with your favourite LOOK KEO cleats in mind.</p>
<h3>TRANSFERABLE SPINDLE</h3>
<p>From road to gravel to cyclocross and much more, keep riding year-round. A transferable spindle can be installed in <a href="https://buy.garmin.com/en-AU/AU/p/658593" rel="noopener nofollow" target="_blank">Rally RS</a> road or <a href="https://buy.garmin.com/en-AU/AU/p/658594" rel="noopener nofollow" target="_blank">Rally™ XC</a> off-road pedal body kits (each sold separately).</p>
<h3>BATTERY LIFE</h3>
<p>Make sure you’re ready for those long rides and training sessions with up to 120 hours of battery life.</p>

<h3>Conveniently connected.</h3>
<h3>FULLY CONNECTED</h3>
<p>Pair Rally RK100 with compatible <a href="https://buy.garmin.com/en-AU/AU/cCycling-p1.html?series=BRAND482&amp;amp;sorter=featuredProducts-desc" rel="noopener nofollow" target="_blank">Edge cycling computers</a> and the <a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">Garmin Connect</a>™ app1 for easy data uploads and software updates. Even connect with the <a href="https://buy.garmin.com/en-AU/AU/p/696770" rel="noopener nofollow" target="_blank">Tacx® Training App</a> when you take your ride inside.</p>
<h3>MORE WAYS TO TRAIN</h3>
<p>Rally RK100 brings power data to third-party apps1 such as Strava, <a href="https://www.trainingpeaks.com/partners/garmin/" rel="noopener nofollow" target="_blank">TrainingPeaks®,</a> TrainerRoad and more.</p>
<p><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank"></a></p>
<h3><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank">Take your cycling experience to the next level.</a></h3>
<p><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank">Looking for the best cycling to follow on Instagram? Check out @garmincycling now!</a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">See your stats, and track your goals in the Garmin Connect™ app.</a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>

<h3>Rally Family</h3>
<ul>
<li>Battery type: LR44/SR44 (x4) or CR1/3N (x2)</li>
<li>Battery life: up to 120 hours</li>
<li>Maximum rider weight: 105 kg</li>
<li>Accuracy: +/- 1%</li>
<li>Field calibration</li>
<li>Adjustable release tension</li>
<li>Measurement location: spindle</li>
<li>Communication: ANT+® and Bluetooth®
</li>
</ul>
<h3>Rally RK100</h3>
<ul>
<li>Weight: 334 g</li>
<li>
<a href="https://www.garmin.com/en-NZ/legal/waterrating-definitions/" rel="noopener nofollow" target="_blank">water resistance.</a>: IXP7</li>
<li>Cleat type: KEO</li>
<li>Q-factor: 53 mm (55 mm with provided 2 mm washer)</li>
<li>Stack height: 12.2 mm</li>
</ul>', array['garmin-rally-rk100/1.jpg']::text[], 'new', 1, '2025-03-21'::date, false, false),
  ('garmin-rally-rk200', 'Garmin Rally RK200', 'garmin', 'electronics', 'power-meters', '<h3>Perfectly designed to help you push yourself.</h3>
<h3>IMPECCABLY DESIGNED PEDAL</h3>
<p>Rally power meters have undergone rigorous testing to ensure total reliability. Featuring a superior design with sensors housed inside, these sleek pedals install like any pedal. And they’re quick to transfer between bikes.</p>
<h3>ADVANCED CYCLING DYNAMICS</h3>
<p>In addition to total power and cadence, Rally RK200 measures much more. These metrics help you tailor your training around your specific weaknesses and strengths to help you improve.</p>
<h3>CLEAT COMPATIBILITY</h3>
<p>For a comfortable ride, these pedals are designed with your favourite LOOK KEO cleats in mind.</p>
<h3>TRANSFERABLE SPINDLE</h3>
<p>From road to gravel to cyclocross and much more, keep riding year-round. A transferable spindle can be installed in <a href="https://buy.garmin.com/en-AU/AU/p/658593" rel="noopener nofollow" target="_blank">Rally RS</a> road or <a href="https://buy.garmin.com/en-AU/AU/p/658594" rel="noopener nofollow" target="_blank">Rally™ XC</a> off-road pedal body kits (each sold separately).</p>
<h3>BATTERY LIFE</h3>
<p>Make sure you’re ready for those long rides and training sessions with up to 120 hours of battery life.</p>
<h3>LEFT/RIGHT BALANCE</h3>
<p>Measure power from your left leg versus power from your right leg to get a better look at how symmetrically you’re producing power.</p>
<h3>SEATED VS. STANDING</h3>
<p>Track the amount of time you spend in each position, and gauge position effectiveness.</p>
<h3>POWER PHASE</h3>
<p>Get a clear look at where you’re producing power in the pedal stroke.</p>
<h3>PLATFORM CENTER OFFSET</h3>
<p>Ensure proper cleat position by keeping track of where power is applied on the pedal.</p>

<h3>Conveniently connected.</h3>
<h3>FULLY CONNECTED</h3>
<p>Pair Rally RK200 with compatible <a href="https://buy.garmin.com/en-AU/AU/cCycling-p1.html?series=BRAND482&amp;amp;sorter=featuredProducts-desc" rel="noopener nofollow" target="_blank">Edge cycling computers</a> and the <a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">Garmin Connect</a>™ app1 for easy data uploads and software updates. Even connect with the <a href="https://buy.garmin.com/en-AU/AU/p/696770" rel="noopener nofollow" target="_blank">Tacx® Training App</a> when you take your ride inside.</p>
<h3>MORE WAYS TO TRAIN</h3>
<p>Rally RK200 brings power data to third-party apps1 such as Strava, <a href="https://www.trainingpeaks.com/partners/garmin/" rel="noopener nofollow" target="_blank">TrainingPeaks®,</a> TrainerRoad and more.</p>
<p><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank"></a></p>
<h3><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank">Take your cycling experience to the next level.</a></h3>
<p><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank">Looking for the best cycling to follow on Instagram? Check out @garmincycling now!</a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">See your stats, and track your goals in the Garmin Connect™ app.</a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>

<p>1 Requires app on your <a href="https://support.garmin.com/en-AU/?faq=pvL8aWsaLU2iKyvF8VrpP9" rel="noopener nofollow" target="_blank">compatible smartphone</a> paired to the Rally RK200.</p>', array['garmin-rally-rk200/1.jpg']::text[], 'new', 1, '2024-12-13'::date, false, false),
  ('garmin-rally-rs100', 'Garmin Rally RS100', 'garmin', 'electronics', 'power-meters', '<h3>BRING POWER TO YOUR PEDALS</h3>

<p>Rally RS100 is tested to the extreme, so you can ride there too. This single-sensing power meter delivers reliable power measurements and is easy to transfer between bikes no matter what bike you’re on or where you’re riding.</p>

<p>It installs like any other pedal and is easy to swap from bike to bike. Yes, really.</p>

<p>Take a deep dive into your performance by measuring power and cadence.</p>

<p>Clip in with ease. These pedals are compatible with SHIMANO SPD-SL cleats.</p>

<p>Edge® cycling computer compatibility makes software updates and data uploads easy.</p>

<p>Sync data to your favourite apps for even more analysis and data sharing.</p>

<p>Ready for more? Easily upgrade to a dual-sensing system at any time.</p>

<h3>Perfectly designed to help you push yourself.</h3>

<h3>IMPECCABLY DESIGNED PEDAL</h3>
<p>Rally power meters have undergone rigorous testing to ensure total reliability. Featuring a superior design with sensors housed inside, this sleek pedal installs like any pedal. And it''s quick to transfer between bikes.</p>

<h3>RELIABLE READINGS</h3>
<p>By precisely measuring your cadence and forces detected on the left pedal, Rally RS100 doubles the value to provide total power. Want more metrics? Upgrade later to the <a href="https://buy.garmin.com/en-NZ/NZ/p/658593" rel="noopener nofollow" target="_blank">dual-sensing system.</a></p>

<h3>CLEAT COMPATIBILITY</h3>
<p>For a comfortable ride, these pedals are designed with your favourite SHIMANO SPD-SL cleats in mind.</p>

<h3>TRANSFERABLE SPINDLE</h3>
<p>From road to gravel to cyclocross and much more, keep riding year-round. A transferable spindle can be installed in <a href="https://buy.garmin.com/en-NZ/NZ/p/699171" rel="noopener nofollow" target="_blank">Rally™ RK</a> road or <a href="https://buy.garmin.com/en-NZ/NZ/p/658594" rel="noopener nofollow" target="_blank">Rally™ XC</a> off-road pedal body kits (each sold separately).</p>

<h3>BATTERY LIFE</h3>
<p>Make sure you’re ready for those long rides and training sessions with up to 120 hours of battery life.</p>

<h3>Conveniently connected.</h3>

<h3>FULLY CONNECTED</h3>
<p>Pair Rally RS100 with compatible <a href="https://buy.garmin.com/en-NZ/NZ/cCycling-p1.html?series=BRAND482&amp;amp;sorter=featuredProducts-desc" rel="noopener nofollow" target="_blank">Edge cycling computers</a> and the <a href="https://connect.garmin.com/" rel="noopener nofollow" target="_blank">Garmin Connect</a>™ app1 for easy data uploads and software updates.</p>

<h3>MORE WAYS TO TRAIN</h3>
<p>Rally RS100 brings power data to third-party apps1 such as Strava, <a href="https://www.trainingpeaks.com/partners/garmin/" rel="noopener nofollow" target="_blank">TrainingPeaks®,</a> TrainerRoad and more.</p>

<h3>Rally Family</h3>
<ul>
<li>Battery type: LR44/SR44 (x4) or CR1/3N (x2)</li>
<li>Battery life: up to 120 hours</li>
<li>Maximum rider weight: 105 kg</li>
<li>Accuracy: +/- 1%</li>
<li>Field calibration</li>
<li>Adjustable release tension</li>
<li>Measurement location: spindle</li>
<li>Communication: ANT+® and Bluetooth®
</li>
</ul>
<h3>Rally RS100</h3>
<ul>
<li>Weight: 328 g</li>
<li>
<a href="https://www.garmin.com/en-NZ/legal/waterrating-definitions/" rel="noopener nofollow" target="_blank">water resistance.</a>: IXP7</li>
<li>Cleat type: SPD-SL</li>
<li>Q-factor: 53 mm (55 mm with provided 2 mm washer)</li>
<li>Stack height: 12.2 mm</li>
</ul>', array['garmin-rally-rs100/1.jpg']::text[], 'new', 0, '2025-03-21'::date, false, false),
  ('garmin-rally-rs200', 'Garmin Rally RS200', 'garmin', 'electronics', 'power-meters', '<h3>Perfectly designed to help you push yourself.</h3>
<h3>IMPECCABLY DESIGNED PEDAL</h3>
<p>Rally power meters have undergone rigorous testing to ensure total reliability. Featuring a superior design with sensors housed inside, these sleek pedals install like any pedal. And they’re quick to transfer between bikes.</p>
<h3>ADVANCED CYCLING DYNAMICS</h3>
<p>In addition to total power and cadence, Rally RS200 measures much more. These metrics help you tailor your training around your specific weaknesses and strengths to help you improve.</p>
<h3>CLEAT COMPATIBILITY</h3>
<p>For a comfortable ride, these pedals are designed with your favourite SHIMANO SPD-SL cleats in mind.</p>
<h3>TRANSFERABLE SPINDLE</h3>
<p>From road to gravel to cyclocross and much more, keep riding year-round. A transferable spindle can be installed in <a href="https://buy.garmin.com/en-AU/AU/p/699171" rel="noopener nofollow" target="_blank">Rally™ RK</a> road or <a href="https://buy.garmin.com/en-AU/AU/p/658594" rel="noopener nofollow" target="_blank">Rally™ XC</a> off-road pedal body kits (each sold separately).</p>
<h3>BATTERY LIFE</h3>
<p>Make sure you’re ready for those long rides and training sessions with up to 120 hours of battery life.</p>
<h3>LEFT/RIGHT BALANCE</h3>
<p>Measure power from your left leg versus power from your right leg to get a better look at how symmetrically you’re producing power.</p>
<h3>SEATED VS. STANDING</h3>
<p>Track the amount of time you spend in each position, and gauge position effectiveness.</p>
<h3>POWER PHASE</h3>
<p>Get a clear look at where you’re producing power in the pedal stroke.</p>
<h3>PLATFORM CENTER OFFSET</h3>
<p>Ensure proper cleat position by keeping track of where power is applied on the pedal.</p>

<h3>Conveniently connected.</h3>
<h3>FULLY CONNECTED</h3>
<p>Pair Rally RS200 with compatible <a href="https://buy.garmin.com/en-AU/AU/cCycling-p1.html?series=BRAND482&amp;amp;sorter=featuredProducts-desc" rel="noopener nofollow" target="_blank">Edge cycling computers</a> and the <a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">Garmin Connect</a>™ app1 for easy data uploads and software updates. Even connect with the <a href="https://buy.garmin.com/en-AU/AU/p/696770" rel="noopener nofollow" target="_blank">Tacx® Training App</a> when you take your ride inside.</p>
<h3>MORE WAYS TO TRAIN</h3>
<p>Rally RS200 brings power data to third-party apps1 such as Strava, <a href="https://www.trainingpeaks.com/partners/garmin/" rel="noopener nofollow" target="_blank">TrainingPeaks®,</a> TrainerRoad and more.</p>
<p><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank"></a></p>
<h3><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank">Take your cycling experience to the next level.</a></h3>
<p><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank">Looking for the best cycling to follow on Instagram? Check out @garmincycling now!</a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>
<a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">
<p>See your stats, and track your goals in the Garmin Connect™ app.</p>
<p>LEARN MORE</p>
</a>

<p>1 Requires app on your <a href="https://support.garmin.com/en-AU/?faq=pvL8aWsaLU2iKyvF8VrpP9" rel="noopener nofollow" target="_blank">compatible smartphone</a> paired to the Rally RS200.</p>', array['garmin-rally-rs200/1.jpg']::text[], 'new', 1, '2024-12-13'::date, false, false),
  ('garmin-rally-xc100', 'Garmin Rally XC100', 'garmin', 'electronics', 'power-meters', '<h3>BRING POWER TO YOUR OFF-ROAD RIDES</h3>

<p>Rally XC100 is tested to the extreme, so you can ride there too. This single-sensing power meter delivers reliable power measurements and is easy to transfer between bikes, no matter what bike you’re on or where you’re riding.</p>

<p>It installs like any other pedal and is easy to swap from bike to bike. Yes, really.</p>

<p>Take a deep dive into your performance by measuring power and cadence.</p>

<p>Clip in with ease. These pedals are compatible with SHIMANO SPD cleats.</p>

<p>Edge® cycling computer compatibility and the Garmin Connect™ app1 makes software updates and data uploads easy.</p>

<p>Sync data to your favourite apps1 for even more analysis, data sharing and route planning.</p>

<p>Ready for more? Easily upgrade to a dual-sensing system at any time.</p>

<h3>Perfectly designed to go off-road.</h3>

<h3>IMPECCABLY DESIGNED PEDAL</h3>
<p>Rally power meters have undergone rigorous testing to ensure total reliability. Featuring a superior design with sensors housed inside, this sleek pedal installs like any pedal. And it''s quick to transfer between bikes.</p>

<h3>RELIABLE READINGS</h3>
<p>By precisely measuring your cadence and forces detected on the left pedal, Rally XC100 doubles the value to provide total power. Want more metrics? Upgrade later to the <a href="https://buy.garmin.com/en-NZ/NZ/p/658594" rel="noopener nofollow" target="_blank">dual-sensing system.</a></p>

<h3>CLEAT COMPATIBILITY</h3>
<p>For a comfortable ride, these pedals are designed with your favourite SHIMANO SPD cleats in mind.</p>

<h3>TRANSFERABLE SPINDLE</h3>
<p>From road to gravel to cyclocross and much more, keep riding year-round. A transferable spindle can be installed in <a href="https://buy.garmin.com/en-NZ/NZ/p/699171" rel="noopener nofollow" target="_blank">Rally™ RK</a> road or <a href="https://buy.garmin.com/en-NZ/NZ/p/658593" rel="noopener nofollow" target="_blank">Rally™ RS</a> road pedal body kits (each sold separately).</p>

<h3>BATTERY LIFE</h3>
<p>Make sure you’re ready for those long rides and training sessions with up to 120 hours of battery life.</p>

<h3>Conveniently connected for more possibilities.</h3>

<h3>FULLY CONNECTED</h3>
<p>Pair Rally XC100 with compatible <a href="https://buy.garmin.com/en-NZ/NZ/cCycling-p1.html?series=BRAND482&amp;amp;sorter=featuredProducts-desc" rel="noopener nofollow" target="_blank">Edge cycling computers</a> and the <a href="https://connect.garmin.com/" rel="noopener nofollow" target="_blank">Garmin Connect</a>™ app1 for easy data uploads and software updates.</p>

<h3>MORE WAYS TO TRAIN</h3>
<p>Rally XC100 brings power data to third-party apps1 such as Strava, <a href="https://www.trainingpeaks.com/partners/garmin/" rel="noopener nofollow" target="_blank">TrainingPeaks®,</a> TrainerRoad and more.</p>

<ul>
<li>Battery type: LR44/SR44 (x4)</li>
<li>Battery life: up to 120 hours (with LR44 battery type)</li>
<li>Weight: 451 g</li>
<li>
<a href="https://www.garmin.com/en-NZ/legal/waterrating-definitions/" rel="noopener nofollow" target="_blank">water resistance.</a>: IXP7</li>
<li>Maximum rider weight: 105 kg</li>
<li>Accuracy: +/- 1.0%</li>
<li>Cleat type: SHIMANO SPD</li>
<li>Q-factor: 53 mm (55 mm with provided 2 mm washer)</li>
<li>Stack height: 13.5 mm</li>
<li>Field calibration</li>
<li>Adjustable release tension</li>
<li>Garmin Connect™
</li>
<li>Measurement location: spindle</li>
<li>Communication: ANT+® and Bluetooth®
</li>
</ul>', array['garmin-rally-xc100/1.jpg']::text[], 'new', 1, '2025-03-21'::date, false, false),
  ('garmin-rally-xc200', 'Garmin Rally XC200', 'garmin', 'electronics', 'power-meters', '<h3>Perfectly designed to go off-road.</h3>
<h3>IMPECCABLY DESIGNED PEDAL</h3>
<p>Rally power meters have undergone rigorous testing to ensure total reliability. Featuring a superior design with sensors housed inside, these sleek pedals install like any pedal. And they’re quick to transfer between bikes.</p>
<h3>ADVANCED CYCLING DYNAMICS</h3>
<p>In addition to total power and cadence, Rally XC200 measures much more. These metrics help you tailor your training around your specific weaknesses and strengths to help you improve.</p>
<h3>CLEAT COMPATIBILITY</h3>
<p>For a comfortable ride, these pedals are designed with your favourite SHIMANO SPD cleats in mind.</p>
<h3>TRANSFERABLE SPINDLE</h3>
<p>From road to gravel to cyclocross and much more, keep riding year-round. A transferable spindle can be installed in <a href="https://buy.garmin.com/en-AU/AU/p/699171" rel="noopener nofollow" target="_blank">Rally™ RK</a> road or <a href="https://buy.garmin.com/en-AU/AU/p/658593" rel="noopener nofollow" target="_blank">Rally™ RS</a> road pedal body kits (each sold separately).</p>
<h3>BATTERY LIFE</h3>
<p>Make sure you’re ready for those long rides and training sessions with up to 120 hours of battery life.</p>
<h3>LEFT/RIGHT BALANCE</h3>
<p>Measure power from your left leg versus power from your right leg to get a better look at how symmetrically you’re producing power.</p>
<h3>SEATED VS. STANDING</h3>
<p>Track the amount of time you spend in each position, and gauge position effectiveness.</p>
<h3>POWER PHASE</h3>
<p>Get a clear look at where you’re producing power in the pedal stroke.</p>
<h3>PLATFORM CENTER OFFSET</h3>
<p>Ensure proper cleat position by keeping track of where power is applied on the pedal.</p>

<h3>Conveniently connected for more possibilities.</h3>
<h3>FULLY CONNECTED</h3>
<p>Pair Rally XC200 with compatible <a href="https://buy.garmin.com/en-AU/AU/cCycling-p1.html?series=BRAND482&amp;amp;sorter=featuredProducts-desc" rel="noopener nofollow" target="_blank">Edge cycling computers</a> and the <a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">Garmin Connect</a>™ app1 for easy data uploads and software updates. Even connect with the <a href="https://buy.garmin.com/en-AU/AU/p/696770" rel="noopener nofollow" target="_blank">Tacx® Training App</a> when you take your ride inside.</p>
<h3>MORE WAYS TO TRAIN</h3>
<p>Rally XC200 brings power data to third-party apps1 such as Strava, <a href="https://www.trainingpeaks.com/partners/garmin/" rel="noopener nofollow" target="_blank">TrainingPeaks®,</a> TrainerRoad and more.</p>
<p><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank"></a></p>
<h3><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank">Take your cycling experience to the next level.</a></h3>
<p><a href="https://explore.garmin.com/en-AU/cycling/" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank">Looking for the best cycling to follow on Instagram? Check out @garmincycling now!</a></p>
<p><a href="https://www.instagram.com/garmincycling/" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank"></a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">See your stats, and track your goals in the Garmin Connect™ app.</a></p>
<p><a href="https://buy.garmin.com/en-AU/AU/p/125677" rel="noopener nofollow" target="_blank">LEARN MORE</a></p>

<p>1 Requires app on your <a href="https://support.garmin.com/en-AU/?faq=pvL8aWsaLU2iKyvF8VrpP9" rel="noopener nofollow" target="_blank">compatible smartphone</a> paired to the Rally XC200.</p>', array['garmin-rally-xc200/1.jpg']::text[], 'new', 1, '2024-12-13'::date, false, false),
  ('look-new-keo-blade-power-pedals-single-12nm', 'Look New Kéo Blade Power Pedals Single 12Nm', 'look', 'electronics', 'power-meters', '<p>The latest generation of our clipless road pedals now adds a new dimension to your training thanks to a power meter. Perfectly integrated inside the left pedal axle, it measures and transmits your watts and cadence in real-time. Born from of our expertise and experience at the highest level, they offer outstanding dynamic performance: ultra-lightweight (260g/pair), wide contact area and great aerodynamics. An essential, straightforward, reliable and easy-to-use tool to optimise your performance when training and racing.</p><br><h3><strong>Why will you love it?</strong></h3><br><ul>
<br><li>The lightest power sensor pedals on the market: 260gm per pair!</li>
<br><li>Quick and easy installation in 30 seconds.</li>
<br><li>The top-level performance of Keo Blade, with the added benefit of a power sensor.</li>
<br><li>Best-in-class integration, ergonomics, durability and connectivity.</li>
<br><li>Robust mechanical and electronic architecture.</li>
<br>
</ul><br><h3><strong>Technical specifications</strong></h3><br><h3><strong>Axle</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Spindle material</th>
<br><td>Power</td>
<br>
</tr>
<br><tr>
<br><th>Waterproofness</th>
<br><td>IPX7</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Body &amp; Platform</strong></h3><br><table>
<br><tbody>
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
<br><th>Platform material</th>
<br><td>Stainless Steel</td>
<br>
</tr>
<br><tr>
<br><th>Platform area</th>
<br><td>705 mm2</td>
<br>
</tr>
<br><tr>
<br><th>Platform width</th>
<br><td>64 mm</td>
<br>
</tr>
<br><tr>
<br><th>Float angle</th>
<br><td>6°</td>
<br>
</tr>
<br><tr>
<br><th>Q Factor</th>
<br><td>53 mm</td>
<br>
</tr>
<br><tr>
<br><th>Total stack height (pedal + cleat)</th>
<br><td>17.1 mm ( 10.8 + 6.3 )</td>
<br>
</tr>
<br><tr>
<br><th>Bearings</th>
<br><td>Steel</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Retention &amp; Cleats</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Retention</th>
<br><td>Serial installed in 12Nm</td>
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
<br>
</tbody>
<br>
</table><br><h3><strong>Performance Indicators</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Total Power</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Power</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Force</th>
<br><td>Left</td>
<br>
</tr>
<br><tr>
<br><th>Pedalling efficiency</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Bluetooth and ANT+</th>
<br><td>Yes</td>
<br>
</tr>
<br><tr>
<br><th>Autonomy</th>
<br><td>60 Hrs</td>
<br>
</tr>
<br><tr>
<br><th>Battery type</th>
<br><td>Li-Po, rechargeable</td>
<br>
</tr>
<br><tr>
<br><th>Battery capacity</th>
<br><td>140mAh</td>
<br>
</tr>
<br><tr>
<br><th>Battery life</th>
<br><td>Battery life - in use : <strong>60 hours</strong><br>Battery life - in sleep mode : <strong>6 months</strong><br>Battery life - in deep sleep : <strong>&gt; 12 months</strong>
</td>
<br>
</tr>
<br><tr>
<br><th>Battery warning</th>
<br><td>Yes</td>
<br>
</tr>
<br><tr>
<br><th>Battery durability</th>
<br><td>Less than 20% capacity loss after 300 full cycles (approx. 10 years of use)</td>
<br>
</tr>
<br><tr>
<br><th>Wake-up</th>
<br><td>Rotation</td>
<br>
</tr>
<br><tr>
<br><th>Software update</th>
<br><td>Yes, with LOOK app</td>
<br>
</tr>
<br><tr>
<br><th>Battery connectivity</th>
<br><td>Blade Power USB-C Cable</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Weight &amp; Accessories</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Pedal</th>
<br><td>130 g</td>
<br>
</tr>
<br><tr>
<br><th>Weight pair + cleats</th>
<br><td>330 g</td>
<br>
</tr>
<br>
</tbody>
<br>
</table>', array['look-new-keo-blade-power-pedals-single-12nm/1.jpg', 'look-new-keo-blade-power-pedals-single-12nm/2.jpg', 'look-new-keo-blade-power-pedals-single-12nm/3.jpg', 'look-new-keo-blade-power-pedals-single-12nm/4.jpg', 'look-new-keo-blade-power-pedals-single-12nm/5.jpg']::text[], 'new', 1, '2024-10-01'::date, false, false),
  ('look-new-x-track-power-pedals-dual', 'Look New X-Track Power Pedals Dual', 'look', 'electronics', 'power-meters', '<p>Designed for cyclists with exacting standards, X-Track Power Dual pedals are the perfect option to gett the most out of each training session and race, whether you are riding an MTB or gravel bike. With a power meter inside each axle, they provide accurate data in all conditions, including the most extreme, and feature a market-leading weight/contact area ratio. Approved by our athletes, they are hard-wearing, reliable, efficient and Made in France: the perfect pedals on any terrain.</p><br><h3><strong>100% Integrated Electronics</strong></h3><br><p>Cutting-edge design, electronic components directly integrated within the pedal axle and many test miles out on the road have enabled us to develop an even more reliable power meter. Capable of withstanding shocks and extreme weather conditions, our pedals have sailed through even the toughest of tests with flying colours. We are so confident in our product that we offer up to 3 years of warranty cover.</p><br><h3><strong>It’s a X-Track</strong></h3><br><p>404g a pair with 540 mm² contact area: the X-Track Power Dual weight/contact area ratio is quite simply the best on the market. On mountain and gravel bikes, they guarantee a perfect connection with your shoes for full power transmission and ultra-precise stability. The compatibility with the SPD standard combined with an adjustable, reliable and rapid release system ensures safety and comfort without compromising efficiency.</p><br><h3><strong>Unbelievable Accuracy</strong></h3><br><p>Each pedal is fitted with a power meter designed to calibrate automatically in response to changes in temperature and atmospheric pressure. The latest generation of electronic components and algorithms offer accuracy levels of around 1%.</p><br><h3><strong>More Than Just Power</strong></h3><br><p>The electronic components within each pedal axle provide accurate information including watts generated, left/right balance, cadence and many other performance indicators. The X-Track Power Dual can measure and display your pedalling data in real-time to help you progress with every training ride and to shine in competitions.</p><br><h3><strong>Battery Life</strong></h3><br><p>With exceptional battery life of 60 hours, your X-Track Power Dual pedals will follow you for many long rides before needing recharged. Both pedals charge at the same time using a magnetic connector and USB-C cable. Furthermore, integrating the lithium batteries inside the axle eliminates.</p><br><h3><strong>Commitment</strong></h3><br><p>We strive to make the right choices every day. Which is why X-Track Power Duals are made from recycled aluminium chips left over from production. We also use plastic-free cardboard packaging to reduce our environmental impact.</p><br><h3><strong>Quick and Easy Installation</strong></h3><br><p>Fitting, connection and set up are all easy with the X-Track Power Dual! They takes 30 seconds to install on your bike, without affecting your position or cleat settings, after which automatic calibration and Bluetooth/ANT+ connection are quick and easy from either your bike computer or mobile phone: your pedals are ready to ride in just a few minutes.</p><br><h3><strong>Change your pedals, not your position</strong></h3><br><p>For the first time, accessing power doesn’t require any modification to your bike fit. Thanks to clever miniaturization of electronic components, the geometry of the X-Track Power body maintains a 53mm Q Factor and 10.7mm stack height, identical to standard pedals in the X-Track line up. This allows you to effortlessly transition from standard pedals to Power pedals without altering your position on the bike or your cleat setup.</p><br><h3>
<strong>All-Terrain Reliability</strong> </h3><br><p>The electronic components in the X-Track Power Dual pedals are perfectly insulated. Our pedals keep water, dust, mud, sand or the cold out, with three levels of protection ensuring a perfect and long lasting seal (IPX7 so they are ready to face even the harshest of weather conditions.</p><br><h3><strong>Relentless Testing</strong></h3><br><p>To put the toughness, ruggedness and durability of our pedals to the test, we gave the X-Track Power Duals to our most exacting athletes, competing on the most arduous circuits. In addition to validating the pedals’ performance at the highest level, we also benefited from hundreds of hours of tests in real conditions, confirming their unlimited potential.</p><br><h3><strong>An Optimised Ecosystem</strong></h3><br><p>Not only is the connection with bike computers, sports watches and mobile phones easy and user-friendly, we have also developed a dedicated application for the X-Track Power Duals to fit, calibrate and update your pedals. Available on both iOS and Android, it also allows you to register your product and enjoy extra benefits including crash replacement and extended warranty</p><br><h3><strong>Technical specifications</strong></h3><br><h3><strong>Axle</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Spindle material</th>
<br><td>Power</td>
<br>
</tr>
<br><tr>
<br><th>Waterproofness</th>
<br><td>IPX7</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Body &amp; Platform</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Technology</th>
<br><td>X-Track</td>
<br>
</tr>
<br><tr>
<br><th>Body material</th>
<br><td>Aluminium</td>
<br>
</tr>
<br><tr>
<br><th>Platform material</th>
<br><td>Stainless Steel</td>
<br>
</tr>
<br><tr>
<br><th>Platform area</th>
<br><td>504 mm2</td>
<br>
</tr>
<br><tr>
<br><th>Platform width</th>
<br><td>60 mm</td>
<br>
</tr>
<br><tr>
<br><th>Float angle</th>
<br><td>6°</td>
<br>
</tr>
<br><tr>
<br><th>Q Factor</th>
<br><td>53 mm</td>
<br>
</tr>
<br><tr>
<br><th>Total stack height (pedal + cleat)</th>
<br><td>16.8 mm ( 10.7 + 6.1 )</td>
<br>
</tr>
<br><tr>
<br><th>Bearings</th>
<br><td>Steel</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Retention &amp; Cleats</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Retention</th>
<br><td>6 to 14Nm</td>
<br>
</tr>
<br><tr>
<br><th>Cleats</th>
<br><td>Standard Cleat included</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Performance Indicators</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Total Power</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Power</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Force</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Pedalling efficiency</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Bluetooth and ANT+</th>
<br><td>Yes</td>
<br>
</tr>
<br><tr>
<br><th>Autonomy</th>
<br><td>60 Hrs</td>
<br>
</tr>
<br><tr>
<br><th>Battery type</th>
<br><td>Li-Po, rechargeable</td>
<br>
</tr>
<br><tr>
<br><th>Battery capacity</th>
<br><td>140mAh</td>
<br>
</tr>
<br><tr>
<br><th>Battery life</th>
<br><td>Battery life - in use : <strong>60 hours</strong><br>Battery life - in sleep mode : <strong>6 months</strong><br>Battery life - in deep sleep : <strong>&gt; 12 months</strong>
</td>
<br>
</tr>
<br><tr>
<br><th>Battery warning</th>
<br><td>Yes</td>
<br>
</tr>
<br><tr>
<br><th>Battery durability</th>
<br><td>Less than 20% capacity loss after 300 full cycles (approx. 10 years of use)</td>
<br>
</tr>
<br><tr>
<br><th>Wake-up</th>
<br><td>Rotation</td>
<br>
</tr>
<br><tr>
<br><th>Software update</th>
<br><td>Yes, with LOOK app</td>
<br>
</tr>
<br><tr>
<br><th>Battery connectivity</th>
<br><td>Blade Power USB-C Cable</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Weight &amp; Accessories</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Pedal</th>
<br><td>202 g</td>
<br>
</tr>
<br><tr>
<br><th>Weight pair + cleats</th>
<br><td>455 g</td>
<br>
</tr>
<br>
</tbody>
<br>
</table>', array['look-new-x-track-power-pedals-dual/1.jpg', 'look-new-x-track-power-pedals-dual/2.jpg', 'look-new-x-track-power-pedals-dual/3.jpg', 'look-new-x-track-power-pedals-dual/4.jpg', 'look-new-x-track-power-pedals-dual/5.jpg']::text[], 'new', 1, '2024-10-01'::date, false, false),
  ('look-new-x-track-power-pedals-single', 'Look New X-Track Power Pedals Single', 'look', 'electronics', 'power-meters', '<p>For gravel or mountain biking, the integrated power meter of our X-Track Power Single model allows you to optimise your effort, then to analyse your training and race data. Featuring an outstanding weight/contact area ratio, they are incredibly efficient on technical rides and designed to withstand the toughest conditions. A simple, reliable and accurate tool to measure your effort, combined with SPD-compatible pedals offering outstanding performance.</p><br><h3><strong>Why will you love it?</strong></h3><br><ul>
<br><li>An accurate power meter in a pair of efficient SPD compatible pedals.</li>
<br><li>Lightweight (404 g) with all-terrain efficiency.</li>
<br><li>Installed and set up in minutes.</li>
<br><li>Totally weatherproof and splashproof.</li>
<br>
</ul><br><h3><strong>Technical specifications</strong></h3><br><h3><strong>Axle</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Spindle material</th>
<br><td>Power</td>
<br>
</tr>
<br><tr>
<br><th>Waterproofness</th>
<br><td>IPX7</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Body &amp; Platform</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Technology</th>
<br><td>X-Track</td>
<br>
</tr>
<br><tr>
<br><th>Body material</th>
<br><td>Aluminium</td>
<br>
</tr>
<br><tr>
<br><th>Platform material</th>
<br><td>Stainless Steel</td>
<br>
</tr>
<br><tr>
<br><th>Platform area</th>
<br><td>504 mm2</td>
<br>
</tr>
<br><tr>
<br><th>Platform width</th>
<br><td>60 mm</td>
<br>
</tr>
<br><tr>
<br><th>Float angle</th>
<br><td>6°</td>
<br>
</tr>
<br><tr>
<br><th>Q Factor</th>
<br><td>53 mm</td>
<br>
</tr>
<br><tr>
<br><th>Total stack height (pedal + cleat)</th>
<br><td>16.8 mm ( 10.7 + 6.1 )</td>
<br>
</tr>
<br><tr>
<br><th>Bearings</th>
<br><td>Steel</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Retention &amp; Cleats</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Retention</th>
<br><td>6 to 14Nm</td>
<br>
</tr>
<br><tr>
<br><th>Cleats</th>
<br><td>Standard Cleat included</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Performance Indicators</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Total Power</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Power</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Force</th>
<br><td>Left</td>
<br>
</tr>
<br><tr>
<br><th>Pedalling efficiency</th>
<br><td>Left and right</td>
<br>
</tr>
<br><tr>
<br><th>Bluetooth and ANT+</th>
<br><td>Yes</td>
<br>
</tr>
<br><tr>
<br><th>Autonomy</th>
<br><td>60 Hrs</td>
<br>
</tr>
<br><tr>
<br><th>Battery type</th>
<br><td>Li-Po, rechargeable</td>
<br>
</tr>
<br><tr>
<br><th>Battery capacity</th>
<br><td>140mAh</td>
<br>
</tr>
<br><tr>
<br><th>Battery life</th>
<br><td>Battery life - in use : <strong>60 hours</strong><br>Battery life - in sleep mode : <strong>6 months</strong><br>Battery life - in deep sleep : <strong>&gt; 12 months</strong>
</td>
<br>
</tr>
<br><tr>
<br><th>Battery warning</th>
<br><td>Yes</td>
<br>
</tr>
<br><tr>
<br><th>Battery durability</th>
<br><td>Less than 20% capacity loss after 300 full cycles (approx. 10 years of use)</td>
<br>
</tr>
<br><tr>
<br><th>Wake-up</th>
<br><td>Rotation</td>
<br>
</tr>
<br><tr>
<br><th>Software update</th>
<br><td>Yes, with LOOK app</td>
<br>
</tr>
<br><tr>
<br><th>Battery connectivity</th>
<br><td>Blade Power USB-C Cable</td>
<br>
</tr>
<br>
</tbody>
<br>
</table><br><h3><strong>Weight &amp; Accessories</strong></h3><br><table>
<br><tbody>
<br><tr>
<br><th>Pedal</th>
<br><td>202 g</td>
<br>
</tr>
<br><tr>
<br><th>Weight pair + cleats</th>
<br><td>455 g</td>
<br>
</tr>
<br>
</tbody>
<br>
</table>', array['look-new-x-track-power-pedals-single/1.jpg', 'look-new-x-track-power-pedals-single/2.jpg', 'look-new-x-track-power-pedals-single/3.jpg', 'look-new-x-track-power-pedals-single/4.jpg', 'look-new-x-track-power-pedals-single/5.jpg']::text[], 'new', 1, '2024-10-01'::date, false, false),
  ('stages-dura-ace-9200-left-arm-power-meter', 'STAGES - DURA-ACE 9200 LEFT ARM POWER METER', 'stages', 'electronics', 'power-meters', '<p>The new Gen 3 single-sided Stages Power L meter is built on to a non-drive-side Shimano Dura-Ace R9200 crank arm and is compatible with all Shimano Hollowtech II road drivetrains.</p>
<p><strong>Tour Proven.</strong> Stages Power has carried riders to three consecutive Tour de France victories, plus many more world and national championships. If you believe racing provides the world’s best product proving ground, then Stages Power is proven as the world’s best power meter.</p>
<p><strong>Active Temperature Compensation</strong> as standard equipment. Consistency of measurement is the most important feature of a power meter. Stages Power was the first meter to make temperature compensation an automatic process ensuring accurate readings no matter the environmental conditions.</p>
<p><strong>Individual meter calibration</strong> for the most accurate results. Stages Power meters are calibrated individually to ensure a +/- 1.5% accuracy level. Individual calibration means that you can trust the data produced by our system.</p>
<p><strong>Additional features:</strong></p>
<ul>
<li>± 1.5% accuracy in all conditions</li>
<li>Active temperature compensation</li>
<li>Accelerometer based cadence measurement</li>
<li>Wirelessly upgradable firmware</li>
<li>LED indicator displays battery level at start up (with no need for connect to an app) and confirms successful zero reset</li>
<li>Updated accelerometer and addition of gyroscope for improved cadence resolution</li>
<li>Upgraded BLE and ANT+ radios offer a 6X improvement of data transmission strength<br><br>
</li>
</ul>
<p><strong>Compatibility</strong></p>
<p>The new Gen 3 single-sided Stages Power L meter is built on to a non-drive-side Shimano Dura-Ace R9200 crank arm and is compatible with all Shimano Hollowtech II road drivetrains.</p>
<ul>
<li>Frame Compatibility: Most frames, see fit guide in our Support section</li>
<li>Device Compatibility: ANT+, Bluetooth Smart Ready</li>
<li>Software Compatibility: Stages Link, Training Peaks, Strava, Garmin Training Center and others<br><br>
</li>
</ul>
<p><strong>In The Box</strong></p>
<ul>
<li>Power Meter</li>
<li>High quality CR2032 coin cell battery</li>
<li>Lifetime access to Stages Link for power meter management and firmware upgrades.</li>
<li>2 months free access to Stages Link premium training and coaching features.</li>
<li>Product Identification Card with Serial Number and ANT+ I.D. Number.</li>
<li>User Guide</li>
</ul>', '{}'::text[], 'new', 0, '2025-10-22'::date, false, false),
  ('stages-ultegra-8100-left-arm-power-meter-1', 'STAGES - ULTEGRA 8100 LEFT ARM POWER METER', 'stages', 'electronics', 'power-meters', '<p>The new Gen 3 single-sided Stages Power L meter is built on to a non-drive-side Shimano Ultegra 8100 crank arm and is compatible with all Shimano Hollowtech II road drivetrains.</p>
<p><strong>Tour Proven.</strong> Stages Power has carried riders to three consecutive Tour de France victories, plus many more world and national championships. If you believe racing provides the world’s best product proving ground, then Stages Power is proven as the world’s best power meter.</p>
<p><strong>Active Temperature Compensation</strong> as standard equipment. Consistency of measurement is the most important feature of a power meter. Stages Power was the first meter to make temperature compensation an automatic process ensuring accurate readings no matter the environmental conditions.</p>
<p><strong>Individual meter calibration</strong> for the most accurate results. Stages Power meters are calibrated individually to ensure a +/- 1.5% accuracy level. Individual calibration means that you can trust the data produced by our system.</p>
<p><strong>Additional features:</strong></p>
<ul>
<li>± 1.5% accuracy in all conditions</li>
<li>Active temperature compensation</li>
<li>Accelerometer based cadence measurement</li>
<li>Wirelessly upgradable firmware</li>
<li>LED indicator displays battery level at start up (with no need for connect to an app) and confirms successful zero reset</li>
<li>Updated accelerometer and addition of gyroscope for improved cadence resolution</li>
<li>Upgraded BLE and ANT+ radios offer a 6X improvement of data transmission strength<br><br>
</li>
</ul>
<p><strong>Compatibility</strong></p>
<p>The new Gen 3 single-sided Stages Power L meter is built on to a non-drive-side Shimano Ultegra 8100 crank arm and is compatible with all Shimano Hollowtech II road drivetrains.</p>
<ul>
<li>Frame Compatibility: Most frames, see fit guide in our Support section</li>
<li>Device Compatibility: ANT+, Bluetooth Smart Ready</li>
<li>Software Compatibility: Stages Link, Training Peaks, Strava, Garmin Training Center and others<br><br>
</li>
</ul>
<p><strong>In The Box</strong></p>
<ul>
<li>Power Meter</li>
<li>High quality CR2032 coin cell battery</li>
<li>Lifetime access to Stages Link for power meter management and firmware upgrades.</li>
<li>2 months free access to Stages Link premium training and coaching features.</li>
<li>Product Identification Card with Serial Number and ANT+ I.D. Number.</li>
<li>User Guide</li>
</ul>', array['stages-ultegra-8100-left-arm-power-meter-1/1.jpg']::text[], 'new', 4, '2025-10-22'::date, false, false),

  -- ---- electronics · radar-lights ----
  ('garmin-varia-rct715-rear-light', 'Garmin Varia RCT715 Rear Light', 'garmin', 'electronics', 'radar-lights', '<p>Garmin Varia RCT715 Rear Light</p>

<h3>BUILT-IN CAMERA</h3>
<p>The integrated camera records what’s behind you at up to 1080p/30 fps. So you can ride with peace of mind, knowing you’ll capture clear footage if anything out of the ordinary is detected.</p>

<h3>AUTOMATIC INCIDENT CAPTURE</h3>
<p>Rest assured, this tiny camera has your back. It can detect if an incident occurs and automatically saves footage before, during and after the event.</p>

<h3>WORKS WITH THE VARIA APP</h3>
<p>Use this <a href="https://www.garmin.com/en-NZ/p/716691" rel="noopener nofollow" target="_blank">smartphone app</a> to easily access your footage, transfer videos or customise camera settings such as data overlays.</p>

<h3>MAXIMUM AWARENESS</h3>
<p>Varia™ RCT715 has rearview radar that provides visual and audible alerts for vehicles approaching from behind up to 140 metres away.</p>

<h3>MULTIPLE PAIRING OPTIONS</h3>
<p>Pair and control the built-in camera with your <a href="https://www.garmin.com/en-NZ/c/sports-fitness/cycling-bike-computers-bike-radar-power-meter-headlights/?series=BRAND482&amp;amp;sorter=featuredProducts-desc" rel="noopener nofollow" target="_blank">Edge® bike computer</a> or compatible smartphone as well as select Garmin wearables.</p>

<h3>THIRD-PARTY APP COMPATIBLE</h3>
<p>When used with a compatible smartphone, Varia™ RCT715 integrates with your favourite apps, such as Ride with GPS and more, to overlay your maps with rearview radar alerts.</p>

<h3>SUPERIOR VISIBILITY</h3>
<p>Alert motorists to your presence as soon as possible with daylight visibility up to 1 mile.</p>

<h3>COMPACT DESIGN</h3>
<p>Easily mount this sleek, compact device on the seatpost of almost any bicycle. The vertical design allows for leg clearance and a perfectly comfortable ride.</p>

<h3>BATTERY LIFE</h3>
<p>Stay powered for your longer rides with up to 4 hours of battery life with radar and tail light on solid high or night flash, 5 hours on solid low and and 6 hours on day flash — all with camera recording at 1080p.</p>', array['garmin-varia-rct715-rear-light/1.jpg']::text[], 'new', 1, '2024-02-29'::date, false, false),
  ('garmin-varia-rearvue-820', 'Garmin Varia RearVue 820', 'garmin', 'electronics', 'radar-lights', '<h3>STRIKINGLY VISIBLE. REMARKABLY POWERFUL.​</h3>

<p>Varia RearVue 820 features our most powerful and precise radar yet with a wider field of view, giving you more reliable alerts than ever before. The tail light offers up to 2 km (1.24 miles) of visibility and has a brake light that shows when you’re slowing or stopping.</p>

The 
Varia RearVue 820
 is the latest in Garmin''s radar lineup, featuring several enhancements over previous models, including USB-C charging and improved vehicle tracking. 

<ul>
<li><strong>Vehicle Detection</strong>: The radar can detect approaching vehicles from up to <strong>175 meters</strong> (about 190 yards) away. It provides visual and audible alerts on a compatible Garmin device (Edge cycling computer, smartwatch, or the Varia app on a smartphone).</li>
<li><strong>Advanced Tracking</strong>: A key feature is the ability to classify the <strong>size</strong> of the approaching vehicle (e.g., truck vs. motorbike), its lateral movement, and threat level, which helps riders anticipate traffic dynamics. It also includes "same speed tracking" to alert the rider if a vehicle is following at the same speed (acting as a "drafting sensor" for other cyclists).</li>
<li><strong>Integrated Tail Light</strong>: The device has a bright tail light with multiple modes (solid, peloton, night flash, day flash) that is visible for up to <strong>2 kilometers</strong> (1.2 miles). It also functions as a <strong>brake light</strong>, flashing when the rider slows down.</li>
<li><strong>Battery Life</strong>: The rechargeable lithium-ion battery offers up to <strong>24 hours</strong> in day flash mode and up to <strong>30 hours</strong> in radar-only mode.</li>
<li><strong>Connectivity and Build</strong>: It connects via <strong>ANT+®</strong> and <strong>BLE</strong> (Bluetooth Low Energy) and uses a modern <strong>USB-C</strong> port for charging. It is rated <strong>IPX7</strong> for water resistance.</li>
<li>
<strong>Dimensions &amp; Weight</strong>: The compact design measures 98.9 x 25.9 x 43.2 mm (3.9″ x 1″ x 1.7″) and weighs approximately <strong>90 grams</strong> (3.2 oz). 
</li>
</ul>', array['garmin-varia-rearvue-820/1.png']::text[], 'new', 1, '2026-02-12'::date, false, false),
  ('garminvariartl515radartaillight', 'Garmin Varia RTL515 Radar Tail Light', 'garmin', 'electronics', 'radar-lights', '<h3>Garmin Varia RTL515 Radar Tail Light</h3>
<h3>Smarter Safety, Ride with Confidence</h3>
<p>Stay aware of what’s behind you with the <strong>Garmin Varia RTL515</strong> — the radar tail light that alerts you to approaching vehicles while making sure they see you too. Pair it with your Garmin Edge® computer, compatible smartphone, or both, for real-time alerts that keep you riding safer and more confidently.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Rearview Radar Protection</strong><br>Detects vehicles approaching from behind up to <strong>140 metres</strong> away and sends alerts directly to your Garmin device or smartphone.</p>
</li>
<li>
<p><strong>Multiple Display Options</strong><br>Works seamlessly with your Edge® bike computer, the Varia™ app, or other compatible apps as a primary or backup display.</p>
</li>
<li>
<p><strong>High Visibility Lighting</strong><br>Daylight-visible tail light can be seen from up to <strong>1.6 km (1 mile)</strong> away, giving drivers plenty of warning.</p>
</li>
<li>
<p><strong>Light Modes for Every Ride</strong></p>
<ul>
<li>
<p>Solid: 20 lumens (6 hours)</p>
</li>
<li>
<p>Peloton mode: 8 lumens (8 hours)</p>
</li>
<li>
<p>Night flash: 29 lumens (6 hours)</p>
</li>
<li>
<p>Day flash: 65 lumens (up to 16 hours)</p>
</li>
</ul>
</li>
<li>
<p><strong>Compact &amp; Easy to Mount</strong><br>At just <strong>71 g</strong>, the slim design fits almost any seatpost with the included mounting kit.</p>
</li>
<li>
<p><strong>Durable &amp; Weatherproof</strong><br>Built to withstand all conditions with an <strong>IPX7 water rating</strong>.</p>
</li>
<li>
<p><strong>Long Battery Life</strong><br>Up to <strong>16 hours</strong> in day flash mode ensures you’re covered on even the longest rides.</p>
</li>
</ul>

<h3>Specifications</h3>
<ul>
<li>
<p><strong>Dimensions</strong>: 98.6 × 19.7 × 39.6 mm</p>
</li>
<li>
<p><strong>Weight</strong>: 71 g</p>
</li>
<li>
<p><strong>Viewing Angle</strong>: 220° wide visibility</p>
</li>
<li>
<p><strong>Connectivity</strong>: ANT+®, Bluetooth®</p>
</li>
<li>
<p><strong>Battery</strong>: Rechargeable, up to 16 hours in day flash mode</p>
</li>
</ul>

<h3>What’s in the Box</h3>
<ul>
<li>
<p>Garmin Varia RTL515</p>
</li>
<li>
<p>Mounting Kit</p>
</li>
<li>
<p>Charging Cable</p>
</li>
<li>
<p>Documentation</p>
</li>
</ul>

<h3>Why You’ll Love It</h3>
<p>The Varia RTL515 combines radar technology with a powerful rear light, so you’ll always know what’s coming from behind while staying highly visible to drivers. It’s lightweight, easy to use, and makes every ride safer.</p>

<h3>Ride Safe, Ride Smart</h3>
<p>Equip your bike with the <strong>Garmin Varia RTL515</strong> — the ultimate rearview radar tail light for cyclists who want confidence on every ride.</p>', array['garminvariartl515radartaillight/1.jpg']::text[], 'new', 1, '2021-08-19'::date, false, false),
  ('garmin-varia-ut800-smart-headlight', 'Garmin Varia UT800 Smart Headlight', 'garmin', 'electronics', 'radar-lights', '<p>Whether you’re riding on the streets or the trail, you won’t have to quit when the sun does.</p>
<ul>
<li>Wherever you ride, make sure you’re seen with daytime visibility from more than 1 mile.</li>
<li>It projects a steady blast of 800 lumens for up to 1.5 hours. Now that’s bright.</li>
<li>So smart, it can adjust to ambient light1 and speed to save battery life.</li>
<li>This headlight plays well on its own or when paired with your Edge® bike computer.</li>
<li>It’s up to you. Mount the headlight on your handlebar or on your helmet.</li>
<li>Shine bright with 5 light modes — no matter the conditions.</li>
</ul>
<p>WORKS ALONE OR PAIRS WITH EDGE</p>
<ul>
<li>When paired with your bike computer, the headlight automatically adjusts based on speed and ride profile. And you can control the lights yourself with just a quick tap.</li>
</ul>
<p>AUTO BRIGHTNESS CONTROL</p>
<ul>
<li>Select Edge bike computers can detect ambient light conditions and automatically adjust your headlight brightness accordingly to help you conserve battery life.</li>
</ul>
<p>SUPERIOR VISIBILITY</p>
<ul>
<li>At its brightest, Varia UT800 projects a steady beam of 800 lumens, making you visible in daylight from more than 1 mile (1.6 km) away.</li>
</ul>
<p>VARIABLE MODES</p>
<ul>
<li>Tailor your light output to the conditions with 5 light modes, including high (800 lumens), medium (400 lumens), low (200 lumens), night flash and day flash.</li>
</ul>
<p>BATTERY LIFE</p>
<ul>
<li>Multiple modes help you maximise battery life. You’ll get 1.5 hours on high, 3 hours on medium, 6 hours on low, 25 hours in day flash mode and 6 hours in night flash mode.</li>
</ul>
<p>MULTIPLE MOUNTING OPTIONS</p>
<ul>
<li>Featuring a low-profile, lightweight (140 g) design, you can mount Varia UT800 to your handlebar with an out-front mount or to your helmet with a helmet or friction mount</li>
</ul>
<h3>Specs</h3>
<ul>
<li>Dimensions (LxWxH): 3.8" x 1.3" x 1.2" (96.6 mm x 33.5 mm x 29.7 mm); 1.8" with flange (44.7 mm with flange)</li>
<li>Weight: 4.6 oz (130.0 g)</li>
<li>Battery life: 1.5 hours, high; 3.0 hours, medium; 6.0 hours, low; 25.0 hours, day flash; 6.0 hours, night flash</li>
<li>Lumens: 800</li>
<li>CREE LED: yes</li>
<li>Degrees of visibility: 270°</li>
<li>Visibility distance: 1 mile (1.6 km)</li>
<li>Water rating: IPX7</li>
</ul>
<h3><strong>In The Box</strong></h3>
<ul>
<li>Varia UT800 smart headlight</li>
<li>Charging cable</li>
<li>Universal out front mount</li>
<li>Quarter turn to friction mount</li>
<li>Manual</li>
</ul>', array['garmin-varia-ut800-smart-headlight/1.jpg']::text[], 'new', 1, '2025-03-06'::date, false, false),
  ('garmin-varia-vue', 'Garmin Varia Vue', 'garmin', 'electronics', 'radar-lights', '<h3>SEE IT AND SAVE IT</h3>

<p>The Varia Vue headlight camera records crisp, clear video in 4K (requires memory card; not included1) and saves footage automatically if it detects an incident2, while a headlight with up to 600 lumens lights the way.</p>

<p>RECORDS IN 4K RESOLUTION FOR CLEAR VIDEO PLAYBACK</p>

<p>UP TO 7 HOURS OF BATTERY LIFE IN DAY FLASH MODE WITH CAMERA RECORDING</p>

<p>SUPERBRIGHT LIGHT UP TO 600 LUMENS</p>

<p>CUTOFF BEAM PRESERVES VISION OF ONCOMING TRAFFIC</p>

<p>COMPATIBLE WITH YOUR EDGE® FLUSH OUT-FRONT MOUNTS</p>

<p>AUTOMATICALLY SAVES VIDEO BEFORE, DURING AND AFTER AN EVENT</p>

<table></table>
<table>
<tbody>
<tr>
<td>
<h3>General</h3>
</td>
</tr>
<tr>
<th>Dimension</th>
<td>92 X 60 X 33 mm (3.6″ X 2.4″ X 1.3″)</td>
</tr>
<tr>
<th>Weight</th>
<td>200 g (7 oz)</td>
</tr>
<tr>
<th>Light modes</th>
<td>High, medium, low, night flash and day flash</td>
</tr>
<tr>
<th>Lumens</th>
<td>550 high, 300 medium, 140 low, 400 night flash, 600 day flash</td>
</tr>
<tr>
<th><a href="https://www.garmin.com/en-NZ/legal/waterrating-definitions/" rel="noopener nofollow" target="_blank">Water rating</a></th>
<td>IPX7</td>
</tr>
<tr>
<th>Battery life</th>
<td>1080p30 recording: 1.5 hours high, 2.5 hours medium or night flash, 4.5 hours low, 7 hours day flash, 9 hours camera only<br>4K recording: 1.25 hours high, 2 hours medium or night flash, 3.5 hours low, 5 hours day flash, 6 hours camera only</td>
</tr>
<tr>
<th>ANT+®</th>
<td>Yes (bike lights, camera control)</td>
</tr>
<tr>
<th>BLE</th>
<td>Yes (bike lights, camera control)</td>
</tr>
<tr>
<th>Wi-Fi®</th>
<td></td>
</tr>
<tr>
<th>Visibility distance</th>
<td>1.6 km (1 mile)</td>
</tr>
<tr>
<th>Integrated camera</th>
<td></td>
</tr>
<tr>
<th>Smart headlight</th>
<td></td>
</tr>
</tbody>
</table>
<table>
<tbody>
<tr>
<td>
<h3>Maps &amp; Memory</h3>
</td>
</tr>
<tr>
<th>Accepts Data Cards</th>
<td>Memory card sold separately; requires at least 8 GB microSD™ card (supports up to 512 GB), Class 10 or faster</td>
</tr>
</tbody>
</table>
<table>
<tbody>
<tr>
<td>
<h3>Camera Features</h3>
</td>
</tr>
<tr>
<th>GPS speed and location info in video</th>
<td>Yes (when paired to a compatible Garmin Edge, Garmin smartwatch or Varia App)</td>
</tr>
<tr>
<th>Camera modes</th>
<td>Continuous, off, radar-activated (when paired with compatible Varia™ rearview radar)</td>
</tr>
<tr>
<th>Camera settings</th>
<td>4Kp30, 1440p30, 1080p30, 1080p60</td>
</tr>
<tr>
<th>Electronic Image Stabilisation (EIS)</th>
<td></td>
</tr>
<tr>
<th>Accelerometer</th>
<td>Autolock footage upon incident detection</td>
</tr>
<tr>
<th>Camera control</th>
<td>Garmin Edge® bike computers, select Garmin smartwatches and Varia™ app</td>
</tr>
<tr>
<th>Varia™ app compatibility</th>
<td>Light control, camera control and video transfer</td>
</tr>
<tr>
<th>Vault support for video storage</th>
</tr>
</tbody>
</table>', array['garmin-varia-vue/1.png']::text[], 'new', 1, '2025-04-16'::date, false, false),
  ('ravemen-nt201-with-radar', 'Ravemen NT201 with Radar', 'ravemen', 'electronics', 'radar-lights', '<p>Enhance your ride with next-level awareness! This smart radar tail light seamlessly integrates with Garmin, Wahoo, and Hammerhead bike computers, providing real-time alerts on approaching vehicles up to 140 meters away. Even at turns, its 40° coverage ensures you''re always aware of your surroundings.</p>

<p>With automatic braking detection and smart activation, it delivers a safer, more connected cycling experience. Ride smarter, ride safer</p>

<p>Smart Monitoring - Provides visual and auditory alerts via the bike computer, warning of approaching vehicles within a 140-meter range from the rear. Even at turns, the 40° alert coverage ensures your safety.</p>

<p>Compatible with Bike Computers - Works seamlessly with Garmin, Wahoo, and Hammerhead bike computers, offering real-time traffic updates.</p>

<p>High-Intensity Warning - With a maximum brightness of 80 lumens and daytime visibility up to 1600m, its unique spotlight lens design enhances visibility.</p>

<p>Brake Light Alert - The light automatically brightens when braking, providing a constant warning to vehicles behind.</p>

<p>Automatic Power On/Off - Features an auto-start/stop function: when stationary, it turns off after 2 minutes; when movement is detected, it powers on automatically.</p>

<p>Long Battery Life - Offers an extended battery runtime of up to 19 hours.</p>

<p>Multiple Lighting Modes - Provides 6 different lighting modes.</p>

<p>Flexible Mounting Options - Supports both seat rail and seat post mounting.</p>

<p>IPX6 Waterproof Rating - Fully weatherproof, ensuring safety and performance even in rainy conditions.</p>

<ul>
	<li>LED: High-efficency red LEDs</li>
	<li>Battery: 1400mAh/3.7VLi-ploymer battery</li>
	<li>Dimensions (Tail light):99×40×26.8mm</li>
	<li>Weight (Tail light): 70g</li>
</ul>

<p>What''s in the box</p>

<p>NT201*1, USB-C charging cable*1, manual/warranty card*1, ABM14 seatpost mount*1, ABM13 saddle rail mount*1, tether*1</p>', array['ravemen-nt201-with-radar/1.jpg', 'ravemen-nt201-with-radar/2.jpg', 'ravemen-nt201-with-radar/3.jpg', 'ravemen-nt201-with-radar/4.jpg', 'ravemen-nt201-with-radar/5.jpg']::text[], 'new', 1, '2026-05-27'::date, false, false),
  ('garmin-varia-seat-post-mount-mount', 'Varia™ Universal Seat-Post Quarter Turn Mount', 'garmin', 'electronics', 'radar-lights', '<p>Mount your radar tail light or bike tail light (both sold separately) to a D-shaped, aero or round seat post with this quarter-turn mount. Includes mount, 3 fitting shims and 2 O-rings. Compatible with round seat posts from 25.4 mm to 35.0 mm in diameter; Aero and D-shaped seat post compatibility varies by bike model.</p>', array['garmin-varia-seat-post-mount-mount/1.jpg']::text[], 'new', 1, '2023-09-02'::date, false, false),
  ('wahoo-trackr-radar-rear-light-radar', 'Wahoo Trackr Radar Rear Light + Radar', 'wahoo', 'electronics', 'radar-lights', '<p>Meet TRACKR RADAR, an all-in-one tail light and radar built to keep you aware, visible, and in control. With real-time vehicle detection, adaptive lighting, and seamless integration with ELEMNT bike computers and the Wahoo App, it enhances your ride without adding distractions. Its sleek, road-ready design, long-lasting battery, and versatile mounting system ensure confidence in every mile. Stay alert, see what’s coming, and ride with total focus.</p>
<p><br><strong>RIDE WITH CONFIDENCE</strong><br>TRACKR RADAR detects approaching vehicles up to 150 meters (164 yards) behind you, providing real-time alerts through your ELEMNT bike computer or compatible devices. With audible and visual warnings, you stay informed without taking your eyes off the road.</p>
<p><strong> </strong></p>
<p><strong>SEE AND BE SEEN</strong><br>Equipped with dual high-intensity LEDs, TRACKR RADAR ensures maximum visibility. Adaptive lighting modes adjust based on traffic conditions, while the brake light feature increases luminosity when slowing down—alerting drivers and enhancing road safety.</p>
<p><strong> </strong></p>
<p><strong>EXTEND YOUR RIDE</strong><br>With Battery Extender Mode, TRACKR RADAR reduces brightness when no vehicles are detected, maximizing battery life for long rides. Choose from multiple light modes, including high flash, low flash, and steady options, to match your riding conditions.</p>
<p><strong> </strong></p>
<p><strong>SEAMLESS INTEGRATION</strong><br>Designed for effortless connectivity, TRACKR RADAR pairs with ELEMNT bike computers and the Wahoo App via Bluetooth Smart and ANT+. Adjust settings, update firmware, and manage light modes directly from your device for a hassle-free experience. TRACKR RADAR can work with other Bluetooth or ANT+ bike computers. </p>
<p><strong> </strong></p>
<p><strong>VERSATILE, SECURE MOUNTING</strong><br>TRACKR RADAR’s quick-connect strap and quarter-turn mount make installation easy across a wide range of bike frames.</p>
<p>Three mount wedges - round/aero, D-shape, and flat - ensure a secure, stable fit no matter your setup.<br><br><br><strong></strong><strong>RADAR EXPERIENCE</strong></p>
<ul>
<li>Vehicle Detection: Alerts you to approaching cars up to 150m (164 yards) behind.</li>
<li>Quick Alert: A continuous flash pattern signals when a car enters the radar’s detection zone*.</li>
<li>In-Ride Alerts: Real-time notifications on ELEMNT bike computers, compatible fitness watches, and the Wahoo App.</li>
<li>Brake Light: Increases luminosity when braking to alert approaching traffic (*Not applicable to France, Norway and Germany.)
</li>
<li>
Mode Memory: Saves your last-used light mode for convenience between rides.</li>
</ul>

<p><strong></strong><strong>CONNECTIVITY &amp; CONTROL</strong></p>
<ul>
<li>ANT+ Smart Light Control: Manage the device hands-free via ELEMNT bike computers.</li>
<li>Wahoo App Control: Pair TRACKR RADAR, update firmware, and customize light modes effortlessly.</li>
<li>Compatible Devices: Connects with Wahoo ELEMNT bike computers, select fitness watches, and iOS/Android Wahoo App.</li>
</ul>
<p><strong> </strong></p>
<p><strong></strong><strong>HARDWARE &amp; DESIGN</strong></p>
<ul>
<li>
<strong></strong>Dual LED Design: Maximizes brightness and enhances visibility.
</li>
<li>
Versatile Mounting: Quick-connect strap and quarter-turn mount fit a wide range of bikes.</li>
<li>Weatherproof Build: IPX7-rated for water resistance up to 1 meter for 30 minutes.</li>
<li>Lightweight &amp; Compact: Weighs just 99g.</li>
<li>Battery Extender Mode: Reduces luminosity to conserve battery when no vehicles are detected.</li>
</ul>
<p><br><strong>WHAT’S IN THE BOX?</strong></p>
<ul>
<li>
<strong></strong>TRACKR RADAR &amp; Mount
</li>
<li>
Mount Straps (2x) – Regular &amp; Long</li>
<li>Mount Wedges (3x) – Round/Aero, D-Shape, Flat</li>
<li>USB-C Charging Cable</li>
<li>Quick Start Guide</li>
<li>Important Product Information</li>
</ul>

<h3>SPECIFICATIONS</h3>
<ul>
<li>
<p>Total Weight:  99g (3.5oz)</p>
</li>
<li>
<p>Pod Dimensions:  9.0cm x 8.2cm x 4.2cm (3.5in x 3.2in x 1.7in)</p>
</li>
<li>
<p>Battery:   Lithium-Ion</p>
</li>
<li>
<p>Battery Life: </p>
</li>
</ul>', array['wahoo-trackr-radar-rear-light-radar/1.jpg']::text[], 'new', 0, '2025-06-10'::date, false, false),

  -- ---- electronics · rear-lights ----
  ('blackburn-dayblazer-65-rear-light', 'Blackburn Dayblazer 65 Rear Light', 'blackburn', 'electronics', 'rear-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN DAYBLAZER 65 REAR LIGHT</strong></p>

 <p>With 2 LEDs pumping out 65 lumens of power, 270 degrees of visibility and our unique BLITZ daytime running mode the DAYBLAZER 65 is focused on safety, so you can focus on your ride. Also, because of the narrow profile of the light our unique mounting bracket, the DAYBLAZER 60 tail light can be mounted to just about anything you can think of from round or aero seat posts, to seat stays, to a rear rack, or your back pack.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Charging cable included, no tools required</li>
 <li>Lithium Polymer battery</li>
 <li>Waterproof to IP-67 standard</li>
 <li>TIR Lenses</li>
 <li>LED Fuel Gauge/Charge Indicator</li>
 <li>Polycarbonite Construction</li>
 <li>2 hour recharge time</li>
 <li>Runtime: Solid 1.6hrs (50 lumen), High Flash/Low Strobe 3hrs (65 lumen)/6hrs (35 lumen)</li>
 <li>48g    </li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-dayblazer-65-rear-light/1.jpg', 'blackburn-dayblazer-65-rear-light/2.jpg', 'blackburn-dayblazer-65-rear-light/3.jpg', 'blackburn-dayblazer-65-rear-light/4.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-grid-rear-light-1', 'Blackburn Grid Rear Light', 'blackburn', 'electronics', 'rear-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN GRID REAR LIGHT</strong></p>

 <p>This little light packs a punch with 40 lumens, COB technology and four modes for all your riding needs.</p>

 <p><strong>Little Light, Lots Of Bright. Illuminate The Grid, Or Your Path Off It.</strong></p>

 <p>The Grid Rear Light has four mode options so you can choose if you need high lumen power or extended run time. Ready for those commuting in the city, riding the open roads, or heading to their local trail. Grid Rear Lights offer plenty of rechargeable power to keep you visible while out riding.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Recharge Type</strong></th>
 <td>USB-C Rechargable</td>
 </tr>
 <tr>
 <th><strong>Max Brightness</strong></th>
 <td>40 Lumens</td>
 </tr>
 <tr>
 <th><strong>Mounting Options</strong></th>
 <td>Silicon Strap, Pack and Belt Clip</td>
 </tr>
 <tr>
 <th><strong>Product Weight</strong></th>
 <td>33g</td>
 </tr>
 </tbody>
 </table>

 <p><strong>Water Resistance </strong></p>

 <ul>
 <li>IP-65 Ingress protection rating or "IP Rating," is a techy way to describe the level of water- and dust-proofness of a product. This light meets the IP-65 Standard, which means it is totally protected against dust/grit and protected against low-pressure water jets coming from any direction.</li>
 </ul>
 </td>
 <td> </td>
 <td>
 <p><strong>Run Time </strong></p>

 <ul>
 <li>Solid mode: 1.5 hours at 40 lumens</li>
 <li>Pulse mode: 4 hours at 30 lumens (+2 hours auto-Eco) </li>
 <li>Strobe mode: 7.5 hours at 20 lumens (+2 hours auto-Eco) </li>
 <li>Eco mode: 20 hours at 20 lumens</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-grid-rear-light-1/1.jpg', 'blackburn-grid-rear-light-1/2.jpg', 'blackburn-grid-rear-light-1/3.jpg', 'blackburn-grid-rear-light-1/4.jpg', 'blackburn-grid-rear-light-1/5.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('blackburn-grid-sl-rear-light', 'Blackburn Grid SL Rear Light', 'blackburn', 'electronics', 'rear-lights', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>BLACKBURN GRID REAR LIGHT</strong></p>

 <p>This little light packs a punch with 30 lumens, COB LED technology and three modes for all your riding needs.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Recharge Type</strong></th>
 <td>USB-C Rechargable</td>
 </tr>
 <tr>
 <th><strong>Max Brightness</strong></th>
 <td>30 Lumens</td>
 </tr>
 <tr>
 <th><strong>Mounting Options</strong></th>
 <td>Silicon Strap</td>
 </tr>
 </tbody>
 </table>

 <p><strong>Water Resistance </strong></p>

 <ul>
 <li>IP-65 Ingress protection rating or "IP Rating," is a techy way to describe the level of water- and dust-proofness of a product. This light meets the IP-65 Standard, which means it is totally protected against dust/grit and protected against low-pressure water jets coming from any direction.</li>
 </ul>
 </td>
 <td> </td>
 <td>
 <p><strong>Run Time </strong></p>

 <ul>
 <li>High mode: 2 hours at 30 lumens</li>
 <li>Low mode: 5 hours at 8 lumens</li>
 <li>Strobe mode: 13 hours at 8 lumens</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['blackburn-grid-sl-rear-light/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('knog-blinder-rear-light-grid', 'KNOG BLINDER GRID REAR BIKE LIGHT', 'knog', 'electronics', 'rear-lights', '<p><em>Describing this light as bright is a serious under-statement. Using new COB technology, Blinder produces a punchy 100 lumens that will ensure you’re seen and safe in all light conditions.</em></p>
<p><em>It features a grid pattern that makes this Blinder one of Knog’s most individual lights ever. The graphic flash pattern has 8 different modes and is also available as a front light to make a unique pair.</em></p>
<p><em>The Blinder has integrated USB recharging, is 100% waterproof and has a whopping 60 hour run-time when using eco flash mode.</em></p>
<p><strong>INTEGRATED USB PLUG</strong><br>No charging cable is required for your Blinder, its integrated USB plugs directly into USB ports. It has a charge time of 4 hours. When your Blinder is running low on battery, a red led will light up next to the button. This ring will turn green and then turn off once the Blinder is fully charged and ready to go.</p>
<p><strong>TOOL-LESS MOUNT</strong><br>Blinder lights comes with a tool-less removable silicone straps for bars and seat posts 22 – 32mm in diameter. A large strap is also provided that will fit tubes and head tube profiles with a circumference of up to 200mm. Knog’s tool-less mounting system makes attaching your light incredibly simple and using silicone straps means there’ll be no chance of damaging your bike''s frame or beloved paint job.</p>
<p><strong>EASY ON, EASY OFF</strong><br>Removing your Blinder for charging or security purposes is a doddle with our handy clasp removal system. Strong enough to hold your light firmly in place when in use and big enough to use even when wearing gloves in colder conditions, this is a king amongst clasps.</p>
<p><strong>BLINDINGLY BRIGHT</strong><br>Producing 100 lumens of light output makes this Blinder a seriously bright option for any cyclist. Efficient Chip on Board (COB) LEDs provide maximum brightness levels for up to 90% of the battery burn time. </p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-blinder-rear-light-grid/1.jpg']::text[], 'new', 0, '2025-05-26'::date, false, false),
  ('knog-blinder-link-saddle-mount-rear-bike-light', 'KNOG BLINDER LINK SADDLE MOUNT REAR BIKE LIGHT', 'knog', 'electronics', 'rear-lights', '<p><strong>Blinder Link is an impressive bike light that''s simple to use, while being stacked with innovative features that you''ll love.</strong></p>
<p><strong>WEIGHT:</strong> 74g </p>
<ul>
<li>Specialised mounting system.</li>
<li>8 eye-catching modes.</li>
<li>100% waterproof with IP67 rating.</li>
<li>Bright &amp; punchy 100 lumen output.</li>
<li>Be seen from over 1 km.</li>
<li>USB-C rechargeable (cable not included).</li>
<li>Up to 50 hr runtime.</li>
<li>Low battery &amp; charge indicator.</li>
<li>''Rack'' mount includes 2 brackets to fit 50mm and 80mm spacing.</li>
</ul>

<h3></h3>
<p><strong>PURPOSEFUL MOUNTING BRACKET</strong></p>
<p>The Blinder Link is mounted securely on your rear carrier rack, positionined where it will be highly visible and out of the way.</p>
<p><strong>EASY ON/OFF CLIP ATTACHMENT</strong></p>
<p>Blinder Link has a unique clip design that allows a rider to quickly &amp; easily remove or attach the light to or from the mount.</p>
<p><strong>LATEST CHIP ON BOARD TECH</strong></p>
<p>Efficient Chip on Board (COB) LEDs provide maximum brightness level for up to 90% of the battery burn time. Blinder link has a bright &amp; punchy 100 lumen output that is visible from over 1km away.</p>
<p><strong>CHARGE AND LOW BATTERY INDICATOR</strong></p>
<p>When low on battery the light beside the button will glow red. When charging, the lights will stay red and then turn green once fully charged.</p>

<p><a></a></p>', array['knog-blinder-link-saddle-mount-rear-bike-light/1.jpg', 'knog-blinder-link-saddle-mount-rear-bike-light/2.jpg', 'knog-blinder-link-saddle-mount-rear-bike-light/3.jpg', 'knog-blinder-link-saddle-mount-rear-bike-light/4.jpg', 'knog-blinder-link-saddle-mount-rear-bike-light/5.jpg']::text[], 'new', 1, '2025-04-18'::date, false, false),
  ('knog-blinder-peace-rear-bike-light', 'KNOG BLINDER PEACE REAR BIKE LIGHT', 'knog', 'electronics', 'rear-lights', '<p>BLINDINGLY BRIGHT</p>
<p><strong>Describing this light as bright is a serious under-statement.</strong></p>
<p>Using new Chip On Board (COB) technology, the Blinder Rear Bike Light produces a punchy 100 lumens and is brilliant for attracting attention on the road or trail in all light conditions.</p>

<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>Be seen from up to 450 metres away.</li>
<li>USB rechargeable.</li>
<li>Integrated USB-A connector for cable free charging.</li>
<li>Waterproof with IP67 rating.</li>
<li>Up to 60 hr runtime in Eco-Flash mode.</li>
<li>Up to 2.5 hr runtime in High Steady mode.</li>
<li>Available in 4 unique flash patterns.</li>
<li>8 light mode settings.</li>
</ul>

<p><a></a></p>', array['knog-blinder-peace-rear-bike-light/1.jpg', 'knog-blinder-peace-rear-bike-light/2.jpg', 'knog-blinder-peace-rear-bike-light/3.jpg', 'knog-blinder-peace-rear-bike-light/4.jpg', 'knog-blinder-peace-rear-bike-light/5.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('knog-blinder-r-150-rear-bike-light', 'KNOG BLINDER R-150 REAR BIKE LIGHT', 'knog', 'electronics', 'rear-lights', '<p>AERO WITH ATTITUDE</p>
<p><strong>The Blinder R-150 Rear Bike Light is a purpose-built light designed for road cyclists looking for maximum visibility over distance.</strong></p>
<p>Featuring two unique design elements that effectively aid visibility from afar: a strobe LED and a dedicated angle set LED. Both these features have been designed to highlight riders to other roads users, particularly at a long distance.</p>

<p>PRODUCT HIGHLIGHTS:</p>
<ul>
<li>Super bright 150 lumen output.</li>
<li>A lightweight 40 grams.</li>
<li>9 eye-catching modes.</li>
<li>100% waterproof with IP67 rating.</li>
<li>Side illumination via lens geometry.</li>
<li>USB rechargeable battery.</li>
<li>Integrated USB-A connector (cable-free).</li>
<li>Up to 50 hr runtime.</li>
<li>Compatible with standard &amp; aero seat posts.</li>
<li>Low battery &amp; charge indicator.</li>
</ul>

<p><a></a></p>', array['knog-blinder-r-150-rear-bike-light/1.jpg', 'knog-blinder-r-150-rear-bike-light/2.jpg', 'knog-blinder-r-150-rear-bike-light/3.jpg', 'knog-blinder-r-150-rear-bike-light/4.jpg', 'knog-blinder-r-150-rear-bike-light/5.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('knog-blinder-rear-light-square', 'KNOG BLINDER SQUARE REAR BIKE LIGHT', 'knog', 'electronics', 'rear-lights', '<p><em>Describing this light as bright is a serious under-statement. Using new COB technology, Blinder produces a punchy 100 lumens that will ensure you’re seen and safe in all light conditions.</em></p>
<p><em>It features a square pattern that makes this Blinder one of Knog’s most individual lights ever. The graphic flash pattern has 8 different modes and is also available as a front light to make a unique pair.</em></p>
<p><em>The Blinder has integrated USB recharging, is 100% waterproof and has a whopping 60 hour run-time when using eco flash mode.</em></p>
<p><strong>INTEGRATED USB PLUG</strong><br>No charging cable is required for your Blinder, its integrated USB plugs directly into USB ports. It has a charge time of 4 hours. When your Blinder is running low on battery, a red led will light up next to the button. This ring will turn green and then turn off once the Blinder is fully charged and ready to go.</p>
<p><strong>TOOL-LESS MOUNT</strong><br>Blinder lights comes with a tool-less removable silicone straps for bars and seat posts 22 – 32mm in diameter. A large strap is also provided that will fit tubes and head tube profiles with a circumference of up to 200mm. Knog’s tool-less mounting system makes attaching your light incredibly simple and using silicone straps means there’ll be no chance of damaging your bike''s frame or beloved paint job.</p>
<p><strong>EASY ON, EASY OFF</strong><br>Removing your Blinder for charging or security purposes is a doddle with our handy clasp removal system. Strong enough to hold your light firmly in place when in use and big enough to use even when wearing gloves in colder conditions, this is a king amongst clasps.</p>
<p><strong>BLINDINGLY BRIGHT</strong><br>Producing 100 lumens of light output makes this Blinder a seriously bright option for any cyclist. Efficient Chip on Board (COB) LEDs provide maximum brightness levels for up to 90% of the battery burn time. </p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-blinder-rear-light-square/1.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('knog-plus-rear-light', 'KNOG PLUS REAR BIKE LIGHT', 'knog', 'electronics', 'rear-lights', '<p><em>Plus Rear bike light is a super-bright, wearable and USB rechargeable bike light. An output of 40 lumens of light from the integrated COB LEDs ensures you are well seen up to 1km away.</em></p>
<p><strong>GET LIT</strong><br>The Plus Rear light pumps out an impressive 20 lumens of light and has 5 different light modes. It’ll keep you lit up all night long, with run times of up to 40 hours on eco flash. Efficient Chip on Board (COB) LEDs designed to provide maximum brightness level for up to 90% of the battery burn time for each mode.</p>
<p><strong>NO CHARGING CABLE REQUIRED</strong><br>The integrated USB plug makes charging Plus is a breeze. No charging cable required, Plus plugs directly into USB ports &amp; is designed to be exposed to the elements. Just remove from it’s magnetic mount and you’re ready to charge.</p>
<p><strong>IT''S WEARABLE TOO</strong><br>Swapping cycling for camping or running? No dramas. Remove the light from it’s magnetic mount and it now doubles as a wearable night running light and versatile camping light. Use the clip to attach the light to your t-shirt, shorts, socks, headband, backpack, dog collar (we could go on…)</p>
<p><strong>MULTIPLE MOUNTING METHODS</strong><br>Where can you mount the Plus? Where can’t you mount it! Handlebars, forks, seatposts, pannier racks and stays. Vertical and horizontal. Standard and oversize handlebars and seatposts (22.2 – 31.8mm+). Anything goes.</p>

<h3>The Story</h3>
<p><strong><em>Knog makes innovative products that inspire people to explore the great outdoors.</em></strong></p>
<p>Knog has been designing innovative products since 2002. We want to be with you in the rain, in the sun, lighting up dark laneways, helping you see, and helping you be heard. We design products so we’re with you on the town, on the road, and in the wilderness.</p>', array['knog-plus-rear-light/1.jpg', 'knog-plus-rear-light/2.jpg', 'knog-plus-rear-light/3.jpg']::text[], 'new', 1, '2025-05-26'::date, false, false),
  ('ravemen-tr150', 'Ravemen TR150', 'ravemen', 'electronics', 'rear-lights', '<p>Experience the advanced safety and performance of the TR150 series tail light, designed to keep you visible day or night. With smart brake sensing and wide-angle illumination, it automatically adjusts to your ride, ensuring you''re always seen from any direction. The IPX6 water-resistance make it perfect for any weather.</p>

<p>High Visibility - Equipped with 4 high-brightness red LEDs, the tail light''s flashing mode provides up to 150 lumens of brightness, making it visible from up to 1.5km away. This ensures the rider''s safety, especially in low-light conditions</p>

<p>280° Field of View - The tail light offers a wide 280° field of view, ensuring that the rider remains visible from multiple angles. This enhances safety by making the rider more noticeable, whether riding at night or during the day</p>

<p>Brake detection - Automatically highlights the rear light for 3 seconds when braking to alert drivers behind you, effectively preventing you from traffic accidents</p>

<p>Auto on-off - After being stationary for 2 minutes, the tail light will automatically turn off. When it detects movement from cycling, the tail light will automatically turn on again</p>

<p>6 lighting modes available - This light offers 6 different lighting modes, providing flexibility for various riding conditions.</p>

<p>Three Installation Options - Compatible with round and aero seat post mount, saddle mount and backpack mount</p>

<p>USB-C charging port - Reversible connector to charge the light easily and no need to flip around looking for the correct orientation</p>

<p>IPX6 water-resistance - The light is usable when riding in the rain.</p>

<ul>
	<li>LED: 4* high-efficiency red LEDs</li>
	<li>Battery: 800mAh/3.7V rechargeable Li-ion battery</li>
	<li>Dimensions (light unit): 38mm (L)*25mm (W)*57mm (H)</li>
	<li>Weight (light unit): 50g</li>
</ul>

<p>Design and specifications are subject to change without notice.</p>

<p>What''s in the box - TR150*1,round and aero seat post mount*1, saddle mount *1,backpack mount*1,USB-C charging cable *1,manual/warranty card*1</p>', array['ravemen-tr150/1.jpg', 'ravemen-tr150/2.jpg', 'ravemen-tr150/3.jpg', 'ravemen-tr150/4.jpg', 'ravemen-tr150/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-tr20', 'Ravemen TR20', 'ravemen', 'electronics', 'rear-lights', '<p>With only 20 grams of the whole unit and max 20 LED lumens, TR20 is a super compact, lightweight yet bright rear light. With the quick release clamp mount, the light is easy to use and convenient for your daily commuting or road cycling, whether mounting on the seatpost or helmet.</p>

<p>Rear and side visibility - Specifically designed lens ensuring your rear and side visibility for maximum safety</p>

<p>Quick release clamp design - Versatile and easy-to-use, ready for various mounting situations</p>

<p>Angle adjustable  - Adjust the mounting angle of the light to fully optimize your visibility</p>

<ul>
	<li>LED: COB LED</li>
	<li>Battery: 200mAh/3.7V rechargeable Li-polymer battery</li>
	<li>Dimensions (Headlight): 18mm (L)*22mm (W)*52mm (H)</li>
	<li>Weight (light unit): 15g</li>
	<li>Mount size: compatible with φ 24-36mm seatpost</li>
</ul>

<p>Design and specifications are subject to change without notice</p>

<p>What''s in the box - tail light*1, base mount *1, O ring *2, USB cable*1, silicone shim *1, manual/warranty card*1</p>', array['ravemen-tr20/1.jpg', 'ravemen-tr20/2.jpg', 'ravemen-tr20/3.jpg', 'ravemen-tr20/4.jpg', 'ravemen-tr20/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-tr250', 'Ravemen TR250', 'ravemen', 'electronics', 'rear-lights', '<p>Experience the advanced safety and performance of the TR250 series tail light, designed to keep you visible day or night. With smart brake sensing and wide-angle illumination, it automatically adjusts to your ride, ensuring you''re always seen from any direction. The IPX6 water-resistance makes it perfect for any weather.</p>

<p>High Visibility - Equipped with 5 high-brightness red LEDs, the tail light''s flashing mode provides up to 250 lumens of brightness, making it visible from up to 1.8km away. This ensures the rider''s safety, especially in low-light conditions</p>

<p>280° Field of View - The tail light offers a wide 280° field of view, ensuring that the rider remains visible from multiple angles. This enhances safety by making the rider more noticeable, whether riding at night or during the day</p>

<p>Brake detection - Automatically highlights the rear light for 3 seconds when braking to alert drivers behind you, effectively preventing you from traffic accidents</p>

<p>Auto on-off - After being stationary for 2 minutes, the tail light will automatically turn off. When it detects movement from cycling, the tail light will automatically turn on again</p>

<p>6 lighting modes available - This light offers 6 different lighting modes, providing flexibility for various riding conditions.</p>

<p>Three Installation Options  - Compatible with round and aero seat post mount, saddle mount and backpack mount</p>

<p>USB-C charging port - Reversible connector to charge the light easily and no need to flip around looking for the correct orientation</p>

<p>IPX6 water-resistance - The light is usable when riding in the rain.</p>

<ul>
	<li>LED: 5* high-efficiency red LEDs</li>
	<li>Battery: 800mAh/3.7V rechargeable Li-ion battery</li>
	<li>Dimensions (light unit): 38mm (L)*25mm (W)*57mm (H)</li>
	<li>Weight (light unit): 51g</li>
</ul>

<p>Design and specifications are subject to change without notice.</p>

<p>What''s in the box - tail light *1, USB cable *1, seatpost pad *1, short rubber band *1, long rubber band *1, manual/warranty card*1</p>', array['ravemen-tr250/1.jpg', 'ravemen-tr250/2.jpg', 'ravemen-tr250/3.jpg', 'ravemen-tr250/4.jpg', 'ravemen-tr250/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-tr30', 'Ravemen TR30', 'ravemen', 'electronics', 'rear-lights', '<p>With high visibility and superior side illumination, the TR30 ensures you''re seen from all angles, day or night.</p>

<p>It features smart brake detection, auto on-off functionality, and a clear battery indicator, giving you peace of mind throughout your ride. Lightweight and easy to mount, the TR30 offers long battery life and IPX6-rated water resistance, making it the ideal choice for all-weather cycling.</p>

<p>High visibility - The 30-lumen tail light delivers a 270° wide-angle beam that ensures you are visible from up to 800 meters away. With its eye-catching output, the RAVEMEN TR30 enhances your safety on the road.</p>

<p>Brake detection - Automatically highlights the rear light for 2 seconds when braking to alert drivers behind you and reducing the risk of rear-end collisions.</p>

<p>Smart battery indicator - A quick button kick tells you all you need to know: Green (&gt;40%), Red (5-40%), and Blinking Red (Low battery). Never get caught off guard on your ride.</p>

<p>Superior Side visibility - The translucent housing design maximizes side visibility, ensuring that you’re easily seen from multiple angles for added safety.</p>

<p>Easy to mount - Equipped with a tool-free, flexible rubber mounting O ring, the TR30 is compatible with round seat posts. Some aero seatposts in similar sizes will also fit.</p>

<p>Hidden USB-C charging port - The hidden USB-C connector makes charging safe and convenient.</p>

<p>IPX6 water-resistance - Built to withstand heavy rain and tough conditions, the TR30 ensures reliable performance in all-weather riding</p>

<p>What''s in the box - TR30*1,O ring*2,USB-C charging cable*1, manual/warranty card*1</p>

<ul>
	<li>LED: 8 * Highly efficient red LEDs</li>
	<li>Battery: 200mAh/3.7V rechargeable Li-polymer battery</li>
	<li>Dimensions/Weight (light unit): 29.7mm (L)*21.2mm (W)*63.2mm (H)/22.8g</li>
</ul>', array['ravemen-tr30/1.jpg', 'ravemen-tr30/2.jpg', 'ravemen-tr30/3.jpg', 'ravemen-tr30/4.jpg', 'ravemen-tr30/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),
  ('ravemen-tr350', 'Ravemen TR350', 'ravemen', 'electronics', 'rear-lights', '<p>With max 350 led lumens and improved eye-catching warning flashing mode, TR350 offers great daytime visibility for riders. The light comes with an intelligent brake sensor for urban riding and auto on-off function for convenient operation.</p>

<p>There are also 5 other modes, 3 constant and 2 flashing modes, for various riding environments. It is easy to use with the USB-C charging port and compatible with round and aero seatposts.</p>

<p>Daytime and night visible - Warning flashing mode with eye-catching flashing pattern and max 500 led lumens to maximize your daytime visibility; 6 different modes for various daytime and night riding environments</p>

<p>Built-in motion sensor for brake detection and auto on-off function - When activated, the light will switch to 200 lumens output for 2s to increase your visibility when detecting braking. The light will switch off automatically after staying still for 2 minutes and turn on with vibration</p>

<p>Internal side stripes for brighter side visibility - Providing brighter side visibility with the internal stripes reflecting the light</p>

<p>USB-C charging port - Reversible connector to charge the light easily and no need to flip around looking for the correct orientation</p>

<ul>
	<li>LED: 3*red LEDs - Battery: 1600mAh/3.7V rechargeable Li-ion battery</li>
	<li>Dimensions (light unit): 41mm (L)*33mm (W)*62mm (H)</li>
	<li>Weight (light unit): 77g</li>
</ul>

<p>Design and specifications are subject to change without notice</p>

<p>What''s in the box - tail light *1, USB cable *1, seatpost pad *1, short rubber band *1, long rubber band *1, manual/warranty card*1</p>', array['ravemen-tr350/1.jpg', 'ravemen-tr350/2.jpg', 'ravemen-tr350/3.jpg', 'ravemen-tr350/4.jpg', 'ravemen-tr350/5.jpg']::text[], 'new', 1, '2026-04-15'::date, false, false),

  -- ---- electronics · speed-cadence-sensors ----
  ('garminsensors', 'Garmin Speed/Cadence Sensors', 'garmin', 'electronics', 'speed-cadence-sensors', '<p>Monitor your speed and cadence as you ride with these easy-to-install wireless sensors. With no magnets or other exposed parts to line up, these sensors are easy to install, maintain and move between bikes.</p>', array['garminsensors/1.jpg']::text[], 'new', 2, '2021-08-20'::date, false, false),

  -- ---- framesets · framesets ----
  ('2024-bmc-teammachine-r-01-mod', '2024 BMC Teammachine R 01 MOD', 'bmc', 'framesets', 'framesets', '<p>The all-new BMC Teammachine R was designed for a special breed of cyclist. Light enough to ascend the most demanding climbs and stiff enough to endure the most watt-crushing sprints, the Teammachine R is the ultimate race bike. The Teammachine R 01 MOD comes with BMC’s ICS Carbon Aero Cockpit and the integrated Aerocore bottle cages.</p>
<p><strong>Frame:</strong> Teammachine R 01 Premium Carbon with Aerocore Design | ICS Technology, Stealth Cable Routing | Integrated Aerocore Bottle Cages | Stealth Dropout Design | PF86 Bottom Bracket | Flat Mount Disc | 12x142mm Thru-Axle</p>
<p><strong>Fork:</strong> Teammachine R 01 Premium Carbon | ICS Technology | Stealth Cable Routing | Stealth Dropout Design | Flat Mount Disc | 12x100mm Thru-Axle</p>
<p><strong>Handlebar:</strong> ICS Carbon Aero | One-Piece Full Carbon Cockpit</p>
<p><strong>Seatpost:</strong> Teammachine R 01 Premium Carbon Seatpostn10mm Offset</p>
<p><strong>Tire Clearance:</strong> 30mm (Measured Width)</p>
<p><strong>Extras:</strong> Aerocore Bottle Cages</p>
<p><a href="https://www.bmc-switzerland.com/eu_en/teammachine-r-01-mod-black-bmc-24-10628-004.html" rel="noopener nofollow" target="_blank">https://www.bmc-switzerland.com/eu_en/teammachine-r-01-mod-black-bmc-24-10628-004.html</a></p>', array['2024-bmc-teammachine-r-01-mod/1.jpg']::text[], 'new', 1, '2024-04-12'::date, false, true),
  ('2027-cervelo-s5-frameset', '2027 Cervelo S5 Frameset', 'cervelo', 'framesets', 'framesets', '<p>The S5 is a sport-wide benchmark for speed and aerodynamic efficiency—with the race results to back it up. From Wout van Aert winning the Green Jersey by the biggest margin of victory in modern history, to Simon Yates riding himself into the maglia rosa, S5’s iconic V-stem and bayonet fork are a fixture at the front of the professional peloton. The new S5 builds on that legacy of speed by getting even faster.</p>
<p><br>The new bike is over 6 Watts faster than its predecessor, 124 grams lighter, and retains the handling, poise, and stability that riders everywhere love. The biggest changes are at the front of the bike, where the most significant aerodynamic performance comes from. The fork legs and head tube got quite a bit deeper, and the all-new, one-piece handlebar/stem builds on the original V-stem concept—and gets even faster.</p>
<p><br><br></p>
<p><strong>FORK</strong>: Cervélo All-Carbon, Bayonet S5 Fork</p>
<p><strong>HEADSET:</strong> FSA SL IS2 1-1/8, 36° x 45° / 1-3/8, 36° x45°</p>
<p><strong>FRONT THRU AXLE</strong>: Cervélo Aero Thru Axle Front,M12x1.5mm, 122mm length</p>
<p><strong>REAR THRU AXLE:</strong> Cervélo Aero Thru Axle Rear,M12x1.0mm, 169mm length</p>
<p><strong>COCKPIT: </strong>Cervélo HB19 Carbon</p>
<p><strong>SEATPOST: </strong>Cervélo SP34 Carbon</p>
<p><strong>SIZES:</strong> 48, 51, 54, 56, 58, 61</p>
<p><strong>ACCESSORIES:</strong> Cervélo Front Computer/AccessoryMount 887, Cervélo Rear AccessoryMount</p>', array['2027-cervelo-s5-frameset/1.jpg', '2027-cervelo-s5-frameset/2.jpg']::text[], 'new', 0, '2026-07-22'::date, false, false),
  ('2027-cervelo-s5-shimano-ultegra', '2027 Cervelo S5 Shimano Ultegra', 'cervelo', 'framesets', 'framesets', '<p><strong>Aero Aero Aero</strong><br>The new S5 is 6.3 Watts faster than its predecessor. These gains are realized primarily at the front end of the bike, but the integration of the asymmetric profiles of the seat tube and rear wheel are a significant source as well. Cervélo has long been the aerodynamic leader in the peloton, and we’re confident that the new S5 is at least 5 Watts faster than the bikes of our competitors.</p>
<p><br><strong>One-Piece Handlebar/Stem</strong><br>HB19 uses our “Plus-Four” concept, meaning the dimension at the hoods is 4cm narrower than in the drops (e.g. 38cm/42cm). This approach helps riders maintain a more aero body position while their hands are on the hoods, and provides stability in the drops for descending and sprinting. All bar sizes are UCI-legal, even in light of the most recent regulations change.</p>
<p><strong>Not just faster. Lighter, too.</strong><br>Despite an increase in surface area, the new S5 is 124 grams lighter than its predecessor. While the increase in fork and head tube depth added weight, we optimized the layup and hardware to make the system lighter.</p>
<p><strong>Reserve 57|64 Designed for S5:</strong><br>The new Reserve 57|64 wheelset was co-developed by Reserve and Cervélo, and designed for use in the new S5. The rear wheel’s asymmetry matches the seat tube, ensuring air flows smoothly over both. The new wheelset is 3 Watts faster than the 52|63 wheels, and weighs the same.</p>
<p>The new S5’s one-piece bar and stem is a big part of the bike’s increase in aerodynamic performance, but aerodynamic improvements are limited if the bike doesn’t fit you perfectly. We made nine different size combinations, and when you buy an S5, your Authorized Cervélo Retailer will help you get the right bar/stem combo, for no additional cost.</p>

<b>Fork</b>
Cervélo All-Carbon, Bayonet S5 Fork

<b>Shift Levers</b>
Shimano Ultegra, R8170

<b>Rear Derailleur</b>
Shimano Ultegra, R8150

<b>Front Derailleur</b>
Shimano Ultegra, R8150

<b>Sprocket</b>
Shimano Ultegra, R8100, 11-34T, 12-Speed

<b>Chain</b>
Shimano M8100

<b>Crankset</b>
Shimano Ultegra, R8100, 52/36T - 4iiii Precision Pro, GEN3+ Dual Sided

<b>Bottom Bracket</b>
FSA, BBright thread together for 24mm spindle

<b>Handlebar</b>
Cervélo HB19 Carbon

<b>Headset</b>
FSA IS2 1-1/8, 36° x 45° / 1-3/8, 36° x 45°

<b>Saddle</b>
Fizik Arione R1

<b>Seatpost</b>
Cervélo SP34 Carbon

<b>Brakes</b>
Shimano CL800 Centerlock

<b>Brake Levers</b>
Shimano Ultegra, R8170

<b>Wheelset</b>
Reserve 57TA, DT Swiss 240, 12x100mm, 24H, centerlock, tube- less compatible - Reserve 64TA, DT Swiss 240, 12x142mm, HG freehub 24H, center- lock, tubeless compatible

<b>Tires</b>
Vittoria Corsa Pro TLR G2.0 700x29c

<b>Thru Axle</b>
Cervélo Aero Thru Axle Front, M12x- 1.5mm, 122mm length - Cervélo Aero Thru Axle Rear, M12x- 1.0mm, 169mm length

<b>Accessories</b>
Cervélo Front Computer/Accessory Mount 887, Cervélo Rear Accessory Mount', array['2027-cervelo-s5-shimano-ultegra/1.jpg', '2027-cervelo-s5-shimano-ultegra/2.jpg']::text[], 'new', 1, '2026-07-22'::date, false, false),

  -- ---- helmets · aero-helmets ----
  ('fizik-kudo-aero-helmet-black', 'Fizik Kudo Aero Helmet Black', 'fizik', 'helmets', 'aero-helmets', '<p>Kudo Aero is a fast, safe, and efficient performance cycling helmet designed for high-speed road, gravel, and XC riding and racing, featuring a fully adjustable fit, integrated light, enhanced ventilation, and MIPS Air Node system.</p><p><br></p><p>AERODYNAMIC DESIGN WITH REAR SPOILER</p><p>Smooth top surface and breakaway spoiler enhance airflow, reducing drag and resistance.</p><p><br></p><p>MIPS AIR NODE SYSTEM</p><p>Integrated layer mitigates rotational forces during crashes, offering advanced protection.</p><p><br></p><p>ADJUSTABLE FIT SYSTEM</p><p>Micrometric dial and crown adjustment for personalized fit and enhanced eyewear compatibility.</p><p>Kudo Aero is a high-performance, half-shell cycling helmet designed for disciplines where aerodynamic efficiency is crucial. Sharing much of its design with the Kudo, Kudo Aero takes aerodynamics to the next level, making it an ideal choice for fast-paced rides and races.</p><p><br></p><p>Aerodynamic shell, rear spoiler</p><p>The top surface of Kudo Aero features a sleek, smooth shell that promotes optimal air attachment, reducing resistance and drag. Additionally, the rear breakaway spoiler delays airflow separation, further enhancing aerodynamic performance—an impressive feature for a traditional half-shell helmet.</p><p><br></p><p>Ventilation, comfort and safety</p><p>Despite its aerodynamic focus, Kudo Aero doesn''t compromise on comfort. Two front vents and rear heat extractors ensure efficient thermoregulation, keeping riders cool during intense efforts. The helmet is certified to both EU and CPSC standards, and its rounded shape is designed to reduce surface grip during impact, potentially lessening the force in a crash.</p><p><br></p><p>Further impact protection</p><p>The helmet’s crossbridge element, embedded in the EPS foam, efficiently distributes impact forces across the helmet for full-coverage protection. The MIPS Air Node system, seamlessly integrated into the padding, dissipates rotational forces during a crash. This low-friction layer is lightweight, easy to clean, and provides advanced protection without compromising on comfort.</p><p><br></p><p>Dialed-In fit</p><p>Kudo Aero’s fit system offers advanced adjustability with a micrometric dial at the occipital stabilizer, allowing for tilt adjustments for a personalized fit and eyewear compatibility.</p><p><br></p><p>Crown Fit</p><p>The retention system includes a bespoke crown adjustment feature, enabling riders to finetune the fit to the exact shape of their head. Lightweight ripstop webbing around the ears adds to adjustability and comfort.</p><p><br></p><p>Integrated visibility</p><p>For added safety, Kudo Aero comes with a removable passive reflector at the rear and a USB-rechargeable LED tail-light. The tail-light offers multiple lighting modes for both daytime and nighttime visibility, ensuring rider safety in all conditions.</p>', array['fizik-kudo-aero-helmet-black/1.webp', 'fizik-kudo-aero-helmet-black/2.webp', 'fizik-kudo-aero-helmet-black/3.webp', 'fizik-kudo-aero-helmet-black/4.webp', 'fizik-kudo-aero-helmet-black/5.webp']::text[], 'new', 3, '2026-06-26'::date, false, false),
  ('fizik-kudo-aero-helmet-white', 'Fizik Kudo Aero Helmet White', 'fizik', 'helmets', 'aero-helmets', '<p>Kudo Aero is a fast, safe, and efficient performance cycling helmet designed for high-speed road, gravel, and XC riding and racing, featuring a fully adjustable fit, integrated light, enhanced ventilation, and MIPS Air Node system.</p><p><br></p><p>AERODYNAMIC DESIGN WITH REAR SPOILER</p><p>Smooth top surface and breakaway spoiler enhance airflow, reducing drag and resistance.</p><p><br></p><p>MIPS AIR NODE SYSTEM</p><p>Integrated layer mitigates rotational forces during crashes, offering advanced protection.</p><p><br></p><p>ADJUSTABLE FIT SYSTEM</p><p>Micrometric dial and crown adjustment for personalized fit and enhanced eyewear compatibility.</p><p>Kudo Aero is a high-performance, half-shell cycling helmet designed for disciplines where aerodynamic efficiency is crucial. Sharing much of its design with the Kudo, Kudo Aero takes aerodynamics to the next level, making it an ideal choice for fast-paced rides and races.</p><p><br></p><p>Aerodynamic shell, rear spoiler</p><p>The top surface of Kudo Aero features a sleek, smooth shell that promotes optimal air attachment, reducing resistance and drag. Additionally, the rear breakaway spoiler delays airflow separation, further enhancing aerodynamic performance—an impressive feature for a traditional half-shell helmet.</p><p><br></p><p>Ventilation, comfort and safety</p><p>Despite its aerodynamic focus, Kudo Aero doesn''t compromise on comfort. Two front vents and rear heat extractors ensure efficient thermoregulation, keeping riders cool during intense efforts. The helmet is certified to both EU and CPSC standards, and its rounded shape is designed to reduce surface grip during impact, potentially lessening the force in a crash.</p><p><br></p><p>Further impact protection</p><p>The helmet’s crossbridge element, embedded in the EPS foam, efficiently distributes impact forces across the helmet for full-coverage protection. The MIPS Air Node system, seamlessly integrated into the padding, dissipates rotational forces during a crash. This low-friction layer is lightweight, easy to clean, and provides advanced protection without compromising on comfort.</p><p><br></p><p>Dialed-In fit</p><p>Kudo Aero’s fit system offers advanced adjustability with a micrometric dial at the occipital stabilizer, allowing for tilt adjustments for a personalized fit and eyewear compatibility.</p><p><br></p><p>Crown Fit</p><p>The retention system includes a bespoke crown adjustment feature, enabling riders to finetune the fit to the exact shape of their head. Lightweight ripstop webbing around the ears adds to adjustability and comfort.</p><p><br></p><p>Integrated visibility</p><p>For added safety, Kudo Aero comes with a removable passive reflector at the rear and a USB-rechargeable LED tail-light. The tail-light offers multiple lighting modes for both daytime and nighttime visibility, ensuring rider safety in all conditions.</p>', array['fizik-kudo-aero-helmet-white/1.webp', 'fizik-kudo-aero-helmet-white/2.webp', 'fizik-kudo-aero-helmet-white/3.webp', 'fizik-kudo-aero-helmet-white/4.webp', 'fizik-kudo-aero-helmet-white/5.webp']::text[], 'new', 3, '2026-06-26'::date, false, false),
  ('s-works-evade-4', 'S-Works Evade 4', 's-works', 'helmets', 'aero-helmets', '<p>WinTunnel, refined with World Tour racers such as Remco Evenepoel, Demi Vollering, &amp; Paul Magnier, and validated with over 100 hours of aerodynamic and thermal testing, Evade 4 delivers the rare combination every racer wants, but few helmets achieve: world-class aerodynamics and cooling with even more comfort.</p>', array['s-works-evade-4/1.webp', 's-works-evade-4/2.webp', 's-works-evade-4/3.webp', 's-works-evade-4/4.webp', 's-works-evade-4/5.webp']::text[], 'new', 9, '2026-05-22'::date, false, false),
  ('s-works-evade-4-team-replica', 'S-Works Evade 4 - Team Replica', 's-works', 'helmets', 'aero-helmets', '<p>Engineered in the WinTunnel, refined with World Tour racers, and validated with over 100 hours of aerodynamic and thermal testing, Evade 4 delivers the rare combination every racer wants but few helmets achieve: world-class aerodynamics and cooling with even more comfort. Now available in team replica colorways so you can howl like the Wolfpack, feel the pace of Red Bull – BORA – hansgrohe, and ride like the fastest women in the World Tour.</p>', array['s-works-evade-4-team-replica/1.webp', 's-works-evade-4-team-replica/2.webp', 's-works-evade-4-team-replica/3.webp', 's-works-evade-4-team-replica/4.webp', 's-works-evade-4-team-replica/5.webp']::text[], 'new', 1, '2026-07-02'::date, false, false),

  -- ---- helmets · commute-casual-helmets ----
  ('chamonix-3', 'Chamonix 3', 'specialized', 'helmets', 'commute-casual-helmets', '<p>Introducing the all-new Chamonix 3 helmet—the perfect choice for an all-road, everyday helmet. Featuring design elements pulled from our S-Works helmets, in addition to high-performance comfort and ventilation, the Chamonix is the perfect choice for your road, gravel, or commuting adventures. We designed the Chamonix helmet specifically for riders who live a bike-first lifestyle—looking for fun on every ride. Featuring Mips technology, a removable visor, and a sleek design all while earning the highest 5-Star Virginia Tech® Helmet Rating, you’ll both look and feel good on the bike. The Chamonix delivers premier comfort, performance-driven ventilation, and S-Works inspired design language, all in an accessible package. Ventilation: Taken directly from our premium S-Works Evade 3 and S-Works Prevail 3, our 4D Brow Cooling leaves a gap between the helmet and forehead, drawing airflow into internal air channels—all so you can feel the rush of air through the helmet at slow speeds, keeping you plenty cool when the going gets hot. Personalization: The visor comes in handy for extra sunny days—but if that’s not your thing, easily pop it off for a seamless look. Mips: The Chamonix comes equipped with Mips Essential Core—a low-friction layer that allows a sliding motion of 10 to 15mm in all directions. Studies indicate that this reduces some of the rotational forces transmitted to the brain during angled impacts. 5-Star Virginia Tech® Helmet Rating: The Chamonix earned the highest 5-Star Virginia Tech® Helmet Rating from the internationally renowned Virginia Polytechnic Institute and State University.</p>', array['chamonix-3/1.jpg', 'chamonix-3/2.jpg', 'chamonix-3/3.jpg', 'chamonix-3/4.jpg', 'chamonix-3/5.jpg']::text[], 'new', 8, '2025-08-28'::date, false, false),
  ('loma', 'Loma', 'specialized', 'helmets', 'commute-casual-helmets', '<p>Introducing the all-new Loma helmet—designed for riders whose adventures aren’t defined by the surfaces beneath them. Whether cruising down a gravel path or crushing it up a smooth climb, Loma seamlessly integrates top-tier innovation and performance found in our premium S-Works helmets combined with a sleek aesthetic for the ultimate all-road gear addition. Crafted to deliver comfort, timeless style, and confidence, the Loma helmet shares many of the same comfort and ventilation features as our premium S-Works helmets and the Mips Essential Core system. Meet the all-new Loma - the perfect helmet for road and gravel riders looking to blend high performance features with comfort and functionality. 5-Star Virginia Tech® Helmet Rating: The Loma earned the highest 5-Star Virginia Tech® Helmet Rating from the internationally renowned Virginia Polytechnic Institute and State University. Sunglass Storage: Intentionally designed eyewear storage keeps your glasses safely stowed when you need to get them out of the way during long climbs or moments of rest. Ventilation: When it comes to ventilation, we made sure to incorporate key learnings and innovations from our premium S-Works helmets. The Loma features our 4D brow cooling technology as well as engineered internal channels to ensure your head stays cool when the ride heats up. Mips: The Loma helmet features the Mips Essential Core system—a low-friction layer that allows a sliding motion of 10 to 15mm in all directions. Studies indicate that this helps reduce some of the rotational forces transmitted to the brain during angled impacts.</p>', array['loma/1.jpg', 'loma/2.jpg', 'loma/3.jpg', 'loma/4.jpg', 'loma/5.jpg']::text[], 'new', 15, '2025-08-28'::date, false, false),
  ('specialized-align-ii-mips-helmet', 'Specialized Align II Mips Helmet', 'specialized', 'helmets', 'commute-casual-helmets', '<p>If certified protection at an amazing value isn’t reason enough, this feature-rich Align helmet also includes the Headset SX dial fit system for easy fit adjustment and our 4th Dimension Cooling System for incredible ventilation. You''ll also find that it''s equipped with next-level protection courtesy of revolutionary MIPS technology (Multi-Directional Impact Protection System).</p>

<br>
<ul>
<li>Fit system is ANGi crash sensor ready.</li>
<li>MIPS-equipped.</li>
<li>One-size system, designed for easy and accurate fit to a wide range of head sizes.</li>
<li>Headset SX fit system with micro-adjustable dial for easy, secure, and accurate fit.</li>
<li>4th Dimension Cooling System optimizes ventilation.</li>
<li>In-molded shell improves strength and reduces weight.</li>
<li>Tri-Fix web splitter for improved comfort and ease of strap adjustments.</li>
<li>Reflective webbing and decals for increased visibility in low-light conditions.</li>
<li>Patented clip-on visor included.</li>
</ul>', array['specialized-align-ii-mips-helmet/1.webp', 'specialized-align-ii-mips-helmet/2.webp', 'specialized-align-ii-mips-helmet/3.webp', 'specialized-align-ii-mips-helmet/4.webp', 'specialized-align-ii-mips-helmet/5.webp']::text[], 'new', 5, '2021-08-19'::date, false, false),

  -- ---- helmets · kids-helmets ----
  ('giro-fixture-mips-ii-youth', 'Giro Fixture MIPS II Youth', 'giro', 'helmets', 'kids-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO FIXTURE MIPS II YOUTH HELMETS</strong></p>

 <p>Top Level mountain biking styling at a value price with all the features needed to conquer fire road adventures and swooping singletrack trails.</p>

 <p><strong>PREMIUM STYLE FOR RECREATIONAL MTB</strong></p>

 <p>How do you improve on the #1, top-selling helmet on Earth? Carefully, and with meticulous attention to detail. This updated helmet boasts a revised silhouette, redesigned integration of the Mips® Brain Protection System, and improved cooling power. Whether you''re headed for off-road adventure or just a relaxing spin, the Fixture™ Mips II offers the right combination of value, performance, and classic design that can''t be beat. With a strong and striking style, quick-dry padding, a simple and durable Roc Loc® Sport fit system, and reflective rear decals, every rider demand has been addressed. After all these updates and improvements, you''d be forgiven for thinking we doubled the price of this second-generation Fixture, but the Fixture Mips II retains its position as the value leader.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Construction</strong></th>
 <td>In Mold Construction</td>
 </tr>
 <tr>
 <th><strong>Visor</strong></th>
 <td>Removable Visor</td>
 </tr>
 <tr>
 <th><strong>Ventilation</strong></th>
 <td>Deep Internal Channeling</td>
 </tr>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc Sport MIPS</td>
 </tr>
 <tr>
 <th><strong>Size</strong></th>
 <td>Universal Youth (50 - 57cm)</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 
 </td>
 </tr>
	</tbody>
</table>', array['giro-fixture-mips-ii-youth/1.jpg', 'giro-fixture-mips-ii-youth/2.jpg', 'giro-fixture-mips-ii-youth/3.jpg', 'giro-fixture-mips-ii-youth/4.jpg', 'giro-fixture-mips-ii-youth/5.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('giro-scamp-ii', 'Giro Scamp II', 'giro', 'helmets', 'kids-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO SCAMP II HELMETS</strong></p>

 <p>Big Kid Style</p>

 <p>The Scamp II is Giro’s smallest helmet designed for young (or future) riders but it still goes big with features and style. Taking design cues from adult helmets like Manifest Spherical, this lightweight in-mold helmet features impact-dissipating EPS foam with a sturdy polycarbonate shell, plus 13 vents for efficient cooling power. The Roc Loc® Junior fit system provides extra adjustability with a simple to use dial providing several years of head protection for fast-growing rippers. The XS is designed for riders aged 1 and older while the Small is for riders aged 5 and older. Whether they’re rolling along in a trailer or powering the pedals themselves, Scamp II is going to make kids want more bike time.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Construction</strong></th>
 <td>EPS foam and polycarbonate shell</td>
 </tr>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc Jr</td>
 </tr>
 <tr>
 <th><strong>Ventilation</strong></th>
 <td>13 vents and internal channeling</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>In-mold construction</li>
 <li>13 vents and internal channeling</li>
 <li>Reflective rear decals</li>
 <li>Quick-dry padding</li>
 </ul>

 <p><strong>SIZES</strong></p>

 <ul>
 <li>XSmall 17.75” – 19.25” / 45–49cm</li>
 <li>Small 19.25”–20.75” / 49–53cm</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['giro-scamp-ii/1.jpg', 'giro-scamp-ii/2.jpg', 'giro-scamp-ii/3.jpg', 'giro-scamp-ii/4.jpg', 'giro-scamp-ii/5.jpg']::text[], 'new', 9, '2026-08-10'::date, false, false),
  ('giro-scamp-mips-ii', 'Giro Scamp MIPS II', 'giro', 'helmets', 'kids-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO SCAMP MIPS II HELMETS</strong></p>

 <p>The Scamp Mips II is Giro’s smallest helmet designed for young (or future) riders but it still goes big with features and style. Taking design cues from adult helmets like Manifest Spherical, this lightweight in-mold helmet features impact-dissipating EPS foam with a sturdy polycarbonate shell, plus 13 vents for efficient cooling power. The Mips® Evolve Core helps reduce rotational energy in many certain impacts, and the Roc Loc® Junior fit system provides extra adjustability with a simple to use dial providing several years of head protection for fast-growing rippers. The XS is designed for riders aged 1 and older while the Small is for riders aged 5 and older. Whether they’re rolling along in a trailer or powering the pedals themselves, Scamp Mips II is going to make kids want more bike time.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc Jr</td>
 </tr>
 <tr>
 <th><strong>Ventilation</strong></th>
 <td>13 Vents and Internal Channeling</td>
 </tr>
 <tr>
 <th><strong>Construction</strong></th>
 <td>EPS foam and polycarbonate Shell</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Mips® Evolve Core rotational management system </li>
 <li>In-mold construction</li>
 <li>13 vents and internal channeling</li>
 <li>Reflective rear decals</li>
 <li>Quick-dry padding</li>
 </ul>

 <p><strong>SIZES</strong></p>

 <ul>
 <li>XSmall 17.75” – 19.25” / 45–49cm</li>
 <li>Small 19.25”–20.75” / 49–53cm</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['giro-scamp-mips-ii/1.jpg', 'giro-scamp-mips-ii/2.jpg', 'giro-scamp-mips-ii/3.jpg', 'giro-scamp-mips-ii/4.jpg', 'giro-scamp-mips-ii/5.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('giro-tremor-mips-child', 'Giro Tremor MIPS Child', 'giro', 'helmets', 'kids-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO TREMOR MIPS HELMET - CHILD</strong></p>

 <p>The tremor mips helmet''s cool style is more than meets the eye. It features the latest in head protection technology, an easy to adjust fit system and 18 vents for breathability, making it a big hit with parents and little shredders alike.</p>

 <p>SHREDDERS START HERE</p>

 <p>When every curb is a jump and every patch of dirt screams for a skid, the Tremor MIPS® is there to keep smiles wide. Featuring some of the best technologies from our adult line, like In-Mold construction for reduced weight and enhanced durability, and our acclaimed Roc Loc® Sport MIPS® system for fast, secure fit adjustments, the Tremor MIPS® is ready for any ride. The Tremor MIPS® model also includes Integrated Multi-Directional Impact Protection System (MIPS®), which can redirect energy and provide more protection in certain impacts, providing the latest in head protection technology for junior riders.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Weight</strong></th>
 <td>315g (UC)</td>
 </tr>
 <tr>
 <th><strong>Size</strong></th>
 <td>Universal Child (47-54cm</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>INTEGRATED MIPS</li>
 <li>Reflectivity</li>
 <li><strong>CONSTRUCTION </strong>IN-MOLD POLYCARBONATE SHELL AND EPS LINER</li>
 <li><strong>VISOR </strong>REMOVABLE VISOR</li>
 <li><strong>FIT SYSTEM </strong>ROC LOC® SPORT MIPS</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['giro-tremor-mips-child/1.jpg', 'giro-tremor-mips-child/2.jpg', 'giro-tremor-mips-child/3.jpg', 'giro-tremor-mips-child/4.jpg', 'giro-tremor-mips-child/5.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('lazer-nutz-helmet', 'Lazer NUTZ Helmet', 'lazer', 'helmets', 'kids-helmets', '<p>Ensure your child is protected and comfortable as they experience the joy of exploring the world on two wheels for the first time. EZ Fit with self-adjusting sizing provides the best possible fit, and KinetiCore’s protection technology and extra temple coverage ensures improved protection, while the side buckle makes it easier to get the helmet on and off while avoiding painful pinches under the chin. LED Light Capability means your child will easily be seen, the inbuilt insect net stops bugs from getting in and the adjustable head basket can be expanded as your child grows. The Nutz is available in a range of fun designs and colours that will have your child racing to get in the saddle.</p>

<p><b>Secure fit: </b>The EZ fit system is an automatic fitting system which provides a secure fit for improved protection and more comfort for your child.</p>
<p><b>No more skin pinch: </b>A cleverly positioned buckle on the child’s cheek rather than under the chin to avoid painful pinches of skin under the chin.</p>
<p><b>No more insects: </b>An insect net stops bugs from flying into the helmet’s front vents, minimising distractions or irritations.</p>
<p><b>Temple coverage: </b>An extra level of protection across the skull’s most sensitive area, boosting safety, comfort and confidence.</p>
<p><b>LED light compatibility: </b>Increase safety and visibility by attaching the Universal Lazer LED at the rear of the helmet.</p>
<p><b>Lightweight: </b>22% lighter than Lazer Nut’z MIPS CE.</p>
<p><b>Reduced plastics: </b>70g less plastics used than in Lazer Nut’z CE.</p>

<h3>SPECIFICATIONS</h3>
<table>
<tbody>
<tr>
<td>Fit System</td>
<td>EZ fit System</td>
</tr>
<tr>
<td>Sizes</td>
<td>Kids Uni-size (50-56 cm)</td>
</tr>
<tr>
<td>Weight</td>
<td>250 gr (CE)</td>
</tr>
<tr>
<td>Vents</td>
<td>12 vents</td>
</tr>
</tbody>
</table>', array['lazer-nutz-helmet/1.png', 'lazer-nutz-helmet/2.png', 'lazer-nutz-helmet/3.png']::text[], 'new', 0, '2024-08-02'::date, false, false),
  ('lazer-pnut-helmet', 'Lazer PNUT Helmet', 'lazer', 'helmets', 'kids-helmets', '<p>The Pnut provides upgraded protection for children riding in bike seats, trailers or cargo bikes. It comes with KinetiCore’s built-in protection technology and extra temple coverage to protect the most sensitive part of your child’s head from impact, all combined with self-adjusting EZ Fit for upgraded comfort for your child. The Pnut design is baby seat-ready thanks to the helmet’s flat back panel, meaning their head isn’t pushed forward so they can enjoy the mesmerizing sights and sounds as a passenger. The intelligently placed side buckle makes it easier to remove the helmet and reduces the chance of painful skin pinches under the chin.</p>
<p><b> </b></p>
<p><b>Secure fit: </b>The EZ fit system is an automatic fitting system which provides a secure fit for improved protection and more comfort for your child.</p>
<p><b>No more skin pinch: </b>A cleverly positioned buckle on the child’s cheek rather than under the chin to avoid painful pinches of skin under the chin.</p>
<p><b>No more insects: </b>An insect net stops bugs from flying into the helmet’s front vents, minimising distractions or irritations.</p>
<p><b>Temple coverage: </b>An extra level of protection across the skull’s most sensitive area, boosting safety, comfort and confidence.</p>
<p><b>Babyseat-ready: </b>The helmet shape is flatter at the back so your child can keep their head up and enjoying the ride.</p>
<p><b>LED light compatibility: </b>Increase safety and visibility by attaching the Universal Lazer LED at the rear of the helmet.</p>
<p><b>Lightweight: </b>14% lighter than P’nut MIPS CE.</p>
<p><b>Reduced plastics: </b>40g less plastics used than in P’nut CE.</p>

<h3>SPECIFICATIONS</h3>
<table>
<tbody>
<tr>
<td>Fit System</td>
<td>EZ fit System</td>
</tr>
<tr>
<td>Sizes</td>
<td>Toddler Uni-size (46-52 cm)</td>
</tr>
<tr>
<td>Weight</td>
<td>240 gr (CE)</td>
</tr>
<tr>
<td>Vents</td>
<td>12 vents</td>
</tr>
</tbody>
</table>', array['lazer-pnut-helmet/1.png', 'lazer-pnut-helmet/2.png']::text[], 'new', 1, '2024-08-02'::date, false, true),
  ('mio-2', 'Mio 2', 'specialized', 'helmets', 'kids-helmets', '<p>Set your littlest riders on the path to two-wheeled freedom with the all-new Mio 2 helmet. Through an exclusive partnership with KTH Royal Institute of Technology (KTH) and Mips, we shared our helmet’s CAD designs and studied the malleable skulls of young children with Finite Element Analysis (FEA). Because toddler-aged children’s heads are softer and still growing, using low density foam - and more of it - was the outcome of this partnership. DATA DRIVEN INNOVATION: Coming out of our KTH and Mips partnership, the Mio 2 had increased the amount of low density foam inside by 16.5%, only growing the overall size of the helmet by 2.5%. COMFORT: The Mio 2 may have the latest and greatest technology inside, but that only matters when the helmet is worn properly. That’s why Mio 2 features specific toddler oriented sizing and our SX headset fit system, to help it stay properly fitted and comfortable, whenever it is worn. The easy-to-use tri-fix web splitter makes getting a ‘fuss-free’ fit incredibly simple, all adding up to a helmet they’ll beg to wear. UNLEASH THEIR IMAGINATION: On the outside, the Mio 2 comes in energetic colors sure to inspire fun and creativity from adventure-hungry kids. After all, getting our young riders excited enough to want to wear their helmet everyday is the number one goal. For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 1 and Older.</p>', array['mio-2/1.webp', 'mio-2/2.webp', 'mio-2/3.webp', 'mio-2/4.webp', 'mio-2/5.webp']::text[], 'new', 7, '2026-07-13'::date, false, false),
  ('shuffle-2', 'Shuffle 2', 'specialized', 'helmets', 'kids-helmets', '<p>Keep your littlest rider on the path of two-wheeled freedom with the all-new Shuffle 2 helmet. Through an exclusive partnership with KTH Royal Institute of Technology (KTH) and Mips, we shared our helmet’s CAD designs and studied the malleable skulls of young children with Finite Element Analysis (FEA). Because children’s heads are softer and still growing, using low density foam - and more of it - was the outcome of this partnership. DATA DRIVEN INNOVATION: Coming out of our KTH and Mips partnership, the Shuffle 2 had increased the amount of low density foam inside by 18%, only growing the overall size of the helmet by 5%. COMFORT: The Shuffle 2 may have the latest and greatest technology inside, but that only matters when the helmet is worn properly. That’s why Shuffle 2 features specific child oriented sizing and our SX headset fit system, to help it stay properly fitted and comfortable, whenever it is worn. The easy-to-use tri-fix web splitter makes getting a ‘fuss-free’ fit incredibly simple, all adding up to a helmet they’ll beg to wear. UNLEASH THEIR IMAGINATION: On the outside, the Shuffle 2 comes in energetic colors sure to inspire fun and creativity from adventure-hungry kids. The included sticker pack offers a retro vibe with a modern twist with bright graphics and lettering for even more personalization. After all, getting our young riders excited enough to want to wear their helmet everyday is the number one goal.</p>', array['shuffle-2/1.jpg', 'shuffle-2/2.jpg', 'shuffle-2/3.jpg', 'shuffle-2/4.jpg', 'shuffle-2/5.jpg']::text[], 'new', 1, '2025-12-15'::date, false, false),
  ('specialized-shuffle-kids-hemet', 'Specialized Shuffle Kids LED Hemet', 'specialized', 'helmets', 'kids-helmets', '<p>Sleek styling, cool graphics, and youth-oriented sizing make the Shuffle Child LED helmet the perfect choice for your kids—day or night.</p>
<p>For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 5 and Older.</p>

<ul>
<li>MIPS-equipped.</li>
<li>Integrated LED tail light for increased visibility in in both bright and low-light conditions.</li>
<li>Headset SX fit system with child-oriented sizing that''s designed for an easy and accurate fit.</li>
<li>4th Dimension Cooling System to optimize ventilation.</li>
<li>In-molded shell improves strength and reduces weight.</li>
<li>Tri-Fix web splitter for improved comfort and ease of strap adjustments.</li>
<li>Reflective webbing for increased visibility in low-light conditions.</li>
<li>Stylish, youthful designs complement our bike graphics and colors.</li>
<li>Patented clip-on visor included.</li>
</ul>', array['specialized-shuffle-kids-hemet/1.jpg', 'specialized-shuffle-kids-hemet/2.jpg', 'specialized-shuffle-kids-hemet/3.jpg', 'specialized-shuffle-kids-hemet/4.webp']::text[], 'new', 1, '2021-08-19'::date, false, false),

  -- ---- helmets · mtb-helmets ----
  ('ambush-2', 'Ambush 2', 'specialized', 'helmets', 'mtb-helmets', '<p>Be so bold in the all-new Ambush 2. Fully redesigned from the buckle up with essential features for next-gen trail riding, the Ambush 2 channels ample ventilation through modern styling, with a superb fit and dialed eyewear integration. For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 5 and Older.</p>', array['ambush-2/1.jpg', 'ambush-2/2.jpg', 'ambush-2/3.jpg', 'ambush-2/4.jpg', 'ambush-2/5.jpg']::text[], 'new', 2, '2024-05-23'::date, false, false),
  ('ambush-3', 'Ambush 3', 'specialized', 'helmets', 'mtb-helmets', '<p>With the AirCage technology integrated into Ambush 3 along with our 4D Cooling system, Ambush 3 is our most ventilated trail helmet. Its compact profile, Mips® Air Node Pro system integration, and BOA® Fit System featuring FS1 deliver confidence and comfort on long rides. Add integrated eyewear storage, an adjustable 4-way breakaway visor, and a FIDLOCK magnetic buckle, you get a cooler, cleaner, more confident trail experience.</p>', array['ambush-3/1.webp', 'ambush-3/2.webp', 'ambush-3/3.webp', 'ambush-3/4.webp', 'ambush-3/5.webp']::text[], 'new', 4, '2026-04-21'::date, false, false),
  ('camber-1', 'Camber', 'specialized', 'helmets', 'mtb-helmets', '<p>Riding is for everyone, so we created the Camber to provide a dialed fit for rippers of all sizes, from kids on up. The Camber comes equipped with all the comfort, style, and ventilation to make every ride a joyride. For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 5 and Older.</p>', array['camber-1/1.jpg', 'camber-1/2.jpg', 'camber-1/3.jpg', 'camber-1/4.jpg', 'camber-1/5.jpg']::text[], 'new', 2, '2025-04-15'::date, false, false),
  ('dissident-3', 'Dissident 2', 'specialized', 'helmets', 'mtb-helmets', '<p>For Dissident 2, we collaborated with powerhouse athletes, Loïc Bruni and Finn Iles, to design a helmet that would meet the highest demands of downhill mountain bike racing, in terms of confidence, a modern-styled fit, and breathability. With five strategically placed EPS foam inserts, we’re able to tune for higher and lower density foam based on where it is being configured inside the helmet—allowing us to maintain a light weight and still manage energy. The use of a softer foam density allows more energy to be absorbed in an impact, transferring less to the rider. Dissident 2 also provides added confidence through its Mips Evolve Solution—that helps to redirect rotational movement away from the head. In this Evolve Solution, we utilized fabric pocket attachments inside, reducing creakiness. Remaining cool is more than a state of mind, and it’s hard to keep your composure when things get hot—specially when your head feels like its in a sauna. That’s why instead of focusing on more vents, we focused on better vents. Built from the inside out, the Dissident 2 ventilation system features a hood scoop to channel a flow of cool air in, and purpose-placed vents that direct the warm air out—letting your head stay cool and comfortable in any situation. Keeping this helmet light was of high importance. In a race context, feeling light and mobile leads to faster reactions, and reduced fatigue between the tape. With the EPS foam insert construction, the helmet remains very light while still offering big protection. While we can’t speculate on everything that was going through Finn Iles’ head during his 2022 winning run at Mont-Sainte-Anne—we know what he wasn’t thinking about… Whether you’re taking the stage to drop in on your first winning World Cup run, or chasing your own championship on the local enduro series, Dissident 2 has you covered. For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 5 and Older.</p>', array['dissident-3/1.jpg', 'dissident-3/2.jpg', 'dissident-3/3.jpg', 'dissident-3/4.jpg', 'dissident-3/5.jpg']::text[], 'new', 0, '2025-04-15'::date, false, false),
  ('fizik-kassis-helmet-dark-navy', 'Fizik Kassis Helmet Dark Navy', 'fizik', 'helmets', 'mtb-helmets', '<p>Kassis is a lightweight, well-ventilated, and robust MTB and trail-riding helmet, featuring extended coverage, the latest MIPS Air Node system, and integrated rear light to prioritize rider safety alongside a fully adjustable fit more maximum comfort.</p><p><br></p><p>EXTENDED COVERAGE &amp; COMPACT DESIGN</p><p>Provides maximum protection with a lightweight, durable construction perfect for off-road riding.</p><p><br></p><p>MIPS AIR NODE SYSTEM</p><p>Integrated low-friction layer mitigates rotational forces during impacts, offering advanced protection.</p><p><br></p><p>ADJUSTABLE PEAK VISOR &amp; SUNGLASSES STORAGE</p><p>Breakaway visor for sun, mud, and branch protection, plus secure storage for eyewear when not in use.</p><p>Kassis is a robust half-shell helmet designed for the challenges of off-road and trail riding. Built for extended coverage and enhanced comfort, Kassis is ideal for mountain biking and adventure riding, offering a perfect balance of protection and ventilation.</p><p><br></p><p>Full coverage, tough construction</p><p>Kassis provides superior protection with its solid construction and extended coverage areas, ensuring that riders are well protected in demanding off-road conditions. The compact design keeps the helmet lightweight and agile while offering maximum protection.</p><p><br></p><p>Adjustable visor &amp; sunglass storage</p><p>The breakaway, adjustable peak visor shields against mud, sun glare, and obstacles like branches. For added convenience, Kassis also includes secure glasses storage integrated into the rear vents, keeping your eyewear stable and easily accessible when not in use.</p><p><br></p><p>Off-road-ready protection</p><p>Kassis features the latest MIPS Air Node system, integrated into the padding to minimize rotational forces during impact. The crossbridge element within the EPS foam efficiently distributes impact forces across the helmet’s structure, contributing to full-coverage safety. Certified to both EU and CPSC safety standards, Kassis offers advanced protection for any off-road challenge.</p><p><br></p><p>Dialed-in Fit</p><p>Kudo’s fit system offers advanced adjustability with a micrometric dial at the occipital stabilizer, allowing for tilt adjustments for a personalized fit and eyewear compatibility. The retention system includes a bespoke crown adjustment feature, enabling riders to finetune the fit to the exact shape of their head. Lightweight ripstop webbing around the ears adds to adjustability and comfort.</p><p><br></p><p>Integrated visibility</p><p>Kassis incorporates a removable passive reflector for increased visibility on the road as well as an optional USB-rechargeable LED tail-light. The tail-light fits into the same port and offers multiple lighting modes for both day and night use, further enhancing rider safety.</p>', array['fizik-kassis-helmet-dark-navy/1.webp', 'fizik-kassis-helmet-dark-navy/2.webp', 'fizik-kassis-helmet-dark-navy/3.webp', 'fizik-kassis-helmet-dark-navy/4.webp', 'fizik-kassis-helmet-dark-navy/5.webp']::text[], 'new', 3, '2026-06-26'::date, false, false),
  ('gambit-1', 'Gambit', 'specialized', 'helmets', 'mtb-helmets', '<p>Redefine Your Comfort Zone. To make a DH-certified full face with the ventilation and fit of a half shell, our development team took a fully integrated approach when creating the Gambit. Every component was engineered utilizing a comprehensive approach resulting in truly breakthrough performance where the Gambit delivers more than the sum of its parts. For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 5 and Older.</p>', array['gambit-1/1.jpg', 'gambit-1/2.jpg', 'gambit-1/3.jpg', 'gambit-1/4.jpg', 'gambit-1/5.jpg']::text[], 'new', 4, '2025-04-15'::date, false, false),
  ('giro-coaltion-spherical-full-face', 'Giro Coalition Spherical Full Face', 'giro', 'helmets', 'mtb-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO COALITION SPHERICAL FULL FACE HELMET</strong></p>

 <p>The lightweight Giro Coalition™ Spherical combines Spherical Technology™ powered by Mips® and Progressive Layering featuring both EPP and EPS foam, with best-in-class ventilation and the added protection of our innovative Halo System chinbar.</p>

 <p><strong>BIG TRAIL PROTECTION – ALL DAY COMFORT</strong></p>

 <p>Only Giro could design an impressively lightweight full-face helmet that still provides heavyweight protection. Just 800 grams in M/L, this NTA-certified MTB helmet still packs the punch of Spherical Technology™ powered by Mips® while Progressive Layering with EPP and EPS foam optimizes management of both high-speed and low-speed impacts. Coalition Spherical delivers best-in-class cooling power by pairing massive front intake ports with efficient rear exhaust vents via deep internal channeling. Coalition’s most impressive innovation lies hidden inside: the Halo System combines a chinbar with Pebax® (a material that is engineered to provide the perfect range of flex and rigidity) and elastomeric bushings that are integrated into the EPS to absorb and dissipate kinetic forces. The result is a helmet that exceeds standard chinbar deflection certification testing by almost 2x. Comfort is maximized with the DryCore™ sweat management brow pad, IONIC+™ treatments to control odor, and two sets of removable cheek pads to help fine-tune fit. The Coalition Spherical sets a new benchmark for lightweight full-face protection.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Construction</strong></th>
 <td>Polycarbonate shell with eps liner</td>
 </tr>
 <tr>
 <th><strong>Ventilation</strong></th>
 <td>23 vents with internal channeling</td>
 </tr>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Comfort liner, 25mm &amp; 30mm cheek pads</td>
 </tr>
 <tr>
 <th><strong>Product Weight</strong></th>
 <td>800g (Medium)</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>CERTIFICATION</strong></p>

 <ul>
 <li>CPSC</li>
 <li>NTA</li>
 <li>ASTM-1952-DH</li>
 <li>ASTM-2032-BMX</li>
 <li>EU: CE EN1078</li>
 </ul>

 <p><strong>SUPER FIT™ SIZES</strong></p>

 <ul>
 <li>Small: 51-55cm</li>
 <li>Medium: 55-59cm</li>
 <li>Large: 59-63cm</li>
 </ul>

 

 

 
 </td>
 </tr>
	</tbody>
</table>', array['giro-coaltion-spherical-full-face/1.jpg', 'giro-coaltion-spherical-full-face/2.jpg', 'giro-coaltion-spherical-full-face/3.jpg', 'giro-coaltion-spherical-full-face/4.jpg', 'giro-coaltion-spherical-full-face/5.jpg']::text[], 'new', 8, '2026-08-10'::date, false, false),
  ('giro-fixture-mips-ii', 'Giro Fixture MIPS II', 'giro', 'helmets', 'mtb-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO FIXTURE MIPS II HELMETS</strong></p>

 <p>Top level mountain biking styling at a value price with all the features needed to conquer fire road adventures and swooping singletrack trails.</p>

 <p><strong>PREMIUM STYLE FOR RECREATIONAL MTB</strong></p>

 <p>How do you improve on the #1, top-selling helmet on Earth? Carefully, and with meticulous attention to detail. This updated helmet boasts a revised silhouette, redesigned integration of the Mips® Brain Protection System, and improved cooling power. Whether you''re headed for off-road adventure or just a relaxing spin, the Fixture™ Mips II offers the right combination of value, performance, and classic design that can''t be beat. With a strong and striking style, quick-dry padding, a simple and durable Roc Loc® Sport fit system, and reflective rear decals, every rider demand has been addressed. After all these updates and improvements, you''d be forgiven for thinking we doubled the price of this second-generation Fixture, but the Fixture Mips II retains its position as the value leader.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Construction</strong></th>
 <td>In Mold Construction</td>
 </tr>
 <tr>
 <th><strong>Visor </strong></th>
 <td>Removable Visor</td>
 </tr>
 <tr>
 <th><strong>Ventilation</strong></th>
 <td>Deep Internal Channeling</td>
 </tr>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc Sport MIPS</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>SIZES:</strong></p>

 <ul>
 <li>(UA) Universal Adult - 54 - 61cm</li>
 <li>(UXL) Universal XL - 58 - 65cm</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['giro-fixture-mips-ii/1.jpg', 'giro-fixture-mips-ii/2.jpg', 'giro-fixture-mips-ii/3.jpg', 'giro-fixture-mips-ii/4.jpg', 'giro-fixture-mips-ii/5.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('giro-fixture-mips-ii-womens', 'Giro Fixture MIPS II Women''s', 'giro', 'helmets', 'mtb-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO FIXTURE MIPS II WOMEN''S HELMET</strong></p>

 <p>Top level mountain biking styling at a value price with all the features needed to conquer fire road adventures and swooping singletrack trails.</p>

 <p><strong>PREMIUM STYLE FOR RECREATIONAL MTB</strong></p>

 <p>How do you improve on the #1, top-selling helmet on Earth? Carefully, and with meticulous attention to detail. This updated helmet boasts a revised silhouette, redesigned integration of the Mips® Brain Protection System, and improved cooling power. Whether you''re headed for off-road adventure or just a relaxing spin, the Fixture™ Mips II offers the right combination of value, performance, and classic design that can''t be beat. With a strong and striking style, quick-dry padding, a simple and durable Roc Loc® Sport fit system, and reflective rear decals, every rider demand has been addressed. After all these updates and improvements, you''d be forgiven for thinking we doubled the price of this second-generation Fixture, but the Fixture Mips II retains its position as the value leader.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Construction</strong></th>
 <td>In Mold Construction</td>
 </tr>
 <tr>
 <th><strong>Visor</strong></th>
 <td>Removable Visor</td>
 </tr>
 <tr>
 <th><strong>Ventilation</strong></th>
 <td>Deep Internal Channeling</td>
 </tr>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc Internal Channeling</td>
 </tr>
 <tr>
 <th><strong>Size</strong></th>
 <td>Universal Womens 50cm - 57cm</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 
 </td>
 </tr>
	</tbody>
</table>', array['giro-fixture-mips-ii-womens/1.jpg', 'giro-fixture-mips-ii-womens/2.jpg', 'giro-fixture-mips-ii-womens/3.jpg', 'giro-fixture-mips-ii-womens/4.jpg', 'giro-fixture-mips-ii-womens/5.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('giro-insurgent-spherical-full-face', 'Giro Insurgent Spherical Full Face', 'giro', 'helmets', 'mtb-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO INSURGENT SPHERICAL FULL FACE HELMET</strong></p>

 <p>The Giro Insurgent™ Spherical delivers the protection and comfort that top gravity riders from Rampage to EWS demand, with the ball-and-socket design of Spherical Technology™ paired with best-in-class cooling power.</p>

 <p><strong>Confidence to commit</strong></p>

 <p>From the Enduro World Series to Red Bull Rampage, top riders demand the Giro Insurgent™ Spherical and the confidence it delivers. Our engineers maximized the intake points for cool, fresh air, resulting in cooling power 50% more efficient than the Disciple™ Mips®. A lightweight, soft-touch, and absorbent pad set includes two different cheek pads with each of the three sizes, allowing for a customizable fit, which are secured via a directional snap system allowing for easy removal in case of a crash. At 1,040 grams in size M/L, the Insurgent is 200 grams lighter than the Disciple Mips despite additional features including the advanced protection performance of Spherical Technology™. Insurgent Spherical utilizes a pair of different density EPP and EPS foam layers that work like a ball and socket to redirect impact energy in a crash. Additional features include a patent-pending Flex Gasket along the lower edge of the helmet, designed to reduce the role a helmet can play in certain collarbone impacts, tool-free breakaway visor bolts with integrated Allen key receiver for easy removal, and a central visor bolt hole, which does double-duty as the ideal mount for P.O.V. action cameras.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc Air DH</td>
 </tr>
 <tr>
 <th><strong>Product Weight</strong></th>
 <td>1040g (Medium)</td>
 </tr>
 <tr>
 <th><strong>Visor</strong></th>
 <td>adjustable moto style screw in visor</td>
 </tr>
 <tr>
 <th><strong>Ventilation</strong></th>
 <td>20 Vents with internal channeling</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>CERTIFICATION</strong></p>

 <ul>
 <li>Complies with the US CPSC Safety Standard for Bicycle Helmet for Persons Age 5 and Older</li>
 <li>ASTM-1952-DH</li>
 <li>ASTM-2032-BMX</li>
 <li>EU: CE EN1078</li>
 <li>AS/NZS</li>
 </ul>

 <p><strong>HIGHLIGHTS</strong></p>

 <ul>
 <li>Patent-pending Flex Gasket</li>
 <li>Two sets of cheek pads for variable thickness adjustability</li>
 <li>Directional snap system for removable cheek pads</li>
 <li>25mm webbing with D-Ring buckle</li>
 <li>Ionic+™ anti-microbial padding</li>
 </ul>

 <p><strong>SUPER FIT™ SIZES</strong></p>

 <ul>
 <li>XSmall / Small 20-21.75” / 51-55cm</li>
 <li>Medium / Large 21.75-23.25” / 55-59cm</li>
 <li>XLarge / XXLarge 23.25-24.75” / 59-63cm</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['giro-insurgent-spherical-full-face/1.jpg', 'giro-insurgent-spherical-full-face/2.jpg', 'giro-insurgent-spherical-full-face/3.jpg', 'giro-insurgent-spherical-full-face/4.jpg', 'giro-insurgent-spherical-full-face/5.jpg']::text[], 'new', 6, '2026-08-10'::date, false, false),
  ('giro-montaro-mips-iii', 'Giro Montaro Mips III', 'giro', 'helmets', 'mtb-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO MONTARO MIPS III</strong></p>

 <p><strong>Aggressive Trail Protection</strong></p>

 <p>The Montaro Mips III is the trail helmet re-imagined. Montaro Mips III is packed with features trailriders demand: Mips Evolve Core, 2-position visor with one-hand adjustment, FIDLOCK magneticbuckle, sunglasses storage front and rear plus seamless goggle integration, over-sized ventsand deep internal channeling to maximize ventilation. Certified to meet CPSC / CE standards forbike helmet safety, Montaro Mips III is our first e-bike NTA-certified open face MTB helmet. Stayfocused on the trail — let Montaro Mips III handle the rest.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Elevated safety with Mips®Evolve Core</li>
 <li>Roc Loc®Trail delivers micro-adjustable, precision fit</li>
 <li>2-position one-hand adjustable visor</li>
 <li>Integrated sunglasses holders front and rear</li>
 <li>Ionic+®anti-microbial moisture-wicking padding</li>
 <li>FIDLOCK magnetic buckle</li>
 <li>Certified CE and e-bike standard NTA 8776</li>
 </ul>

 <p><strong>SIZES:</strong></p>

 <ul>
 <li>S 52-55.5cm</li>
 <li>M 55.5-59cm</li>
 <li>L 59-62.5cm</li>
 </ul>

 <p><strong>Certification</strong></p>

 <ul>
 <li>E.U.: CE EN1078</li>
 <li>NTA 8776</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['giro-montaro-mips-iii/1.jpg', 'giro-montaro-mips-iii/2.jpg', 'giro-montaro-mips-iii/3.jpg', 'giro-montaro-mips-iii/4.jpg', 'giro-montaro-mips-iii/5.jpg']::text[], 'new', 11, '2026-08-10'::date, false, false),
  ('lazer-compact-unisize-helmet', 'Lazer Compact Unisize Helmet', 'lazer', 'helmets', 'mtb-helmets', '<p>Comfort, safety and style</p>
<p>The Compact helmet provides comfort, safety and style, in an attractive and low-priced package.</p>
<ul>
<li>
Safety first - Compatible with rear LED</li>
<li>
Fits anyone - One size fits all with adjustability from the Turnfit® Plus system</li>
<li>
Well ventilated - 20 ventilation holes for perfect airflow in the helmet</li>
</ul>

<ul></ul>

<h3>SPECIFICATIONS</h3>
<table>
<tbody>
<tr>
<td>fit system</td>
<td>TS+ Turnfit + System</td>
</tr>
<tr>
<td>construction</td>
<td>In-Mold</td>
</tr>
<tr>
<td>ventilation</td>
<td>20 vents</td>
</tr>
<tr>
<td>weight</td>
<td>325g</td>
</tr>
<tr>
<td>certification</td>
<td>CE - CPSC - AS</td>
</tr>
<tr>
<td>sizes</td>
<td>Unisize (54-61)</td>
</tr>
</tbody>
</table>', array['lazer-compact-unisize-helmet/1.webp', 'lazer-compact-unisize-helmet/2.webp', 'lazer-compact-unisize-helmet/3.webp', 'lazer-compact-unisize-helmet/4.webp', 'lazer-compact-unisize-helmet/5.webp']::text[], 'new', 3, '2025-08-15'::date, false, false),
  ('lazer-coyote-helmet', 'Lazer Coyote Helmet', 'lazer', 'helmets', 'mtb-helmets', '<p><b>Style, performance, ventilation, comfort and protection all in one clean and practical MTB lid</b></p>
<p>Drop into technical terrain with confidence knowing you''re wearing a Virginia Tech 5-star safety-rated lid. The trail-ready Coyote KinetiCore features an integrated visor that can quickly be pushed up or down to keep sun, rain, and low-hanging branches out of your face, while the no-slip grip on the shell secures your goggles in place. Adjustable TurnSys technology offers vertical adjustability and a tailored fit with the twist of a dial, while the magnetic buckle makes it easy to strap in and out with one hand and gloves on so you never miss a beat. For those rides where you’re squeezing out every last minute of daylight, LED light compatibility via the velcro mount ensures you’re seen.</p>
<ul>
<li>
<b>Easy vertical adjustability</b> - The Lazer Advanced TurnSys system provides a tailored fit that''s easy to adjust on the move with a simple turn of the dial.
</li>
<li>
<b>LED light compatibility </b>- Increase safety and visibility by attaching the Universal Lazer LED at the rear of the helmet via the Velcro Mount.
</li>
<li>
<b>Easy to operate magnetic buckle</b> - No more fumbling with your helmet buckle while wearing gloves - Lazer''s magnetic buckle can be quickly undone with one hand with gloves on.
</li>
<li>
<b>Eyewear friendly</b> - Recesses in helmet shape removes the pressure on inside of head caused by the arms of sunglasses.
</li>
<li>
<b>Secure goggle position</b> - Goggle grip reduces risk of goggle slip and blocking visibility.
</li>
<li>
<b>Better visibility on the trail</b> - Visor is easy to move up and down while riding for improved visibility and to make space for your goggles.
</li>
<li>
<b>Lightweight</b> - 8% lighter than Lazer Coyote MIPS M CE.
</li>
<li>
<b>Reduced plastics</b> - 30g less plastics used than in Lazer Coyote MIPS M CE.
</li>
<li>
<b>Winter kit compatibility</b> - Keep warm during colder days with the Winter Kit for the Lazer Advanced TurnSys system. It allows you to use your helmet all year round, with an easy adjustment. Compatible for S, M &amp; L sizes.
</li>
</ul>

<h3>SPECIFICATIONS</h3>
<table>
<tbody>
<tr>
<td>Fit System</td>
<td>TurnSys System</td>
</tr>
<tr>
<td>Sizing (Cm)</td>
<td>S - 52-56 / M - 55-59 / L - 58-61</td>
</tr>
<tr>
<td>Weight (G)</td>
<td>340 (Size Medium CE)</td>
</tr>
<tr>
<td>Cooling Efficiency</td>
<td>95,6% (100% = no helmet)</td>
</tr>
</tbody>
</table>', array['lazer-coyote-helmet/1.jpg', 'lazer-coyote-helmet/2.png', 'lazer-coyote-helmet/3.png', 'lazer-coyote-helmet/4.png', 'lazer-coyote-helmet/5.png']::text[], 'new', 11, '2025-08-15'::date, false, false),
  ('lazer-jackal-helmet', 'Lazer Jackal Helmet', 'lazer', 'helmets', 'mtb-helmets', '<p><b>Embrace the trails</b></p>
<p>The Jackal KinetiCore gives you the confidence to tackle technical MTB trails without fear, so you can push yourself harder and test your riding limits. Supreme ventilation, improved protection and advanced comfort, plus MTB-friendly features such as brow vents and an accessory mount, make this a trail rider’s dream lid.</p>
<p>Whether hitting your favorite bike park or shredding your local trails, you want to be confident that you’re securely protected. Thanks to the new exclusive KinetiCore protection tech, you can take on any trail knowing you’re wearing a Virginia Tech 5-star safety-rated lid. The intelligent TurnSys system means you can adjust your helmet’s fit with a quick turn of the dial and operate the handy magnetic buckle using one gloved hand. As you embark on challenging climbs, your head will stay cool thanks to the Jackal KinetiCore ventilation system. The brow vents increase ventilation and decrease the chance of your eyewear steaming up, and eyewear-friendly recesses mean you won’t feel pressure from your sunglasses’ arms. The Jackal KinetiCore comes with an accessory mount that houses both action cameras and lights so you can capture your most gnarly trail-riding moments.</p>
<ul>
<li>Be the star - The Jackal KinetiCore helmet includes an action camera mount to capture your ride and create memories</li>
<li>Adjustability - The visor is easy to move up and down while riding for improved visibility and to make space for your goggles or eyewear</li>
<li>Impact protection - KinetiCore''s Controlled Crumple Zones take the force of the blow</li>
<li>Comfort and ease - The TurnSys fit system provides a tailored fit with vertical adjustment that''s easy to adjust on the move with a simple turn of the dial</li>
</ul>

<h3>SPECIFICATIONS</h3>
<table>
<tbody>
<tr>
<td>Fit System</td>
<td>TurnSys® system</td>
</tr>
<tr>
<td>Sizes</td>
<td>S - 52-56cm / M - 55-59cm / L - 58-61cm / XL - 61-64cm</td>
</tr>
<tr>
<td>Weight</td>
<td>340g (Size Medium CE)</td>
</tr>
<tr>
<td>Led</td>
<td>Universal LED light compatible</td>
</tr>
</tbody>
</table>', array['lazer-jackal-helmet/1.jpg', 'lazer-jackal-helmet/2.png', 'lazer-jackal-helmet/3.png', 'lazer-jackal-helmet/4.png', 'lazer-jackal-helmet/5.png']::text[], 'new', 3, '2025-08-15'::date, false, false),
  ('search', 'Search', 'specialized', 'helmets', 'mtb-helmets', '<p>Introducing the all-new Search helmet—designed for riders who seek adventure on two wheels. With the biggest vents in its class for maximum ventilation, Search is like having an air conditioner on your head. Taking high-performance features and cooling beyond racing, Search combines the best of both worlds—S-Works-derived innovation and performance with a modern, clean design. Whether gearing up for a gravel ride, lining up for a local event, or your morning commute, the Search helmet keeps you cool no matter the destination. All adventures tend to take us a little out of our comfort zone, so when dirt road descents get a little dicey, Search has got you covered with MIPS Evolve Core Solution and a 5-Star Virginia Tech® helmet rating from the internationally renowned Virginia Polytechnic Institute and State University. Combining confidence-inspiring features, functionality, and S-Works-derived ventilation, the Search epitomizes all-road adventure helmets. Sunglass Storage: The Search helmet features innovative sunglass storage with hidden rubber flaps that maintain a secure, rattle-free fit when keeping riders’ glasses safely stored on long climbs, low light descents, and moments of rest. Riders can easily insert and remove their glasses, even when in the saddle. Our sunglass storage solution also keeps the space between the helmet and your head clear - eliminating discomfort. Ventilation: Pulling inspiration from the S-Works Prevail 3, the Search features a similar ventilation system with huge rear exhaust ports—helping expel hot air pulled in through the front end, keeping a constant flow of cool air within the helmet. Fit System: The Search helmet shares the same premium FS3 Fit System and Occipital base adjustment with our S-Works Evade 3 and S-Works Prevail 3—enabling riders to personalize the fit for added comfort through tuning the helmet angle to ensure that the helmet and eyewear stay perfectly synched.</p>', array['search/1.jpg', 'search/2.jpg', 'search/3.jpg', 'search/4.jpg', 'search/5.jpg']::text[], 'new', 9, '2024-05-23'::date, false, false),
  ('tactic-1', 'Tactic', 'specialized', 'helmets', 'mtb-helmets', '<p>It’s All in Your Tactic. With an unprecedented combination of fit, ventilation, and confidence for trail and enduro riding, the Tactic helmet delivers exceptional coverage and seamless integration with goggles or glasses. For helmets sold in the U.S. and Canada: Complies with U.S. CPSC Safety Standard for Bicycle Helmets for Persons Age 5 and Older.</p>', array['tactic-1/1.jpg', 'tactic-1/2.jpg', 'tactic-1/3.jpg', 'tactic-1/4.jpg', 'tactic-1/5.jpg']::text[], 'new', 6, '2024-06-17'::date, false, false),

  -- ---- helmets · road-helmets ----
  ('fizik-kudo-helmet-black', 'Fizik Kudo Helmet Black', 'fizik', 'helmets', 'road-helmets', '<p>Kudo is a versatile, comfortable, and ventilated cycling helmet for road, gravel, and XC, designed with the latest MIPS Air Node system, integrated rear light, and fully adjustable fit for a more personalized approach to rider protection.</p><p><br></p><p>SLEEK, ROUND PROFILE WITH VENTS</p><p>Reduces wind resistance and maximizes cooling for optimal performance during intense efforts.</p><p><br></p><p>MIPS AIR NODE SYSTEM</p><p>Integrated safety layer dissipates rotational forces in crashes, offering advanced protection.</p><p><br></p><p>ADJUSTABLE FIT SYSTEM</p><p>Micrometric dial and crown adjustment provide a personalized, secure fit for all head shapes.</p><p>Kudo is a high-performance, half-shell cycling helmet designed for road, gravel, and crosscountry MTB riding. Prioritizing ventilation and weight reduction, Kudo is built for intense efforts on hot days, long climbs, and high-output rides while adhering to the highest safety standards.</p><p><br></p><p>Cool, Uncompromising Ventilation</p><p>Kudo’s sleek, round profile minimizes volume, reducing wind resistance and providing optimal thermoregulation. Integrated vents ensure superior cooling, making it ideal for maintaining performance during tough efforts. Additionally, Kudo is certified to both EU and CPSC standards, providing top-tier impact protection. Top side vents securely hold sunglasses when not in use.</p><p><br></p><p>Shaped for safety</p><p>The helmet’s smooth, rounded shape is crafted to reduce surface grip during impact, potentially lessening the force''s intensity in the event of a crash. A crossbridge element embedded into the EPS foam further enhances impact protection by efficiently distributing forces across the helmet, contributing to a full and comprehensive approach to safety.</p><p><br></p><p>Mips Air Node System</p><p>Kudo features the latest MIPS Air Node safety system, seamlessly integrated into the padding. This ultralight, low-friction layer dissipates rotational forces during a crash while remaining low-profile and easily removable for cleaning.</p><p><br></p><p>Dial Fit</p><p>Kudo’s fit system offers advanced adjustability with a micrometric dial at the occipital stabilizer, allowing for tilt adjustments for a personalized fit and eyewear compatibility.</p><p><br></p><p>Crown Fit</p><p>The retention system includes a bespoke crown adjustment feature, enabling riders to finetune the fit to the exact shape of their head. Lightweight ripstop webbing around the ears adds to adjustability and comfort.</p><p><br></p><p>Integrated Visibility</p><p>For added safety, Kudo integrates a removable passive reflector at the rear to enhance visibility. A USB-rechargeable LED tail-light, fitted through the same port, offers multiple lighting modes for day and night use.</p>', array['fizik-kudo-helmet-black/1.webp', 'fizik-kudo-helmet-black/2.webp', 'fizik-kudo-helmet-black/3.webp', 'fizik-kudo-helmet-black/4.webp', 'fizik-kudo-helmet-black/5.webp']::text[], 'new', 3, '2026-06-26'::date, false, false),
  ('fizik-kudo-helmet-white', 'Fizik Kudo Helmet White', 'fizik', 'helmets', 'road-helmets', '<p>Kudo is a versatile, comfortable, and ventilated cycling helmet for road, gravel, and XC, designed with the latest MIPS Air Node system, integrated rear light, and fully adjustable fit for a more personalized approach to rider protection.</p><p><br></p><p>SLEEK, ROUND PROFILE WITH VENTS</p><p>Reduces wind resistance and maximizes cooling for optimal performance during intense efforts.</p><p><br></p><p>MIPS AIR NODE SYSTEM</p><p>Integrated safety layer dissipates rotational forces in crashes, offering advanced protection.</p><p><br></p><p>ADJUSTABLE FIT SYSTEM</p><p>Micrometric dial and crown adjustment provide a personalized, secure fit for all head shapes.</p><p>Kudo is a high-performance, half-shell cycling helmet designed for road, gravel, and crosscountry MTB riding. Prioritizing ventilation and weight reduction, Kudo is built for intense efforts on hot days, long climbs, and high-output rides while adhering to the highest safety standards.</p><p><br></p><p>Cool, Uncompromising Ventilation</p><p>Kudo’s sleek, round profile minimizes volume, reducing wind resistance and providing optimal thermoregulation. Integrated vents ensure superior cooling, making it ideal for maintaining performance during tough efforts. Additionally, Kudo is certified to both EU and CPSC standards, providing top-tier impact protection. Top side vents securely hold sunglasses when not in use.</p><p><br></p><p>Shaped for safety</p><p>The helmet’s smooth, rounded shape is crafted to reduce surface grip during impact, potentially lessening the force''s intensity in the event of a crash. A crossbridge element embedded into the EPS foam further enhances impact protection by efficiently distributing forces across the helmet, contributing to a full and comprehensive approach to safety.</p><p><br></p><p>Mips Air Node System</p><p>Kudo features the latest MIPS Air Node safety system, seamlessly integrated into the padding. This ultralight, low-friction layer dissipates rotational forces during a crash while remaining low-profile and easily removable for cleaning.</p><p><br></p><p>Dial Fit</p><p>Kudo’s fit system offers advanced adjustability with a micrometric dial at the occipital stabilizer, allowing for tilt adjustments for a personalized fit and eyewear compatibility.</p><p><br></p><p>Crown Fit</p><p>The retention system includes a bespoke crown adjustment feature, enabling riders to finetune the fit to the exact shape of their head. Lightweight ripstop webbing around the ears adds to adjustability and comfort.</p><p><br></p><p>Integrated Visibility</p><p>For added safety, Kudo integrates a removable passive reflector at the rear to enhance visibility. A USB-rechargeable LED tail-light, fitted through the same port, offers multiple lighting modes for day and night use.</p>', array['fizik-kudo-helmet-white/1.webp', 'fizik-kudo-helmet-white/2.webp', 'fizik-kudo-helmet-white/3.webp', 'fizik-kudo-helmet-white/4.webp', 'fizik-kudo-helmet-white/5.webp']::text[], 'new', 3, '2026-06-26'::date, false, false),
  ('fizik-kyros-helmet-white', 'Fizik Kyros Helmet White', 'fizik', 'helmets', 'road-helmets', '<p>Kyros is a versatile and ventilated cycling helmet for road, gravel, andXC riding. Balancing performance with all-round comfort, it features the MIPS Evolve Core system and a fully adjustable fit for personalized protection.</p><p><br></p><p>VERSATILE PROTECTION:</p><p>Ventilated and comfortable protection for road, gravel, and XC riding.</p><p><br></p><p>MIPS EVOLVE CORE SYSTEM:</p><p>Integrated safety layer dissipates rotational forces in crashes, offering advanced protection.</p><p><br></p><p>ADJUSTABLE FIT SYSTEM:</p><p>Micrometric dial and crown adjustment provide a personalized, secure fit for all head shapes.</p><p><br></p><p>Kyros is a versatile addition to our growing Helmet Collection. Balancing performance with all-round comfort and protection, Kyros is ideal for road, gravel, and crosscountry MTB outings. Wide air-exhaust ventilation helps keep your head cooler in hot conditions while the MIPS Evolve Core system adds an extra layer of safety. Compatible with fizik integrated rear light (sold separately).</p><p><br></p><p>VERSATILITY MEETS PROTECTION</p><p>Kyros is a versatile and trusted companion in our growing helmet collection—designed for riders who move seamlessly between tarmac, gravel paths, and forest trails. Whether you''re grinding through dusty gravel on a bikepacking adventure or weaving through tight singletrack on your XC loop, Kyros balances high performance features with all-day comfort and reliable protection.</p><p><br></p><p>SLEEK PERFORMANCE, PROVEN PROTECTION</p><p>With a sleek, rounded design that reduces bulk, this helmet offers optimal thermoregulation and a low overall weight. Strategically placed vents ensure superior airflow, with rear openings that help dissipate heat efficiently. Top-side vents securely hold sunglasses when not in use. Certified to both EU and CPSC standards, Kyros delivers top-tier impact protection for confident riding.</p><p><br></p><p>CROWN-FIT ADJUSTMENT</p><p>Kyros'' fit system offers advanced adjustability through a bespoke crown adjustment feature, allowing riders to finetune the helmet’s shape by positioning detachable red pins in three different settings for a personalized fit that conforms to the exact shape of the head. A micrometric dial at the occipital stabilizer enables tilt adjustment, enhancing both comfort and eyewear compatibility. Lightweight webbing around the ears further improves adjustability and all-day comfort.</p>', array['fizik-kyros-helmet-white/1.webp', 'fizik-kyros-helmet-white/2.webp', 'fizik-kyros-helmet-white/3.webp', 'fizik-kyros-helmet-white/4.webp', 'fizik-kyros-helmet-white/5.webp']::text[], 'new', 2, '2026-06-26'::date, false, false),
  ('fizik-light-rear-helmet', 'Fizik Light Rear Helmet', 'fizik', 'helmets', 'road-helmets', '', array['fizik-light-rear-helmet/1.webp', 'fizik-light-rear-helmet/2.webp', 'fizik-light-rear-helmet/3.webp', 'fizik-light-rear-helmet/4.webp', 'fizik-light-rear-helmet/5.webp']::text[], 'new', 1, '2026-06-26'::date, false, false),
  ('giro-aerohead-mips', 'Giro Aerohead MIPS', 'giro', 'helmets', 'road-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO AEROHEAD MIPS HELMETS</strong></p>

 <p>The Aerohead™ Mips® helmet was designed in the wind tunnel, tested on the track, and has been proven with record-breaking times at the Tour de France and Ironman World Championships.</p>

 <p>The Aerohead Mips® is ideal for triathletes and time-trialists who need the optimal balance of advanced aerodynamics and cooling power. It features an aerodynamically efficient profile, constructed with a lightweight polycarbonate shell. The Wind Tunnel™ ventilation and internal channeling keep you cool when the competition heats up. The Aerohead Mips features a unique wrap-around eye shield with Optics by ZEISS® that offers an unblocked field of view and unrivaled clarity. A magnetic anchor attachment keeps the shield secure, yet it''s easy to remove and store in the "flipped up" position, making for quick transitions to the bike. It is equipped with the Mips system to redirect impact energy, which can provide more protection in certain impacts.</p>

 <p><strong>AEROHEAD HELMET POD SOLD SEPARATELY </strong></p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li><strong>MIPS </strong>MIPS-EQUIPPED - TO REDIRECT IMPACT ENERGY, PROVIDING MORE PROTECTION IN CERTAIN IMPACTS</li>
 <li><strong>SHIELD TYPE </strong>VENTED EYE SHIELD MADE BY ZEISS OPTICS, MAGNETIC LENS ANCHOR ATTACHMENT</li>
 <li><strong>CONSTRUCTION </strong>IN MOLD CONSTRUCTION</li>
 <li><strong>SHELL TYPE </strong>POLYCARBONATE SHELL</li>
 <li><strong>SPORT </strong>CYCLING</li>
 <li><strong>NUMBER OF VENTS</strong> 4</li>
 <li><strong>VENTILATION TYPE </strong>OVER-BROW VENTILATION</li>
 <li><strong>WIND TUNNEL VENTS </strong>WITH INTERNAL CHANNELING</li>
 <li><strong>GENDER </strong>UNISEX</li>
 <li><strong>FIT SYSTEM </strong>ROC LOC 5 AIR, SUPER FIT ENGINEERING</li>
 <li><strong>IMPACT LINER TYPE </strong>EPS</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['giro-aerohead-mips/1.jpg', 'giro-aerohead-mips/2.jpg', 'giro-aerohead-mips/3.jpg', 'giro-aerohead-mips/4.jpg', 'giro-aerohead-mips/5.jpg']::text[], 'new', 7, '2026-08-10'::date, false, false),
  ('giro-agilis-mips', 'Giro Agilis MIPS', 'giro', 'helmets', 'road-helmets', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>GIRO AGILIS MIPS HELMETS</strong></p>

 <p>The fit is comfortable and secure thanks to our adjustable Roc Loc 5.5 MIPS system that combines fit and positioning adjustments while integrating with MIPS technology for an added measure of protection in the event of an angled impact. The outer Hardbody shell extends to the inside of the helmet, and is molded from a tough polycarbonate that''s fused permanently to the EPS foam liner using our In-Mold process to enhance durability and ventilation without excess bulk.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Construction</strong></th>
 <td>Four piece polycarbonate shell</td>
 </tr>
 <tr>
 <th><strong>Sport</strong></th>
 <td>Cycling</td>
 </tr>
 <tr>
 <th><strong>Number of Vents</strong></th>
 <td>32</td>
 </tr>
 <tr>
 <th><strong>Ventilation Type</strong></th>
 <td>Wind Tunnel Vents</td>
 </tr>
 <tr>
 <th><strong>Gender</strong></th>
 <td>Mens</td>
 </tr>
 <tr>
 <th><strong>Fit System</strong></th>
 <td>Roc Loc 5.5 MIPS</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>SUPER FIT™ SIZES:</strong></p>

 <ul>
 <li>Small 20”–21.75” / 51–55cm</li>
 <li>Medium 21.75”–23.25” / 55–59cm</li>
 <li>Large 23.25”–24.75” / 59–63cm</li>
 <li>XLarge 24”–25.55” / 61–65cm</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>', array['giro-agilis-mips/1.jpg', 'giro-agilis-mips/2.jpg', 'giro-agilis-mips/3.jpg', 'giro-agilis-mips/4.jpg', 'giro-agilis-mips/5.jpg']::text[], 'new', 11, '2026-08-10'::date, false, false)
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
