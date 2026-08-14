-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 4 OF 10
--
-- Products 401-600 of 1423 (apparel, bike-care-maintenance, components).
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
  -- ---- apparel · waist-shorts ----
  ('sportfulvueltawomensshorts', 'Sportful Vuelta Womens Shorts', 'sportful', 'apparel', 'waist-shorts', '<p><strong>Description:</strong></p>
<p>The Sportful experience in a short designed to accompany you on your first rides. A technical garment at an attractive price that allows you to start finding out what it means to ride with Sportful.<br><br>WHO IS IT FOR?<br>For those who are starting to ride. Welcome to the family! Our entry point into the Sportful line. A short that draws on all our knowledge, for those looking for a reliable and affordable way to explore our favorite sport.</p>', array['sportfulvueltawomensshorts/1.png']::text[], 'new', 3, '2021-08-19'::date, false, false),
  ('womens-specialized-foundation-shorts-1', 'Women''s Specialized Foundation Shorts', 'specialized', 'apparel', 'waist-shorts', '<p>Embrace unmatched comfort with the Women''s Specialized Foundation Shorts—crafted to provide a perfect fit for every rider. Designed with high-stretch fabrics and a forgiving low-compression fit, these shorts offer the ideal balance of support and freedom for all body types. An elasticated cuff with a silicone gripper ensures a secure, stay-put fit, eliminating distractions while you ride. Perfect for everything from casual spins to long rides, the seamless waistband construction allows for unrestricted movement, while the advanced Single Density Body Geometry 3D Chamois offers targeted cushioning and ergonomic support. Whether you''re just starting out or a seasoned rider, the Women''s Specialized Foundation Shorts are your go-to for all-day comfort and performance.</p>', array['womens-specialized-foundation-shorts-1/1.jpg', 'womens-specialized-foundation-shorts-1/2.jpg', 'womens-specialized-foundation-shorts-1/3.jpg', 'womens-specialized-foundation-shorts-1/4.jpg', 'womens-specialized-foundation-shorts-1/5.jpg']::text[], 'new', 5, '2025-09-04'::date, false, false),

  -- ---- bike-care-maintenance · brushes ----
  ('dynamic-claw-brush', 'Dynamic Claw Brush', 'dynamic-bike-care', 'bike-care-maintenance', 'brushes', '<h3><strong>Must-have cleaning tool.</strong></h3><br><p>A multifunctional brush to clean your bike’s chain, cassette, derailleur and pulley wheels</p><br><p>The multifunctional Claw brush is perfect to clean your bike’s chain, cassette, derailleur and pulley wheels. The tool features three brushes with though nylon bristles and a claw for mud de-clogging.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>The multifunctional Claw brush is perfect to clean your bike’s chain, cassette, derailleur and pulley wheels. The tool features three brushes with though nylon bristles and a claw for mud de-clogging.</p><br><h3><strong>APPLICATION</strong></h3><br><p>The Dynamic Claw brush has the following functionalities:</p><br><ul>
<br><li>Remove grease and mud from your cassette with the claw.</li>
<br><li>The hook at the end can be used to remove dirt from your pulley wheels.</li>
<br><li>The strong short bristles are ideal for cleaning your chain.</li>
<br><li>The long bristles can be used to remove sand and grease from your cassette and between chain links.</li>
<br><li>With the applicator brush, you can easily apply Chain cleaner on your drivetrain.</li>
<br>
</ul>', array['dynamic-claw-brush/1.png', 'dynamic-claw-brush/2.png', 'dynamic-claw-brush/3.png', 'dynamic-claw-brush/4.png', 'dynamic-claw-brush/5.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-cone-brush', 'Dynamic Cone Brush', 'dynamic-bike-care', 'bike-care-maintenance', 'brushes', '<h3><strong>Best brush we have, can do it all.</strong></h3>

<p>The Cone brush is perfect to clean all your bike’s tight areas like the wheel hubs and in between chain- and seat stays.</p>

<h3><strong>DESCRIPTION</strong></h3>

<p>The Cone brush is perfect to clean all your bike’s tight areas like the wheel hubs and in between chain stays and seat stays. The tool features a tapered nylon brush that allows you to get into hard to reach areas.</p>

<h3><strong>APPLICATION</strong></h3>

<p>Fill a bucket with (warm) water and a foamy cleaner like Badass Bubbles. Make sure the Cone Brush is wet before you brush the dirt of your bike. Doing a quick wash? Cover your bike with Dirt Destroy and let it sit for around 2 to 3 minutes. Attack the tight areas with the Cone Brush. Then rinse with water or wipe dry with a clean, dry Microfibre Polishing Cloth.</p>', array['dynamic-cone-brush/1.png', 'dynamic-cone-brush/2.png', 'dynamic-cone-brush/3.png', 'dynamic-cone-brush/4.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-soft-washing-brush', 'Dynamic Soft Washing Brush', 'dynamic-bike-care', 'bike-care-maintenance', 'brushes', '<h3><strong>Best brush we have, can do it all.</strong></h3>

<p>A large brush for cleaning your bike frame and components.</p>

<p>The Soft washing brush is ideal for cleaning your bike frame and components. The bike-specific design with soft bristles makes it safe to use on all bikes. The brush is optimized for fast cleaning with an oversized head and rubberized impact zones for maximum protection of your frame.</p>

<h3><strong>DESCRIPTION</strong></h3>

<p>The Soft washing brush is ideal for cleaning your bike frame and components. The bike-specific design with soft bristles makes it safe to use on all bikes. The brush is optimized for fast cleaning with an oversized head and rubberized impact zones for maximum protection of your frame.</p>

<h3><strong>APPLICATION</strong></h3>

<p>Fill a bucket with (warm)water and a foamy cleaner like Badass Bubbles. Make sure the Soft Washing Brush is wet before you scrub all the dirt of your bike. Doing a quick wash? Cover your bike with Dirt Destroy and let it sit for around 2 to 3 minutes. Work it in with the Soft Washing Brush. Rinse with water or wipe dry with a clean, dry Microfibre Polishing Cloth.</p>', array['dynamic-soft-washing-brush/1.png', 'dynamic-soft-washing-brush/2.png', 'dynamic-soft-washing-brush/3.png', 'dynamic-soft-washing-brush/4.png']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('juice-lubes-double-ender-brush', 'JUICE LUBES - DOUBLE ENDER BRUSH', 'juice-lubes', 'bike-care-maintenance', 'brushes', '<p>The Double Ender brush is a flexible, stiff and double-pronged brush that''ll leave your dirty bits gleaming.</p>
<p>It comes with a tough rubber handle and hard-wearing bristles for anything that’s filthy enough to need a proper scrubbing. It''s built to be stiff enough to really take some welly but flexible enough to reach those tricky spots.</p>
<p>As with all things, go steady. Excessive rubbing or pressure won’t do any good and could lead to surface scratching. For really sensitive bits, we’d recommend a sponge or microfibre cloth.</p>
<ul>
<li>Removes dirt from hard to reach areas</li>
<li>Adjustable prongs</li>
<li>Hard wearing nylon bristles</li>
<li>Tough impact resistant rubberized handle and impact zones</li>
<li>Ideal for linkages, discs, shocks, pedals, chainstays, spokes etc</li>
</ul>', array['juice-lubes-double-ender-brush/1.jpg', 'juice-lubes-double-ender-brush/2.jpg', 'juice-lubes-double-ender-brush/3.jpg', 'juice-lubes-double-ender-brush/4.jpg', 'juice-lubes-double-ender-brush/5.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),
  ('juice-lubes-stiffler-drivetrain-brush', 'JUICE LUBES - STIFFLER DRIVETRAIN BRUSH', 'juice-lubes', 'bike-care-maintenance', 'brushes', '<p>Use the Stiffler to to scrub your chainring, chain, mech and cassette and use it to ''paint'' degreaser and chain cleaner onto your mucky bits.</p>
<p>Short, stiff bristles work great on grime and the long handle makes it easy to dive deep into tricky areas.</p>
<p>As with all things, go steady. Excessive rubbing or pressure won’t do any good and could lead to surface scratching. For really sensitive bits, we’d recommend a sponge or microfibre cloth.</p>
<ul>
<li>Stiff nylon bristles for tough grime removal</li>
<li>Allows for easy application of drivetrain cleaner to hard to reach areas.</li>
<li>Ideal for chain rings, mechs, cassettes, chains.</li>
</ul>', array['juice-lubes-stiffler-drivetrain-brush/1.jpg', 'juice-lubes-stiffler-drivetrain-brush/2.jpg', 'juice-lubes-stiffler-drivetrain-brush/3.jpg', 'juice-lubes-stiffler-drivetrain-brush/4.jpg', 'juice-lubes-stiffler-drivetrain-brush/5.jpg']::text[], 'new', 0, '2023-07-19'::date, false, false),

  -- ---- bike-care-maintenance · chain-lubricants ----
  ('ceramicspeed-ufo-drip-all-conditions-chain-coating', 'CERAMICSPEED - UFO DRIP ALL CONDITIONS CHAIN COATING', 'ceramicspeed', 'bike-care-maintenance', 'chain-lubricants', '<p>Our acclaimed UFO Drip Chain Coating has been updated to be known as UFO Drip All Conditions. Now, in a new, smaller bottle size and an optimized formula that has a crisp white appearance while applying, that virtually disappears once fully dry.</p>
<p>The chain coating is developed to support all disciplines and is based on a non-toxic, non-flammable and bio-degradable formula. For wet conditions, the chain must be dried following the ride and a fresh coating of UFO Drip applied to ensure the best protection and continuing optimization.</p>
<p>The new UFO Drip blend is designed not only to optimise drivetrain efficiency. The non-toxic, non-flammable, bio-degradable formula is both safe and environmentally friendly.</p>
<h3>HOW TO APPLY UFO DRIP</h3>
<p>Our UFO Drip Chain Coating is designed for easy and effortless application. We''ve included an agitator in each bottle to ensure that the wax remains evenly blended even at the temperature extremes. Just remember to shake the bottle well before each application.</p>
<p><strong>For new chains and first application:</strong> Fully clean and dry the chain, ensuring to rinse all cleaner off before drying. We recommend CeramicSpeed Clean Drivetrain for this purpose. Always shake your UFO Drip bottle well before each use to ensure an even application of waxes.</p>
<p>Apply UFO Drip directly to the chain rollers over the cassette, rotating the chain slowly backwards to coat the entire length of the chain twice. Next, apply UFO Drip to the inside of the chain, along the rollers on the bottom span over the chain and coat the entire length of the chain twice. Allow UFO Drip to dry a minimum of 8 hours for best results and clean performance.</p>
<p><strong>For follow up applications with an overall clean drive train:</strong> Wipe the chain surface with a dry and clean cloth. Shake the UFO Drip bottle well. Apply UFO Drip directly to the chain rollers over the cassette, rotating the chain slowly backwards. Coat the entire length of the chain twice. Let dry for 8 hours. If your drive train has become thoroughly dirty and contaminated, begin with a full cleaning and coating as you would for a first application.</p>

<ul>
<li>100ml Bottle</li>
<li>Up to 300 km. per coating</li>
<li>Up to 35 coatings per bottle</li>
<li>Over 15% faster than previous formula</li>
<li>Increased temperature stability - apply between 5-35°C / 41-95°F. </li>
</ul>

<h3>The Story</h3>
<p><strong><em>CeramicSpeed is one of the world’s leading suppliers of ceramic bearings. The company consists of two specialised sales channels, focusing on cycling and industrial applications.</em></strong></p>
<p> We have more than 15 years of experience in bearings applications, and we have developed close relationships with our component suppliers over the time – each of whom is the very best in their fields. The CeramicSpeed Sports channel delivers both bearings as well as ultrafast racing chains, reinforcing the company’s goal of saving watts and delivering the lowest friction available. All our bearings are handmade and our chains are optimised by hand in Denmark.</p>', array['ceramicspeed-ufo-drip-all-conditions-chain-coating/1.jpg', 'ceramicspeed-ufo-drip-all-conditions-chain-coating/2.jpg']::text[], 'new', 1, '2024-09-05'::date, false, false),
  ('ceramicspeed-ufo-drip-indoor-and-track-chain-coating', 'CERAMICSPEED - UFO DRIP INDOOR AND TRACK CHAIN COATING', 'ceramicspeed', 'bike-care-maintenance', 'chain-lubricants', '<p>To complete the UFO Drip family, we have developed UFO Drip for Indoor. Wax chain coatings have multiple benefits, but also tend to shed excess surface wax after initial application. With UFO Drip for Indoor, the balance of wax to friction modifiers has been adjusted to maximize efficiency in clean conditions with minimal surface buildup.</p>
<ul>
<li>100 ml bottle</li>
<li>Apply UFO Indoor chain coating directly to the chain rollers, with at least one large drop per roller</li>
<li>A normal application will last 5-8 hours of indoor riding time.</li>
</ul>

<h3>The Story</h3>
<p><strong><em>CeramicSpeed is one of the world’s leading suppliers of ceramic bearings. The company consists of two specialised sales channels, focusing on cycling and industrial applications.</em></strong></p>
<p> We have more than 15 years of experience in bearings applications, and we have developed close relationships with our component suppliers over the time – each of whom is the very best in their fields. The CeramicSpeed Sports channel delivers both bearings as well as ultrafast racing chains, reinforcing the company’s goal of saving watts and delivering the lowest friction available. All our bearings are handmade and our chains are optimised by hand in Denmark.</p>', array['ceramicspeed-ufo-drip-indoor-and-track-chain-coating/1.jpg']::text[], 'new', 0, '2024-09-05'::date, false, false),
  ('ceramicspeed-ufo-drip-wet-conditions-chain-coating-1', 'CERAMICSPEED - UFO DRIP WET CONDITIONS CHAIN COATING', 'ceramicspeed', 'bike-care-maintenance', 'chain-lubricants', '<p>For those riding in consistently wet conditions, our new UFO Drip for Wet Conditions has been uniquely developed to maximize the benefits of a wax chain lubricant, while resisting deterioration through wet riding conditions.</p>
<p>The chain coating is developed to support all disciplines and is based on a non-toxic, non-flammable and bio-degradable formula. For wet conditions, the chain must be dried following the ride and a fresh coating of UFO Drip applied to ensure the best protection and continuing optimization.</p>
<p>The new UFO Drip blend is designed not only to optimise drivetrain efficiency. The non-toxic, non-flammable, bio-degradable formula is both safe and environmentally friendly.</p>
<p><strong>HOW TO APPLY UFO DRIP</strong></p>
<p>Our UFO Drip Chain Coating is designed for easy and effortless application. We''ve included an agitator in each bottle to ensure that the wax remains evenly blended even at the temperature extremes. Just remember to shake the bottle well before each application.</p>
<p><strong>For new chains and first application:</strong> Fully clean and dry the chain, ensuring to rinse all cleaner off before drying. We recommend CeramicSpeed Clean Drivetrain for this purpose. Always shake your UFO Drip bottle well before each use to ensure an even application of waxes.</p>
<p>Apply UFO Drip directly to the chain rollers over the cassette, rotating the chain slowly backwards to coat the entire length of the chain twice. Next, apply UFO Drip to the inside of the chain, along the rollers on the bottom span over the chain and coat the entire length of the chain twice. Allow UFO Drip to dry a minimum of 8 hours for best results and clean performance.</p>
<p><strong>For follow up applications with an overall clean drive train:</strong> Wipe the chain surface with a dry and clean cloth. Shake the UFO Drip bottle well. Apply UFO Drip directly to the chain rollers over the cassette, rotating the chain slowly backwards. Coat the entire length of the chain twice. Let dry for 8 hours. If your drive train has become thoroughly dirty and contaminated, begin with a full cleaning and coating as you would for a first application.</p>

<ul>
<li>100ml Bottle</li>
<li>Up to 300 km. per coating</li>
<li>Up to 35 coatings per bottle</li>
<li>Over 15% faster than previous formula</li>
</ul>

<h3>The Story</h3>
<p><strong><em>CeramicSpeed is one of the world’s leading suppliers of ceramic bearings. The company consists of two specialised sales channels, focusing on cycling and industrial applications.</em></strong></p>
<p> We have more than 15 years of experience in bearings applications, and we have developed close relationships with our component suppliers over the time – each of whom is the very best in their fields. The CeramicSpeed Sports channel delivers both bearings as well as ultrafast racing chains, reinforcing the company’s goal of saving watts and delivering the lowest friction available. All our bearings are handmade and our chains are optimised by hand in Denmark.</p>', array['ceramicspeed-ufo-drip-wet-conditions-chain-coating-1/1.jpg']::text[], 'new', 1, '2026-03-25'::date, false, false),
  ('ceramicspeed-ufo-drip-wet-conditions-chain-coating', 'CERAMICSPEED - UFO DRIP WET CONDITIONS CHAIN COATING', 'ceramicspeed', 'bike-care-maintenance', 'chain-lubricants', '<p>For those riding in consistently wet conditions, our new UFO Drip for Wet Conditions has been uniquely developed to maximize the benefits of a wax chain lubricant, while resisting deterioration through wet riding conditions.</p>
<p>The chain coating is developed to support all disciplines and is based on a non-toxic, non-flammable and bio-degradable formula. For wet conditions, the chain must be dried following the ride and a fresh coating of UFO Drip applied to ensure the best protection and continuing optimization.</p>
<p>The new UFO Drip blend is designed not only to optimise drivetrain efficiency. The non-toxic, non-flammable, bio-degradable formula is both safe and environmentally friendly.</p>
<h3>LAB TESTING</h3>
<p>To make sure that our new UFO Drip Wet Conditions could uphold the performance and quality that we were searching for, we had to take it to our internal Test Lab. Here, we challenged ourselves by putting the new UFO Drip Wet Conditions through its paces in a confined wet environment. This would also give us an indication of how the product performed in comparison to wet lubrication products from other brands on the market.<br><br>The protocol for the Wet Condition test is quite straightforward. Add a chain – coated with UFO Drip Wet Conditions – to an automated drivetrain that can uphold 250 watts with no fluctuation at a speed of 56 km/t. Water will constantly be supplied to the chain during the entire test period.<br>After 20 minutes, we remove the chain and check the ‘loss of watts’. Then we add it again to our Water Test. Every hour after that, we repeat the watt loss test. This process continues for five straight hours.<br><br>the test clearly shows that after about an hour and a half, most of the comparison lubrications start to spike in watt loss and most of them wear off, while our UFO Drip Wet Conditions keeps a steady "watt loss" throughout the entire test period.<br><br><strong>Note:</strong> External testing is currently being conducted by Adam Kerin of Zero Friction Cycling. We''ll make this data available as soon as we have it.</p>
<h3>HOW TO APPLY UFO DRIP</h3>
<p>Our UFO Drip Chain Coating is designed for easy and effortless application. We''ve included an agitator in each bottle to ensure that the wax remains evenly blended even at the temperature extremes. Just remember to shake the bottle well before each application.</p>
<p><strong>For new chains and first application:</strong> Fully clean and dry the chain, ensuring to rinse all cleaner off before drying. We recommend CeramicSpeed Clean Drivetrain for this purpose. Always shake your UFO Drip bottle well before each use to ensure an even application of waxes.</p>
<p>Apply UFO Drip directly to the chain rollers over the cassette, rotating the chain slowly backwards to coat the entire length of the chain twice. Next, apply UFO Drip to the inside of the chain, along the rollers on the bottom span over the chain and coat the entire length of the chain twice. Allow UFO Drip to dry a minimum of 8 hours for best results and clean performance.</p>
<p><strong>For follow up applications with an overall clean drive train:</strong> Wipe the chain surface with a dry and clean cloth. Shake the UFO Drip bottle well. Apply UFO Drip directly to the chain rollers over the cassette, rotating the chain slowly backwards. Coat the entire length of the chain twice. Let dry for 8 hours. If your drive train has become thoroughly dirty and contaminated, begin with a full cleaning and coating as you would for a first application.</p>

<ul>
<li>100ml Bottle</li>
<li>Up to 300 km. per coating</li>
<li>Up to 35 coatings per bottle</li>
<li>Over 15% faster than previous formula</li>
<li>Increased temperature stability - apply between 5-35°C / 41-95°F. </li>
</ul>

<h3>The Story</h3>
<p><strong><em>CeramicSpeed is one of the world’s leading suppliers of ceramic bearings. The company consists of two specialised sales channels, focusing on cycling and industrial applications.</em></strong></p>
<p> We have more than 15 years of experience in bearings applications, and we have developed close relationships with our component suppliers over the time – each of whom is the very best in their fields. The CeramicSpeed Sports channel delivers both bearings as well as ultrafast racing chains, reinforcing the company’s goal of saving watts and delivering the lowest friction available. All our bearings are handmade and our chains are optimised by hand in Denmark.</p>', array['ceramicspeed-ufo-drip-wet-conditions-chain-coating/1.jpg']::text[], 'new', 0, '2024-09-05'::date, false, false),
  ('ceramicspeed-ufo-hot-wax-chain-hanger', 'CERAMICSPEED - UFO HOT WAX CHAIN HANGER', 'mr-rider', 'bike-care-maintenance', 'chain-lubricants', '<p>Wrap your chain around this custom designed chain hanger that prevents chains from becoming tangled while submerged in wax. Simplifies the waxing process and minimizes hassle.</p>
<p>CeramicSpeed Ultra Endurance Wax and immersion kit sold separately.</p>

<h3>The Story</h3>
<p><strong><em>CeramicSpeed is one of the world’s leading suppliers of ceramic bearings. The company consists of two specialised sales channels, focusing on cycling and industrial applications.</em></strong></p>
<p> We have more than 15 years of experience in bearings applications, and we have developed close relationships with our component suppliers over the time – each of whom is the very best in their fields. The CeramicSpeed Sports channel delivers both bearings as well as ultrafast racing chains, reinforcing the company’s goal of saving watts and delivering the lowest friction available. All our bearings are handmade and our chains are optimised by hand in Denmark.</p>', array['ceramicspeed-ufo-hot-wax-chain-hanger/1.jpg', 'ceramicspeed-ufo-hot-wax-chain-hanger/2.jpg', 'ceramicspeed-ufo-hot-wax-chain-hanger/3.jpg']::text[], 'new', 0, '2025-07-31'::date, false, false),
  ('ceramicspeed-ufo-ultra-endurance-wax-kit', 'CERAMICSPEED - UFO ULTRA ENDURANCE WAX KIT', 'mr-rider', 'bike-care-maintenance', 'chain-lubricants', '<p>Our UFO Ultra Endurance Wax is a new hot melt lubricant offering market-leading durability and unprecedented quiet performance. Derived from the question of ‘just how far you can ride on one single application of chain lubrication’, our Ultra Endurance Wax sets a new industry benchmark for extremely long-lasting performance in mixed conditions.</p>
<p>The unique formula behind our new Ultra Endurance Wax is developed by our in-house chemist and like the rest of the UFO product family it is completely bio-degradable and non-toxic. The formula has been validated through extensive lab and field testing, where some of our test riders have documented clean and quiet-running rides of 1000+ kms in changing conditions on a single application.</p>
<p>To enhance simplicity in the application process, our Ultra Endurance Wax can be heated directly in its cylinder packaging when submerged in a water bath. If you’re already a convinced hot waxer, the Ultra Endurance Wax pellets can be melted in your dedicated hot wax heater.</p>
<h3> </h3>
<ul>
<li>Category-leading durability for hot-melt wax</li>
<li>Includes chain hanger and cyclinder packaging that can be heated over a water bath</li>
<li>400g of product lasts for many applications</li>
<li>1000+km duration per coating in clean conditions</li>
<li>500-750km duration in wet/mixed conditions</li>
<li>Fully compatible with UFO Drip lubricants for top ups between hot-melt immersions</li>
</ul>

<h3>The Story</h3>
<p><strong><em>CeramicSpeed is one of the world’s leading suppliers of ceramic bearings. The company consists of two specialised sales channels, focusing on cycling and industrial applications.</em></strong></p>
<p> We have more than 15 years of experience in bearings applications, and we have developed close relationships with our component suppliers over the time – each of whom is the very best in their fields. The CeramicSpeed Sports channel delivers both bearings as well as ultrafast racing chains, reinforcing the company’s goal of saving watts and delivering the lowest friction available. All our bearings are handmade and our chains are optimised by hand in Denmark.</p>', array['ceramicspeed-ufo-ultra-endurance-wax-kit/1.jpg', 'ceramicspeed-ufo-ultra-endurance-wax-kit/2.jpg', 'ceramicspeed-ufo-ultra-endurance-wax-kit/3.jpg', 'ceramicspeed-ufo-ultra-endurance-wax-kit/4.jpg']::text[], 'new', 1, '2025-07-31'::date, false, false),
  ('ceramicspeed-ufo-ultra-endurance-wax-pouch', 'CERAMICSPEED - UFO ULTRA ENDURANCE WAX POUCH', 'mr-rider', 'bike-care-maintenance', 'chain-lubricants', '<p>Our UFO Ultra Endurance Wax is a new hot melt lubricant offering market-leading durability and unprecedented quiet performance. Derived from the question of ‘just how far you can ride on one single application of chain lubrication’, our Ultra Endurance Wax sets a new industry benchmark for extremely long-lasting performance in mixed conditions.</p>
<p>The unique formula behind our new Ultra Endurance Wax is developed by our in-house chemist and like the rest of the UFO product family it is completely bio-degradable and non-toxic. The formula has been validated through extensive lab and field testing, where some of our test riders have documented clean and quiet-running rides of 1000+ kms in changing conditions on a single application.</p>
<p>If you’re already a convinced hot waxer, the Ultra Endurance Wax pellets can be melted in your dedicated hot wax heater.</p>
<h3> </h3>
<ul>
<li>Category-leading durability for hot-melt wax</li>
<li>Suitable for road, mountain bike and gravel applications</li>
<li>400g and 750g bag options provide enough product to last for many applications</li>
<li>1000+km duration per coating in clean conditions</li>
<li>500-750km duration in wet/mixed conditions</li>
<li>Fully compatible with UFO Drip lubricants for top ups between hot-melt immersions</li>
</ul>

<h3>The Story</h3>
<p><strong><em>CeramicSpeed is one of the world’s leading suppliers of ceramic bearings. The company consists of two specialised sales channels, focusing on cycling and industrial applications.</em></strong></p>
<p> We have more than 15 years of experience in bearings applications, and we have developed close relationships with our component suppliers over the time – each of whom is the very best in their fields. The CeramicSpeed Sports channel delivers both bearings as well as ultrafast racing chains, reinforcing the company’s goal of saving watts and delivering the lowest friction available. All our bearings are handmade and our chains are optimised by hand in Denmark.</p>', array['ceramicspeed-ufo-ultra-endurance-wax-pouch/1.jpg', 'ceramicspeed-ufo-ultra-endurance-wax-pouch/2.jpg', 'ceramicspeed-ufo-ultra-endurance-wax-pouch/3.jpg', 'ceramicspeed-ufo-ultra-endurance-wax-pouch/4.jpg', 'ceramicspeed-ufo-ultra-endurance-wax-pouch/5.jpg']::text[], 'new', 1, '2025-07-31'::date, false, false),
  ('dynamic-bio-allround-lube-100ml', 'Dynamic Bio Allround Lube 100mL', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3><strong>Planet Friendly allround chain oil.</strong></h3>

<p>Planet-friendly chain oil that makes your drivetrain run smooth during all weather conditions.</p>

<p>The biodegradable Dynamic Bio All round lube will ensure that your drivetrain runs smoothly throughout the year in all weather conditions. This ultradurable lube is completely derived from natural ingredients.</p>

<p>Dynamic Bio All round lube is a high quality lubricant that reduces friction in your drivetrain and helps to deliver smoother gear shifts. Its premium formula is optimized to protect moving parts against water and corrosion. Due to its high creep capability, the oil penetrates quickly into each chain link.</p>

<h3><strong>DESCRIPTION</strong></h3>

<p>The biodegradable Bio All round lube will ensure that your drivetrain runs smoothly throughout the year in all weather conditions. This ultradurable lube is completely derived from natural ingredients.</p>

<p>All round lube is a high quality lubricant that reduces friction in your drivetrain and helps to deliver smoother gear shifts. Its premium formula is optimized to protect moving parts against water and corrosion. Due to its high creep capability, the oil penetrates quickly into each chain link.</p>

<h3><strong>APPLICATION</strong></h3>

<p>For best results, use Dynamic Bio All round lube after cleaning your chain with Dynamic Chain Cleaner. Afterwards, apply the chain lube on each chain link and/or moving parts. Suitable for dry and wet conditions.</p>', array['dynamic-bio-allround-lube-100ml/1.png', 'dynamic-bio-allround-lube-100ml/2.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-cleaner-brake-booster-400ml', 'Dynamic Cleaner Brake Booster 400ml', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3>DYNAMIC BRAKE BOOSTER 400ML</h3>

<h3>DESCRIPTION</h3>

<h3><strong>CLEAN BRAKES WORK BETTER, LAST LONGER.</strong></h3>
<br>
<p>For the best braking power, your disc brakes need to be free from contaminants. Brake Booster is a brake cleaner for your disc and rim brakes. It quickly removes dirt, grime, oil and other contaminants. The strong solvent removes even the most stubborn grime residues without harming the braking parts. The formula is safe to use on all braking components and materials like rubber, plastic, metal and carbon. The easy to use spray helps to apply the cleaner evenly on your brakes. Brake Booster dries rapidly and leave no residue. Brake Booster can be used on all braking components including disc brakes, brake pads and (aluminum) rim flanks.</p>
<br>
<p><strong>Read <a href="https://dynamicbikecare.com/brake-squeal-this-is-the-solution/" rel="noopener nofollow" target="_blank">here</a> more about the usage of Brake Booster to stop brake squal!</strong></p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Boost your braking performance with Dynamic Brake Booster. This brake cleaner helps to dramatically reduce brake squeal and quickly removes dirt, grime, oil and other contaminants. Clean brakes and brake pads perform better and #lastlonger.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p>Shake the can well before use and spray directly on the area you are cleaning. You can also spray it on a clean cloth first. Wipe away any excess fluid and allow Brake Booster to evaporate before going for a ride.</p>', array['dynamic-cleaner-brake-booster-400ml/1.webp']::text[], 'new', 1, '2024-04-18'::date, false, false),
  ('dynamic-cleaner-mechanics-magic-400ml', 'Dynamic Cleaner Mechanics Magic 400ml', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3>DYNAMIC MECHANICS MAGIC 400ML</h3>

<h3>DESCRIPTION</h3>

<h3><strong>THE ULTIMATE MULTI-SPRAY THAT CAN BE PUT TO WORK IN COUNTLESS SITUATIONS, ANY WORKSHOP OR AROUND ANY BIKE.</strong></h3>
<br>
<p>Mechanics Magic''s formulation is based on a top-grade base oil that surpasses market standards. A multi spray that lubricates, protects and is safe to use on bikes.</p>
<br>
<p>The great quality of the oil ensures the formula to work better, faster and #lastlonger compared to other multi oils. An important distinctive feature for the use around bikes and parts is that the spray is 100% safe for carbon, generic sprays are not tested on carbon so can potentially be harmful.</p>
<br>
<p>Some of the magic this spray can do:</p>
<br><br>
<ul>
<li>protect surfaces against rust and corrosion</li>
</ul>
<br>
<ul>
<li>penetrate parts or mechanisms that are stuck to loosen them</li>
</ul>
<br>
<ul>
<li>stop squeaks, beeps, and chirps</li>
</ul>
<br>
<ul>
<li>lubricate practically everything</li>
</ul>
<br>
<ul>
<li>remove grease and dirt</li>
</ul>
<br>
<ul>
<li>100% carbon safe</li>
</ul>
<br><br>
<p>The formula works quickly and effectively but please do us one favour: do not spray near tires or braking surfaces.</p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Mechanic Magic is a multi-purpose wonder spray that lubricates, protects and penetrates. It loosens parts, reduces friction and leaves a long-lasting protective film that displaces water. Mechanics Magic prevents dirt adhesion and corrosion. This spray is the ultimate multi-spray that can be put to work in countless situations, any workshop or around any bike. <strong>IMPORTANT:</strong>Mechanics Magic is 100% carbon safe. Most generic multisprays are either not tested or not suitable to be used on carbon surfaces and/or bike parts.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p>Shake can before use and apply widely or more precise depending on your needs. Apply directly onto frame and parts or spray it on a cloth first. Wipe away excess residue. Store in a cool and dry place.</p>', array['dynamic-cleaner-mechanics-magic-400ml/1.webp']::text[], 'new', 1, '2024-04-18'::date, false, false),
  ('dynamic-dry-lube-premium-100ml', 'Dynamic Dry Lube Premium 100ml', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3><strong>Non-stick, very dry lube for your chain.</strong></h3><br><p>Lube for dry conditions to make sure no dirt or dust sticks to your bicycle chain.</p><br><p>Use Dynamic Dry lube in dry conditions to make sure no dirt or dust sticks to your bicycle chain. The advanced chain lubricant will make your drivetrain run smoothly and improves the efficiency.</p><br><p>The ingredients of this dry lube are carefully selected, resulting in a high performance lube with a very low friction coefficient. It keeps moving parts operating smoothly, reduces friction and protects against corrosion and holds up in even the most extreme situations. The premium oil penetrates quickly into each chain link’s core to give ultimate lubrication and protection.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>Use Dynamic Dry lube in dry conditions to make sure no dirt or dust sticks to your bicycle chain. The advanced chain lubricant will make your drivetrain run smoothly and improves the efficiency.</p><br><p>The ingredients of this dry lube are carefully selected, resulting in a high performance lube with a very low friction coefficient. It keeps moving parts operating smoothly, reduces friction and protects against corrosion and holds up in even the most extreme situations.</p><br><h3><strong>APPLICATION</strong></h3><br><p>Dynamic Dry lube is optimized for use in dry weather. For best results, use Dynamic Dry lube after cleaning your chain with Dynamic Chain Cleaner. Afterwards, apply the chain lube on each chain link and/or moving parts of your bike.</p>', array['dynamic-dry-lube-premium-100ml/1.png', 'dynamic-dry-lube-premium-100ml/2.png', 'dynamic-dry-lube-premium-100ml/3.png']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('dynamic-e-bike-lube-100ml', 'Dynamic E-Bike Lube 100mL', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3><strong>Fast, silent, clean and long lasting.</strong></h3><br><p>Chain lubricant designed to be used on E-bikes.</p><br><p>The powerful drivetrain of modern E-bikes requires a specific lubricant. Dynamic E-bike lube is optimized to resist the high pressures of the electric motor to keep your cycling trips comfortable and safe.</p><br><p>This high performance lubricant keeps the moving parts of your E-bike operating smoothly, reduces friction and protects against corrosion. Dynamic E-bike lube is suitable for all weather conditions and can be used in all seasons.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>The powerful drivetrain of modern E-bikes requires a specific lubricant. Dynamic E-bike lube is optimized to resist the high pressures of the electric motor to keep your cycling trips comfortable and safe.</p><br><p>This high performance lubricant keeps the moving parts of your E-bike operating smoothly, reduces friction and protects against corrosion. Dynamic E-bike lube is suitable for all weather conditions and can be used in all seasons.</p><br><h3><strong>APPLICATION</strong></h3><br><p>Dynamic E-bike lube is optimized for use on the E-bike chain. For best results, use Dynamic E-bike lube after cleaning your chain with Dynamic Chain Cleaner. Afterwards, apply the chain lube on each chain link and/or moving parts of your bike.</p>', array['dynamic-e-bike-lube-100ml/1.png', 'dynamic-e-bike-lube-100ml/2.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-grease-galli-grease-pro-150g', 'Dynamic Grease Galli Grease Pro 150g', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3>DYNAMIC GALLI GREASE PRO 150G</h3>

<h3>DESCRIPTION</h3>

<h3><strong>MARGINAL GAINS BEARING GREASE.</strong></h3>
<br>
<p>Bearing grease for pro’s to lubricate and protect all bearings.</p>
<br>
<p>Dynamic Galli Grease Pro is developed to lubricate and protect all cycling bearings. It has extreme friction reducing properties and is used by several World Tour Teams.</p>
<br>
<p>The lubricating and protective properties of this grease, help to prevent corrosion and reduce wear. This premium grease protects your bearings against salt and electrolytes. Dynamic Galli Grease Pro is water repellant and can be used in all temperatures. The stable viscosity provides a long service life.</p>
<br>
<p>Our Galli Grease is optimized to grease all bearing of your bike, such as wheel-, bottom bracket- and pedal bearings. This premium grease is also suitable to use on your hubs, axles, suspension and dropper post. All greases of Dynamic are 100% carbon safe.</p>
<br><br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Bearing grease for pro''s! Galli Grease Pro is developed to lubricate and protect all cycling bearings.</p>
<br>
<p>The lubricating and protective properties of this grease help to prevent corrosion and reduce wear. This premium grease protects your bearings against salt and electrolytes. Dynamic Galli Grease Pro is water repellant and can be used in all temperatures. The stable viscosity provides a long service life.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p>Apply some Galli Grease Pro to bearings like headsets, bottom brackets or wheels.</p>', array['dynamic-grease-galli-grease-pro-150g/1.webp']::text[], 'new', 0, '2024-04-18'::date, false, false),
  ('dynamic-lubricant-allround-lube-100ml', 'Dynamic Lubricant Allround Lube 100mL', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3>DYNAMIC ALLROUND LUBE 100ML</h3>

<h3>DESCRIPTION</h3>

<h3><strong>ALL CONDITIONS LUBE, NO QUESTIONS ASKED.</strong></h3>
<br>
<p>Make your drivetrain run smoothly throughout the year with its ultradurable all-weather formula.</p>
<br>
<p>Dynamic All round lube will ensure that your drivetrain runs smoothly throughout the year with its ultradurable all-weather formula.</p>
<br>
<p>All round lube is a high quality lubricant that reduces friction in your drivetrain and helps to deliver smoother gear shifts. Its premium formula is optimized to protect moving parts against water and corrosion. Due to its high creep capability, the oil penetrates quickly into each chain link.</p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Dynamic All round lube will ensure that your drivetrain runs smoothly throughout the year with its ultradurable all-weather formula.</p>
<br>
<p>All round lube is a high quality lubricant that reduces friction in your drivetrain and helps to deliver smoother gear shifts. Its premium formula is optimized to protect moving parts against water and corrosion. Due to its high creep capability, the oil penetrates quickly into each chain link.</p>
<br>
<h3>FEATURES</h3>
<br>
<p>Make your drivetrain run smoothly throughout the year with its ultradurable all-weather formula.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p>For best results, use Dynamic All round lube after cleaning your chain with Dynamic Chain Cleaner. Afterwards, apply the chain lube on each chain link and/or moving parts.</p>', array['dynamic-lubricant-allround-lube-100ml/1.webp']::text[], 'new', 1, '2024-04-18'::date, false, false),
  ('dynamic-slick-wax-100ml', 'Dynamic Slick Wax 100mL', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3><b>Extremely durable chain wax.</b></h3>
<p>Slick Wax is a very durable and sophisticated chain lubricant. Carefree chain grooming is made simple with this biodegradable, planet friendly, wax-based lube. It protects your chain against corrosion, dirt and wear, makes it run smoother and quieter than ever whilst keeping your drivetrain dry and clean.</p>
<p>Oily chains are a thing of the past when you start using Slick Wax. Simply apply to a clean, dry chain and you will hardly ever have to degrease your chain again. Just reapply when necessary and remove any dirt or excess wax with a cloth or brush.</p>
<p>Suitable for all weather conditions and for all cycling disciplines. Whether it is your road bike, MTB, gravel or e-bike; you’ll only need this single product to do the job. Using Slick Wax will extend the life of your drive train by up to 40% and it will #lastlonger on your chain than other chain waxes.</p>
<h3><b>DESCRIPTION</b></h3>
<p>Slick chain wax will make your drivetrain run smooth, clean, and quiet. This often-chosen chain wax is ideal for all weather conditions. It reduces the friction in your chain, protects against corrosion and is extremely durable. Suitable for use on road bikes, gravel bikes and mountain bikes.</p>
<p>✅ The ultimate all-round wax, suited for all weather conditions and bikes.<br>✅ Planet friendly, fully biodegradable.<br>✅ No more black chain and cassette, Slick Wax keeps your drivetrain clean (and quiet).</p>
<h3><b>APPLICATION</b></h3>
<p><b>First application:</b><br>Clean your chain and drivetrain really well, rinse with water afterwards to make sure there is no residue of the chain cleaner left. Let the chain, cassette and crankset dry out completely. Shake the bottle and apply 1 drop of Slick Wax on the inside and outside of every single chain link. Wait for 2-3 before riding to get the best result. Remove excess wax with a brush or cloth if needed.</p>
<p><b>Reapplication:</b><br>Run the chain through a cloth to remove any dirt or wax residue, you can also use a brush to remove residues from your cassette or pulley wheels. Apply 1 drop of Slick Wax to the inside and outside of every single chain link. For the best results, we advise to wait 2-3 hours before riding.</p>', array['dynamic-slick-wax-100ml/1.png', 'dynamic-slick-wax-100ml/2.png', 'dynamic-slick-wax-100ml/3.png']::text[], 'new', 2, '2025-08-16'::date, false, false),
  ('dynamic-speed-potion-wax-100ml', 'Dynamic Speed Potion Wax 100mL', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<h3><strong>Fastest chain wax in the peloton.</strong></h3>
<p><strong>What if fast isn’t fast enough? Try it now!</strong></p>
<p>Speed Potion Wax is the ultimate bicycle chain coating. A top-grade wax composite containing over 17% friction reducing additives in a unique formula that makes you faster. Speed Potion Wax is extremely durable, provides maximum wear protection and keeps your chain clean.</p>
<p>Every watt that is lost to friction is one less watt available to power your bike. Don’t let friction stand between you and your goals. Speed Potion Wax is developed together with pro riders and mechanics who’s daily stage is the World Tour. Speed Potion Wax is the fastest lubricant out there.</p>
<p><strong>Speed Potion Wax:</strong></p>
<ul>
<li>makes you faster.</li>
<li>is designed for riders who produce above average power.</li>
<li>provides for long maintenance intervals.</li>
<li>keeps your chain dry and clean.</li>
<li>is long lasting and durable.</li>
<li>is developed with pro riders.</li>
</ul>
<p>For more elaborate instructions, including immersion waxing, see this <strong><a href="https://www.dynamicbikecare.com/pages/speed-potion-wax" rel="noopener nofollow" target="_blank">special instruction page</a></strong>!</p>
<h3><strong>DESCRIPTION</strong></h3>
<p>Try the ultimate bicycle coating with this compact bottle. A top-grade wax composite containing over 17% friction reducing additives in a unique formula that makes you faster. Speed Potion Wax is extremely durable, provides maximum wear protection and keeps your chain clean.</p>
<p>Winner of the Bike Motion Award 2021 in the Improve Performance category.</p>
<p>As you can see, we use two types of packaging in our content. We are moving from the black bottle to the new clear packaging to enhance the recyclability of our products.</p>
<h3><strong>APPLICATION</strong></h3>
<p>Please make sure to completely degrease your chain to ensure good adhesion. Even when the chain is new, there is a factory lubricant on it which makes it very hard for a wax product to stick to the metal surface. Rinse the chain well after using a degreasing chain cleaner and let it dry out completely.</p>
<p>Always shake the bottle vigorously before opening it, the oxygen in the bottle can cause some of the wax to harden in the nozzle of the bottle, and it is best to make sure this is mixed in well. Always apply Speed Potion Wax at least 2 hours before riding, preferably longer (24 hours). This way the wax is able to solidify completely. Adhesion will be at the best level after 24 hours and this will have a positive effect on the durability of the coating.</p>', array['dynamic-speed-potion-wax-100ml/1.png', 'dynamic-speed-potion-wax-100ml/2.png', 'dynamic-speed-potion-wax-100ml/3.png', 'dynamic-speed-potion-wax-100ml/4.png', 'dynamic-speed-potion-wax-100ml/5.png']::text[], 'new', 1, '2025-08-16'::date, false, false),
  ('dynamic-watts-up-indoor-wax', 'Dynamic Watts Up Indoor Wax', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '<p>Fast and silent indoor chain wax.</p><p><br></p><p>Watts-Up Wax is the world’s first (!) chain wax specifically designed to be used indoor. No nasty particles flying around your pain cave, a noise cancelling formula to keep roommates happy and a lubricant that is so efficient in indoor conditions, it feels like a constant ‘power-up’!</p><p>The worlds first (!) chain wax specifically developed to be used indoor.<br><br>This hyper efficient, super silent wax is all you need to ensure ultra-smooth indoor cycling this winter season. Tested and approved by avid Zwifters on their Tacx, Wahoo and  Elite trainers.</p><p>It is possible to use this wax outdoors just not in wet conditions. You can apply any other Dynamic Wax over the Watts-Up Wax if you decide to take your bike outdoor and expect some bad weather. The formula is planet-friendly and easy to use.</p>', array['dynamic-watts-up-indoor-wax/1.jpg', 'dynamic-watts-up-indoor-wax/2.jpg', 'dynamic-watts-up-indoor-wax/3.png']::text[], 'new', 0, '2025-08-16'::date, false, false),
  ('rocknrollextremeblue', 'Rock n Roll Extreme Blue', 'rock-n-roll', 'bike-care-maintenance', 'chain-lubricants', '<p>Rock n Roll Extreme Blue 120ml</p>
<p>The “King of Lubes” has three chain lubes: The EXTREME, </p>
<p>ABSOLUTE DRY, and GOLD. All three are formulated to clean <br>and lube at the same time when applied.<br>What''s going on is this: The formulation goes deep down into <br>the chain and traps any dirt. Then, with the energy of the chain freewheeling backwards, the dirt and grit floats to the surface so you can wipe it all off, leaving a new and clean application of lube inside the chain, where it’s needed. The lube down inside the chain creates a protective membrane to seal out dirt and moisture from the moving parts of the chain. As well as holding in place the best lube on the planet, for longer chain life, super smooth shifting<br>and pedaling. </p>', array['rocknrollextremeblue/1.jpg']::text[], 'new', 2, '2021-08-20'::date, false, false),
  ('rocknrollgoldlube', 'Rock N Roll Gold Lube', 'rock-n-roll', 'bike-care-maintenance', 'chain-lubricants', '<p><strong>$5.00 Shipping Nationwide / Free On Orders $50.00+</strong></p>
<ul>
<li>North Island Delivery: 1-2 Working Days</li>
<li>South Island Delivery: 2-4 Working Days</li>
</ul>
<p><strong><br></strong></p>
<p><strong>Description:</strong></p>
<p>This chain lube moved the 21st-century closer to the 22nd century. Drive-trains look like they just came out of the box. The well-known smoothness and quietness that Rock ''N'' Roll Lubes are known all over the world for, just went to a new level.  This outstanding lube scored very high in a March 2013 VeloNews lab test showing that Rock N Roll Gold can make you faster by reducing chain friction compared to other common chain lubes.</p>
<p>Available in 120ml or 480ml bottles. The 120ml bottles can be purchased in display boxes containing 12.</p>
<p>Many riders ask, "What is the difference between the Extreme, Absolute Dry, and the Gold?" The Extreme is for mountain bikes. Absolute Dry is for the road bikes. The Gold is for both mountain and road bikes.</p>
<p><strong>Application Instructions:</strong><br>Shake well until the settled solids on the bottom have disappeared and apply a stream of lube to the chain at the cassette.<br>Do not drip the lube on like you would oil. This is not oil!<br>Get the chain really wet, this stuff cleans and lubes all in one.<br>Freewheel the chain backwards for about 5 seconds...no less.<br>Wipe off all the excess lube... all of it, wipe the chain as clean as it will get.<br>That''s it go ride...</p>', array['rocknrollgoldlube/1.jpg']::text[], 'new', 1, '2021-08-20'::date, false, false),
  ('rocknrollholycowlube', 'Rock n Roll Holy Cow Lube', 'rock-n-roll', 'bike-care-maintenance', 'chain-lubricants', '<p><strong>$5.00 Shipping Nationwide / Free On Orders $50.00+</strong></p>
<ul>
<li>North Island Delivery: 1-2 Working Days</li>
<li>South Island Delivery: 2-4 Working Days</li>
</ul>
<p><strong><br></strong></p>
<p><strong>Description:</strong></p>
<p>Holy Cow is the latest in the Rock N'' Roll Lubrication''s line up of chain lubes. Holy Cow is not flammable and is a very settled wet lube that is as clean or cleaner than most dry lubes. Holy Cow preforms fantastic, like the other Rock N'' Roll chain lubes. However being a little bit of a wet style chain lube, what little dirt or grit that does get on the chain, can be wiped away quickly and easily with the chain looking great again. For all you riders that like to ride with a wet lube but could live better without all the dirt and grit of a wet lube, Holy Cow is just for you. Good for all conditions.</p>
<p>Volume: 118ml</p>
<p><strong>Application:</strong></p>
<ul>
<li>Shake well and apply a stream of lube to the chain at the cassette.</li>
<li><strong>Do not drip the lube on like you would oil. This is not oil!</strong></li>
<li>Get the chain really wet, this stuff cleans and lubes all in one.</li>
<li>Freewheel the chain backwards for about 5 seconds...no less.</li>
<li>Wipe off all the excess lube... all of it, wipe the chain as clean as it will get.</li>
</ul>', array['rocknrollholycowlube/1.jpg']::text[], 'new', 0, '2021-08-20'::date, false, false),
  ('squirtproduct', 'Squirt Lube', 'squirt', 'bike-care-maintenance', 'chain-lubricants', '<p><strong>Description:</strong></p>
<p>Once you use Squirt You will never use another brand of lube again!</p>
<p>Squirt is the Holy Grail of chain lubricant for cycling. It lubricates better, stays on the chain longer and keeps the chain clean. Personally used by the bike mad staff here at T7 they all raved about it and for good reason,</p>
<p>It is a wax based, long lasting dry lube that does not contain harmful solvents, is 100% biodegradable and environmentally friendly. With various waxes with unique properties, it is ideal for any cycling condition. It was developed to lubricate over longer distances and keep the chain clean, for both mountain biking and road cycling.</p>
<p><br>In 2018 Squirt products will be used by 9 UCI Mt Bike World Cup Teams who demand reliable, effective and high performance products! <br><br>Features:</p>
<ul>
<li>Long lasting</li>
<li>Does not gather dirt</li>
<li>Optimal wax content</li>
<li>Prolongs drive train life</li>
<li>Improves gear shifting</li>
<li>Reduces chain noise</li>
<li>No cleaning required between rides</li>
</ul>', array['squirtproduct/1.jpg']::text[], 'new', 0, '2021-08-20'::date, false, false),
  ('tru-tension-tungsten-all-weather-lube', 'Tru-Tension Tungsten All Weather Lube', 'tru-tension', 'bike-care-maintenance', 'chain-lubricants', '<p>The first Tungsten infused lubricant, bringing space grade lubrication to the cycling industry! All weather durability, silky smooth running, no noise and extensive endurance.<br>Tungsten as a friction modifier is superior to Ceramics, Teflon and PTFE, making it super fast while also significantly reducing wear. Our patent pending formulation is wax based, water resistant, completely dry and 100% biodegradable.<br><br>Independently proven to reduce wear more than any other standard drip apply lube on the market.(Check out the graphs below)<br>-Super fast - Perfect for any riding conditions<br>-Dual viscosity - thin when applied for pin penetration<br>-Sets within 5-10 mins for instant riding<br>-Keeps your chain exceptionally clean<br>-Completely dry - dirt doesn''t stick<br>-Repels moisture for wet riding<br>-Easy to clean<br>-Perfect for Road, MTB &amp; E-Bikes<br><br>Don''t just take our word for it, check out the endurance data below provided by world renowned and fully independent test facility Zero Friction Cycling in Australia. Tungsten All Weather Lube is the only standard drip application lubricant to ever make it past 5,000km of extreme contamination testing without exceeding wear tolerance.<br>Nearly double the lifespan of chain and rings for dry, dusty or gravel conditions compared to other brands.<br><br><br>Less than half the chain wear compared with most brands in sandy and muddy conditions and extensively better than others.<br><br>Tungsten Disulphide was originally developed for space projects as a lubricant due to it having a lower coefficient of friction compared with Ceramics, Teflon and Graphite, as well as being more durable. Tungsten smooths out the surface of the metal to minimise surface imperfections, resulting in up to 40% less friction than Ceramics, up to 50% less than Teflon, and up to 60% less than Graphite. Not only is it faster, but it’s also more durable, creating an atomic layer on the surface of the chain to reduce wear of the drivetrain and protect moving components.<br><br>Tungsten blended with our hi-tech water based All Weather Lube provides a silky-smooth and fast running ride like no other. Once applied it penetrates all parts of the chain before setting to a completely dry lubricating layer which is resistant to water and dirt ingress. As the lubricant is totally dry, it completely stops dirt building up into a grinding paste unlike all other conventional lubricants.<br><br>After the first couple off applications the Tungsten smooths out the small imperfections in the metal surfaces of the chain, creating a rock hard protective and slippery layer. This layer is created on pressure points within the drivetrain, only layer one atom thick to apply superior lubrication exactly where it’s needed. The next generation formulation is designed to stick firmly to the surface of the chain which not only reduces wear, but also increase intervals between lubricant applications to save you money. It’s also completely biodegradable with no nasty solvents, making it kind to you, the environment and your pride and joy.<br><br>The perfect lubricant for riding in any weather, unlike standard lubricants which quickly run off with water or attract dirt and dust. Ideal for road and off-road riding.<br><br>Bottles contain 50ml of lubricant. Bottles are oversized to ensure space for mixing the two complex compounds together when shaken before use.<br><br>How to use your Tungsten All Weather Chain Lube<br><br>Step 1:<br>Degrease chain, chain ring and cassette thoroughly.<br>Step 2:<br>Shake bottle well before application.<br>Step 3:<br>Apply lubricant evenly to all parts of the chain.<br>Step 4:<br>Allow to dry for 5 - 10 minutes before riding.<br>Step 5:<br>Apply as needed for continuous lubrication.<br><br>Important: Avoid contact with braking components. Keep out of reach of children. </p>', array['tru-tension-tungsten-all-weather-lube/1.jpg']::text[], 'new', 0, '2023-01-18'::date, false, false),

  -- ---- bike-care-maintenance · cleaners-degreasers ----
  ('dynamic-badass-bubbles-500ml', 'Dynamic Badass Bubbles 500mL', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3><strong>Create a foam bath for your bike.</strong></h3>

<p><strong><a href="https://dynamicbikecare.com/bike-cleaning-with-dish-soap-not-our-recommendation/" rel="noopener nofollow" target="_blank">Stop using dishwashing soap for bike cleaning!</a></strong></p>

<p>Badass Bubbles is an effective, <strong>high performance and planet-friendly</strong> bike cleaner concentrate. <strong>Mix with water</strong> to create a heavy-duty cleaning lemonade. Developed with and tested by <strong>pro teams riders and mechanics.</strong></p>

<p>Use Badass Bubbles with water to create a powerful foam that allows you to easily and safely clean every part of your bike, including the drivetrain. The concentrated formula is optimized to dissolve the most stubborn dirt. Badass Bubbles is 100% carbon safe and planet-friendly.</p>

<h3><strong>DESCRIPTION</strong></h3>

<p>Powerful planet-friendly bike cleaner concentrate. Mix with water to create a heavy-duty bike cleaning lemonade. Extremely effective, fast action formula. 100% safe for all bikes and bike parts, matt and glossy finishes and the environment.</p>

<h3><strong>APPLICATION</strong></h3>

<p>Mix a splash of Badass Bubbles with water to create a bucket of foamy bike cleaner. Apply on your bike and components with a brush, sponge or glove. Leave for 2-3 minutes. Rinse with water and your bike looks new again!</p>', array['dynamic-badass-bubbles-500ml/1.png', 'dynamic-badass-bubbles-500ml/2.png', 'dynamic-badass-bubbles-500ml/3.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-body-care-dr-dry-300ml', 'Dynamic Body Care Dr. Dry 300ml', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3>DYNAMIC DR. DRY 300ML</h3>

<h3>DESCRIPTION</h3>

<h3><strong>WATERPROOF YOUR CYCLING GEAR.</strong></h3>
<br>
<p>Meet Dr. Dry; a planet friendly spray-on coating that can make any textile waterproof!</p>
<br>
<p>Most coatings create a layer on top of the textile, shutting out rain, but sealing in moisture and heat. The result is an experience close to riding in a trash bag. If you do decide to move around and stretch the fabric, the layer tears, and you get wet anyway.</p>
<br>
<p><strong>We have engineered Dr. Dry to be different.</strong> The innovative formula coats each individual fiber, maintaining the waterproof properties when the textile is stretched. Because air can still move between the fibers, it maintains the full breathability of your gears.</p>
<br>
<p>And don’t worry about it washing off into the environment, it is water based, completely fluorocarbon free and biodegradable.</p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>The only waterproof coating for stretchable clothing.</p>
<br>
<p>✅ Perfect to make your cycling gear, bikepacking bags, tents or other stuff waterproof.<br>✅ Keeps the breathability of your gear fully intact<br>✅ Planet friendly and completely biodegradable</p>
<br>
<p>Soaked bib-shorts suck, so does an awesome jacket that is no longer waterproof. Finding your clean clothes all wet in your bikepacking bag wet is not great either. Meet Dr. Dry; a planet friendly spray-on coating that can make any textile waterproof. No more soggy bib-shorts after a rainy ride. No more leaking tents or wet bikepacking bags.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p>Ensure the surface is clean and not washed with softeners or other additives before treating with Dr. Dry. Apply liberally, make sure the surface is soaked. This ensures all fibers are coated with a protective layer. Providing the best results and increasing durability. Let dry for 24 hours before use. Read more here.</p>
<br>
<p>The effect of the coating will reduce about 20% per washing cycle. To maximize durability, wash with a mild detergent without softeners or other additives. Reapply Dr. Dry after approximately 5 washing cycles, or sooner if needed.</p>', array['dynamic-body-care-dr-dry-300ml/1.webp']::text[], 'new', 1, '2024-04-18'::date, false, false),
  ('dynamic-chain-cleaner', 'Dynamic Chain Cleaner', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3><strong>Very powerful chain cleaning formula.</strong></h3>
<p>The unique formula of Dynamic Chain Cleaner is based on two-components. The cleaner acts as a degreaser that dissolves oil, grease and other contaminant. At the same time, the chain cleaner leaves a preparatory film behind on your drivetrain, which prevents metal parts of completely drying out after cleaning. Your chain will look like new.</p>
<p>Dynamic Chain Cleaner can be used on all parts of your drivetrain including chains, rear cassettes and derailleurs.</p>
<p><strong>Notice! Chain Cleaner cannot be used with our foam triggers such as the Drivetrain Detox trigger. Chain Cleaner affects the triggers.</strong></p>
<h3><strong>DESCRIPTION</strong></h3>
<p>Dynamic Chain Cleaner is a strong degreaser for your bike''s entire drivetrain! It uses a unique two-component formula for optimal results.</p>
<h3><strong>APPLICATION</strong></h3>
<p>For a thorough clean of your chain, use Dynamic Chain Cleaner together with a chain cleaning tool or brush. Frequently cleaning and relubricating your chain will extend the lifetime of your drivetrain.</p>', array['dynamic-chain-cleaner/1.png', 'dynamic-chain-cleaner/2.png', 'dynamic-chain-cleaner/3.png', 'dynamic-chain-cleaner/4.png']::text[], 'new', 2, '2025-12-10'::date, false, false),
  ('dynamic-cleaner-dirt-destroy-foam-spray-400ml', 'Dynamic Cleaner Dirt Destroy Foam Spray 400mL', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3><strong>BESTSELLER. ENDLESS BIKE CLEANING FOAM.</strong></h3>
<p>Dirt Destroy is a universal foam cleaner. It is an essential part of any cyclists toolkit. Regular cleaning protects your bike against wear and prevents high maintenance costs. Added bonus; Dirt Destroy provides a spotless result and makes your bike look like new.</p>
<p><strong>With Dirt Destroy you can effortlessly remove dirt like dust, sand or grass. It can be used on materials like carbon, aluminium, titanium, steel, ruber, chrome and ceramics. Also soft materials and textiles can be cleaned with this foamspray. The material keeps its colour and texture. So it is ideal to clean your bike and your helmet, (over)shoes or gloves.</strong></p>
<h3><strong>DESCRIPTION</strong></h3>
<p>With the Dirt Destroy foam cleaner you can clean your bike and gear in no time! It is a highly popular product for a quick cleaning session. Spray it on and the planet friendly foam will do the work for you. Dirt Destroy removes the dirt and protects your bike and gear. You can safely use it on glossy or matte frames and on materials such as textile, rubber, carbon, aluminium and steel.</p>
<p>✅ A real all-rounder. Suited for your bike and gear.<br>✅ Planet friendly. Dirt Destroy is fully biodegradable.<br>✅ Usable without water. Great for E-bikes and cleaning sessions away from home or on your balcony.</p>
<h3><strong>APPLICATION</strong></h3>
<p>Dirt Destroy is sprayed straight onto your frame, parts or gear from 10 to 15 centimeters away. Cover the item you wish to clean in a even layer of foam and let it sit for around 2 to 3 minutes. After this time you can work it in with a plush microfibre towel or a soft brush. Then rinse with water or wipe dry with a clean, dry microfibre towel.</p>', array['dynamic-cleaner-dirt-destroy-foam-spray-400ml/1.jpg']::text[], 'new', 1, '2025-02-14'::date, false, false),
  ('dynamic-cleaner-fabulous-finish-400ml', 'Dynamic Cleaner Fabulous Finish 400mL', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3>DYNAMIC FABULOUS FINISH 400ML</h3>

<h3>DESCRIPTION</h3>

<h3><strong>EVERYTHING YOU NEED IN 1 BOX.</strong></h3>
<br>
<p>Protect your bike against corrosion and dirt while giving it a shiny finish.<br>Dynamic Fabulous Finish gives your bike a shiny finish and provides great protection against corrosion and dirt.</p>
<br>
<p>Fabulous Finish is a silicon spray that is developed specifically to protect your bike. The water- and dirt repellant spray prevents the buildup of grime and makes it harder for dirt to stick to your frame and bike parts. Fabulous Finish has very good creep properties, making it easy to apply on hard-to-reach locations. Besides on your frame and bike parts, you can use Fabulous Finish on various other surfaces as well. Leather, carbon or plastic parts including pedals, rubber seals and saddles all look better and are protected against the elements with a layer of this bike specific spray. Fabulous Finish offers a shiny finish when polished with a polishing cloth.</p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Dynamic Fabulous Finish gives your bike a shiny finish and provides great protection against corrosion and dirt.</p>
<br>
<p>Fabulous Finish is a silicon spray that is developed specifically to protect your bike. The water- and dirt repellant spray prevents the buildup of grime and makes it harder for dirt to stick to your frame and bike parts.</p>
<br>
<h3>FEATURES</h3>
<br>
<p>100% Carbon Safe</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p><strong>Option A:</strong> Spray directly on your frame with 25cm distance. Make sure to not use it near braking surfaces such as disc brakes or rim flanks as this decreases the braking performance. Use a cloth to polish the Fabulous Finish on your bike. You’ll notice your bike gets a factory fresh finish.<br><br><strong>Option B:</strong> Spray on a cloth first. We recommend using a polishing cloth. Polish the protective spray onto your frame. You might need to re-apply the spray on your cloth.</p>', array['dynamic-cleaner-fabulous-finish-400ml/1.webp']::text[], 'new', 1, '2024-04-18'::date, false, false),
  ('dynamic-cleaner-perfect-prep-400ml', 'Dynamic Cleaner Perfect Prep 400ml', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<p>Ultimate coating preparation spray!</p>

<p>Perfect Prep is a powerful preparation spray for coatings like Secret Surface and other protection products.<br><br>✔️ Evaporates in seconds, leaves no residue.<br>✔️ 100% safe for all materials such as carbon, aluminum, titanium and steel.<br>✔️ Improves the adherence of coatings to any surface, extending durability.<br><br>Preparation is half the battle!</p>

<p>To ensure maximum performance from a coating, the surface must be completely decontaminated. Perfect Prep offers a quick and easy way to create the ideal surface to apply any coating to.</p>
<p>Perfect Prep is a fast evaporating surface cleaner which leaves no residue. The formula is 100% safe to use on all materials, including; carbon, aluminium, steel and titanium.</p>', array['dynamic-cleaner-perfect-prep-400ml/1.jpg']::text[], 'new', 1, '2025-02-14'::date, false, false),
  ('dynamic-cleaner-protective-wax-spray-400ml', 'Dynamic Cleaner Protective Wax Spray 400mL', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3>DYNAMIC PROTECTIVE WAX SPRAY 400ML</h3>

<h3>DESCRIPTION</h3>

<h3><strong>PERFECT FOR MATTE FRAMES AND RIMS.</strong></h3>
<br>
<p>Protect your bike against the elements and give it a satin finish.</p>
<br>
<p>Protect your bike and make it look like new with Dynamic Protective wax!</p>
<br>
<p>Use Dynamic Protective wax as a finishing step after cleaning your bike by polishing the wax on your bike with a dry cloth. The long lasting protective wax offers great protection against corrosion and scratches from sand or salt. It is suitable to use on all metallic and painted surfaces.</p>
<br>
<p>Dynamic Protective wax will provide a high quality satin finish on both glossy and matte frames.</p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Protect your bike and make it look like new with the Protective wax! It provides a satin like finish on glossy and matte frames.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p><strong>Option A:</strong> Spray directly on your frame with 25cm distance. Make sure to not use it near braking surfaces such as disc brakes or rim flanks as this decreases the braking performance. Use a cloth to polish the Protective Wax on your bike. You’ll notice your bike gets a factory fresh finish.</p>
<br>
<p><strong>Option B:</strong> Spray on a cloth first. We recommend using a polishing cloth. Polish the protective spray onto your frame. You might need to re-apply the spray on your cloth.</p>', array['dynamic-cleaner-protective-wax-spray-400ml/1.webp']::text[], 'new', 0, '2024-04-18'::date, false, false),
  ('dynamic-dirt-destroy-foam-spray-400ml', 'Dynamic Dirt Destroy Foam Spray 400mL', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3><strong>Bestseller. Endless bike cleaning foam.</strong></h3>

<p>Dirt Destroy is a universal foam cleaner. It is an essential part of any cyclists toolkit. Regular cleaning protects your bike against wear and prevents high maintenance costs. Added bonus; Dirt Destroy provides a spotless result and makes your bike look like new.</p>

<p><strong>With Dirt Destroy you can effortlessly remove dirt like dust, sand or grass. It can be used on materials like carbon, aluminium, titanium, steel, ruber, chrome and ceramics. Also soft materials and textiles can be cleaned with this foamspray. The material keeps its colour and texture. So it is ideal to clean your bike and your helmet, (over)shoes or gloves.</strong></p>

<h3><strong>DESCRIPTION</strong></h3>

<p>With the Dirt Destroy foam cleaner you can clean your bike and gear in no time! It is a highly popular product for a quick cleaning session. Spray it on and the planet friendly foam will do the work for you. Dirt Destroy removes the dirt and protects your bike and gear. You can safely use it on glossy or matte frames and on materials such as textile, rubber, carbon, aluminium and steel.</p>

<p>✅ A real all-rounder. Suited for your bike and gear.<br>✅ Planet friendly. Dirt Destroy is fully biodegradable.<br>✅ Usable without water. Great for E-bikes and cleaning sessions away from home or on your balcony.</p>

<h3><strong>APPLICATION</strong></h3>

<p>Dirt Destroy is sprayed straight onto your frame, parts or gear from 10 to 15 centimeters away. Cover the item you wish to clean in a even layer of foam and let it sit for around 2 to 3 minutes. After this time you can work it in with a plush microfibre towel or a soft brush. Then rinse with water or wipe dry with a clean, dry microfibre towel.</p>', array['dynamic-dirt-destroy-foam-spray-400ml/1.png', 'dynamic-dirt-destroy-foam-spray-400ml/2.png', 'dynamic-dirt-destroy-foam-spray-400ml/3.png', 'dynamic-dirt-destroy-foam-spray-400ml/4.png', 'dynamic-dirt-destroy-foam-spray-400ml/5.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-drivetrain-detox', 'Dynamic Drivetrain Detox', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3><strong>Beats any degreaser, bio or not.</strong></h3>
<p>This cleaner rapidly removes grime, oil, wax and grease in a safe way. The planet friendly formula can easily be rinsed off with water and is the only cleaner of its kind that has no hazard symbols whatsoever! Drivetrain Detox is designed for heavy-duty cleaning and even works on waterproof lubricants and greases. Spray the formula directly onto your chain, cassette, derailleur and crankset with the trigger head or use Drivetrain Detox with a chain cleaner tool by pouring it from the bottle.</p>
<h3><strong>DESCRIPTION</strong></h3>
<p>The absolute best drivetrain degreasing spray that makes every drivetrain looks as new!</p>
<p>✅ For cleaning your complete drivetrain (chain, cassette, derailleur and crankset)<br>✅ Developed for heavy-duty work; cleans even waterproof lubricants and greases.<br>✅ Biodegradable and safe for your bike</p>
<h3><strong>APPLICATION</strong></h3>
<p>Rinse the drivetrain area with clean water, and spray Drivetrain Detox on your chain, cassette, derailleur and crankset. Let the formula soak for 2-3 minutes before using a brush, cloth or sponge to agitate stubborn contamination. After cleaning the drivetrain area, rinse thoroughly with clean water.</p>
<p><strong>Tip: use in combination with the Drivetrain detailing brush for the best results.</strong></p>
<p>Do not use in direct sunlight or on hot surfaces and be extra cautious with non-factory paintjobs. Store in a cool and dry place and test an inconspicuous area before use. It is safe to use on all materials such as: metal, plastic, carbon, aluminum, steel, titanium, rubber and seals.</p>', array['dynamic-drivetrain-detox/1.png', 'dynamic-drivetrain-detox/2.png', 'dynamic-drivetrain-detox/3.png', 'dynamic-drivetrain-detox/4.png', 'dynamic-drivetrain-detox/5.png']::text[], 'new', 1, '2025-12-10'::date, false, false),
  ('dynamic-protection-secret-surface', 'Dynamic Protection Secret Surface', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3>DESCRIPTION</h3>

<p>Premium Ceramic Hydrophobic Coating</p>
<p>Secret Surface is the perfect ceramic hydrophobic coating gel for bike frames and parts. Protect your bike for 9 months against water, dirt, salt, (micro) scratches and UV radiation. Keeps colours bright and vibrant.<br><br>✔️ Easy DIY application, no mask or gloves needed!<br>✔️ Safe for all materials.<br>✔️ Makes cleaning fast and easy.<br>✔️ Suitable for matte and glossy finishes.<br>✔️ 3 minutes curing time, 9 months protection!<br><br>A coated bike stays cleaner and factory fresh for longer!</p>

<p>Secret Surface is a ceramic, hydrophobic coating for bikes and parts. The coating gel creates a high-performance ceramic layer that guarantees long-lasting protection. It shields your bike against water, dirt, salt, (micro) scratches and UV radiation. It keeps your frame and parts in factory fresh condition and makes cleaning much easier!</p>

<p>The treated surface will have a great looking, clear finish. Secret Surface is 100% safe for all surfaces and materials, such as carbon, aluminum, titanium, steel, paintwork and bike parts.</p>

<p>Application is easy and safe; no masks or gloves needed!</p>

<p>Use Secret Surface together with our preparation spray Perfect Prep and a Microfibre Cloth for the best results.</p>

<p>One bottle of Secret Surface is enough to coat 3 to 5 bikes.</p>', array['dynamic-protection-secret-surface/1.jpg']::text[], 'new', 1, '2025-02-14'::date, false, false),
  ('dynamic-sweatopia-200ml', 'Dynamic Sweatopia 200mL', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3><strong>Indoor workout sweat protection!</strong></h3><br><p>Ultimate protection against sweat and condensation during your indoor rides.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>Sweatopia is the ultimate protection spray for any indoor training set-up like bike trainers and gym equipment. This revolutionary formula with innovative anti-corrosion additives is so effective it even works on surfaces that already show signs of rust. It drives out moisture and leaves a protective layer on your set-up to prevent the damaging effects of sweat and condensation. Sweatopia provides a protective film that lasts up to 100 days.</p><br><h3><strong>APPLICATION</strong></h3><br><p>Shake can before use, apply widely or more precise depending on your needs. Apply directly onto the area that needs to be treated or use a cloth. Wipe away excess residue. Do not spray on braking surfaces or tire treads. The penetrative capacity of the spray works perfectly on nuts and bolts.</p>', array['dynamic-sweatopia-200ml/1.png', 'dynamic-sweatopia-200ml/2.png', 'dynamic-sweatopia-200ml/3.png', 'dynamic-sweatopia-200ml/4.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-turbo-towel', 'Dynamic Turbo Towel', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3><strong>Sometimes bigger is better</strong></h3><br><p>Complete your bike wash routine by drying and polishing your bike with the Turbo Towel, a top-notch luxury microfiber cloth. This incredibly soft towel is the ideal choice for applying products like Protective Wax to your frame, guaranteeing a flawless finish.</p><br><p><strong>Dimensions:</strong> 80 x 40 cm.</p><br><p><strong>Pro tip:</strong> the Turbo Towel is machine washable, so they can be used time and time again.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>The Turbo Towel isn''t just any cloth; it''s a large-scale polishing towel. Its ample size and superior quality make it a great tool for achieving professional-grade results during your bike cleaning activities. Experience the huge water absorption abilities of the Turbo Towel and enjoy easy drying and polishing.</p><br><h3><strong>APPLICATION</strong></h3><br><p>Wrap up your bike washing process by utilizing the Turbo Towel to dry your frame, wheels and other components. The gentle fabric is an excellent choice for applying Protective Wax to your frame, among other uses.</p><br><p>Once you''re done, toss the Turbo Towel into your washing machine for easy cleaning, allowing you to reuse it for your next bike cleaning session.</p>', array['dynamic-turbo-towel/1.png', 'dynamic-turbo-towel/2.png', 'dynamic-turbo-towel/3.png', 'dynamic-turbo-towel/4.png', 'dynamic-turbo-towel/5.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-wax-hyper-wax-240gr-3-bars', 'Dynamic Wax Hyper Wax 240gr +/- (3 Bars)', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3>DESCRIPTION</h3>

<p>The fastest hot wax in the world</p>
<p>Hyper is the fastest hot wax and the first ever developed in collaboration with UCI World Tour teams. Hyper does not contain PFAS or other harmful substances and is the only hot wax in the world that is biodegradable! The cutting-edge performance formula ensures maximum drivetrain efficiency, it performs over 30% better in lab tests compared to traditional hot waxes. You save 6-12 watts with Hyper. Together with some of the top World Tour riders, the formula is optimized to perform not only in closed lab conditions but also in real world conditions.<br><br>✔️ The fastest hot wax<br>✔️ Provides ultimate friction reduction to minimize drivetrain losses<br>✔️ Keeps your drivetrain clean and silent<br>✔️ Cutting edge, biodegradable formula<br>✔️ Co-developed with UCI World Tour teams<br><br>You can use Hyper and Wander Wax together, giving you the best of both worlds.<br><br>The only choice if you put performance first!</p>

<p>Hyper is the fastest hot wax ever tested.</p>

<p>The cutting edge biodegradable formula performs over 30% better in friction measurement labtests. Hyper provides ultimate friction reduction to minimize drivetrain losses. Co-development and testing with the best UCI World Tour teams ensures the wax is optimized for real world racing conditions. The innovative hot wax formula is suitable for on and off-road use in all weather conditions. It keeps your drivetrain running smooth and clean to maximize durability.</p>

<p>Hyper is the ultimate lubricant for pro’s at the front of the pack, and for whoever wants to get to across the finish line first in their local race or to smash their PR in a time trial or triathlon.</p>', array['dynamic-wax-hyper-wax-240gr-3-bars/1.jpg']::text[], 'new', 1, '2025-02-14'::date, false, false),
  ('dynamic-wax-wander-wax-240gr-3-bars', 'Dynamic Wax Wander Wax 240gr +/- (3 Bars)', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '<h3>DESCRIPTION</h3>

<p>Stop worrying, start wandering!</p>
<p>Wander Wax is an extremely durable and super quiet hot wax for all weather conditions. The unique biodegradable formula is highly dirt-repellent and keeps your chain, cassette, and chainrings clean, even during the dirtiest rides. The result is maximum durability for your entire drivetrain.<br><br>✔️ The ultimate endurance hot wax<br>✔️ Extremely long-lasting, suitable for all weather conditions and terrains<br>✔️ Keeps your drivetrain clean and silent<br>✔️ The only biodegradable hot wax available<br>✔️ Developed with UCI World Tour teams<br>✔️ 1 wax treatment lasts 800-1000km<br><br>You can mix Hyper and Wander Wax together, giving you the best of both worlds.<br><br>Wander Wax is the only biodegradable endurance hot wax. It provides a clean, buttery-smooth, and efficient drivetrain while offering ultimate and long-lasting wear protection. Suitable for road, gravel, and MTB trail adventures in all weather conditions.</p>

<p>By using an innovative wax blend with a completely new technology, Wander Wax is hydrophobic and will therefore keep your chain lubricated in even the wettest conditions. The formula is 100% PFAS free, skin safe, saves 6-12 Watts and lasts 800-1000km in optimal conditions.</p>

<p>Wander Wax is the perfect wax for gravel or MTB adventures, (ultra) long road rides or anyone who hates a dirty drivetrain.</p>', array['dynamic-wax-wander-wax-240gr-3-bars/1.jpg']::text[], 'new', 0, '2025-02-14'::date, false, false),
  ('tru-tension-brake-cleaner-aerosol', 'Tru-Tension Brake Cleaner Aerosol', 'tru-tension', 'bike-care-maintenance', 'cleaners-degreasers', '<p>Our specially formulated Brake Cleaner is designed to rapidly remove dirt, dust, carbon and oil build up on all braking components, leaving you with the optimum braking performance for your bike.<br><br>Perfect for Road, MTB and E-Bikes. Massively reduces brake squeal for a better all around ride.<br><br>Our specially formulated Brake Cleaner is designed to rapidly remove dirt, dust, carbon and oil build up on all braking components, leaving you with the optimum braking performance for your bicycle. Its quick dry action allows you just enough time to wipe away any residual dirt for prime stopping power.<br>How to use your Brake Cleaner<br><br>Step 1:<br>Place the bike on a stand of your choice and ensure it is secure.<br>Step 2:<br>Apply Brake Cleaner directly onto brake components.<br>Step 3:<br>Wipe dirt away using a clean cloth or leave to evaporate.<br><br>Always use in a well ventilated area. </p>', array['tru-tension-brake-cleaner-aerosol/1.jpg']::text[], 'new', 0, '2024-08-15'::date, false, false),
  ('tru-tension-drivetrain-cleaner-aerosol', 'Tru-Tension Drivetrain Cleaner Aerosol', 'tru-tension', 'bike-care-maintenance', 'cleaners-degreasers', '<p>PrimeShine Cycle Drivetrain Cleaner is perfectly formulated to lift tough, built up dirt and grime from your drivetrain.<br><br>Perfect for removing grease and oil, it leaves your chain looking new again while protecting against contaminants and corrosion.<br><br>Formulated specifically for cycling, Cycle Drivetrain Cleaner provides you with a perfectly clean drivetrain while being kind to the surfaces and materials of your bike. Choose between the fan nozzle or accurate pin nozzle for those tough to reach places.<br><br>It’s easy to use with minimal effort, giving you the perfect surface to apply a fresh coat of lubricant. Spray and watch the grime drip away in seconds.<br><br>How to use your Cycle Drivetrain Cleaner<br>Step 1:<br>Place the bike on a stand of your choice and ensure it is secure.<br>Step 2:<br>Apply Drivetrain Cleaner directly onto chain, derailleur, chainrings and cassette while rotating the pedals backwards.<br>Step 3:<br>Work any stubborn or built up dirt loose using a brush<br>Step 4:<br>Apply a final coat of Drivetrain Cleaner, before wiping all components clean with a clean rag.<br>Step 5:<br>Lubricate your chain before riding. For best results use a chain lubricant from our BananaSlip range.<br><br>Suitable for use on paints and plastics. Always check for compatibility in a hidden area first.</p>', array['tru-tension-drivetrain-cleaner-aerosol/1.jpg']::text[], 'new', 0, '2024-08-15'::date, false, false),
  ('tru-tension-graphene-bike-detailer', 'Tru-Tension Graphene Bike Detailer', 'tru-tension', 'bike-care-maintenance', 'cleaners-degreasers', '<p>Graphene Bike Detailer by Tru-Tension is a world-leading formulation developed to provide an unrivalled high gloss finish that also acts as a protective layer. A simple “spray and wipe” method that leaves your paintwork glistening.<br><br>Once applied, the cutting edge Graphene blend creates a hydrophobic coating which reduces dirt build-up and makes future cleaning far easier. Graphene helps to protect paintwork by creating a super slippery surface to reduce water and dirt build-up, while the complex blend of waxes provides an unrivalled streak-free shine with a depth of colour.<br><br>How to use your Graphene Bike Detailer<br>Easy to use, simply spray on the painted surface and buff in circles to leave your paintwork looking like new.<br><br>Important: Do not use on braking components.</p>', array['tru-tension-graphene-bike-detailer/1.jpg']::text[], 'new', 0, '2023-01-18'::date, false, false),
  ('tru-tension-monkey-juice-gel-bike-cleaner-1l', 'Tru-Tension Monkey Juice Gel Bike Cleaner 1L', 'tru-tension', 'bike-care-maintenance', 'cleaners-degreasers', '<p>Monkey Juice Gel Bike Cleaner is a specifically formulated degreaser designed to instantly lift and remove stubborn dirt and grime generated from riding.<br><br>Our applied MicroFoam science uses microscopic foam generated by our industry leading formulation to quickly and effortlessly remove dirt in any conditions. The foaming formulation clings to the surface of the bike and penetrates microscopic holes within the dirt, quickly lifting particles away from the surface. All while leaving a dirt repellent finish which slows grime build up. Our formulation is completely Biodegradable and contains no harmful surfactants, salts, chemicals or acids.<br><br>Unlike other cleaners which quickly evaporate or drip off, Monkey Juice is designed to cling to the surface. This means it stays where you’ve sprayed it, maximising the cleaning power. Once rinsed, your bike is left with a micro layer protective coating which reduces dirt build up and makes future cleaning a breeze.<br><br>Monkey Juice is safe to use on all surfaces, including paint, carbon, rubber and brake components.<br><br>How to use your Monkey Juice<br>Step 1:<br>Shake Monkey Juice bottle well.<br>Step 2:<br>Spray Monkey Juice onto dirty surface (most effective with a wet surface).<br>Step 3:<br>Leave the gel foam to get to work for 2-3 minutes.<br>Step 4:<br>Agitate with a brush or sponge where appropriate.<br>Step 5:<br>Rinse thoroughly.<br>Step 6:<br>Ride on<br><br>Perfect for bicycles, motorbikes, cars, boats and caravans.</p>', array['tru-tension-monkey-juice-gel-bike-cleaner-1l/1.jpg']::text[], 'new', 0, '2023-01-18'::date, false, false),

  -- ---- bike-care-maintenance · cleaning-kits ----
  ('dynamic-pain-cave-pack', 'Dynamic  Pain Cave Pack', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaning-kits', '<h3><strong>All in one pack for indoor trainings.</strong></h3><br><p>Prevent your bike and equipment from getting rusty and damaged by using the Sweatopia anti-corrosion spray, wax your chain with the word’s first indoor specific chain wax Watts-Up Wax and clean up afterwards with AftwerWatt equipment cleaner. To make sure you stay hydrated we’ve included a water bottle. From here on it is up to you, no more excuses!</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>Serious indoor training plans? We’ve got you covered! Pain Cave Pack holds everything you need to ensure a carefree indoor training season.</p><br><p><strong>Contents:</strong></p><br><p>1 x Watts-Up Wax<br>1 x AfterWatt<br>1 x <a href="https://dealerportal.prv.co.nz/product-group/23392-dynamic-sweatopia-200ml/category/1563-cleaning-products" rel="noopener nofollow" target="_blank"><strong>Sweatopia</strong></a><br>1 x water bottle 500ml<br>1 x Door sign<br>1x FREE Watt-R</p>', array['dynamic-pain-cave-pack/1.png', 'dynamic-pain-cave-pack/2.png', 'dynamic-pain-cave-pack/3.png', 'dynamic-pain-cave-pack/4.png', 'dynamic-pain-cave-pack/5.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-chain-care-premium-box', 'Dynamic Chain Care Premium Box', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaning-kits', '<h3><strong>Everything you need in 1 box.</strong></h3><br><p>The Dynamic Chain Care Box contains everything you need to maintain your drivetrain. Make sure your drivetrain runs smoothly throughout the year by keeping your chain clean and lubricated. A well-maintained chain has a longer lifespan. Maintain your chain like a pro!</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>The Dynamic Chain Care Box contains everything you need to maintain your drivetrain. Make sure your drivetrain runs smoothly throughout the year by keeping your chain clean and lubricated. A well-maintained chain has a longer lifespan.</p><br><p><strong>Content:</strong></p><br><ul>
<br><li>Drivetrain Detox 500ml</li>
<br><li>Bio all round lube 100ml</li>
<br><li>Chain cleaner tool</li>
<br><li>Chain cleaning brush</li>
<br><li>Microfibre cloth</li>
<br>
</ul><br><h3><strong>APPLICATION</strong></h3><br><p><strong>Step 1: Clean<br></strong>Clean your drivetrain with Dynamic Drivetrain Detox. The unique formula of this degreaser removes oil and wax residue in a planet friendly manner. Fill the Chain cleaning tool with the Drivetrain Detox to easily remove all grease from your chain. With the Claw Brush, you can clean your chain, cassette and pulley wheels.</p><br><p><strong>Step 2: Lubricate</strong><br>After cleaning your chain, it’s time to lubricate your chain with Dynamic Bio all Round Lube. The lubes from Dynamic keep your drive train in optimal condition by reducing friction and protecting against corrosion. Bio all round lube will ensure that your drivetrain runs smoothly throughout the year with its ultradurable, planet friendly, all-weather formula.</p><br><p><strong>Step 3: Remove excess lubricant</strong><br>After lubricating your chain, wipe the excess lube off your chain with the Microfibre Cloth.</p>', array['dynamic-chain-care-premium-box/1.png', 'dynamic-chain-care-premium-box/2.png', 'dynamic-chain-care-premium-box/3.png', 'dynamic-chain-care-premium-box/4.png', 'dynamic-chain-care-premium-box/5.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-pocket-sprocket', 'Dynamic Pocket Sprocket', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaning-kits', '<h3><strong>Ideal for cleaning and transportation.</strong></h3><br><p>The Pocket Sprocket is the first locally produced and 3D printed chain keeper. A must-have in your maintenance kit. Designed to be a convenient and reliable solution for keeping your chain in place during cleaning or transport.</p><br><p>The Dynamic Pocket Sprocket is developed and tested by our pro-teams. The chain keeper is produced locally, thereby limiting transport, and is made from recycled material. By doing so we limit the impact on the environment. Due to the combination of the use of recycled plastic and 3D printing; all Dynamic Pocket Sprockets are unique an may vary in colour.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>3D-printed | Recycled plastic | Suitable for 12 mm thru-axles | Portable | Planet Friendly</p><br><p>Cleaning your drivetrain is a breeze with the Pocket Sprocket. Simply slide it over your 12 mm thru-axle, put the chain in the groove and clean or lubricate your chain, chainrings and derailleur with ease.</p><br><h3><strong>APPLICATION</strong></h3><br><p>Remove the rear wheel from your bike. Insert the thruaxle in the non-driveside of the frame and slide the Pocket Sprocket over it. Route the chain in the groove of the pocket Sprocket and tighten the thruaxel into the driveside of the frame, like you would when installing your wheel. Now you can clean your drivetrain with ease or safely transport your bike.</p>', array['dynamic-pocket-sprocket/1.png', 'dynamic-pocket-sprocket/2.png', 'dynamic-pocket-sprocket/3.png', 'dynamic-pocket-sprocket/4.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-speed-potion-pack', 'Dynamic Speed Potion Pack', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaning-kits', '<h3><strong>Everything to clean + wax your chain.</strong></h3><br><p>Professional chain wax set with Speed Potion Wax and Drivetrain Detox:</p><br><p><strong>Speed Potion Wax<br></strong>Speed Potion Wax is the ultimate bicycle chain coating. A top-grade wax composite containing over 17% friction reducing additives in a unique formula that makes you faster. Speed Potion Wax is extremely durable, provides maximum wear protection and keeps your chain clean.</p><br><p><strong>Drivetrain Detox<br></strong>Drivetrain Detox is a revolutionary, water soluble and biodegradable cleaner for your complete drivetrain. It’s designed for heavy duty cleaning. The cleaner rapidly removes grime, oil, wax and grease in a safe way. Ideal to prepare or clean your chain when using a chain wax or when switching between lubes.</p><br><p><strong>Drivetrain detailing brush<br></strong>Cleaning your drivetrain is an easy task with the Drivetrain detailing brush! The small size makes it a suitable tool to clean the narrowest areas of your drivetrain. The tough nylon bristles are ideal to remove all grease and grime from your chain, cassette and pulley wheels.</p><br><p><strong>Microfibre cloth<br></strong>The perfect cleaning cloth for all cleaning purposes: the Microfibre cloth. Use this cloth to clean and dry your drivetrain.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>Professional wax kit with everything you’ll need to prepare your chain for the application of Speed Potion Wax.<br><br>What’s inside the box?<br><br>1 x <a href="https://dealerportal.prv.co.nz/product-group/23437-dynamic-drivetrain-detox/category/1563-cleaning-products" rel="noopener nofollow" target="_blank"><strong>Drivetrain Detox (500ml)</strong></a><br>1 x <a href="https://dealerportal.prv.co.nz/product-group/23388-dynamic-speed-potion-wax-100ml/category/1565-lubricants" rel="noopener nofollow" target="_blank"><strong>Speed Potion Wax (100ml)</strong></a><br>1 x Drivetrain Detailing Brush<br>1 x Microfibre Cloth</p><br><p>Speed Potion Wax is the winner of the Bike Motion Award 2021 in the Improve Performance category.</p><br><h3><strong>APPLICATION</strong></h3><br><p>Completely degrease your chain with the Drivetrain Detox to ensure good adhesion. Even when the chain is new, there is a factory lubricant on it which makes it very hard for a wax product to stick to the metal surface. Rinse the chain well after using the degreaser and let it dry out completely. Shake the bottle of Slick wax before use, the oxygen in the bottle can cause some wax to harden in the nozzle of the bottle, and it is best to make sure this is mixed well. Always apply Speed Potion Wax at least 2 hours before riding, preferably longer (24 hours). This way the wax is able to solidify completely. Adhesion will be optimal after 24 hours, resulting in the highest durability of the coating.</p>', array['dynamic-speed-potion-pack/1.png', 'dynamic-speed-potion-pack/2.png', 'dynamic-speed-potion-pack/3.png', 'dynamic-speed-potion-pack/4.png', 'dynamic-speed-potion-pack/5.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('dynamic-super-slick-set', 'Dynamic Super Slick Set', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaning-kits', '<h3><strong>Everything to clean + wax your chain.</strong></h3><br><p>Box with everything you’ll need to prepare your chain for the application of Slick Wax:</p><br><p><strong>Slick Wax<br></strong>Slick Wax is a chain wax that lasts super long, keeps your chain clean, dry and lets you enjoy a smooth and silent drivetrain. Easy to apply and maintain. Developed for all cycling disciplines, road, gravel and MTB, all weather conditions ánd it’s biodegradable.</p><br><p><strong>Drivetrain Detox<br></strong>Drivetrain Detox is a revolutionary, water soluble and biodegradable cleaner for your complete drivetrain. It’s designed for heavy duty cleaning. The cleaner rapidly removes grime, oil, wax and grease in a safe way. Ideal to prepare or clean your chain when using a chain wax or when switching between lubes.</p><br><p><strong>Drivetrain detailing brush<br></strong>Cleaning your drivetrain is an easy task with the Drivetrain detailing brush! The small size makes it a suitable tool to clean the narrowest areas of your drivetrain. The tough nylon bristles are ideal to remove all grease and grime from your chain, cassette and pulley wheels.</p><br><p><strong>Microfibre cloth<br></strong>The perfect cleaning cloth for all cleaning purposes: the Microfibre cloth. Use this cloth to clean and dry your drivetrain.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>Box with everything you’ll need to prepare your chain for the application of Slick Wax. Go smooth and far with this planet friendly wax.</p><br><p>What’s inside the box?</p><br><p>1 x <a href="https://dealerportal.prv.co.nz/product-group/23437-dynamic-drivetrain-detox/category/1563-cleaning-products" rel="noopener nofollow" target="_blank"><strong>Drivetrain Detox (500ml)</strong></a><br>1 x <a href="https://dealerportal.prv.co.nz/product-group/23389-dynamic-slick-wax-100ml/category/1565-lubricants" rel="noopener nofollow" target="_blank"><strong>Slick Wax (100ml)</strong></a><br>1 x Drivetrain Detailing Brush<br>1 x Microfibre Cloth</p><br><h3><strong>APPLICATION</strong></h3><br><p>Completely degrease your chain with the Drivetrain Detox to ensure good adhesion. Even when the chain is new, there is a factory lubricant on it which makes it very hard for a wax product to stick to the metal surface. Rinse the chain well after using the degreaser and let it dry out completely. Shake the bottle of Slick wax before use, the oxygen in the bottle can cause some wax to harden in the nozzle of the bottle, and it is best to make sure this is mixed well. Always apply Slick Wax at least 2 hours before riding, preferably longer (24 hours). This way the wax is able to solidify completely. Adhesion will be optimal after 24 hours, resulting in the highest durability of the coating.</p>', array['dynamic-super-slick-set/1.png', 'dynamic-super-slick-set/2.png', 'dynamic-super-slick-set/3.png', 'dynamic-super-slick-set/4.png', 'dynamic-super-slick-set/5.png']::text[], 'new', 1, '2024-05-15'::date, false, false),
  ('juice-lubes-dirty-little-scrubber-chain-cleaner', 'JUICE LUBES - DIRTY LITTLE SCRUBBER CHAIN CLEANER', 'juice-lubes', 'bike-care-maintenance', 'cleaning-kits', '<p>The Dirty Little Scrubber goes heavy on clean chains and crisp shifts and light on mess, spills and faff. Slap it on your chain whenever you wash your whip and watch your drivetrain transform from ghastly to glorious in a few spins of the cranks.</p>
<p>The Scrubber will keep your shifts slick and will help guarantee your bits last longer, meaning more cash for after-work beers and less “is she dead?” calls to your local bike shop.</p>
<ul>
<li>Suitable for use on all types of bike - Road, Cyclocross, MTB, Commuter</li>
<li>Fast, clean, and easy to use</li>
<li>Tough Nylon brushes</li>
<li>No-hands use when setup with a straight chain line</li>
<li>Minimises cleaning product use – only 20ml of Dirt Juice Boss chain cleaner per fill!</li>
<li>Removes grease, grime and oil in seconds</li>
<li>Easy to dismantle and clean after use</li>
<li>Makes drivetrain last longer</li>
<li>Minimises mess</li>
<li>Reduces cleaning time</li>
</ul>', array['juice-lubes-dirty-little-scrubber-chain-cleaner/1.jpg', 'juice-lubes-dirty-little-scrubber-chain-cleaner/2.jpg', 'juice-lubes-dirty-little-scrubber-chain-cleaner/3.jpg', 'juice-lubes-dirty-little-scrubber-chain-cleaner/4.jpg', 'juice-lubes-dirty-little-scrubber-chain-cleaner/5.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),
  ('juice-lubes-scrub-buff-pack', 'JUICE LUBES - SCRUB & BUFF PACK', 'juice-lubes', 'bike-care-maintenance', 'cleaning-kits', '<p>The Scrub and Buff pack includes everything you need to get your bike cleaned, lubed, polished and ready for the trail or the road.</p>
<p>Pack contains:</p>
<ul>
<li>1 x Dirt Juice Super – Degreaser</li>
<li>1 x Dirt Juice – Cleaner</li>
<li>1 x Frame Juice Polish &amp; Protector Spray</li>
<li>1 x Viking Juice Chain Lube</li>
<li>1 x Dirty Little Scrubber Chain Cleaner</li>
</ul>', array['juice-lubes-scrub-buff-pack/1.jpg', 'juice-lubes-scrub-buff-pack/2.jpg', 'juice-lubes-scrub-buff-pack/3.jpg', 'juice-lubes-scrub-buff-pack/4.jpg', 'juice-lubes-scrub-buff-pack/5.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),

  -- ---- bike-care-maintenance · grease-assembly-compounds ----
  ('chris-king-blue-grease', 'CHRIS KING - BLUE GREASE', 'chris-king', 'bike-care-maintenance', 'grease-assembly-compounds', '<p>Chris King Blue Grease is a resilient lubricant optimized for headsets and as a general assembly compound. Viscous and tacky, Blue Grease is an ideal headset bearing lubricant and assembly compound, engineered to withstand extreme riding conditions. Compatible with steel and ceramic bearings.</p>', array['chris-king-blue-grease/1.jpg', 'chris-king-blue-grease/2.jpg', 'chris-king-blue-grease/3.jpg']::text[], 'new', 2, '2022-06-14'::date, false, false),
  ('chris-king-silver-grease', 'CHRIS KING - SILVER GREASE', 'chris-king', 'bike-care-maintenance', 'grease-assembly-compounds', '<p>Chris King Silver Grease is a nano-particle lubricant optimized for hub and bottom bracket bearings. Designed for use as a high performance hub and bottom bracket bearing lubricant. This nano-particle lubricant is engineered to provide extremely low drag while still providing excellent weather resistance. Compatible with steel and ceramic bearings.</p>', array['chris-king-silver-grease/1.jpg', 'chris-king-silver-grease/2.jpg', 'chris-king-silver-grease/3.jpg']::text[], 'new', 0, '2022-06-14'::date, false, false),
  ('dynamic-allround-grease-150g', 'Dynamic Allround Grease 150g', 'dynamic-bike-care', 'bike-care-maintenance', 'grease-assembly-compounds', '<h3><strong>All purpose grease for your bike.</strong></h3><br><p>Use All round grease for all assembly and maintenance work on your bike.</p><br><p>This allround bike grease offers high protection against corrosion. Allround grease is effective against friction and wear between bicycle parts. Due to its lubricating and protecting features it is ideally suited as assembly and bearing grease.</p><br><h3><strong>DESCRIPTION</strong></h3><br><p>Use Dynamic All round grease for assembly and maintenance work on your bike. This allround bike grease offers high protection against corrosion. Allround grease is effective against friction and wear between bicycle parts. Due to its lubricating and protecting features it is ideally suited as assembly and bearing grease.</p><br><h3><strong>APPLICATION</strong></h3><br><p>Apply some Allround Grease to threaded fastneres like pedals, bolts and screws before assembly. Can also be applied to bearing seats or to lubricate bearings like in headsets, bottom brackets or wheels.</p>', array['dynamic-allround-grease-150g/1.png', 'dynamic-allround-grease-150g/2.png']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('dynamic-allround-grease-premium-150g', 'Dynamic Allround Grease Premium 150g', 'dynamic-bike-care', 'bike-care-maintenance', 'grease-assembly-compounds', '<h3><strong>All purpose premium grease for your bike.</strong></h3>

<p>Premium grease for all types of assembly and maintenance work on your bike.</p>

<p>Use the Dynamic All round grease premium for high stressed joints on the bike that must withstand extreme loads and weather conditions. It is suitable for all types of bearings, bottom brackets and screw threads.</p>

<p>Dynamic All round grease premium is a strongly adhesive and resin-free grease. It distinguishes itself from other greases by its very low friction coefficient and high protection against corrosion. Therefore it is ideal as an assembly and contact grease.</p>

<h3><strong>DESCRIPTION</strong></h3>

<p>Use the premium Dynamic All round grease for high stressed joints on the bike that must withstand extreme loads and weather conditions. It is suitable for all types of bearings, bottom brackets and screw threads.</p>

<h3><strong>APPLICATION</strong></h3>

<p>Apply some Allround Grease Premium to threaded fasteners like pedals, bolts and screws before assembly. Can also be applied to bearing seats or to lubricate bearings like headsets, bottom brackets or wheels.</p>', array['dynamic-allround-grease-premium-150g/1.png', 'dynamic-allround-grease-premium-150g/2.png', 'dynamic-allround-grease-premium-150g/3.png', 'dynamic-allround-grease-premium-150g/4.png', 'dynamic-allround-grease-premium-150g/5.png']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('dynamic-carbon-assembly-paste-80g', 'Dynamic Carbon Assembly Paste 80g', 'dynamic-bike-care', 'bike-care-maintenance', 'grease-assembly-compounds', '<h3><strong>30% less clamping needed, no cracking.</strong></h3>

<p>Dynamic Carbon assembly paste helps with assembling high quality carbon and aluminum bike parts by preventing the components from slipping or sliding and protecting them against corrosion. This paste lowers the required clamping force by up to 30% which prevents over-tightening and damage to the components.</p>

<p>Dynamic Carbon assembly paste has a strong inhibitory effect without seizing or being sticky. By using this paste with the added micropearls, sensitive carbon components are less stressed and cracking noises are reduced. The assembly paste also provides high protection against corrosion and is very resistant to water. These features make it the favourite assembly paste of several pro cycling teams.</p>

<h3><strong>DESCRIPTION</strong></h3>

<p>Carbon assembly paste helps with assembling high quality carbon and aluminum bike parts by preventing the components from slipping or sliding. This paste lowers the clamping force up to 30% by preventing over tightening which could damage the components.</p>

<h3>FEATURES</h3>

<p>This high performance carbon assembly paste is 100% safe to use on carbon and aluminum parts such as seat posts and handlebar stems. Use Carbon Assembly Paste to prevent your seat post from slipping.</p>

<h3><strong>APPLICATION</strong></h3>

<p>Apply some Carbon Assembly Paste to the carbon or aluminium parts you wish to assemble, like the seat post, stem and handlebars.</p>', array['dynamic-carbon-assembly-paste-80g/1.png', 'dynamic-carbon-assembly-paste-80g/2.png', 'dynamic-carbon-assembly-paste-80g/3.png']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('dynamic-fork-grease-mtb-150g', 'Dynamic Fork Grease MTB 150g', 'dynamic-bike-care', 'bike-care-maintenance', 'grease-assembly-compounds', '<h3><strong>Ideal for seals in stanchions.</strong></h3>

<p>Fork grease to protect the suspension fork and dampers of your mountainbike.</p>

<p>Dynamic Fork grease is developed to protect the suspension fork and dampers of your mountainbike. It is developed to offer ultimate protection in offroad conditions.</p>

<p>This fork grease reduces the static friction and helps to improve the performance of your suspension fork and dampers. It protects and maintains seals, guides and elastomers. The fork grease is dirt and moisture repellent. This MTB grease is also suitable for protecting and maintaining your dropper post.</p>

<p>Dynamic Fork grease is 100% carbon safe and lithium free!</p>

<h3><strong>DESCRIPTION</strong></h3>

<p>Dynamic Fork grease is developed to protect the suspension fork and dampers of your mountainbike. It is developed to offer ultimate protection in offroad conditions.</p>

<p>This fork grease reduces the static friction and helps to improve the performance of your suspension fork and dampers. It protects and maintains seals, guides and elastomers. The fork grease is dirt and moisture repellent. This MTB grease is suitable for protecting and maintaining your dropper post.</p>', array['dynamic-fork-grease-mtb-150g/1.png', 'dynamic-fork-grease-mtb-150g/2.png', 'dynamic-fork-grease-mtb-150g/3.png']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('dynamic-galactic-grease-200ml', 'Dynamic Galactic Grease 200mL', 'dynamic-bike-care', 'bike-care-maintenance', 'grease-assembly-compounds', '<h3><strong>(Stellar) bio all-purpose grease!</strong></h3>

<p>Galactic Grease is a <strong>planet-friendly and biodegradable grease from sustainable resources</strong>. Suitable for all purposes on and around bikes. This grease can be used for assembly, where it <strong>protects against (fretting) corrosion and wear</strong>. Also suitable to grease bearings or other moving parts. Galactic Grease is <strong>extremely water repellant and has a stable viscosity that ensures long service intervals</strong>.</p>

<p>Bio All-round Grease – 100% Carbon Safe </p>

<p>100% safe to use on all materials such as carbon, ceramic, metal, aluminum, titanium, steel, rubber and plastic. Galactic Grease is perfect to use on bearings, pivots, suspension parts, all threaded connections and high-end bicycle components.</p>

<h3><strong>DESCRIPTION</strong></h3>

<p>Bio All-round Grease – 100% Carbon Safe</p>

<p>Galactic Grease is a planet-friendly, biodegradable grease from sustainable resources. Suitable for all purposes on and around bikes. This grease can be used for assembly, where it protects against (fretting) corrosion and wear. Also suitable to grease bearings or other moving parts. Galactic Grease is extremely water repellant and has a stable viscosity that ensures long service intervals.</p>

<h3><strong>APPLICATION</strong></h3>

<p>Apply some Galactic Grease to threaded fasteners like pedals, bolts and screws before assembly. Can also be applied to bearing seats or to lubricate bearings like headsets, bottom brackets or wheels.</p>', array['dynamic-galactic-grease-200ml/1.png', 'dynamic-galactic-grease-200ml/2.png', 'dynamic-galactic-grease-200ml/3.png']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('dynamic-grease-assembly-paste-pro-150g', 'Dynamic Grease Assembly Paste Pro 150g', 'dynamic-bike-care', 'bike-care-maintenance', 'grease-assembly-compounds', '<h3>DYNAMIC ASSEMBLY PASTE PRO 150G</h3>

<h3>DESCRIPTION</h3>

<h3><strong>THE ONLY ASSEMBLY PASTE YOU NEED.</strong></h3>
<br>
<p>Premium assembly paste that provides superior adherence and protection.<br>This is the ultimate Assembly Paste, used by the pro''s!</p>
<br>
<p>This premium assembly paste provides superior adherence as well as corrosion- and wear protection properties that are second to none.</p>
<br>
<p>Dynamic Assembly Paste Pro creates a lubricating nano film between materials that protects against fretting corrosion and provides extreme surface protection.<br>It has the special property of hardening over time when exposed to oxygen. This means that it is easy to apply when fresh out of the packaging, but then hardens to a real paste and stays in place. This ensures it does not wash out with water, or flow out with heat.</p>
<br>
<p>Assembly Paste Pro prevents cracking noises in bottom brackets, seat posts, stems and handlebars. It is perfect application on carbon, ceramic, metal, aluminum, titanium, steel, rubber and plastic surfaces. On bearings, pivots, suspension components and all threaded connections.</p>
<br>
<p>This high-end grease is the pro mechanics ‘go to’ when assembling bike parts. Dynamic Assembly Paste Pro is 100% carbon safe and lithium free!</p>
<br>
<p>If you find a thin layer of oil on top of the assembly paste, simply stir it well. This is not an issue and can happen if the assembly paste has not been used for a while.</p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Assembly Paste for pro’s! This premium assembly paste provides superior adherence as well as corrosion- and wear protection properties that are second to none.</p>
<br>
<p>Dynamic Assembly Paste Pro creates a lubricating nano film between materials that protects against fretting corrosion and provides extreme surface protection.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p>Apply some Assembly Paste Pro to threaded fasteners like pedals, bolts and screws before assembly. Can also be applied to bearing seats when using sealed bearings like in headsets or bottom brackets.</p>', array['dynamic-grease-assembly-paste-pro-150g/1.webp']::text[], 'new', 0, '2024-04-18'::date, false, false),
  ('enduro-grease-max', 'Enduro Grease MAX', 'enduro', 'bike-care-maintenance', 'grease-assembly-compounds', '<p>New for 2020 is a complete line of grease syringes for servicing bearings. This is the exact grease we use in each series of our bearings. MAX grease is designed for full complement or MAX series bearings. This formula is highly resistant to washout, and offers maximum adhesion. </p>', array['enduro-grease-max/1.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('enduro-grease-performance', 'Enduro Grease Performance', 'enduro', 'bike-care-maintenance', 'grease-assembly-compounds', '<p>New for 2020 is a complete line of grease syringes for servicing bearings. This is the exact grease we use in each series of our bearings. Our fast rolling, waterproof Performance grease offers extended-life performance in a waterproof formula. The Performance Grease has excellent protection against rust and corrosion. </p>', array['enduro-grease-performance/1.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('enduro-grease-standard', 'Enduro Grease Standard', 'mr-rider', 'bike-care-maintenance', 'grease-assembly-compounds', '<p>New for 2020 is a complete line of grease syringes for servicing bearings. This is the exact grease we use in each series of our bearings. This grease only runs better and smoother with time and is highly resistant to being washed out. It is engineered to stick to the balls and continually be pulled back into the ball path where it is needed. </p>', array['enduro-grease-standard/1.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('juice-lubes-anti-seize-assembly-compound', 'JUICE LUBES - ANTI-SEIZE ASSEMBLY COMPOUND', 'juice-lubes', 'bike-care-maintenance', 'grease-assembly-compounds', '<p>AAS Juice is the paste that’ll keep your bits moving freely and make workshop time a breeze. It’s a top quality, aluminium assembly paste that fights off cold welding, corrosion and seizing, stops annoying squeaks and squeals and does away with those swearing at your pedal spanner moments.</p>
<p>Blob a bit of AAS Juice on when you build or maintain your bike and you’ll guarantee less cursing next time you need to remove a component from your bike. It works great on bottom brackets, pedals, headsets and anywhere with metal to metal contact.</p>
<ul>
<li>Aluminium Anti Seize is a high-quality anti seize paste for use in all metal to metal situations where the avoidance of cold welding, galling and seizure is required</li>
<li>Suitable for use on all types of bike - Road, Cyclocross, MTB, Commuter</li>
<li>Makes assembly of threaded items smoother and easier</li>
<li>Allows for easy future adjustment or deconstruction for maintenance</li>
<li>General good bike assembly prep paste</li>
<li>Ensures a good, squeak free interface between parts</li>
<li>Allows for more accurate torque levels when tightening bolts</li>
<li>Reduces the risk of over-tightening</li>
</ul>', array['juice-lubes-anti-seize-assembly-compound/1.jpg', 'juice-lubes-anti-seize-assembly-compound/2.jpg', 'juice-lubes-anti-seize-assembly-compound/3.jpg', 'juice-lubes-anti-seize-assembly-compound/4.jpg', 'juice-lubes-anti-seize-assembly-compound/5.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),
  ('juice-lubes-bearing-juice-waterproof-grease', 'JUICE LUBES - BEARING JUICE WATERPROOF GREASE', 'juice-lubes', 'bike-care-maintenance', 'grease-assembly-compounds', '<p>Bearing Juice is a tough-as-nails grease that’s designed specifically for bicycle use. It’s for all your bits with bearings – such as headsets, bottom brackets and hubs.</p>
<p>When your bearings start spinning, BJ will kick in and release its magical lubricating juice whilst also battling moisture and keep your bike running sweeter for longer. It’ll fight back moisture, it’s tough against jet washing and it’ll guarantee more time on the trails and less time in the workshop.</p>
<ul>
<li>Suitable for use on all types of bike - Road, Cyclocross, MTB, Commuter</li>
<li>Specifically formulated to offer extreme water wash out resistance and to prevent water ingress to bearings</li>
<li>A high density adhesive grease with excellent sealing properties</li>
<li>Reduces friction</li>
<li>Reduces wear</li>
<li>Excellent corrosion protection due to specifically selected additives</li>
<li>Extreme pressure lubricity additives</li>
<li>Designed specifically for low speed applications, hubs, BB’s, Headests, Pivot Bearings, Pedals</li>
<li>Extensively tested in the marine environment to ensure the highest quality and best possible performance</li>
</ul>', array['juice-lubes-bearing-juice-waterproof-grease/1.jpg', 'juice-lubes-bearing-juice-waterproof-grease/2.jpg', 'juice-lubes-bearing-juice-waterproof-grease/3.jpg', 'juice-lubes-bearing-juice-waterproof-grease/4.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),
  ('juice-lubes-carbon-juice-friction-assembly-paste', 'JUICE LUBES - CARBON JUICE FRICTION ASSEMBLY PASTE', 'juice-lubes', 'bike-care-maintenance', 'grease-assembly-compounds', '<p>Carbon juice provides a non-slip helping-hand for any of your carbon components and helps keep seat-posts, bars and other bits in place. It’ll help guard against slipping and avoid the risk of you over tightening your clamps and breaking your expensive carbon bits.</p>
<p>Carbon Juice is easy peasy to use. Just blob a thin layer on any of your carbon components where they come into contact with another material. Tighten to the manufacturer’s settings and away you go on your search for two-wheeled glory.</p>
<ul>
<li>Suitable for use on all types of bike - Road, Cyclocross, MTB, Commuter</li>
<li>Increases grip of carbon-to-carbon or carbon-to-metal parts to prevent slipping during use</li>
<li>Highly pliable beads deform and grip carbon when under pressure</li>
<li>Allows correct torque pressures to be used on delicate carbon components</li>
<li>Prevents the need for over tightening</li>
<li>Ensures safe installation of components that won’t slip during use</li>
<li>Clear white beaded gel prevents stained fingers during application</li>
<li>Gel like consistency for easy, consistent coverage during application</li>
</ul>', array['juice-lubes-carbon-juice-friction-assembly-paste/1.jpg', 'juice-lubes-carbon-juice-friction-assembly-paste/2.jpg', 'juice-lubes-carbon-juice-friction-assembly-paste/3.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),

  -- ---- bike-care-maintenance · pumps-inflation ----
  ('air-tool-comp-floor-pump', 'Air Tool Comp Floor Pump', 'specialized', 'bike-care-maintenance', 'pumps-inflation', 'Everybody needs a floor pump in their home, but not just any floor pump will do. You need something that''s dependable, versatile, and accurate, like our new Air Tool Comp. It checks all the boxes with a dual-stage pressure gauge that delivers the low-pressure accuracy that your mountain bike tires require, while also matching the high-pressure needs of your road and gravel tires. At 365cc-per-stroke, it might not match the MTB floor pump, but this one fills big tires fast and makes for a great all-arounder that’ll get you out the door and riding—fast.&lt;/p&gt;

<ul>
<li>Dual-scale 3" (76mm) oversized gauge has 0-30 PSI (2.2bar) zone for mountain tires, and 30-120 PSI (8.2bar) zone for road tires.</li>
<li>SwitchHitter II head automatically switches between Schrader and Presta valves.</li>
<li>Steel base and aluminum barrel construction.</li>
<li>Ergonomic wing handle is overmolded for comfort.</li>
<li>Includes spare rubber seal for head.</li>
<li>Max pressure: 120 PSI (8.3bar)</li>
<li>Volume-per-stroke: 365cc</li>
</ul>', array['air-tool-comp-floor-pump/1.jpg', 'air-tool-comp-floor-pump/2.jpg', 'air-tool-comp-floor-pump/3.jpg', 'air-tool-comp-floor-pump/4.jpg', 'air-tool-comp-floor-pump/5.png']::text[], 'new', 1, '2026-06-03'::date, false, false),
  ('air-tool-flex-pump-1', 'Air Tool Flex Pump', 'specialized', 'bike-care-maintenance', 'pumps-inflation', 'The Air Tool Flex Pump uses an inverted camber design that allows for quick fill-up on mountain tires, yet it can still reach the high-pressures needed for road tires.

<ul>
<li>Twin Schrader and Presta thread on T-head.</li>
<li>Inverted barrel design allows for efficient high volume and high-pressure pumping.</li>
<li>Lightweight and compact hose with built-in flex to prevent excess stress on valve stems.</li>
<li>Water bottle boss mount included.</li>
<li>Max pressure: 100 PSI (6.9bar)</li>
<li>Volume-per-stroke: 30cc</li>
</ul>', array['air-tool-flex-pump-1/1.jpg', 'air-tool-flex-pump-1/2.png']::text[], 'new', 1, '2026-06-03'::date, false, false),
  ('air-tool-mtb-floor-pump', 'Air Tool MTB Floor Pump', 'specialized', 'bike-care-maintenance', 'pumps-inflation', 'Back by popular demand, the Air Tool MTB Floor Pump is better than ever. Designed for low pressure, high volume tires, it provides precise pressure to ensure that your tires are set up for whatever the trail throws at you.

<ul>
<li>Oversized 3" (76mm) gauge has 0-40 PSI range for maximum resolution when filling large tires.</li>
<li>Massive 508cc volume aluminum barrel pushes enough air to seat tubeless tires.</li>
<li>Ergonomic Wing handle with pressure relief valve.</li>
<li>Auto selecting SwitchHitter II technology.</li>
<li>Includes spare rubber seal for head.</li>
<li>Max pressure: 40 PSI (2.7bar)</li>
<li>Volume-per-stroke: 508cc</li>
</ul>', array['air-tool-mtb-floor-pump/1.jpg', 'air-tool-mtb-floor-pump/2.jpg', 'air-tool-mtb-floor-pump/3.jpg', 'air-tool-mtb-floor-pump/4.jpg', 'air-tool-mtb-floor-pump/5.jpg']::text[], 'new', 1, '2026-06-03'::date, false, false),
  ('air-tool-road-pump-1', 'Air Tool Road Pump', 'specialized', 'bike-care-maintenance', 'pumps-inflation', 'The Air Tool Road is a minimalistic frame pump that provides efficiency and reliability for high-pressure road tires.

<ul>
<li>Inverted dual chamber design is smaller yet moves 25% more air per stroke when compared to our previous design, reducing pumping time by up to two minutes.</li>
<li>Presta-only head with updated dust cover prevents pump from opening due to vibration.</li>
<li>Machined outer barrel for extra grip while pumping.</li>
<li>All-aluminum inner and outer chamber for durable performance.</li>
<li>Water bottle boss frame mounting bracket included.</li>
<li>Max pressure: 100 PSI (6.9 bar)</li>
<li>Volume-per-stroke: 60cc</li>
</ul>', array['air-tool-road-pump-1/1.jpg', 'air-tool-road-pump-1/2.png']::text[], 'new', 1, '2026-06-03'::date, false, false),
  ('air-tool-sport-floor-pump', 'Air Tool Sport Floor Pump', 'specialized', 'bike-care-maintenance', 'pumps-inflation', 'This economical, all-metal Air Tool Sport SwitchHitter II Floor Pump comes with all of the essentials for easy inflation and an accurate reading.

<ul>
<li>2.0" (50mm) gauge has 0-160 PSI (0-11 bar) range and +/-3% accuracy.</li>
<li>SwitchHitter head automatically switches between Schrader and Presta valves.</li>
<li>Ergonomic wing handle.</li>
<li>Steel construction on base and barrel.</li>
<li>42" (106cm) hose.</li>
<li>Replacement parts available for rebuild.</li>
<li>Volume-per-stroke: 326cc</li>
</ul>', array['air-tool-sport-floor-pump/1.png']::text[], 'new', 1, '2026-06-03'::date, false, false),
  ('air-tool-switch-comp-pump-1', 'Air Tool Switch Comp Pump', 'specialized', 'bike-care-maintenance', 'pumps-inflation', 'This durable frame pump with SwitchHitter head automatically adjusts for Schrader or Presta valve tubes, plus it shows pressure on a rotatable gauge.

<ul>
<li>SwitchHitter head automatically switches between Schrader and Presta valves.</li>
<li>Gauge body rotates for easy viewing.</li>
<li>Durable plastic barrel with aluminum shaft to reduce flex and improve efficiency.</li>
<li>Plunger locks to body chamber with a simple twist for secure storage.</li>
<li>Water bottle boss frame mounting bracket included.</li>
<li>Max pressure: 80 PSI (5.5bar)</li>
<li>Volume-per-stroke: 48cc</li>
</ul>', array['air-tool-switch-comp-pump-1/1.jpg', 'air-tool-switch-comp-pump-1/2.png']::text[], 'new', 1, '2026-06-03'::date, false, false),
  ('air-tool-switch-sport-pump', 'Air Tool Switch Sport Pump', 'specialized', 'bike-care-maintenance', 'pumps-inflation', 'This durable frame pump with SwitchHitter head automatically adjusts for Schrader or Presta valve tubes.

<ul>
<li>SwitchHitter head works on Schrader or Presta valves with no disassembly.</li>
<li>Plunger locks to body chamber with a simple twist for secure storage.</li>
<li>Water bottle boss mount included.</li>
<li>Max pressure: 120 PSI (8.3bar)</li>
<li>Volume-per-stroke: 48cc</li>
</ul>', array['air-tool-switch-sport-pump/1.png']::text[], 'new', 0, '2026-06-03'::date, false, false),
  ('cpro2-trigger-1', 'CPRO2 Trigger', 'specialized', 'bike-care-maintenance', 'pumps-inflation', 'A lightweight and compact quick-fill CO2 inflation device with controlled distribution.

<ul>
<li>Compression trigger release for controlled release of CO2.</li>
<li>Reliable and compact design is easy to fit in bags or pockets.</li>
<li>Accommodates threaded 16g and 25g cartridges.</li>
<li>One 16g CO2 cartridge included.</li>
<li>All USA orders containing CO2 cartridges will ship FedEx Ground.</li>
</ul>', array['cpro2-trigger-1/1.png']::text[], 'new', 1, '2026-06-03'::date, false, false),
  ('dynamic-turblo-1', 'Dynamic Turblo', 'dynamic-bike-care', 'bike-care-maintenance', 'pumps-inflation', '<p><br></p><p>Ultra-light pocket-sized e-pump</p><p><br></p><p>Flat tire? Turblo to the rescue!</p><p><br></p><p>Turblo is an ultra-light electric mini pump for quick top-ups and emergencies. Compact enough to slip into your jersey pocket or saddle bag, powerful enough to get you rolling again in no time. With real-time digital pressure readings and an auto-stop function, it delivers spot-on inflation every time. No more struggling with hand pumps or blowing up tires with CO₂ cartridges. Just fast, precise and hassle-free inflation. The Turblo combines an integrated LED light, Presta and Schrader compatibility, and a jersey-pocket fit to bring pro-level performance wherever you ride.</p><p>Compact. Capable. Ready to ride.</p><p><br></p><p>FEATURES</p><p>Inside the box you’ll find:</p><p>- Turblo</p><p>- Presta Valve Adapter</p><p>- Schrader Valve Adapter</p><p>- Schrader Valve Air Hose</p><p>- Ball needle</p><p>- USB-C Charging Cable</p><p>- Waterproof Storage Bag</p><p>- Wrist Lanyard</p><p>- User manual</p><p><br></p><p>Technical specifications:</p><p>- Inflation Speed: 14 L/min </p><p>- Max Pressure: 8.0/116 PSI</p><p>- Battery Capacity: 500 mAh 2S lithium battery </p><p>- Input: 5V/2 A</p><p>- Max Power: 48 W</p><p>- Weight: 115 g </p><p>- dB: ≤80 at 1.5 m distance</p><p>- Product Dimensions: 45x33x71mm</p><p>- CE, UKCA and CRM certification</p><p>- 2 - year warranty</p><p><br></p><p>Charging the battery fully takes about 1 hour and gives you: </p><p>- up to 5x road tires 28 mm (5.0 bar / 73 PSI)</p><p>- up to 8x MTB tires 29 inch (1.5 / 22 PSI)<br><br></p><p>Turblo delivers reliable performance on every surface, from tarmac to woodland and everything in between. Planning a night trip? No problem. The integrated LED light brightens your valve to make inflation quick and hassle-free. Turblo boosts your tire from 3,0 bar to 5,0 bar in just 30 seconds and runs for up to 7 minutes on a single charge, giving you plenty of time to inflate hands-free with precision.</p><p><br></p><p>Turblo reaches accurate inflation up to 8.0 bar / 116 PSI, powered by a high-tech, lightweight LI-PO 500 mAh battery. You can charge it easily with the included USB-C cable. Inside, a full-metal motor with a carbon fibre push rod delivers efficient airflow and durability, supported by an advanced cooling system for quiet, consistent performance.</p><p><br></p><p>At just 115 g, Turblo weighs almost the same as a single-use CO₂ cartridge (containing 25 g of gas but weighing 100 g in total). But instead of one inflation, you can rely on Turblo again and again. Keep it close and protected in the included waterproof storage bag, ready for whenever you need professional results the most.</p><p><br></p>', array['dynamic-turblo-1/1.webp', 'dynamic-turblo-1/2.webp', 'dynamic-turblo-1/3.webp', 'dynamic-turblo-1/4.webp']::text[], 'new', 1, '2026-06-05'::date, false, false),
  ('dynamic-turblo', 'Dynamic Turblo+', 'dynamic-bike-care', 'bike-care-maintenance', 'pumps-inflation', '<p>Electric pump built for the big jobs\</p><p><br></p><p>Meet the Turblo+: our compact powerhouse pump, built for riders who demand performance. The high-precision pressure sensor and auto-stop function ensure your tires are inflated to the exact pressure you set, then shut off automatically. Always the right pressure, with zero effort and maximum control. Store up to four preset pressures to switch between bikes or front and rear setups in seconds. The Trublo+ is fast, exact, and built to perform. Use the Turblo+ at home, before your race, or throw it in your bike bag for your next training camp. The Turblo+ delivers; anytime, anywhere.</p><p><br></p><p>FEATURES</p><p>Inside the box you’ll find:</p><p>- Turblo+</p><p>- Schrader Valve Air Hose</p><p>- Presta Nozzle (purple)</p><p>- Ball needle</p><p>- USB-C Charging Cable</p><p>- Storage Bag</p><p>- User manual</p><p><br></p><p>Technical specifications</p><p>- Inflation Speed: 22 L/min</p><p>- Max Pressure: 10.0/145 PSI</p><p>- Battery Capacity: 2000 mAh 2S Lithium-Ion Battery </p><p>- Input 5 V/2 A</p><p>- Max power: 57 W</p><p>- Product Dimensions: 48x68x155mm</p><p>- CE, UKCA and CRM certified</p><p>- 2 - year warranty</p><p><br></p><p>A full charge gives you:</p><p>- up to 10x road tires of 28 mm (5.0 bar / 73 PSI)</p><p>- up to 18x MTB tires 29 inch (1.5 / 22 PSI)</p><p><br></p><p>Secret features of the Turblo+</p><p>The Turblo+ can also be used as a power bank. Plug in a USB-A cable and recharge your phone or other device; perfect for training camps and travel!</p><p><br></p><p>Inside the Turblo+, a powerful 57W motor delivers strong, consistent airflow. Built from full metal and equipped with a carbon push rod, it’s made for maximum durability and performance. Powered by a 2000 mAh battery and easy to charge via USB-C. Thanks to its smart design, the Turblo+ fits right into your backpack, bike bag or carry-on. No hassle at your destination: set up your bike and ride!</p><p><br></p>', array['dynamic-turblo/1.webp', 'dynamic-turblo/2.webp', 'dynamic-turblo/3.webp', 'dynamic-turblo/4.webp', 'dynamic-turblo/5.webp']::text[], 'new', 0, '2026-06-05'::date, false, false),
  ('flextail-tiny-bike-pump-200', 'Flextail Tiny Bike Pump 200', 'flextail', 'bike-care-maintenance', 'pumps-inflation', '<p><strong>One Pump for All Your Needs</strong></p><p>We have conducted comprehensive tests on different tire models, optimized the air pump''s performance under both low and high pressure conditions, ensuring you have the best experience.</p>
<p><br></p>
<p><strong>Key to Robust Performance</strong></p>
<p>Powered by a precision brushless motor and a short-stroke, large-bore piston, the Tiny Tire Pump 200 can hit 130 PSI. Less friction, more efficiency, and way fewer breakdowns—this is pro-level inflation, built to perform.</p>

<p><br></p>
<p><strong>Tire Inflation on Turbo Mode</strong></p>

<p>Stop counting seconds. The Tiny Tire Pump flies through inflation at double speed.Your tires are pumped before you even notice.</p>
<p><br></p>
<p><strong>More Features to Inflate Like a Pro!</strong></p>

<p>With the product''s LED digital display screen and many thoughtful features, you can control tire pressure more accurately and enjoy a more professional and easier inflation experience.</p>
<p><br></p>
<p><strong>Not Just a Tire Pump But Your Riding Companion</strong></p>

<p>In addition to the above functions, we hope that Tiny Tire Pump 200 can provide you with more help and support. Therefore, we innovated in the structure of the product and integrated the taillight function into the pump.</p>
<p><br></p>
<p><strong>Meet Your Various Needs with in 1 Full Charge</strong></p>

<p>There is no need to worry about the tail light function consuming too much battery power. Even if you use the tail light function for 4-6 hours, it only consumes half the battery of the Tiny Tire Pump 200, which is still enough to help you deal with emergencies.</p>
<p><br></p>
<p><strong>Carry it Without Any Burden</strong></p>

<p>We have designed and included an adapter, allowing it to be directly installed on your seat tube, no longer occupying any additional space.</p>
<p><br></p>
<p><strong>High-Density High Performance Battery</strong></p>

<p>Our premium battery module is the core of its high performance. High-density battery for compact size, low power loss, and long-lasting, stable performance.</p>

<p><strong>Specification</strong></p>
<p><strong>Size:</strong> 2.0*1.1*2.6 inches（52*29*67 mm）</p>
<p><strong>Weight: </strong>4.6 oz（130g）</p>
<p><strong>Maximum Pressure: </strong>130 PSI (896 kPa)</p>
<p><strong>Charging Mode: </strong>USB Type-C</p>
<p><strong>Battery Capacity: </strong>3.7 Wh（500mAh*2）</p>', array['flextail-tiny-bike-pump-200/1.png', 'flextail-tiny-bike-pump-200/2.png', 'flextail-tiny-bike-pump-200/3.png', 'flextail-tiny-bike-pump-200/4.png', 'flextail-tiny-bike-pump-200/5.png']::text[], 'new', 1, '2026-06-05'::date, false, false),
  ('lezyne-road-drive-large', 'Lezyne Road Drive Large', 'lezyne', 'bike-care-maintenance', 'pumps-inflation', '<ul>
<li>CNC-machined aluminum construction with compact overlapping handle</li>
<li>Threaded or slip-fit Presta valve-compatible ABS Flex Hose with integrated valve core tool</li>
<li>Includes aluminum frame mount</li>
</ul>
<p>Built from CNC-machined aluminum construction, the Road Drive is a must-have hand pump for all road riders.</p>
<p>Lightweight yet durable, this pump is efficient and compact, offering an overlapping handle optimized for high-pressure applications (up to 160 PSI).</p>
<p>It comes with a two-sided Presta-only ABS Flex Hose with one side working as a slip-fit and the other side threading on for a more secure connection. The hose also includes a built in valve core tool.</p>', array['lezyne-road-drive-large/1.webp']::text[], 'new', 1, '2026-06-03'::date, false, false),
  ('magic-shine-e-pump-tyre-inflator-120psi', 'Magic Shine E-Pump Tyre Inflator 120PSI', 'magicshine', 'bike-care-maintenance', 'pumps-inflation', '<p>Magic Shine E-Pump Tyre Inflator 120PSI</p>
<p>The AIRRO Mini Bicycle Tire Inflator is the ultimate tool for cyclists seeking efficiency, precision, and portability. Combining cutting-edge technology with user-centric design, this compact e-pump offers an upgraded experience compared to traditional manual pumps, making it a must-have accessory to every cyclist’s toolkit.</p>
<p><strong>Features:</strong></p>
<ul>
<li>Featuring a powerful brushless motor, capable of inflating tires up to 120 PSI.</li>
<li>Built-in high-precision barometer that displays real-time tire pressure with an accuracy of ±1.5 psi.</li>
<li>LED digital display showing real-time tire pressure and battery status.</li>
<li>Simple controls with on/off, +/- for pressure adjustments, and PSI/Bar toggle.</li>
<li>Automatically stops once the desired pressure is reached,eliminating guesswork.</li>
<li>7.4V 500mAh provides up to 3-4 inflations to 80 PSI on a full charge.</li>
<li>45-minute fast charging via Type-C port, ensuring quick power-ups.</li>
<li>Include adapters for Presta and Schrader valves, as well as ball needle and a hose extender for added versatility.</li>
<li>Heat management with a silicone sleeve for added protection during use.</li>
<li>Compact design and weighing just 145g, easy to fit in a jersey pocket or saddle bag.</li>
<li>Portable and lightweight, perfect for travel, roadside fixes, or regular rides.</li>
</ul>
<p>Whats in the box:<br>Inflator x 1<br>Presta Valve x 1<br>Schrader Valve x 1<br>Silicone Case x 1<br>Waterproof Bag x 1<br>Extension Hose x 1<br>Presta Valve Converter x 1<br>Ball Needle x 1<br>Type-C charging cable x 1<br>User manual x 1</p>', array['magic-shine-e-pump-tyre-inflator-120psi/1.jpg']::text[], 'new', 0, '2025-06-26'::date, false, false),
  ('ryder-e-flow-electric-bike-pump', 'Ryder E-Flow Electric Bike Pump', 'ryder', 'bike-care-maintenance', 'pumps-inflation', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>RYDER E-FLOW BIKE PUMP W/DIGI PRESSURE GAUGE</strong></p>

 <p><strong>NOW WITH SILICONE COVER &amp; MOUNT STRAP</strong></p>

 <p>Small but effective rechargeable tyre inflator with digital pressure gauge.</p>

 <p>Powerful brushless motor with 500mah battery inflates:</p>

 <ul>
 <li>4 x mtb tyres or</li>
 <li>3 x road tyres </li>
 </ul>

 <p>One charge (Full) = inflation capacity of 3.5 x 25g CO2 cartridges</p>

 <p> <strong>FEATURES</strong></p>

 <ul>
 <li>Pressure gauge and digital display</li>
 <li>Presta and Schrader valve compatible with the change of the nozzle</li>
 <li>Built-in LED light</li>
 <li>Preset your optimum tyre pressure</li>
 <li>Max 120 PSI / 8 Bar with indicator </li>
 <li>Battery level indicator</li>
 <li>USB Type-C rechargeable </li>
 <li>Additional extension hose for hard to reach valves</li>
 <li>Includes protective silicone case for on-bike carrying</li>
 <li>Rubberized mounting strap allows you to choose where to mount it.</li>
 </ul>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Weight</strong></th>
 <td>108g</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>BOX CONTENTS</strong></p>

 <ul>
 <li>1 x Rechargeable tyre inflator</li>
 <li>1 x Schrader Valve adaptor (AV) </li>
 <li>1 x Presta Valve adaptor (FV)</li>
 <li>1 x AF/FV hose </li>
 <li>1 x Ball needle</li>
 <li>1 x Wrist Lanyard</li>
 <li>1 x Storage bag</li>
 <li>1 x Type-C cable</li>
 <li>1 x Instruction Manual </li>
 <li>1 x Silicone case and strap</li>
 </ul>

 

 
 </td>
 </tr>
	</tbody>
</table>', array['ryder-e-flow-electric-bike-pump/1.jpg', 'ryder-e-flow-electric-bike-pump/2.jpg', 'ryder-e-flow-electric-bike-pump/3.jpg', 'ryder-e-flow-electric-bike-pump/4.jpg', 'ryder-e-flow-electric-bike-pump/5.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('topeak-airbooster-g2', 'Topeak Airbooster G2', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>The world’s first CO2 inflator with tire gauge provides tire inflation and tire pressure measurement. The angled head fits Presta and Schrader valves and a special feature allows the user to adjust the flow while filling the tire. Dual end design allows for cartridge storage.</p> <p><strong>* CO2 cartridges not included</strong></p> <ul> <li>Works as a CO2 inflator and tire pressure measurement gauge at the same time</li> <li>Works as a tire pressure measurement gauge</li> <li>Included reusable Rubber Spacer is for storing CO2 cartridges</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>Presta / Schrader with integrated dust cap, Push to inflate</td> </tr> <tr> <td>GAUGE</td> <td>Reads 160 psi / 11 bar, 1-1/2” analog</td> </tr> <tr> <td>MATERIAL</td> <td>Engineering grade polymer</td> </tr> <tr> <td>SIZE</td> <td>6.5 x 5.2 x 3.3 cm / 2.5” x 2” x 1.3”</td> </tr> <tr> <td>WEIGHT</td> <td>45 g / 1.59 oz</td> </tr> <tr> <td>ADDED FEATURE</td> <td>Dual end design allows cartridge storage for 1 threaded 16g / 25g CO2 cartridge</td> </tr> </tbody> </table>', array['topeak-airbooster-g2/1.jpg', 'topeak-airbooster-g2/2.jpg', 'topeak-airbooster-g2/3.jpg', 'topeak-airbooster-g2/4.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-airbooster-race-pod-x', 'Topeak Airbooster Race Pod X', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>The AirBooster Race Pod X is a compact and completely self-contained tire inflation kit featuring an AirBooster CO2 inflator, two tire levers, two 16g CO2 cartridges, mounting module with strap. The unique mounting module straps to the aero or round tube, and provides lightning fast access to the AirBooster inflator, extra CO2 cartridge and tire levers. The perfect CO2 tire repair solution for racing, endurance or triathlon events.</p> <table> <tbody> <tr> <td>HEAD</td> <td>Presta / Schrader w/ integrated dust cap<br>Push to inflate</td> </tr> <tr> <td>INFLATOR</td> <td>CNC aluminum</td> </tr> <tr> <td>TIRE LEVERS</td> <td>Engineering grade polymer</td> </tr> <tr> <td>ADDED FEATURES</td> <td>2 threaded 16g CO2 cartridges<br>Mount module for aero or round tube<br>Compartment for tire levers and CO2 cartridges</td> </tr> <tr> <td>SIZE</td> <td>12.3 x 10 x 6 cm / 4.8” x 3.9” x 2.4”</td> </tr> <tr> <td>WEIGHT</td> <td>198 g / 6.97 oz (w/ Mount)</td> </tr> </tbody> </table>', array['topeak-airbooster-race-pod-x/1.jpg', 'topeak-airbooster-race-pod-x/2.jpg', 'topeak-airbooster-race-pod-x/3.jpg', 'topeak-airbooster-race-pod-x/4.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('topeak-co2-airbooster-16g', 'Topeak CO2 Airbooster 16g', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

The AirBooster is an incredibly small, lightweight and easy to use CO2 inflator. Precision CNC machined from solid aluminum, the angled head AirBooster fits Presta and Schrader valves and its special design allows the user to adjust the flow while filling the tire. Double-ended design allows cartridge storage. The supplied durable silicone CO2 Sleeve protects hands during inflation. * Use only Topeak CO2 cartridges.
 

<table>
<tbody>
<tr>
<td>MATERIAL</td>
<td>CNC aluminum (Inflator) <br>Silicone rubber (Sleeve)</td>
</tr>
<tr>
<td>SIZE</td>
<td>4.4 x 3.7 x 1.5 cm / 1.7” x 1.4” x 0.6” (Inflator) <br>5.9 x ø2.8 cm / 2.3” x ø1.1” (Sleeve)</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>22.5 g / 0.79 oz (Inflator) <br>11 g / 0.39 oz (Sleeve)</td>
</tr>
<tr>
<td>HEAD</td>
<td>Presta / Schrader w/ integrated dust cap <br>Push to inflate</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Double-ended design allows cartridge storage 1 threaded CO2 cartridge, CO2 Sleeve</td>
</tr>
</tbody>
</table>', array['topeak-co2-airbooster-16g/1.jpg', 'topeak-co2-airbooster-16g/2.jpg']::text[], 'new', 1, '2021-11-17'::date, false, false),
  ('topeak-co2-airbooster-25g', 'Topeak CO2 Airbooster 25g', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

The AirBooster is an incredibly small, lightweight and easy to use CO2 inflator. Precision CNC machined from solid aluminum, the angled head AirBooster fits Presta and Schrader valves and its special design allows the user to adjust the flow while filling the tire. Double-ended design allows cartridge storage. The supplied durable silicone CO2 Sleeve protects hands during inflation. * Use only Topeak CO2 cartridges.
 

<table>
<tbody>
<tr>
<td>MATERIAL</td>
<td>CNC aluminum (Inflator) <br>Silicone rubber (Sleeve)</td>
</tr>
<tr>
<td>SIZE</td>
<td>4.4 x 3.7 x 1.5 cm / 1.7” x 1.4” x 0.6” (Inflator) <br>7.8 x ø3.1 cm / 3.1” x 1.2” (Sleeve)</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>22.5 g / 0.79 oz (Inflator) <br>18 g / 0.63 oz(Sleeve)</td>
</tr>
<tr>
<td>HEAD</td>
<td>Presta / Schrader w/ integrated dust cap <br>Push to inflate</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Double-ended design allows cartridge storage 1 threaded CO2 cartridge, CO2 Sleeve</td>
</tr>
</tbody>
</table>', array['topeak-co2-airbooster-25g/1.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-e-booster-digital-1', 'Topeak E-Booster Digital', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>Introducing the all-new electric pump. Its innovative design allows you to preset the pressure, and with just a simple press, you can easily achieve the desired tire inflation. Fits both Presta and Schrader valves. The included storage bag makes it easy to carry wherever you go.</p>
* For TPU inner tubes with resin valves, be sure to use an extender hose to prevent the valve from overheating and melting.<br>* If the tire already has air pressure, please activate the inflation switch before connecting the valve.

<br><table><tbody>
<tr>
<td>HEAD</td>
<td>SmartHead®, fits Presta &amp; Schrader valves</td>
</tr>
<tr>
<td>GAUGE / MAX PRESSURE</td>
<td>Backlit LED screen / 120 psi (8 bar)</td>
</tr>
<tr>
<td>ACCURACY</td>
<td>± 2 psi</td>
</tr>
<tr>
<td>CHARGE / CHARGE TIME</td>
<td>USB-C / 5V 1.5A / 45 min (APPROX)</td>
</tr>
<tr>
<td>MATERIAL</td>
<td>Aluminum / Engineering grade polymer</td>
</tr>
<tr>
<td>BATTERY</td>
<td>7.4 V * 600 mAh</td>
</tr>
<tr>
<td>SIZE</td>
<td>5.9 x 3.5 x 8.6 cm</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>162 g</td>
</tr>
</tbody></table>

<br>
<p>PRESET PRESSURE: The pre-select function allows for easy and accurate inflation results.</p>

<p>FITS PRESTA / SCHRADER VALVES</p>
<p>QUICK INFLATION</p>
<p>BACKLIT LCD SCREEN: Units in KG/CM2, BAR, PSI</p>
<p>INSULATED SILICONE CASE: Provides overheat protection during inflation</p>
<p>EXTENDED HOSE: Prevent vales from overheating</p>
<p>USB-C CHARGING</p>

<p>STORAGE BAG / WATERPROOF ZIPPER BAG</p>', array['topeak-e-booster-digital-1/1.jpg', 'topeak-e-booster-digital-1/2.jpg', 'topeak-e-booster-digital-1/3.jpg', 'topeak-e-booster-digital-1/4.jpg', 'topeak-e-booster-digital-1/5.png']::text[], 'new', 1, '2025-07-31'::date, false, false),
  ('topeak-e-booster-digital-mini', 'Topeak E-Booster Digital Mini', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>The pocket-sized E-BOOSTER electronic pump delivers powerful performance in a compact form, reaching up to 120 psi. Easily achieve the perfect tire pressure with the built-in preset function—just set and inflate. The clear color display ensures precise pressure readings, while the extended hose adds flexibility and convenience for a smoother inflation experience.</p>

<p>* For TPU inner tubes with resin valves, be sure to use an extender hose to prevent the valve from overheating and melting.<br>* If the tire already has air pressure, please activate the inflation switch before connecting the valve.<br>* Clik Valve™ is a trademark of Ralf Bohle GmbH (Schwalbe)</p>

<table>
<tbody>
<tr>
<td><strong>HEAD</strong></td>
<td>Compatible with Presta, Schrader, and Clik Valve™</td>
</tr>
<tr>
<td><strong>ACCURACY</strong></td>
<td>± 2 PSI</td>
</tr>
<tr>
<td><strong>BATTERY</strong></td>
<td>7.4 V * 500 mAh</td>
</tr>
<tr>
<td><strong>CHARGE / CHARGE TIME</strong></td>
<td>USB-C, 5V 1.5A / 45 min (APPROX)</td>
</tr>
<tr>
<td><strong>GAUGE</strong></td>
<td>Full color display / 120 psi (8 bar)</td>
</tr>
<tr>
<td><strong>MATERIAL</strong></td>
<td>Engineering grade polymer, Alloy</td>
</tr>
<tr>
<td><strong>SIZE</strong></td>
<td>5.4 x 3.4 x 7.2 cm</td>
</tr>
<tr>
<td><strong>WEIGHT</strong></td>
<td>120 g</td>
</tr>
<tr>
<td><strong>ADDED FEATURES</strong></td>
<td>Includes storage bag, waterproof zipper bag, and extended hose</td>
</tr>
</tbody>
</table>', array['topeak-e-booster-digital-mini/1.webp', 'topeak-e-booster-digital-mini/2.webp', 'topeak-e-booster-digital-mini/3.webp', 'topeak-e-booster-digital-mini/4.webp']::text[], 'new', 1, '2026-06-05'::date, false, false),
  ('topeak-hybrid-rocket-mtb', 'Topeak Hybrid Rocket MTB', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>Mountain mini pump, CO2 inflator, or both. The choice is yours! HybridRocket technology combines the reliability of a mini pump with the rapid tire filling ability of a CO2 inflator in a single unit.</p> <p>The HybridRocket MT lets you quickly rejoin the group after fixing a flat. The mini-sized pump and integrated CO2 inflator lets you choose between pumping, inflating with CO2 or a combination of both.  An extendable hose with SmartHead® ThreadLock accepts Presta and Schrader valves.</p> <p><strong>Note: Use the PCT Cap to tighten or remove two piece Presta valve cores when necessary.</strong></p> <ul> <li>Use as a CO2 inflator</li> <li>Use as a mini pump</li> <li>Detachable mounting bracket</li> <li>Innovative thread-on design accepts both Presta and Schrader valves</li> <li>Built-in tool (PCT Cap) to tighten or remove two-piece Presta valve cores</li> </ul> <table> <tbody> <tr> <td>ADDED FEATURES</td> <td>PCT Cap (Presta Core Tool Cap), Included 1 threaded 16g CO2 cartridge, Dust caps. Detachable mounting bracket (Art no. TRK-PC06)</td> </tr> <tr> <td>WEIGHT</td> <td>141g/ 4.97oz</td> </tr> <tr> <td>SIZE</td> <td>20 x 4.5 x 3.3 cm / 8.1” x 1.8” x 1.3”</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>60 cc</td> </tr> <tr> <td>CAPACITY</td> <td>90 psi / 6 bar</td> </tr> <tr> <td>HANDLE</td> <td>Aluminum / Rubber</td> </tr> <tr> <td>BARREL</td> <td>CNC aluminum</td> </tr> <tr> <td>HEAD</td> <td>SmartHead® ThreadLock w/ integrated dust cap<br>Fits Presta / Schrader valves</td> </tr> </tbody> </table>', array['topeak-hybrid-rocket-mtb/1.jpg', 'topeak-hybrid-rocket-mtb/2.jpg']::text[], 'new', 0, '2022-04-30'::date, false, false),
  ('topeak-hybrid-rocket-rx', 'Topeak Hybrid Rocket RX', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>Road mini pump, CO2 inflator, or both. The choice is yours! HybridRocket technology combines the reliability of a mini pump with the rapid tire filling ability of a CO2 inflator in a single unit. The smallest in the HybridRocket Series, the HybridRocket RX lets you quickly rejoin the group after fixing a flat. The micro-sized pump and integrated CO2 inflator lets you choose between pumping, inflating with CO2 or a combination of both. Its butted aluminum barrel is optimized for high pressure and inflates up to 160 psi / 11 bar.</p> <ul> <li>Use as a mini pump</li> <li>Use as a CO2 inflator</li> <li>Detachable mounting bracket</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>Presta valve w/ integrated dust cap</td> </tr> <tr> <td>BARREL</td> <td>Butted Aluminum</td> </tr> <tr> <td>THUMB LOCK</td> <td>Aluminum</td> </tr> <tr> <td>HANDLE</td> <td>Dual density polymer</td> </tr> <tr> <td>CAPACITY</td> <td>160 psi / 11 bar</td> </tr> <tr> <td>ADDED FEATURES</td> <td>1 threaded 16g CO2 cartridge, Dust caps<br>Includes detachable mounting bracket (Art No. THR-RX1G-C)</td> </tr> <tr> <td>SIZE</td> <td>16.8 x 3.5 x 2.3 cm / 6.6” x 1.4” x 0.9”</td> </tr> <tr> <td>WEIGHT</td> <td>80 g / 2.82 oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>19 cc</td> </tr> </tbody> </table>', array['topeak-hybrid-rocket-rx/1.jpg', 'topeak-hybrid-rocket-rx/2.jpg', 'topeak-hybrid-rocket-rx/3.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-joeblow-ace-dx-260psi', 'Topeak Joeblow Ace DX 260psi', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

New design in full metal to quickly identify Presta and Schrader sides. Longer lever for easier use. Lower profile air release button to minimize unintended pressure release. Upgrade any existing pump to the TwinHead® DX pump head includes extra long and mounting hardware.

<table>
<tbody>
<tr>
<td>HEAD</td>
<td>SmartHead® DX1 full metal pump head w/ air release button &amp; x-long hose</td>
</tr>
<tr>
<td>BARREL</td>
<td>Anodized aluminum</td>
</tr>
<tr>
<td>GAUGE</td>
<td>260 psi / 18 bar <br>4” base mount analog</td>
</tr>
<tr>
<td>HANDLE</td>
<td>Oversize dual tone</td>
</tr>
<tr>
<td>BASE</td>
<td>Aluminum / Rubber</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Dunlop valve adapter <br>Presta valve adapter <br>Ball / bladder heads <br>Hose dock</td>
</tr>
<tr>
<td>SIZE</td>
<td>74 x 28 x 22 cm / 29.1” x 11” x 8.7”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>2.45 kg / 5.4 lb</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>586 cc (Stage 1)</td>
</tr>
<tr>
<td>HOSE LENGTH</td>
<td>105 cm</td>
</tr>
</tbody>
</table>', array['topeak-joeblow-ace-dx-260psi/1.jpg', 'topeak-joeblow-ace-dx-260psi/2.jpg', 'topeak-joeblow-ace-dx-260psi/3.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('topeak-joeblow-booster-160psi', 'Topeak Joeblow Booster 160psi', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

Half air compressor – Half pump. The JoeBlow® Booster pump just made it easier to install tubeless tires. This pump has an integrated aluminum air chamber that stores an air charge of one liter, up to 160psi / 11 bar, to quickly fill your tire and ensure the proper installation on a tubeless rim, just like a shop compressor. Once you flip the selector from “CHARGE” to “INFLATE” mode, air bypasses the chamber and flows directly into your tire like a standard pump. The top-mounted easy to read gauge, air release button and comfortable dual density polymer grip, combined with its extra-long hose and stable base makes mounting tubeless and standard tires a breeze!

<table>
<tbody>
<tr>
<td>HEAD</td>
<td>SmartHead® DX3 w/ air release button &amp; x-long hose</td>
</tr>
<tr>
<td>BARREL</td>
<td>Anodized aluminum w/ large cylindrical aluminum chamber</td>
</tr>
<tr>
<td>GAUGE</td>
<td>160 psi / 11 bar<br>Top mount analog</td>
</tr>
<tr>
<td>PRESSURE TUNING</td>
<td>Air release button</td>
</tr>
<tr>
<td>HANDLE</td>
<td>Oversize padded / Dual density polymer</td>
</tr>
<tr>
<td>BASE</td>
<td>Steel</td>
</tr>
<tr>
<td>ADDED FEATURE</td>
<td>Hose dock</td>
</tr>
<tr>
<td>SIZE</td>
<td>74 x 25 x 18.5 cm / 29.1” x 9.8” x 7.3”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>2.9 kg / 6.4 lb</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>303 cc</td>
</tr>
<tr>
<td>HOSE LENGTH</td>
<td>152</td>
</tr>
</tbody>
</table>', array['topeak-joeblow-booster-160psi/1.jpg', 'topeak-joeblow-booster-160psi/2.jpg', 'topeak-joeblow-booster-160psi/3.jpg', 'topeak-joeblow-booster-160psi/4.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-joeblow-max-hp-160psi', 'Topeak Joeblow Max HP 160psi', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

An affordable floor pump with features you’d expect find on more expensive pumps. Double-sided TwinHead® fits all valve types and its heavy duty construction will provide years of service. Enjoy huge pumping power, quality and durability at a more affordable price.

<table>
<tbody>
<tr>
<td>ADDED FEATURES</td>
<td>Ball / bladder heads, Hose dock</td>
</tr>
<tr>
<td>BARREL</td>
<td>Painted steel</td>
</tr>
<tr>
<td>BASE</td>
<td>Composite</td>
</tr>
<tr>
<td>GAUGE</td>
<td>160 psi / 11 bar<br>Middle mount analog</td>
</tr>
<tr>
<td>HANDLE</td>
<td>Oversize padded</td>
</tr>
<tr>
<td>HEAD</td>
<td>TwinHead® w/ x-long hose<br>Fits Presta / Schrader / Dunlop valves</td>
</tr>
<tr>
<td>SIZE</td>
<td>67.5 x 24 x 12.7 cm / 26.6” x 9.4” x 5”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>1.39 kg / 3.06 lb</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>322 cc</td>
</tr>
<tr>
<td>HOSE LENGTH</td>
<td>87.5 cm</td>
</tr>
</tbody>
</table>', array['topeak-joeblow-max-hp-160psi/1.jpg', 'topeak-joeblow-max-hp-160psi/2.jpg']::text[], 'new', 0, '2021-09-16'::date, false, false),
  ('topeak-joeblow-mountain-75psi', 'Topeak Joeblow Mountain 75psi', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>This unique mountain bike specific floor pump features a super-sized steel barrel designed to deliver the higher volume required for large off-road tires and an extra sensitive, base mounted analog gauge with air release button to help dial in the exact pressure.</p> <ul> <li>Unique easy to read gauge</li> <li>TwinHead® w/ air release button</li> <li>Ball and bladder needles are included and fit neatly in their own holder</li> <li>Designed for low pressure Mountain Bike tires</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>TwinHead®, Presta / Schrader / Dunlop valves with air release button &amp; extra-long hose</td> </tr> <tr> <td>BARREL</td> <td>Painted steel</td> </tr> <tr> <td>GAUGE</td> <td>60 psi / 4 bar, 2-1/2” Base mount analog</td> </tr> <tr> <td>HANDLE</td> <td>Oversize padded</td> </tr> <tr> <td>BASE</td> <td>Composite</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Ball / bladder heads, Hose dock</td> </tr> <tr> <td>SIZE</td> <td>69 x 26 x 17 cm / 27.2” x 10.2” x 6.7”</td> </tr> <tr> <td>WEIGHT</td> <td>1.74 kg / 3.84 lb</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>722 cc</td> </tr> <tr> <td>HOSE LENGTH</td> <td>86 cm</td> </tr> </tbody> </table>', array['topeak-joeblow-mountain-75psi/1.jpg', 'topeak-joeblow-mountain-75psi/2.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-joeblow-pro-digital-200psi', 'Topeak Joeblow Pro Digital 200psi', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

An easy-to-read top-mounted digital gauge with rubber bumper impact protection delivers accurate tire pressure readings up to 200psi / 14bar. The large padded handle provides comfort while the wide steel base keeps everything stable. The extra-long hose can even reach bikes mounted in a work stand. The SmartHead® DX3 automatically adjusts to fit Presta or Schrader valves and a new lower profile air release button allows fine tuning of tire pressure while preventing unintended pressure release.

<table>
<tbody>
<tr>
<td>HEAD</td>
<td>SmartHead® DX3 w/ air release button &amp; extra-long hose</td>
</tr>
<tr>
<td>BARREL</td>
<td>Painted steel</td>
</tr>
<tr>
<td>GAUGE</td>
<td>200 psi / 14 bar, Top mounted digital (Tolerance : &lt; 100 psi ± 1 psi / &gt; 100 psi ± 1%)</td>
</tr>
<tr>
<td>UNIT</td>
<td>psi, bar, kg / cm²</td>
</tr>
<tr>
<td>BATTERY</td>
<td>CR2032 x 1 (included)</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>337 cc</td>
</tr>
<tr>
<td>HANDLE</td>
<td>Oversize padded / Dual density polymer</td>
</tr>
<tr>
<td>BASE</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Cushioned rubber for digital gauge protection, Auto off, Dunlop valve adapter, Presta valve adapter, Ball / bladder heads, Hose dock</td>
</tr>
<tr>
<td>SIZE</td>
<td>73.5 x 25.5 x 16.4 cm / 28.9” x 10” x 6.5”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>1.97 kg / 4.34 lb</td>
</tr>
</tbody>
</table>', array['topeak-joeblow-pro-digital-200psi/1.jpg', 'topeak-joeblow-pro-digital-200psi/2.jpg', 'topeak-joeblow-pro-digital-200psi/3.jpg', 'topeak-joeblow-pro-digital-200psi/4.jpg']::text[], 'new', 0, '2021-09-16'::date, false, false),
  ('topeak-joeblow-sport-digital-160psi', 'Topeak Joeblow Sport Digital 160psi', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

An easy-to-read mid-mounted digital gauge delivers accurate tire pressure readings up to 160psi / 11bar. Hammer type TwinHead® DX5 pump head with an extra-long, tangle-free hose makes it easy to reach valve stems. A durable steel barrel and large steel base with ergonomic padded handle make it easy to get your ride up to pressure fast.

<table>
<tbody>
<tr>
<td>HEAD</td>
<td>Hammer type TwinHead® DX5, Presta / Schrader / Dunlop valves with extra-long 360 pivot hose</td>
</tr>
<tr>
<td>BARREL</td>
<td>Painted steel</td>
</tr>
<tr>
<td>GAUGE</td>
<td>160 psi / 11 bar, Mid mounted flip-down digital (Tolerance : &lt; 100 psi ± 1 psi / &gt; 100 psi ± 1%)</td>
</tr>
<tr>
<td>UNIT</td>
<td>psi, bar, kg / cm²</td>
</tr>
<tr>
<td>BATTERY</td>
<td>CR2032 x 1 (included)</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>318 cc</td>
</tr>
<tr>
<td>HANDLE</td>
<td>Oversize padded / Dual density polymer</td>
</tr>
<tr>
<td>BASE</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Cushion rubber for digital gauge protection, Auto off, Ball / bladder heads, Hose dock</td>
</tr>
<tr>
<td>SIZE</td>
<td>68 x 25.4 x 18 cm / 26.7” x 10” x 4.6”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>1.8 kg / 3.97 lb</td>
</tr>
</tbody>
</table>', array['topeak-joeblow-sport-digital-160psi/1.jpg', 'topeak-joeblow-sport-digital-160psi/2.jpg', 'topeak-joeblow-sport-digital-160psi/3.jpg', 'topeak-joeblow-sport-digital-160psi/4.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-joeblow-sport-iii-160psi', 'Topeak Joeblow Sport III 160psi', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

The new JoeBlow® III continues the tradition of setting the benchmark for floor pump durability and performance, while ushering in upgrades with an enlarged 3” chronograph inspired gauge and new hammer style TwinHead® DX pump head. A durable steel barrel and base as well as ergonomic padded handle make inflating tires a breeze.

<table>
<tbody>
<tr>
<td>HEAD</td>
<td>New hammer type TwinHead® DX w/ extra long 360 pivot hose, Presta / Schrader / Dunlop</td>
</tr>
<tr>
<td>BARREL</td>
<td>Painted steel</td>
</tr>
<tr>
<td>GAUGE</td>
<td>160 psi / 11 bar, 3” mid mount analog</td>
</tr>
<tr>
<td>BASE</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Ball / bladder heads, Hose dock</td>
</tr>
<tr>
<td>SIZE</td>
<td>67.8 x 25.3 x 11.7 cm / 26.7” x 10” x 4.6”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>1.68 kg / 3.70 lb</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>318 cc</td>
</tr>
<tr>
<td>HOSE LENGTH</td>
<td>72 cm</td>
</tr>
</tbody>
</table>', array['topeak-joeblow-sport-iii-160psi/1.jpg', 'topeak-joeblow-sport-iii-160psi/2.jpg', 'topeak-joeblow-sport-iii-160psi/3.jpg', 'topeak-joeblow-sport-iii-160psi/4.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-joeblow-sprint-160psi', 'Topeak Joeblow Sprint 160psi', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

The great performance of a JoeBlow® series pump in a more affordable package. Includes the easy-to-use TwinHead®.

<table>
<tbody>
<tr>
<td>ADDED FEATURES</td>
<td>Ball / Bladder heads, Hose dock, Handle lock</td>
</tr>
<tr>
<td>BARREL</td>
<td>Satin aluminum</td>
</tr>
<tr>
<td>BASE</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>GAUGE</td>
<td>160 psi / 11 bar<br>Top Mount Analog</td>
</tr>
<tr>
<td>HANDLE</td>
<td>Oversize padded</td>
</tr>
<tr>
<td>HEAD</td>
<td>TwinHead® w/ x-long hose<br>Fits Presta / Schrader / Dunlop</td>
</tr>
<tr>
<td>PRESSURE TUNING</td>
<td>Air release button</td>
</tr>
<tr>
<td>SIZE</td>
<td>73.4 x 25 x 13.7 cm / 28.9” x 9.8” x 5.4”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>1.25 kg / 2.76 lb</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>284 cc</td>
</tr>
<tr>
<td>HOSE LENGTH</td>
<td>106.5 cm</td>
</tr>
</tbody>
</table>', array['topeak-joeblow-sprint-160psi/1.jpg', 'topeak-joeblow-sprint-160psi/2.jpg']::text[], 'new', 1, '2021-12-28'::date, false, false),
  ('topeak-mini-dual', 'Topeak Mini Dual', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

A powerful mini pump for all the ways you ride. Dual action pumping fills tires fast.

<table>
<tbody>
<tr>
<td>ADDED FEATURES</td>
<td>Dual Action pumping head, Dust cap<br>Includes side mount bracket (Art No. TMMB-2C)</td>
</tr>
<tr>
<td>BARREL</td>
<td>Aluminum</td>
</tr>
<tr>
<td>CAPACITY</td>
<td>120 psi / 8 bar</td>
</tr>
<tr>
<td>HANDLE</td>
<td>Dual density polymer</td>
</tr>
<tr>
<td>HEAD</td>
<td>Fits Presta / Schrader / Dunlop valves w/ integrated dust cap</td>
</tr>
<tr>
<td>SIZE</td>
<td>27.4 x 3.8 x 1.8 cm / 10.8” x 1.5” x 0.7”</td>
</tr>
<tr>
<td>THUMB LOCK</td>
<td>Plastic</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>148 g / 5.21 oz</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>67 cc</td>
</tr>
</tbody>
</table>', array['topeak-mini-dual/1.jpg', 'topeak-mini-dual/2.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('topeak-mini-dual-g', 'Topeak Mini Dual G', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>A powerful multi purpose dual action mini pump includes an in-line gauge.</p> <ul> <li>Dual action doubles volume with each stroke</li> <li>Includes an in-line gauge</li> <li>Side mount bracket</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>Fits Presta / Schrader / Dunlop valves w/ integrated dust cap</td> </tr> <tr> <td>BARREL</td> <td>Aluminum</td> </tr> <tr> <td>GAUGE</td> <td>In-line gauge</td> </tr> <tr> <td>THUMB LOCK</td> <td>Plastic</td> </tr> <tr> <td>HANDLE</td> <td>Dual density polymer</td> </tr> <tr> <td>CAPACITY</td> <td>120 psi / 8 bar</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Dual Action pumping head, Dust cap<br>Includes side mount bracket (Art No. TMMB-2C)</td> </tr> <tr> <td>SIZE</td> <td>27.4 x 3.8 x 1.8 cm / 10.8” x 1.5” x 0.7”</td> </tr> <tr> <td>WEIGHT</td> <td>158 g / 5.56 oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>67 cc</td> </tr> </tbody> </table>', array['topeak-mini-dual-g/1.jpg', 'topeak-mini-dual-g/2.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-mini-p20', 'Topeak Mini P20', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

20 function pro-quality, precision mini tool with sleek forged alloy body. Integrated chain tool with built-in master link tool for removing master link type chains folds away for a streamlined profile. Compact forged alloy body. Perfect for any road or trailside repair.
 

<table>
<tbody>
<tr>
<td>FUNCTIONS</td>
<td>20</td>
</tr>
<tr>
<td>BODY MATERIAL</td>
<td>Forged aluminum</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>Chrome vanadium steel</td>
</tr>
<tr>
<td>BAG</td>
<td>Neoprene (TRK-T026)</td>
</tr>
<tr>
<td>SIZE</td>
<td>7.4 x 2.9 x 1.8 cm / 2.9” x 1.1” x 0.7”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>131 g / 4.62 oz</td>
</tr>
<tr>
<td>TOOLS</td>
<td>2 / 3 / 4 / 5 / 6 mm Allen wrenches <br>8 mm hex socket <br>T15 / T25 Torx® wrenches <br>14G / 15G / Mavic M7 / Shimano® 4.5mm spoke wrenches <br>CrMo steel chain tool*, CrMo master link tool <br>#2 Phillips screw driver <br>Serrated knife / saw</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Knife blade lock, extendable for leverage, and secondary chain link fence</td>
</tr>
</tbody>
</table>', array['topeak-mini-p20/1.png', 'topeak-mini-p20/2.jpg', 'topeak-mini-p20/3.jpg', 'topeak-mini-p20/4.jpg', 'topeak-mini-p20/5.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-peak-dx-ii', 'Topeak Peak DX II', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>SmartHead® works with Presta and Schrader valves without swapping parts. Folding T-handle with dual density polymer grip provides better leverage and comfort while pumping.</p> <ul> <li>Integrated dust cap</li> <li>T-handle</li> <li>Side mount bracket</li> <li>SmartHead® works with Presta and Schrader valves without swapping parts</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>SmartHead® w/ integrated dust cap<br>Fits Presta / Schrader valves</td> </tr> <tr> <td>BARREL</td> <td>Butted aluminum</td> </tr> <tr> <td>THUMB LOCK</td> <td>Aluminum</td> </tr> <tr> <td>HANDLE</td> <td>T-type dual density polymer</td> </tr> <tr> <td>CAPACITY</td> <td>90 psi / 6 bar</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Dust Cap<br>Includes side mount bracket (Art No. TPD-2C)</td> </tr> <tr> <td>SIZE</td> <td>25 x 5.9 x 3.2 cm / 9.8 x 2.3" x 1.3""</td> </tr> <tr> <td>WEIGHT</td> <td>155 g / 5.46 oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>51 cc</td> </tr> </tbody> </table>', array['topeak-peak-dx-ii/1.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-peakini-ii', 'Topeak Peakini II', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<h4>DESCRIPTION:</h4>

A light weight and high efficient single action pump with a T-handle.

<table>
<tbody>
<tr>
<td>ADDED FEATURES</td>
<td>Dust Cap<br>Includes side mount bracket (Art No. TMTB-1C)</td>
</tr>
<tr>
<td>BARREL</td>
<td>Plastic</td>
</tr>
<tr>
<td>CAPACITY</td>
<td>90 psi / 6 bar</td>
</tr>
<tr>
<td>HANDLE</td>
<td>T-type plastic</td>
</tr>
<tr>
<td>HEAD</td>
<td>Fits Presta / Schrader / Dunlop valves w/ integrated dust cap</td>
</tr>
<tr>
<td>SIZE</td>
<td>27.5 x 5 x 3.2 cm / 10.8” x 2” x 1.3”</td>
</tr>
<tr>
<td>THUMB LOCK</td>
<td>Plastic</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>132 g / 5.46 oz</td>
</tr>
<tr>
<td>VOLUME PER STROKE</td>
<td>70 cc</td>
</tr>
</tbody>
</table>', array['topeak-peakini-ii/1.jpg', 'topeak-peakini-ii/2.jpg', 'topeak-peakini-ii/3.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-pocket-rocket', 'Topeak Pocket Rocket', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>Lightweight mini pump with alloy barrel for roadies. Soft dual density polymer head and polymer handle for increased grip and comfort while pumping. Efficient design pumps to 160 psi.</p> <ul> <li>Extended thumb lock lever makes operating easier</li> <li>Integrated dust cap keeps head clean and ready to use</li> <li>Side mount bracket for Pocket Rocket series and Speed MasterBlaster™ (Art No. TPMB-2C-1)</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>Presta / Schrader / Dunlop valves with aluminum thumb lock &amp; integrated dust cap</td> </tr> <tr> <td>BARREL</td> <td>Butted aluminum</td> </tr> <tr> <td>THUMB LOCK</td> <td>Aluminum</td> </tr> <tr> <td>HANDLE</td> <td>Polymer</td> </tr> <tr> <td>CAPACITY</td> <td>160 psi / 11 bar</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Dual-density polymer head<br>Side mount bracket (Art No. TPMB-2C-1)</td> </tr> <tr> <td>SIZE</td> <td>22.2 x 4.2 x 2.5 cm 8.7” x 1.7” x 1.0”</td> </tr> <tr> <td>WEIGHT</td> <td>109 g / 3.84 oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>31 cc</td> </tr> </tbody> </table>', array['topeak-pocket-rocket/1.png', 'topeak-pocket-rocket/2.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-pocket-rocket-dx-ii', 'Topeak Pocket Rocket DX II', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>A sleek and updated design makes this pocket sized pump a first choice for long road rides. This durable mini pump features a padded dual density polymer handle for comfort and its efficient and smooth pump action fills high pressure road tires to 160 psi / 11 bar.? Satin finish aluminum body is butted for light weight.? Easily fits in jersey pocket or clips to bike with included bracket.</p> <ul> <li>Side mount bracket for Pocket Rocket series and Speed MasterBlaster™ (Art No. TPMB-2C-1)</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>Fits Presta / Schrader / Dunlop valves w/ integrated dust cap</td> </tr> <tr> <td>BARREL</td> <td>Butted aluminum</td> </tr> <tr> <td>THUMB LOCK</td> <td>Aluminum</td> </tr> <tr> <td>HANDLE</td> <td>Dual density polymer</td> </tr> <tr> <td>CAPACITY</td> <td>160 psi / 11 bar</td> </tr> <tr> <td>ADDED FEATURE</td> <td>Dust cap<br>Includes Side Mount Bracket (Art No. TPMB-2C-1)</td> </tr> <tr> <td>SIZE</td> <td>22.1 x 3.8 x 2.7 cm / 8.7” x 1.5” x 1.1”</td> </tr> <tr> <td>WEIGHT</td> <td>115 g / 4.05 oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>29 cc</td> </tr> </tbody> </table>', array['topeak-pocket-rocket-dx-ii/1.jpg', 'topeak-pocket-rocket-dx-ii/2.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-pocketshock-dxg', 'Topeak Pocketshock DXG', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>A precision fork and shock pump with an easy-to-read dial gauge for accurate pressure readings up to 360 psi / 24.8 bar. An air release button and Pressure-Rite connector makes setting proper pressure easy and eliminates air loss when disconnecting, while the flexible hose takes stress off the valve stem when pumping.</p> <ul> <li>Extended barrel to reach desired pressure quickly and easily</li> <li>Easy-to-read dial gauge</li> <li>Pressure-Rite connector makes setting proper pressure easy and eliminates air loss when disconnecting</li> <li>Air release button allows fine tuning pressure</li> <li>Flexible hose takes stress off the valve stem when pumping</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>Pressure-Rite shock valve</td> </tr> <tr> <td>BARREL</td> <td>Aluminum</td> </tr> <tr> <td>GAUGE</td> <td>360 psi / 24.8 bar, Analog</td> </tr> <tr> <td>PRESSURE TUNING</td> <td>Air release button</td> </tr> <tr> <td>HANDLE</td> <td>Dual density polymer</td> </tr> <tr> <td>ADDED FEATURE</td> <td>Flexible rotating hose</td> </tr> <tr> <td>SIZE</td> <td>21.5 x 4.5 x 4.3 cm / 8.5” x 1.8 x 1.7”</td> </tr> <tr> <td>WEIGHT</td> <td>170 g / 5.98 oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>11 cc</td> </tr> </tbody> </table>', array['topeak-pocketshock-dxg/1.jpg', 'topeak-pocketshock-dxg/2.jpg', 'topeak-pocketshock-dxg/3.jpg', 'topeak-pocketshock-dxg/4.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-race-rocket-hp', 'Topeak Race Rocket HP', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>A slightly shorter version of the RaceRocket® HP that easily fits in your jersey pocket. This elegant mini pump features an all aluminum body, head and pump handle and is designed with a narrow barrel diameter that handles higher pressures with ease. An extendable hose with SmartHead® ThreadLock fills Presta and Schrader valves with ease and helps take stress off the valve stem when filling the tire. Its efficient and smooth action inflates tires to 160 psi / 11 bar. The RaceRocket® HP mounts to frame with included bracket. With the power to fill high pressure tires and a weight of only 82 g the RaceRocket® HP is the pump to take on the road.</p> <p><strong>Note: Use the PCT Cap to tighten or remove two piece Presta valve cores when necessary.</strong></p> <ul> <li>Extendable hose</li> <li>Side Mount bracket (Art No. TRK-PC03)</li> <li>Ultra portable size</li> <li>SmartHead® ThreadLock fills Presta and Schrader valves with ease.</li> <li>Built-in tool to tighten or remove two-piece Presta valve cores</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>SmartHead® ThreadLock w/ integrated dust cap<br>Fits Presta / Schrader valves</td> </tr> <tr> <td>BARREL</td> <td>CNC aluminum</td> </tr> <tr> <td>HANDLE</td> <td>Aluminum / Rubber</td> </tr> <tr> <td>CAPACITY</td> <td>160 psi / 11 bar</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Dust cap<br>Includes side mount bracket (TRR-HP1C)</td> </tr> <tr> <td>SIZE</td> <td>18 x 2.6 x 2.1 cm / 7.1” x 1.0” x 0.8”</td> </tr> <tr> <td>WEIGHT</td> <td>89 g / 3.13 oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>26 cc</td> </tr> </tbody> </table>', array['topeak-race-rocket-hp/1.jpg', 'topeak-race-rocket-hp/2.jpg']::text[], 'new', 2, '2022-04-30'::date, false, false),
  ('topeak-race-rocket-hpx', 'Topeak Race Rocket HPX', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>Our longest and slimmest version in the RaceRocket® series this all aluminum pump fills high pressure road tires fast. This elegant mini pump features an all aluminum body, head and pump handle and is designed with a narrow barrel diameter and longer stroke to handle higher pressures with ease. An extendable hose with SmartHead® ThreadLock fills Presta and Schrader valves with ease and helps take stress off the valve stem when filling the tire. Its efficient and smooth action inflates tires to 160 psi / 11 bar.</p> <p><strong>Note: Use the PCT Cap to tighten or remove two piece Presta valve cores when necessary.</strong></p> <ul> <li>Extendable hose</li> <li>Side Mount bracket (Art No. TRK-PC03)</li> <li>Ultra portable size</li> <li>SmartHead® ThreadLock fills Presta and Schrader valves with ease</li> <li>Built-in tool to tighten or remove two-piece Presta valve cores</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>SmartHead® ThreadLock w/ integrated dust sap<br>Fits Presta / Schrader valves</td> </tr> <tr> <td>BARREL</td> <td>CNC aluminum</td> </tr> <tr> <td>HANDLE</td> <td>Aluminum / Rubber</td> </tr> <tr> <td>CAPACITY</td> <td>160 psi / 11 bar</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Dust cap<br>Includes side mount bracket (Art No. TRR-HP1C)</td> </tr> <tr> <td>SIZE</td> <td>25 x 2.6 x 2.1 cm / 9.8” x 1.0” x 0.8”</td> </tr> <tr> <td>WEIGHT</td> <td>116 g / 4.09 oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>40 cc</td> </tr> </tbody> </table>', array['topeak-race-rocket-hpx/1.jpg', 'topeak-race-rocket-hpx/2.jpg', 'topeak-race-rocket-hpx/3.jpg']::text[], 'new', 2, '2022-04-30'::date, false, false),
  ('topeak-race-rocket-mt', 'Topeak Race Rocket MT', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>Our fattest version in the RaceRocket® series this all aluminum mountain pump gets big volume tires up to pressure fast. This elegant little mini pump features a full aluminum body, head and pump handle and is designed with an increased barrel diameter to push more air per stroke. An extendable hose with SmartHead® ThreadLock fills Presta and Schrader valves with ease and helps take stress off the valve stem when filling the tire. Its efficient and smooth action inflates tires to 90 psi / 6 bar. Compact in size it easily fits in a jersey pocket or saddle bag and with a low weight of only 114 g the RaceRocket® MT is never a burden to carry into the backwoods.</p> <p><strong>Note: Use the PCT Cap to tighten or remove two piece Presta valve cores when necessary.</strong></p> <ul> <li>Extendable hose</li> <li>Side Mount bracket</li> <li>Ultra portable size</li> <li>SmartHead® ThreadLock fills Presta and Schrader valves with ease</li> <li>Built-in tool to tighten or remove two-piece Presta valve cores</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>SmartHead® ThreadLock w/ integrated dust cap<br>Fits Presta / Schrader valves</td> </tr> <tr> <td>BARREL</td> <td>CNC aluminum</td> </tr> <tr> <td>HANDLE</td> <td>Aluminum / Rubber</td> </tr> <tr> <td>CAPACITY</td> <td>90 psi / 6 bar</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Dust cap<br>Includes side mount bracket (Art No. TRR-MT1C)</td> </tr> <tr> <td>SIZE</td> <td>19.6 x 3.7 x 3.3 cm / 7.7” x 1.4” x 1.3”</td> </tr> <tr> <td>WEIGHT</td> <td>126 g / 4.44oz</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>68 cc</td> </tr> </tbody> </table>', array['topeak-race-rocket-mt/1.jpg', 'topeak-race-rocket-mt/2.jpg']::text[], 'new', 2, '2022-04-30'::date, false, false),
  ('topeak-roadie-da', 'Topeak Roadie DA', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>The most compact and lightweight version in the DA pump series easily fits in your jersey pocket. Dual-Action (DA) doubles volume with each stroke and inflates tires to 120 psi / 8 bar. Integrated dust cap keeps pump head clean and thumb lock lever insures air-tight seal.</p> <ul> <li>Dual-Action Technology <ul> <li>Delivers air on the push and pull stroke to inflate tires 2X faster</li> </ul> </li> <li>Side mount bracket</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>Presta with integrated dust cap</td> </tr> <tr> <td>BARREL / THUMB LOCK</td> <td>Aluminum</td> </tr> <tr> <td>HANDLE</td> <td>Plastic</td> </tr> <tr> <td>CAPACITY</td> <td>120 psi / 8 bar</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>36 cc (pull + push)</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Dual-action pumping head<br>Side mount bracket</td> </tr> <tr> <td>SIZE</td> <td>18.3 x 3.2 x 2.8 cm / 7.2” x 1.3” x 1.1”</td> </tr> <tr> <td>WEIGHT</td> <td>95 g / 3.35 oz</td> </tr> </tbody> </table>', array['topeak-roadie-da/1.jpg', 'topeak-roadie-da/2.jpg', 'topeak-roadie-da/3.jpg', 'topeak-roadie-da/4.jpg', 'topeak-roadie-da/5.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-roadie-dax', 'Topeak Roadie DAX', 'topeak', 'bike-care-maintenance', 'pumps-inflation', '<p>The longest and slimmest version in the DA pump series fills high-pressure road tires fast. Dual-Action (DA) doubles volume with each stroke and inflates tires to 120 psi / 8 bar. Integrated dust cap keeps pump head clean and thumb lock lever insures air-tight seal.</p> <ul> <li>Dual-Action Technology <ul> <li>Delivers air on the push and pull stroke to inflate tires 2X faster</li> </ul> </li> <li>Side mount bracket</li> </ul> <table> <tbody> <tr> <td>HEAD</td> <td>Presta with integrated dust cap</td> </tr> <tr> <td>BARREL / THUMB LOCK</td> <td>Aluminum</td> </tr> <tr> <td>HANDLE</td> <td>Plastic</td> </tr> <tr> <td>CAPACITY</td> <td>120 psi / 8 bar</td> </tr> <tr> <td>VOLUME PER STROKE</td> <td>67 cc (pull + push)</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Dual action pumping head<br>Side mount bracket</td> </tr> <tr> <td>SIZE</td> <td>25.8 x 3.2 x 2.8 cm / 10.2” x 1.3” x 1.1”</td> </tr> <tr> <td>WEIGHT</td> <td>118 g / 4.16 oz</td> </tr> </tbody> </table>', array['topeak-roadie-dax/1.jpg', 'topeak-roadie-dax/2.jpg', 'topeak-roadie-dax/3.jpg', 'topeak-roadie-dax/4.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),

  -- ---- bike-care-maintenance · puncture-repair-kits ----
  ('co2refill', 'Co2 Refill', 'crankbrothers', 'bike-care-maintenance', 'puncture-repair-kits', '<h3>CO₂ Canister Refill</h3>
<h3><strong>Compact, Fast &amp; Reliable Inflation</strong></h3>
<p>A CO₂ canister is an essential piece of kit for every ride – it can be the difference between rolling home or making that dreaded phone call for a pickup. Lightweight and portable, these canisters deliver rapid inflation to get you back on the road or trail in seconds.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Quick &amp; easy to use</strong> – inflates tyres rock hard in seconds</p>
</li>
<li>
<p><strong>Compact &amp; portable</strong> – fits easily in a saddle bag or pocket</p>
</li>
<li>
<p><strong>Essential for every ride</strong> – reliable backup when punctures strike</p>
</li>
</ul>', array['co2refill/1.jpg']::text[], 'new', 1, '2021-08-20'::date, false, false),
  ('lezyneclassicpatchkit', 'Lezyne Classic Patch Kit', 'lezyne', 'bike-care-maintenance', 'puncture-repair-kits', '<p><strong></strong><strong>$5.00 Shipping Nationwide / Free On Orders $50.00+</strong></p><ul>
<li>North Island Delivery: 1-2 Working Days</li>
<li>South Island Delivery: 2-4 Working Days</li>
</ul><p><strong><br></strong></p><p><strong>Description:</strong></p><p><strong>Smart Glueless:</strong></p>
<p>The Lezyne Smart Kit has a low profile polypropylene case makes this patch kit ideal for race situations. The glueless patches conform to inflated tubes with an aggressive adhesive making them a permanent repair. The patch kit instructions have an adhesive backing to serve as emergency tire boot. The kit includes a stainless steel scuffer.<br><br></p>
<ul>
<li>Contents: 1 x scuffer, 6 x glueless patches, 1 x tyre boot</li>
<li>Dimensions: 68 x 34 x 3mm</li>
</ul>

<p><strong>Classic:</strong></p>
<p>A traditional, dependable tire patch kit.</p>
<ul>
<li>Contains rubber adhesive (7cc), patches (6 round, 2 oval), stainless scuffer and tire boot</li>
<li>Weight: 27g</li>
</ul>', array['lezyneclassicpatchkit/1.jpg']::text[], 'new', 0, '2021-08-20'::date, false, false),
  ('stans-notubes-dart-tool', 'STAN''S DART TOOL', 'stans', 'bike-care-maintenance', 'puncture-repair-kits', '<p>We developed the Dual Action Repair for Tubeless (DART) tool to fix damaged tires faster, easier and better than existing plug tools. While traditional tire plugs try to wedge rubber strips into a puncture, the DART creates a chemical reaction with your Stan’s sealant to quickly form a permanent airtight bond.</p>
<p>The DART Tool is designed to be extremely light, durable, and easy to fit into pockets and packs, while offering an ergonomic design that’s easy to hold and allows precision DART placement.</p>

<ul>
<li>Reacts with Stan’s sealant to form an instant, airtight seal</li>
<li>Barbed plastic tip anchors into tire and won’t damage rim or cut hands</li>
<li>Flexible fabric bonds with sealant, will not pull out when riding</li>
<li>Tool holds two DART applications for sealing multiple and larger punctures</li>
<li>Clear caps unthread quickly for rapid deployment</li>
<li>Wears off clean, no trimming needed, and can not be felt while riding, even on road tires</li>
<li>Lightweight, compact tool fits the shape of your hand for more precise use and includes built-in valve core remover</li>
</ul>', array['stans-notubes-dart-tool/1.jpg', 'stans-notubes-dart-tool/2.jpg', 'stans-notubes-dart-tool/3.jpg']::text[], 'new', 2, '2021-10-27'::date, false, false),

  -- ---- bike-care-maintenance · tyre-levers ----
  ('topeak-power-lever', 'Topeak Power Lever', 'topeak', 'bike-care-maintenance', 'tyre-levers', '<h4>DESCRIPTION:</h4>

An ingenious lightweight multifunction tool! Two levers connect to form power link pliers for removing or installing a chain’s master link. Power Lever easily separates into two pieces for use as two tire levers. Integrated chain hook holds chain steady while removing or installing master link. *Not compatible with Shimano® QUICK-LINK (SM-CN900-11)

<table>
<tbody>
<tr>
<td>FUNCTIONS</td>
<td>4</td>
</tr>
<tr>
<td>TOOLS</td>
<td>PowerLink pliers, tire levers and stainless steel wire chain hook</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>Engineering grade polymer</td>
</tr>
<tr>
<td>ADDED FEATURE</td>
<td>Chain link storage compartment</td>
</tr>
<tr>
<td>SIZE</td>
<td>11.5 x 2.3 x 1.8 cm / 4.5” x 0.9” x 0.7”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>45 g / 1.59 oz</td>
</tr>
</tbody>
</table>', array['topeak-power-lever/1.jpg', 'topeak-power-lever/2.jpg', 'topeak-power-lever/3.jpg', 'topeak-power-lever/4.jpg', 'topeak-power-lever/5.jpg']::text[], 'new', 0, '2022-06-14'::date, false, false),

  -- ---- bike-care-maintenance · workshop-tools ----
  ('crankbrothers-multi-13', 'Crankbrothers Multi 13', 'crankbrothers', 'bike-care-maintenance', 'workshop-tools', '<ul>
<li>13 high tensile steel multi-tools, including an integrated tire plug tool</li>
<li>Tire plugs come included with a storage case that mounts directly to the tool</li>
<li>The case can be used to conveniently store chain links</li>
</ul>
<h4> </h4>
<table>
<tbody>
<tr>
<td>Hex Wrenches</td>
<td>#2, 2.5, 3, 4, 5, 6, 8</td>
</tr>
<tr>
<td>Length</td>
<td>89mm</td>
</tr>
<tr>
<td>Screw Drivers</td>
<td>Phillips #1 &amp; #2, flat #1</td>
</tr>
<tr>
<td>Specialty Tools</td>
<td>Tire plug tool, tire plugs</td>
</tr>
<tr>
<td>Torx</td>
<td>T-10, T-25</td>
</tr>
<tr>
<td>Warranty</td>
<td>Lifetime</td>
</tr>
<tr>
<td>Weight</td>
<td>164g</td>
</tr>
</tbody>
</table>', array['crankbrothers-multi-13/1.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('crankbrothers-multi-20', 'Crankbrothers Multi 20', 'crankbrothers', 'bike-care-maintenance', 'workshop-tools', '<ul>
<li>20 high tensile steel multi-tools, including an integrated tire plug tool</li>
<li>Tire plugs come included with a storage case that mounts directly to the tool</li>
<li>The case can be used to conveniently store chain links
<h4> </h4>
<table>
<tbody>
<tr>
<td>Chain Tool</td>
<td>8/9/10/11/12 speed compatible</td>
</tr>
<tr>
<td>Hex Wrenches</td>
<td>#2, 2.5, 3, 4, 5, 6, 8</td>
</tr>
<tr>
<td>Length</td>
<td>89mm</td>
</tr>
<tr>
<td>Open Wrench</td>
<td>8mm</td>
</tr>
<tr>
<td>Screw Drivers</td>
<td>Phillips #1 &amp; #2, flat #1</td>
</tr>
<tr>
<td>Specialty Tools</td>
<td>Tire plug tool, tire plugs, valve core removal tool, rotor straightener</td>
</tr>
<tr>
<td>Spoke Wrench</td>
<td>#0, 1, 2</td>
</tr>
<tr>
<td>Torx</td>
<td>T-10, T-25</td>
</tr>
<tr>
<td>Warranty</td>
<td>Lifetime</td>
</tr>
<tr>
<td>Weight</td>
<td>203g</td>
</tr>
</tbody>
</table>
</li>
</ul>', array['crankbrothers-multi-20/1.jpg', 'crankbrothers-multi-20/2.png']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('crankbrothers-multi-5', 'Crankbrothers Multi 5', 'crankbrothers', 'bike-care-maintenance', 'workshop-tools', '<p>The Multi 5 is compact and light with the 5 most common tools needed. Small enough to fit into any pocket.</p>', array['crankbrothers-multi-5/1.jpg', 'crankbrothers-multi-5/2.jpg', 'crankbrothers-multi-5/3.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('dynamic-cleaner-bio-filth-fighter', 'Dynamic Cleaner Bio Filth Fighter', 'dynamic-bike-care', 'bike-care-maintenance', 'workshop-tools', '<h3>DYNAMIC BIO FILTH FIGHTER 1000ML</h3>

<h3>DESCRIPTION</h3>

<h3><strong>THE BEST BIKE CLEANER MONEY CAN BUY!</strong></h3>
<br>
<p>This high-performance bike cleaner spray allows you to easily clean every part of your bike, including your drivetrain. The formula is optimized to dissolve the most stubborn dirt like mud, oil and sweat without harming your bike, its parts, or the environment. The premium ingredients neutralize corrosive acids and salts completely and in no time. Bio Filth Fighter is suitable for all mild to heavily soiled parts of bicycles and 100% carbon safe. The unique formula is a favorite of several pro cycling team mechanics.</p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Bio Filth Fighter is a very effective, planet-friendly bike cleaner for all types of bikes. Now with extra trigger that transforms your cleaning session into a foam party.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p>The trigger spray is designed to ensure uniform distribution and apply the bike cleaner evenly on your bike including those hard-to-reach spots. For the best results, let Bio Filth Fighter soak for a couple of minutes, agitate stubborn dirt with a brush and rinse with clean water. Tip: Switch between foam and the traditional spray by opening the foam cover at the front of the additional trigger.</p>', array['dynamic-cleaner-bio-filth-fighter/1.webp']::text[], 'new', 2, '2024-04-18'::date, false, false),
  ('feedback-sports-3-way-fixed-tools', 'FEEDBACK SPORTS - 3-WAY FIXED TOOLS', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>Bicycle maintenance is often delicate, precision work. Having an ergonomic allen wrench set or torx bit set in the palm of your hand is an ideal resource for any mechanic. We offer 2 unique Fixed 3-Way allen wrench sets (2, 2.5, 3mm &amp; 4, 5, 6mm) and 1 Fixed 3-Way torx bit set (T25, T27, T30). With these three tools alone, installing bike accessories or making component adjustments is quick and simple. Available individually, or find them in our Team Edition and Ride Prep Tool Kits.<br> <br> • 2 / 2.5 / 3mm Allen wrench set<br> • 4 / 5 / 6mm Allen key set<br> • T25 / T27 / T30 Torx bit set<br> • Ergonomic, overmolded rubber grip for comfort and precision<br> • Durable polymer core creates a flex-free platform for confidently turning tight bolts<br> • Hardened CRV tool steel maintains precise contact edges<br> • Suitable for low and high torque adjustments on bicycle-specific components<br> • Found in our Team Edition and Ride Prep Tool Kits<br> • Limited Lifetime Warranty</p>', array['feedback-sports-3-way-fixed-tools/1.jpg', 'feedback-sports-3-way-fixed-tools/2.jpg', 'feedback-sports-3-way-fixed-tools/3.jpg', 'feedback-sports-3-way-fixed-tools/4.jpg', 'feedback-sports-3-way-fixed-tools/5.jpg']::text[], 'new', 0, '2021-09-16'::date, false, false),
  ('feedback-sports-adjustable-pliers-wrench', 'FEEDBACK SPORTS - ADJUSTABLE PLIERS WRENCH', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>The Adjustable Pliers Wrench is a multipurpose wrench for a multitude of tasks on any bike. </strong></p>
<p>Parallel-clamping, slip-lock jaws fit any nut up to 35mm for quick work on traditional fasteners. In action, the user’s grip clamp force helps prevent the tool from coming off and rounding the edges of wrench flats the way a traditional box-end wrench can do. Plus, the adjustable size makes this one tool a suitable replacement for a full set of box end wrenches. The compact size accommodates precision work in tight spaces and will compliment professional-grade portable kits and DIY home workshops alike.</p>
<ul>
<li>Compact 180mm forged steel body with double dipped, rubber textured grip.</li>
<li>2-Sided laser etched metric scale helps demarcate clamp opening and determine fastener size.</li>
<li>Functional jaw opening range of 0mm-35mm covers the majority of bicycle hardware.</li>
<li>Replaces an entire set of Metric and SAE wrenches and sockets up to 35mm - saving space in travel and home kits.</li>
<li>Spring-loaded push button allows fast, slip-lock adjustment of jaw opening.</li>
<li>Smooth surface, non-marring jaws prevent damage to surfaces.</li>
<li>Durable, 45 HRC jaw hardness for a long service life.</li>
<li>Ideal hand tool to complete professional grade portable kits and DIY home workshops alike.</li>
<li>
Effective in use on fork top caps, brake bleed ports, axle nuts, pedals, and more.<br><br>
</li>
</ul>

<p><a></a></p>', array['feedback-sports-adjustable-pliers-wrench/1.jpg', 'feedback-sports-adjustable-pliers-wrench/2.jpg', 'feedback-sports-adjustable-pliers-wrench/3.jpg', 'feedback-sports-adjustable-pliers-wrench/4.jpg', 'feedback-sports-adjustable-pliers-wrench/5.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('feedback-sports-biolever-tyre-levers', 'FEEDBACK SPORTS - BIOLEVER TYRE LEVERS', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><br>Our new Biolever tyre levers are made with biobased nylon, merging a progressive, sustainable material with inspired design. Delivered as a pair of nesting, snap-together tyre levers, the compact form makes for easy everyday carry yet gives up nothing in function.</p>
<p>Optimized hook geometry easily hooks under the tightest tyre beads, and the reinforced bead hook optimizes strength and durability. The curved grip is ergonomic and comfortable for maximizing leverage, with spoke slots to hold levers in place during use. Strong and durable, Bioleve s were developed and tested to the highest strength benchmarks and will stand up to years of use</p>
<ul>
<li>Made with biobased nylon.</li>
<li>Reinforced bead hook.</li>
<li>Spoke hook on each lever.</li>
<li>Set of two tire levers snap together for easy storage.</li>
<li>Ergonomic shape for comfortable use.</li>
<li>High strength material handles the tightest tires.</li>
<li>SAG (Sustainability Action Group) Attributes:</li>
</ul>
<p><strong>Product:</strong> made with biobased nylon; curbside recyclable.<br><strong>Packaging:</strong> Minimal packaging (thin wrap tag) per pair</p>

<p><a></a></p>', array['feedback-sports-biolever-tyre-levers/1.jpg', 'feedback-sports-biolever-tyre-levers/2.jpg', 'feedback-sports-biolever-tyre-levers/3.jpg', 'feedback-sports-biolever-tyre-levers/4.jpg', 'feedback-sports-biolever-tyre-levers/5.jpg']::text[], 'new', 1, '2025-09-18'::date, false, false),
  ('feedback-sports-cable-housing-cutter-2-0', 'FEEDBACK SPORTS - CABLE & HOUSING CUTTER 2.0', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>At the heart of every bicycle is flush-cut housing, and cleanly cut and crimped cables. The Cable and Housing Tool manages these tasks with precision and elegance. </strong></p>
<p>Optimized for bicycle-specific applications, the Cable and Housing Cutter 2.0 is a multifunction tool to meet the needs of DIY enthusiasts and professionals alike.</p>
<p>Individual cutting zones for cables and housing optimizes cutting action for different diameters. Forged and hardened tool steel construction provides a durable, precision cutting edge. Ergonomic, dual density handles with file tread rubber grips provide hours of comfortable duty and a thumb lock keeps the tool closed when not in use. An integrated crimper jaw securely fastens cable end caps and a pick in the pivot nut helps open cable housing after cutting.</p>
<ul>
<li>16.3 cm dual zone cable and housing cutter</li>
<li>Cuts all bicycle-specific cable and housing.</li>
<li>Typical cable diameter 2mm and housing diameter 6mm.</li>
<li>Integrated pointed pick to open cable housing ends.</li>
<li>Integrated crimper jaw for securing bicycle cable end caps.</li>
<li>Spring loaded handle with dual-density, overmolded file tread rubber grip.</li>
<li>Locking closure latch keeps tool closed when not in use.</li>
</ul>

<p><a></a></p>', array['feedback-sports-cable-housing-cutter-2-0/1.jpg', 'feedback-sports-cable-housing-cutter-2-0/2.jpg', 'feedback-sports-cable-housing-cutter-2-0/3.jpg', 'feedback-sports-cable-housing-cutter-2-0/4.jpg', 'feedback-sports-cable-housing-cutter-2-0/5.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('feedback-sports-cable-housing-cutters', 'FEEDBACK SPORTS - CABLE & HOUSING CUTTERS', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>At the heart of every bicycle is flush-cut housing, and cleanly cut and crimped cables. The Cable and Housing Tool manages these tasks with precision and elegance. The cold-forged, hardened CRV tool steel arms and precision-faced cutting jaws, even the stiffest housing gets a perfect cut every time. The built-in crimper perfectly secures housing ferrules and cable end-caps, and a closure latch keeps the jaws protected when not in use. These cutter-crimpers are perfect for learning bike maintenance, or for veteran mechanics. Available separate, or found in our Team Edition Tool Kit.<br> <br> • Squarely cuts even the stiffest compression-less housing<br> • Cold-forged and hardened CRV tool steel arms prevent flex for easier cuts<br> • Creates perfect cable cuts, preventing fraying or damaged ends<br> • Precision-faced cutting jaws stay sharp and prevent cable and housing distortion<br> • Crimping tool creates capped cables without risk of damaging ends<br> • Closure latch keeps tool closed when not in use<br> • Overmolded file tread handles promote comfort and control during challenging cuts<br> • Designed to work on all types of bikes<br> • Found in the Team Edition Tool Kit</p>', array['feedback-sports-cable-housing-cutters/1.jpg', 'feedback-sports-cable-housing-cutters/2.jpg', 'feedback-sports-cable-housing-cutters/3.jpg', 'feedback-sports-cable-housing-cutters/4.jpg', 'feedback-sports-cable-housing-cutters/5.jpg']::text[], 'new', 1, '2025-09-18'::date, false, false),
  ('feedback-sports-diagonal-cutters', 'FEEDBACK SPORTS - DIAGONAL CUTTERS', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>The Mini Diagonal Cutters are perfect to complete professional-grade portable kits and DIY home workshops alike. </strong></p>
<p>With a compact size, hardened steel cutting jaws, and comfortable, secure textured file tread rubber grips, these cutters promise hours of fatigue-free service on repair projects. The flush cutting working edges are ideal for trimming cable ties, soft solid-strand wire such as safety wire, and crimping braided control wire end caps.</p>
<ul>
<li>Compact 127 mm length – lightweight, portable, and easy to use.</li>
<li>Snub-nosed cutting wedge has a flush-cut outer chamfer for close cuts against precision surfaces.</li>
<li>File tread textured grips with firm but comfortable rubber surface for hours of fatigue-free use.</li>
<li>Spring-loaded jaws for reliable opening (retraction).</li>
<li>12.5 mm cutting surface length.</li>
<li>Use for cutting single-strand wires, zip ties, and crimping end caps.</li>
<li>1.5mm wire capacity for cutting.</li>
<li>Chamfered inner cutting edges with flush-cut outer edges.</li>
<li>Inner cutting edges intended for soft, solid-strand wire materials and zip ties.</li>
<li>Long-life, 60 HRC cutting edge hardness.</li>
<li>Ideal hand tool to complete professional grade portable kits and DIY home workshops alike.</li>
</ul>

<p><a></a></p>', array['feedback-sports-diagonal-cutters/1.jpg', 'feedback-sports-diagonal-cutters/2.jpg', 'feedback-sports-diagonal-cutters/3.jpg', 'feedback-sports-diagonal-cutters/4.jpg', 'feedback-sports-diagonal-cutters/5.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('feedback-sports-grip-whip', 'FEEDBACK SPORTS - GRIP WHIP', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>Intuitive and easy to use, the new Grip Whip cassette removal tool makes quick work of any cog removal project.</strong></p>
<p>Designed for ambidextrous one-handed operation with an ergonomic, textured rubber handle for comfortable grip, this tool is compatible with all 5-13 speed cogsets from SRAM, Shimano and Campagnolo, including SRAM Transmission. Simply depress the thumb lever to open, then let the tool’s spring-assist jaw closure latch onto any cog from 10-24T with 6 points of secure, slip-free contact.</p>
<p>And if more lockring torque than usual is required, extend the handle and add leverage by using an 8mm L-handle hex wrench in the handle’s 8mm receiver.</p>
<ul>
<li>31.1cm length is compact for travel yet comfortable for high-leverage applications.</li>
<li>Spring assisted cog jaw closure gently yet securely holds cogs.</li>
<li>High-quality KMC chain links with 6 points of contact for secure grip on cogs.</li>
<li>Compatible with 5-13 speed SRAM (including Transmission), Shimano, and Campagnolo cassettes.</li>
<li>One-handed, ambidextrous thumb lever actuation for fast, intuitive cog jaw opening.</li>
<li>Spring assisted cog jaw closure for secure hold on cassette cogs from 10-24T.</li>
<li>Ergonomic, overmolded bi-material handle with comfortable, file tread rubber grip.</li>
<li>8mm hex receiver for adding leverage via 8mm L-handle hex wrench.</li>
</ul>

<p><a></a></p>', array['feedback-sports-grip-whip/1.jpg', 'feedback-sports-grip-whip/2.jpg', 'feedback-sports-grip-whip/3.jpg', 'feedback-sports-grip-whip/4.jpg', 'feedback-sports-grip-whip/5.jpg']::text[], 'new', 1, '2025-09-18'::date, false, false),
  ('feedback-sports-hex-wrench-set', 'FEEDBACK SPORTS - HEX WRENCH SET', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>The Hex Wrench Set is an essential element of tool kits for professional and DIY mechanics alike.</strong></p>
<p>This premium set of 9 metric hex (Allen) wrenches with upgraded features includes all the standard sizes from 1.5mm to 10mm.</p>
<p>Made from durable S2 steel for long life and precise working edges. Anti-slip ribbed heads and faceted ball ends give positive engagement with fasteners. Each tool is magnetized for convenient pick up of ferrous-based fasteners. Laser etching aids with tool size identification and the rugged, color-contrasting case conveniently secures the set.</p>
<ul>
<li>9 piece, S2 Steel Hex Wrench Set includes: 1.5, 2, 2.5, 3, 4, 5, 6, 8 and 10mm sizes.</li>
<li>Each hex key is magnetized and includes a faceted ball end and a ribbed head.</li>
<li>25-degree faceted ball end gives better hardware engagement at set angles.</li>
<li>Ribbed head increases fastener attachment under load, reducing cam-outs and stripped hardware.</li>
<li>Magnetized tools provide secure fastener hold for delicate sizes and hard to reach locations.</li>
<li>Each tool (4mm and above) is laser etched with sizing for easy identification.</li>
<li>Case included with sizes marked for easy identification and organization.</li>
<li>Ideal hand tool to complete professional grade portable kits and DIY home workshops alike.</li>
</ul>

<p><a></a></p>', array['feedback-sports-hex-wrench-set/1.jpg', 'feedback-sports-hex-wrench-set/2.jpg', 'feedback-sports-hex-wrench-set/3.jpg', 'feedback-sports-hex-wrench-set/4.jpg', 'feedback-sports-hex-wrench-set/5.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('feedback-sports-mini-needle-nose-pliers', 'FEEDBACK SPORTS - MINI NEEDLE-NOSE PLIERS', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>The Mini Needle Nose Pliers are perfect to complete professional-grade portable kits and DIY home workshops alike. With a compact size, hardened steel jaws, and comfortable, secure textured file tread rubber grips, these pliers promise hours of fatigue-free service. Knurled primary working surfaces plus long-life, chamfered inner cutting edges deliver versatile performance across a range of tasks.</strong></p>
<ul>
<li>Compact 159 mm length – lightweight, portable, and easy to use.</li>
<li>Pointed half-round precision jaws with knurled working surfaces for secure hold on projects.</li>
<li>File tread textured grips with firm but comfortable rubber surface for hours of fatigue-free use.</li>
<li>Spring-loaded jaws for reliable opening (retraction).</li>
<li>30.5 mm jaw length with serrated surface for gripping.</li>
<li>Use for gripping and cutting fine materials on any bicycle-scale repair project.</li>
<li>1.5mm wire capacity for cutting.</li>
<li>Inner cutting edges intended for soft, solid-strand wire materials and zip ties.</li>
<li>Long-life, 60 HRC cutting edge hardness.</li>
<li>Durable, 45 HRC jaw hardness for a long service life.</li>
<li>Ideal hand tool to complete professional grade portable kits and DIY home workshops alike.</li>
</ul>

<p><a></a></p>', array['feedback-sports-mini-needle-nose-pliers/1.jpg', 'feedback-sports-mini-needle-nose-pliers/2.jpg', 'feedback-sports-mini-needle-nose-pliers/3.jpg', 'feedback-sports-mini-needle-nose-pliers/4.jpg']::text[], 'new', 0, '2025-09-20'::date, false, false),
  ('feedback-sports-modular-t-handle-kit-hex-torx-wrench-set', 'FEEDBACK SPORTS - MODULAR T-HANDLE KIT - HEX & TORX WRENCH SET', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>Precision, portability, innovation, and durability are words most often associated with Feedback Sports tools, and the all-new Modular T-Handle Kit is no exception.</strong></p>
<p>The NEW Modular T-Handle Kit provides an unparalleled combination of portability and functionality in a complete Hex and Torx wrench set. With removable lateral bars, mechanics can mix and match the driver sizes, plus tuck the entire kit into the most compact tool roll available.<br><br>The multifunctional roll integrates with our Team Edition case or hangs from a pegboard</p>
<ul>
<li>Set of 10, color coded Hex and Torx wrenches in a compact roll:</li>
</ul>
<p><strong>7 Hex:</strong> 2, 2.5, 3, 4, 5, 6, 8/10mm<br><strong>3 Torx:</strong> T10, T25, T30</p>
<ul>
<li>Precision CNC machined tool bodies.</li>
<li>Compact length allows for lighter weight, portability, and appropriate torque applications for bicycles.</li>
<li>Knurled spinner sleeves on each wrench for convenient and fast driving/removal of fasteners.</li>
<li>3mm and 5mm machined tapered ends for deep set hardware access.</li>
<li>3-position sliding lateral bars – sliding allows for easier fit into hard-to-reach places.</li>
<li>Lateral bars can be completely removed for pen-drive applications in tight spots and for compact storage.</li>
<li>Lateral bars and drivers can be swapped and combined to customize the set.</li>
<li>Tool roll included – highly compact for portability.</li>
<li>Adjustable G-hook closure for secure storage.</li>
<li>Tool roll is compatible with the Team Edition case – includes Velcro to secure to case.</li>
<li>Tool roll includes grommets to allow peg wall hanging.</li>
<li>SAG (Sustainability Action Group) attributes: PFAS-free tool roll. Plastic-free, 80% recycled paperboard box</li>
</ul>

<p><a></a></p>', array['feedback-sports-modular-t-handle-kit-hex-torx-wrench-set/1.jpg', 'feedback-sports-modular-t-handle-kit-hex-torx-wrench-set/2.jpg', 'feedback-sports-modular-t-handle-kit-hex-torx-wrench-set/3.jpg', 'feedback-sports-modular-t-handle-kit-hex-torx-wrench-set/4.jpg', 'feedback-sports-modular-t-handle-kit-hex-torx-wrench-set/5.jpg']::text[], 'new', 1, '2025-09-18'::date, false, false),
  ('feedback-sports-pro-mechanic-bike-repair-stand', 'FEEDBACK SPORTS - PRO MECHANIC BIKE REPAIR STAND', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>Introducing the new Pro Mechanic bike repair stand from Feedback Sports. Based on our winning designs and proven engineering, this repair stand sets a new standard in lightweight, portable, and functional support for the modern bikes we love to ride.</p>
<p>In the shop, on the go, or at the races, the Pro Mechanic redefines bicycle maintenance capability. Add a <a>Pro Truing Stand</a>, <a>Bottle Opener</a>, and Team Edition Tool Kit for the perfect service setup.</p>
<p>Oversized, anodized 6061 T6 aluminum construction is ultralight, corrosion-resistant and incredibly durable.</p>
<ul>
<li>NEW spinner knob for fast closure and micro adjustability with our patented, Speed Ratcheting seatpost clamp</li>
<li>NEW Larger rear tri knob provides increased ergonomics and leverage for tightening the clamp body.</li>
<li>NEW mast tube collar design for sturdy, stable support and long service life</li>
<li>NEW internal clutch design provides 110% increased holding power for 36-degree rotating clamp compared to its predecessor.</li>
<li>NEW Tool free replaceable rubber clamp jaw pads for secure grip and easy service</li>
<li>Anodized 6061 T6 aluminum construction is ultralight, corrosion resistant and incredibly durable</li>
<li>Stiff tripod base and rubber feet create ultimate stability even on uneven surfaces; load capacity of 75lbs (34kg) accommodates service on all bikes</li>
<li>Portable and compact construction for service in any environment
</li>
</ul>', array['feedback-sports-pro-mechanic-bike-repair-stand/1.jpg', 'feedback-sports-pro-mechanic-bike-repair-stand/2.jpg', 'feedback-sports-pro-mechanic-bike-repair-stand/3.jpg', 'feedback-sports-pro-mechanic-bike-repair-stand/4.jpg', 'feedback-sports-pro-mechanic-bike-repair-stand/5.jpg']::text[], 'new', 1, '2025-05-19'::date, false, false),
  ('feedback-sports-pro-mechanic-hd-bike-repair-stand', 'FEEDBACK SPORTS - PRO MECHANIC HD BIKE REPAIR STAND', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>Introducing the Pro Mechanic HD bike repair stand from Feedback Sports. Based on our winning designs and proven engineering, this repair stand sets a new standard in lightweight, portable, and functional support for the modern bikes we love to ride.</p>
<p>With oversized, anodized aluminum tubes, a wide and stable base, stronger jaws, and faster closure, the Pro Mechanic HD matches the expanded capability of today’s bicycles. It can support bikes up to 100 pounds (45kg) and tube diameters to 2.6 inches (6.6cm). Yet it’s lightweight and portable at 18 pounds (8kg) and 8”x43” (21cmx115cm) when folded for travel.</p>
<p>In the shop, on the go, or at the races, the Pro Mechanic HD redefines bicycle maintenance capability. Add a <a>Pro Truing Stand</a>, <a>Bottle Opener</a>, and Team Edition Tool Kit for the perfect service setup.</p>
<p>Oversized, anodized 6061 T6 aluminum construction is ultralight, corrosion-resistant and incredibly durable.</p>
<ul>
<li>Ideally suited for heavier bicycles: 145% stiffer than Pro Elite.</li>
<li>Stiff tripod base and rubber-coated end caps create ultimate stability even on uneven surfaces.</li>
<li>Total load capacity of 100lbs (45kg) accommodates service on all road, cyclocross, mountain bikes, and electric bikes.</li>
<li>Oversized knob to fix the position of a 360-degree rotating clamp, providing easy access to all parts of your bicycle.</li>
<li>Strong clutch design holds bike at any angle for repairs: 45% greater grip than Pro Elite.</li>
<li>New, ratcheting and rotating crank for jaw closure is faster and one-hand operable: closes 60% faster than Pro Elite.</li>
<li>Clamp opening up to 2.6″ (6.6cm) accommodates the largest diameter frame tubes</li>
<li>New, replaceable rubber pads on forged clamp and micro-adjustment secures and protects expensive components and beautifully painted frames.</li>
<li>Portable and compact construction creates a remarkably small folded footprint of 5″ x 8″ x 45″ (13 x 21 x 115cm)</li>
<li>Quick-release fittings make setup and storage fast and easy</li>
<li>At 18lbs (8kg), hitting the road with this stand is never in question</li>
<li>3-Year Warranty</li>
</ul>', array['feedback-sports-pro-mechanic-hd-bike-repair-stand/1.jpg', 'feedback-sports-pro-mechanic-hd-bike-repair-stand/2.jpg', 'feedback-sports-pro-mechanic-hd-bike-repair-stand/3.jpg', 'feedback-sports-pro-mechanic-hd-bike-repair-stand/4.jpg', 'feedback-sports-pro-mechanic-hd-bike-repair-stand/5.jpg']::text[], 'new', 1, '2025-05-19'::date, false, false),
  ('feedback-sports-range-click-torque-wrench', 'FEEDBACK SPORTS - RANGE CLICK TORQUE WRENCH', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>The NEW Range Click Torque Wrench replaces its predecessor with solid, tactile click-torque function, a wide measurement range, user-friendly ergonomics, and shop-quality fit and finish. With 13, high precision S2 tool steel bits and a protective, compact, and weather resistant TPU foldup style case, this tool is a perfect companion for safe, secure repairs in the shop or on the go.</strong></p>
<ul>
<li>Kit includes a click-type ratcheting torque wrench handle, 13 high-precision S2 steel bits, and a protective TPU case with loops to secure the tool.</li>
<li>Standard length (25mm) hex bits: 2, 2.5, 3, 4, 5, 6, 8mm.</li>
<li>Standard length Torx ® bits: T10, T25, T30.</li>
<li>Extended length (50mm) bits: 4, 5mm hex; T25 Torx ®.</li>
<li>Torque measurement from 2-14Nm, adjustable in 0.17Nm increments, scale displayed in 1Nm increments.</li>
<li>Dual-sided window display scale allows easier ambidextrous usability and permits larger, easier to read torque setting numbers.</li>
<li>Accurate within +/- 4% for 4,000 cycles.</li>
<li>Torque wrench handle features magnetic, 72-tooth ratchet, dual-sided torque setting window, dual-direction torque measurement compatible for right- and left-hand threaded bolts.</li>
<li>Plastic-free head and handle.</li>
<li>PFAS-free tool roll.</li>
<li>Plastic-free, 80% recycled paperboard packaging.</li>
<li>Weight of wrench by itself: 148gr*</li>
<li>Weight of wrench in tool roll with bits: 278gr*</li>
<li>Length of wrench by itself: 144mm.</li>
<li>Length of wrench in tool roll: 170mm.</li>
</ul>

<p><a></a></p>', array['feedback-sports-range-click-torque-wrench/1.jpg', 'feedback-sports-range-click-torque-wrench/2.jpg', 'feedback-sports-range-click-torque-wrench/3.jpg', 'feedback-sports-range-click-torque-wrench/4.jpg', 'feedback-sports-range-click-torque-wrench/5.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('feedback-sports-range-twist-torque-wrench', 'FEEDBACK SPORTS - RANGE TWIST TORQUE WRENCH', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>The Range Twist Torque Wrench introduces a novel, compact form factor, intuitive function, and clever bit storage in an affordable package. Slender when closed and deployed for use with an ergonomic T-handle, the Range Twist accommodates 10 fastener sizes with only 6 bits. Quickly apply desired torque from 2-8Nm as indicated by the intuitive, easy to read laser-etched indicator scribes. No presetting required, Range Twist delivers fast and accurate torque in a clever tool.</p>
<p><strong><br>KEY FEATURES</strong></p>
<ul>
<li>2-8 Nm torsion bar style torque wrench with S2 bits and folding T-style handle.</li>
<li>Internal bit storage and folding handle offer a sleek, compact carry-along form.</li>
<li>Six, 4mm hex shank bits made from S2 steel are included, covering 10 sizes: 2, 2.5, 3, 4, 5, 6mm Hex. T10, T25 Torx (25mm length). #2 Phillips and 3.5mm flat head (25mm length).</li>
<li>4mm hex bit shank allows for compact form and internal storage.</li>
<li>No presetting torque value or installation of torque bit required – just twist to desired torque.</li>
<li>Modular form (T-handle to pen drive) grants access to most common hardware.</li>
<li>Intuitive laser etched torque value indicators.</li>
<li>Scale displayed in 1 Nm increments.</li>
<li>CNC aluminum body with magnetic steel bit receiver.</li>
</ul>

<p><a></a></p>', array['feedback-sports-range-twist-torque-wrench/1.jpg', 'feedback-sports-range-twist-torque-wrench/2.jpg', 'feedback-sports-range-twist-torque-wrench/3.jpg', 'feedback-sports-range-twist-torque-wrench/4.jpg', 'feedback-sports-range-twist-torque-wrench/5.jpg']::text[], 'new', 1, '2025-09-18'::date, false, false),
  ('feedback-sports-reflex-fixed-torque-bit-driver-bit-stora', 'FEEDBACK SPORTS - REFLEX FIXED TORQUE BIT DRIVER (BIT STORAGE + 5NM TORQUE)', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>Compact and clever, the Reflex Fixed Torque Bit Driver contains the bare essentials for safe, secure mid-ride repairs. Featuring a hollow, ergonomic T-style driver handle with internal storage for a 5Nm preset torque bit plus four S2 steel driver bits, this simple tool is a compact, ride-saving companion.</p>
<p>Non-ratcheting driver function is simple and sleek. Selection of four bits based on most common bike applications. Based on standard ¼”-sized driver bits for easy cross-compatibility with any accessory bits. A perfect balance of affordable price, elegant function, and compact size.</p>
<ul>
<li>Ergonomic T-style handle with magnetic bit receiver.</li>
<li>Integrated storage for 4 standard bits and 1 preset (fixed) torque extension.</li>
<li>Four labeled S2 Steel bits: 4mm, 5mm, 6mm, and Torx® T25.</li>
<li>5Nm torque extension for safe, precise, and secure tightening of sensitive parts.</li>
<li>Torque bit delivers accurate torque (+/- 4%) for up to 3000 cycles</li>
<li>Sleek, compact form factor easily fits in jersey pockets and bags for on-the-go convenience.</li>
<li>Perfect balance of ergonomics, size and functionality for basic repairs mid-ride or away from home.</li>
<li>SAG (Sustainability Action Group) Attributes: 80% recycled paperboard.</li>
</ul>

<p><a></a></p>', array['feedback-sports-reflex-fixed-torque-bit-driver-bit-stora/1.jpg', 'feedback-sports-reflex-fixed-torque-bit-driver-bit-stora/2.jpg', 'feedback-sports-reflex-fixed-torque-bit-driver-bit-stora/3.jpg', 'feedback-sports-reflex-fixed-torque-bit-driver-bit-stora/4.jpg', 'feedback-sports-reflex-fixed-torque-bit-driver-bit-stora/5.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('feedback-sports-reflex-fixed-torque-extension-4nm-5nm-6n', 'FEEDBACK SPORTS - REFLEX FIXED TORQUE EXTENSION (4NM / 5NM / 6NM)', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>Reflex Fixed Torque bit extensions are perfect for expanding the range of torque values you can achieve while using the bit and driver of your choice. These preset, torque-limiting extensions are based on standard ¼”-drive sizing for easy cross-compatibility with any accessory bits and drivers.</p>
<p>Speed up bolt torque safety checks and quickly achieve proper fastener torque during adjustments either mid-ride or at home. Delivers accurate torque (+/- 4%) for up to 3000 cycles.</p>
<p><strong>Each bit extension is sold separately.</strong></p>
<ul>
<li>Color-coded, fixed torque extensions available packaged separately in 4, 5, and 6Nm torque values.</li>
<li>Torque extensions accept any ¼” standard bit.</li>
<li>Suitable for use with any ¼” driver, including Feedback Reflex Ratchet Kit and Reflex Bit Driver.</li>
<li>Individually packaged for easy customization of ride-along and at-home tool kits.</li>
<li>SAG (Sustainability Action Group) Attributes: 80% recycled paperboard.</li>
</ul>

<p><a></a></p>', array['feedback-sports-reflex-fixed-torque-extension-4nm-5nm-6n/1.jpg', 'feedback-sports-reflex-fixed-torque-extension-4nm-5nm-6n/2.jpg']::text[], 'new', 0, '2025-09-20'::date, false, false),
  ('feedback-sports-reflex-fixed-torque-ratchet-kit', 'FEEDBACK SPORTS - REFLEX FIXED TORQUE RATCHET KIT', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>Precision, portability, innovation, and durability are words most often associated with Feedback Sports tools, and the all-new Reflex Fixed Torque Ratchet Kit is no exception.</p>
<p>Introducing the first everyday carry, ride-ready tool kit from Feedback Sports. Featuring a compact, modular ratcheting handle and ten of the most commonly used bits, this 5Nm ratcheting torque wrench is made for making safe and secure mid-ride repairs. Despite its light weight and compact size, the ratchet drive internals are precise and sturdy. The modular knurled handle and extension socket are comfortable to grip and can easily be configured to access tight spaces. Combined with the durable, S2 tool steel bits and pre-set 5NM click-torque extension, mid-ride adjustments have never been safer, faster or easier. Confidently secure the most sensitive parts of your bicycle, like carbon fiber handlebars, seatposts, and stems.</p>
<p>This handy kit is just as suitable in the shop as it is on the go. The included EVA foam case is ideal for carrying in a jersey pocket, travel kit, or keeping in the car at all times, for any occasion.</p>
<ul>
<li>Precision Allen/Hex</li>
<li>Precision Torx</li>
<li>S2 premium Steel</li>
<li>TPU Travel case</li>
<li>CNC Machined</li>
</ul>', array['feedback-sports-reflex-fixed-torque-ratchet-kit/1.jpg', 'feedback-sports-reflex-fixed-torque-ratchet-kit/2.jpg', 'feedback-sports-reflex-fixed-torque-ratchet-kit/3.jpg', 'feedback-sports-reflex-fixed-torque-ratchet-kit/4.jpg', 'feedback-sports-reflex-fixed-torque-ratchet-kit/5.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('feedback-sports-pro-elite-repair-stand', 'FEEDBACK SPORTS - REPAIR STAND SERVICE PARTS', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>The Pro Elite Bike Repair Stand is the premier portable and home service partner for the most demanding bike mechanics. Its lightweight, compact, and durable design delivers unmatched stability, adjustability and portability. The patented ratchet-action closure and speed release clamp is capable of managing any bike frame, up to 39kg and tube diameter up to 6.6cm.</p>
<ul>
<li>Patented clamp features ratchet-action closure, micro-adjustability and push-button release</li>
<li>360-degree rotating clamp design provides easy access to any part of your bicycle</li>
<li>Frame clamp adjusts from 107-180cm in height</li>
<li>Rubber-coated clamp and micro-adjustment secures and protects expensive components and beautifully painted frames</li>
<li>Clamp opening up to 6.6cm accommodates the largest diameter seatposts</li>
<li>Anodized 6061 T6 aluminum construction is light, corrosion resistant and durable</li>
<li>Quick-release fittings make setup and storage fast and easy</li>
<li>Stiff tripod base and rubber-coated end caps create stability even on uneven surfaces</li>
<li>Total load capacity of 39kg accommodates service on road, cyclocross, mountain bikes, and even electric bikes</li>
<li>Portable design creates a compact folded footprint of 13 x 20 x 115cm</li>
<li>At 5.7kg, hitting the road with this stand is never in question</li>
<li>3-Year Warranty</li>
</ul>', array['feedback-sports-pro-elite-repair-stand/1.jpg', 'feedback-sports-pro-elite-repair-stand/2.jpg', 'feedback-sports-pro-elite-repair-stand/3.jpg', 'feedback-sports-pro-elite-repair-stand/4.jpg', 'feedback-sports-pro-elite-repair-stand/5.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('feedback-sports-ultralight-repair-stand', 'FEEDBACK SPORTS - REPAIR STAND TOOL TRAY', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>At nearly 20% lighter than our (already) lightweight stand collection, the Ultralight takes no performance shortcuts to achieve its feathery 4.8kg total weight. Despite a slender scale reading it still possess the same durability and stability of our other stands. With the 360° rotating Slide-Lock clamp and a 137cm wide base with rubber-coated end caps, confidence in the security of your bike is never in question.<br><br></p>
<ul>
<li>Clamp features Slide-Lock ratchet for quick closure and Amplifying Clutch for precision clamping pressure</li>
<li>360° rotating clamp design provides easy access to any part of your bicycle</li>
<li>Frame clamp adjusts from 90-145cm in height; oriented vertical, horizontal, and everything in-between</li>
<li>Rubber-coated clamp secures and protects expensive components and beautifully painted frames</li>
<li>Clamp opening up to 4.8cm accommodates large diameter frame tubes</li>
<li>Anodized 6061 T6 aluminum construction is lightweight, corrosion resistant and incredibly durable</li>
<li>Stiff tripod base and rubber-coated end caps create ultimate stability even on uneven surfaces</li>
<li>Total load capacity of 39kg accommodates service on most road, cyclocross, mountain bikes, and electric bikes</li>
<li>Portable and compact construction creates a remarkably small folded footprint of 13 x 16.3 x 96.5cm</li>
<li>Quick-release fittings make setup and storage fast and easy</li>
<li>Optional Travel Bag available</li>
<li>At 4.8kg, hitting the road with this stand is never in question</li>
<li>3-Year Warranty</li>
</ul>', array['feedback-sports-ultralight-repair-stand/1.jpg', 'feedback-sports-ultralight-repair-stand/2.jpg', 'feedback-sports-ultralight-repair-stand/3.jpg', 'feedback-sports-ultralight-repair-stand/4.jpg', 'feedback-sports-ultralight-repair-stand/5.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('feedback-sports-sport-mechanic-repair-stand', 'FEEDBACK SPORTS - SPORT MECHANIC REPAIR STAND', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>The Sport Mechanic Bike Repair Stand prioritizes the most critical aspects of the entire Feedback Sports bike repair stand lineup – compatibility, stability, durability and portability. The 360-degree rotating clamp uses a spinner knob closure that can accommodate up to 4.8cm and support 29.5kg. Plus, the Sport Mechanic leverages the same 137cm wide base, with rubber-coated end caps, for amazing stability on any surface. </p>
<ul>
<li>Clamp features Spinner Knob for precision closure and uniform clamping pressure</li>
<li>360-degree rotating clamp design provides easy access to any part of your bicycle</li>
<li>Frame clamp positions from 107-166cm in height</li>
<li>Rubber-coated clamp secures and protects expensive components and beautifully painted frames</li>
<li>Clamp opening up to 4.8cm accommodates even the largest diameter frame tubes</li>
<li>Anodized 6061 T6 aluminum and powder-coated steel construction is lightweight, corrosion resistant and incredibly durable</li>
<li>Stiff tripod base and rubber-coated end caps create ultimate stability even on uneven surfaces</li>
<li>Total load capacity of 29.5kg accommodates service on most road, cyclocross, mountain bikes, and electric bikes</li>
<li>Portable and compact construction creates a remarkably small folded footprint of 13 x 20 x 115cm</li>
<li>Z-Knob fittings make setup and storage fast and easy</li>
<li>Optional Travel Bag available</li>
<li>At 5.7kg, hitting the road with this stand is never in question</li>
<li>3-Year Warranty</li>
</ul>', array['feedback-sports-sport-mechanic-repair-stand/1.jpg', 'feedback-sports-sport-mechanic-repair-stand/2.jpg', 'feedback-sports-sport-mechanic-repair-stand/3.jpg', 'feedback-sports-sport-mechanic-repair-stand/4.jpg', 'feedback-sports-sport-mechanic-repair-stand/5.jpg']::text[], 'new', 0, '2021-09-16'::date, false, false),
  ('feedback-sports-sprint-repair-stand', 'FEEDBACK SPORTS - SPRINT REPAIR STAND', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>Ever wonder why so many Tour de France and professional mechanics rely on dropout-style bike repair stands? It’s because they can adapt to virtually any bike quickly and easily and have great stability for precision work – at least that’s the case with the award-winning Sprint Repair Stand. Plus, the rotating platform means the bike moves while the mechanic stays put – the Sprint stand is all about efficiency for wrenching and washing. </p>
<ul>
<li>Fork or rear dropout-style mounts create the most rigid bike-stand connection</li>
<li>360-degree rotating platform provides quick and easy access to any aspect of your frame while you stay close to your tools</li>
<li>Adaptable to quick-release and thru-axle frame standards</li>
<li>Precision mounts protect the structural integrity of your frame and provide maximum stability</li>
<li>Included frame and fork adapters:</li>
</ul>
<p> - Quick-Release: 9×100/130/135mm<br> - Thru Axle: 12x100 / 12x142mm / 12x148 (Boost Rear)<br> - Thru Axle: 15x100mm / 15x110mm (Boost Front)</p>
<ul>
<li>Aftermarket available adapters:</li>
</ul>
<p> - Thru Axle: 20 x 110mm</p>
<ul>
<li>Anodized 6061 T6 aluminium construction is ultralight, corrosion-resistant and incredibly durable</li>
<li>Stiff tripod base and rubber-coated end caps create ultimate work stand stability, even on uneven surfaces</li>
<li>Total load capacity of 39kg accommodates service on road, cyclocross, mountain bikes, and electric bikes</li>
<li>Portable and compact construction creates a remarkably small folded fooprint of 13 x 19.1 x 76cm</li>
<li>Available travel bag is water-resistant, durable and padded to protect the stand and your other equipment</li>
<li>Quick-release fittings make setup and storage fast and easy</li>
<li>At 5.7kg, hitting the road with this stand is never in question</li>
<li>3-year warranty </li>
</ul>', array['feedback-sports-sprint-repair-stand/1.jpg', 'feedback-sports-sprint-repair-stand/2.jpg', 'feedback-sports-sprint-repair-stand/3.jpg', 'feedback-sports-sprint-repair-stand/4.jpg', 'feedback-sports-sprint-repair-stand/5.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('feedback-sports-t-handle-allen-wrench-singles', 'FEEDBACK SPORTS - T-HANDLE ALLEN WRENCH - SINGLES', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>The T-Handle Allen Wrench and Torx Wrench collection is the premier choice of the most demanding mechanics for precision hex keys and torx bits. Made from S2 steel, known for it’s hardness and durability, these T-Handles will last you a lifetime – guaranteed. The six (6) individual allen wrenches and T25 torx bit can be individually selected for specific needs, or as a T-Handle Kit, housed in a compact TPU coated, durable travel case. Conveniently, these allen keys can also be added to the Team Edition Tool Kit for the ultimate portable service kit.</p>
<ul>
<li>T-Handle shape for high and low torque functions</li>
<li>Professional grade, durable lifetime S2 steel</li>
<li>Available Allen wrench sizes – 2 / 2.5 / 3 / 4 / 5 / 6mm</li>
<li>Available Torx bit sizes – T25</li>
<li>Available as a complete kit with a TPU travel case</li>
<li>Compact size means bringing these allen wrenches along is a no-brainer</li>
<li>Complete kit fits in Team Edition Tool Kit</li>
<li>Limited Lifetime Warranty</li>
</ul>', array['feedback-sports-t-handle-allen-wrench-singles/1.jpg', 'feedback-sports-t-handle-allen-wrench-singles/2.jpg', 'feedback-sports-t-handle-allen-wrench-singles/3.jpg', 'feedback-sports-t-handle-allen-wrench-singles/4.jpg', 'feedback-sports-t-handle-allen-wrench-singles/5.jpg']::text[], 'new', 1, '2021-09-16'::date, false, false),
  ('feedback-sports-team-edition-tool-kit', 'FEEDBACK SPORTS - TEAM EDITION TOOL KIT', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p>The Team Edition Portable Tool Kit is the premier field and home service partner for the most discerning bike mechanics. Developed with input from Tour de France, Enduro World Cup, and World Cup XC and DH mechanics, the ultralight and compact footprint offers 25 of the most common bike repair and maintenance features – from 19 bicycle-specific tools. Housed in a TPU-coated case (that hangs conveniently from all our repair stands), this beautiful tool collection is protected from water, grease and abrasion. Its compact design means you’ll always bring it.</p>
<ul>
<li>25 functions from 19 professional grade bicycle-specific tools</li>
<li>Ergonomic, overmolded file tread grips for precision, comfort and style</li>
</ul>
<ul>
<li>External attachment and internal support structure for mounting on Feedback Sports repair stands</li>
<li>TPU-coated travel case is abrasion-resistant, water-resistant, resistant to greases and oils – built to last</li>
<li>Organizational elastic banding keeps everything in it’s place and offers space for additional tools</li>
<li>Allen Wrenches – 2 / 2.5 / 3 / 4 / 5 / 6mm</li>
<li>Torx Wrenches - T25 / T27 / T30</li>
<li>8 &amp;10mm L-handle Allen Wrenches</li>
<li>Magnetic-Tipped Screwdrivers – Flathead 6mm; Phillips #2 and #0</li>
<li>Shimano Crank Cap Tool</li>
<li>15mm Pedal Wrench</li>
<li>15mm Bolt-on Axle Nut Tool</li>
<li>Steel Core Tire Levers (2)</li>
<li>Spoke Multi-Wrench</li>
<li>Valve Extender Wrench</li>
<li>Valve Core Tools – Schrader and Presta</li>
<li>Rotor Truing Tools</li>
<li>Precision Chain Pin Press</li>
<li>Cassette and Disc Brake Rotor Lockring Wrench</li>
<li>Cassette Pliers</li>
<li>Cable Cutter and Cable Crimper</li>
<li>And several more…</li>
<li>At 4.5kg, hitting the road with this tool kit is never in question</li>
<li>Limited Lifetime Warranty</li>
</ul>', array['feedback-sports-team-edition-tool-kit/1.jpg', 'feedback-sports-team-edition-tool-kit/2.jpg', 'feedback-sports-team-edition-tool-kit/3.jpg', 'feedback-sports-team-edition-tool-kit/4.jpg']::text[], 'new', 0, '2025-09-20'::date, false, false),
  ('feedback-sports-thru-axle-chain-keeper', 'FEEDBACK SPORTS - THRU-AXLE CHAIN KEEPER', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>Because you love your bikes, when you’re not riding them you’re washing them, tuning them, or traveling to exquisite ride destinations.</strong></p>
<p> The Thru-Axle Chain Keeper is an ideal solution for keeping your bike chain secure during bike washing, tune-ups and traveling. This elegant, lightweight, bio-based plastic design fits perfectly on the axles of 12mm thru-axle dropout systems, no tools required. By keeping chain tension with the Thru-Axle Chain Keeper, you can be confident your bike is safe during drivetrain cleaning or travel.</p>
<ul>
<li>Protects rear derailleur by maintaining chain tension when the rear wheel is removed.</li>
<li>Ideal bike service tool for washing, tune-ups and traveling.</li>
<li>Accommodates road bikes, cyclocross bikes, mountain bikes, electric bikes, fitness bikes and more.</li>
<li>Fits 12mm Thru-Axle dropouts.</li>
<li>Prevents the chain from slapping against delicate and painted frame surfaces.</li>
<li>High-density, solvent resistant, Bio-based plastic PA56 roller is easy on your chain, yet incredibly durable.</li>
<li>Tool-free, easy-install design makes use simple and effective for beginner or professional bike mechanic.</li>
<li>SAG Sustainability Action Group approved – bio-based material, low packaging volume, and mono-material for easy recycling.</li>
</ul>

<p><a></a></p>', array['feedback-sports-thru-axle-chain-keeper/1.jpg', 'feedback-sports-thru-axle-chain-keeper/2.jpg', 'feedback-sports-thru-axle-chain-keeper/3.jpg', 'feedback-sports-thru-axle-chain-keeper/4.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('feedback-sports-torx-wrench-set', 'FEEDBACK SPORTS - TORX WRENCH SET', 'feedback-sports', 'bike-care-maintenance', 'workshop-tools', '<p><strong>The Torx Wrench Set is an essential element of tool kits for professional and DIY mechanics alike.</strong></p>
<p>This premium set of 9 Torx wrenches includes all the common sizes from T10 to T50, covering a wide range of applications including large-format fasteners often found on e-bikes.</p>
<p>Made from durable S2 steel for long life and precise working edges. Each tool is magnetized for convenient pick up of ferrous-based fasteners. Laser etching aids with tool size identification and the rugged, color-contrasting case conveniently secures the set.</p>
<ul>
<li>9 piece, S2 Steel Torx Wrench Set includes: T10, T15, T20, T25, T27, T30, T40, T45, T50 sizes.</li>
<li>Each tool is magnetized to provide secure hardware hold for delicate fastener sizes in hard-to-access locations.</li>
<li>Each tool is laser etched with sizing for easy identification.</li>
<li>Case included with sizes marked for easy identification and organization.</li>
<li>Ideal hand tool to complete professional grade portable kits and DIY home workshops alike.</li>
</ul>

<p><a></a></p>', array['feedback-sports-torx-wrench-set/1.jpg', 'feedback-sports-torx-wrench-set/2.jpg', 'feedback-sports-torx-wrench-set/3.jpg', 'feedback-sports-torx-wrench-set/4.jpg', 'feedback-sports-torx-wrench-set/5.jpg']::text[], 'new', 1, '2025-09-20'::date, false, false),
  ('morgan-blue-chain-keeper-thru-axle', 'Morgan Blue Chain Keeper Thru Axle', 'morgan-blue', 'bike-care-maintenance', 'workshop-tools', '<p>Chain Keeper for 12mm Thru Axle system bikes</p> <p>Easy transport and cleaning</p>', array['morgan-blue-chain-keeper-thru-axle/1.jpg', 'morgan-blue-chain-keeper-thru-axle/2.jpg']::text[], 'new', 1, '2022-06-11'::date, false, false),
  ('mucoffsiliconeshine500ml', 'Muc Off Silicone Shine 500ml', 'muc-off', 'bike-care-maintenance', 'workshop-tools', '<p>Silicon Shine not only leaves your bike looking factory fresh, but it also acts as an amazing friction reducer for suspension parts and reduces dirt adhesion. Spray it onto your fork stanchions and rear shocks to reduce resistance for a silky smooth, World Cup performance.</p>', array['mucoffsiliconeshine500ml/1.jpg']::text[], 'new', 0, '2021-08-20'::date, false, false),
  ('shimano-chain-checker', 'Shimano Chain Checker', 'shimano', 'bike-care-maintenance', 'workshop-tools', '<p>The <strong>Shimano Chain Wear Indicator</strong> is a straightforward, reliable tool designed to quickly measure chain stretch and wear. Made from durable steel with a clean go/no-go gauge, it helps you identify when your chain has reached its service limit, preventing premature wear on your cassette and chainrings. Compact and easy to use, the Shimano chain checker is an essential addition to any rider’s toolbox—whether you’re maintaining your bike at home or on the go. By replacing your chain at the right time, you’ll extend the life of your drivetrain and save money in the long run.</p>', array['shimano-chain-checker/1.jpg']::text[], 'new', 0, '2025-09-09'::date, false, false),
  ('topeak-all-speeds-chain-tool', 'Topeak All Speeds Chain Tool', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

<p>High quality chain tool with replaceable plunger pin for single and multi-speed chains up to 12 speed, including Campagnolo® 12 speed hollow pin chains. Included chain hook holds links during assembly. Storage space for the included chain hook and one spare plunger pin.</p>

<table>
<tbody>
<tr>
<td>CHAIN HOOK</td>
<td>CrMo steel</td>
</tr>
<tr>
<td>CHAIN TOOL</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>HANDLE</td>
<td>Aluminum</td>
</tr>
<tr>
<td>SIZE</td>
<td>8.6 x 2.8 x 12.8 cm / 3.4” x 1.1” x 5”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>270 g / 9.52 oz</td>
</tr>
<tr>
<td>SPEED</td>
<td>Single &amp; multi-speed chain up to 12 speed</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Rivet anvil for Campagnolo® hollow pin<br>Secondary chain link fence<br>Chain pin breaker<br>Replaceable plunger pin</td>
</tr>
</tbody>
</table>', array['topeak-all-speeds-chain-tool/1.jpg', 'topeak-all-speeds-chain-tool/2.jpg', 'topeak-all-speeds-chain-tool/3.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-cable-housing-cutter', 'Topeak Cable & Housing Cutter', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<p>High quality, spring loaded, hardened steel cutter designed for cutting all types of bicycle cables and housing. With built-in cable and housing end ferrule crimper and housing re-former for easy installation of ferrules.</p> <ul> <li>Built-in cable &amp; housing end ferrule crimper</li> <li>Built-in housing re-former for easy installation of ferrules</li> </ul> <table> <tbody> <tr> <td>TOOL MATERIAL</td> <td>Hardened steel</td> </tr> <tr> <td>HANDLE</td> <td>Engineering grade polymer</td> </tr> <tr> <td>SIZE</td> <td>18 x 6.4 x 2.6 cm / 7.1” x 2.5” x 1”</td> </tr> <tr> <td>WEIGHT</td> <td>174 g / 6.12 oz</td> </tr> </tbody> </table>', array['topeak-cable-housing-cutter/1.jpg', 'topeak-cable-housing-cutter/2.jpg', 'topeak-cable-housing-cutter/3.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-cartridge-bottom-bracket-tool', 'Topeak Cartridge Bottom Bracket Tool', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

Shop grade tool for removal and installation of Shimano® and ISIS Drive® bottom bracket cups. Fits both 24 mm wrench and 1/2” socket for tool interface flexibility. * Shimano® is a registered trademark of Shimano® Inc.
 

<table>
<tbody>
<tr>
<td>SIZE</td>
<td>5.3 x ø3.2 cm / 2.1” x ø1.3”</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>CrMo steel</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>102 g / 3.59 oz</td>
</tr>
</tbody>
</table>', array['topeak-cartridge-bottom-bracket-tool/1.jpg', 'topeak-cartridge-bottom-bracket-tool/2.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-chain-whip-sprocket-remover', 'Topeak Chain Whip / Sprocket Remover', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

Hardened steel chain whip for rear cassette lockring and freewheel installation and removal. Long padded handle for better leverage and comfortable use.

<table>
<tbody>
<tr>
<td>HANDLE</td>
<td>Engineering grade polymer</td>
</tr>
<tr>
<td>SIZE</td>
<td>29 x 3.5 x 1.5 cm / 11.4” x 1.4” x 0.6”</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>305 g / 10.74 oz</td>
</tr>
</tbody>
</table>', array['topeak-chain-whip-sprocket-remover/1.jpg', 'topeak-chain-whip-sprocket-remover/2.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-combotorq-torque-wrench-bit', 'Topeak Combotorq Torque Wrench & Bit', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<p>Simple, easy to use torque wrench allows for correct tightening of bolts on frame and components to recommended torque values for safety and performance. Ergonomic handle for easily applying force to nuts and bolts to their required torque values. Torque Range: 3-12 Nm (2.21-8.85 lbf•ft).</p> <p><strong>Torx® is a registered trademark of the Camcar Corp. division of Textron Inds.</strong></p> <ul> <li>Torque Range: 3-12 Nm</li> </ul> <table> <tbody> <tr> <td>ALLEN BITS</td> <td>3 / 4 / 5 / 6 mm</td> </tr> <tr> <td>TORX® BIT</td> <td>T25</td> </tr> <tr> <td>TORQUE RANGE</td> <td>3-12 Nm (Accuracy: +/- 0.5Nm)</td> </tr> <tr> <td>TOOL MATERIAL</td> <td>Hardened steel</td> </tr> <tr> <td>BODY</td> <td>Engineering grade polymer</td> </tr> <tr> <td>SIZE</td> <td>16.7 x 12.2 x 4.2 cm / 6.6” x 4.8” x 1.7”</td> </tr> <tr> <td>WEIGHT</td> <td>133 g / 4.68 oz</td> </tr> </tbody> </table>', array['topeak-combotorq-torque-wrench-bit/1.jpg', 'topeak-combotorq-torque-wrench-bit/2.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-duohex-allen-wrench-set', 'Topeak Duohex Allen Wrench Set', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<p>8 pro quality, SNCM-V steel hex wrenches with one ball end for hard to reach and blind locations. Includes a foldable hanger for hanging the wrench set on wall for storage.</p> <table> <tbody> <tr> <td>HEX WRENCHES</td> <td>1.5 / 2 / 2.5 / 3 / 4 / 5 / 6 / 8 mm</td> </tr> <tr> <td>TOOL MATERIAL</td> <td>SNCM-V steel</td> </tr> <tr> <td>SIZE</td> <td>20.5 x 7 x 1.4 cm / 8.1” x 2.8” x 0.6”</td> </tr> <tr> <td>WEIGHT</td> <td>235 g / 8.27 oz</td> </tr> </tbody> </table>', array['topeak-duohex-allen-wrench-set/1.jpg', 'topeak-duohex-allen-wrench-set/2.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-duohex-t-handle-allen-wrench', 'Topeak Duohex T-Handle Allen Wrench', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

6 pro quality, chrome vanadium steel hex wrenches. Single ball end on 4 / 5 / 6 mm wrenches for hard to reach and blind locations. Ergo padded handle for increased grip and comfort while handling.

<table>
<tbody>
<tr>
<td>HANDLE</td>
<td>Ergonomic plastic handle</td>
</tr>
<tr>
<td>HEX WRENCHES</td>
<td>2 / 2.5 / 3 / 4 / 5 / 6 mm</td>
</tr>
<tr>
<td>SIZE</td>
<td>14 x 7.8 x 1.6 cm / 5.5” x 3.1” x 0.6” <br>(2 / 2.5 / 3 / 4 mm)<br>20 x 9.7 x 2 cm / 7.9” x 3.8” x 0.8” (5 / 6 mm)</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>SNCM-V steel / Chrome vanadium steel</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>14 g / 0.49 oz (2 mm), 17 g / 0.60 oz (2.5 mm) <br>21 g / 0.74 oz (3 mm), 29 g / 1.02 oz (4 mm)<br>64 g / 2.25 oz (5 mm), 80 g / 2.82 oz (6 mm)</td>
</tr>
</tbody>
</table>', array['topeak-duohex-t-handle-allen-wrench/1.jpg', 'topeak-duohex-t-handle-allen-wrench/2.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-duohex-tool-1', 'Topeak Duohex Tool', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

Pro quality, chrome vanadium steel hex wrench with one ball end for hard to reach and blind locations. Ergo padded handle for increased grip and comfort while handling. Great tool for maintenance of cranksets, bottom brackets, and pedals.

<table>
<tbody>
<tr>
<td>HANDLE</td>
<td>Ergonomic plastic handle</td>
</tr>
<tr>
<td>HEX WRENCHES</td>
<td>6 / 8 / 10 mm</td>
</tr>
<tr>
<td>SIZE</td>
<td>20.3 x 5.6 x 2.1 cm / 8” x 2.2” x 0.8” (6mm) <br>21.9 x 6.1 x 2.1 cm / 8.6” x 2.4” x 0.8” (8mm) <br>23.5 x 6.6 x 2.1 cm / 9.3” x 2.6” x 0.8” (10mm)</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>Chrome vanadium steel</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>86 g / 3.03 oz (6mm)<br>135 g / 4.75 oz (8mm)<br>207 g / 7.29 oz (10mm)</td>
</tr>
</tbody>
</table>', array['topeak-duohex-tool-1/1.jpg', 'topeak-duohex-tool-1/2.jpg', 'topeak-duohex-tool-1/3.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-freewheel-remover', 'Topeak Freewheel Remover', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

Fits Shimano®, SRAM® and other cassette lockrings. Fits Shimano® center lock disc brake lockrings * Shimano® is a registerted trademark of Shimano Inc. * SRAM® is a registerted trademark of SRAM Inc.

<table>
<tbody>
<tr>
<td>SIZE</td>
<td>4.4 x ø2.4 cm / 1.7” x ø1”</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>59 g / 2.08 oz</td>
</tr>
</tbody>
</table>', array['topeak-freewheel-remover/1.jpg', 'topeak-freewheel-remover/2.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-mini-pt30', 'Topeak Mini PT30', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<p>30 function, pro-quality, precision mini tool with integrated tubeless tire repair tools. Removable chain tool with built-in master link tool for removing and reinstalling master link type chains stores securely within the Mini PT30 body. Forged alloy body. Perfect for any road or trailside repair.</p> <p><strong>Note: The chain tool is compatible with single and multi-speed chains up to 12 speed, NOT including Campagnolo® hollow pin chains.</strong></p> <ul> <li>Chain tool, master link tool and disc spacer store inside body and remove for use</li> <li>Removable chain tool</li> <li>Removable master link tool</li> <li>Tire plug insertion tool <ul> <li>Tire repair plug not included</li> </ul> </li> <li>Knife blade &amp; plug insertion tool lock adds safety when using knife</li> <li>Extend tools for extra leverage when repairing</li> <li>Neoprene bag included</li> <li>30 Functions</li> </ul> <table> <tbody> <tr> <td>FUNCTIONS</td> <td>30</td> </tr> <tr> <td>TOOL MATERIAL</td> <td>Chrome vanadium steel</td> </tr> <tr> <td>WEIGHT</td> <td>169 g / 5.96 oz</td> </tr> <tr> <td>SIZE</td> <td>7.4 x 4 x 1.9 cm / 2.9” x 1.6” x 0.7”</td> </tr> <tr> <td>BAG</td> <td>Neoprene (TRK-T031)</td> </tr> <tr> <td>BODY MATERIAL</td> <td>Forged aluminum</td> </tr> <tr> <td>TOOLS</td> <td>2L / 2.5 / 3 / 4 / 5 / 6 / 8 mm Allen wrenches<br>10 mm hex socket<br>T10 / T15 / T25 Torx® wrenches<br>14G / 15G / Mavic M7 / Shimano® 4.5mm spoke wrenches<br>CrMo steel chain tool*, chain hook, CrMo master link tool<br>#2 Phillips / flat head screw drivers<br>Tire reamer, plug insertion tool<br>Serrated knife / saw, disc spacer</td> </tr> <tr> <td>ADDED FEATURES</td> <td>Knife blade &amp; plug insertion tool lock, extendable for leverage, secondary chain link fence, chain pin breaker and master link storage compartment</td> </tr> </tbody> </table>', array['topeak-mini-pt30/1.png', 'topeak-mini-pt30/2.jpg', 'topeak-mini-pt30/3.jpg', 'topeak-mini-pt30/4.jpg']::text[], 'new', 1, '2022-04-30'::date, false, false),
  ('topeak-multi-tool-tubi-toolx-13-functions', 'Topeak Multi Tool Tubi-ToolX 13 functions', 'mr-rider', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

18 function, pro-quality, precision mini tool with integrated tubeless tire repair functions. Tubeless repair tools and tire repair plug compartment store inside the tool body for a streamlined profile. Perfect for any road or trailside repair.
 

<table>
<tbody>
<tr>
<td>FUNCTIONS</td>
<td>18</td>
</tr>
<tr>
<td>SIZE</td>
<td>7.6 x 4.1 x 1.8 cm / 3” x 1.6” x 0.7”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>119 g / 4.20 oz</td>
</tr>
<tr>
<td>BODY</td>
<td>Forged aluminum</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>Chrome vanadium steel</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Tool Lock, extendable for leverage, and 3 pieces of 3.5mm x 5cm tire repair plugs / compartment, and airstop cover</td>
</tr>
<tr>
<td>TOOLS</td>
<td>2 / 2.5 / 3 / 4 / 5 / 6 mm Allen wrenches <br>T10 / T25 Torx® wrenches <br>#2 Phillips <br>Stainless steel 2-in-1 tire reamer / plug insertion tool, Tool stop, serrated knife / saw, air-stop</td>
</tr>
</tbody>
</table>', array['topeak-multi-tool-tubi-toolx-13-functions/1.jpg', 'topeak-multi-tool-tubi-toolx-13-functions/2.jpg', 'topeak-multi-tool-tubi-toolx-13-functions/3.jpg', 'topeak-multi-tool-tubi-toolx-13-functions/4.jpg', 'topeak-multi-tool-tubi-toolx-13-functions/5.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-powerlink-pliers', 'Topeak Powerlink Pliers', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<p>Spring loaded PowerLink pliers easily removes master links. Wire latch holds the handles together when not in use.</p> <table> <tbody> <tr> <td>TOOL MATERIAL</td> <td>Hardened steel</td> </tr> <tr> <td>HANDLE</td> <td>Engineering grade polymer</td> </tr> <tr> <td>SIZE</td> <td>17 x 5.5 x 1.4 cm / 6.7” x 2.2” x 0.6”</td> </tr> <tr> <td>WEIGHT</td> <td>122 g / 4.29 oz</td> </tr> </tbody> </table>', array['topeak-powerlink-pliers/1.jpg', 'topeak-powerlink-pliers/2.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-super-chain-tool', 'Topeak Super Chain Tool', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

<p>High quality chain tool for single and multi-speed chains up to 12 speed. Contains 5 and 6 mm Allen wrenches, and chain hook.</p>

<p>NOTE:<br>NOT compatible with Campagnolo® hollow pin chains.</p>

<table>
<tbody>
<tr>
<td>ADDED FEATURES</td>
<td>Secondary chain link fence<br>Chain pin breaker, Chain pin holder</td>
</tr>
<tr>
<td>ALLEN WRENCHES</td>
<td>5 / 6 mm</td>
</tr>
<tr>
<td>BODY</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>CHAIN HOOK</td>
<td>Steel wire</td>
</tr>
<tr>
<td>CHAIN TOOL</td>
<td>CrMo steel</td>
</tr>
<tr>
<td>FUNCTIONS</td>
<td>7</td>
</tr>
<tr>
<td>SIZE</td>
<td>7.6 x 4 x 1.9 cm / 3.0” x 1.6” x 0.7”</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>Hardened steel</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>65 g / 2.29 oz</td>
</tr>
</tbody>
</table>', array['topeak-super-chain-tool/1.jpg', 'topeak-super-chain-tool/2.jpg', 'topeak-super-chain-tool/3.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-tool-shuttle-gauge-digital-300psi', 'Topeak Tool Shuttle Gauge Digital 300psi', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<table>
<tbody>
<tr>
<td>PUMP HEAD COMPATIBILITY</td>
<td>Presta / Schrader pumps</td>
</tr>
<tr>
<td>TIRE VALVE COMPATIBILITY</td>
<td>Presta / Schrader / Dunlop valves</td>
</tr>
<tr>
<td>GAUGE</td>
<td>Digital, 300 psi / 20.7 bar</td>
</tr>
<tr>
<td>UNIT</td>
<td>psi, bar, kg / cm2</td>
</tr>
<tr>
<td>BATTERY</td>
<td>CR2032 x 1 (included)</td>
</tr>
<tr>
<td>THUMB LOCK</td>
<td>Aluminum</td>
</tr>
<tr>
<td>PRESSURE TUNING</td>
<td>Air release button</td>
</tr>
<tr>
<td>BODY</td>
<td>Aluminum / Engineering grade polymer</td>
</tr>
<tr>
<td>ADDED FEATURES</td>
<td>Rotatable head / gauge, Auto-off function</td>
</tr>
<tr>
<td>SIZE</td>
<td>9.2 x 5.8 x 4.3 cm / 3.6” x 2.3” x 1.7”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>102 g / 3.60 oz</td>
</tr>
</tbody>
</table>', array['topeak-tool-shuttle-gauge-digital-300psi/1.jpg', 'topeak-tool-shuttle-gauge-digital-300psi/2.jpg', 'topeak-tool-shuttle-gauge-digital-300psi/3.jpg', 'topeak-tool-shuttle-gauge-digital-300psi/4.jpg', 'topeak-tool-shuttle-gauge-digital-300psi/5.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-toolbox-prepbox-36-tool-set', 'Topeak Toolbox Prepbox 36 Tool Set', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<p>36 professional shop quality bike tools fit neatly into a pro-level carrying case. Great for shop work, events or at-home bike maintenance.</p> <p><strong>The chain tool is compatible with single and multi-speed chains up to 12 speed, including Campagnolo 11 speed hollow pin chains.</strong></p> <table> <tbody> <tr> <td>TOOLS</td> <td>36</td> </tr> <tr> <td>FUNCTIONS</td> <td>55</td> </tr> <tr> <td>HEX WRENCHES</td> <td>1.5 / 2 / 2.5 / 3 / 4 / 5 / 6 / 8 mm</td> </tr> <tr> <td>ALLEN BITS</td> <td>3 / 4 / 5 / 6 mm</td> </tr> <tr> <td>TORX® WRENCHES</td> <td>T7 / T9 / T10 / T15 / T20 / T25 / T27 / T30</td> </tr> <tr> <td>TORX® BITS</td> <td>T25</td> </tr> <tr> <td>CHAIN TOOL</td> <td>CrMo steel</td> </tr> <tr> <td>CHAIN HOOK</td> <td>Hardened steel</td> </tr> <tr> <td>CHAIN WEAR INDICATOR</td> <td>Hardened steel</td> </tr> <tr> <td>SCREW DRIVERS</td> <td>4 / 6 mm flat head, #1 / # 2 Phillips</td> </tr> <tr> <td>SPOKE WRENCHES</td> <td>13G / 14G / 15G / Shimano® 4.3 mm</td> </tr> <tr> <td>OPEN WRENCHES</td> <td>8 / 10 mm</td> </tr> <tr> <td>CASE MATERIAL</td> <td>Engineering grade polymer</td> </tr> <tr> <td>TOOL MATERIAL</td> <td>Chrome vanadium steel / Hardened steel</td> </tr> <tr> <td>SIZE</td> <td>40.5 x 32 x 11.5 cm / 15.9” x 12.6” x 4.5”</td> </tr> <tr> <td>WEIGHT</td> <td>4.63 kg / 10.21 lb (Case w/ Tools)</td> </tr> </tbody> </table>', array['topeak-toolbox-prepbox-36-tool-set/1.png', 'topeak-toolbox-prepbox-36-tool-set/2.jpg', 'topeak-toolbox-prepbox-36-tool-set/3.jpg', 'topeak-toolbox-prepbox-36-tool-set/4.jpg', 'topeak-toolbox-prepbox-36-tool-set/5.jpg']::text[], 'new', 0, '2022-04-30'::date, false, false),
  ('topeak-torx-wrench-set', 'Topeak Torx Wrench Set', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<p>8 pro quality, SNCM-V steel Torx® wrenches. Includes a foldable hanger for hanging the wrench set on wall for storage.</p> <table> <tbody> <tr> <td>TORX® WRENCHES</td> <td>T7 / T9 / T10 / T15 / T20 / T25 / T27 / T30</td> </tr> <tr> <td>TOOL MATERIAL</td> <td>SNCM-V steel</td> </tr> <tr> <td>SIZE</td> <td>16.5 x 6.6 x 1.2 cm / 6.5” x 2.6” x 0.5”</td> </tr> <tr> <td>WEIGHT</td> <td>130 g / 4.58 oz</td> </tr> </tbody> </table>', array['topeak-torx-wrench-set/1.jpg', 'topeak-torx-wrench-set/2.jpg']::text[], 'new', 1, '2022-06-14'::date, false, false),
  ('topeak-x-tool', 'Topeak X-Tool', 'topeak', 'bike-care-maintenance', 'workshop-tools', '<h4>DESCRIPTION:</h4>

11 function folding tool that can easily handle most repairs. Perfect for everyday cycling. Updated design to secure 8 mm hex tool bit. Included a self-tightening T20 / 2.5mm L-type wrench.

<table>
<tbody>
<tr>
<td>FUNCTIONS</td>
<td>11</td>
</tr>
<tr>
<td>TOOLS</td>
<td>Allen wrenches - 2 / 2.5 / 3 / 4 / 5 / 6 mm <br>8mm hex tool bit <br>Torx® wrench - T20 / T25 <br>#2 Phillips screw driver</td>
</tr>
<tr>
<td>TOOL MATERIAL</td>
<td>Chrome vanadium steel</td>
</tr>
<tr>
<td>BODY MATERIAL</td>
<td>Engineering grade polymer</td>
</tr>
<tr>
<td>ADDED FEATURE</td>
<td>Self-tightening tool</td>
</tr>
<tr>
<td>SIZE</td>
<td>9.5 x 2.9 x 1.9 cm / 3.7” x 1.1” x 0.7”</td>
</tr>
<tr>
<td>WEIGHT</td>
<td>112 g / 3.95 oz</td>
</tr>
</tbody>
</table>', array['topeak-x-tool/1.jpg', 'topeak-x-tool/2.jpg', 'topeak-x-tool/3.jpg', 'topeak-x-tool/4.jpg', 'topeak-x-tool/5.jpg']::text[], 'new', 2, '2022-06-14'::date, false, false),

  -- ---- components · bar-tape ----
  ('enve-bar-tape', 'ENVE - BAR TAPE', 'enve', 'components', 'bar-tape', '<p><strong>What it is:</strong><br> ENVE designed bar tape that provides maximum ride feel without compromising comfort and ensures grip in wet conditions. 250mm in length, 3mm thick, and silicone-backed compound that provides the right amount of stretch for ease of installation and durability.</p>
<p><strong>Why we made it:</strong><br> For ENVE, handlebar tape is more than a fashion accessory, it is a key component that sets the tone for your ride. Bar tape that becomes slippery when wet, and causes discomfort diminishes confidence and the ride experience. As such, ENVE Handlebar Tape is designed with a grip compound that ensures bare handed traction despite wet conditions. To maximize ride feel without compromising comfort, ENVE Handlebar Tape is 3 millimeters thick with a vibration damping silicon backer strip that ensures comfort for long miles over rough roads.</p>
<ul>
<li>250mm in Length – Accommodates bars up to 50cm</li>
<li>Grip compound maintains traction when wet</li>
<li>Durable stretch for installation</li>
<li>Vibration damping backer strip</li>
<li>Hard wearing construction</li>
</ul>', array['enve-bar-tape/1.jpg', 'enve-bar-tape/2.jpg', 'enve-bar-tape/3.jpg']::text[], 'new', 3, '2021-09-11'::date, false, false),
  ('ergon-allroad-handlebar-tape-2-5mm', 'Ergon Allroad Handlebar Tape 2.5mm', 'ergon', 'components', 'bar-tape', '', array['ergon-allroad-handlebar-tape-2-5mm/1.png', 'ergon-allroad-handlebar-tape-2-5mm/2.png']::text[], 'new', 1, '2025-09-09'::date, false, false),
  ('ergon-gravel-handlebar-tape-3-5mm', 'Ergon Gravel Handlebar Tape 3.5mm', 'ergon', 'components', 'bar-tape', '<p>Ergonomic handlebar tape for all drop bar disciplines.</p><p><br></p><ul>
<li>Thickness of <strong>3.5 mm</strong> for gravel use.</li>
<li>Length: 2300 mm</li>
<li>Made of EVA foam which offers optimal durability, high pressure distribution and low weight.</li>
<li>Reduces hand discomfort in all drop bar disciplines.</li>
<li>Supports increased vibration damping or more direct feedback from the riding surface.</li>
<li>Anti-slip surface texture.</li>
<li>Built-in wrapping guide for thinner or thicker wrapping.</li>
<li>Wrap in two directions – for increased grip or more freedom of movement.</li>
</ul>', array['ergon-gravel-handlebar-tape-3-5mm/1.png', 'ergon-gravel-handlebar-tape-3-5mm/2.png', 'ergon-gravel-handlebar-tape-3-5mm/3.png', 'ergon-gravel-handlebar-tape-3-5mm/4.png', 'ergon-gravel-handlebar-tape-3-5mm/5.png']::text[], 'new', 2, '2024-08-13'::date, false, false),
  ('ergon-road-handlebar-tape-2mm', 'Ergon Road Handlebar Tape 2mm', 'ergon', 'components', 'bar-tape', '', array['ergon-road-handlebar-tape-2mm/1.png', 'ergon-road-handlebar-tape-2mm/2.png', 'ergon-road-handlebar-tape-2mm/3.png', 'ergon-road-handlebar-tape-2mm/4.png']::text[], 'new', 2, '2024-08-13'::date, false, false),
  ('fizik-tempo-microtex-classic-2mm', 'Fizik Tempo Microtex Classic 2mm', 'fizik', 'components', 'bar-tape', '<p>Tempo are bar tapes designed for an unparalled performance, durability and versatility of use. Microtex is the thinnest option for pin-sharping handling and control. The classic touch is a durable perforated leather-like texture, with traditional aesthetic and smooth surface slide easily to different riding positions.</p>', array['fizik-tempo-microtex-classic-2mm/1.jpg', 'fizik-tempo-microtex-classic-2mm/2.jpg', 'fizik-tempo-microtex-classic-2mm/3.jpg', 'fizik-tempo-microtex-classic-2mm/4.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('fizik-terra-microtex-bondcush-soft-3mm', 'Fizik Terra Microtex Bondcush Soft 3mm', 'fizik', 'components', 'bar-tape', '', array['fizik-terra-microtex-bondcush-soft-3mm/1.jpg', 'fizik-terra-microtex-bondcush-soft-3mm/2.jpg']::text[], 'new', 0, '2021-08-30'::date, false, false),
  ('fizik-vento-microtex-tacky-2mm', 'Fizik Vento Microtex Tacky 2mm', 'fizik', 'components', 'bar-tape', '<p>Vento are race bred tapes for ultimate control and reduced weight. Microtex is the thinnest option for pin-sharping handling and control. Tacky finish aids a sticky nonslip surface with a raised texture for ultimate grip in every condition.</p>', array['fizik-vento-microtex-tacky-2mm/1.jpg', 'fizik-vento-microtex-tacky-2mm/2.jpg', 'fizik-vento-microtex-tacky-2mm/3.jpg', 'fizik-vento-microtex-tacky-2mm/4.jpg', 'fizik-vento-microtex-tacky-2mm/5.jpg']::text[], 'new', 1, '2021-08-30'::date, false, false),
  ('fizik-vento-solocush-tacky-2-7mm', 'Fizik Vento Solocush Tacky 2.7mm', 'fizik', 'components', 'bar-tape', '<p>Vento are race bred tapes for ultimate control and reduced weight. Solocush is our most streamlined cushioned construction, a single-layer chunky platform to rest on during longer rides without compromises on weight. Tacky finish aids a sticky nonslip surface with a raised texture for ultimate grip in every condition.</p>', array['fizik-vento-solocush-tacky-2-7mm/1.jpg', 'fizik-vento-solocush-tacky-2-7mm/2.jpg', 'fizik-vento-solocush-tacky-2-7mm/3.jpg', 'fizik-vento-solocush-tacky-2-7mm/4.jpg']::text[], 'new', 2, '2021-08-30'::date, false, false),
  ('pro-sport-control-cork-bar-tape', 'Pro Sport Control Cork Bar Tape', 'pro', 'components', 'bar-tape', '<p>Pro Smart Silicon is a lightweight EVA bar tape that wraps easily. With a smart silicon adhesive preventing the tape from sliding and allowing for a comfortable grip.</p>
<p>FEATURES: </p>
<p>Standard EVA tape with Smart Silicon adhesive back (easy to replace) Lightweight and good flex for easy wrapping PRO end-plugs and adhesive end-strips included</p>', array['pro-sport-control-cork-bar-tape/1.png']::text[], 'new', 1, '2021-08-19'::date, false, false),
  ('supacaz-super-sticky-kush-classic-tape', 'Supacaz Super Sticky Kush Classic Tape', 'supacaz', 'components', 'bar-tape', '<p>Super Sticky Kush is the bar tape of choice for 3x World Champion Peter Sagan. Fusing performance and style, Supacaz delivers the only bar tape worth dreaming about. We boldly claim that Super Sticky Kush is the best bar tape ever.</p>', array['supacaz-super-sticky-kush-classic-tape/1.jpg', 'supacaz-super-sticky-kush-classic-tape/2.jpg', 'supacaz-super-sticky-kush-classic-tape/3.jpg', 'supacaz-super-sticky-kush-classic-tape/4.jpg', 'supacaz-super-sticky-kush-classic-tape/5.jpg']::text[], 'new', 2, '2024-06-20'::date, false, false),
  ('supacaz-super-sticky-kush-galaxy-tape', 'Supacaz Super Sticky Kush Galaxy Tape', 'supacaz', 'components', 'bar-tape', '<p>Super Sticky Kush is the bar tape of choice for 3x World Champion Peter Sagan. Fusing performance and style, Supacaz delivers the only bar tape worth dreaming about. We boldly claim that Super Sticky Kush is the best bar tape ever. Galaxy series adds just enough color to mix or match with any bike.</p>', array['supacaz-super-sticky-kush-galaxy-tape/1.jpg', 'supacaz-super-sticky-kush-galaxy-tape/2.jpg', 'supacaz-super-sticky-kush-galaxy-tape/3.jpg', 'supacaz-super-sticky-kush-galaxy-tape/4.jpg', 'supacaz-super-sticky-kush-galaxy-tape/5.jpg']::text[], 'new', 1, '2024-06-20'::date, false, false),
  ('supacaz-super-sticky-kush-star-fade-tape', 'Supacaz Super Sticky Kush Star Fade Tape', 'supacaz', 'components', 'bar-tape', '<p>Super Sticky Kush is the bar tape of choice for 3x World Champion Peter Sagan. Fusing performance and style, Supacaz delivers the only bar tape worth dreaming about. We boldly claim that Super Sticky Kush is the best bar tape ever. StarFade will transform any bike into a head turner with a blast of color and flashy graphics.</p>', array['supacaz-super-sticky-kush-star-fade-tape/1.jpg', 'supacaz-super-sticky-kush-star-fade-tape/2.jpg', 'supacaz-super-sticky-kush-star-fade-tape/3.jpg', 'supacaz-super-sticky-kush-star-fade-tape/4.jpg', 'supacaz-super-sticky-kush-star-fade-tape/5.jpg']::text[], 'new', 1, '2024-06-20'::date, false, false),

  -- ---- components · brake-pads ----
  ('enve-black-brake-pad', 'ENVE -  BLACK BRAKE PAD', 'enve', 'components', 'brake-pads', '<p><strong>What is it:</strong><br>Replacement brake pads for full-carbon ENVE rims and wheelsets with a NBT textured brake track.</p>
<p><br><strong>Why we made it:</strong><br>Carbon fiber rim construction and design are only part of the solution to solving the heat equation. Brake pads play an integral role in ride performance and long-term durability of the wheel. Our brake pads are specifically formulated and optimized for best performance with our molded-in texture brake tracks found on the Smart ENVE System (SES) wheels.</p>', array['enve-black-brake-pad/1.jpg', 'enve-black-brake-pad/2.jpg', 'enve-black-brake-pad/3.jpg', 'enve-black-brake-pad/4.jpg']::text[], 'new', 0, '2025-04-29'::date, false, false),
  ('enve-grey-brake-pad', 'ENVE - GREY BRAKE PAD (GEN 1 / SMOOTH BRAKE TRACK)', 'enve', 'components', 'brake-pads', '<p><strong>What is it:</strong></p>
<p>Replacement brake pads for full-carbon ENVE rims and wheelsets with a smooth surface brake track.</p>
<p><strong>Why we made it:</strong></p>
<p>Carbon fiber rim construction and design are only part of the solution to solving the heat equation. Brake pads play an integral role in ride performance and long-term durability of the wheel. Our brake pads are specifically formulated and optimized for best performance with our molded-in texture brake tracks found on the Smart ENVE System (SES) wheels.</p>', array['enve-grey-brake-pad/1.jpg']::text[], 'new', 0, '2025-04-29'::date, false, false),
  ('galfer-brake-pads-avid-elixir-sram-level', 'GALFER - BRAKE PADS -  AVID ELIXIR / SRAM LEVEL', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1455 ROAD</strong><br>Road G1455 is a new brake pad compound specifically developed to offer the best performance on the road under all weather conditions. Thanks to the knowledge and experience achieved in more than 60 years of manufacturing braking systems for two-wheel vehicles, Galfer has developed the ultimate in powerful, efficient and hard-wearing brake pads for road bikes.</p>
<p>Applications: Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road<br><br></p>
<p><strong>MODEL NUMBER:</strong> FD455<br><strong>COMPATIBILITY:<br>SRAM:</strong> <strong>2-piece</strong> caliper models: Level ( T, TL, TLM, ULT, Base), Red, Force, Rival, Apex, (note <strong>Monoblock</strong> caliper models for Level/Road use FD469)<br><strong>AVID:</strong> Elixir 1, 3, 5, 7, XX, X0<br><strong>TRICKSTUFF:</strong> Piccola<br><strong>BRAKING:</strong> INCAS</p>
<p><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-avid-elixir-sram-level/1.jpg', 'galfer-brake-pads-avid-elixir-sram-level/2.jpg', 'galfer-brake-pads-avid-elixir-sram-level/3.jpg', 'galfer-brake-pads-avid-elixir-sram-level/4.jpg', 'galfer-brake-pads-avid-elixir-sram-level/5.jpg']::text[], 'new', 3, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-avid-juicy', 'GALFER - BRAKE PADS -  AVID JUICY', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><strong>MODEL NUMBER:</strong> FD281<br><strong>COMPATIBILITY: </strong>Avid Juicy 3, 5, 7, Ultimate, Carbon<br><strong>MADE IN SPAIN</strong> </p>

<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-avid-juicy/1.jpg', 'galfer-brake-pads-avid-juicy/2.jpg', 'galfer-brake-pads-avid-juicy/3.jpg']::text[], 'new', 1, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-formula-cura-4', 'GALFER - BRAKE PADS - FORMULA CURA 4', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD531<br><strong>COMPATIBILITY:</strong> Formula Cura 4<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-formula-cura-4/1.jpg', 'galfer-brake-pads-formula-cura-4/2.jpg', 'galfer-brake-pads-formula-cura-4/3.jpg', 'galfer-brake-pads-formula-cura-4/4.jpg', 'galfer-brake-pads-formula-cura-4/5.jpg']::text[], 'new', 3, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-hayes-dominion-a4', 'GALFER - BRAKE PADS - HAYES DOMINION A4', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD549<br><strong>COMPATIBILITY:</strong> Hayes Dominion A4<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-hayes-dominion-a4/1.jpg', 'galfer-brake-pads-hayes-dominion-a4/2.jpg', 'galfer-brake-pads-hayes-dominion-a4/3.jpg', 'galfer-brake-pads-hayes-dominion-a4/4.jpg', 'galfer-brake-pads-hayes-dominion-a4/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-hope-e4', 'GALFER - BRAKE PADS - HOPE E4', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD465<br><strong>COMPATIBILITY:</strong> Hope E4, RX4, SH<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-hope-e4/1.jpg', 'galfer-brake-pads-hope-e4/2.jpg', 'galfer-brake-pads-hope-e4/3.jpg', 'galfer-brake-pads-hope-e4/4.jpg', 'galfer-brake-pads-hope-e4/5.jpg']::text[], 'new', 3, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-hope-m4', 'GALFER - BRAKE PADS - HOPE M4', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD465<br><strong>COMPATIBILITY:</strong> Hope M4 (all models) | Trickstuff Diretissima<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-hope-m4/1.jpg', 'galfer-brake-pads-hope-m4/2.jpg', 'galfer-brake-pads-hope-m4/3.jpg', 'galfer-brake-pads-hope-m4/4.jpg', 'galfer-brake-pads-hope-m4/5.jpg']::text[], 'new', 2, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-hope-v4', 'GALFER - BRAKE PADS - HOPE V4', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD466<br><strong>COMPATIBILITY:</strong> Hope V4 | Trickstuff Maxima<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-hope-v4/1.jpg', 'galfer-brake-pads-hope-v4/2.jpg', 'galfer-brake-pads-hope-v4/3.jpg', 'galfer-brake-pads-hope-v4/4.jpg', 'galfer-brake-pads-hope-v4/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-magura-gustav', 'GALFER - BRAKE PADS - MAGURA GUSTAV PRO', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD584<br><strong>COMPATIBILITY:</strong> Magura Gustav<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-magura-gustav/1.jpg', 'galfer-brake-pads-magura-gustav/2.jpg', 'galfer-brake-pads-magura-gustav/3.jpg', 'galfer-brake-pads-magura-gustav/4.jpg', 'galfer-brake-pads-magura-gustav/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-magura-marta-mt5-mt7', 'GALFER - BRAKE PADS - MAGURA MARTA MT5 - MT7', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD487<br><strong>COMPATIBILITY:</strong> Magura Marta MT5 - MT7<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-magura-marta-mt5-mt7/1.jpg', 'galfer-brake-pads-magura-marta-mt5-mt7/2.jpg', 'galfer-brake-pads-magura-marta-mt5-mt7/3.jpg', 'galfer-brake-pads-magura-marta-mt5-mt7/4.jpg', 'galfer-brake-pads-magura-marta-mt5-mt7/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-magura-mt2-4-6-8', 'GALFER - BRAKE PADS - MAGURA MT2-4-6-8', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD487<br><strong>COMPATIBILITY:</strong> Magura MT2, MT4, MT6, MT8, MTS<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-magura-mt2-4-6-8/1.jpg', 'galfer-brake-pads-magura-mt2-4-6-8/2.jpg', 'galfer-brake-pads-magura-mt2-4-6-8/3.jpg', 'galfer-brake-pads-magura-mt2-4-6-8/4.jpg', 'galfer-brake-pads-magura-mt2-4-6-8/5.jpg']::text[], 'new', 2, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-shimano-deore', 'GALFER - BRAKE PADS - SHIMANO DEORE', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD293<br><strong>COMPATIBILITY:<br>Shimano:</strong> BR-MT200, BR-C601, BR-M355, BR-M375, BR-M395, BR-M415, BR-M416, BR-M445, BR-M446, BR-M447, BR-M465, BR-M475, BR-M485, BR-M486, BR-M495, BR-M505, BR-M506, BR-M515, BR-M525, BR-M575, BR-MT400, BR-MT500, BR-T615, BR-T675<br><strong>Tektro:</strong> Auriga, Dorado, Draco, Gemini, HDC 300, Mota, Orion<br><strong>TRP: </strong>Hylex, Spyre, Dash Sport, HY/RD<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-shimano-deore/1.jpg', 'galfer-brake-pads-shimano-deore/2.jpg', 'galfer-brake-pads-shimano-deore/3.jpg', 'galfer-brake-pads-shimano-deore/4.jpg', 'galfer-brake-pads-shimano-deore/5.jpg']::text[], 'new', 2, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-shimano-four-piston', 'GALFER - BRAKE PADS - SHIMANO FOUR PISTON', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD426<br><strong>COMPATIBILITY:</strong> <br><strong>Shimano</strong> BR-M8120, BR-M7120, BR-M6120, BR-M8020, BR-M820, BR-M810, BR-M640, BR-MT520, BR-MT420<br><strong>Tektro</strong> Quadiem, SL, Slate T4<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-shimano-four-piston/1.jpg', 'galfer-brake-pads-shimano-four-piston/2.jpg', 'galfer-brake-pads-shimano-four-piston/3.jpg', 'galfer-brake-pads-shimano-four-piston/4.jpg', 'galfer-brake-pads-shimano-four-piston/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-shimano-m755-hope-mono-m4', 'GALFER - BRAKE PADS - SHIMANO M755 / HOPE MONO M4', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD247<br><strong>COMPATIBILITY:<br>Shimano:</strong> BR-M755, BR-M756<br><strong>Hope:</strong> Mono M4<br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-shimano-m755-hope-mono-m4/1.jpg', 'galfer-brake-pads-shimano-m755-hope-mono-m4/2.jpg', 'galfer-brake-pads-shimano-m755-hope-mono-m4/3.jpg']::text[], 'new', 1, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-shimano-road', 'GALFER - BRAKE PADS - SHIMANO ROAD', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1455 ROAD</strong><br>Road G1455 is a new brake pad compound specifically developed to offer the best performance on the road under all weather conditions. Thanks to the knowledge and experience achieved in more than 60 years of manufacturing braking systems for two-wheel vehicles, Galfer has developed the ultimate in powerful, efficient and hard-wearing brake pads for road bikes.</p>
<p>Applications: Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD496<br><strong>COMPATIBILITY:</strong> Shimano Dura-Ace, Ultegra, 105: BR-R9170, BR-R8070, BR-R7070, BR-RS805, BR-RS505, BR-RS405, BR-RS305, BR-U5000<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-shimano-road/1.jpg', 'galfer-brake-pads-shimano-road/2.jpg', 'galfer-brake-pads-shimano-road/3.jpg', 'galfer-brake-pads-shimano-road/4.jpg', 'galfer-brake-pads-shimano-road/5.jpg']::text[], 'new', 3, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-shimano-two-piston', 'GALFER - BRAKE PADS - SHIMANO TWO PISTON', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD452<br><strong>COMPATIBILITY:</strong> Shimano BR-M9000, BR-M9020, BR-M987, BR-M985, BR-M8100, BR-M8000, BR-M785, BR-M7100, BR-M7000, BR-M675, BR-M666, BR-M6100, BR-M6000, BR-M615, BR-S7000, BR-S700, BR-CX77, BR-RS785, BR-R785, BR-R517, BR-R317<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-shimano-two-piston/1.jpg', 'galfer-brake-pads-shimano-two-piston/2.jpg', 'galfer-brake-pads-shimano-two-piston/3.jpg', 'galfer-brake-pads-shimano-two-piston/4.jpg', 'galfer-brake-pads-shimano-two-piston/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-shimano-xt-legacy', 'GALFER - BRAKE PADS - SHIMANO XT (LEGACY)', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD294<br><strong>COMPATIBILITY: </strong>Shimano BR-M975, BR-M966, BR-M965, BR-M800, BR-M776, BR-M775, BR-M765, BR-M665, BR-M601, BR-M585, BR-M596, BR-M595, BR-M535, BR-M545, BR-R505, BR-T665<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-shimano-xt-legacy/1.jpg', 'galfer-brake-pads-shimano-xt-legacy/2.jpg', 'galfer-brake-pads-shimano-xt-legacy/3.jpg']::text[], 'new', 1, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-sram-code', 'GALFER - BRAKE PADS - SRAM CODE', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD455<br><strong>COMPATIBILITY:</strong> SRAM Code R (2011+), Guide RE<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-sram-code/1.jpg', 'galfer-brake-pads-sram-code/2.jpg', 'galfer-brake-pads-sram-code/3.jpg', 'galfer-brake-pads-sram-code/4.jpg', 'galfer-brake-pads-sram-code/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-sram-guide-avid-x0-trail', 'GALFER - BRAKE PADS - SRAM GUIDE / AVID X0 TRAIL', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD459<br><strong>COMPATIBILITY:</strong> SRAM Guide, Avid Trail X0<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-sram-guide-avid-x0-trail/1.jpg', 'galfer-brake-pads-sram-guide-avid-x0-trail/2.jpg', 'galfer-brake-pads-sram-guide-avid-x0-trail/3.jpg', 'galfer-brake-pads-sram-guide-avid-x0-trail/4.jpg', 'galfer-brake-pads-sram-guide-avid-x0-trail/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-sram-level', 'GALFER - BRAKE PADS - SRAM LEVEL', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><strong>MODEL NUMBER:</strong> FD513<br><strong>COMPATIBILITY: </strong>SRAM Level T, TL, Base | 2-piece caliper models for TLM, ULT<strong><br></strong><strong>MADE IN SPAIN</strong> </p>

<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-sram-level/1.jpg', 'galfer-brake-pads-sram-level/2.jpg', 'galfer-brake-pads-sram-level/3.jpg', 'galfer-brake-pads-sram-level/4.jpg', 'galfer-brake-pads-sram-level/5.jpg']::text[], 'new', 0, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-sram-maven', 'GALFER - BRAKE PADS - SRAM MAVEN', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><strong>G1652 E-BIKE</strong><br>The new G1652 compound stands out for its resistance to high temperatures, strong braking power, exceptional durability and absence of noise. It has been developed specifically to meet the added demands placed on braking systems by the additional speed and weight of electric bicycles.</p>
<p>Applications: E-bike</p>
<p>Certified by ECE R-90 for E-bikes.</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD575<br><strong>COMPATIBILITY:</strong> SRAM Maven<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-sram-maven/1.jpg', 'galfer-brake-pads-sram-maven/2.jpg', 'galfer-brake-pads-sram-maven/3.jpg', 'galfer-brake-pads-sram-maven/4.jpg', 'galfer-brake-pads-sram-maven/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('galfer-brake-pads-sram-road-level-monoblock', 'GALFER - BRAKE PADS - SRAM ROAD / LEVEL MONOBLOCK', 'galfer', 'components', 'brake-pads', '<p>Galfer brake pads draw on 60 years of expertise in braking technology to deliver unrivalled stopping power. Precisely formulated compounds and state-of-the-art manufacturing systems ensure consistent, reliable and exceptional braking performance from every set of pads.</p>
<p>Galfer brake pads are the choice of multiple professional cycling teams across all disciplines. From the rigors of the UCI Downhill circuit to the year-round punishment dished out by World Tour Road athletes, those competing at the highest levels of the sport choose Galfer braking products to maximise their confidence, performance and safety.<br> </p>
<p>KEY FEATURES</p>
<ul>
<li>Organic semi-metal compound (non asbestos)</li>
<li>Quiet operation</li>
<li>Improved feel, progressiveness and braking power.</li>
<li>Decreased vibration</li>
<li>Reduced brake rotor wear.</li>
<li>High temperature resistance.</li>
<li>Increased durability.</li>
</ul>

<p><strong></strong></p>
<p><br>PAD COMPOUND OPTIONS<br><br><strong>G1053 PERFORMANCE</strong><br>Brake pads suitable for all conditions, perfectly balanced in terms of power, noise and durability, ensuring progressive and consistent braking.</p>
<p>This multi-purpose compound strikes a perfect balance between power and durability. It is ideal for all types of situations and for a wide range of users.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel, Road</p>
<p><strong>G1455 ROAD</strong><br>Road G1455 is a new brake pad compound specifically developed to offer the best performance on the road under all weather conditions. Thanks to the knowledge and experience achieved in more than 60 years of manufacturing braking systems for two-wheel vehicles, Galfer has developed the ultimate in powerful, efficient and hard-wearing brake pads for road bikes.</p>
<p>Applications: Road</p>
<p><strong>G1851 ADVANCED</strong><br>Developed for extreme terrain conditions, the Advanced compound is the first choice for wet and muddy riding.</p>
<p>Made with basaltic fibers and specific coatings that absorb moisture, it delivers stong power and maintains consistent, predictable performance under the worst conditions. Formulated for superb durability in challenging environments.</p>
<p>Applications: XC, DH, Enduro, E-bike, Gravel</p>
<p><strong>G1455T PRO</strong><br>Competition-level brake pads for challenging conditions, where ultimate performance is the priority. Perfect for downhill racing, where brakes are subject to extreme levels of temperature. Braking feel is consistent and powerful, and the pads are able to perform at high temperatures without power fade.</p>
<p>No break-in period is required for Pro compound pads. As a race-level pad, expect a reduced wear life compared to other compounds.</p>
<p>Applications: XC, DH, Enduro, Road</p>
<p><br>SPECIFICATIONS</p>
<p><strong>MODEL NUMBER:</strong> FD469<br><strong>COMPATIBILITY:</strong> SRAM HRD, Red 22, Force 22, Rival 22, CX1, Apex 1, Level TLM &amp; Ultimate (2018+), Red AXS (Flatmount monoblock)<br><strong>MADE IN SPAIN</strong> <br><br></p>
<p><strong></strong><strong><a></a></strong></p>', array['galfer-brake-pads-sram-road-level-monoblock/1.jpg', 'galfer-brake-pads-sram-road-level-monoblock/2.jpg', 'galfer-brake-pads-sram-road-level-monoblock/3.jpg', 'galfer-brake-pads-sram-road-level-monoblock/4.jpg', 'galfer-brake-pads-sram-road-level-monoblock/5.jpg']::text[], 'new', 4, '2026-06-09'::date, false, false),
  ('shimanob01sresindiscbrakepadsbr-m446', 'Shimano B01S Resin Disc Brake Pads BR-M446', 'shimano', 'components', 'brake-pads', '<h3>Shimano B01S Resin Disc Brake Pads</h3>
<h3><strong>Quiet, Consistent and Reliable Stopping Power</strong></h3>
<p>Restore your braking performance with a fresh set of <strong>Shimano B01S Resin Pads</strong>. Designed with Shimano’s signature quality, these pads are easy to install, bed in quickly, and deliver smooth, reliable stopping power in all conditions.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Resin compound</strong> – quieter than metallic pads</p>
</li>
<li>
<p><strong>Enhanced braking performance</strong> even in wet conditions</p>
</li>
<li>
<p><strong>Lightweight design</strong> – only 22g per pair</p>
</li>
<li>
<p><strong>Genuine Shimano quality</strong> with clear instructions and easy installation</p>
</li>
<li>
<p>Ideal for everyday riding, commuting, and MTB use</p>
</li>
</ul>

<h3>Compatibility</h3>
<p>The Shimano B01S Resin Pads are compatible with:</p>
<ul>
<li>
<p>BR-M575, BR-M495, BR-M486, BR-M485, BR-M446, BR-M445, BR-M395, BR-T675</p>
</li>
</ul>
<p><em>(Note: Always check pad shape against your current set to ensure correct fit.)</em></p>', array['shimanob01sresindiscbrakepadsbr-m446/1.jpg']::text[], 'new', 1, '2021-08-19'::date, false, true)
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
