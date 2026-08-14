-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 3 OF 10
--
-- Products 201-400 of 1423 (apparel).
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
  -- ---- apparel · gilets-vests ----
  ('spoken-castelli-pro-light-wind-vest', 'Spoken Castelli Pro Light Wind Vest', 'mr-rider', 'apparel', 'gilets-vests', '<h3>DESCRIPTION</h3>

<p>Lightweight and packable wind shell that fits close to body with a stretch breathable back and high collar. It effectively blocks wind on the front without causing overheating.</p>
<h3><strong>PRODUCT FEATURES</strong></h3>
<ul>
<li>Impossibly light weight and compact wind vest</li>
<li>Printed woven front and shoulders with low air permeability to block wind while remaining breathable</li>
<li>Mesh back for full breathability</li>
<li>YKK. Vislon. zipper for easy opening and closing</li>
</ul>
<ul>
<li>Sizes: <strong>XXS - 5XL</strong>
</li>
<li>Weight: <strong>66g</strong>
</li>
<li>Temperature: <strong>14°C - 20°C</strong>
</li>
</ul>', array['spoken-castelli-pro-light-wind-vest/1.jpg', 'spoken-castelli-pro-light-wind-vest/2.jpg', 'spoken-castelli-pro-light-wind-vest/3.png']::text[], 'new', 5, '2025-08-01'::date, false, false),
  ('womens-prime-wind-vest', 'Women''s Prime Wind Vest', 'specialized', 'apparel', 'gilets-vests', '<p>The perfect apparel for the perfect ride, that''s what our Prime Series is all about. The best fabrics, constructions, and technologies go into these pieces, and the Women''s Prime Wind Vest is no exception. A fully windproof front fabric is paired with partial elastic at the waist and shoulders and a breathable mesh on the back to keep the chill off of your chest without overheating. Further, a VISLON® zipper that''s super easy to zip and unzip for hot climbs and cool descents. Finally; we''ve made the Prime Wind Vest as lightweight and packable as possible, ensuring it easily stows in a jersey pocket with room to spare.</p>', array['womens-prime-wind-vest/1.jpg', 'womens-prime-wind-vest/2.jpg', 'womens-prime-wind-vest/3.jpg', 'womens-prime-wind-vest/4.jpg', 'womens-prime-wind-vest/5.jpg']::text[], 'new', 4, '2024-08-06'::date, false, false),

  -- ---- apparel · gloves ----
  ('castelli-arenberg-gel-2-gloves-1', 'Castelli Arenberg Gel 2 Gloves', 'castelli', 'apparel', 'gloves', '<p>SOFTEN YOUR RIDE. Made for the rigors of the Forest of Arenberg, the toughest stretch of cobbles in Paris-Roubaix, this glove features Castelli Damping System padding to protect your hands and increase control and comfort. The micro-mesh back keeps it cool and comfortable.</p>', array['castelli-arenberg-gel-2-gloves-1/1.png', 'castelli-arenberg-gel-2-gloves-1/2.png', 'castelli-arenberg-gel-2-gloves-1/3.jpg', 'castelli-arenberg-gel-2-gloves-1/4.jpg']::text[], 'new', 2, '2025-05-20'::date, false, false),
  ('castelli-competizione-3-glove', 'Castelli Competizione 3 Glove', 'castelli', 'apparel', 'gloves', '<p>This is a raceable glove that offers excellent grip and just the right amount of padding.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 4/5</p><p>Lightness 4/5 </p><ul>
<li>Weight:51<em> g</em>
</li>
<li>Temperature:10°C - 38°C / 50°F - 100°F</li>
<li>Fit:Regular</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Synthetic palm with medium-density foam padding</p><p>Silicone grip pattern on palm</p><p>Velcro wrist closure for easy on/off</p><p>Stretch back of hand with excellent breathability</p><p>Castelli Damping System (CDS) to protect median nerve</p>', array['castelli-competizione-3-glove/1.webp', 'castelli-competizione-3-glove/2.webp']::text[], 'new', 6, '2026-05-18'::date, false, false),
  ('castelli-diluvio-c-gloves', 'Castelli Diluvio C Gloves', 'castelli', 'apparel', 'gloves', '<p>Wet-suit neoprene technology will keep your hands comfortable on wet rides. Premium neoprene with silicone grip on the palms and glued waterproof seams to add to the comfort.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>3mm neoprene insulation to keep your hands warm in wet conditions</li>
<br><li>Grip print on palm</li>
<br><li>Extended neoprene cuff to keep the wind and rain out</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>127gm</strong>
</li>
<br><li>Temperature: <strong>5°C - 16°C / 41°F - 61°F</strong>
</li>
<br>
</ul><br><p><strong>A WET SUIT FOR YOUR HANDS.</strong> We developed this glove based on gloves used for scuba diving in cold water. Just like with a wet suit, your body heats up the bit of moisture inside the glove and you stay warm. We gave grip to the palm, adjusted the fit, and chose an extremely high-quality neoprene that’s incredibly stretchy. It’s not enough for super-cold rain days, but for moderate and rainy conditions it’s ideal.</p>', array['castelli-diluvio-c-gloves/1.jpg']::text[], 'new', 0, '2021-08-22'::date, false, false),
  ('castelli-dolcissima-2-gloves-womens-1', 'Castelli Dolcissima 2 Gloves Women''s', 'castelli', 'apparel', 'gloves', '<p>The Dolcissima is our most minimalist glove, created to protect your palm on the bar or in case you should topple over. It has thinner medium-density foam to reduce bulk in the palm, while the back of the hand has been trimmed away at the wrist for minimal coverage and maximum comfort.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Castelli Damping System (CDS)</li>
<br><li>Engineered mesh back of hand for improved breathability</li>
<br><li>Easy-off pull tab</li>
<br><li>Silicone-printed palm for grip</li>
<br>
</ul><br><h3><strong>Technical features</strong></h3><br><ul>
<br><li>Insulation: <strong>1/5</strong>
</li>
<br><li>Waterproofness: <strong>1/5</strong>
</li>
<br><li>Windproofness: <strong>2/5</strong>
</li>
<br><li>Breathability: <strong>4/5</strong>
</li>
<br><li>Lightness: <strong>4/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>66 g</strong>
</li>
<br><li>Temperature: <strong>15°C - 30°C</strong>
</li>
<br>
</ul>', array['castelli-dolcissima-2-gloves-womens-1/1.jpg', 'castelli-dolcissima-2-gloves-womens-1/2.jpg']::text[], 'new', 4, '2022-06-01'::date, false, false),
  ('castelli-endurance-glove-mens', 'Castelli Endurance Glove Men''s', 'castelli', 'apparel', 'gloves', '<p>For long-distance comfort with discreet styling, with gel padding and a high-stretch back of hand.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Endurance Evolution back-of-hand fabric for stretch and secure fit</li>
<br><li>Stretch wrist closure</li>
<br><li>Soft synthetic suede palm</li>
<br><li>Gel padding with Castelli Damping System (CDS) padding at median nerve</li>
<br><li>Perfect for long-distance rides or for riders who need extra padding</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>85gm</strong>
</li>
<br><li>Temperature: <strong>15°C - 38°C / 59°F - 100°F</strong>
</li>
<br>
</ul><br><p>This glove was designed for long-distance rides, with extra padding in the palm and premium materials throughout. The palm has gel padding and a Poron insert at the median nerve, on top of an ultrasoft synthetic suede. The back of the hand uses Endurance Evolution fabric that''s robust enough to keep the glove in place, while the four-way stretch makes it comfortable on long rides. And it''s the same fabric as the Endurance Bibshort, so your long rides will even look coordinated.</p>', array['castelli-endurance-glove-mens/1.png', 'castelli-endurance-glove-mens/2.png']::text[], 'new', 2, '2022-07-06'::date, false, false),
  ('castelli-entrata-thermal-glove', 'Castelli Entrata Thermal Glove', 'castelli', 'apparel', 'gloves', '<p>The entry point to the Castelli winter glove line delivers warmth, grip, and especially comfort in a slip-on construction.</p>
<p>The Entrata Thermal Glove focuses on the essential elements of a winter cycling glove. We made the outer layer both windproof for warmth and stretchy for comfort. Then we added a layer of PrimaLoft® insulation and an inner layer of lightly brushed fleece. This construction makes the glove insanely soft inside. On the outside you have a full synthetic leather palm with a silicone grip pattern, touchscreen inserts on the index finger and thumb, and a reflective logo. With an elastic cuff at the wrist, it''s easy to slip on and off.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Windproof stretch outer layer over PrimaLoft® insulation layer</li>
<li>Full lightly brushed inner layer for next-to-skin comfort</li>
<li>Synthetic suede palm with silicone grip texture</li>
<li>Touchscreen index and thumb</li>
<li>Slip-on wrist construction</li>
<li>Weight: 116gm
</li>
<li>Temperature: 6°C - 14°C / 43°F - 57°F
</li>
</ul>', array['castelli-entrata-thermal-glove/1.png', 'castelli-entrata-thermal-glove/2.png']::text[], 'new', 6, '2025-05-20'::date, false, false),
  ('castelli-entrata-v-glove-1', 'Castelli Entrata V Glove', 'castelli', 'apparel', 'gloves', '<p>The Entrata Glove is your entry to great fit, comfort and grip in a performance cycling glove. It features moderate padding to reduce bulk in the palm.</p>
<p>The mesh back of hand and perforated premium AX Suede synthetic palm make this glove extremely comfortable. We gave it medium-density foam through the palm to satisfy riders who don''t want a bulky glove, but we kept the Castelli Damping System median nerve padding. It features a microsuede nose wipe over the thumb, and the Velcro closure makes it easy to get on and off.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Synthetic palm with medium-density foam padding</li>
<li>Microsuede nose wipe on thumb</li>
<li>Velcro closure</li>
<li>Excellent moisture management fabric on back to keep hands dry</li>
<li>Castelli Damping System (CDS) to protect median nerve</li>
<li>Weight: 65gm
</li>
<li>Temperature: 15°C - 38°C / 59°F - 100°F
</li>
</ul>', array['castelli-entrata-v-glove-1/1.png', 'castelli-entrata-v-glove-1/2.png']::text[], 'new', 2, '2025-05-20'::date, false, false),
  ('castelli-espresso-2-gloves', 'Castelli Espresso 2 Gloves', 'castelli', 'apparel', 'gloves', '<p>The ideal winter glove for most winter riding. The combination of Polartec® and PrimaLoft® insulation keeps your hands warm and protected from the elements.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 4/5</p><p>Waterproofness 4/5</p><p>Windproofness 4/5</p><p>Breathability 3/5</p><p>Lightness 3/5</p><p><br></p><ul>
<li>Weight:155<em> g</em>
</li>
<li>Temperature:3°C - 10°C / 37°F - 50°F</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Polartec® back of hand is windproof, waterproof, and highly breathable</p><p>PrimaLoft® insulation for warmth</p><p>Long YKK® zipper for easy on and off</p><p>Reflective inserts for added visibility</p><p>Touchscreen inserts at fingertips</p>', array['castelli-espresso-2-gloves/1.webp', 'castelli-espresso-2-gloves/2.webp']::text[], 'new', 5, '2026-04-20'::date, false, false),
  ('castelli-espresso-2-gloves-womens', 'Castelli Espresso 2 Gloves Women''s', 'castelli', 'apparel', 'gloves', '<p>The ideal winter glove for most winter riding. The combination of Polartec® and PrimaLoft® insulation keeps your hands warm and protected from the elements.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 4/5</p><p>Waterproofness 4/5</p><p>Windproofness 4/5</p><p>Breathability 3/5</p><p>Lightness 3/5</p><p><br></p><ul>
<li>Weight:131<em> g</em>
</li>
<li>Temperature:3°C - 10°C / 37°F - 50°F</li>
</ul><p><br></p><p>PRODUCT FEATURES </p><p>Polartec® back of hand is windproof, waterproof, and highly breathable</p><p>PrimaLoft® insulation for warmth</p><p>Long YKK® zipper for easy on and off</p><p>Reflective inserts for added visibility</p><p>Touchscreen inserts at fingertips</p>', array['castelli-espresso-2-gloves-womens/1.webp', 'castelli-espresso-2-gloves-womens/2.webp']::text[], 'new', 5, '2026-04-20'::date, false, false),
  ('castelli-estremo-winter-glove', 'Castelli Estremo Winter Glove', 'castelli', 'apparel', 'gloves', '<p>Made for very cold riding conditions, this double-lined glove extends far up the forearm for added comfort.</p>

<p>Product features</p>
<ul>
<li>Our warmest cold-weather glove</li>
<li>GORE-TEX INFINIUM™ WINDSTOPPER® fabric on hand for total wind protection</li>
<li>Fleece liner for cold protection</li>
<li>Embossed tone-on-tone scorpion logo on back</li>
<li>Silicone print on palm for a better grip</li>
<li>Cuff with Velcro closure</li>
<li>Pre-curved construction</li>
<li>Microsuede thumb panel</li>
</ul>

<p>Technical features</p>
<ul>
<li>Insulation: 5/5</li>
<li>Waterproofness: 4/5</li>
<li>Windproofness: 5/5</li>
<li>Breathability: 3/5</li>
<li>Lightness: 2/5</li>
</ul>

<ul>
<li>Weight: 179gm
</li>
</ul>
<ul>
<li>Temperature: -5°C - 5°C
</li>
<li>Fit: Tailored
</li>
</ul>', array['castelli-estremo-winter-glove/1.webp', 'castelli-estremo-winter-glove/2.webp']::text[], 'new', 1, '2025-05-20'::date, false, false),
  ('castelli-icon-race-glove', 'Castelli Icon Race Glove', 'castelli', 'apparel', 'gloves', '<p>Grip and protection in a minimalist glove for riders who don’t like gloves.</p><p>Product features</p><ul>
<li>2-layer palm for protection, with added print for grip</li>
<li>Minimal seams with lightweight fabric for exceptional comfort</li>
<li>Engineered compression overlay for fit</li>
<li>Castelli Damping System (CDS) protects median nerve</li>
<li>Weight: 63gm
</li>
<li>Temperature: 15°C - 35°C
</li>
</ul>', array['castelli-icon-race-glove/1.webp', 'castelli-icon-race-glove/2.webp']::text[], 'new', 1, '2025-05-20'::date, false, false),
  ('castelli-perfetto-max-glove-1', 'Castelli Perfetto Max Glove', 'castelli', 'apparel', 'gloves', '<p>The warmest of the Perfetto family of gloves. Thermoformed single-seam construction with the highest-loft liner.</p>
<p>This is a warmer version of the best winter glove we''ve ever made: the Perfetto RoS Glove. The difference is that the Perfetto Max has a thicker, warmer fleece on the inside and extends farther up the wrist. Other than the extra warmth, both gloves feature the same wind and water protection, the comfortable thermoformed single-seam construction, grip and durability overlays on the palm, and touchscreen zones on the fingertips. The Perfetto RoS Glove covers a wide range of conditions, but if you ride in colder weather or suffer from cold hands, here''s the solution.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Engineered with GORE-TEX INFINIUM™ WINDSTOPPER® Stretch High Loft fabric</li>
<li>Lined with thickest fleece for warmth</li>
<li>Castelli Damping System (CDS) protects median nerve</li>
<li>Stretch wrist insert for easy on and off</li>
<li>Reflective details</li>
<li>Silicone zones on palm for extra grip</li>
<li>Touchscreen technology on fingertip</li>
</ul>
<p><strong>Technical Features</strong></p>
<ul>
<li>Insulation: 4/5</li>
<li>Waterproofness: 4/5</li>
<li>Windproofness: 5/5</li>
<li>Breathability: 4/5</li>
<li>Lightness: 3/5</li>
</ul>
<ul>
<li>Weight: 118gm
</li>
<li>Temperature: 0°C - 10°C / 32°F - 50°F
</li>
<li>Fit: Performance
</li>
</ul>', array['castelli-perfetto-max-glove-1/1.jpg', 'castelli-perfetto-max-glove-1/2.jpg']::text[], 'new', 1, '2025-05-20'::date, false, false),
  ('castelli-perfetto-ros-gloves', 'Castelli Perfetto RoS Gloves', 'castelli', 'apparel', 'gloves', '<p>Futuristic thermoformed single-seam construction results in a fleece-lined glove that''s windproof, water resistant, warm, slim fitting and extremely comfortable.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Engineered with GORE-TEX INFINIUM™ WINDSTOPPER® Stretch Warm fabric and reduced-seam technology</li>
<br><li>Fleece lined for warmth</li>
<br><li>Castelli Damping System (CDS) protects median nerve</li>
<br><li>Neoprene stretch wrist insert for easy on and off</li>
<br><li>Reflective details</li>
<br><li>Silicone zones on palm for extra grip</li>
<br><li>Touchscreen technology at fingertip</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>104gm</strong>
</li>
<br><li>Temperature: <strong>6°C - 10°C / 43°F - 50°F</strong>
</li>
<br>
</ul><br><p><strong>FITS LIKE A GLOVE.</strong> To fit into our Perfetto family, a glove had better be pretty spectacular. By using reduced-seaming technology and the new GORE-TEX INFINIUM™ WINDSTOPPER® fabric, we''ve made a glove that is deceptively warm while staying reasonably thin and allowing maximum dexterity. We''ve added grip features in the palm and our Castelli Damping System for comfort. This is the kind of breakthrough glove you''ve come to expect from Castelli.</p>', array['castelli-perfetto-ros-gloves/1.jpg', 'castelli-perfetto-ros-gloves/2.jpg']::text[], 'new', 2, '2022-07-06'::date, false, false),
  ('castelli-perfetto-ros-gloves-womens-1', 'Castelli Perfetto RoS Gloves Women''s', 'castelli', 'apparel', 'gloves', '<p>Futuristic thermoformed single-seam construction results in a fleece-lined glove that''s windproof, water resistant, warm, slim fitting and extremely comfortable.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Engineered with GORE-TEX INFINIUM™ WINDSTOPPER® Stretch Warm fabric and reduced-seam technology</li>
<br><li>Fleece lined for warmth</li>
<br><li>Castelli Damping System (CDS) protects median nerve</li>
<br><li>Neoprene stretch wrist insert for easy on and off</li>
<br><li>Reflective details</li>
<br><li>Silicone zones on palm for extra grip</li>
<br><li>Touchscreen technology at fingertip</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>93gm</strong>
</li>
<br><li>Temperature: <strong>6°C - 10°C / 43°F - 50°F</strong>
</li>
<br>
</ul><br><p><strong>FITS LIKE A GLOVE.</strong> To fit into our Perfetto family, a glove had better be pretty spectacular. By using reduced-seaming technology and the new GORE-TEX INFINIUM™ WINDSTOPPER® fabric, we''ve made a glove that is deceptively warm while staying reasonably thin and allowing maximum dexterity. We''ve added grip features in the palm and our Castelli Damping System for comfort. This is the kind of breakthrough glove you''ve come to expect from Castelli.</p>', array['castelli-perfetto-ros-gloves-womens-1/1.png', 'castelli-perfetto-ros-gloves-womens-1/2.png', 'castelli-perfetto-ros-gloves-womens-1/3.jpg']::text[], 'new', 2, '2024-06-14'::date, false, false),
  ('castelli-rosso-corsa-espresso-gloves-1', 'Castelli Rosso Corsa Espresso Gloves', 'castelli', 'apparel', 'gloves', '<p>ALREADY A CLASSIC. We set out to improve one of our best gloves by focusing on making the glove easy to get on and off, which we achieved with high-stretch engineered materials and an easy-open cuff. For improved cushioning against road vibration, we added the Castelli Damping System to enhance comfort and protect the key nerves in your hand. The thumb wipe area features a soft microsuede. We made the classic even better, and it’s sure to be a favorite</p>', array['castelli-rosso-corsa-espresso-gloves-1/1.png', 'castelli-rosso-corsa-espresso-gloves-1/2.png', 'castelli-rosso-corsa-espresso-gloves-1/3.jpg']::text[], 'new', 1, '2025-05-20'::date, false, false),
  ('castelli-rosso-corsa-espresso-gloves', 'Castelli Rosso Corsa Espresso Gloves', 'castelli', 'apparel', 'gloves', '<p>ALREADY A CLASSIC. We set out to improve one of our best gloves by focusing on making the glove easy to get on and off, which we achieved with high-stretch engineered materials and an easy-open cuff. For improved cushioning against road vibration, we added the Castelli Damping System to enhance comfort and protect the key nerves in your hand. The thumb wipe area features a soft microsuede. We made the classic even better, and it’s sure to be a favorite</p>', array['castelli-rosso-corsa-espresso-gloves/1.jpg', 'castelli-rosso-corsa-espresso-gloves/2.jpg', 'castelli-rosso-corsa-espresso-gloves/3.jpg']::text[], 'new', 0, '2023-06-24'::date, false, false),
  ('castelli-roubaix-gel-2-gloves-womens-1', 'Castelli Roubaix Gel 2 Gloves Women''s', 'castelli', 'apparel', 'gloves', '<p>The most padded women''s glove in the collection.</p>
<p>We all know that hand pain is an easy way to ruin an otherwise excellent day on the bike, and that’s exactly the scenario that these gloves will eliminate. The Roubaix Gel 2 offers our thickest gel padding and hand protection, so if you’ve ever had any hand discomfort, this is the glove for you. It’s super comfortable to wear, has clean lines and looks great, it really checks all the boxes of a great summer glove.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Castelli''s most padded women''s glove in the collection</li>
<li>Castelli Damping System (CDS) protects median nerve</li>
<li>High-breathability back with perforation at palm</li>
<li>Anatomical neoprene cuff with embossed Velcro closure</li>
<li>Weight: 77 g
</li>
<li>Temperature: 15°C - 30°C / 59°F - 86°F
</li>
</ul>', array['castelli-roubaix-gel-2-gloves-womens-1/1.png', 'castelli-roubaix-gel-2-gloves-womens-1/2.png']::text[], 'new', 2, '2025-05-20'::date, false, false),
  ('castelli-superleggera-sum-glove', 'Castelli Superleggera Sum Glove', 'castelli', 'apparel', 'gloves', '<p>Grip and protection in a minimalist glove for riders who don’t like gloves.</p><p>Product features</p><ul>
<li>Ultralight palm with ventilation</li>
<li>Mesh back of hand with sublimation-print graphic</li>
<li>Stretch wrist closure for easy on/off</li>
<li>Finger pull tab for easy off</li>
<li>Weight: 63gm
</li>
<li>Temperature: 22°C - 40°C
</li>
</ul>', array['castelli-superleggera-sum-glove/1.webp', 'castelli-superleggera-sum-glove/2.webp', 'castelli-superleggera-sum-glove/3.webp']::text[], 'new', 6, '2025-05-20'::date, false, false),
  ('castelli-tutto-nano-gloves-1', 'Castelli Tutto Nano Gloves', 'castelli', 'apparel', 'gloves', '<p>Ideal for cool conditions, Nano Flex 3G is a miracle fabric that combines a warm brushed inside with nanotechnology water repellency. The stretch of the fabric makes it so comfortable you almost feel like you''re not wearing a glove.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Nano Flex 3G fabric provides water repellency with exceptional warmth and soft interior</li>
<br><li>Silicone grip to keep your hands on the handlebars</li>
<br><li>Touchscreen technology at fingertip</li>
<br><li>Minimal seaming for dexterity and comfort</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>81gm</strong>
</li>
<br><li>Temperature: <strong>12°C - 20°C / 54°F - 68°F</strong>
</li>
<br>
</ul><br><p><strong>A LONG WAY.</strong> While the Tutto Nano may appear simple at first glance, there''s a lot more than meets the eye. Minimal seeming actually offers exceptional comfort, and the 3G Nano Flex fabric provides a surprising amount of protection and warmth. Sometimes the simple solution is the best solution, and this seemingly simple glove can go a long way.</p>', array['castelli-tutto-nano-gloves-1/1.png', 'castelli-tutto-nano-gloves-1/2.png', 'castelli-tutto-nano-gloves-1/3.jpg']::text[], 'new', 2, '2024-06-14'::date, false, false),
  ('mens-body-geometry-dual-gel-long-finger-gloves', 'Men''s Body Geometry Dual-Gel Long Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Our Body Geometry Dual-Gel Long Finger gloves are all about comfort. They feature strategically placed gel pads throughout the palm to alleviate hand fatigue by relieving pressure on the ulnar nerve. This design also comes with the added benefit of minimizing hand numbness, as well as reducing many other negative effects that come as a result of road vibrations. Breathability has also been accounted for at the back of the hand, while a secure fit is ensured by a contoured Velcro® closure. And lastly, phone use is a non-issue, as the fingertips are designed to be touchscreen-compatible.</p>', array['mens-body-geometry-dual-gel-long-finger-gloves/1.jpg', 'mens-body-geometry-dual-gel-long-finger-gloves/2.jpg', 'mens-body-geometry-dual-gel-long-finger-gloves/3.jpg', 'mens-body-geometry-dual-gel-long-finger-gloves/4.jpg']::text[], 'new', 4, '2025-02-12'::date, false, false),
  ('mens-body-geometry-dual-gel-short-finger-gloves', 'Men''s Body Geometry Dual-Gel Short Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Our Body Geometry Dual-Gel Gloves are all about comfort. They feature strategically placed gel pads throughout the palm to alleviate hand fatigue by relieving pressure on the ulnar nerve. This design also comes with the added benefit of minimizing hand numbness, as well as reducing many other negative effects that come as a result of road vibrations. Breathability has also been accounted for at the back of the hand, while a secure fit is ensured by a contoured Velcro® closure.</p>', array['mens-body-geometry-dual-gel-short-finger-gloves/1.jpg', 'mens-body-geometry-dual-gel-short-finger-gloves/2.jpg', 'mens-body-geometry-dual-gel-short-finger-gloves/3.jpg', 'mens-body-geometry-dual-gel-short-finger-gloves/4.jpg']::text[], 'new', 5, '2025-02-12'::date, false, false),
  ('mens-body-geometry-grail-long-finger-gloves', 'Men''s Body Geometry Grail Long Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Featuring a proprietary pad system designed by Dr. Kyle Bickel M.D., our Grail Long Finger Gloves are ergonomically designed for the best possible fit and protection. They''re scientifically tested to help reduce hand numbness by improving circulation and equalizing pressure in the soft tissues of the hand. Even further, you''ll find a durable synthetic leather palm, breathable mesh at the top of the hand, touchscreen compatible Wiretap™ technology, and our acclaimed Equalizer™ gel padding at the palm.</p>', array['mens-body-geometry-grail-long-finger-gloves/1.jpg', 'mens-body-geometry-grail-long-finger-gloves/2.jpg']::text[], 'new', 5, '2025-02-12'::date, false, false),
  ('mens-body-geometry-grail-short-finger-gloves', 'Men''s Body Geometry Grail Short Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Featuring a proprietary pad system designed by Dr. Kyle Bickel M.D., our Grail Gloves are ergonomically designed for the best possible fit and protection. They''re scientifically tested to help reduce hand numbness by improving circulation and equalizing pressure in the soft tissues of the hand. Even further, you''ll find a durable synthetic leather palm, breathable mesh at the top of the hand, and our acclaimed Equalizer™ gel padding at the palm.</p>', array['mens-body-geometry-grail-short-finger-gloves/1.jpg', 'mens-body-geometry-grail-short-finger-gloves/2.jpg', 'mens-body-geometry-grail-short-finger-gloves/3.jpg', 'mens-body-geometry-grail-short-finger-gloves/4.jpg', 'mens-body-geometry-grail-short-finger-gloves/5.jpg']::text[], 'new', 4, '2025-02-12'::date, false, false),
  ('mens-body-geometry-sport-gel-short-finger-gloves', 'Men''s Body Geometry Sport Gel Short Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Comfortable; economical, and performance-driven, the Body Geometry Sport Gloves are the perfect first-choice for riders more focused on comfort and a good time than setting records on every ride. They feature strategically placed gel pads throughout the palm, with additional foam padding in key contact areas. This combination ensures that you''ll experience minimal hand fatigue from vibration, so you get more comfort and less pain.</p>', array['mens-body-geometry-sport-gel-short-finger-gloves/1.jpg', 'mens-body-geometry-sport-gel-short-finger-gloves/2.jpg', 'mens-body-geometry-sport-gel-short-finger-gloves/3.jpg', 'mens-body-geometry-sport-gel-short-finger-gloves/4.jpg', 'mens-body-geometry-sport-gel-short-finger-gloves/5.jpg']::text[], 'new', 5, '2025-02-11'::date, false, false),
  ('oakley-roundhouse-winter-glove', 'Oakley Roundhouse Winter Glove', 'oakley', 'apparel', 'gloves', '<p>Optimize winter warmth and comfort in a variety of cold - wet conditions in the Roundhouse Glove featuring a thick padded palm panel and advanced water repellent exterior. Cuffs with Velcro® straps provide a secure fit in these feature-rich gloves you’ll turn to again and again.</p>

<p>Specifications:<br><br>- 68% Polyester<br>- 27%PU<br>- 3% Polyamide<br>- 1% Elastane<br>- 1% Rubber</p>', array['oakley-roundhouse-winter-glove/1.png']::text[], 'new', 4, '2026-04-21'::date, false, true),
  ('thermal-knit-gloves', 'Thermal Knit Gloves', 'specialized', 'apparel', 'gloves', '<p>Cold weather biking gloves don’t have to be bulky. Sleek and seamless, our Thermal Knit Gloves keep you warm and comfortable without sacrificing dexterity. The stretchy construction features a weather-resistant membrane to block out the cold and a soft liner that feels smooth against the skin. Wear them all ride long or have them on hand as a backup pair should you need a mid-ride glove swap.</p>', array['thermal-knit-gloves/1.jpg', 'thermal-knit-gloves/2.jpg', 'thermal-knit-gloves/3.jpg', 'thermal-knit-gloves/4.jpg', 'thermal-knit-gloves/5.jpg']::text[], 'new', 3, '2024-08-05'::date, false, false),
  ('velotoze-aero-gloves', 'VeloToze Aero Gloves', 'velotoze', 'apparel', 'gloves', '<h3>VELOTOZE AERO GLOVES</h3>

<h3>DESCRIPTION</h3>

<p><strong>OPTIMIZE YOUR RIDE WITH VELOTOZE AERO GLOVES</strong></p>

<p>veloToze Aero Gloves, a vital component of our Aero Collection, designed to enhance your speed and comfort during every ride. Engineered with precision and performance in mind, these gloves offer a competitive edge to riders seeking optimal aerodynamics.</p>
<p><strong> </strong></p>
<p><strong>Advanced Aero Fabric:</strong> Our Aero Gloves are meticulously crafted using advanced aero fabric that ingeniously disrupts the airflow, reducing aerodynamic drag to a minimum. </p>
<p><strong> </strong></p>
<p><strong>Aero Comfortable Fit:</strong> The slim-fit design of these gloves conforms snugly to your hands, providing a streamlined profile while ensuring maximum comfort for everyday riding. We''ve integrated minimalist gel pads that offer just the right amount of cushion for your palms without sacrificing the crucial connection to the handlebar.</p>
<p><strong> </strong></p>
<p><strong>Convenient Design:</strong> Pull tabs thoughtfully placed between the fingers make the removal of these gloves effortless. </p>
<p>To unlock the full potential of aerodynamics, pair veloToze Aero Gloves with our Aero Socks and veloToze 2.0 Short Shoe Covers. This winning combination will help you glide through the wind with unrivaled efficiency, shaving precious seconds off your race times.</p>
<h4><strong>MATERIALS</strong></h4>
<ul>
<li>43% polyester, 43% nylon, 13% spandex, 1% polyurethane</li>
</ul>
<h4><strong>CARE INSTRUCTIONS</strong></h4>
<ul>
<li>Machine wash cool on a gentle cycle with like colors. Hang dry. Do not machine dry. Do not iron. Do not bleach.</li>
</ul>', array['velotoze-aero-gloves/1.jpg']::text[], 'new', 5, '2024-12-05'::date, false, false),
  ('womens-body-geometry-dual-gel-long-finger-gloves', 'Women''s Body Geometry Dual-Gel Long Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Our Women’s Body Geometry Dual-Gel Longer Finger Gloves are all about comfort, and are specifically tailored for female riders. They feature strategically placed gel pads throughout the palm to alleviate hand fatigue by relieving pressure on the ulnar nerve. This design also comes with the added benefit of minimizing hand numbness, as well as reducing many other negative effects that come as a result of road vibrations. Breathability has also been accounted for at the back of the hand, and this means less sweat buildup, while a secure fit is ensured by a contoured Velcro® closure. And lastly, phone use is a non-issue, as the fingertips are designed to be touchscreen-compatible.</p>', array['womens-body-geometry-dual-gel-long-finger-gloves/1.jpg', 'womens-body-geometry-dual-gel-long-finger-gloves/2.jpg']::text[], 'new', 4, '2025-02-12'::date, false, false),
  ('womens-body-geometry-dual-gel-short-finger-gloves', 'Women''s Body Geometry Dual-Gel Short Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Our Women’s Body Geometry Dual-Gel gloves are all about comfort, and are specifically tailored for female riders. They feature strategically placed gel pads throughout the palm to alleviate hand fatigue by relieving pressure on the ulnar nerve. This design also comes with the added benefit of minimizing hand numbness, as well as reducing many other negative effects that come as a result of road vibrations. Breathability has also been accounted for at the back of the hand, and this means less sweat buildup, while a secure fit is ensured by a contoured Velcro® closure.</p>', array['womens-body-geometry-dual-gel-short-finger-gloves/1.jpg', 'womens-body-geometry-dual-gel-short-finger-gloves/2.jpg', 'womens-body-geometry-dual-gel-short-finger-gloves/3.jpg', 'womens-body-geometry-dual-gel-short-finger-gloves/4.jpg']::text[], 'new', 5, '2025-02-10'::date, false, false),
  ('womens-body-geometry-grail-short-finger-gloves', 'Women''s Body Geometry Grail Short Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Featuring a proprietary pad system designed by Dr. Kyle Bickel M.D., our Women''s Grail Gloves are ergonomically designed to provide the best possible fit and protection for women. They''re scientifically tested to help reduce hand numbness by improving circulation and equalizing pressure in the soft tissues of the hand. Even further, you''ll find a durable synthetic leather palm, breathable mesh at the top of the hand, and our acclaimed Equalizer™ gel padding at the palm.</p>', array['womens-body-geometry-grail-short-finger-gloves/1.jpg', 'womens-body-geometry-grail-short-finger-gloves/2.jpg', 'womens-body-geometry-grail-short-finger-gloves/3.jpg', 'womens-body-geometry-grail-short-finger-gloves/4.jpg']::text[], 'new', 3, '2025-02-10'::date, false, false),
  ('womens-body-geometry-sport-gel-short-finger-gloves', 'Women''s Body Geometry Sport Gel Short Finger Gloves', 'specialized', 'apparel', 'gloves', '<p>Comfortable; economical, and performance-driven, the Women’s Body Geometry Sport Gel Gloves are the perfect first-choice for female riders more focused on comfort and a good time than setting records on every ride. They feature strategically placed gel pads throughout the palm, with additional foam padding in key contact areas. This combination ensures that you''ll experience minimal hand fatigue from vibration, so you get more comfort and less pain.</p>', array['womens-body-geometry-sport-gel-short-finger-gloves/1.jpg', 'womens-body-geometry-sport-gel-short-finger-gloves/2.jpg', 'womens-body-geometry-sport-gel-short-finger-gloves/3.jpg', 'womens-body-geometry-sport-gel-short-finger-gloves/4.jpg', 'womens-body-geometry-sport-gel-short-finger-gloves/5.jpg']::text[], 'new', 8, '2025-02-10'::date, false, false),

  -- ---- apparel · jackets ----
  ('castelli-aria-shell-jacket-womens', 'Castelli Aria Shell Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>An extremely light and packable wind shell that fits close to body, with stretch breathability panels, allowing you extend the temperature range of your favorite Castelli pieces.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Ultralight windproof woven microfiber front</li>
<br><li>Striped mesh fabric at sides and sleeve back is stretchy to avoid fabric flapping in the wind</li>
<br><li>Folds up extremely small</li>
<br><li>Integrated pack sack</li>
<br><li>YKK® Vislon® zipper</li>
<br><li>Reflective Castelli wordmark</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>1/5</strong>
</li>
<br><li>Waterproofness: <strong>2/5</strong>
</li>
<br><li>Windproofness: <strong>4/5</strong>
</li>
<br><li>Breathability: <strong>5/5</strong>
</li>
<br><li>Lightness: <strong>5/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>82gm</strong>
</li>
<br><li>Temperature: <strong>10°C - 18°C / 50°F - 65°F</strong>
</li>
<br><li>Fit: <strong>Tailored</strong>
</li>
<br>
</ul><br><p><strong>NOT YOUR OLD-STYLE WIND JACKET</strong> If you''re like us, there''s a reason you''re not using your old-style wind jacket more. With waterproof jackets like the Idro being lighter and more compact than ever, we felt it was time to reinvent a classic. In reality, the Aria Jacket is very different from your flappy old jacket that either didn''t protect you or didn''t breathe. This jacket is an impossibly light layer that keeps the wind off the front of your body while allowing ample breathability through the mesh side panels. But what you’ll really appreciate is how we use the stretch panels in the sides and on the back of the sleeves to make this jacket fit like a second skin: no flapping fabric, no cold air circulating inside the jacket, no more looking like a throwback to the Armstrong era. This jacket is light and warm enough to wear for the entire ride in mild conditions, but if you do want to take it off it folds into a side panel pocket and stuffs away in minimal space in your pocket or seat bag.</p>', array['castelli-aria-shell-jacket-womens/1.jpg', 'castelli-aria-shell-jacket-womens/2.jpg', 'castelli-aria-shell-jacket-womens/3.jpg', 'castelli-aria-shell-jacket-womens/4.jpg', 'castelli-aria-shell-jacket-womens/5.jpg']::text[], 'new', 0, '2024-08-07'::date, false, false),
  ('castelli-commuter-reflex-jacket-womens', 'Castelli Commuter Reflex Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>Designed for the rigors of commuting in all weather, this jacket keeps everything out while fitting over your office attire, but where it really shines, quite literally, is with the allover reflectivity that lights up at night yet is practically unnoticeable during the day.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Castelli-exclusive 3-layer allover reflex fabric with 20,000 mm water column waterproofing and 20,000 MVTR breathability</li>
<br><li>Taped seams for fully waterproof construction</li>
<br><li>Cut to fit over normal clothes, longer in front and back for extra coverage</li>
<br><li>No-sew bottom hem for very clean look</li>
<br><li>No-sew external zipper flap</li>
<br><li>Inner gaiter can be closed to seal out drafts or left open for ventilation</li>
<br><li>Velcro wrist closure to effectively seal against gloves</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>1/5</strong>
</li>
<br><li>Waterproofness: <strong>5/5</strong>
</li>
<br><li>Windproofness: <strong>5/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>2/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>339gm</strong>
</li>
<br><li>Temperature: <strong>-2°C - 15°C / 28°F - 59°F</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul><br><p>This is the Castelli of commute jackets, made to deliver maximum function on the bike and then look great when you get to work. We wanted a jacket that provides maximum visibility during those night commutes but doesn''t look ridiculous with all kinds of silver reflective bands and strips when you get to the office. We applied a nearly unnoticeable reflective print on the entire surface of the jacket. You don''t really see it when you''re riding in the daytime or wearing the jacket off the bike, but at night the jacket reflects a distinctive pattern to get you noticed. We didn''t stop at the reflectivity. The 20,000 mm water column means no water is coming through, ever. And the 20,000 MVTR breathability means that a good amount of moisture will escape. But it''s the ventilation details that make this jacket stand out: there''s a gaiter at the waist that you can close to seal out the wind or leave open to let some air come in from the bottom to keep you cooler. This inner gaiter allows us to make a jacket that hangs straight at the bottom — a much cleaner and more refined look than a jacket with wrinkles from an internal elastic.</p>', array['castelli-commuter-reflex-jacket-womens/1.png', 'castelli-commuter-reflex-jacket-womens/2.png', 'castelli-commuter-reflex-jacket-womens/3.png', 'castelli-commuter-reflex-jacket-womens/4.png', 'castelli-commuter-reflex-jacket-womens/5.png']::text[], 'new', 1, '2022-07-06'::date, false, false),
  ('castelli-competizione-jacket-mens', 'Castelli Competizione Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>Very warm protection in all conditions with a fleece inner layer, Polartec® AirCore™ membrane for wind and rain resistance, and reflective details to keep you seen.</p><p>TECHNICAL FEATURES</p><p>Insulation 5/5</p><p>Waterproofness 4/5</p><p>Windproofness 5/5</p><p>Breathability 3/5</p><p>Lightness 3/5</p><ul>
<li>Weight:422<em> g</em>
</li>
<li>Temperature: -4°C - 10°C / 25°F - 50°F</li>
<li>Fit:Regular</li>
</ul><p>PRODUCT FEATURES</p><p>Very warm jacket for riding in cold conditions, including with light rain and wet roads</p><p>Outer layer made from Castelli’s exclusive 298 g Polartec® AirCore™ electrospun air-permeable membrane gives industry-leading breathability</p><p>Micro-grid fleece inner face for insulation</p><p>YKK® Vislon® zipper for easy sliding</p><p>3 rear pockets</p><p>Reflective heat transfers at sides of pocket</p>', array['castelli-competizione-jacket-mens/1.webp', 'castelli-competizione-jacket-mens/2.webp', 'castelli-competizione-jacket-mens/3.webp', 'castelli-competizione-jacket-mens/4.webp', 'castelli-competizione-jacket-mens/5.webp']::text[], 'new', 12, '2026-04-20'::date, false, false),
  ('castelli-do-di-ci-short-sleeve-jacket-mens', 'Castelli DO.DI.CI Short Sleeve Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>Very warm protection in all conditions with a fleece inner layer, Polartec® AirCore™ membrane for wind and rain resistance, and reflective details to keep you seen.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 2/5</p><p>Waterproofness 2/5</p><p>Windproofness 3/5</p><p>Breathability 5/5</p><p>Lightness 5/5</p><ul>
<li>Weight:217<em> g</em>
</li>
<li>Temperature: 8°C - 15°C / 46°F - 59°F</li>
<li>Fit:Race</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Next-generation breathability in a stretch short-sleeve jacket that blurs the line between a jersey and a jacket, for cool to mild conditions</p><p>Exclusive Castelli Ristretto technology with engineered air permeability keeps most wind out, allowing in just enough to provide exceptional breathability — 12 times more than previous Castelli Gabba jackets</p><p>Close-to-body stretch fit doesn’t feel constricting, thanks to Ristretto stretch fabrics</p><p>Minimalist construction for speed and comfort</p><p>YKK® Vislon® zipper for easy sliding</p><p>3 rear pockets</p><p>Reflective piping at bottom of pocket for visibility</p><p>Castelli partnered with fabric innovator ITTTAI® to create an exclusive fabric, combining advanced stretch, breathability, and water protection through ITTTAI®’s membrane and lamination expertise</p>', array['castelli-do-di-ci-short-sleeve-jacket-mens/1.webp', 'castelli-do-di-ci-short-sleeve-jacket-mens/2.webp', 'castelli-do-di-ci-short-sleeve-jacket-mens/3.webp', 'castelli-do-di-ci-short-sleeve-jacket-mens/4.webp', 'castelli-do-di-ci-short-sleeve-jacket-mens/5.webp']::text[], 'new', 11, '2026-04-20'::date, false, false),
  ('castelli-emergency-2-rain-jacket-mens', 'Castelli Emergency 2 Rain Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>The go-to jacket for rain protection, whether for all-day use or emergency use, since it easily stashes away in a jersey pocket. With discreet styling and 360° reflectivity, it can do double duty as a commute jacket.</p>
<br><p>Just like the name says, we wanted to create the ideal simple emergency rain jacket. We made it completely waterproof and compact, and, as you’d expect from Castelli, we also gave it an amazing on-bike fit, yet it’s still roomy enough to fit over a Gabba. It has all the trappings of a performance rain jacket, with the waterproof zipper, long tail, long sleeves, and wrist closures that can go over gloves, yet we knew you wouldn’t want to break the bank with it, so the only real compromise compared to our top-of-the-line offerings is in breathability. We kept the styling toned down and added a bright colorway in Fiery Red so that you can easily use this as a commute jacket and still look great when you get to the office. If you''re going to wear it over office attire you may want to go up one size.</p>
<br><p><strong>Product features</strong></p>
<br><ul>
<br><li>Deluge Light 2.5-layer waterproof fabric keeps rain off with 10,000 mm water column</li>
<br><li>Slight amount of stretch for excellent fit in riding position</li>
<br><li>Folds into half a jersey pocket for emergency situations</li>
<br><li>Stuff pocket integrated into mesh vent at top of back</li>
<br><li>Waterproof zipper and contrast seam sealing keep water out</li>
<br><li>360° reflectivity</li>
<br><li>Weight: 209gm
</li>
<br><li>Temperature: 6°C - 18°C / 43°F - 64°F
</li>
<br><li>
<br>Fit: Comfortable

<br>
</li>
<br>
</ul>', array['castelli-emergency-2-rain-jacket-mens/1.jpg', 'castelli-emergency-2-rain-jacket-mens/2.png']::text[], 'new', 4, '2022-07-06'::date, false, false),
  ('castelli-emergency-2-rain-jacket-womens-1', 'Castelli Emergency 2 Rain Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>The go-to jacket for rain protection, whether for all-day use or emergency use, since it easily stashes away in a jersey pocket. With discreet styling and 360° reflectivity, it can do double duty as a commute jacket.</p>
<p>Just like the name says, we wanted to create the ideal simple emergency rain jacket. We made it completely waterproof and compact, and, as you’d expect from Castelli, we also gave it an amazing on-bike fit, yet it’s still roomy enough to fit over a Gabba. It has all the trappings of a performance rain jacket, with the waterproof zipper, long tail, long sleeves, and wrist closures that can go over gloves, yet we knew you wouldn’t want to break the bank with it, so the only real compromise compared to our top-of-the-line offerings is in breathability. We kept the styling toned down and added a bright colorway in Brilliant Pink so that you can easily use this as a commute jacket and still look great when you get to the office. If you''re going to wear it over office attire you may want to go up one size.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Deluge Light 2.5-layer waterproof fabric keeps rain off with 10,000 mm water column</li>
<li>Slight amount of stretch for excellent fit in riding position</li>
<li>Folds into half a jersey pocket for emergency situations</li>
<li>Stuff pocket integrated into mesh vent at top of back</li>
<li>Waterproof zipper and contrast seam sealing keep water out</li>
<li>360° reflectivity</li>
<li>Weight: 161gm
</li>
<li>Temperature: 6°C - 18°C / 43°F - 64°F
</li>
<li>
Fit: Comfortable

</li>
</ul>', array['castelli-emergency-2-rain-jacket-womens-1/1.jpg', 'castelli-emergency-2-rain-jacket-womens-1/2.png', 'castelli-emergency-2-rain-jacket-womens-1/3.webp', 'castelli-emergency-2-rain-jacket-womens-1/4.webp', 'castelli-emergency-2-rain-jacket-womens-1/5.webp']::text[], 'new', 4, '2025-12-01'::date, false, false),
  ('castelli-entrata-2-jacket-womens', 'Castelli Entrata 2 Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>Made for cool conditions with wind proof sleeves and front combined with maximum breathability Warmer fleece fabric on the back.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 2/5</p><p>Windproofness 4/5</p><p>Breathability 4/5</p><p>Lightness 3/5</p><ul>
<li>Weight:369<em> g</em>
</li>
<li>Temperature: 6°C - 15°C / 43°F - 59°F</li>
<li>Fit:Regular</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Mid-weight jacket for cool to cold conditions with full front protection and thermal back for breathability</p><p>Front of chest and sleeves made from Castelli’s exclusive 298 g Polartec® AirCore™ electrospun air-permeable membrane gives industry-leading breathability</p><p>Stretch polyester fleece Warmer fabric on back for extra breathability</p><p>YKK® Vislon® zipper for easy sliding</p><p>3 rear pockets</p><p>Reflective piping at bottom of pocket for visibility</p><p>YKK® Vislon® zipper for easy sliding</p><p>3 rear pockets</p><p>Reflective piping at bottom of pocket for visibility</p><p>Castelli partnered with fabric innovator ITTTAI® to create an exclusive fabric, combining advanced stretch, breathability, and water protection through ITTTAI®’s membrane and lamination expertise</p>', array['castelli-entrata-2-jacket-womens/1.webp', 'castelli-entrata-2-jacket-womens/2.webp', 'castelli-entrata-2-jacket-womens/3.webp', 'castelli-entrata-2-jacket-womens/4.webp', 'castelli-entrata-2-jacket-womens/5.webp']::text[], 'new', 4, '2026-04-20'::date, false, false),
  ('castelli-entrata-jacket-mens', 'Castelli Entrata Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>This mid-weight jacket is perfect for the changing weather as we enter fall and spring. Enough warmth and protection without overdoing it. A neutral fit and extra reflectivity for added safety.</p>

<h3><strong>Product features</strong></h3>
<p><br><br></p>
<ul>
<li>GORE-TEX INFINIUM™ WINDSTOPPER® X-MID front and sleeves for wind protection with exceptional breathability</li>
</ul>

<ul>
<li>Warmer fleece fabric on back for additional breathability</li>
</ul>

<ul>
<li>Asymetric YKK® Vislon® zipper</li>
</ul>

<ul>
<li>3 rear pockets</li>
</ul>

<ul>
<li>Reflective detail on pockets for extra visibility</li>
</ul>
<p><br><br></p>
<h3><strong>Technical Features</strong></h3>
<p><br><br></p>
<ul>
<li>Insulation: <strong>3/5</strong>
</li>
</ul>

<ul>
<li>Waterproofness: <strong>2/5</strong>
</li>
</ul>

<ul>
<li>Windproofness: <strong>4/5</strong>
</li>
</ul>

<ul>
<li>Breathability: <strong>4/5</strong>
</li>
</ul>

<ul>
<li>Lightness: <strong>4/5</strong>
</li>
</ul>
<p><br><br><br></p>
<ul>
<li>Weight: <strong>329gm</strong>
</li>
</ul>

<ul>
<li>Temperature: <strong>8°C - 16°C / 46°F - 62°F</strong>
</li>
</ul>

<ul>
<li>Fit: <strong>Regular</strong>
</li>
</ul>
<p><br><br></p>
<p>The perfect jacket for approaching winter. Great for those fall rides when there is a chill in the air. If you live in a warmer climate, this could be the jacket to carry you through the heart of winter and into spring. For the front of this jacket we''ve used the same fabric as on our pro-level Gabba jacket, but in this case we''ve paired it with a fleece back for extra breathability and we''ve given it a more generous cut for easier wearing. The details are there, from the three perfectly placed and sized rear pockets to the silicone gripper elastic and the YKK® Vislon® zipper for easy opening and closing. This jacket will help you enter the next season ready, with plenty of miles in the legs.</p>', array['castelli-entrata-jacket-mens/1.jpg', 'castelli-entrata-jacket-mens/2.jpg', 'castelli-entrata-jacket-mens/3.jpg', 'castelli-entrata-jacket-mens/4.jpg', 'castelli-entrata-jacket-mens/5.jpg']::text[], 'new', 2, '2024-08-07'::date, false, false),
  ('castelli-espresso-air-jacket-mens', 'Castelli Espresso Air Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>Using Castelli''s Ristretto Technology for unparalleled breathability, dryness, and warmth. The Ristretto Warm fabric also offers plenty of stretch for a close-to-body fit with complete freedom of movement</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 5/5</p>

<p>Waterproofness 3/5</p>
Windproofness 4/5

<p>Breathability 4/5</p>

<p>Lightness 4/5</p>

<ul>
<li>Weight:435<em> g</em>
</li>
<li>Temperature:0°C - 10°C / 32°F - 50°F
</li>
<li>
Fit:Regular

</li>
</ul>

<p>PRODUCT FEATURES</p>

<p>Ristretto Technology for unparalleled breathability, warmth, and dryness</p>
<p>Fleece-lined Ristretto Warm fabric providing warmth and stretch for amazing comfort</p>
<p>PFAS-free DWR treatment to shed light rain and spray</p>
<p>YKK® Vislon® Zipper</p>
<p>3 lie-flat back pockets with inner security lip</p>
<p>Engineered waist with raw-cut lie-flat back to keep out cold air</p>
<p>Reflectivity for added visibility and safety</p>
<p>Castelli partnered with fabric innovator ITTTAI® to create an exclusive fabric, combining advanced stretch, breathability, and water protection through ITTTAI®''s membrane and lamination expertise.</p>', array['castelli-espresso-air-jacket-mens/1.jpg', 'castelli-espresso-air-jacket-mens/2.jpg', 'castelli-espresso-air-jacket-mens/3.jpg', 'castelli-espresso-air-jacket-mens/4.jpg', 'castelli-espresso-air-jacket-mens/5.jpg']::text[], 'new', 9, '2025-06-09'::date, false, false),
  ('castelli-espresso-air-jacket-womens', 'Castelli Espresso Air Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>Using Castelli''s Ristretto Technology for unparalleled breathability, dryness, and warmth. The Ristretto Warm fabric also offers plenty of stretch for a close-to-body fit with complete freedom of movement.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 4/5</p><p>Waterproofness 2/5</p><p>Windproofness 5/5</p><p>Breathability 4/5</p><p>Lightness 3/5</p><ul>
<li>Weight:363<em> g</em>
</li>
<li>Temperature: 0°C - 10°C / 32°F - 50°F</li>
<li>Fit:Tailored</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Ristretto Technology for unparalleled breathability, warmth, and dryness</p><p>Fleece-lined Ristretto Warm fabric providing warmth and stretch for amazing comfort</p><p>PFAS-free DWR treatment to shed light rain and spray</p><p>YKK® Vislon® Zipper</p><p>3 lie-flat back pockets with inner security lip</p><p>Engineered waist with raw-cut lie-flat back to keep out cold air</p><p>Reflectivity for added visibility and safety</p><p>Castelli partnered with fabric innovator ITTTAI® to create an exclusive fabric, combining advanced stretch, breathability, and water protection through ITTTAI®''s membrane and lamination expertise.</p>', array['castelli-espresso-air-jacket-womens/1.webp', 'castelli-espresso-air-jacket-womens/2.webp', 'castelli-espresso-air-jacket-womens/3.webp', 'castelli-espresso-air-jacket-womens/4.webp', 'castelli-espresso-air-jacket-womens/5.webp']::text[], 'new', 9, '2026-04-20'::date, false, false),
  ('castelli-gabba-r-jacket-mens', 'Castelli Gabba R Jacket Men''s', 'castelli', 'apparel', 'jackets', '<h3><strong>ARRIVING SPRING 2024</strong></h3>
<p>The next generation of Foul Weather Race Equipment has arrived. The Gabba R is more protective and more aerodynamic than ever before. It''s made to keep up with the demands of the pro peloton, where every watt counts. It''s tested in the wind tunnel as our fastest jacket, so you know you aren''t sacrificing any speed in order to stay dry.</p>
<h3><strong>Product features</strong></h3>
<ul>
<li>Castelli exclusive fabric with a microporous electro-spun hydrophobic polyurethane membrane</li>
<li>The external membrane keeps it light and breathable while avoiding an external textile layer that holds moisture next to the membrane</li>
<li>The fabric weighs just 125gr /m2 and stretches to at least double the original dimension in each direction</li>
<li>The inner fabric backer is 78% polyester / 22% elastane to maintain the extreme stretch while enhancing breathability</li>
<li>The polyurethane membrane has been formulated to be more hydrophobic than standard polyurethane.</li>
<li>Stretch wrist closure to keep water out</li>
<li>YKK® Vislon® waterproof zipper</li>
<li>3 rear mesh pockets for drainage</li>
<li>Drop tail with reflective stripe</li>
<li>The membrane and entire fabrics are PFAS-free.</li>
</ul>
<h3><strong>Technical Features</strong></h3>
<ul>
<li>Insulation: <strong>2/5</strong>
</li>
<li>Waterproofness: <strong>5/5</strong>
</li>
<li>Windproofness: <strong>5/5</strong>
</li>
<li>Breathability: <strong>3/5</strong>
</li>
<li>Lightness: <strong>4/5</strong>
</li>
</ul>
<ul>
<li>Temperature: <strong>4°C - 18°C / 39°F - 64°F</strong>
</li>
<li>Fit: <strong>Race</strong>
</li>
</ul>
<p>The next generation of Foul Weather Race Equipment has arrived. The Gabba R is more protective and more aerodynamic than ever before. It''s made to keep up with the demands of the pro peloton, where every watt counts. It''s tested in the wind tunnel as our fastest jacket, so you know you aren''t sacrificing any speed in order to stay dry. The waterproof stretch fabric fits close to the body without inhibiting freedom of movement. The sleeves are tailored to fit with gloves without adding any bulk to the wrist. We''ve provided three mesh back pockets to store what you might need to access quickly in wet conditions, but the mesh makes sure the pockets can''t fill with water and weigh you down. On the drop tail, which provides extra protection from road spray, we''ve added a reflective stripe for greater visibility. We''ve again raised the bar for what Foul Weather Race Equipment should be.</p>', array['castelli-gabba-r-jacket-mens/1.png', 'castelli-gabba-r-jacket-mens/2.png', 'castelli-gabba-r-jacket-mens/3.png', 'castelli-gabba-r-jacket-mens/4.png']::text[], 'new', 0, '2025-05-20'::date, false, false),
  ('castelli-gabba-r-jacket-womens', 'Castelli Gabba R Jacket Women''s', 'castelli', 'apparel', 'jackets', '<h3><strong>ARRIVING SPRING 2024</strong></h3>
<p>The next generation of Foul Weather Race Equipment has arrived. The Gabba R is more protective and more aerodynamic than ever before. It''s made to keep up with the demands of the pro peloton, where every watt counts. It''s tested in the wind tunnel as our fastest jacket, so you know you aren''t sacrificing any speed in order to stay dry.</p>
<h3><strong>Product features</strong></h3>
<ul>
<li>Castelli exclusive fabric with a microporous electro-spun hydrophobic polyurethane membrane</li>
<li>The external membrane keeps it light and breathable while avoiding an external textile layer that holds moisture next to the membrane</li>
<li>The fabric weighs just 125gr /m2 and stretches to at least double the original dimension in each direction</li>
<li>The inner fabric backer is 78% polyester / 22% elastane to maintain the extreme stretch while enhancing breathability</li>
<li>The polyurethane membrane has been formulated to be more hydrophobic than standard polyurethane.</li>
<li>Stretch wrist closure to keep water out</li>
<li>YKK® Vislon® waterproof zipper</li>
<li>3 rear mesh pockets for drainage</li>
<li>Drop tail with reflective stripe</li>
<li>The membrane and entire fabrics are PFAS-free.</li>
</ul>
<h3><strong>Technical Features</strong></h3>
<ul>
<li>Waterproofness: <b>3</b><strong>/5</strong>
</li>
<li>Insulation: <strong>5/5</strong>
</li>
<li>Windproofness: <strong>4/5</strong>
</li>
<li>Breathability: <strong>4/5</strong>
</li>
<li>Lightness: <strong>4/5</strong>
</li>
</ul>
<ul>
<li>Temperature: <strong>4°C - 18°C / 39°F - 64°F</strong>
</li>
<li>Fit: <strong>Race</strong>
</li>
</ul>
<p>The next generation of Foul Weather Race Equipment has arrived. The Gabba R is more protective and more aerodynamic than ever before. It''s made to keep up with the demands of the pro peloton, where every watt counts. It''s tested in the wind tunnel as our fastest jacket, so you know you aren''t sacrificing any speed in order to stay dry. The waterproof stretch fabric fits close to the body without inhibiting freedom of movement. The sleeves are tailored to fit with gloves without adding any bulk to the wrist. We''ve provided three mesh back pockets to store what you might need to access quickly in wet conditions, but the mesh makes sure the pockets can''t fill with water and weigh you down. On the drop tail, which provides extra protection from road spray, we''ve added a reflective stripe for greater visibility. We''ve again raised the bar for what Foul Weather Race Equipment should be.</p>', array['castelli-gabba-r-jacket-womens/1.jpg', 'castelli-gabba-r-jacket-womens/2.jpg', 'castelli-gabba-r-jacket-womens/3.jpg', 'castelli-gabba-r-jacket-womens/4.jpg', 'castelli-gabba-r-jacket-womens/5.jpg']::text[], 'new', 5, '2025-05-20'::date, false, false),
  ('castelli-gabba-r-mens', 'Castelli Gabba R Men''s', 'castelli', 'apparel', 'jackets', '<h3><strong>ARRIVING SPRING 2024</strong></h3>
<p>The next generation of Foul Weather Race Equipment has arrived. The Gabba R is more protective and more aerodynamic than ever before. It''s made to keep up with the demands of the pro peloton, where every watt counts. It''s tested in the wind tunnel as our fastest jacket, so you know you aren''t sacrificing any speed in order to stay dry.</p>
<h3><strong>Product features</strong></h3>
<ul>
<li>Castelli exclusive fabric with a microporous electro-spun hydrophobic polyurethane membrane</li>
<li>The external membrane keeps it light and breathable while avoiding an external textile layer that holds moisture next to the membrane</li>
<li>The fabric weighs just 125gr /m2 and stretches to at least double the original dimension in each direction</li>
<li>The inner fabric backer is 78% polyester / 22% elastane to maintain the extreme stretch while enhancing breathability</li>
<li>The polyurethane membrane has been formulated to be more hydrophobic than standard polyurethane.</li>
<li>YKK® Vislon® waterproof zipper</li>
<li>3 rear mesh pockets for drainage</li>
<li>Drop tail with reflective stripe</li>
<li>The membrane and entire fabrics are PFAS-free.</li>
</ul>
<h3><strong>Technical Features</strong></h3>
<ul>
<li>Insulation: <strong>3/5</strong>
</li>
<li>Waterproofness: <strong>5/5</strong>
</li>
<li>Windproofness: <strong>5/5</strong>
</li>
<li>Breathability: <strong>4/5</strong>
</li>
<li>Lightness: <strong>4/5</strong>
</li>
</ul>
<ul>
<li>Temperature: <strong>10°C - 18°C / 50°F - 64°F</strong>
</li>
<li>Fit: <strong>Race</strong>
</li>
</ul>
<p>The next generation of Foul Weather Race Equipment has arrived. The Gabba R is more protective and more aerodynamic than ever before. It''s made to keep up with the demands of the pro peloton, where every watt counts. It''s tested in the wind tunnel as our fastest jacket, so you know you aren''t sacrificing any speed in order to stay dry. The waterproof stretch fabric fits close to the body without inhibiting freedom of movement. The sleeves are tailored to fit long and close to the arm for an aero fit. We''ve provided three mesh back pockets to store what you might need to access quickly in wet conditions, but the mesh makes sure the pockets can''t fill with water and weigh you down. On the drop tail, which provides extra protection from road spray, we''ve added a reflective stripe for greater visibilty. We''ve again raised the bar for what Foul Weather Race Equipment should be.</p>', array['castelli-gabba-r-mens/1.png', 'castelli-gabba-r-mens/2.png', 'castelli-gabba-r-mens/3.png', 'castelli-gabba-r-mens/4.png', 'castelli-gabba-r-mens/5.png']::text[], 'new', 7, '2025-05-20'::date, false, false),
  ('castelli-gabba-ros-2-jacket-mens', 'Castelli Gabba RoS 2 Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>This is the original jacket/jersey that started an entire new product class: the Gabba. It''s a water-resistant short-sleeve jacket that''s equally ideal for dry conditions. Made to be worn with our Nano Flex arm warmers, it allows you to keep your core warm without overheating.</p>
<br><p>In 2010 Castelli introduced the Gabba to the pros and changed the way pros race in the rain and cold. And the way they dress for cool-weather training. The Gabba also happens to be the perfect cool-weather piece for all the non-pro cyclists out there because of how it keeps your core warm and dry while not being too hot. The latest Gabba is the fifth generation, and this current version is essentially waterproof while maintaining the breathability and wind protection that have always made the Gabba so good. It uses two separate Castelli-exclusive GORE-TEX INFINIUM™ WINDSTOPPER® fabrics: warmer and 100% waterproof over the front, shoulders, and sleeves, along with a lighter, more breathable, and stretchier fabric on the back that is sufficiently protective against the water that hits your back. The "2" part of the name refers to the updates to the latest version, including a YKK® Vislon® zipper with both top and bottom openings for more adjustable ventilation. The reflectivity on the back is more visible, the seam at the top of the shoulder has been moved to the back, and the three pockets hold more gear. Typically, we''ll layer the Gabba over a sleeveless base layer and short-sleeve jersey, and pair it with Nano Flex arm warmers for cooler and/or wet conditions, or Seamless warmers for mild conditions. The Gabba RoS 2 is a must-have for autumn and spring riding.</p>
<br><p><strong>Product features</strong></p>
<br><ul>
<br><li>The 5th generation of the Gabba, from the inventors of the Gabba</li>
<br><li>Now more water-resistant than ever</li>
<br><li>Castelli-exclusive GORE-TEX INFINIUM™ WINDSTOPPER® 205 Warm brushed water-resistant fabric on front-facing surfaces</li>
<br><li>GORE-TEX INFINIUM™ WINDSTOPPER® 203 Stretch on rear-facing surfaces for greater stretch and breathability</li>
<br><li>Taped shoulder seams for extra rain protection</li>
<br><li>Top- and bottom-opening YKK® Vislon® zipper for easy sliding, covered for additional wind and rain protection</li>
<br><li>3 rear pockets</li>
<br><li>Reflective panel at bottom of pockets</li>
<br>
</ul>
<br><p><strong>Technical Features</strong></p>
<br>
<br>
<br><ul>
<br><li>Insulation: 4/5</li>
<br><li>Waterproofness: 3/5</li>
<br><li>Windproofness: 5/5</li>
<br><li>Breathability: 4/5</li>
<br><li>Lightness: 3/5</li>
<br>
</ul>
<br>

<br>

<br><ul>
<br><li>Weight: 341gm
</li>
<br><li>Temperature: 9°C - 16°C / 48°F - 61°F
</li>
<br><li>
<br>Fit: Performance

<br>
</li>
<br>
</ul>', array['castelli-gabba-ros-2-jacket-mens/1.jpg', 'castelli-gabba-ros-2-jacket-mens/2.jpg', 'castelli-gabba-ros-2-jacket-mens/3.jpg', 'castelli-gabba-ros-2-jacket-mens/4.jpg', 'castelli-gabba-ros-2-jacket-mens/5.jpg']::text[], 'new', 8, '2023-06-14'::date, false, false),
  ('castelli-gabba-ros-2-jacket-womens-1', 'Castelli Gabba RoS 2 Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>This is the original jacket/jersey that started an entire new product class: the Gabba. It''s a water-resistant short-sleeve jacket that''s equally ideal for dry conditions. Made to be worn with our Nano Flex arm warmers, it allows you to keep your core warm without overheating.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>The 5th generation of the Gabba, from the inventors of the Gabba</li>
<br><li>Now more water-resistant than ever</li>
<br><li>Castelli-exclusive GORE-TEX INFINIUM™ WINDSTOPPER® 205 Warm brushed water-resistant fabric on front-facing surfaces</li>
<br><li>GORE-TEX INFINIUM™ WINDSTOPPER® 203 Stretch on rear-facing surfaces for greater stretch and breathability</li>
<br><li>Taped shoulder seams for extra rain protection</li>
<br><li>Top- and bottom-opening YKK® Vislon® zipper for easy sliding, covered for additional wind and rain protection</li>
<br><li>3 rear pockets</li>
<br><li>Reflective panel at bottom of pockets</li>
<br>
</ul><br><h3><strong>Technical features</strong></h3><br><ul>
<br><li>Insulation: <strong>4/5</strong>
</li>
<br><li>Waterproofness: <strong>3/5</strong>
</li>
<br><li>Windproofness: <strong>5/5</strong>
</li>
<br><li>Breathability: <strong>4/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>281gm</strong>
</li>
<br><li>Temperature: <strong>9°C - 16°C / 48°F - 61°F</strong>
</li>
<br><li>Fit: <strong>Performance</strong>
</li>
<br>
</ul><br><p>In 2010 Castelli introduced the Gabba to the pros and changed the way pros race in the rain and cold. And the way they dress for cool-weather training. The Gabba also happens to be the perfect cool-weather piece for all the non-pro cyclists out there because of how it keeps your core warm and dry while not being too hot. The latest Gabba is the fifth generation, and this current version is essentially waterproof while maintaining the breathability and wind protection that have always made the Gabba so good. It uses two separate Castelli-exclusive GORE-TEX INFINIUM™ WINDSTOPPER® fabrics: warmer and 100% waterproof over the front, shoulders, and sleeves, along with a lighter, more breathable, and stretchier fabric on the back that is sufficiently protective against the water that hits your back. The "2" part of the name refers to the updates to the latest version, including a YKK® Vislon® zipper with both top and bottom openings for more adjustable ventilation. The reflectivity on the back is more visible, the seam at the top of the shoulder has been moved to the back, and the three pockets hold more gear. Typically, we''ll layer the Gabba over a sleeveless base layer and short-sleeve jersey, and pair it with Nano Flex arm warmers for cooler and/or wet conditions, or Seamless warmers for mild conditions. The Gabba RoS 2 W is a must-have for autumn and spring riding.</p>', array['castelli-gabba-ros-2-jacket-womens-1/1.jpg', 'castelli-gabba-ros-2-jacket-womens-1/2.jpg', 'castelli-gabba-ros-2-jacket-womens-1/3.jpg', 'castelli-gabba-ros-2-jacket-womens-1/4.jpg', 'castelli-gabba-ros-2-jacket-womens-1/5.jpg']::text[], 'new', 5, '2023-06-14'::date, false, false),
  ('castelli-gabba-ros-womens', 'Castelli Gabba RoS Women''s', 'castelli', 'apparel', 'jackets', '<p>This is the original jacket/jersey that started an entire new product class: the Gabba. It''s a water-resistant short-sleeve jacket that''s equally ideal for dry conditions. Made to be worn with our Nano Flex arm warmers, it allows you to keep your core warm without overheating.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>The 4th generation of the Gabba from the inventors of the Gabba</li>
<br><li>Now more waterresistant than ever</li>
<br><li>Castelli exclusive GORE-TEX INFINIUM™ WINDSTOPPER® 205 Warm brushed waterresistant fabric on front-facing surfaces</li>
<br><li>GORE-TEX INFINIUM™ 203 WINDSTOPPER® Stretch on rear-facing surfaces for extra stretch and breathability</li>
<br><li>Taped shoulder seams (reflective for color 085) for extra rain protection</li>
<br><li>YKK® Vislon® zipper for easy sliding, covered for extra wind and rain protection</li>
<br><li>2 rear pockets with pump sleeve are easily accessed with gloved hands</li>
<br><li>Dropped tail with large black reflective panel</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>3/5</strong>
</li>
<br><li>Waterproofness: <strong>4/5</strong>
</li>
<br><li>Windproofness: <strong>3/5</strong>
</li>
<br><li>Breathability: <strong>4/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>284gm</strong>
</li>
<br><li>Temperature: <strong>9°C - 16°C / 48°F - 61°F</strong>
</li>
<br><li>Fit: <strong>Tailored</strong>
</li>
<br>
</ul><br><p><strong>HOW COME NO ONE EVER MADE A BETTER GABBA?</strong> In 2010 Castelli introduced the Gabba to the pros and changed the way pros race in the rain. And cold. And ride in training. Every other performance cyclist soon saw the need for a Gabba in his or her wardrobe. We''ve made some minor updates along the way, but for the fourth-generation Gabba we started with a clean slate to make a significant upgrade. That involved moving it to near waterproof levels, which meant developing a new exclusive GORE-TEX INFINIUM™ WINDSTOPPER® fabric. We made the front-facing fabric warmer with a light brushing, while the rear-facing fabrics are lighter yet more water repellent than the previous Gabba. We made it better in the rain through seam sealing on the shoulders and a covered zipper. Based on Quickstep Grenadiers testing we figured it''s better to have two pockets that are easier to access with gloved hands, though we provide an internal sleeve to keep your pump or other items from moving around. It''s not easy to make a better Gabba. We''ll keep trying.</p>', array['castelli-gabba-ros-womens/1.jpg', 'castelli-gabba-ros-womens/2.jpg', 'castelli-gabba-ros-womens/3.jpg']::text[], 'new', 4, '2021-08-22'::date, false, false),
  ('castelli-go-jacket-mens', 'Castelli Go Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>The Go Jacket is Castelli''s most versatile jacket. It can be used as a light shell in mild conditions or go to cold conditions by adding insulating layers underneath. Stretchy, comfortable, breathable, windproof, water resistant, elegant, and lightweight, this jacket has it all. Get out and Go.</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 3/5</p>
<p>Waterproofness 3/5</p>
<p>Windproofness 5/5</p>
<p>Breathability 3/5</p>
<p>Lightness 3/5</p>

<ul>
<li>Weight: 357<em> g</em>
</li>
<li>Temperature:4°C - 14°C / 39°F - 57°F</li>
<li>
Fit: Regular
</li>
</ul>

<p>PRODUCT FEATURES</p>

<p>Full soft-shell construction with GORE-TEX INFINIUM™ WINDSTOPPER® 150 keeps cold wind out while offering exceptional breathability</p>
<p>Excellent stretch with neutral fit for extra comfort</p>
<p>Internal stretch wrist closure for perfect glove interface</p>
<p>Zippered chest pocket</p>
<p>YKK® Vislon® zipper with rubberized zipper pull</p>
<p>No-sew waist construction for clean, technical look</p>
<p>3 rear pockets</p>
<p>Large reflective strip across pockets for low-light visibility</p>

<p>If you''re looking for just one jacket to do it all, start here. We used our lightest GORE-TEX INFINIUM™ WINDSTOPPER® three-layer stretch fabric, which makes it great for milder conditions, and the stretch gives it a great fit. It''s the same outer fabric as we use for our Alpha RoS 2 Jacket, called "The benchmark in how the best winter jackets should perform" by Cyclingnews.com, but the Go Jacket forgoes the Alpha''s integrated liner so you can decide how much insulation you need. Add a Flanders Warm base layer and thermal jersey to extend the comfort range to subfreezing temperatures. But the fabric is only the start. We''ve tailored the fit to be close to body but not too close. It gives a good drape to the jacket, rounded out by details like the no-sew finishing to the hem and the zippered colored chest pocket. The hidden internal cuffs are a nice comfort touch, and you''ll appreciate how they eliminate drafts from the wrist. There are three pockets on the back, with a large reflective strip stretching across the entire bottom of the pockets for nighttime visibility. Where does this jacket fit in our line? It''s similar in warmth to the Perfetto RoS Long Sleeve, but it has a more tailored and elegant look, with a slightly more relaxed fit, and it''s not quite as protective in wet weather.</p>', array['castelli-go-jacket-mens/1.webp', 'castelli-go-jacket-mens/2.webp']::text[], 'new', 1, '2025-04-09'::date, false, true),
  ('castelli-go-jacket-womens', 'Castelli Go Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>The Go Jacket is Castelli''s most versatile jacket. It can be used as a light shell in mild conditions or go to cold conditions by adding insulating layers underneath. Stretchy, comfortable, breathable, windproof, water resistant, elegant, and lightweight, this jacket has it all. Get out and Go.</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 4/5</p>
<p>Waterproofness 3/5</p>
<p>Windproofness 5/5</p>
<p>Breathability 4/5</p>
<p>Lightness 3/5</p>

<ul>
<li>Weight: 330<em> g</em>
</li>
<li>Temperature:4°C - 14°C / 39°F - 57°F</li>
<li>
Fit: Regular
</li>
</ul>

<p>PRODUCT FEATURES</p>

<p>Full soft-shell construction with GORE-TEX INFINIUM™ WINDSTOPPER® 150 keeps cold wind out while offering exceptional breathability</p>
<p>Excellent stretch with neutral fit for extra comfort</p>
<p>Stretch panel at wrist</p>
<p>Zippered front pocket</p>
<p>YKK® Vislon® zipper with rubberized zipper pull</p>
<p>No-sew waist construction for clean, technical look</p>
<p>3 rear pockets</p>
<p>Large reflective strip across pockets for low-light visibility</p>

<p>If you''re looking for just one jacket to do it all, start here. We used our lightest GORE-TEX INFINIUM™ WINDSTOPPER® three-layer stretch fabric, which makes it great for milder conditions, and the stretch gives it a great fit. It''s the same outer fabric as we use for our Alpha RoS 2 Jacket, called "The benchmark in how the best winter jackets should perform" by Cyclingnews.com, but the Go Jacket forgoes the Alpha''s integrated liner so you can decide how much insulation you need. Add a Flanders Warm base layer and thermal jersey to extend the comfort range to subfreezing temperatures. But the fabric is only the start. We''ve tailored the fit to be close to body but not too close. It gives a good drape to the jacket, rounded out by details like the no-sew finishing to the hem and the zippered colored front pocket. The hidden internal cuffs are a nice comfort touch, and you''ll appreciate how they eliminate drafts from the wrist. There are three pockets on the back, with a large reflective strip stretching across the entire bottom of the pockets for nighttime visibility. Where does this jacket fit in our line? It''s similar in warmth to the Perfetto RoS W Long Sleeve, but it has a more tailored and elegant look, with a slightly more relaxed fit, and it''s not quite as protective in wet weather.</p>', array['castelli-go-jacket-womens/1.webp', 'castelli-go-jacket-womens/2.webp', 'castelli-go-jacket-womens/3.webp', 'castelli-go-jacket-womens/4.webp']::text[], 'new', 2, '2025-04-09'::date, false, false),
  ('castelli-perfetto-air-jacket-mens', 'Castelli Perfetto Air Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>This jacket uses Castelli''s Ristretto Technology, which restricts the amount of airflow while allowing just enough to keep you drier on the inside. The perfect jacket to keep you drier and warmer so you can stay out on the bike longer and more comfortably.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 4/5</p><p>Waterproofness 3/5</p><p>Windproofness 4/5</p><p>Breathability 4/5</p><p>Lightness 5/5</p><p><br></p><ul>
<li>Weight:345<em> g</em>
</li>
<li>Temperature:5°C - 15°C / 41°F - 59°F</li>
<li>Fit:Regular</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Ristretto Technology for unparalleled breathability, warmth, and dryness</p><p>Ristretto Lite fabric technology with PFAS-free DWR treatment</p><p>Added protection right where you need it</p><p>Top- and bottom-opening YKK® Vislon® easy-sliding zipper</p><p>3 lie-flat pockets with security lip</p><p>Engineered waist with raw-cut lie-flat back to keep out cold air</p><p>Reflectivity on back for added visibility</p><p><br></p><p>Castelli partnered with fabric innovator ITTTAI® to create an exclusive fabric, combining advanced stretch, breathability, and water protection through ITTTAI®''s membrane and lamination expertise.</p><p>A new way of dressing for wintertime riding, the Perfetto Air Jacket will help keep you drier and warmer. To develop the jacket, we had to create our new Ristretto Technology fabrics. This technology carefully fine-tunes the amount of air that can pass through but also, and more importantly, the amount of moisture from the inside that can make its way out. Because if you are drier, you are warmer, and you are more comfortable. And if you are more comfortable, you can stay out on the bike longer. Not only does the Ristretto Technology fabric breathe, it''s also stretchy, allowing for a jacket that fits like never before. To make the Perfetto Air Jacket, we''ve used our Ristretto Lite fabric throughout the jacket for maximum breathability and comfort. The stretch of the fabric allows for a close-to-body fit with total freedom of movement. Then, since this is a winter jacket, we''ve added extra insulation in strategic places, right where the air hits you, for added warmth. This jacket works great with a short-sleeve base layer on cool days and our Flanders Base Layer on cold days, creating a large temperature range for the Perfetto Air Jacket. And you don''t need to worry if you get caught in a passing shower or the roads are wet, because the Ristretto Lite fabric has a PFAS-free DWR treatment to shed any water. For those days when you know it''s going to be wet and rainy, this jacket pairs perfectly with the Ultra Rain Cape for full protection with close-to-body fit.</p>', array['castelli-perfetto-air-jacket-mens/1.webp', 'castelli-perfetto-air-jacket-mens/2.webp', 'castelli-perfetto-air-jacket-mens/3.webp', 'castelli-perfetto-air-jacket-mens/4.webp', 'castelli-perfetto-air-jacket-mens/5.webp']::text[], 'new', 11, '2026-04-20'::date, false, false),
  ('castelli-perfetto-air-jacket-womens', 'Castelli Perfetto Air Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>This jacket uses Castelli''s Ristretto Technology, which restricts the amount of airflow while allowing just enough to keep you drier on the inside. The perfect jacket to keep you drier and warmer so you can stay out on the bike longer and more comfortably.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 4/5</p><p>Waterproofness 4/5</p><p>Windproofness 3/5</p><p>Breathability 4/5</p><p>Lightness 5/5</p><ul>
<li>Weight:237<em> g</em>
</li>
<li>Temperature: 5°C - 15°C / 41°F - 59°F</li>
<li>Fit:Regular</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Ristretto Technology for unparalleled breathability, warmth, and dryness</p><p>Ristretto Lite fabric technology with PFAS-free DWR treatment</p><p>Added insulation placed exactly where you need it most to keep you warm</p><p>Top- and bottom-opening YKK® Vislon® easy-sliding zipper</p><p>3 lie-flat pockets with security lip</p><p>Engineered waist with raw-cut lie-flat back to keep out cold air</p><p>Reflectivity on back for added visibility</p><p>Castelli partnered with fabric innovator ITTTAI® to create an exclusive fabric, combining advanced stretch, breathability, and water protection through ITTTAI®''s membrane and lamination expertise.</p>', array['castelli-perfetto-air-jacket-womens/1.webp', 'castelli-perfetto-air-jacket-womens/2.webp', 'castelli-perfetto-air-jacket-womens/3.webp', 'castelli-perfetto-air-jacket-womens/4.webp', 'castelli-perfetto-air-jacket-womens/5.webp']::text[], 'new', 4, '2026-04-20'::date, false, false),
  ('castelli-raddoppia-3-jacket-mens', 'Castelli Raddoppia 3 Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>The Raddoppia 3 Jacket is clearly designed to hit all the prerequisites for winter riding without added complications: windproof, warmly insulated, water repellent, breathable, and with 360° reflectivity, along with Castelli''s functional attention to detail and fit.</p>

<p>This is the workhorse jacket in the Castelli winter lineup. We use our warmest GORE-TEX INFINIUM™ WINDSTOPPER® fleece-lined fabric on the front and back to keep the wind out and the heat in. For the back of the sleeves and side panels we use a lighter-weight GORE-TEX INFINIUM® WINDSTOPPER® for better fit and breathability. We keep the lines clean and don''t add anything superfluous — unless you think the big reflective stripes front and back are superfluous. Functional details are all there, as you expect from Castelli: an easy-sliding YKK® Vislon® zipper and three big pockets for storage, along with a zippered key pocket for valuables. The Raddoppia 3 Jacket will keep you warm and seen all winter long.</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 5/5</p>
<p>Waterproofness 3/5</p>
<p>Windproofness 5/5</p>
<p>Breathability 3/5</p>
<p>Lightness 3/5</p>
<p><br></p>

<ul>
<li>Weight: 510<em> g</em>
</li>
<li>Temperature: -3°C - 10°C / 27°F - 50°F</li>
<li>
Fit: Regular
</li>
</ul>

<p>PRODUCT FEATURES</p>

<p>Warm and reflective, the ideal winter cycling jacket</p>
<p>GORE-TEX INFINIUM™ WINDSTOPPER® X-Fast fabric with fleece backing for warmth</p>
<p>GORE-TEX INFINIUM™ WINDSTOPPER® 150 lighter-weight side panels and sleeve inserts for extra stretch and ventilation</p>
<p>Large reflective stripes on chest and rear pocket</p>
<p>YKK® Vislon® zipper for easy-sliding ventilation adjustment while riding</p>
<p>3 rear pockets with 4th zippered key/money pocket</p>
<p>Drop-tail panel for extra protection from wheel spray</p>', array['castelli-raddoppia-3-jacket-mens/1.webp', 'castelli-raddoppia-3-jacket-mens/2.webp', 'castelli-raddoppia-3-jacket-mens/3.webp', 'castelli-raddoppia-3-jacket-mens/4.webp']::text[], 'new', 1, '2025-04-09'::date, false, false),
  ('castelli-slicker-pro-jacket-mens', 'Castelli Slicker Pro Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>The waterproof jacket for when you know you have to ride in the rain. Our pros love this jacket because it keeps them dry, breathes, fits great, and has pockets. All this and it packs away into a jersey pocket.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Castelli Microshell 2-layer ultralight 50 g/m2 waterproof breathable fabric with PFC-free external microporous polyurethane membrane</li>
<br><li>Stretch waterproof side panel, shoulder, and sleeve give close-to-body fit</li>
<br><li>Stretch wrist closure seals wrist and can cover gloves to keep water out</li>
<br><li>YKK® Vislon® waterproof zipper</li>
<br><li>2 external rear pockets</li>
<br><li>Silicone elastic waistband</li>
<br><li>Fully taped seams for total waterproof construction</li>
<br><li>Reflective trim</li>
<br><li>Packs up small to easily stash away in jersey pocket</li>
<br>
</ul><br><h3><strong>Technical Features</strong></h3><br><ul>
<br><li>Insulation: <strong>4/5</strong>
</li>
<br><li>Waterproofness: <strong>5/5</strong>
</li>
<br><li>Windproofness: <strong>5/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>4/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>272gm</strong>
</li>
<br><li>Temperature: <strong>4°C - 18°C / 39°F - 64°F</strong>
</li>
<br><li>Fit: <strong>Performance</strong>
</li>
<br>
</ul><br><p>If your passion, or your job, is riding bikes, then you''ll eventually need to spend some hours in bad weather. The Slicker Pro is the jacket you need. The fabric sheds water at an amazing rate but also breathes to keep you from getting wet from the inside. The stretch inserts allow us to create a close, more aerodynamic fit so the jacket doesn''t flap in the breeze like those old-school rain jackets. Since this jacket might be on for a while, we''ve added pockets to the back for quick access to what you might need. And since this is a rain jacket, we''ve added drain holes to the pockets so they don''t fill up with water. Even with all this, the jacket will still pack down to fit in a pocket should the rain stop and the sun come out. Its packability also means you can easily take it with you if you know rain is likely before you finish your ride.</p>', array['castelli-slicker-pro-jacket-mens/1.webp', 'castelli-slicker-pro-jacket-mens/2.webp', 'castelli-slicker-pro-jacket-mens/3.webp', 'castelli-slicker-pro-jacket-mens/4.webp', 'castelli-slicker-pro-jacket-mens/5.webp']::text[], 'new', 0, '2023-06-12'::date, false, false),
  ('castelli-squadra-stretch-jacket-mens', 'Castelli Squadra Stretch Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>The Squadra Stretch shell keeps the wind off on cool-weather rides or long descents, while the stretch panels keep the jacket fitting close to body and eliminate flapping fabric.</p>
<p>This is a modern interpretation of the wind shell jacket, the one you keep in your pocket for a long descent or put on for the first hour of the ride until the day warms up. That jacket used to be a simple affair — a nylon shell — but the lack of stretch meant that it had to be cut on the generous side to fit all body shapes, both on and off the bike. We''ve completely reimagined what the shell jacket should be and how it''s constructed. We''ve added panels on the sides and the sleeves in a very high-stretch yet tightly knit fabric that allows us to give the jacket a modern, close-to-body fit for aero gains on any terrain, and it actually keeps more heat in than a jacket that''s flapping about. We''ve kept it very compact so that it can pack away into minimal space in a jersey pocket. The stretch panels are treated for water repellency, which will help in a light mist, but this is not meant to be a true rain jacket.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Coated ripstop nylon front and back and front of sleeves to keep wind off</li>
<li>Tightly knit stretch panels on sides and sleeves allow for perfect fit</li>
<li>High collar to keep drafts out</li>
<li>Reflective details on chest and lower back for low-light visibility</li>
<li>Weight: 138gm
</li>
<li>Temperature: 10°C - 18°C / 50°F - 64°F
</li>
<li>
Fit: Performance

</li>
</ul>', array['castelli-squadra-stretch-jacket-mens/1.png', 'castelli-squadra-stretch-jacket-mens/2.png', 'castelli-squadra-stretch-jacket-mens/3.png', 'castelli-squadra-stretch-jacket-mens/4.png', 'castelli-squadra-stretch-jacket-mens/5.jpg']::text[], 'new', 7, '2026-06-29'::date, false, false),
  ('castelli-squall-shell-jacket-mens', 'Castelli Squall Shell Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>caste</p>

<p>Made to take with you on days when it looks like rain, but it''s lightweight and packable so you can take it on every ride just in case. This jacket is designed to keep you dry in case of a shower or to take the chill off when you descend from the mountains.</p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 3/5</p>
<p>Waterproofness 5/5</p>
<p>Windproofness 5/5</p>
<p>Breathability 3/5</p>
<p>Lightness 5/5</p>
<ul>
<li>Weight:114<em> g</em>
</li>
<li>Temperature:4°C - 18°C / 39°F - 64°F</li>
<li>Fit:Regular </li>
</ul>

<p>PRODUCT FEATURES</p>
<p>Lightweight construction for packability</p>
<p>Stretch 2-layer fabric with waterproof membrane</p>
<p>Taped seams</p>
<p>Reflective stripe on back for added visibility</p>
<p>Elastic at wrist and waist to keep out water and cold air</p>', array['castelli-squall-shell-jacket-mens/1.jpg', 'castelli-squall-shell-jacket-mens/2.jpg', 'castelli-squall-shell-jacket-mens/3.jpg', 'castelli-squall-shell-jacket-mens/4.jpg', 'castelli-squall-shell-jacket-mens/5.jpg']::text[], 'new', 5, '2025-06-19'::date, false, false),
  ('castelli-squall-shell-jacket-womens', 'Castelli Squall Shell Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>Made to take with you on days when it looks like rain, but it''s lightweight and packable so you can take it on every ride just in case. The Squall Shell Jacket is designed to keep you dry in case of a shower or to take the chill off when you descend from the mountains. This shell jacket is stretchy enough to fit on over a jacket while still not being too loose when put on over just a jersey. To make sure the rain stays out, the seams are taped and we''ve added elastic at the wrists and waist. Reflective tape on the back gives you that extra bit of visibility.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 5/5</p><p>Windproofness 5/5</p><p>Breathability 3/5</p><p>Lightness 5/5</p><ul>
<li>Weight:100<em> g</em>
</li>
<li>Temperature: 4°C - 18°C / 39°F - 64°F</li>
<li>Fit:Regular</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Lightweight construction for packability</p><p>Stretch 2-layer fabric with waterproof membrane</p><p>Taped seams</p><p>Reflective stripe on back for added visibility</p><p>Elastic at wrist and waist to keep out water and cold air</p><p><br></p><p><br></p>', array['castelli-squall-shell-jacket-womens/1.webp', 'castelli-squall-shell-jacket-womens/2.webp', 'castelli-squall-shell-jacket-womens/3.webp', 'castelli-squall-shell-jacket-womens/4.webp', 'castelli-squall-shell-jacket-womens/5.webp']::text[], 'new', 10, '2026-04-20'::date, false, false),
  ('castelli-tempesta-lite-jacket-mens-1', 'Castelli Tempesta Lite Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>The waterproof, packable jacket to take on all your rides. It''s highly breathable and extremely light, with a great fit. Perfect to have if there is a chance of rain or if you just want extra protection on a long descent.</p>
<p>Some days you look out the window and the clouds in the sky look ominous, but you just want to ride. The Tempesta Lite is the jacket to throw in your pocket when you head out the door. It''s extremely light so you''ll hardly notice it''s in your pocket, and it packs down so small (about half a pocket) that you won''t sacrifice any storage space if you want to bring it with you "just in case." The fabric is waterproof so you''ll stay dry if those clouds do decide to open up, but it''s breathable too, to keep you from getting wet from the inside. It''s also the perfect piece to put on for those long descents when you want to keep the wind off your chest and arms.</p>
<p><strong>Product features</strong></p>
<ul>
<li>The lightest and most packable fully waterproof Castelli GORE-TEX® jacket</li>
<li>GORE-TEX® waterproof fabric is fully waterproof yet offers unmatched breathability</li>
<li>The entire lower back is in GORE-TEX® Topo stretch fabric to allow the jacket to expand in diameter if you have a few extra winter kilos or full pockets</li>
<li>Reflective tape on back of both sleeves for high visibility in low-light conditions</li>
<li>YKK® Vislon® waterproof zipper slides easily for ventilation adjustments</li>
<li>Internal wrist gaiter seals wrist and integrates with glove to keep water out</li>
</ul>
<p><strong>Technical Features</strong></p>
<ul>
<li>Insulation: 4/5</li>
<li>Waterproofness: 5/5</li>
<li>Windproofness: 5/5</li>
<li>Breathability: 3/5</li>
<li>Lightness: 4/5</li>
</ul>
<ul>
<li>Weight: 216gm
</li>
<li>Temperature: 4°C - 18°C
</li>
<li>
Fit: Performance

</li>
</ul>', array['castelli-tempesta-lite-jacket-mens-1/1.jpg', 'castelli-tempesta-lite-jacket-mens-1/2.jpg', 'castelli-tempesta-lite-jacket-mens-1/3.jpg', 'castelli-tempesta-lite-jacket-mens-1/4.jpg', 'castelli-tempesta-lite-jacket-mens-1/5.jpg']::text[], 'new', 6, '2025-05-20'::date, false, false),
  ('castelli-tempesta-lite-jacket-womens-1', 'Castelli Tempesta Lite Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>The waterproof, packable jacket to take on all your rides. It''s highly breathable and extremely light, with a great fit. Perfect to have if there is a chance of rain or if you just want extra protection on a long descent.</p>
<p>Some days you look out the window and the clouds in the sky look ominous, but you just want to ride. The Tempesta Lite is the jacket to throw in your pocket when you head out the door. It''s extremely light so you''ll hardly notice it''s in your pocket, and it packs down so small (about half a pocket) that you won''t sacrifice any storage space if you want to bring it with you "just in case." The fabric is waterproof so you''ll stay dry if those clouds do decide to open up, but it''s breathable too, to keep you from getting wet from the inside. It''s also the perfect piece to put on for those long descents when you want to keep the wind off your chest and arms.</p>
<p><strong>Product features</strong></p>
<ul>
<li>The lightest and most packable fully waterproof Castelli GORE-TEX® jacket</li>
<li>GORE-TEX® waterproof fabric is fully waterproof yet offers unmatched breathability</li>
<li>The entire lower back is in GORE-TEX® Topo stretch fabric to allow the jacket to expand in diameter if you have a few extra winter kilos or full pockets</li>
<li>Reflective tape on back of both sleeves for high visibility in low-light conditions</li>
<li>YKK® Vislon® waterproof zipper slides easily for ventilation adjustments</li>
<li>Internal wrist gaiter seals wrist and integrates with glove to keep water out</li>
</ul>
<p><strong>Technical Features</strong></p>
<ul>
<li>Insulation: 4/5</li>
<li>Waterproofness: 5/5</li>
<li>Windproofness: 5/5</li>
<li>Breathability: 3/5</li>
<li>Lightness: 4/5</li>
</ul>
<ul>
<li>Weight: 190gm
</li>
<li>Temperature: 4°C - 18°C
</li>
<li>
Fit: Performance

</li>
</ul>', array['castelli-tempesta-lite-jacket-womens-1/1.jpg', 'castelli-tempesta-lite-jacket-womens-1/2.jpg', 'castelli-tempesta-lite-jacket-womens-1/3.jpg', 'castelli-tempesta-lite-jacket-womens-1/4.jpg', 'castelli-tempesta-lite-jacket-womens-1/5.jpg']::text[], 'new', 4, '2025-05-20'::date, false, false),
  ('castelli-transition-2-jacket-womens', 'Castelli Transition 2 Jacket Women''s', 'castelli', 'apparel', 'jackets', '<p>This mid-weight jacket is perfect for fall and spring rides when you want to cut the chill but don''t want to overheat. Add an extra insulating layer and it can take you through most of the winter.</p>
<h3><strong>Product features</strong></h3>
<ul>
<li>Our lightest jacket for fall or mild winter riding</li>
<li>GORE-TEX INFINIUM™ WINDSTOPPER® front and sleeves for wind protection with exceptional breathability</li>
<li>Warmer fleece fabric on back for additional breathability</li>
<li>Asymmetrical YKK® Vislon® zipper</li>
<li>3 rear pockets</li>
</ul>
<h3><strong>Technical Features</strong></h3>
<ul>
<li>Insulation: <strong>3/5</strong>
</li>
<li>Waterproofness: <strong>2/5</strong>
</li>
<li>Windproofness: <strong>4/5</strong>
</li>
<li>Breathability: <strong>4/5</strong>
</li>
<li>Lightness: <strong>4/5</strong>
</li>
</ul>
<ul>
<li>Weight: <strong>311gm</strong>
</li>
<li>Temperature: <strong>8°C - 16°C / 46°F - 62°F</strong>
</li>
<li>Fit: <strong>Regular</strong>
</li>
</ul>
<p>This jacket is ideal for those days when it''s not cold enough to cover your ears — in warmer fall and spring temperatures, or if you''re lucky enough to live where winter means mild conditions. The GORE-TEX INFINIUM™ WINDSTOPPER® mid-weight fabric on the front keeps the wind at bay, while our fleecy Warmer fabric on the back allows moisture and excess heat to escape. It provides a surprising amount of protection without causing overheating. You can also add an insulating layer underneath and use it in quite cold conditions.</p>', array['castelli-transition-2-jacket-womens/1.jpg', 'castelli-transition-2-jacket-womens/2.jpg', 'castelli-transition-2-jacket-womens/3.jpg', 'castelli-transition-2-jacket-womens/4.jpg', 'castelli-transition-2-jacket-womens/5.jpg']::text[], 'new', 4, '2025-05-20'::date, false, false),
  ('castelli-unlimited-rain-jacket-mens', 'Castelli Unlimited Rain Jacket Men''s', 'castelli', 'apparel', 'jackets', '<p>Perfect for on or off the bike to keep you protected from the rain. The Unlimited Rain Jacket offers full water protection with a cut that works whether you''re out riding or walking into the café.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 5/5</p><p>Windproofness 5/5</p><p>Breathability 3/5</p><p>Lightness 3/5</p><p><br></p><ul>
<li>Weight:350<em> g</em>
</li>
<li>Temperature:4°C - 14°C / 39°F - 57°F
</li>
<li>Fit:Tailored
</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>PFAS-free PU membrane for water protection</p><p>Taped seams to keep water from seeping in</p><p>2 front pockets with zips to secure your items</p><p>Hood for under-helmet use</p><p>Drawstring waist closure to keep out water spray and cold air</p><p>Reflective elastic at wrist for added visibility and to keep out water and cold air</p><p>Classic trench coat ventilation on back to help regulate temperature</p><p>Cut to be worn on and off the bike</p>', array['castelli-unlimited-rain-jacket-mens/1.jpg', 'castelli-unlimited-rain-jacket-mens/2.jpg', 'castelli-unlimited-rain-jacket-mens/3.jpg', 'castelli-unlimited-rain-jacket-mens/4.jpg', 'castelli-unlimited-rain-jacket-mens/5.jpg']::text[], 'new', 3, '2025-06-19'::date, false, false),
  ('mens-packable-down-jacket', 'Men''s Packable Down Jacket', 'specialized', 'apparel', 'jackets', '<p>Whether you’re waiting at the meetup spot or suiting up for the descent, our Men’s Packable Down Jacket is built for the coldest parts of the ride. ALLIED Feather + Down Fill and PrimaLoft® Bio™ combine to create lightweight insulation that keeps you warm when you need it to but packs small when it’s time to stow the cycling jacket in a jersey pocket. To help block the chill when temperatures drop, a roomy hood fits over your helmet to lock in the heat. The semi-form fit makes it easy to layer over your other cold weather gear.</p>', array['mens-packable-down-jacket/1.jpg', 'mens-packable-down-jacket/2.jpg', 'mens-packable-down-jacket/3.jpg', 'mens-packable-down-jacket/4.jpg', 'mens-packable-down-jacket/5.jpg']::text[], 'new', 6, '2024-08-06'::date, false, false),
  ('mens-sl-pro-wind-jacket', 'Men''s SL Pro Wind Jacket', 'specialized', 'apparel', 'jackets', '<p>The SL Pro Wind Jacket excels on blustery-cold days. With a 100% Recycled Polyester Wind Shell, this jacket keeps wind from chilling your bones, all while being packable enough to throw in a pocket while you head up the next ascent.</p>', array['mens-sl-pro-wind-jacket/1.jpg', 'mens-sl-pro-wind-jacket/2.jpg', 'mens-sl-pro-wind-jacket/3.jpg', 'mens-sl-pro-wind-jacket/4.jpg', 'mens-sl-pro-wind-jacket/5.jpg']::text[], 'new', 2, '2024-08-07'::date, false, false),
  ('spoken-castelli-jacket-equipe-insulated', 'Spoken Castelli Jacket Equipe Insulated', 'mr-rider', 'apparel', 'jackets', '<h3>DESCRIPTION</h3>

<p>Winter jacket for cold temperatures with brushed fleece inside for maximum warmth.</p>
<h3><strong>PRODUCT FEATURES</strong></h3>
<ul>
<li>GORE-TEX INFINIUM™ WINDSTOPPER. X-warm fabric is windproof and breathable with a brushed fleece inner face for warmth</li>
<li>GORE-TEX INFINIUM™ WINDSTOPPER. X-light side panels and back of sleeves for extra stretch</li>
<li>Full-length YKK. Vislon. zipper.</li>
<li>Extended rear panel below pockets for protection from wheel spray.</li>
<li>3 external rear pockets with reflective strip across bottom</li>
</ul>
<ul>
<li>Sizes: <strong>XXS - 4XL</strong>
</li>
<li>Weight: <strong>296g</strong>
</li>
<li>Temperature: <strong>4°C - 14°C</strong>
</li>
</ul>', array['spoken-castelli-jacket-equipe-insulated/1.jpg', 'spoken-castelli-jacket-equipe-insulated/2.jpg']::text[], 'new', 3, '2025-08-01'::date, false, false),
  ('womens-packable-down-jacket', 'Women''s Packable Down Jacket', 'specialized', 'apparel', 'jackets', '<p>Whether you’re waiting at the meetup spot or suiting up for the descent, our Women’s Packable Down Jacket is built for the coldest parts of the ride. ALLIED Feather + Down Fill and PrimaLoft® Bio™ combine to create lightweight insulation that keeps you warm when you need it to but packs small when it’s time to stow the cycling jacket in a jersey pocket. To help block the chill when temperatures drop, a roomy hood fits over your helmet to lock in the heat. The semi-form fit makes it easy to layer over your other cold weather gear.</p>', array['womens-packable-down-jacket/1.jpg', 'womens-packable-down-jacket/2.jpg', 'womens-packable-down-jacket/3.jpg', 'womens-packable-down-jacket/4.jpg', 'womens-packable-down-jacket/5.jpg']::text[], 'new', 8, '2024-08-06'::date, false, false),
  ('womens-sl-pro-wind-jacket', 'Women''s SL Pro Wind Jacket', 'specialized', 'apparel', 'jackets', '<p>The Women’s SL Pro Wind Jacket excels on blustery-cold days. With a 100% Recycled Polyester Wind Shell, this jacket keeps wind from chilling your bones, all while being packable enough to throw in a pocket while you head up the next ascent.</p>', array['womens-sl-pro-wind-jacket/1.jpg', 'womens-sl-pro-wind-jacket/2.jpg', 'womens-sl-pro-wind-jacket/3.jpg', 'womens-sl-pro-wind-jacket/4.jpg', 'womens-sl-pro-wind-jacket/5.jpg']::text[], 'new', 1, '2024-08-07'::date, false, false),

  -- ---- apparel · jerseys ----
  ('castelli-giro-espresso-jersey', 'Castelli #GIRO Espresso Jersey', 'castelli', 'apparel', 'jerseys', '<p>Your new favourite jersey.</p><p>TECHNICAL FEATURES</p><ul>
<li>Weight:144<em> g</em>
</li>
<li>Temperature:18°C - 35°C / 64°F - 95°F</li>
<li>Fit:Tailored</li>
</ul><p>PRODUCT FEATURES</p>
<p>Castelli-engineered Air_O Stretch fabric for breathability, comfort, and perfect fit</p>
<p>Fabric optimized for breathability and aerodynamics</p>
<p>Raw-cut sleeve endings for comfort</p>
<p>3 back pockets with 4th zippered security pocket for valuables</p>
<p>Full-length YKK® Vislon® zipper with easy-use zipper pull</p>
<p>Elastic at waist with silicone to keep jersey in place</p>
<p>Reflective tab for added visibility</p>
<p>UPF 30</p>', array['castelli-giro-espresso-jersey/1.jpg', 'castelli-giro-espresso-jersey/2.jpg', 'castelli-giro-espresso-jersey/3.jpg', 'castelli-giro-espresso-jersey/4.jpg', 'castelli-giro-espresso-jersey/5.jpg']::text[], 'new', 0, '2025-05-14'::date, false, false),
  ('castelli-giro-siena-jersey', 'Castelli #GIRO Siena Jersey', 'castelli', 'apparel', 'jerseys', '<p>The ideal all-around jersey for all your riding.</p><p>TECHNICAL FEATURES</p><ul>
<li>Weight:161<em> g</em>
</li>
<li>Temperature:18°C - 35°C / 64°F - 95°F</li>
<li>Fit:Regular</li>
</ul><p>PRODUCT FEATURES</p>
<p>Strada micromesh ventilated stretch fabric on front, back, and sleeves for great fit and moisture management</p>
<p>Raw-cut sleeve endings</p>
<p>Tailwind dimpled stretch fabric on side panels and pockets for perfect fit</p>
<p>Anatomic side panels that wrap around to back</p>
<p>Full-length YKK® Vislon® zipper, the easiest-sliding zipper available</p>
<p>Silicone gripper elastic at waist to prevent jersey from riding up</p>', array['castelli-giro-siena-jersey/1.jpg', 'castelli-giro-siena-jersey/2.jpg', 'castelli-giro-siena-jersey/3.jpg', 'castelli-giro-siena-jersey/4.jpg', 'castelli-giro-siena-jersey/5.jpg']::text[], 'new', 0, '2025-05-14'::date, false, false),
  ('castelli-giro109-espresso-2-jersey', 'Castelli #Giro109 Espresso 2 Jersey', 'castelli', 'apparel', 'jerseys', '<p>Your favorite jersey. Revised and refined. With an added Giro d''Italia graphic expression.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Weight: 109g</p><p>Fit: Race</p><p><br></p><p>PRODUCT FEATURES</p><p>Castelli-engineered Air_O Stretch fabric for breathability, comfort, and perfect fit</p><p>Fabric optimized for breathability and aerodynamics</p><p>Raw-cut sleeve endings for comfort</p><p>3 back pockets with fourth zippered security pocket for valuables</p><p>Full-length YKK® Vislon® zipper with easy-use zipper pull</p><p>Elastic at waist with silicone to keep jersey in place</p><p>UPF 30</p><p>Espresso 2 Jersey fits 1/2 a size smaller than the previous Espresso edition. We suggest maintaining your existing Castelli size due to the stretch provided by the Castelli-engineered Air_O Stretch fabric.</p>', array['castelli-giro109-espresso-2-jersey/1.webp']::text[], 'new', 4, '2026-05-01'::date, false, false),
  ('castelli-aero-pro-jersey-womens', 'Castelli Aero Pro Jersey Women''s', 'castelli', 'apparel', 'jerseys', '<p>Engineered to be the most aerodynamic jersey for road racing, this jersey features extremely comfortable high-stretch fabric with excellent moisture management and three full-size pockets for cargo to make it ideal even if you never pin on a number.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>CFD-based fabric placement and seam construction</li>
<br><li>Engineered for aero efficiency at 30 to 55 km/h</li>
<br><li>Airflow shoulder construction</li>
<br><li>Velocity Rev2 fabric on front and sleeve</li>
<br><li>3D mesh back for breathability</li>
<br><li>Elbow-length stretch sleeves with raw-cut edge</li>
<br><li>YKK® Vislon® zipper</li>
<br><li>Drop tail allows perfect pocket placement while keeping jersey fitting well at waist</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>125gm</strong>
</li>
<br><li>Temperature: <strong>18°C - 35°C / 64°F - 95°F</strong>
</li>
<br><li>Fit: <strong>Aero</strong>
</li>
<br>
</ul><br><p><strong>THE FIRST AERO JERSEY PROJECT WAS CALLED SPLIT SECOND.</strong> When Castelli engineered the first aero jersey for road racing back in 2006, everyone thought we were crazy. Back then, aero was only for TTs. Performance clothing meant moisture management. And you could win the Tour de France with a baggy jersey that was little more than a polyester T-shirt. Even our aerodynamic consultants expected limited gains, so we named the jersey Split Second, though, like now, we thought even small gains were worth pursuing. In the end the gains were pretty substantial, and we completely revolutionized the look of the pro peloton. We''re now on the sixth major revision of our aero jersey. Each generation has become more aero and better fitting. The Aero Race W Jersey benefits heavily from CFD analysis of wake flow in the riding position for fabric and seam placement. It also benefits from pro riders'' feedback, as we''ve worked to make the jersey comfortable for their long hours of training and then racing in every possible weather condition. It''s our most aero and most comfortable Aero Race Jersey yet. But we''re already working on an update.</p>', array['castelli-aero-pro-jersey-womens/1.jpg', 'castelli-aero-pro-jersey-womens/2.jpg', 'castelli-aero-pro-jersey-womens/3.jpg', 'castelli-aero-pro-jersey-womens/4.jpg', 'castelli-aero-pro-jersey-womens/5.jpg']::text[], 'new', 6, '2021-08-22'::date, false, false),
  ('castelli-aero-race-7-0-jersey', 'Castelli Aero Race 7.0 Jersey', 'castelli', 'apparel', 'jerseys', '<p>Aerodynamics and comfort. Class-leading aerodynamics paired with all-day comfort. This jersey in engineered to save you watts while managing moisture and providing comfort for the longest rides.</p><p><br></p>
<p>Product features</p>
<ul>
<li>CFD-based fabric placement and seam construction</li>
<li>Castelli engineered Air_O Strecth fabric for breathabiity, comfort and stretch</li>
<li>Engineered for aero efficiency at 30 to 55 km/h</li>
<li>Airflow shoulder construction</li>
<li>Elbow-length stretch sleeves with raw-cut edge</li>
<li>Elastic around waist to keep jersey in place and support pockets</li>
<li>YKK® Vislon® zipper</li>
<li>Contains bluesign® certified fabrics</li>
</ul>

<p><br></p>
<p>Technical Features </p>
<ul>
<li>Weight:134<em> g</em>
</li>
<li>Temperature:18°C - 35°C / 64°F - 95°F
</li>
<li>Fit:Raceinfo
</li>
</ul>', array['castelli-aero-race-7-0-jersey/1.jpg', 'castelli-aero-race-7-0-jersey/2.jpg', 'castelli-aero-race-7-0-jersey/3.jpg', 'castelli-aero-race-7-0-jersey/4.jpg', 'castelli-aero-race-7-0-jersey/5.jpg']::text[], 'new', 1, '2024-11-18'::date, false, false),
  ('castelli-aero-race-8s-jersey', 'Castelli Aero Race 8S Jersey', 'castelli', 'apparel', 'jerseys', '<p>More than a decade of speed innovation and knowledge. Our fastest jersey is now faster.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 4/5</p><p>Lightness 4/5</p><ul>
<li>Weight: 144<em> g</em>
</li>
<li>Temperature: 18°C - 36°C / 64°F - 96°F</li>
<li>Fit: Race</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>CFD-based fabric placement and seam construction</p><p>Engineered shoulder fabric used specifically to reduce drag at race speeds, with as much as 6% savings in CdA</p><p>Bonded sleeve endings for comfort</p><p>Lightweight body fabric for optimal cooling, breathability, and comfort</p><p>Elastic at waist to keep jersey in place and support loaded pockets</p><p>3 rear cargo pockets</p><p>YKK® Vislon® zipper for easy use</p><p>Reflective tabs for added safety</p><p><br></p><p>MORE THAN A DECADE OF SPEED INNOVATION AND KNOWLEDGE. OUR FASTEST JERSEY IS NOW FASTER.</p><p>In the world of performance cycling, we seek out more watts and more speed from our equipment. Dressing for speed is one of the best ways to get faster, since 80% of the drag on a cyclist comes from the body. Drawing on more than a decade of innovation and knowledge in making professional riders faster, the Aero Race 8S Jersey is the result of using the most modern methods and fabrics to create the fastest jersey we''ve ever made. The S stands for "speed." The sleeve construction uses CFD engineering for optimal seam placement. The engineered ribbed shoulder fabric has been designed specifically for the greatest aerodynamic advantage at race speeds, with a CdA savings of up to 6% over previous aero jerseys. The rest of the jersey is designed for maximum comfort. The body fabric is smooth and stretchy, allowing for a perfect fit, and it feels great against the skin. The elastic at the waist keeps the jersey in place while supporting the three back pockets when they are loaded. The Aero Race 8S Jersey is the ultimate piece of equipment to help you turn your watts into speed.</p>', array['castelli-aero-race-8s-jersey/1.jpg', 'castelli-aero-race-8s-jersey/2.jpg', 'castelli-aero-race-8s-jersey/3.jpg', 'castelli-aero-race-8s-jersey/4.jpg', 'castelli-aero-race-8s-jersey/5.jpg']::text[], 'new', 3, '2025-11-12'::date, false, false),
  ('castelli-astratta-jersey-womens', 'Castelli Astratta Jersey Women''s', 'castelli', 'apparel', 'jerseys', '<p>Light and airy, this soft and stretchy jersey makes an ideal canvas for this abstract colorful graphic.</p><br><ul>
<br><li>Strada micro mesh ventilated stretch fabric on front and back for great fit and moisture management</li>
<br><li>Tailwind dimpled stretch fabric on sleeves, side panels and pocket for perfect fit</li>
<br><li>Full-length YKK® Vislon®. zipper is easiest-sliding zipper available</li>
<br><li>Silicone gripper elastic at waist prevents jersey from riding up</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>142gm</strong>
</li>
<br><li>Temperature: <strong>18°C - 35°C / 64°F - 95°F</strong>
</li>
<br><li>Fit: <strong>Comfortable</strong>
</li>
<br>
</ul><br><p>This all-around jersey is as light and airy as the colorful graphic. The Strada micro-mesh main body fabric has 7% Lycra® for extra horizontal stretch combined with limited vertical stretch to support the pockets. The side panels and sleeves are in an open mesh to keep you cool. We finish off the jersey with a full-length YKK® Vislon® zipper and silicone gripper elastic at the waist.</p><br><h3><strong>Product features</strong></h3>', array['castelli-astratta-jersey-womens/1.jpg', 'castelli-astratta-jersey-womens/2.jpg', 'castelli-astratta-jersey-womens/3.jpg', 'castelli-astratta-jersey-womens/4.jpg', 'castelli-astratta-jersey-womens/5.jpg']::text[], 'new', 3, '2021-10-22'::date, false, false),
  ('castelli-entrata-6-jersey', 'Castelli Entrata 6 Jersey', 'castelli', 'apparel', 'jerseys', '<p>Trickle-down technology for both comfort and aerodynamics from Castelli''s extensive R&amp;D.</p>
<p><br></p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>
<p>Lightness 4/5</p>

<ul>
<li>Weight: 151<em> g</em>
</li>
<li>Temperature: 18°C - 36°C / 64°F - 96°F</li>
<li>Fit: Regular</li>
</ul>
<p><br></p>
<p>PRODUCT FEATURES</p>
<p>Patterning taken from Aero Race 8S Jersey, but with a more forgiving fit</p>
<p>Velocity sleeves with raw-cut endings for comfort</p>
<p>Body fabric with stretch and breathability for comfort</p>
<p>Elastic at waist to keep jersey in place and support loaded pockets</p>
<p>3 rear cargo pockets for ample storage</p>
<p>YKK® Vislon® zipper for easy use</p>
<p>Protection insert behind collar to prevent irritation</p>
<p>UPF 33</p>
<p><br></p>
<p>A perfect blend of affordability and advanced performance. Benefiting from trickle-down technology inspired by the Aero Race 8S jerseys, the Entrata 6 delivers exceptional aerodynamic efficiency and comfort at a significantly lower cost. Constructed from lightweight, breathable fabric, it ensures superior ventilation and moisture management to keep you cool and dry. The streamlined cut reduces drag, enhancing your speed and performance on every ride. Featuring a full-length zipper for customizable airflow and three rear pockets for easy storage of essentials, this jersey combines practicality with cutting-edge design. Perfect for both newcomers and seasoned cyclists seeking performance without compromise.</p>', array['castelli-entrata-6-jersey/1.jpg', 'castelli-entrata-6-jersey/2.jpg', 'castelli-entrata-6-jersey/3.jpg', 'castelli-entrata-6-jersey/4.jpg', 'castelli-entrata-6-jersey/5.jpg']::text[], 'new', 11, '2025-11-12'::date, false, false),
  ('castelli-espresso-mens-jersey', 'Castelli Espresso Men''s Jersey', 'castelli', 'apparel', 'jerseys', '', array['castelli-espresso-mens-jersey/1.jpg', 'castelli-espresso-mens-jersey/2.jpg', 'castelli-espresso-mens-jersey/3.jpg', 'castelli-espresso-mens-jersey/4.jpg', 'castelli-espresso-mens-jersey/5.jpg']::text[], 'new', 2, '2024-11-17'::date, false, false),
  ('castelli-espresso-thermal-jersey-mens', 'Castelli Espresso Thermal Jersey Men''s', 'mr-rider', 'apparel', 'jerseys', '', '{}'::text[], 'new', 17, '2026-08-10'::date, false, false),
  ('castelli-espresso-thermal-womens-jersey', 'Castelli Espresso Thermal Women''s Jersey', 'castelli', 'apparel', 'jerseys', '<p>Warm, soft, and comfortable. Three things any good thermal jersey should be. The Espresso Thermal W Jersey is all three. The luxuriously soft fabric feels amazing next to the skin while keeping you warm and, most importantly, comfortable.</p><p>TECHNICAL FEATURES</p><p>Insulation 3/5</p><p>Waterproofness 1/5</p><p>Windproofness 2/5</p><p>Breathability 3/5</p><p>Lightness 4/5 </p><ul>
<li>Weight:200<em> g</em>
</li>
<li>Temperature:12°C - 18°C / 54°F - 64°F</li>
<li>Fit:Regular</li>
</ul><p>PRODUCT FEATURES</p>
<p>Luxuriously soft and warm fleece-lined fabric with stretch for comfort and perfect fit</p>
<p>3 back pockets with 4th zippered security pocket for valuables</p>
<p>Full-length YKK® Vislon® zipper with easy-use zipper pull</p>
<p>Elastic at waist with silicone to keep jersey in place</p>
<p>Reflective tab for added visibility</p>', array['castelli-espresso-thermal-womens-jersey/1.jpg', 'castelli-espresso-thermal-womens-jersey/2.jpg', 'castelli-espresso-thermal-womens-jersey/3.jpg', 'castelli-espresso-thermal-womens-jersey/4.jpg', 'castelli-espresso-thermal-womens-jersey/5.jpg']::text[], 'new', 6, '2025-06-19'::date, false, false),
  ('castelli-espresso-w-jersey-womens', 'Castelli Espresso W Jersey Women''s', 'castelli', 'apparel', 'jerseys', '', array['castelli-espresso-w-jersey-womens/1.jpg', 'castelli-espresso-w-jersey-womens/2.jpg', 'castelli-espresso-w-jersey-womens/3.jpg', 'castelli-espresso-w-jersey-womens/4.jpg', 'castelli-espresso-w-jersey-womens/5.jpg']::text[], 'new', 0, '2024-11-17'::date, false, false),
  ('castelli-fly-ls-jersey-mens', 'Castelli Fly LS Jersey Men''s', 'castelli', 'apparel', 'jerseys', '<p> The Fly LS Jersey is a lightweight thermal long-sleeve jersey for those days when it''s just a bit chilly and you''re looking to go fast. The soft brushed-back Fly T-SL fabric offers the right amount of warmth while being stretchy and lightweight. We''ve tailored the Fly LS Jersey for a close-to-body fit.</p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 3/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 2/5</p>
<p>Breathability 4/5</p>
<p>Lightness 4/5</p>
<ul>
<li>Weight:344<em> g</em>
</li>
<li>Temperature:12°C - 18°C / 54°F - 64°F</li>
<li>Fit:Tailored</li>
</ul>
<p>PRODUCT FEATURES</p>
<p>Super-lightweight construction with just enough warmth</p>

<p>Low/no collar for temperature regulation</p>
<p>Castelli FLY Fabric Technologies: FFT</p>
<p>Fly T-SL fabric</p>
<p>YKK® Vislon® zipper</p>
<p>3 back pockets with zippered security pocket for valuables</p>
<p>Elastic and silicone at waist to keep jersey in place</p>
<p>Reflective tab on back pockets</p>', array['castelli-fly-ls-jersey-mens/1.jpg', 'castelli-fly-ls-jersey-mens/2.jpg']::text[], 'new', 3, '2025-06-19'::date, false, false),
  ('castelli-gradient-jersey-womens', 'Castelli Gradient Jersey Women''s', 'castelli', 'apparel', 'jerseys', '<p>Clean, solid-color design but with a touch of bright gradient fade color on a jersey featuring our comfortable long-ride Squadra jersey construction.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>ProSecco Micromesh main body fabric to keep you dry</li>
<br><li>Mesh side panels for breathability</li>
<br><li>Velocity Rev2 fabric on sleeves with close-to-body fit and raw-cut edges</li>
<br><li>Covered YKK® Vislon® zipper</li>
<br><li>Drop tail with 3 rear pockets with reflective piping</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>159gm</strong>
</li>
<br><li>Temperature: <strong>16°C - 35°C</strong>
</li>
<br><li>Fit: <strong>Comfortable</strong>
</li>
<br>
</ul><br><p>The first thing you notice about this jersey is the pops of color. But take a closer look and you''ll see how carefully it''s been constructed. We start with great fabrics: the main body in ProSecco Micromesh, combined with mesh side panels for extra breathability and stretch. Then we use our Velocity Rev2 four-way-stretch fabric on the sleeves, providing unmatched fit and comfort while allowing us to leave a raw edge for even greater comfort. We use our drop-tail pocket design to place the pockets at the perfect height, and we finish it all with a YKK® Vislon® zipper that slides easier than any other. This jersey is so much more than its graphic.</p>', array['castelli-gradient-jersey-womens/1.jpg', 'castelli-gradient-jersey-womens/2.jpg', 'castelli-gradient-jersey-womens/3.jpg', 'castelli-gradient-jersey-womens/4.jpg', 'castelli-gradient-jersey-womens/5.jpg']::text[], 'new', 1, '2021-10-22'::date, false, false),
  ('castelli-illusione-jersey-womens', 'Castelli Illusione Jersey Women''s', 'castelli', 'apparel', 'jerseys', '<p>Fluid black and white lines make the Illusione Jersey stand out in any situation.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>ProSecco Micromesh fabric to keep you dry</li>
<br><li>Velocity Rev2 fabric on sleeves with close-to-body fit and raw-cut edges</li>
<br><li>Covered YKK® Vislon® zipper</li>
<br><li>Drop tail with 3 rear pockets</li>
<br><li>Internal silicone gripper elastic</li>
<br><li>Reflective piping</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>118gm</strong>
</li>
<br><li>Temperature: <strong>18°-35°C / 64°-95°F</strong>
</li>
<br>
</ul><br><p>The Illusione Jersey, with reduced seaming and a simplified cut, is made for everyday riding but it doesn''t skimp on the details. The jersey features our quick-drying ProSecco Micromesh fabric and the same zipper and drop-pocket construction found on the Team Ineos race jerseys.</p>', array['castelli-illusione-jersey-womens/1.jpg', 'castelli-illusione-jersey-womens/2.jpg', 'castelli-illusione-jersey-womens/3.jpg', 'castelli-illusione-jersey-womens/4.jpg']::text[], 'new', 3, '2022-06-01'::date, false, false),
  ('castelli-marmo-jersey-womens-1', 'Castelli Marmo Jersey Women''s', 'castelli', 'apparel', 'jerseys', '<p>A cycling jersey needs to look great as well as perform. The Marmo Jersey has a stunning "oil in water" graphic while still offering the performance you expect from a Castelli jersey.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>ProSecco Micromesh body fabric to keep you dry</li>
<br><li>Mesh side panels for breathability</li>
<br><li>Velocity Rev2 fabric on sleeves with close-to-body fit and raw-cut edges</li>
<br><li>Covered YKK® Vislon® zipper</li>
<br><li>Drop tail with 3 rear pockets with reflective piping</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>160gm</strong>
</li>
<br><li>Temperature: <strong>18°C - 38°C</strong>
</li>
<br><li>Fit: <strong>Comfortable</strong>
</li>
<br>
</ul><br><p>The first thing that pops out about this jersey is the design, with a graphic that recalls the fluid, effortless movement of oil in water. Movement like that fluid, effortless-looking pedal stroke we all strive for when riding a bike. The Marmo Jersey reminds us of how riding should feel. Its ProSecco Micromesh on the front and mesh on the sides let the air flow in as you move down the road or up the trail. The stretch in the sleeves and raw-cut finish allow for freedom of movement in the arms. Finally, the drop tail and pocket construction allow you to easily reach into your pockets for whatever you might need. At the end of the day, this jersey is about feeling free, fluid, and effortless while out on the bike.</p>', array['castelli-marmo-jersey-womens-1/1.jpg', 'castelli-marmo-jersey-womens-1/2.jpg', 'castelli-marmo-jersey-womens-1/3.jpg', 'castelli-marmo-jersey-womens-1/4.jpg', 'castelli-marmo-jersey-womens-1/5.jpg']::text[], 'new', 2, '2024-11-18'::date, false, false),
  ('castelli-perfetto-ros-2-vest-mens', 'Castelli Perfetto RoS 2 Vest Men''s', 'castelli', 'apparel', 'jerseys', '<p>Made to be the perfect vest. GORE-TEX INFINIUM™ WINDSTOPPER® wind and water protection on the front, and a breathable nanotechnology water-repellent back. Stretch fit, and packable into half a pocket when not needed. This is a core piece of your cycling wardrobe.</p>

<p>The Perfetto RoS 2 Vest is our attempt at the perfect vest. It''s warm and windproof yet breathable thanks to the Castelli-exclusive GORE-TEX INFINIUM™ WINDSTOPPER® fabric on the front and the membrane-free Nano Flex stretch woven back fabric. It''s splash resistant for wet roads or changing conditions. It''s light and packable, easily fitting in a jersey pocket with room to spare. It has three rear pockets of its own and a two-way YKK® Vislon® zipper you can open it from the bottom to access gear in your jersey pockets. It has 360° reflectivity thanks to the reflective trim on the armholes and reflective band below the pockets. It fits close to body with a high collar that feels oh-so-comfy for cooler conditions.</p>

<p><strong>Product features</strong></p>
<p><br><br></p>
<ul>
<li>Best race or training vest with windproof front and breathable rain-repelling back</li>
</ul>

<ul>
<li>GORE-TEX INFINIUM™ WINDSTOPPER® 203 Stretch lightweight fabric on front</li>
</ul>

<ul>
<li>Nano Flex Light Woven on back for breathable stretch with good water protection</li>
</ul>

<ul>
<li>Top- and bottom-opening YKK® Vislon® zipper for easy ventilation adjustment on the fly</li>
</ul>

<ul>
<li>3 rear pockets</li>
</ul>

<ul>
<li>Reflective panel at bottom of pockets and around armholes</li>
</ul>
<p><br><br></p>
<p><strong>Technical features</strong></p>
<p><br><br></p>
<ul>
<li>Weight: 223gm
</li>
</ul>

<ul>
<li>Temperature: 12°C - 20°C / 54°F - 68°F
</li>
</ul>

<ul>
<li>Fit: Performance
</li>
</ul>', array['castelli-perfetto-ros-2-vest-mens/1.jpg', 'castelli-perfetto-ros-2-vest-mens/2.jpg', 'castelli-perfetto-ros-2-vest-mens/3.jpg', 'castelli-perfetto-ros-2-vest-mens/4.jpg', 'castelli-perfetto-ros-2-vest-mens/5.jpg']::text[], 'new', 0, '2023-06-23'::date, false, false),
  ('castelli-perfetto-ros-2-vest-womens-1', 'Castelli Perfetto RoS 2 Vest Women''s', 'castelli', 'apparel', 'jerseys', '<p>Made to be the perfect vest. GORE-TEX INFINIUM™ WINDSTOPPER® wind and water protection on the front, and a breathable nanotechnology water-repellent back. Stretch fit, and packable into half a pocket when not needed. This is a core piece of your cycling wardrobe.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Best race or training vest with windproof front and breathable rain-repelling back</li>
<br><li>GORE-TEX INFINIUM™ WINDSTOPPER® 203 Stretch lightweight fabric on front</li>
<br><li>Nano Flex Light Woven on back for breathable stretch with good water protection</li>
<br><li>Top- and bottom-opening YKK® Vislon® zipper for easy ventilation adjustment on the fly</li>
<br><li>3 rear pockets</li>
<br><li>Reflective panel at bottom of pockets and around armholes</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>194gm</strong>
</li>
<br><li>Temperature: <strong>12°C - 20°C / 54°F - 68°F</strong>
</li>
<br><li>Fit: <strong>Performance</strong>
</li>
<br>
</ul><br><p>The Perfetto RoS 2 Vest is our attempt at the perfect vest. It''s warm and windproof yet breathable thanks to the Castelli-exclusive GORE-TEX INFINIUM™ WINDSTOPPER® fabric on the front and the membrane-free Nano Flex stretch woven back fabric. It''s splash resistant for wet roads or changing conditions. It''s light and packable, easily fitting in a jersey pocket with room to spare. It has three rear pockets of its own and a two-way YKK® Vislon® zipper you can open from the bottom to access gear in your jersey pockets. It has 360° reflectivity thanks to the reflective trim on the armholes and reflective band below the pockets. It fits close to body with a high collar that feels oh-so-comfy for cooler conditions.</p>', array['castelli-perfetto-ros-2-vest-womens-1/1.jpg', 'castelli-perfetto-ros-2-vest-womens-1/2.jpg', 'castelli-perfetto-ros-2-vest-womens-1/3.jpg', 'castelli-perfetto-ros-2-vest-womens-1/4.jpg', 'castelli-perfetto-ros-2-vest-womens-1/5.jpg']::text[], 'new', 3, '2023-06-23'::date, false, false),
  ('castelli-perfetto-ros-2-wind-jersey-mens', 'Castelli Perfetto RoS 2 Wind Jersey Men''s', 'castelli', 'apparel', 'jerseys', '<p>With just a base layer, this is a wind-protection jersey for mild conditions. Alternatively, use it over a jersey like a vest with added protection on your shoulders. Lightweight, breathable front wind protection with allover water repellency.</p>
<br><p>The Perfetto RoS 2 Wind Jersey started life as a request from our pro riders: I want to wear the Gabba all the time, but sometimes it''s too hot. So a somewhat lighter and more breathable Gabba became the Perfetto Light. With the fourth generation, we''ve also changed the name from Perfetto Light to Perfetto RoS 2 Wind Jersey. And it has become a staple in our autumn and spring wardrobes because it''s so useful in so many situations ... which makes it very hard to define. In one sense it''s a warmer vest, since it has the same construction as the Perfetto RoS 2 Vest but with short sleeves. In another sense it''s a less warm Gabba. In another sense it''s a jersey with front wind protection. Regardless of how YOU define it, you''ll appreciate how it gives the right amount of protection on cool days while maintaining a high level of breathability. It makes you feel warm and protected, yet offers almost the same lightness and freedom of movement as a summer jersey. For mild days, we''ll use it as a jersey over a light base layer with Seamless arm warmers. For rides in cooler or changeable conditions, we''ll layer it over a jersey, with either Seamless or Nano Flex arm warmers. The "2" part of the name refers to the updates to the latest version, including a YKK® Vislon® zipper with both top and bottom openings for more adjustable ventilation. The reflectivity on the back is more visible, the three pockets hold more gear, and the extended "tail" has been reduced to make the piece more packable.</p>
<br><p><strong>Product features</strong></p>
<br><ul>
<br><li>Lightest Castelli short-sleeve wind protection</li>
<br><li>GORE-TEX INFINIUM™ WINDSTOPPER® 203 Stretch lightweight fabric on front and sleeves</li>
<br><li>Nano Flex Light Woven on back for breathable stretch with good water protection</li>
<br><li>Top- and bottom-opening YKK® Vislon® zipper for easy ventilation adjustment on the fly</li>
<br><li>3 rear pockets</li>
<br><li>Reflective panel at bottom of pockets</li>
<br>
</ul>
<br><p><strong>Technical features</strong></p>
<br><ul>
<br><li>Insulation: 2/5</li>
<br><li>Waterproofness: 4/5</li>
<br><li>Windproofness: 4/5</li>
<br><li>Breathability: 4/5</li>
<br><li>Lightness: 4/5</li>
<br>
</ul>
<br><ul>
<br><li>Weight: 251gm
</li>
<br><li>Temperature: 10°C - 18°C / 50°F - 64°F
</li>
<br><li>Fit: Performance
</li>
<br>
</ul>', array['castelli-perfetto-ros-2-wind-jersey-mens/1.jpg', 'castelli-perfetto-ros-2-wind-jersey-mens/2.jpg', 'castelli-perfetto-ros-2-wind-jersey-mens/3.jpg', 'castelli-perfetto-ros-2-wind-jersey-mens/4.jpg', 'castelli-perfetto-ros-2-wind-jersey-mens/5.jpg']::text[], 'new', 5, '2023-06-23'::date, false, false),
  ('castelli-perfetto-ros-2-wind-jersey-womens', 'Castelli Perfetto RoS 2 Wind Jersey Women''s', 'castelli', 'apparel', 'jerseys', '<p>With just a base layer, it''s a wind-protection jersey for mild conditions. Alternatively, use it over a jersey like a vest with added protection on your shoulders. Lightweight, breathable front wind protection with allover water repellency.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Lightest Castelli short-sleeve wind protection</li>
<br><li>GORE-TEX INFINIUM™ WINDSTOPPER® 203 Stretch lightweight fabric on front and sleeves</li>
<br><li>Nano Flex Light Woven on back for breathable stretch with good water protection</li>
<br><li>Top- and bottom-opening YKK® Vislon® zipper for easy ventilation adjustment on the fly</li>
<br><li>3 rear pockets</li>
<br><li>Reflective panel at bottom of pockets</li>
<br>
</ul><br><h3><strong>Technical features</strong></h3><br><ul>
<br><li>Insulation: <strong>2/5</strong>
</li>
<br><li>Waterproofness: <strong>4/5</strong>
</li>
<br><li>Windproofness: <strong>4/5</strong>
</li>
<br><li>Breathability: <strong>4/5</strong>
</li>
<br><li>Lightness: <strong>4/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>212gm</strong>
</li>
<br><li>Temperature: <strong>10°C - 18°C / 50°F - 64°F</strong>
</li>
<br><li>Fit: <strong>Performance</strong>
</li>
<br>
</ul><br><p>The Perfetto RoS 2 Wind Jersey started life as a request from our pro riders: I want to wear the Gabba all the time, but sometimes it''s too hot. So a somewhat lighter and more breathable Gabba became the Perfetto Light. With the fourth generation we''ve also changed the name from Perfetto Light to Perfetto RoS 2 Wind Jersey. And it has become a staple in our autumn and spring wardrobes because it''s so useful in so many situations ... which makes it very hard to define. In one sense it''s a warmer vest, since it has the same construction as the Perfetto RoS 2 Vest but with short sleeves. In another sense it''s a less warm Gabba. In another sense it''s a jersey with front wind protection. Regardless of how YOU define it, you''ll appreciate how it provides the right amount of protection on cool days while maintaining a high level of breathability. It makes you feel warm and protected, yet it offers almost the same lightness and freedom of movement as a summer jersey. For mild days, we''ll use it as a jersey over a light base layer with Seamless arm warmers. For rides in cooler or changeable conditions, we''ll layer it over a jersey, with either Seamless or Nano Flex arm warmers. The "2" part of the name refers to the updates to the latest version, including a YKK® Vislon® zipper with both top and bottom openings for more adjustable ventilation. The reflectivity on the back is more visible, the three pockets hold more gear, and the extended "tail" has been reduced to make the piece more packable.</p>', array['castelli-perfetto-ros-2-wind-jersey-womens/1.jpg', 'castelli-perfetto-ros-2-wind-jersey-womens/2.jpg']::text[], 'new', 4, '2023-06-23'::date, false, false),
  ('castelli-premio-black-jersey-mens-1', 'Castelli Premio Black Jersey Men''s', 'castelli', 'apparel', 'jerseys', '<p>Maximum comfort and performance.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Stretch woven lightweight body fabric in recycled microfiber polyester for excellent moisture management and 26% elastane for stretch</li>
<br><li>Main body fabric rated at UPF 50+ for maximum sun protection</li>
<br><li>Shoulder panel in recycled ribbed stretch woven mesh to keep you cool and comfortable while adding world-class aerodynamics</li>
<br><li>Collarless construction makes it feel lighter and cooler</li>
<br><li>Reverse-coil self-locking YKK® zipper with U-shaped zipper pull for easy adjustment</li>
<br><li>Silicone gripper elastic on back with no-sew bonded front elastic panel</li>
<br><li>3 rear pockets with additional hidden zippered security pocket</li>
<br><li>Reflective logo on back</li>
<br><li>Fabrics made with recycled yarns</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>145gm</strong>
</li>
<br><li>Temperature: <strong>16°C - 35°C / 61°F - 95°F</strong>
</li>
<br><li>Fit: <strong>Tailored</strong>
</li>
<br>
</ul><br><p><strong>MAXIMUM COMFORT AND PERFORMANCE.</strong> The name says it all. The Premio Jersey is designed for maximum comfort and performance. We''ve taken the technology and fabrics used in the Premio Bibshort and adapted them into the jerseys. Two separate stretch woven fabrics provide numerous benefits: great fit, excellent moisture management, maximum aerodynamics, light weight, durability, and a beautiful smooth finish with a premium feel. The sleeves have a ribbed construction like the Premio short for a snug but not tight fit and an exact color match. The recycled polyester stretch woven fabric on the body is lightweight, soft, and stretchy for an excellent fit. It''s also excellent at wicking away sweat on those hot days. To finish the Premio Jersey, we''ve paid close attention to all the little details as well, such as the zipper pull and the gripper elastic. When we brought out the Premio Black Bibshort, everyone asked, "What jersey do I wear with it?" Here''s the jersey that matches perfectly, in style, comfort, and performance.</p>', array['castelli-premio-black-jersey-mens-1/1.png', 'castelli-premio-black-jersey-mens-1/2.png']::text[], 'new', 1, '2024-08-07'::date, false, false),
  ('castelli-prisma-jersey-womens', 'Castelli Prisma Jersey Women''s', 'castelli', 'apparel', 'jerseys', '<p>When you''re riding, it is best to wear apparel that is lightweight and can wick moisture away to keep you cool. The Castelli Women''s Prisma Jersey FZ is a lightweight jersey that has Prosecco GT fabric on the main body to wick moisture away. It features a full-length YKK Vislon zipper, three rear pockets so you can store your riding essentials, and reflective viz strips to help increase visibility in low-light.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Moisture-wicking fabric helps keep you cool when it''s warm</li>
<br><li>Full-length YKK Vislon zipper for extra ventilation</li>
<br><li>Three rear pockets so you can store your riding essentials</li>
<br><li>Reflective viz strips increase visibility</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>121gm</strong>
</li>
<br>
</ul>', array['castelli-prisma-jersey-womens/1.jpg', 'castelli-prisma-jersey-womens/2.jpg', 'castelli-prisma-jersey-womens/3.jpg', 'castelli-prisma-jersey-womens/4.jpg']::text[], 'new', 1, '2021-08-22'::date, false, false),
  ('castelli-prologo-7-jersey-mens', 'Castelli Prologo 7 Jersey Men''s', 'castelli', 'apparel', 'jerseys', '<p>The perfect all-around jersey for everything but racing. Comfortable stretch fit, excellent moisture management, four-way-stretch sleeves with raw-cut edges, and full sun protection are just some of the features.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Micro-piqué polyester knit on the body for great moisture management with a soft hand</li>
<br><li>Velocity Rev2 fabric on sleeves with raw-cut sleeve endings</li>
<br><li>Full-length YKK® Vislon® zipper with neck protector</li>
<br><li>3 rear pockets with drop-pocket design for optimal pocket placement</li>
<br><li>Silicone gripper elastic at waist</li>
<br><li>Reflective details on both sides of pocket</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>177gm</strong>
</li>
<br><li>Temperature: <strong>16°C - 38°C</strong>
</li>
<br><li>Fit: <strong>Comfortable</strong>
</li>
<br>
</ul><br><p>This jersey is made for those JRA rides. Just Riding Along. You''re not aiming for new Strava records or to win the city-limit sprints, but you do want a jersey that''s comfortable and looks great. The jersey has a neutral cut — not racy but also not flapping in the wind. But the high-stretch micro-piqué fabric means it fits more shapes than a Castelli race jersey. Adding to the fit and comfort are the four-way-stretch sleeves that seem to disappear, since you don''t really feel them at all, right down to the raw-cut sleeve ending that never constricts. This jersey offers full sun protection: the main body is rated at UPF 50 while the sleeves are UPF 30, which means they still block 97% of damaging UV rays. Important Castelli features like the drop-pocket design, easy-sliding full-length YKK® Vislon® zipper, and reflective details on the back will keep this jersey in the short rotation in your wardrobe.</p>', array['castelli-prologo-7-jersey-mens/1.png', 'castelli-prologo-7-jersey-mens/2.png', 'castelli-prologo-7-jersey-mens/3.png', 'castelli-prologo-7-jersey-mens/4.png', 'castelli-prologo-7-jersey-mens/5.png']::text[], 'new', 1, '2024-08-07'::date, false, false),
  ('castelli-puro-3-fz-jersey-mens', 'Castelli Puro 3 FZ Jersey Men''s', 'castelli', 'apparel', 'jerseys', '<p>Our most popular jersey, thanks to the warmth and excellent moisture management of our Warmer brushed-fleece fabric; the clean, purposeful design; and the large reflectivity panels on the chest and below the pockets on the back.</p>
<p>The third generation of the Puro Jersey, our most popular winter jersey, is better than ever. The thickly brushed fabric is warm inside yet with excellent breathability with enough stretch for non-restrictive fit. The reflective panels front and back provide excellent day and night visibility. Otherwise it''s a no-nonsense technical piece aimed at comfort and warmth while making you look good.</p>
<p><strong>Product features</strong></p>
<ul>
<li>Warmer fabric is a thickly brushed polyester fleece giving comfortable warmth with excellent moisture management</li>
<li>Reflective panels on front and back</li>
<li>Gripper elastic at waist</li>
<li>3 rear pockets</li>
<li>Easy-sliding YKK® Vislon® zipper</li>
</ul>
<p><strong>Technical features</strong></p>
<ul>
<li>Insulation: 3/5</li>
<li>Waterproofness: 1/5</li>
<li>Windproofness: 2/5</li>
<li>Breathability: 5/5</li>
<li>Lightness: 4/5</li>
</ul>
<ul>
<li>Temperature: 14°C - 20°C / 57°F - 68°F
</li>
<li>Fit: Comfortable
</li>
</ul>', array['castelli-puro-3-fz-jersey-mens/1.jpg', 'castelli-puro-3-fz-jersey-mens/2.jpg', 'castelli-puro-3-fz-jersey-mens/3.jpg', 'castelli-puro-3-fz-jersey-mens/4.jpg', 'castelli-puro-3-fz-jersey-mens/5.jpg']::text[], 'new', 7, '2025-09-18'::date, false, false),
  ('castelli-unlimited-allroad-jersey-mens-1', 'Castelli Unlimited Allroad Jersey Men''s', 'castelli', 'apparel', 'jerseys', '<p>All the performance of a Castelli race jersey, just without the aerodynamics and tight fit.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Interlock 115 g 100% polyester fabric for excellent moisture management</li>
<br><li>Medium fit for comfort on the trail or road</li>
<br><li>Partially covered YKK® Vislon® zipper</li>
<br><li>3 rear pockets with extra zippered security pocket</li>
<br><li>Embossed stripe across chest</li>
<br><li>No-sew sleeve hem finishing</li>
<br><li>Silicone gripper elastic</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>214gm</strong>
</li>
<br><li>Temperature: <strong>16°C - 35°C</strong>
</li>
<br>
</ul><br><p>Does gravel need a new dress code? Maybe, but with fat tires and big-tubed bikes with bags on them, an aero jersey just doesn''t look right. But why should you give up performance and comfort? That''s the concept behind this jersey: all the performance of Castelli''s best jerseys except the aerodynamics. First we created a new fabric with leading Italian knitter Borgini. The lightweight fabric has a small horizontal stripe and a gorgeous soft hand. It maintains outstanding moisture management and ample horizontal stretch but has limited vertical stretch so your pockets don''t sag. And it blocks 98% of UV rays. The jersey has a neutral fit to it: straighter in the body, extra space across the chest. Less drop from front to back. The design is clean and technical, even the chest stripe is embossed for tone-on-tone detailing. No more feeling self-conscious at your coffee stop. The jersey is full of thoughtful details, like a covered YKK® front zipper, a fourth zippered key pocket, and bonded no-sew sleeve endings.</p>', array['castelli-unlimited-allroad-jersey-mens-1/1.png', 'castelli-unlimited-allroad-jersey-mens-1/2.png', 'castelli-unlimited-allroad-jersey-mens-1/3.png', 'castelli-unlimited-allroad-jersey-mens-1/4.png', 'castelli-unlimited-allroad-jersey-mens-1/5.png']::text[], 'new', 1, '2024-08-07'::date, false, false),
  ('castelli-unlimited-jersey-womens', 'Castelli Unlimited Jersey Women''s', 'castelli', 'apparel', 'jerseys', '<p>On road or off? Both! Subdued styling but long on performance with snag-resistant fabrics, stretch raw cut sleeves, zippered pocket for valuables, and ready to ride on any surface.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>The all-surface unlimited no-compromise jersey</li>
<br><li>ProSecco Unlimited main body fabric</li>
<br><li>Snag-resistant stretch woven on sleeves and shoulders</li>
<br><li>No-sew flat-edge sleeve finishing</li>
<br><li>3 rear pockets plus zippered key/money pocket</li>
<br><li>YKK® Vislon® zipper</li>
<br><li>Silicone gripper elastic at waist</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>166gm</strong>
</li>
<br><li>Termperature: <strong>18° - 32°C / 65° - 90°F</strong>
</li>
<br>
</ul><br><p>We’re not crazy about the word “gravel.” We love riding on it, but we don’t like the way the cycling industry acts like it’s a new sport. We prefer to just call it cycling because we’re still riding bikes, we’re still working up a sweat, we’re still having fun and we’re still beating up on our friends. Castelli’s approach to all-surface riding is called Unlimited. Our riding now is a mixture of paved and unpaved surfaces, but we’re riding just as hard and demanding just as much from our clothing. The Unlimited Jersey uses everything we know about moisture management, fit, shape, and the convenience of zippers that open easily and pockets that are the right shape and in the right place. But on this jersey we took the extra step of using fabrics that better resist snags from tree branches or vines that you’ll find on your favorite trail. The main body fabric is a polyester knit with good stretch and moisture management but better durability than the typical fragile fabric that’s OK on the road. Then on the sleeves, shoulders and back panel we use a stretch woven fabric that is extremely resistant, since this is the area that most often gets snagged. You’ll just be comfortable like you always are in Castelli, but you’ll look good all season long.</p>', array['castelli-unlimited-jersey-womens/1.jpg', 'castelli-unlimited-jersey-womens/2.jpg', 'castelli-unlimited-jersey-womens/3.jpg', 'castelli-unlimited-jersey-womens/4.jpg', 'castelli-unlimited-jersey-womens/5.jpg']::text[], 'new', 0, '2021-10-22'::date, false, false),
  ('mens-prime-short-sleeve-jersey', 'Men''s Prime Short Sleeve Jersey', 'specialized', 'apparel', 'jerseys', '<p>The perfect apparel for the perfect ride, that''s what our Prime collection is all about. The best fabrics, constructions, and technologies go into these pieces, and the Men''s Prime Short Sleeve Jersey is no exception. Starting with the fabric, it''s been specifically designed to help regulate your body temperature when the mercury starts to rise—yeah; you''ll feel the cooling the first time you touch it—making those toasty days in the saddle more enjoyable. Furthering the cooling potential, it features a VISLON® zipper that''s super easy to zip and unzip for hot climbs and cool descents. Finally; it features three main back pockets plus a zippered one to store all your snacks and essentials that are sure to keep you going all day.</p>', array['mens-prime-short-sleeve-jersey/1.jpg', 'mens-prime-short-sleeve-jersey/2.jpg', 'mens-prime-short-sleeve-jersey/3.jpg', 'mens-prime-short-sleeve-jersey/4.jpg', 'mens-prime-short-sleeve-jersey/5.jpg']::text[], 'new', 11, '2024-08-06'::date, false, true),
  ('mens-sl-solid-short-sleeve-jersey', 'Men''s SL Solid Short Sleeve Jersey', 'specialized', 'apparel', 'jerseys', '<p>Long hours in the saddle put a ton of stress on your jerseys. But we think it''s a misconception that you can''t provide race-ready performance in a package that''s built to take some abuse. And for this reason, we created our SL Jersey.</p>', array['mens-sl-solid-short-sleeve-jersey/1.jpg', 'mens-sl-solid-short-sleeve-jersey/2.jpg', 'mens-sl-solid-short-sleeve-jersey/3.jpg', 'mens-sl-solid-short-sleeve-jersey/4.jpg', 'mens-sl-solid-short-sleeve-jersey/5.jpg']::text[], 'new', 0, '2024-08-06'::date, false, false),
  ('red-bull-bora-hansgrohe-short-sleeve-race-jersey', 'Red Bull - BORA - hansgrohe Short Sleeve Race Jersey', 'specialized', 'apparel', 'jerseys', '<p>Take your performance to the World Tour level with the Red Bull - BORA - hansgrohe Short Sleeve Race Jersey, worn by some of the world’s best riders. Featuring diamond-textured sleeves - the fastest aerodynamic fabric we’ve ever tested - strategically placed to minimize drag, it delivers a compressive, second-skin fit with a high-stretch body. Raw-cut sleeves and flat seam tape ensure a distraction-free ride. Lightweight, breathable, and race-ready - it’s built to help you chase the podium''s top step or the city-limit sprint.</p>', array['red-bull-bora-hansgrohe-short-sleeve-race-jersey/1.jpg', 'red-bull-bora-hansgrohe-short-sleeve-race-jersey/2.jpg', 'red-bull-bora-hansgrohe-short-sleeve-race-jersey/3.jpg', 'red-bull-bora-hansgrohe-short-sleeve-race-jersey/4.jpg', 'red-bull-bora-hansgrohe-short-sleeve-race-jersey/5.jpg']::text[], 'new', 0, '2026-01-09'::date, false, false),
  ('neweracuffs-logobeanie', 'Specialized New Era Cuff S-Logo Beanie', 'specialized', 'apparel', 'jerseys', '<p><strong></strong><strong>$5.00 Shipping Nationwide / Free On Orders $50.00+</strong></p>
<ul>
<li>North Island Delivery: 1-2 Working Days</li>
<li>South Island Delivery: 2-4 Working Days</li>
</ul>
<p><strong><br></strong></p>
<p><strong>Description:</strong></p>
<ul>
<li>New Era Premium knit beanie.</li>
<li>Fold-over cuff design with embroidered S-Logo.</li>
<li>One Size Fits All.</li>
<li>Fabric Content: 100% Acrylic Knit.</li>
</ul>', array['neweracuffs-logobeanie/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('specializedcapbeanieat', 'Specialized New Era Pom Beanie', 'specialized', 'apparel', 'jerseys', '<p><strong>$5.00 Shipping Nationwide / Free On Orders $50.00+</strong></p>
<ul>
<li>North Island Delivery: 1-2 Working Days</li>
<li>South Island Delivery: 2-4 Working Days</li>
</ul>
<p><strong><br></strong></p>
<p><strong>Description:</strong></p>
<ul>
<li>New Era Premium Knit beanie with POM.</li>
<li>Fold-over cuff design with wordmark branding knit into the hat design.</li>
<li>One Size Fits All.</li>
<li>Fabric Content: 100% Acrylic Knit.</li>
</ul>', array['specializedcapbeanieat/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('specialized-stoke-tee', 'Specialized Stoke Tee', 'specialized', 'apparel', 'jerseys', '<p>Specialized Stoke Tee</p>
Share your stoke with this limited-edition collection fresh from our custom vault.

<ul>
<li>Branded screen print on the chest and back.</li>
<li>Fabric Content: 85% Drirelease Polyester, 15% Cotton.</li>
</ul>', array['specialized-stoke-tee/1.jpg', 'specialized-stoke-tee/2.webp']::text[], 'new', 0, '2023-07-05'::date, false, false),
  ('specializedtherminallinerglove', 'Specialized Therminal Liner Glove', 'specialized', 'apparel', 'jerseys', '<p><strong>Description:</strong></p>
<p>When you need more insulation for a long, cold ride, our Therminal™ Liner gloves are up to the task. They''re designed to give you an added level of warmth by wearing them inside either our Deflect™ or Element gloves. We made them plenty thin to avoid adding any bulk or to affect your finger dexterity or bar feel. And on a brisk spring or fall day, they''re more than capable of staving off chills when worn alone, which is no problem at all given the durable reinforced palm.</p>
<ul>
<li>Therminal™ fleece provides loft to to trap heat and move moisture away from the skin, preventing cold hands.</li>
<li>Ax Suede palm material is tough, hydrophobic, conforming, and touchscreen-compatible.</li>
<li>Rib-knit cuff with pull-on tab interfaces well with long sleeves and makes getting the gloves on and off an easy process.</li>
<li>Reflective details enhance your visibility to motorists in low-light conditions.</li>
</ul>', array['specializedtherminallinerglove/1.jpg']::text[], 'new', 0, '2021-08-19'::date, false, false),
  ('spoken-castelli-espresso-bibs', 'Spoken  Castelli Espresso Bibs', 'mr-rider', 'apparel', 'jerseys', '<p>Your new favourite bibshort. Designed and engineered with an emphasis on comfort and performance, this short is the best short for most of your rides.</p>

<p>Product features</p>
<ul>
<li>Castelli engineered Espresso Doppio fabric for comfort and a perfect fit</li>
<li>Raw-cut leg ending with silicone gripper</li>
<li>Stretch mesh bib straps for ventilation and comfort</li>
<li>Pocket on rear for added storage</li>
<li>Progetto X2 Air Seamless seat pad for all-day comfort</li>
<li>Reflective tabs for increased visibility</li>
</ul>

<p>Technical Features </p>
<ul>
<li>Weight:192<em> g</em>
</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F
</li>
<li>
Fit:Tailored

</li>
</ul>', array['spoken-castelli-espresso-bibs/1.jpg', 'spoken-castelli-espresso-bibs/2.jpg']::text[], 'new', 0, '2025-08-01'::date, false, false),
  ('spoken-castelli-espresso-jersey', 'Spoken Castelli Espresso Jersey', 'mr-rider', 'apparel', 'jerseys', '<p>Your new favourite jersey. Designed and engineered with an emphasis on comfort and performance, no matter what type of ride you are planning on today, the Espresso Jersey is the best choice.</p>

<p>Product features</p>
<ul>
<li>Castelli engineered Air_O Stretch fabric for breathability, comfort and perfect fit</li>
<li>Fabric optimized for breathability and aerodynamics</li>
<li>Raw-cut sleeve endings for comfort</li>
<li>Three back pockets with fourth zippered security pocket for valuables</li>
<li>Full-length YKK® Vislon® zipper with easy-use zipper pull</li>
<li>Elastic at waist with silicone to keep jersey in place</li>
<li>Reflective tab for added visibility</li>
</ul>

<p>Technical Features </p>
<ul>
<li>Weight:161<em> g</em>
</li>
<li>Temperature:18°C - 35°C / 64°F - 95°F
</li>
<li>
Fit:Tailored

</li>
</ul>', array['spoken-castelli-espresso-jersey/1.jpg', 'spoken-castelli-espresso-jersey/2.jpg', 'spoken-castelli-espresso-jersey/3.jpg', 'spoken-castelli-espresso-jersey/4.jpg']::text[], 'new', 8, '2025-08-01'::date, false, false),
  ('sportfulkellyjersey', 'Sportful Kelly Jersey', 'sportful', 'apparel', 'jerseys', '<p><strong>Description:</strong></p>
<p>The Road is the only catwalk</p>
<p>A jersey with a fashion-oriented approach. The jersey features a feminine cut, superior fabrics and raw-cut sleeve ends.</p>

For those looking for unbeatable value for money in a product designed with the experience and know-how that Sportful has developed over the years. A lightweight garment with a generous and comfortable fit for first rides or for more experienced cyclists’ training rides.
<p><strong> </strong></p>
<p><strong>Features:</strong></p>
<ul>
<li>Lie-flat elastic on sleeve ends and collar with laser-cut finishing</li>
<li>Full-length YKK® Vislon® zip</li>
<li>3 back pockets</li>
<li>Concealed waist elastic with silicone grip </li>
</ul>', array['sportfulkellyjersey/1.jpg']::text[], 'new', 3, '2021-08-19'::date, false, true),
  ('sportful-snap-jersey-womens', 'Sportful Snap Jersey Womens', 'sportful', 'apparel', 'jerseys', '<p>COLOR YOUR RIDES.</p>
<p>With a modern and elegant cut, the Snap is the perfect jersey to showcase your style on the bike.</p>
<ul>
<li>Lighter and more durable thanks to new minimal-weight fabric</li>
<li>Raw-cut sleeve ends</li>
<li>3 classic pockets plus extra pocket with zip</li>
<li>Silicone on elastic at back</li>
</ul>', array['sportful-snap-jersey-womens/1.jpg']::text[], 'new', 1, '2024-10-09'::date, false, false),
  ('sportful-velodrome-womens-short-sleeve-jersey', 'Sportful Velodrome Womens Short Sleeve Jersey', 'sportful', 'apparel', 'jerseys', '<p>Sportful Velodrome Womens Short Sleeve Jersey</p>
The speed and the light effects created by slipstreams in the velodrome inspired the design for this bright and vibrant but stylish jersey.<br><br>We’ve connected all our graphics to speed and racing by mixing automotive inspiration with the cycling world. But we decided to dedicate at least one design exclusively to two-wheeled racing. What better place than a velodrome to take up the themes that inspired us with the other jerseys? Speed, competition, classic taste, and a modern interpretation. In creating this graphic with a classic feel, we took our inspiration from the lines of the velodrome, those that every track cyclist knows and stares at during his or her race.<br>Then, in terms of the cut, it’s a very modern jersey. Raw-cut elastic and sleeve edges, a new more minimal elastic on the front, and a very modern fit without being too race-oriented and tight. A perfect jersey for your cycling and non-cycling experiences — when style counts at least as much as performance.<br><br>WHO IS IT FOR?<br>For those who want to express their exuberant personality while riding in a jersey with a classic and at the same time modern style. Without sacrificing the best technical features, and at an attractive price.<br><br>WHY YOU WILL LOVE IT?<br>Modern and elegant cut, simple and unique style. A perfect jersey for your cycling experiences when you want to express your own personality.', array['sportful-velodrome-womens-short-sleeve-jersey/1.jpg']::text[], 'new', 1, '2022-01-06'::date, false, true),
  ('womens-prime-lightweight-short-sleeve-jersey', 'Women''s Prime Lightweight Short Sleeve Jersey', 'specialized', 'apparel', 'jerseys', '<p>Introducing our latest innovation in lightweight apparel, the Prime Lightweight Short Sleeve Jersey. 40% lighter than our Prime Jersey, it’s lighter than an empty 26oz water bottle and the lightest full featured jersey - full zipper and three pockets - on the planet. Wicking sweat from your body 17% faster than any other jersey we have ever made, Prime Lightweight is the premier jersey for hot days and high mountains. Engineered from ultralight open-mesh fabric, it ensures optimal airflow and moisture management, keeping you comfortable. Don''t just endure the heat—conquer it with style. All of the pieces in our Prime collection feature a snug, close to body fit that helps with both heat dissipation and comfort.</p>', array['womens-prime-lightweight-short-sleeve-jersey/1.jpg', 'womens-prime-lightweight-short-sleeve-jersey/2.jpg', 'womens-prime-lightweight-short-sleeve-jersey/3.jpg', 'womens-prime-lightweight-short-sleeve-jersey/4.jpg', 'womens-prime-lightweight-short-sleeve-jersey/5.jpg']::text[], 'new', 4, '2024-11-19'::date, false, false),
  ('womens-prime-short-sleeve-jersey', 'Women''s Prime Short Sleeve Jersey', 'specialized', 'apparel', 'jerseys', '<p>The perfect apparel for the perfect ride, that''s what our Prime collection is all about. The best fabrics, constructions, and technologies go into these pieces, and the Women''s Prime Short Sleeve Jersey is no exception. Starting with the fabric, it''s been specifically designed to help regulate your body temperature when the mercury starts to rise—yeah; you''ll feel the cooling the first time you touch it—making those toasty days in the saddle more enjoyable. Furthering the cooling potential, it features a VISLON® zipper that''s super easy to zip and unzip for hot climbs and cool descents. Finally; it features three main back pockets plus a zippered one to store all your snacks and essentials that are sure to keep you going all day.</p>', array['womens-prime-short-sleeve-jersey/1.jpg', 'womens-prime-short-sleeve-jersey/2.jpg', 'womens-prime-short-sleeve-jersey/3.jpg', 'womens-prime-short-sleeve-jersey/4.jpg', 'womens-prime-short-sleeve-jersey/5.jpg']::text[], 'new', 3, '2024-08-06'::date, false, false),
  ('womens-sl-blur-short-sleeve-jersey', 'Women''s SL Blur Short Sleeve Jersey', 'specialized', 'apparel', 'jerseys', '<p>Long hours in the saddle put a ton of stress on your jerseys. But we think it''s a misconception that you can''t provide race-ready performance in a package that''s built to take some abuse. And for this reason, we created our SL Jersey.</p>', array['womens-sl-blur-short-sleeve-jersey/1.jpg', 'womens-sl-blur-short-sleeve-jersey/2.jpg', 'womens-sl-blur-short-sleeve-jersey/3.jpg', 'womens-sl-blur-short-sleeve-jersey/4.jpg', 'womens-sl-blur-short-sleeve-jersey/5.jpg']::text[], 'new', 0, '2024-08-06'::date, false, false),
  ('womens-sl-solid-short-sleeve-jersey', 'Women''s SL Solid Short Sleeve Jersey', 'specialized', 'apparel', 'jerseys', '<p>Long hours in the saddle put a ton of stress on your jerseys. But we think it''s a misconception that you can''t provide race-ready performance in a package that''s built to take some abuse. And for this reason, we created our SL Jersey.</p>', array['womens-sl-solid-short-sleeve-jersey/1.jpg', 'womens-sl-solid-short-sleeve-jersey/2.jpg', 'womens-sl-solid-short-sleeve-jersey/3.jpg', 'womens-sl-solid-short-sleeve-jersey/4.jpg', 'womens-sl-solid-short-sleeve-jersey/5.jpg']::text[], 'new', 0, '2024-08-06'::date, false, false),
  ('womens-trail-shorts-with-liner', 'Women''s Trail Shorts with Liner', 'specialized', 'apparel', 'jerseys', '<p>Our Women’s Trail Shorts are an essential for any trail riders'' wardrobe. They''re lightweight, durable, and downright comfortable—everything you need for an afternoon shred. Plus, they come with a removeable liner with our Mountain Body Geometry chamois that your posterior will be thankful for.</p>', array['womens-trail-shorts-with-liner/1.jpg', 'womens-trail-shorts-with-liner/2.jpg', 'womens-trail-shorts-with-liner/3.jpg', 'womens-trail-shorts-with-liner/4.jpg', 'womens-trail-shorts-with-liner/5.jpg']::text[], 'new', 8, '2024-08-05'::date, false, false),

  -- ---- apparel · mtb-apparel ----
  ('ergon-hm2-1', 'Ergon HM2', 'ergon', 'apparel', 'mtb-apparel', '<ul> <li>Best fit</li> <li>Anatomically preformed</li> <li>Crease-free</li> </ul> <p>The lightweight all around MTB glove from Ergon takes gripping ergonomics to a new level. With freedom of movement your palm and fingers find their best position for optimum control on the trail.</p> <ul> <li>Name: <strong>HM2</strong>
</li> <li>Use: <strong>All-Mountain/Trail, Cross-Country/Marathon, MTB-Touring, E-MTB</strong>
</li> <li>Color: <strong>Black</strong>
</li> </ul> <h3><strong>ERGONOMICALLY OPTIMIZED</strong></h3> <p>The HM2 mountain bike glove offers lightweight hand protection while riding due to its anatomical pre-forming fit of the palm and fingers. The anatomical fit results in no bunching or wrinkles. The back of the hand and fingers of the HM2 are also particularly flexible and well ventilated due to the use of mesh fabric.</p> <h3><strong>SAFE SWITCHING AND BRAKING</strong></h3> <p>Slip-resistant surfaces enable safe shifting and braking. The consistent omission of padding ensures the best possible feel and control.</p> <h3><strong>OPTIMIZED SEAMS</strong></h3> <p>The flat seams of HM2 prevent unpleasant pressure on the handlebars. The fingertips are completely free of seams for maximum riding comfort.</p> <h3><strong>FLEXIBLE VELCRO CLOSURE</strong></h3> <p>The HM2 has a Velcro closure on the wrist that can be individually adjusted to ensure an ideal fit of the glove.</p>', array['ergon-hm2-1/1.png', 'ergon-hm2-1/2.png', 'ergon-hm2-1/3.png', 'ergon-hm2-1/4.png']::text[], 'new', 0, '2025-05-20'::date, false, false),
  ('gravity-long-sleeve-jersey', 'Gravity Long Sleeve Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>The Gravity Long Sleeve Jersey is sure to be your new go-to for long, lap-filled days or massive park sessions. It features a comfortable, casual fit and has plenty of integrated ventilation to keep you cool.</p>', array['gravity-long-sleeve-jersey/1.jpg', 'gravity-long-sleeve-jersey/2.jpg', 'gravity-long-sleeve-jersey/3.jpg', 'gravity-long-sleeve-jersey/4.jpg', 'gravity-long-sleeve-jersey/5.jpg']::text[], 'new', 2, '2024-08-05'::date, false, false),
  ('gravity-race-long-sleeve-jersey', 'Gravity Race Long Sleeve Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>This jersey wasn’t just designed to handle the intensity of the track. It was designed to handle the intensity of race day. It’s durable and flexible in all the right places so that you can shred with confidence.</p>', array['gravity-race-long-sleeve-jersey/1.jpg', 'gravity-race-long-sleeve-jersey/2.jpg', 'gravity-race-long-sleeve-jersey/3.jpg', 'gravity-race-long-sleeve-jersey/4.jpg', 'gravity-race-long-sleeve-jersey/5.jpg']::text[], 'new', 3, '2024-08-05'::date, false, false),
  ('gravity-shorts', 'Gravity Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>When you''re consistently smashing down the trail at Mach speed, chances are you''re gonna hit the dirt. With the Gravity Shorts, we''ve developed the perfect combination of durability, ventilation, and fit. Taking the protection of our Trail Shorts to the next level, we developed the Gravity Shorts with a hefty amount of CORDURA® to protect both them and you when a crash happens. To keep things cool, we added laser perforated venting to keep you and your knee pads from getting overly sweaty.</p>', array['gravity-shorts/1.jpg', 'gravity-shorts/2.jpg', 'gravity-shorts/3.jpg', 'gravity-shorts/4.jpg', 'gravity-shorts/5.jpg']::text[], 'new', 6, '2024-08-05'::date, false, false),
  ('mens-gravity-training-shorts', 'Men''s Gravity Training Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Gravity Shorts are the perfect blend of durability, ventilation, and fit. Constructed from the robust Nylon Cordura fabric, these shorts redefine resilience, providing both protection and agility. Lightweight, stretchy, and abrasion-resistant, they seamlessly adapt to your every move, all while being cut to pedal efficiently with knee pads. A water-resistant treatment adds an extra layer of defense against light precipitation and trail spray, ensuring you stay dry and focused. Laser-perforated venting strategically placed at the lower back and inner thigh keeps you cool, allowing you to push your limits and extend your ride. The elasticated waistband, featuring an interior silicone gripper, guarantees a secure hold without compromising comfort. Bonded seams contribute to a streamlined profile, reducing bulk and weight. Explore the trails with ease, knowing that two side zipper pockets provide convenient access to your essentials, and the locking snap closure adds a touch of strength and security to your ride.</p>', array['mens-gravity-training-shorts/1.jpg', 'mens-gravity-training-shorts/2.jpg', 'mens-gravity-training-shorts/3.jpg', 'mens-gravity-training-shorts/4.jpg', 'mens-gravity-training-shorts/5.jpg']::text[], 'new', 6, '2024-08-05'::date, false, false),
  ('mens-prime-swat-bib-shorts', 'Men''s Prime SWAT Bib Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>With strategically placed mesh pockets on the thighs and lower back for seamless storage, your essentials are always at hand with the Prime SWAT Bib Shorts. The plush elastic suspenders and brushed tricot suspender anchor provide a secure, irritation-free fit, allowing you to focus entirely on the ride. All of our SWAT pieces are the most innovative storage solutions that keep exactly what you need exactly where you want it—which is why you can fit your phone, a tube, and plenty of gummy bears in your Prime SWAT Liner Bib Shorts. These Bib Shorts also feature an elasticated cuff with a silicone gripper, ensuring a gentle yet secure hold on your legs. This thoughtful design prevents ride-up, guaranteeing a distraction-free ride every time. The fully-sewn waistband construction combines durability with unrestricted movement, empowering you to conquer any road with ease. With our advanced Triple Density Body Geometry Contour 3D Chamois, these bib shorts offer unparalleled cushioning and support during long rides.</p>', array['mens-prime-swat-bib-shorts/1.jpg', 'mens-prime-swat-bib-shorts/2.jpg', 'mens-prime-swat-bib-shorts/3.jpg', 'mens-prime-swat-bib-shorts/4.jpg', 'mens-prime-swat-bib-shorts/5.jpg']::text[], 'new', 0, '2024-08-06'::date, false, false),
  ('mens-prime-swat-liner-bib-shorts', 'Men''s Prime SWAT Liner Bib Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>The ultimate solution for carrying your trail essentials in style and comfort, our Prime SWAT Liner Bib Shorts let you bid farewell to bulky packs and uncomfortable sweat stains. Designed to be worn discreetly underneath your favorite Trail Shorts or Pants, these bib shorts feature a highly breathable open mesh fabric that ensures optimal ventilation, keeping you cool and comfortable on the trails. But the real game-changer? Our patent-pending design boasts three floating rear pockets, strategically integrated to securely store your ride essentials. Crafted to sit flush against your body, these pockets come in varying sizes and locations, ensuring a snug fit for items of all shapes and sizes. No more bouncing or discomfort—just effortless access to your gear as you tackle challenging terrains. All of our SWAT pieces are the most innovative storage solutions that keep exactly what you need exactly where you want it—which is why you can fit your phone, a tube, plenty of gummy bears, and even a pre-drop 12oz cold one in your Prime SWAT Liner Bib Shorts. Featuring stretchy elastic suspenders and a brushed tricot suspender anchor, these bib shorts offer a plush, soft feel against your skin while staying securely in place. The mountain bike-specific chamois, smaller and thinner than traditional designs, provides enhanced ventilation. Plus, outward-facing seams reduce chafing, ensuring a comfortable ride every time. Made from a blend of recycled nylon, elastane, nylon, spandex, and polyester tricot, these bib shorts not only deliver unparalleled performance but also reflect our commitment to sustainability.</p>', array['mens-prime-swat-liner-bib-shorts/1.jpg', 'mens-prime-swat-liner-bib-shorts/2.jpg', 'mens-prime-swat-liner-bib-shorts/3.jpg', 'mens-prime-swat-liner-bib-shorts/4.jpg', 'mens-prime-swat-liner-bib-shorts/5.jpg']::text[], 'new', 0, '2024-08-06'::date, false, false),
  ('mens-prime-swat-liner-shorts', 'Men''s Prime Swat Liner Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>With our Prime SWAT Liner Shorts, you can safely stow all your essentials right in your shorts and say goodbye to cumbersome packs and hello to streamlined trail adventures. Designed to be worn discreetly beneath your favorite Trail Shorts or Pants, these shorts redefine your riding experience. Crafted from highly breathable open mesh fabric, they offer unmatched comfort and ventilation, keeping you cool and focused on the trail ahead. All of our SWAT pieces are the most innovative storage solutions that keep exactly what you need exactly where you want it. A floating rear pocket with a zipper, strategically placed and integrated to securely store all your ride essentials—like your keys, credit card, or extra gummy bears. No more worries about items bouncing out—these pockets are designed to keep your belongings secure and easily accessible. The elasticated front waistband ensures a secure fit, holding the shorts in place, while mesh elastic leg grippers prevent any shifting during your ride. Our mountain bike-specific chamois, smaller and thinner than traditional designs, ensures superior ventilation and walkability, enhancing your overall comfort. Outward-facing seams further reduce chafing, ensuring a smooth and irritation-free ride. Committed to both performance and sustainability, these shorts are made from a blend of recycled nylon, elastane, nylon, and spandex. Experience the perfect harmony of function and convenience with our Prime SWAT Liner Shorts. Gear up, hit the trails, and enjoy your ride to the fullest. Your ideal trail companion awaits.</p>', array['mens-prime-swat-liner-shorts/1.jpg', 'mens-prime-swat-liner-shorts/2.jpg', 'mens-prime-swat-liner-shorts/3.jpg', 'mens-prime-swat-liner-shorts/4.jpg', 'mens-prime-swat-liner-shorts/5.jpg']::text[], 'new', 0, '2024-08-06'::date, false, false),
  ('mens-traction-long-sleeve-tee', 'Men''s Traction Long Sleeve Tee', 'specialized', 'apparel', 'mtb-apparel', '<p>When the trail gets tough, the Men''s Traction Long Sleeve Tee has your back. Made with MiniR® fabric, it’s like your personal shade—reflecting heat and blocking UV rays so you can ride longer without overheating. Forward shoulder seams and underarm gussets keep things smooth, with no awkward bunching. The fabric was handpicked with input from our top riders—Loïc Bruni included—for unbeatable comfort. With a relaxed fit and iron-on repair patch, it’s built to keep up, ride after ride.</p>', array['mens-traction-long-sleeve-tee/1.jpg', 'mens-traction-long-sleeve-tee/2.jpg', 'mens-traction-long-sleeve-tee/3.jpg', 'mens-traction-long-sleeve-tee/4.jpg', 'mens-traction-long-sleeve-tee/5.jpg']::text[], 'new', 6, '2025-09-05'::date, false, false),
  ('mens-traction-pant', 'Men''s Traction Pant', 'specialized', 'apparel', 'mtb-apparel', '<p>Designed with input from Loïc Bruni, Finn Iles, and other top riders, the Men''s Traction Pant takes everything that made our iconic Demo Pants legendary—and makes it better. With abrasion-resistant, four-way stretch fabric, fast-drying yarns, and laser-perforated vents, they’re tough, breathable, and built to move through whatever the trail throws at you. Reinforced knees, a dialed-in fit, and an iron-on repair patch keep you rolling, ride after ride.</p>', array['mens-traction-pant/1.jpg', 'mens-traction-pant/2.jpg', 'mens-traction-pant/3.jpg', 'mens-traction-pant/4.jpg', 'mens-traction-pant/5.jpg']::text[], 'new', 9, '2025-09-05'::date, false, false),
  ('mens-traction-short', 'Men''s Traction Short', 'specialized', 'apparel', 'mtb-apparel', '<p>Tough trails demand tougher gear—and the Men’s Traction Short delivers. Developed with input from Loïc Bruni and Finn Iles, these shorts are built from abrasion-resistant, four-way stretch fabric with fast-drying yarns and laser-perforated vents to keep airflow high. At just 168 grams—59 grams lighter than before—they’re as light as they are tough. A curved waistband and snap closure provide a secure fit, while multiple pockets keep essentials close. Bonus: an iron-on patch for quick fixes.</p>', array['mens-traction-short/1.jpg', 'mens-traction-short/2.jpg', 'mens-traction-short/3.jpg', 'mens-traction-short/4.jpg', 'mens-traction-short/5.jpg']::text[], 'new', 2, '2025-09-05'::date, false, false),
  ('mens-traction-short-sleeve-tee', 'Men''s Traction Short Sleeve Tee', 'specialized', 'apparel', 'mtb-apparel', '<p>Take on the trail with the Men''s Traction Short Sleeve Tee—built to keep you cool, comfortable, and ready for anything. Made with MiniR® fabric, it reflects heat and blocks UV rays to keep you fresh under the sun. Forward shoulder seams and underarm gussets eliminate bunching for unrestricted movement. And with Loïc Bruni’s input—he’s obsessed with fabric feel—we handpicked materials that deliver next-level comfort. A relaxed fit and iron-on repair patch make it perfect for big rides and beyond.</p>', array['mens-traction-short-sleeve-tee/1.jpg', 'mens-traction-short-sleeve-tee/2.jpg', 'mens-traction-short-sleeve-tee/3.jpg', 'mens-traction-short-sleeve-tee/4.jpg', 'mens-traction-short-sleeve-tee/5.jpg']::text[], 'new', 10, '2025-09-05'::date, false, false),
  ('mens-trail-air-gloves', 'Men''s Trail Air Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail Air Gloves have been designed for maximum ventilation. With a micro-vented, perforated palm, a lightweight breathable back of hand, and power knit mesh between your fingers, these gloves are ready for even the hottest trail days.</p>', array['mens-trail-air-gloves/1.jpg', 'mens-trail-air-gloves/2.jpg', 'mens-trail-air-gloves/3.jpg', 'mens-trail-air-gloves/4.jpg', 'mens-trail-air-gloves/5.jpg']::text[], 'new', 8, '2024-08-05'::date, false, false),
  ('mens-trail-air-long-sleeve-jersey', 'Men''s Trail Air Long Sleeve Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>What’s better than ripping down the mountain while you''re riding absolutely on point? Staying plenty cool while doing it. Our new Trail Air Long Sleeve jersey uses VaporRize™; a super lightweight, breathable fabric, that keeps you cool, while feeling comfortable against your skin and protecting you from ultraviolet rays and trail side foliage.</p>', array['mens-trail-air-long-sleeve-jersey/1.jpg', 'mens-trail-air-long-sleeve-jersey/2.jpg', 'mens-trail-air-long-sleeve-jersey/3.jpg', 'mens-trail-air-long-sleeve-jersey/4.jpg', 'mens-trail-air-long-sleeve-jersey/5.jpg']::text[], 'new', 3, '2024-11-19'::date, false, false),
  ('mens-trail-air-short-sleeve-jersey', 'Men''s Trail Air Short Sleeve Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>What’s better than ripping down the mountain while you''re riding absolutely on point? Staying plenty cool while doing it. Our new Trail Air Long Sleeve jersey uses VaporRize™; a super lightweight, breathable fabric, that keeps you cool, while feeling comfortable against your skin and protecting you from ultraviolet rays and trail side foliage.</p>', array['mens-trail-air-short-sleeve-jersey/1.jpg', 'mens-trail-air-short-sleeve-jersey/2.jpg', 'mens-trail-air-short-sleeve-jersey/3.jpg', 'mens-trail-air-short-sleeve-jersey/4.jpg', 'mens-trail-air-short-sleeve-jersey/5.jpg']::text[], 'new', 0, '2024-11-19'::date, false, false),
  ('mens-trail-air-shorts', 'Men''s Trail Air Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>When ripping singletrack on a hot day, you need shorts that can not only take a beating, but keep you cool and comfortable. Cue the Trail Air Shorts.</p>', array['mens-trail-air-shorts/1.jpg', 'mens-trail-air-shorts/2.jpg', 'mens-trail-air-shorts/3.jpg', 'mens-trail-air-shorts/4.jpg', 'mens-trail-air-shorts/5.jpg']::text[], 'new', 3, '2024-08-05'::date, false, false),
  ('mens-trail-d3o-gloves', 'Men''s Trail D3O Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail D3O Gloves feature added D3O knuckle protection for those pesky trail obstacles. Pair that with silicone-printed fingers for grip and brake lever control, an AX Suede palm for durability and bar feel, and added ventilation for hot spots and you’re left with a protective trail glove that gives nothing up to control or breathability.</p>', array['mens-trail-d3o-gloves/1.jpg', 'mens-trail-d3o-gloves/2.jpg', 'mens-trail-d3o-gloves/3.jpg', 'mens-trail-d3o-gloves/4.jpg', 'mens-trail-d3o-gloves/5.jpg']::text[], 'new', 4, '2024-08-05'::date, false, false),
  ('mens-trail-gloves', 'Men''s Trail Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail Gloves are sure to be your go-to for the perfect, everyday mountain glove. They feature silicone-printed fingers for grip and brake lever control, an AX Suede palm for durability and bar feel, and fabrics that deliver the perfect blend of comfort and durability.</p>', array['mens-trail-gloves/1.jpg', 'mens-trail-gloves/2.jpg', 'mens-trail-gloves/3.jpg', 'mens-trail-gloves/4.jpg', 'mens-trail-gloves/5.jpg']::text[], 'new', 11, '2024-08-05'::date, false, false),
  ('mens-trail-long-sleeve-jersey', 'Men''s Trail Long Sleeve Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>Finding the perfect trail jersey is often a struggle but with our Trail Jerseys, we believe we''ve hit the mark. The secret sauce comes from the MiniR® fabric that reflects the sun to help keep you cool yet is plenty tough for the rigors and abuse that comes with trail riding. Not stopping there, we employed a casual style so you''ll feel right at home on the mountain and then grabbing some grub on the way home.</p>', array['mens-trail-long-sleeve-jersey/1.jpg', 'mens-trail-long-sleeve-jersey/2.jpg', 'mens-trail-long-sleeve-jersey/3.jpg', 'mens-trail-long-sleeve-jersey/4.jpg', 'mens-trail-long-sleeve-jersey/5.jpg']::text[], 'new', 5, '2024-11-27'::date, false, false),
  ('mens-trail-shield-gloves', 'Men''s Trail Shield Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail Shield Gloves are the most padded in our line. These gloves feature a conductive palm that keeps your hands comfortable on rough trails, but they also have a layer of foam inserted into the knuckle that adds some protection from hidden branches.</p>', array['mens-trail-shield-gloves/1.jpg', 'mens-trail-shield-gloves/2.jpg', 'mens-trail-shield-gloves/3.jpg', 'mens-trail-shield-gloves/4.jpg', 'mens-trail-shield-gloves/5.jpg']::text[], 'new', 3, '2024-08-05'::date, false, false),
  ('mens-trail-shorts-with-liner', 'Men''s Trail Shorts with Liner', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail Shorts are an essential for any trail riders'' wardrobe. They''re lightweight, durable, and downright comfortable—everything you need for an afternoon shred. Plus, they come with a removeable liner with our Mountain Body Geometry chamois that your posterior will be thankful for.</p>', array['mens-trail-shorts-with-liner/1.jpg', 'mens-trail-shorts-with-liner/2.jpg', 'mens-trail-shorts-with-liner/3.jpg', 'mens-trail-shorts-with-liner/4.jpg', 'mens-trail-shorts-with-liner/5.jpg']::text[], 'new', 6, '2024-08-05'::date, false, true),
  ('mens-trail-swat-jacket', 'Men''s Trail SWAT™ Jacket', 'specialized', 'apparel', 'mtb-apparel', '<p>For the times when the weather doesn''t want to cooperate with the forecast, we''ve developed the Trail SWAT™ Jacket. It features a breathable, wind-resistant fabric with a DWR water-repellant coating. Unlike many of our other SWAT™ products, this jacket doesn''t house a myriad of pockets. Instead, it has one, making it easy to fit into any pocket, pack, or bike equipped with SWAT™.</p>', array['mens-trail-swat-jacket/1.jpg', 'mens-trail-swat-jacket/2.jpg', 'mens-trail-swat-jacket/3.jpg', 'mens-trail-swat-jacket/4.jpg', 'mens-trail-swat-jacket/5.jpg']::text[], 'new', 2, '2024-08-05'::date, false, false),
  ('mens-trail-wind-jacket', 'Men''s Trail Wind Jacket', 'specialized', 'apparel', 'mtb-apparel', '<p>The Trail Wind Jacket is the perfect option for windy days with the chance of showers—its polyester shell features best-in-class breathability, while providing light water resistance. And yeah, you can wear it to your favorite pizza joint on a breezy evening. .</p>', array['mens-trail-wind-jacket/1.jpg', 'mens-trail-wind-jacket/2.jpg', 'mens-trail-wind-jacket/3.jpg', 'mens-trail-wind-jacket/4.jpg', 'mens-trail-wind-jacket/5.jpg']::text[], 'new', 7, '2024-08-05'::date, false, false),
  ('trail-pants', 'Trail Pants', 'specialized', 'apparel', 'mtb-apparel', '<p>Whether you''re going for style, protection, or a little of both, our Trail Pants are sure to be your go-to riding pant. We made them from a woven version of our lightweight and ultra-breathable VaporRize™ fabrics. As a result, the pants are more than tough enough to take repeated spills while you''re finding your line (or losing it), without sacrificing anything to comfort. And to further this concept, they also include laser perforated venting that''s just as effective at dumping excess heat as mesh, only it doesn''t create a weakness in the overall strength of the pants. In essence, this means that you won''t find yourself blowing them out for a long time to come. In terms of fit, you''ll find that these pants are plenty baggy enough to layer pads, but form-fitting enough to not get in the way.</p>', array['trail-pants/1.jpg', 'trail-pants/2.jpg', 'trail-pants/3.jpg', 'trail-pants/4.jpg', 'trail-pants/5.jpg']::text[], 'new', 8, '2024-08-05'::date, false, false),
  ('womens-gravity-training-shorts', 'Women''s Gravity Training Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Gravity Shorts are the perfect blend of durability, ventilation, and fit. Constructed from the robust Nylon Cordura fabric, these shorts redefine resilience, providing both protection and agility. Lightweight, stretchy, and abrasion-resistant, they seamlessly adapt to your every move, all while being cut to pedal efficiently with knee pads. A water-resistant treatment adds an extra layer of defense against light precipitation and trail spray, ensuring you stay dry and focused. Laser-perforated venting strategically placed at the lower back and inner thigh keeps you cool, allowing you to push your limits and extend your ride. The elasticated waistband, featuring an interior silicone gripper, guarantees a secure hold without compromising comfort. Bonded seams contribute to a streamlined profile, reducing bulk and weight. Explore the trails with ease, knowing that two side zipper pockets provide convenient access to your essentials, and the locking snap closure adds a touch of strength and security to your ride.</p>', array['womens-gravity-training-shorts/1.jpg', 'womens-gravity-training-shorts/2.jpg', 'womens-gravity-training-shorts/3.jpg', 'womens-gravity-training-shorts/4.jpg', 'womens-gravity-training-shorts/5.jpg']::text[], 'new', 6, '2024-08-05'::date, false, false),
  ('womens-prime-swat-bib-shorts', 'Women''s Prime SWAT Bib Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>With strategically placed mesh pockets on the thighs and lower back for seamless storage, your essentials are always at hand with the Prime SWAT Bib Shorts. The plush elastic suspenders and brushed tricot suspender anchor provide a secure, irritation-free fit, allowing you to focus entirely on the ride. All of our SWAT pieces are the most innovative storage solutions that keep exactly what you need exactly where you want it—which is why you can fit your phone, a tube, and plenty of gummy bears in your Prime SWAT Liner Bib Shorts. These Bib Shorts also feature an elasticated cuff with a silicone gripper, ensuring a gentle yet secure hold on your legs. This thoughtful design prevents ride-up, guaranteeing a distraction-free ride every time. The fully-sewn waistband construction combines durability with unrestricted movement, empowering you to conquer any road with ease. With our advanced Triple Density Body Geometry Contour 3D Chamois, these bib shorts offer unparalleled cushioning and support during long rides.</p>', array['womens-prime-swat-bib-shorts/1.jpg', 'womens-prime-swat-bib-shorts/2.jpg', 'womens-prime-swat-bib-shorts/3.jpg', 'womens-prime-swat-bib-shorts/4.jpg', 'womens-prime-swat-bib-shorts/5.jpg']::text[], 'new', 3, '2024-08-06'::date, false, false),
  ('womens-prime-swat-liner-bib-shorts', 'Women''s Prime SWAT Liner Bib Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>The ultimate solution for carrying your trail essentials in style and comfort, our Prime SWAT Liner Bib Shorts let you bid farewell to bulky packs and uncomfortable sweat stains. Designed to be worn discreetly underneath your favorite Trail Shorts or Pants, these bib shorts feature a highly breathable open mesh fabric that ensures optimal ventilation, keeping you cool and comfortable on the trails. But the real game-changer? Our patent-pending design boasts three floating rear pockets, strategically integrated to securely store your ride essentials. Crafted to sit flush against your body, these pockets come in varying sizes and locations, ensuring a snug fit for items of all shapes and sizes. No more bouncing or discomfort—just effortless access to your gear as you tackle challenging terrains. All of our SWAT pieces are the most innovative storage solutions that keep exactly what you need exactly where you want it—which is why you can fit your phone, a tube, plenty of gummy bears, and even a pre-drop 12oz cold one in your Prime SWAT Liner Bib Shorts. Featuring stretchy elastic suspenders and a brushed tricot suspender anchor, these bib shorts offer a plush, soft feel against your skin while staying securely in place. The mountain bike-specific chamois, smaller and thinner than traditional designs, provides enhanced ventilation. Plus, outward-facing seams reduce chafing, ensuring a comfortable ride every time. Made from a blend of recycled nylon, elastane, nylon, spandex, and polyester tricot, these bib shorts not only deliver unparalleled performance but also reflect our commitment to sustainability.</p>', array['womens-prime-swat-liner-bib-shorts/1.jpg', 'womens-prime-swat-liner-bib-shorts/2.jpg', 'womens-prime-swat-liner-bib-shorts/3.jpg', 'womens-prime-swat-liner-bib-shorts/4.jpg', 'womens-prime-swat-liner-bib-shorts/5.jpg']::text[], 'new', 5, '2024-08-06'::date, false, false),
  ('womens-traction-long-sleeve-tee', 'Women''s Traction Long Sleeve Tee', 'specialized', 'apparel', 'mtb-apparel', '<p>When the trail gets tough, the Women''s Traction Long Sleeve Tee has your back. Made with MiniR® fabric, it’s like your personal shade—reflecting heat and blocking UV rays so you can ride longer without overheating. Forward shoulder seams and underarm gussets keep things smooth, with no awkward bunching. The fabric was handpicked with input from our top riders for unbeatable comfort. With a relaxed fit and iron-on repair patch, it’s built to keep up, ride after ride.</p>', array['womens-traction-long-sleeve-tee/1.jpg', 'womens-traction-long-sleeve-tee/2.jpg', 'womens-traction-long-sleeve-tee/3.jpg', 'womens-traction-long-sleeve-tee/4.jpg', 'womens-traction-long-sleeve-tee/5.jpg']::text[], 'new', 6, '2025-09-05'::date, false, false),
  ('womens-traction-pant', 'Women''s Traction Pant', 'specialized', 'apparel', 'mtb-apparel', '<p>Developed with input from the best riders in the world, the Women''s Traction Pant takes everything that made our iconic Demo Pants legendary—and makes it better. Built with abrasion-resistant, four-way stretch fabric, fast-drying yarns, and laser-perforated vents, they keep you cool and moving freely on the trail. Reinforced knees, a secure fit, and an iron-on repair patch make them as ready for rough rides as you are.</p>', array['womens-traction-pant/1.jpg', 'womens-traction-pant/2.jpg', 'womens-traction-pant/3.jpg', 'womens-traction-pant/4.jpg', 'womens-traction-pant/5.jpg']::text[], 'new', 1, '2025-09-05'::date, false, false),
  ('womens-traction-short', 'Women''s Traction Short', 'specialized', 'apparel', 'mtb-apparel', '<p>Tough trails demand tougher gear—and the Women’s Traction Short delivers. Developed with input from the best riders in the world, these shorts are built from abrasion-resistant, four-way stretch fabric with fast-drying yarns and laser-perforated vents to keep airflow high. At just 168 gsm—59 grams lighter than before—they’re as light as they are tough. A curved waistband and snap closure provide a secure fit, while multiple pockets keep essentials close. Bonus: an iron-on patch for quick fixes.</p>', array['womens-traction-short/1.jpg', 'womens-traction-short/2.jpg', 'womens-traction-short/3.jpg', 'womens-traction-short/4.jpg', 'womens-traction-short/5.jpg']::text[], 'new', 7, '2025-09-05'::date, false, true),
  ('womens-traction-short-sleeve-tee', 'Women''s Traction Short Sleeve Tee', 'specialized', 'apparel', 'mtb-apparel', '<p>Take on the trail with the Women''s Traction Short Sleeve Tee, built to keep you cool, comfortable, and ready for anything. Made with MiniR® fabric, it reflects heat and blocks UV rays to keep you fresh under the sun. Forward shoulder seams and underarm gussets eliminate bunching for total freedom to shred. Our best riders helped choose the fabric for its unbeatable feel. With a relaxed fit and iron-on repair patch, it''s ready for big rides and beyond.</p>', array['womens-traction-short-sleeve-tee/1.jpg', 'womens-traction-short-sleeve-tee/2.jpg', 'womens-traction-short-sleeve-tee/3.jpg', 'womens-traction-short-sleeve-tee/4.jpg', 'womens-traction-short-sleeve-tee/5.jpg']::text[], 'new', 10, '2025-09-05'::date, false, false),
  ('womens-trail-air-gloves', 'Women''s Trail Air Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Women’s Trail Air Gloves have been designed for maximum ventilation. With a micro-vented, perforated palm, a lightweight breathable back of hand, and power knit mesh between your fingers, these gloves are ready for even the hottest trail days.</p>', array['womens-trail-air-gloves/1.jpg', 'womens-trail-air-gloves/2.jpg', 'womens-trail-air-gloves/3.jpg', 'womens-trail-air-gloves/4.jpg', 'womens-trail-air-gloves/5.jpg']::text[], 'new', 1, '2024-08-05'::date, false, false),
  ('womens-trail-air-long-sleeve-jersey', 'Women''s Trail Air Long Sleeve Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>What’s better than ripping down the mountain while you''re riding absolutely on point? Staying plenty cool while doing it. Our new Trail Air Long Sleeve jersey uses VaporRize™; a super lightweight, breathable fabric, that keeps you cool, while feeling comfortable against your skin and protecting you from ultraviolet rays and trail side foliage.</p>', array['womens-trail-air-long-sleeve-jersey/1.jpg', 'womens-trail-air-long-sleeve-jersey/2.jpg', 'womens-trail-air-long-sleeve-jersey/3.jpg', 'womens-trail-air-long-sleeve-jersey/4.jpg', 'womens-trail-air-long-sleeve-jersey/5.jpg']::text[], 'new', 4, '2024-08-05'::date, false, false),
  ('womens-trail-air-short-sleeve-jersey', 'Women''s Trail Air Short Sleeve Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>What’s better than ripping down the mountain while you''re riding absolutely on point? Staying plenty cool while doing it. Our new Trail Air Long Sleeve jersey uses VaporRize™; a super lightweight, breathable fabric, that keeps you cool, while feeling comfortable against your skin and protecting you from ultraviolet rays and trail side foliage.</p>', array['womens-trail-air-short-sleeve-jersey/1.jpg', 'womens-trail-air-short-sleeve-jersey/2.jpg', 'womens-trail-air-short-sleeve-jersey/3.jpg', 'womens-trail-air-short-sleeve-jersey/4.jpg', 'womens-trail-air-short-sleeve-jersey/5.jpg']::text[], 'new', 5, '2024-08-05'::date, false, false),
  ('womens-trail-air-shorts', 'Women''s Trail Air Shorts', 'specialized', 'apparel', 'mtb-apparel', '<p>When ripping singletrack on a hot day, you need shorts that can not only take a beating but keep you cool and comfortable. Cue the Women’s Trail Air Shorts.</p>', array['womens-trail-air-shorts/1.jpg', 'womens-trail-air-shorts/2.jpg', 'womens-trail-air-shorts/3.jpg', 'womens-trail-air-shorts/4.jpg', 'womens-trail-air-shorts/5.jpg']::text[], 'new', 5, '2024-08-05'::date, false, false),
  ('womens-trail-d3o-gloves', 'Women''s Trail D3O Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail D3O Gloves feature added D3O knuckle protection for those pesky trail obstacles. Pair that with silicone-printed fingers for grip and brake lever control, an AX Suede palm for durability and bar feel, and added ventilation for hot spots and you’re left with a protective trail glove that gives nothing up to control or breathability.</p>', array['womens-trail-d3o-gloves/1.jpg', 'womens-trail-d3o-gloves/2.jpg', 'womens-trail-d3o-gloves/3.jpg', 'womens-trail-d3o-gloves/4.jpg', 'womens-trail-d3o-gloves/5.jpg']::text[], 'new', 4, '2024-08-05'::date, false, false),
  ('womens-trail-gloves', 'Women''s Trail Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail Gloves are sure to be your go-to for the perfect, everyday mountain glove. They feature silicone-printed fingers for grip and brake lever control, an AX Suede palm for durability and bar feel, and fabrics that deliver the perfect blend of comfort and durability.</p>', array['womens-trail-gloves/1.jpg', 'womens-trail-gloves/2.jpg', 'womens-trail-gloves/3.jpg', 'womens-trail-gloves/4.jpg', 'womens-trail-gloves/5.jpg']::text[], 'new', 14, '2024-08-05'::date, false, false),
  ('womens-trail-shield-gloves', 'Women''s Trail Shield Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Women’s Trail Shield Gloves are the most padded in our line. These gloves feature a conductive palm that keeps your hands comfortable on rough trails, but they also have a layer of foam inserted into the knuckle that adds some protection from hidden branches.</p>', array['womens-trail-shield-gloves/1.jpg', 'womens-trail-shield-gloves/2.jpg', 'womens-trail-shield-gloves/3.jpg', 'womens-trail-shield-gloves/4.jpg', 'womens-trail-shield-gloves/5.jpg']::text[], 'new', 15, '2024-08-05'::date, false, false),
  ('womens-trail-swat-jacket', 'Women''s Trail SWAT™ Jacket', 'specialized', 'apparel', 'mtb-apparel', '<p>For the times when the weather doesn''t want to cooperate with the forecast, we''ve developed the Women''s Trail SWAT™ Jacket. It features a breathable, wind-resistant fabric with a DWR water-repellant coating. Unlike many of our other SWAT™ products, this jacket doesn''t house a myriad of pockets. Instead, it has one, making it easy to fit into any pocket, pack, or bike equipped with SWAT™.</p>', array['womens-trail-swat-jacket/1.jpg', 'womens-trail-swat-jacket/2.jpg', 'womens-trail-swat-jacket/3.jpg', 'womens-trail-swat-jacket/4.jpg', 'womens-trail-swat-jacket/5.jpg']::text[], 'new', 0, '2024-08-05'::date, false, false),
  ('womens-trail-wind-jacket', 'Women''s Trail Wind Jacket', 'specialized', 'apparel', 'mtb-apparel', '<p>The Women’s Trail Wind Jacket is the perfect option for windy days with the chance of showers—its polyester shell features best-in-class breathability, while providing light water resistance. And yeah, you can wear it to your favorite pizza joint on a breezy evening.</p>', array['womens-trail-wind-jacket/1.jpg', 'womens-trail-wind-jacket/2.jpg', 'womens-trail-wind-jacket/3.jpg', 'womens-trail-wind-jacket/4.jpg', 'womens-trail-wind-jacket/5.jpg']::text[], 'new', 6, '2024-08-05'::date, false, false),
  ('youth-short-sleeve-trail-jersey', 'Youth Short Sleeve Trail Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>Finding the perfect trail jersey is often a struggle, but with our Trail Jersey, we believe we''ve hit the mark. The secret sauce comes from the MiniR® fabric that reflects the sun to help keep you cool. Plus, it''s plenty tough for the rigors and abuse that comes with trail riding. Not stopping there, we employed a casual style so you''ll feel right at home on the mountain and when you''re grabbing some grub on the way home.</p>', array['youth-short-sleeve-trail-jersey/1.jpg', 'youth-short-sleeve-trail-jersey/2.jpg', 'youth-short-sleeve-trail-jersey/3.jpg', 'youth-short-sleeve-trail-jersey/4.jpg', 'youth-short-sleeve-trail-jersey/5.jpg']::text[], 'new', 3, '2024-08-05'::date, false, false),
  ('youth-trail-gloves', 'Youth Trail Gloves', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail Gloves are the perfect, everyday mountain glove for your little shredder. They feature silicone-printed fingers for grip and brake lever control, an AX Suede palm for durability and bar feel, and fabrics that deliver the perfect blend of comfort and durability.</p>', array['youth-trail-gloves/1.jpg', 'youth-trail-gloves/2.jpg', 'youth-trail-gloves/3.jpg', 'youth-trail-gloves/4.jpg', 'youth-trail-gloves/5.jpg']::text[], 'new', 2, '2024-08-05'::date, false, false),
  ('youth-trail-long-sleeve-jersey', 'Youth Trail Long Sleeve Jersey', 'specialized', 'apparel', 'mtb-apparel', '<p>Finding the perfect trail jersey is often a struggle but with our Trail Jerseys, we believe we''ve hit the mark. The secret sauce comes from the MiniR® fabric that reflects the sun to help keep you cool yet is plenty tough for the rigors and abuse that comes with trail riding. Not stopping there, we employed a casual style so you''ll feel right at home on the mountain and then grabbing some grub on the way home.</p>', array['youth-trail-long-sleeve-jersey/1.jpg', 'youth-trail-long-sleeve-jersey/2.jpg', 'youth-trail-long-sleeve-jersey/3.jpg', 'youth-trail-long-sleeve-jersey/4.jpg', 'youth-trail-long-sleeve-jersey/5.jpg']::text[], 'new', 3, '2024-08-05'::date, false, false),
  ('youth-trail-pant', 'Youth Trail Pant', 'specialized', 'apparel', 'mtb-apparel', '<p>Whether you''re going for style, protection, or a little of both, our Trail Pants are sure to be your go-to riding pant. We made them from a woven version of our lightweight and ultra-breathable VaporRize™ fabrics. As a result, the pants are more than tough enough to take repeated spills while you''re finding your line (or losing it) without sacrificing anything to comfort. And to further this concept, they also include laser perforated venting that''s just as effective at dumping excess heat as mesh, only it doesn''t create a weakness in the overall strength of the pants. In essence, this means that you won''t find yourself blowing them out for a long time to come. In terms of fit, you''ll find that these pants are plenty baggy enough to layer pads but form-fitting enough to not get in the way.</p>', array['youth-trail-pant/1.jpg', 'youth-trail-pant/2.jpg', 'youth-trail-pant/3.jpg', 'youth-trail-pant/4.jpg', 'youth-trail-pant/5.jpg']::text[], 'new', 2, '2024-08-05'::date, false, false),
  ('youth-trail-short', 'Youth Trail Short', 'specialized', 'apparel', 'mtb-apparel', '<p>Our Trail Shorts are an essential for any trail riders'' wardrobe. They''re lightweight, durable, and downright comfortable—everything you need for an afternoon shred.</p>', array['youth-trail-short/1.jpg', 'youth-trail-short/2.jpg', 'youth-trail-short/3.jpg', 'youth-trail-short/4.jpg', 'youth-trail-short/5.jpg']::text[], 'new', 3, '2024-08-05'::date, false, false),

  -- ---- apparel · skinsuits-trisuits ----
  ('castelli-btw-speed-suit-mens', 'Castelli BTW Speed Suit Men''s', 'castelli', 'apparel', 'skinsuits-trisuits', '<p>CFD and significant testing create the fastest road racing suit, optimized for high speeds when the race splits apart.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Made to be the fastest option for high-speed road racing</li>
<br><li>Dimpled shoulder and sleeve fabric for boundary-layer aerodynamics</li>
<br><li>Smooth body for reduced skin friction and laminar flow</li>
<br><li>Premio-based short portion for aero comfort</li>
<br><li>Progetto X2 Air seamless seat pad for all-day comfort</li>
<br><li>2-way YKK® zipper</li>
<br><li>Lasered tone-on-tone logos at back of leg and stitched scorpion patch at top of back</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>242gm</strong>
</li>
<br><li>Temperature <strong>14°C - 32°C / 57°F - 90°F</strong>
</li>
<br><li>Fit: <strong>Aero</strong>
</li>
<br>
</ul><br><p><strong>PUSHING THE LIMITS OF SPEED</strong> Military test pilots in the 1960s coined a phrase for pushing the aircraft to its limits, going all in, and risking their lives at the edge. The throttle levers with the knobs or balls at the top were pushed all the way forward against the cockpit wall: Balls to the Wall. BTW is for those days, those races where you never drop out of your 53x11 or 12, when you''re sometimes in the gutter or cornering at the limit of adhesion. When you''re all in, taking risks. Like the planes that inspired the phrase, the BTW Speed Suit uses cutting-edge research and construction in the pursuit of speed: CFD analysis, 3D test mannequins, fabric research and testing, numerous wind tunnel tests, and then testing in the WorldTour. At the beginning of the research project, we were set to sacrifice comfort in the name of speed, but in the end we kept fully breathable, fully stretchy fabrics. There’s a little more Lycra®, so you won’t stay quite as dry, and the shoulder fabric is slightly heavier. And it doesn’t have the Sanremo front opening, so your pee stops will be a bit more challenging. All that is a small price to pay for an incredible THREE PERCENT total aero drag savings compared to the fastest-in-class Sanremo Speed Suit. That 3 percent is at higher speeds, especially in the 45-65 kph range, when it really counts. You can get the BTW suit in your team graphics through Castelli''s custom program, or this stealthy ninja black version to tear up your local Strava segments or group rides.</p>', array['castelli-btw-speed-suit-mens/1.jpg', 'castelli-btw-speed-suit-mens/2.jpg', 'castelli-btw-speed-suit-mens/3.jpg', 'castelli-btw-speed-suit-mens/4.jpg', 'castelli-btw-speed-suit-mens/5.jpg']::text[], 'new', 0, '2023-01-23'::date, false, false),
  ('castelli-free-sanremo-3-tri-suit-short-sleeve-mens', 'Castelli Free Sanremo 3 Tri Suit Short Sleeve Men''s', 'castelli', 'apparel', 'skinsuits-trisuits', '<h3></h3>

<p>A true evolution of our best-selling suit</p>
<p>CFD-based fabric placement and seam construction</p>
<p>Engineered ribbed fabric on sleeves and shoulders to reduce drag at race speeds, with significant savings in CdA</p>
<p>Internal neck pocket for ice to keep body temperature down in hottest conditions</p>
<p>Bonded sleeve endings for comfort</p>
<p>Lightweight body fabric for optimal cooling, breathability, and comfort</p>
<p>2 rear pockets lie flat and prevent nutrition from bouncing around</p>
<p>Castelli''s Sanremo front opening makes it easier to bend for cycling and straighten out for the run and swim, while also allowing for easier nature breaks or opening up for extra-hot runs</p>
<p>Leg portion in aero-optimized Forza2 Stretch fabric for maximum comfort and aerodynamic advantage</p>
<p>Silicone leg grippers to keep the leg endings in place</p>
<p>KISS Tri seat pad that provides comfort on the bike and that you almost don''t feel during the run</p>
<p>UPF x</p>', array['castelli-free-sanremo-3-tri-suit-short-sleeve-mens/1.jpg', 'castelli-free-sanremo-3-tri-suit-short-sleeve-mens/2.jpg', 'castelli-free-sanremo-3-tri-suit-short-sleeve-mens/3.jpg', 'castelli-free-sanremo-3-tri-suit-short-sleeve-mens/4.jpg', 'castelli-free-sanremo-3-tri-suit-short-sleeve-mens/5.jpg']::text[], 'new', 9, '2026-02-27'::date, false, false),
  ('castelli-free-sanremo-3-tri-suit-short-sleeve-womens', 'Castelli Free Sanremo 3 Tri Suit Short Sleeve Women''s', 'castelli', 'apparel', 'skinsuits-trisuits', '<p>Revolutionizing our iconic Free Sanremo Suit. Groundbreaking aero improvements due to the engineered ribbed fabric on the sleeves.</p><p>A TRUE EVOLUTION OF OUR BEST-SELLING SUIT.</p>Not just an update. Revolutionizing our iconic Free Sanremo Suit for women. When we introduced the first short-sleeve triathlon suit with a full zip for summer 2014, Castelli was a pioneer in the sport, changing the way triathletes dress and race. These days, hardly anyone races with anything other than a short-sleeve suit. Over the last decade, our iconic Sanremo has seen numerous modifications in fit, performance, and speed. We dare say that the latest version will once again set standards. In a sport where aerodynamics is key and every detail is optimized, you don''t want to leave anything to chance on race day. The magic of the Free Sanremo 3 unfolds with the complete redesign of the sleeve and shoulder area. Hours of CFD analysis and testing in the wind tunnel revealed groundbreaking aero improvements specifically due to the engineered ribbed fabric on the sleeves and shoulders. The Forza2 Stretch fabric features a sophisticated debossed structure that has a positive impact on the airflow around the legs. But we don’t stop at aerodynamics. The new suit also supports you on the hottest of race days. Lightweight and breathable fabrics on the main body and an integrated ice pocket on the neck for ice cubes come in handy when you''re facing Ali’I Drive in October, or any other race in the heat. Sanremo means the suit opens completely in the front for added ventilation on the run. The two back pockets hold plenty of nutrition. The Free Sanremo is like riding on a wave of success.<p>PRODUCT FEATURES</p><p>A true evolution of our best-selling suit</p><p>CFD-based fabric placement and seam construction</p><p>Engineered ribbed fabric on sleeves and shoulders to reduce drag at race speeds, with significant savings in CdA</p><p>Internal neck pocket for ice to keep body temperature down in hottest conditions</p><p>Bonded sleeve endings for comfort</p><p>Lightweight body fabric for optimal cooling, breathability, and comfort</p><p>2 rear pockets lie flat and prevent nutrition from bouncing around</p><p>Castelli''s Sanremo front opening makes it easier to bend for cycling and straighten out for the run and swim, while also allowing for easier nature breaks or opening up for extra-hot runs</p><p>Leg portion in aero-optimized Forza2 Stretch fabric for maximum comfort and aerodynamic advantage</p><p>Silicone leg grippers to keep the leg endings in place</p><p>KISS Tri seat pad that provides comfort on the bike and that you almost don''t feel during the run</p><p>UPF x</p><p>TECHNICAL FEATURES</p>
Breathability 4/5
<ul>
<li>Weight:223<em> g</em>
</li>
<li>Temperature:15°C - 40°C / 59°F - 104°F
</li>
<li>Fit:Race
</li>
</ul>', array['castelli-free-sanremo-3-tri-suit-short-sleeve-womens/1.webp', 'castelli-free-sanremo-3-tri-suit-short-sleeve-womens/2.webp']::text[], 'new', 6, '2026-03-05'::date, false, false),
  ('castelli-saturday-morning-skinsuit', 'Castelli Saturday Morning Skinsuit', 'castelli', 'apparel', 'skinsuits-trisuits', '<p>Skinsuit Saturday. It Is A Stylish Look.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Breathability 4/5</p><p>Lightness 4/5</p><ul>
<li>Weight: 262<em> g</em>
</li>
<li>Temperature: 15°C - 35°C / 59°F - 95°F</li>
<li>Fit: Tailored</li>
</ul><p><br></p><p>PRODUCT FEATURES </p><p>All-in-one design blending Corretto Jersey performance with Espresso 2 Bibshort comfort</p><p>Progetto X2 Air Seamless seat pad for pro-level support</p><p>Bold Castelli graphics</p><p>Contoured collar construction enhances fit around neck</p><p>3 back pockets with fourth zippered security pocket for valuables</p><p>Full-length YKK® Vislon® zipper with easy-use zipper pull</p><p>Created for riders who race the group ride — no number pinning required</p><p><br></p><p>PRODUCT CARE</p><p>Machine wash at 30 degrees celsius, tumble dry cool Do not bleach, do not iron, do not iron print, do not dry clean Wash similar colours together.</p><p><br></p><p>SATURDAY MORNING SKINSUIT</p><p>You won''t see this skinsuit being raced in the WorldTour. That''s because we designed this skinsuit for the Saturday morning social rider when the pace is anything but social. We all know the type of ride: you turn up at the meeting point and high-five your friends before spending the rest of the ride trying to drop one another. We approve of this type of social ride. The design of the skinsuit is bold and bright, because if you''re sitting on the front of the group setting the Saturday morning tempo, then you should be instantly recognized for this selfless act of making others hold on to the wheel in front in silence.</p>', array['castelli-saturday-morning-skinsuit/1.webp', 'castelli-saturday-morning-skinsuit/2.webp', 'castelli-saturday-morning-skinsuit/3.webp', 'castelli-saturday-morning-skinsuit/4.webp']::text[], 'new', 6, '2026-06-12'::date, false, false),
  ('castelli-speedsuit-body-paint-v-tt-mens', 'Castelli Speedsuit Body Paint V TT Men''s', 'castelli', 'apparel', 'skinsuits-trisuits', '<p>The fastest suit for racing against the clock.</p><h4>PRODUCT FEATURES</h4><p>Pure speed equipment, created for WorldTour racing</p><p>Developed using years of experience of CFD analysis, wind tunnel testing, and WorldTour racing</p><p>Fabrics developed and tested extensively for maximum aerodynamics at speeds of 45 km/h and above</p><p>Reduced seaming for maximum aerodynamics</p><p>No-sew mesh race number holder to prevent number flapping in wind</p><p>Extra-long legs with flat leg endings with PU grip elastic on the inside</p><h4>TECHNICAL FEATURES</h4><ul>
<li>Weight:246<em> g</em>
</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F</li>
<li>Fit:Race</li>
</ul><h4>PRODUCT CARE</h4><p>Machine wash at 30 degrees celsius, tumble dry cool Do not bleach, do not iron, do not iron print, do not dry clean Wash similar colours together.</p><p><br></p><p>THE FASTEST SUIT FOR RACING AGAINST THE CLOCK</p>Having access to the fastest riders in the world definitely has its benefits. And thanks to the UCI rules stating that we need to make this product commercially available, those benefits can also be offered to you. After spending countless hours in the wind tunnel at the Polytechnic University of Milan, we''ve tested and optimized this new Body Paint V TT suit to be the fastest for the widest range of conditions. The real benefits of the suit are felt at speeds above 45 km/h, and the suit is optimized for extreme time trial positions. The fabrics and materials are carefully sourced and placed together to make sure we see the best results in the wind tunnel and on the road.', array['castelli-speedsuit-body-paint-v-tt-mens/1.webp', 'castelli-speedsuit-body-paint-v-tt-mens/2.webp', 'castelli-speedsuit-body-paint-v-tt-mens/3.webp', 'castelli-speedsuit-body-paint-v-tt-mens/4.webp', 'castelli-speedsuit-body-paint-v-tt-mens/5.webp']::text[], 'new', 8, '2026-03-05'::date, false, false),
  ('spoken-castelli-speed-suit-sanremo-btw', 'Spoken Castelli Speed Suit Sanremo BTW', 'mr-rider', 'apparel', 'skinsuits-trisuits', '<h3>DESCRIPTION</h3>

<p>This road speedsuit brings all the aero performance of a TT suit with the comfort, function, and moisture management needed for the road. Over a decade of development on the roads of the WorldTour and in the wind tunnel.</p>
<h3><strong>PRODUCT FEATURES</strong></h3>
<ul>
<li>CFD-based fabric placement and seam construction</li>
<li>Castelli engineered Air_O Stretch fabric for breathability, comfort and perfect fit</li>
<li>Engineered for aero efficiency at 30 to 55 km/h</li>
<li>Fabric optimized for aerodynamics and breathability</li>
<li>To be paired with Bolero SS base layer for added aero gains</li>
<li>Airflow shoulder construction</li>
<li>Elbow-length stretch sleeves with raw-cut edge</li>
<li>Reduced seaming on bottom for maximal aero gain</li>
<li>Progetto X2 Air Seamless seat pad</li>
<li>Contains bluesign® certified fabrics</li>
</ul>
<h3><strong>TECHNICAL FEATURES</strong></h3>
<ul>
<li>Breathability: <strong>4/5</strong>
</li>
<li>Lightness: <strong>4/5</strong>
</li>
</ul>
<ul>
<li>Weight: <strong>292gm</strong>
</li>
<li>Temperature: <strong>15°C - 35°C / 59°F - 95°F</strong>
</li>
<li>Fit:<strong> Race</strong>
</li>
</ul>
<p>This is the suit that started a revolution. Before the San Remo Speedsuit made its debut in 2011 at Paris-Roubaix, the thought of wearing a speed suit for anything but a time trial seemed insane. But after it achieved victory in its first outing, the way cyclists dressed for racing changed forever. In its latest evolution, the San Remo BTW Speed Suit is even faster. On top we use our new redesigned <a href="https://dealerportal.prv.co.nz/product-group/23481-castelli-custom-aero-race-7-0-men-s-jersey/category/1883-jerseys" rel="noopener nofollow" target="_blank"><strong>Aero Race 7.0</strong></a> Jersey, which is paired with the reduced-seam bottoms from our <a href="https://dealerportal.prv.co.nz/product-group/23128-castelli-custom-body-paint-4-x-ls-men-s-speed-suit/category/1884-skinsuits" rel="noopener nofollow" target="_blank"><strong>Body Paint 4.X</strong></a> speedsuit, a combination that is slippery against the wind. As always, the suit opens completely in the front for added ventilation and easier nature breaks and has three pockets on the back for storage. We''ve also used our Progetto X2 Air seat pad for comfort during the toughest rides or races. For extra aerodynamic gains, pair this suit with our <a href="https://dealerportal.prv.co.nz/product-group/23334-castelli-bolero-short-sleeve-baselayer-men-s/category/1660-men-s" rel="noopener nofollow" target="_blank"><strong>Bolero SS</strong></a> base layer. Extensive hours in the wind tunnel have shown this combination to be the fastest yet.</p>', array['spoken-castelli-speed-suit-sanremo-btw/1.jpg']::text[], 'new', 3, '2025-08-01'::date, false, false),

  -- ---- apparel · socks ----
  ('castelli-a-c-18-socks', 'Castelli A/C 18 Socks', 'castelli', 'apparel', 'socks', '<p>TECHNICAL FEATURES</p><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 5/5</p><p>Lightness 5/5</p><ul>
<li>Weight: 49<em> g</em>
</li>
<li>Temperature: 18°C - 40°C / 64°F - 104°F</li>
</ul><p><br></p><p>PRODUCT FEATURES</p><p>Ultralightweight construction for the hottest days</p><p>Highly breathable and durable nylon threads</p><p>Ribbed texture for the perfect mix of lightness and durability</p><p>Castelli wordmark on cuff</p><p>95% poliammide, 5% elastan</p><p>18 cm cuff</p>', array['castelli-a-c-18-socks/1.jpg']::text[], 'new', 3, '2025-11-12'::date, false, false),
  ('castelli-aero-race-pro-20-sock', 'Castelli Aero Race Pro 20 Sock', 'castelli', 'apparel', 'socks', '<h4>PRODUCT FEATURES</h4><p>Traditional sock comfort with raised aero ribs</p><p>Developed to provide everyday aerodynamic gains</p><p>Durable and breathable construction</p><p>90% polyamide / 10% elastane mix for optimal comfort and fit</p><p>20 cm cuff</p><h4>TECHNICAL FEATURES</h4><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 4/5</p><p>Lightness 4/5 </p><ul>
<li>Weight:46<em> g</em>
</li>
<li>Temperature:10°C - 38°C / 50°F - 100°F</li>
<li>Fit:Race</li>
</ul><p>FAST, SOCK, ALWAYS.</p>We set out to make an aero sock that doesn’t compromise on the things that make a great sock. Working with expert Italian knitters and state-of-the-art machinery, we created a structure that combines smooth and textured zones to control airflow and reduce drag — without sacrificing comfort or fit. The result is a sock that stays up, feels great, and delivers aero performance equal to ribbed Lycra® cuffs — with the bonus of true everyday wearability.', array['castelli-aero-race-pro-20-sock/1.webp']::text[], 'new', 3, '2026-03-05'::date, false, false),
  ('castelli-bandito-18-socks', 'Castelli Bandito 18 Socks', 'castelli', 'apparel', 'socks', '<h3><strong>Product features</strong></h3><br><ul>
<br><li>Merino wool blend for warmth and durability</li>
<br><li>Thin construction like a summer sock for close fit in the shoe but with Merino wool for warmth</li>
<br><li>18 cm cuff</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>61 g</strong>
</li>
<br><li>Fit: <strong>Regular</strong>
</li>
<br>
</ul>', array['castelli-bandito-18-socks/1.png', 'castelli-bandito-18-socks/2.png', 'castelli-bandito-18-socks/3.webp']::text[], 'new', 1, '2022-07-06'::date, false, false),
  ('castelli-entrata-18-sock', 'Castelli Entrata 18 Sock', 'castelli', 'apparel', 'socks', '<h4>PRODUCT FEATURES</h4><p>Polypropylene yarns that don''t absorb moisture</p><p>60% polypropylene / 20% polyamide / 20% elastane</p><p>Midfoot support band</p><p>18 cm height</p><h4>TECHNICAL FEATURES</h4><p>Insulation 1/5</p><p>Waterproofness 1/5</p><p>Windproofness 1/5</p><p>Breathability 4/5</p><p>Lightness 4/5 </p><ul>
<li>Weight:48<em> g</em>
</li>
<li>Temperature:10°C - 38°C / 50°F - 100°F</li>
<li>Fit:Regular</li>
</ul>', array['castelli-entrata-18-sock/1.webp', 'castelli-entrata-18-sock/2.webp']::text[], 'new', 6, '2026-03-05'::date, false, false),
  ('castelli-espresso-18-socks', 'Castelli Espresso 18 Socks', 'castelli', 'apparel', 'socks', '<p>The perfect complement to your favorite Espresso kit.</p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>
<p>Lightness 4/5 </p>
<ul>
<li>Weight:50<em> g</em>
</li>
<li>Temperature:10°C - 38°C / 50°F - 100°F</li>
</ul>
<p>PRODUCT FEATURES</p>

<p>Developed to match your Espresso kit</p>
<p>Ideal sock for any ride</p>
<p>Durable and breathable construction</p>
<p>Nylon/elastane mix for optimal comfort and fit</p>
<p>85% nylon, 15% elastane</p>
<p>18 cm cuff</p>', array['castelli-espresso-18-socks/1.jpg', 'castelli-espresso-18-socks/2.jpg']::text[], 'new', 6, '2025-06-09'::date, false, false),
  ('castelli-fast-feet-2-socks-1', 'Castelli Fast Feet 2 Socks', 'castelli', 'apparel', 'socks', '<p>For road racing or when you can''t wear a Fast Feet TT Shoecover, this sock saves watts.</p> <p>There are lots of so-called aero socks out there. But the Castelli Fast Feet has the development and testing to back up the claim. The few socks that have been tested have probably been tested with a static, non-moving test because it''s easier. But a foot is always in motion, so we created a jig that replicates the movement of the lower leg. And we test on actual riders to verify the results. This sock can save 2 watts at 50 km/h.</p> <h3><strong>Product features</strong></h3> <ul> <li>Castelli''s Fast Feet project — for riding in warm conditions</li> <li>The foot portion is based on the Castelli Rosso Corsa Sock for in-shoe comfort</li> <li>Polyurethane grip strip at top to keep sock in place</li> <li>Leg portion constructed with engineered grooved Lycra® to help detach airflow</li> </ul> <ul> <li>Weight: <strong>49gm</strong>
</li> <li>Temperature: <strong>10°C - 30°C</strong>
</li> <li>Fit: <strong>Aero</strong>
</li> </ul>', array['castelli-fast-feet-2-socks-1/1.jpg', 'castelli-fast-feet-2-socks-1/2.jpg']::text[], 'new', 0, '2025-08-22'::date, false, false),
  ('castelli-fast-feet-3-socks', 'Castelli Fast Feet 3 Socks', 'castelli', 'apparel', 'socks', '<p>For road racing or when you can''t wear a Fast Feet TT Shoecover, this sock saves watts.</p>
<p>Castelli''s Fast Feet project — for riding in warm conditions</p>
<p>The foot portion is based on the Castelli Rosso Corsa Sock for in-shoe comfort</p>
<p>Polyurethane grip strip at top to keep sock in place</p>
<p>Leg portion constructed with engineered grooved Lycra® to help detach airflow</p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>
<p>Lightness 4/5</p>

<ul>
<li>Weight:48<em> g</em>
</li>
<li>Temperature:10°C - 38°C / 50°F - 100°F
</li>
</ul>', array['castelli-fast-feet-3-socks/1.jpg', 'castelli-fast-feet-3-socks/2.jpg']::text[], 'new', 1, '2025-06-09'::date, false, false),
  ('castelli-fast-feet-4-sock', 'Castelli Fast Feet 4 Sock', 'castelli', 'apparel', 'socks', '<p>For road racing or when you can''t wear a Fast Feet TT Shoecover, this sock saves watts.</p>
<h4>PRODUCT FEATURES </h4>
<p>Castelli''s Fast Feet project — for maximum aerodynamics</p>
<p>Foot portion based on Castelli Rosso Corsa Sock for in-shoe comfort</p>
<p>Polyurethane grip strip at top to keep sock in place</p>
<p>Leg portion constructed with engineered grooved Lycra® to help detach airflow</p>
<h4>TECHNICAL FEATURES</h4>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>
<p>Lightness 4/5 </p>
<ul>
<li>Weight:48<em> g</em>
</li>
<li>Temperature:10°C - 38°C / 50°F - 100°F</li>
<li>Fit:Race</li>
</ul>

<p>FAST FEET 4 SOCK</p>
There are lots of so-called aero socks out there. But the Castelli Fast Feet 4 Sock has the development and testing to back up the claim. The few socks that have been tested have probably been tested with a static, nonmoving test because it''s easier. But a foot is always in motion, so we created a jig that replicates the movement of the lower leg. And we tested it on actual riders to verify the results. This sock can save 2 watts at 50 km/h. The newest version has an updated cuff fit for more comfort and aerodynamic gains.', array['castelli-fast-feet-4-sock/1.webp', 'castelli-fast-feet-4-sock/2.webp']::text[], 'new', 4, '2026-03-05'::date, false, false),
  ('castelli-giro-ditalia-18-socks-2', 'Castelli Giro d''Italia 18 Socks', 'castelli', 'apparel', 'socks', '<p>Traditional cycling sock with Giro d''Italia details.</p><p><br></p><p>TECHNICAL FEATURES</p><p>Weight: 51g</p><p>Fit: Race</p><p><br></p><p>PRODUCT FEATURES</p><p>Durable and breathable construction</p><p>Nylon/elastane mix for optimal comfort and fit</p><p>85% nylon, 15% elastane</p><p>18 cm cuff</p>', array['castelli-giro-ditalia-18-socks-2/1.webp', 'castelli-giro-ditalia-18-socks-2/2.webp', 'castelli-giro-ditalia-18-socks-2/3.webp']::text[], 'new', 9, '2026-05-15'::date, false, false),
  ('castelli-premio-18-socks-1', 'Castelli Premio 18 Socks', 'castelli', 'apparel', 'socks', '<p>The premium sock for comfort and cooling on both long-distance and intense rides.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Multiple-structure knit to get the right performance in every part of the sock</li>
<br><li>200-needle construction for extra stretch</li>
<br><li>Compressive midfoot support band</li>
<br><li>Asymmetrical construction to mirror shape of foot</li>
<br><li>Cushioning pad under ball of foot</li>
<br><li>Meryl® Skinlife yarns with antimicrobial silver ions to reduce odor</li>
<br><li>18 cm height</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>58gm</strong>
</li>
<br><li>Fit: <strong>Comfortable</strong>
</li>
<br>
</ul>', array['castelli-premio-18-socks-1/1.jpg', 'castelli-premio-18-socks-1/2.jpg', 'castelli-premio-18-socks-1/3.jpg']::text[], 'new', 2, '2023-12-15'::date, false, false),
  ('castelli-quindici-soft-merino-womens-socks', 'Castelli Quindici Soft Merino Women''s Socks', 'castelli', 'apparel', 'socks', '<p>Merino wool blend</p><p>Arch-support band</p><p>Nylon-reinforced heel and toe</p><p>15 cm cuff</p>', array['castelli-quindici-soft-merino-womens-socks/1.jpg', 'castelli-quindici-soft-merino-womens-socks/2.jpg']::text[], 'new', 2, '2025-06-19'::date, false, false),
  ('castelli-socks-distanza-20', 'Castelli Socks Distanza 20', 'castelli', 'apparel', 'socks', '<p><strong>Product features</strong></p>
<ul>
<li>Winter-weight merino wool blend</li>
<li>Arch-support band</li>
<li>Nylon heel and toe for durability</li>
<li>20cm height</li>
</ul>
<p><strong>Technical features</strong></p>
<ul>
<li>Weight: 66gm
</li>
<li>Fit: Comfortable
</li>
</ul>', array['castelli-socks-distanza-20/1.jpg', 'castelli-socks-distanza-20/2.jpg', 'castelli-socks-distanza-20/3.jpg']::text[], 'new', 5, '2025-04-09'::date, false, false),
  ('castelli-venti-soft-merino-sock', 'Castelli Venti Soft Merino Sock', 'castelli', 'apparel', 'socks', '<p>The warmest sock with soft merino wool, thicker construction for cold days, 20cm cuff height.</p>
<p><br></p>
<p>Technical Features</p>
<ul>
<li>Weight:70 g</li>
<li>Fit:Regular</li>
</ul>
<p><br></p>
<p>Product Features</p>
<p>Merino wool for warmth, nylon for durability</p>
<p>20 cm cuff height</p>
<p>Castelli’s thickest sock for warmth</p>', array['castelli-venti-soft-merino-sock/1.webp', 'castelli-venti-soft-merino-sock/2.webp', 'castelli-venti-soft-merino-sock/3.webp']::text[], 'new', 6, '2026-04-20'::date, false, false),
  ('crankbrothers-b14-folding-socket-driver', 'CrankBrothers B14 Folding socket driver', 'crankbrothers', 'apparel', 'socks', '', array['crankbrothers-b14-folding-socket-driver/1.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('crankbrothers-icon-socks-1', 'Crankbrothers Icon Socks', 'crankbrothers', 'apparel', 'socks', '<p>Our 100% cotton fabric provides some extra cushion for a cozy feel on and off the bike and will be the best addition to your sock drawer quiver, because that’s a thing, right?</p>
<ul>
<li>100% Cotton</li>
<li>High rise height</li>
<li>Soft, breathable, absorbent and lightweight</li>
<li>SM/MD: 6-8 US, 39-41 EUR</li>
<li>LG/XL: 9-13 US, 42-47 EUR</li>
</ul>', array['crankbrothers-icon-socks-1/1.png', 'crankbrothers-icon-socks-1/2.png', 'crankbrothers-icon-socks-1/3.png', 'crankbrothers-icon-socks-1/4.png']::text[], 'new', 2, '2026-01-27'::date, false, false),
  ('crankbrothers-tool-b8-folding-socket-driver', 'CrankBrothers Tool B8 Folding socket driver#', 'crankbrothers', 'apparel', 'socks', '', array['crankbrothers-tool-b8-folding-socket-driver/1.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('crankbrothers-trail-socks', 'Crankbrothers Trail Socks', 'crankbrothers', 'apparel', 'socks', '<ul> <li>Blend of polypropylene, nylon and spandex.</li> <li>Provides a compression fit, performance ribbing, enhanced ventilation and a reduced friction profile.</li> <li>SM/MD Shoe Size: 6-8 US, 39-41 EUR</li> <li>LG/XL Shoe Size: 9-13 US, 42-47 EUR</li> </ul>', array['crankbrothers-trail-socks/1.png', 'crankbrothers-trail-socks/2.png', 'crankbrothers-trail-socks/3.png', 'crankbrothers-trail-socks/4.png', 'crankbrothers-trail-socks/5.png']::text[], 'new', 0, '2021-08-22'::date, false, false),
  ('fizik-road-socks-black', 'Fizik Road Socks Black', 'fizik', 'apparel', 'socks', '<p>Fiz</p>

<h5>PERFORMANCE CYCLING SOCKS</h5>
<p>Our performance road cycling socks, knit from anti-microbial Q-Skin® yarn for breathable, moisture-wicking comfort on every ride.</p>

<p>Designed to deliver drier comfort on road rides of any length, our performance cycling socks let feet breathe easily. Knit from advanced Q-Skin® yarn, an innovative fabric that integrates silver ions into the spinning process to provide anti-microbial properties, our lightweight road bike cycling socks feature extra padding over cleat tracks to reduce any unwanted pressure while pedaling.<br><br></p>

<p>QSkin yarn: highly wicking with antimicrobial properties</p>
<p>Terry areas over the cleats: avoids pressure spots</p>
<p>Thin and light construction to improve breathability</p>

<p><b>Sizes available:</b></p>
<p>S: 35-39 - US 5-6</p>
<p>M: 40-43 - US 7-10</p>
<p>L: 44-47 - US 11-13</p>', array['fizik-road-socks-black/1.jpg', 'fizik-road-socks-black/2.jpg', 'fizik-road-socks-black/3.jpg']::text[], 'new', 3, '2025-08-20'::date, false, false),
  ('fizik-road-socks-white', 'Fizik Road Socks White', 'fizik', 'apparel', 'socks', '<h5>PERFORMANCE CYCLING SOCKS</h5><p>Our performance road cycling socks, knit from anti-microbial Q-Skin® yarn for breathable, moisture-wicking comfort on every ride.</p><p><br></p><p>Designed to deliver drier comfort on road rides of any length, our performance cycling socks let feet breathe easily. Knit from advanced Q-Skin® yarn, an innovative fabric that integrates silver ions into the spinning process to provide anti-microbial properties, our lightweight road bike cycling socks feature extra padding over cleat tracks to reduce any unwanted pressure while pedaling.<br><br></p><p><br></p><p>QSkin yarn: highly wicking with antimicrobial properties</p><p>Terry areas over the cleats: avoids pressure spots</p><p>Thin and light construction to improve breathability</p><p><br></p><p>Sizes available:</p><p>S: 35-39 - US 5-6</p><p>M: 40-43 - US 7-10</p><p>L: 44-47 - US 11-13</p>', array['fizik-road-socks-white/1.jpg', 'fizik-road-socks-white/2.jpg', 'fizik-road-socks-white/3.jpg']::text[], 'new', 3, '2025-08-20'::date, false, false),
  ('fizik-team-edition-socks-white', 'Fizik Team Edition Socks White', 'fizik', 'apparel', 'socks', '<h5>TEAM EDITION CYCLING SOCKS</h5>Colorful, bold cycling socks designed to keep feet dry and spinning while repping team fizik in comfort and style.<br>Combining substance and style, the fizik Team Socks come in two exciting colorways—and are crafted from advanced anti-microbial fibers for a smarter approach to lasting foot comfort. Breathable, fast drying, and moisture wicking, our Team Socks are built to go the distance for riders who choose to do the same, on road or off, no matter the season.<br>
Techno PE yarn: highly wicking with antimicrobial properties
Terry areas over the cleats and the instep: avoids pressure spots
<br>
Sizes available:
S: 35-39 - US 5-6
M: 40-43 - US 7-10
L: 44-47 - US 11-13', array['fizik-team-edition-socks-white/1.webp']::text[], 'new', 2, '2025-08-20'::date, false, false),
  ('hydrogen-aero-tall-road-socks', 'Hydrogen Aero Tall Road Socks', 'specialized', 'apparel', 'socks', '<p>The Hydrogen Aero Tall Road Socks use the same VaporRize™ Hydrogen yarns used in our Hydrogen Vent Tall Socks, but add a rib-knit cuff that gives you an aerodynamic advantage over normal socks. Free speed+comfy feet=happy rides.</p>', array['hydrogen-aero-tall-road-socks/1.jpg', 'hydrogen-aero-tall-road-socks/2.jpg']::text[], 'new', 0, '2025-08-22'::date, false, false),
  ('primaloft-lightweight-tall-logo-socks', 'PrimaLoft® Lightweight Tall Logo Socks', 'specialized', 'apparel', 'socks', '<p>Our PrimaLoft® Lightweight socks utilize Primaloft® polyester yarn to keep your feet warm in a variety of temperatures, all without overheating or being excessively bulky.</p>', array['primaloft-lightweight-tall-logo-socks/1.jpg', 'primaloft-lightweight-tall-logo-socks/2.jpg', 'primaloft-lightweight-tall-logo-socks/3.jpg', 'primaloft-lightweight-tall-logo-socks/4.jpg', 'primaloft-lightweight-tall-logo-socks/5.jpg']::text[], 'new', 1, '2024-08-05'::date, false, false),
  ('castelli-spoken-socks', 'Spoken Castelli  Socks', 'mr-rider', 'apparel', 'socks', '<h3>DESCRIPTION</h3>

<p>The perfect complement to your favorite Espresso kit.</p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>
<p>Lightness 4/5 </p>
<ul>
<li>Weight:50<em> g</em>
</li>
<li>Temperature:10°C - 38°C / 50°F - 100°F</li>
</ul>
<p>PRODUCT FEATURES</p>

<p>Developed to match your Espresso kit</p>
<p>Ideal sock for any ride</p>
<p>Durable and breathable construction</p>
<p>Nylon/elastane mix for optimal comfort and fit</p>
<p>85% nylon, 15% elastane</p>
<p>18 cm cuff</p>', array['castelli-spoken-socks/1.jpg']::text[], 'new', 3, '2025-08-01'::date, false, false),
  ('team-issue-pro-height-aero-socks', 'Team Issue Pro Height Aero Socks', 'team-issue', 'apparel', 'socks', '', array['team-issue-pro-height-aero-socks/1.webp']::text[], 'new', 1, '2025-02-07'::date, false, false),
  ('team-issue-pro-height-cycling-socks-black', 'Team Issue Pro Height Cycling Socks Black 3 Pack', 'team-issue', 'apparel', 'socks', '', array['team-issue-pro-height-cycling-socks-black/1.webp']::text[], 'new', 4, '2025-08-06'::date, false, false),
  ('team-issue-pro-height-cycling-socks-white', 'Team Issue Pro Height Cycling Socks White 3 Pack', 'team-issue', 'apparel', 'socks', '', array['team-issue-pro-height-cycling-socks-white/1.webp']::text[], 'new', 4, '2025-08-06'::date, false, false),
  ('velotoze-aero-leg-sleeves', 'VeloToze Aero Leg Sleeves', 'velotoze', 'apparel', 'socks', '<p><strong>ELEVATE YOUR TRIATHLON PERFORMANCE WITH VELOTOZE AERO LEG SLEEVES</strong></p><p><br></p><p>Prepare to reach the pinnacle of your triathlon performance with veloToze Aero Sleeves, meticulously crafted to empower triathletes to perform at their absolute best. These sleeves are a game-changer for those seeking to achieve the highest standards in comfort, speed, and endurance.</p><p><strong><br></strong></p><p><strong>Aerodynamic Excellence:</strong> The cutting-edge design of veloToze Aero Sleeves is engineered for supreme aerodynamic efficiency and significantly reduce drag.</p><p><strong><br></strong></p><p><strong>Advanced Aero Fabric:</strong> Constructed with advanced performance-grade fabric, these sleeves not only provide superior aero performance also optimal muscle support and compression, enhancing your endurance and minimizing fatigue.</p><p><strong><br></strong></p><p><strong>Second-Skin Comfort:</strong> These sleeves offer a second-skin fit with non-slip silicone grippers ensuring they stay in place throughout your competition.</p><p><strong><br></strong></p><p><strong>Quick-Dry and Breathable:</strong> The moisture-wicking fabric keeps you dry and comfortable during the entire race. It''s also highly breathable, preventing overheating during intense efforts.</p><p>Elevate your triathlon performance to the highest standard with veloToze Aero Sleeves. Experience unbeatable speed, comfort, and endurance as you compete at your best. Whether it''s a sprint, Olympic, or Ironman, veloToze Aero Sleeves are your go-to choice for achieving your personal best. Get the full aero performance, use with veloToze TOe Covers for added Aero-vantage. </p><h4><strong>SIZE GUIDE</strong></h4><p>Sizing Made Simple. We offer two sizes to ensure a perfect fit based on your height and leg length</p><ul>
<li>S/M: is 26.5 cm tall, recommend for a person height less than 178 cm (5''10")</li>
<li>L/XL: is 29.0 cm tall, recommend for a person height of 178 cm (5''10") or more</li>
</ul><h4><strong>MATERIALS</strong></h4><ul><li>87% polyester, 13% spandex</li></ul><h4><strong>CARE INSTRUCTIONS</strong></h4><ul><li>Machine wash cool on a gentle cycle with like colors. Hang dry. Do not machine dry. Do not iron. Do not bleach.</li></ul>', array['velotoze-aero-leg-sleeves/1.webp', 'velotoze-aero-leg-sleeves/2.webp', 'velotoze-aero-leg-sleeves/3.webp', 'velotoze-aero-leg-sleeves/4.webp', 'velotoze-aero-leg-sleeves/5.webp']::text[], 'new', 3, '2026-05-12'::date, false, false),
  ('velotoze-aero-socks-extra-tall', 'VeloToze Aero Socks Extra Tall', 'generic', 'apparel', 'socks', '<h3>DESCRIPTION</h3>

<h4><strong>ELEVATE YOUR SPEED WITH VELOTOZE AERO SOCKS</strong></h4>
<p>veloToze Aero Socks, the secret weapon in your quest for ultimate speed. These socks are engineered to give you a significant aerodynamic advantage in both road races and time trials.</p>
<p><strong> </strong></p>
<p><strong>Advanced Aero Fabric:</strong> veloToze Aero Socks redefine performance by strategically disrupting the airflow, drastically reducing aerodynamic drag, empowers you to push the limits of your speed.</p>
<p><strong> </strong></p>
<p><strong>Stay Secure, Stay Fast:</strong> Our socks feature non-slip silicone grip dots that now extend seamlessly from the top of the calf down to the bottom of the ankle, adding an extra layer of aerodynamic advantage.</p>
<p><strong> </strong></p>
<p><strong>Cool and Comfortable:</strong> The foot of the sock is constructed with a soft COOLMAX® blend, expertly engineered to wick away sweat, ensuring your feet remain cool and comfortable even during the most intense rides.</p>
<p><strong> </strong></p>
<p><strong>Proven Performance:</strong> We don''t just make claims; we back them up. Wind tunnel testing has demonstrated an impressive 4.45 watts saving at 40 kph/ 25mph (0° yaw angle). Discover the full test results in our <strong><a href="https://www.velotoze.com/pages/aero-advantages" rel="noopener nofollow" target="_blank">Aero-vantage</a></strong>.</p>
<p><strong> </strong></p>
<p><strong>Aerodynamic Package:</strong> Whether you''re gearing up for a UCI race or a local time trial, this combination delivers the ultimate in aerodynamic performance, ensuring you achieve maximum speed when every second counts.</p>
<p><strong> </strong></p>
<p><strong>S/M:</strong> Socks calves length is 20 cm/7.9 inches       </p>
<p><strong>L/XL:</strong> Socks calves length is 20.5 cm/8.1 inches</p>

<h4><strong>MATERIALS</strong></h4>
<ul>
<li>Leg fabric: 87% polyester, 13% spandex</li>
<li>Foot fabric: 65% nylon, 31% COOLMAX®, 4% LYCRA® LYCRA®  and COOLMAX® are trademarks of INVISTA</li>
</ul>
<p><strong>CARE INSTRUCTIONS</strong></p>
<ul>
<li>Machine wash cool on a gentle cycle with like colors. Hang dry. Do not machine dry. Do not iron. Do not bleach.</li>
</ul>', array['velotoze-aero-socks-extra-tall/1.jpg']::text[], 'new', 3, '2024-12-08'::date, false, false),
  ('velotoze-aero-socks-pro', 'VeloToze Aero Socks Pro', 'velotoze', 'apparel', 'socks', '<p>GOING SO FAST NEVER LOOKED SO GOOD </p>
<p><br></p>
<p>Elevate your ride to the <strong>pro level</strong> with VeloToze <strong>Aero Pro Socks</strong>. Crafted from the latest aero fabric, they’re engineered to reduce drag and maximize speed when every second counts.</p>
<p><br></p>
<p>Aero Test 2026 proven to save you <strong>over 6 watts at 40kph</strong>, these socks give you the significant performance edge. Whether you’re chasing a podium finish or pushing for a personal best, veloToze Aero Pro Socks deliver uncompromising aerodynamic performance with a sleek, professional look that stands out on the road and in competition.</p>
<p><strong><br></strong></p>
<p><strong>New Aero Fabric</strong>: Crafted from cutting‑edge aerodynamic textiles, tested in both wind tunnels and real‑world conditions.</p>
<p><strong><br></strong></p>
<p><strong>Pro‑Level Fit</strong>: Softer, more elastic fabric slips on effortlessly and wraps your feet like a rocket, delivering both comfort and speed.</p>
<p><strong><br></strong></p>
<p><strong>Aero Grippers: </strong>Strategically placed silicone grippers providing additional aero performance while lock your socks in place throughout your ride. </p>
<p><strong><br></strong></p>
<p><strong>Race‑Ready Durability</strong>: Reinforced flat‑lock back stitching and taped opening ensures longevity through training and competition.</p>
<p>Pair with V<strong>eloToze 2.0 Short Shoe Covers</strong> and <strong>Aero Pro Gloves</strong> for the ultimate aerodynamic advantage. Perfect for UCI races, local time trials, or just dropping your mates on weekend rides.</p>
<p><strong><br></strong></p>
<p><strong>MATERIALS</strong></p>

<p>• Leg Fabric: 82% polyester, 18% spandex<br>• Foot Fabric: 65% nylon, 31% COOLMAX®, 4% LYCRA®<br>LYCRA® and COOLMAX® are trademarks of INVISTA</p>
<p><strong><br></strong></p>
<p><strong>CARE GUIDE</strong></p>

<p>• Machine wash cold with like colors.<br>• Hang dry, do not machine dry.<br>• Do not iron.<br>• Do not bleach.</p>', array['velotoze-aero-socks-pro/1.webp', 'velotoze-aero-socks-pro/2.webp']::text[], 'new', 2, '2026-04-24'::date, false, false),
  ('velotoze-lightweight-socks', 'VeloToze Lightweight Socks', 'velotoze', 'apparel', 'socks', '<p><strong>INTRODUCING LIGHTWEIGHT SOCKS </strong><strong>– RIDING ON CLOUDS</strong></p>

<p>Weighting in at a mere 36 grams / 1.27 oz per pair, these socks are meticulously engineered to deliver unrivaled lightweight performance and comfort without compromising on quality. </p>
<p><strong> </strong></p>
<p><strong>Weight Does Matter:</strong> Engineered to minimize weight, our socks are among lightest cycling socks in the market for cyclists looking for every marginal gain. </p>
<p><strong> </strong></p>
<p><strong>COOLMAX® Comfort:</strong> Crafted with COOLMAX® fabric, our socks offer unparalleled breathability and moisture wicking performance, keeping your feet comfortably and cool even in the most intense summer rides.</p>
<p><strong> </strong></p>
<p><strong>Excellent Durability: </strong>These socks are built to withstand the rigors of cycling. Their durability ensures they hold up to the demands of long rides. </p>
<p><strong> </strong></p>
<p><strong>Crew Height (15 cm / 6 inches):</strong> The crew height design provides an excellent balance between coverage and freedom.</p>
<p>Elevate your cycling experience to new heights with veloToze Lightweight Socks.  Experience the lightest, most comfortable, and technologically advanced cycling socks, they will make you feel like riding on clouds.`</p>

<h4><strong>MATERIALS</strong></h4>
<ul>
<li>74.5% Nylon, 21% COOLMAX®, 4.5% LYCRA® LYCRA®  and COOLMAX®  are trademarks of INVISTA</li>
</ul>
<h4><strong>CARE INSTRUCTIONS</strong></h4>
<ul>
<li>Machine wash cool on gentle cycle with like colors. Hang dry. Do not machine dry. Do not iron. Use non-chlorine bleach as needed.</li>
</ul>
<p><strong> </strong></p>
<p><strong>Sock Sizes</strong></p>
<p>S/M (EU 37 - 42.5)</p>
<p>L/XL (EU 43 - 47)</p>', array['velotoze-lightweight-socks/1.jpg', 'velotoze-lightweight-socks/2.jpg', 'velotoze-lightweight-socks/3.jpg', 'velotoze-lightweight-socks/4.jpg', 'velotoze-lightweight-socks/5.jpg']::text[], 'new', 4, '2025-08-22'::date, false, false),

  -- ---- apparel · waist-shorts ----
  ('castelli-competizione-2-shorts-mens', 'Castelli Competizione 2 Shorts Mens', 'castelli', 'apparel', 'waist-shorts', '<p>Made to do everything right without overdoing anything.</p>

<p>PRODUCT FEATURES</p>
<p>KISS Air2 seat pad for all-day comfort</p>
<p>Affinity Pro Lycra® fabric on inside of leg for outstanding stretch and rebound</p>
<p>Vortex V2 textured fabric on legs for better aerodynamics</p>
<p>Raw-edge leg gripper with integrated silicone</p>
<p>Flat-lock stitching</p>
<p>Reflective detailing on back</p>
<p>UPF 50+</p>

<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>

Lightness 4/5
<ul>
<li>Weight:160<em> g</em>
</li>
<li>Temperature:15°C - 35°C / 59°F - 95°F</li>
<li>Fit:Tailored</li>
</ul>

<p>MADE TO DO EVERYTHING RIGHT WITHOUT OVERDOING ANYTHING.</p>
We made this short to incorporate as much technology as possible from our top-of-the-line pro-level race shorts at a more accessible price. And although it''s certainly capable of weekend racing, it''s also a great comfort performance short even if you never pin on a number. The majority of the Competizione 2 Short features our Vortex textured fabric. We''ve used a wide, stretchy leg gripper with integrated silicone to ensure a comfortable, secure fit. The KISS Air2 seat pad has most of the comfort of our top seat pad but represents maximum value. The intangible part that you''ll appreciate most is our knack for building in perfect fit, thanks to the Castelli pattern engineering team. This is the short that brings the best of Castelli''s know-how in building comfort performance shorts into an accessible product for your cycling wardrobe.', array['castelli-competizione-2-shorts-mens/1.webp', 'castelli-competizione-2-shorts-mens/2.webp', 'castelli-competizione-2-shorts-mens/3.webp']::text[], 'new', 4, '2025-08-14'::date, false, false),
  ('castelli-endurance-3-shorts-mens', 'Castelli Endurance 3 Shorts Men''s', 'castelli', 'apparel', 'waist-shorts', '<p>Endurance-level comfort for every ride with Castelli''s most comfortable seat pad.</p>
<p>TECHNICAL FEATURES</p>
<p>Breathability 4/5</p>
<p>Lightness 4/5</p>

<ul>
<li>Weight:184<em> g</em>
</li>
<li>Temperature:15°C - 38°C / 59°F - 100°F
</li>
<li>
Fit:Tailored

</li>
</ul>
<p>PRODUCT FEATURES</p>
<p>Endurance Evolution fabric provides optimum muscle support and feels drier in nearly all conditions</p>
<p>Anatomic cut for perfect on-bike fit</p>
<p>Soft elastic at waist lays flat without binding</p>
<p>Progetto X2 Air Seamless seat pad for even greater comfort and improved airflow</p>
<p>GIRO3 leg grippers lie flat</p>', array['castelli-endurance-3-shorts-mens/1.jpg', 'castelli-endurance-3-shorts-mens/2.jpg', 'castelli-endurance-3-shorts-mens/3.jpg', 'castelli-endurance-3-shorts-mens/4.jpg', 'castelli-endurance-3-shorts-mens/5.jpg']::text[], 'new', 1, '2025-06-09'::date, false, false),
  ('castelli-entrata-2-shorts-mens-1', 'Castelli Entrata 2 Shorts Men''s', 'castelli', 'apparel', 'waist-shorts', '<p>To carry the scorpion logo, a short needs to be amazing even if it''s "entry level." This short brings together quality fabrics, our KISS Air2 seat pad, and eight-panel construction with an overall focus on comfort and durability.</p> <p>This short gives you every reason to step up to Castelli. We have innovation in our DNA. We''ve brought you most of the innovations in a cycling short over the years: the first Lycra® shorts on the market and the first flat leg grippers. All these advances have become industry standards, and we keep pushing and innovating in our high-end shorts. The Entrata short is where all that knowledge and experience trickles down into a short that just plain works. The fabric is just the right weight with just the right stretch and with a matte finish that looks just right. The KISS Air2 seat pad is just right, as is the GIRO3 leg gripper. And the short fits just right because we obsess over the fit of every short we make. We wanted this short to be just right for many years to come, so we stitch on the logos and stitch in the reflective panels on the back. The Entrata short is just right for you.</p> <h3><strong>Product features</strong></h3> <ul> <li>KISS Air2 seat pad for all-day comfort</li> <li>Pro Dry matte Lycra® for good compression and moisture management</li> <li>8-panel construction for perfect fit</li> <li>Rear reflective panels on lower leg</li> <li>GIRO3 engineered flat leg band</li> </ul> <ul> <li>Weight: <strong>198gm</strong>
</li> <li>Temperature: <strong>15°C - 35°C</strong>
</li> <li>Fit: <strong>Comfortable</strong>
</li> </ul>', array['castelli-entrata-2-shorts-mens-1/1.jpg', 'castelli-entrata-2-shorts-mens-1/2.jpg', 'castelli-entrata-2-shorts-mens-1/3.jpg', 'castelli-entrata-2-shorts-mens-1/4.jpg', 'castelli-entrata-2-shorts-mens-1/5.jpg']::text[], 'new', 6, '2025-08-30'::date, false, false),
  ('castelli-entrata-shorts-mens', 'Castelli Entrata Shorts Men''s', 'castelli', 'apparel', 'waist-shorts', '<p>Castelli''s entry-level short still needs to be an amazing short in order to carry the scorpion logo. Comfort from quality fabrics, our KISS Air2 seat pad and eight-panel construction are brought together with an overall focus on durability.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>KISS Air2 seat pad for all-day comfort</li>
<br><li>Pro Dry matte Lycra® for good compression and moisture management</li>
<br><li>8-panel construction for perfect fit</li>
<br><li>Rear reflective panels on lower leg</li>
<br><li>GIRO3 engineered flat leg band</li>
<br><li>Mesh bib straps for comfort and breathability</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>185gm</strong>
</li>
<br><li>Temperature: <strong>15°C - 35°C / 59°F - 95°F</strong>
</li>
<br><li>Fit: <strong>Comfortable</strong>
</li>
<br>
</ul><br><p><strong>IT JUST WORKS RIGHT.</strong> Castelli has innovation in our DNA, and we''ve brought you most innovations in cycling shorts over the years: the first Lycra® shorts on the market, the first synthetic seat pads, the first anatomical seat pads, the first minimalist and flat bib straps, and the first flat leg grippers. All these have become industry standards, and we keep pushing and innovating in our high-end shorts. The Entrata short is where we bring all that knowledge and experience into a short that just plain works. The fabric is just the right weight with just the right stretch and with a matte finish that looks just right. The KISS Air2 seat pad is just right, as is the GIRO3 leg gripper. And the short fits just right because we obsess over the fit of every short we make. We wanted this short to be just right for many years to come, so we stitch on the logos and stitch in the reflective panels on the back. There are no logos to peel off, and everything is stitched down securely. This short gives you every reason to step up to Castelli.</p>', array['castelli-entrata-shorts-mens/1.jpg', 'castelli-entrata-shorts-mens/2.jpg', 'castelli-entrata-shorts-mens/3.jpg']::text[], 'new', 1, '2021-08-22'::date, false, false),
  ('castelli-prima-2-shorts-womens', 'Castelli Prima 2 Shorts Women''s', 'castelli', 'apparel', 'waist-shorts', '<p>Comfortable so all you need to do is enjoy the ride.</p>

<p><br></p>
<p>PRODUCT FEATURES</p>
<p>Pro2 Dry Soft fabric feels amazing on the skin and supremely comfortable</p>
<p>Anatomic construction for perfect fit</p>
<p>Lie-flat leg back with silicone gripper</p>
<p>KISS Air 2 Donna seat pad</p>
<p>Color inserts to match your favorite jersey</p>
<p>Reflective tabs for safety</p>
<p><br></p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 1/5</p>
<p>Waterproofness 1/5</p>
<p>Windproofness 1/5</p>
<p>Breathability 4/5</p>

Lightness 4/5
<ul>
<li>Weight:150<em> g</em>
</li>
<li>Temperature:16°C - 35°C / 59°F - 95°F</li>
<li>Fit:Regular</li>
</ul>

<p><br></p>
<p>COMFORTABLE SO ALL YOU NEED TO DO IS ENJOY THE RIDE.</p>
This short was made with you in mind first. The fabric is soft and stretchy and feels amazing on the skin while giving you support where you need it. The lie-flat grippers keep the shorts in place without squeezing your legs. The KISS Air 2 Donna seat pad is made to keep you comfortable for hours in the saddle. All this is done to make sure you can enjoy your ride in comfort.', array['castelli-prima-2-shorts-womens/1.webp', 'castelli-prima-2-shorts-womens/2.webp', 'castelli-prima-2-shorts-womens/3.webp', 'castelli-prima-2-shorts-womens/4.webp']::text[], 'new', 4, '2025-08-30'::date, false, false),
  ('castelli-velocissima-3-shorts-womens', 'Castelli Velocissima 3 Shorts Women''s', 'castelli', 'apparel', 'waist-shorts', '<p>Premium fabrics, a flattering cut, and our everyday-comfort KISS Air2 Donna seat pad make this short right for everything but the longest rides.</p><p>TECHNICAL FEATURES</p><ul>
<li>Weight:157<em> g</em>
</li>
<li>Temperature:15°C - 38°C / 59°F - 100°F</li>
<li>Fit:Regular</li>
</ul><p>PRODUCT FEATURES</p><ul>
<li>Endurance Evolution fabric for a matte finish with high-modulus stretch</li>
<li>Raw-edge leg ending eliminates sausage effect while silicone print holds leg in place</li>
<li>High-visibility reflective patches at back of leg</li>
<li>Soft dual-layer waistband</li>
<li>Women’s-specific KISS Air2 Donna seat pad for long-distance comfort</li>
</ul><p>This is our midrange performance short, great for a long ride or a quick hour workout indoors or out. Our Endurance Evolution fabric is a high-modulus, very matte Lycra® fabric that feels extremely dry while providing just the right amount of compression. The waist construction eliminates stitching and elastic and lies completely flat. At the leg ending we use a raw-cut edge with vertical silicone strips to keep the leg in place without the pressure that creates the dreaded sausage effect. A great short needs a great seat pad, and the women''s-specific KISS Air2 Donna pad will keep you comfortable without being too bulky.</p>', array['castelli-velocissima-3-shorts-womens/1.jpg', 'castelli-velocissima-3-shorts-womens/2.jpg', 'castelli-velocissima-3-shorts-womens/3.jpg', 'castelli-velocissima-3-shorts-womens/4.jpg', 'castelli-velocissima-3-shorts-womens/5.jpg']::text[], 'new', 1, '2025-06-19'::date, false, false),
  ('mens-rbx-shorts', 'Men''s RBX Shorts', 'specialized', 'apparel', 'waist-shorts', '<p>When it comes to choosing the perfect cycling shorts, comfort is everything. Whether you''re going fast or just cruising''; it''s important to know that you''ll be comfy. For riders who want premium materials, superior fit, and technologies that you won''t find anywhere else, the RBX Shorts are the jam. The soft four-way stretch fabric and articulated design ensure a perfect fit, but where the real comfort comes is from our Body Geometry 3D Chamois. It features a pre-molded shape that matches the curve of your saddle, reducing wrinkles and hot spots. Top it off with a super soft top sheet to reduce friction and you''re left with all-day comfort.</p>', array['mens-rbx-shorts/1.jpg', 'mens-rbx-shorts/2.jpg', 'mens-rbx-shorts/3.jpg', 'mens-rbx-shorts/4.jpg']::text[], 'new', 2, '2024-08-06'::date, false, false),
  ('mens-specialized-foundation-shorts-1', 'Men''s Specialized Foundation Shorts', 'specialized', 'apparel', 'waist-shorts', '<p>Elevate your ride to unmatched comfort with our Specialized Foundation Shorts, designed for every rider. The high-stretch fabric provides a low-compression fit, seamlessly combining comfort and support. The elasticated cuff with a silicone gripper offers a gentle, secure hold on your legs, preventing ride-up and keeping distractions at bay. Crafted with your comfort as a top priority, these shorts feature our advanced Single Density Body Geometry 3D Chamois, delivering unparalleled cushioning. Our commitment to sustainability shines through, too—the fabric is composed of 80% recycled nylon and 20% recycled elastane, so you can ride in comfort while making a conscious choice for the planet. Finding the perfect pair of shorts just got easier. Experience the ride of a lifetime with the Specialized Foundation Shorts.</p>', array['mens-specialized-foundation-shorts-1/1.jpg', 'mens-specialized-foundation-shorts-1/2.jpg', 'mens-specialized-foundation-shorts-1/3.jpg', 'mens-specialized-foundation-shorts-1/4.jpg', 'mens-specialized-foundation-shorts-1/5.jpg']::text[], 'new', 3, '2025-09-04'::date, false, false),
  ('sportfulvueltamensshorts', 'Sportful Vuelta Mens Shorts', 'sportful', 'apparel', 'waist-shorts', '<p><strong>Description:</strong></p>
<p>The Sportful experience in a short designed to accompany you on your first rides. A technical garment at an attractive price that allows you to start finding out what it means to ride with Sportful.<br><br>WHO IS IT FOR?<br>For those who are starting to ride. Welcome to the family! Our entry point into the Sportful line. A short that draws on all our knowledge, for those looking for a reliable and affordable way to explore our favorite sport.</p>', array['sportfulvueltamensshorts/1.png']::text[], 'new', 2, '2021-08-19'::date, false, false)
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
