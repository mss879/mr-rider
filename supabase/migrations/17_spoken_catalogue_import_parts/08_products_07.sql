-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 8 OF 10
--
-- Products 1201-1400 of 1423 (shoes, wheels-tyres-tubes).
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
  -- ---- shoes · shoe-accessories ----
  ('castelli-fast-feet-4-tt-shoecover', 'Castelli Fast Feet 4 TT Shoecover', 'castelli', 'shoes', 'shoe-accessories', '<p>The fastest covering for your feet, for the high speeds of time trialing.</p>
<p><br></p>
<p>TECHNICAL FEATURES</p>
<p>Weight: 82g</p>
<p>Temperature: 10°C - 30°C</p>
<p>Fit: Race</p>
<p><br></p>
<p>PRODUCT FEATURES</p>
<p>Castelli''s Fast Feet project — for time trials or road racing</p>
<p>Extensively tested to be the fastest foot covering for TT or road</p>
<p>Silicone-coated fabric over shoe smooths out airflow</p>
<p>Engineered grooved Lycra® on ankle portion helps detach airflow</p>
<p>Flat polyurethane tape at top keeps shoecover in place</p>', array['castelli-fast-feet-4-tt-shoecover/1.webp', 'castelli-fast-feet-4-tt-shoecover/2.webp', 'castelli-fast-feet-4-tt-shoecover/3.webp', 'castelli-fast-feet-4-tt-shoecover/4.webp']::text[], 'new', 5, '2026-05-01'::date, false, false),
  ('castelli-perfetto-shoecover', 'Castelli Perfetto Shoecover', 'castelli', 'shoes', 'shoe-accessories', '<p>The Perfetto Shoecover''s purposeful design, like that of the entire Perfetto line, including the Gabba, is focused on performance with exceptional breathability and fit, with a high level of water protection from road spray. The do-everything bootie.</p>

<p>The Perfetto design ethos is driven by function, exceptional fabrics and components, and ensuring comfort in any weather, while keeping the aesthetics simple and clean. The fabric here is the key, providing enough stretch for a perfect fit and easy on/off, combined with best-in-class breathability to let moisture escape, while being fully windproof and splash resistant. The oversized YKK® zipper on the back is easy to open and close. We''ve cut the bootie high for extra warmth and finished it with a silicone elastic to keep moisture from entering from the top. This is the shoecover for those long cool-weather rides in changing conditions.</p>

<p><strong>Product features</strong></p>
<p><br><br></p>
<ul>
<li>Engineered with GORE-TEX INFINIUM™ WINDSTOPPER® Stretch Light fabric</li>
</ul>

<ul>
<li>Reduced seam construction</li>
</ul>

<ul>
<li>YKK® Vislon® zipper</li>
</ul>

<ul>
<li>Reflective webbing puller at back</li>
</ul>

<ul>
<li>Abrasion-resistant fabric under foot for durability</li>
</ul>

<ul>
<li>Silicone gripper elastic at top</li>
</ul>

<ul>
<li>Weight:185gm
</li>
</ul>

<ul>
<li>Temperature: 2°C - 14°C / 36°F - 57°F
</li>
</ul>', array['castelli-perfetto-shoecover/1.png', 'castelli-perfetto-shoecover/2.png']::text[], 'new', 1, '2022-07-06'::date, false, false),
  ('castelli-ros-2-shoecover', 'Castelli RoS 2 Shoecover', 'castelli', 'shoes', 'shoe-accessories', '<p>Does everything pretty well: easy on/off, warm, splash resistant, breathable. Meant to be an excellent all-around performance bootie.</p><br><h3><strong>Product features</strong></h3><br><ul>
<br><li>Castelli''s Rain or Shine label means this product is made to excel in both dry and wet conditions</li>
<br><li>Polartec® Power Stretch® Fleece liner provides extra warmth at front</li>
<br><li>YKK® water resistant zipper</li>
<br><li>Reflective heel cap with pull tab</li>
<br>
</ul><br><h3><strong>Technical features</strong></h3><br><ul>
<br><li>Insulation: <strong>3/5</strong>
</li>
<br><li>Waterproofness: <strong>4/5</strong>
</li>
<br><li>Windproofness: <strong>4/5</strong>
</li>
<br><li>Breathability: <strong>3/5</strong>
</li>
<br><li>Lightness: <strong>3/5</strong>
</li>
<br>
</ul><br><ul>
<br><li>Weight: <strong>240 g</strong>
</li>
<br><li>Temperature: <strong>3°C - 12°C / 37°F - 54°F</strong>
</li>
<br><li>Fit: <strong>Tailored</strong>
</li>
<br>
</ul><br><p><strong>WHEN ANY WEATHER IS GOOD WEATHER </strong>Our Rain or Shine collection is designed to perform, and the name implies, in brilliant sunshine or with drizzle or wet roads. With an added Polartec® panel on the front and 3-layer fleece-backed waterproof side panels, you''ll never miss a day because of your feet again.</p>', array['castelli-ros-2-shoecover/1.jpg']::text[], 'new', 1, '2024-08-05'::date, false, false),
  ('castelli-toe-thingy-2', 'Castelli Toe Thingy 2', 'castelli', 'shoes', 'shoe-accessories', '<h3>Castelli Toe Thingy 2</h3>
<p><strong>Slip-on warmth for your toes.</strong></p>
<p>Keep your feet cozy on slightly cooler rides with the <strong>Castelli Toe Thingy 2</strong>. This neoprene toe cover slips easily over the front of your cycling shoes, held securely in place by your cleats. Lightweight yet effective, it’s a simple solution for protecting your toes without the hassle of a full shoecover. The rugged underside adds grip and resists wear, while the silicone print ensures durability. Wear it alone or layer it under a full shoecover for extra warmth.</p>
<h3><strong>Key Features</strong></h3>
<ul>
<li>
<p><strong>Windproof Neoprene</strong> – Protects toes from cold air.</p>
</li>
<li>
<p><strong>Rugged, Rubberized Sole</strong> – Durable with cleat openings for secure fit.</p>
</li>
<li>
<p><strong>Versatile Wear</strong> – Can be used solo or under a full shoecover.</p>
</li>
<li>
<p><strong>Red Fabric Interior</strong> – Adds comfort and visual flair.</p>
</li>
<li>
<p><strong>Weight</strong> – 92g</p>
</li>
<li>
<p><strong>Recommended Temperature</strong> – 10°C–18°C (50°F–64°F)</p>
</li>
<li>
<p><strong>Care Note</strong> – Color may transfer when wet; avoid prolonged contact with light surfaces.</p>
</li>
</ul>', array['castelli-toe-thingy-2/1.jpg', 'castelli-toe-thingy-2/2.jpg', 'castelli-toe-thingy-2/3.jpg', 'castelli-toe-thingy-2/4.jpg']::text[], 'new', 1, '2025-05-16'::date, false, false),
  ('castelli-unlimited-shoecover', 'Castelli Unlimited Shoecover', 'castelli', 'shoes', 'shoe-accessories', '<p>The bootie for all of your Unlimited adventures. Warm fleece-backed fabric with a DWR treatment to keep you warm and dry. The long zipper and stretch fabric make these easy to put on over bulky MTB or gravel shoes and ensure a perfect fit that isn''t tight or constrictive.</p>
<p>TECHNICAL FEATURES</p>
<p>Insulation 4/5</p>
<p>Waterproofness 4/5</p>
<p>Windproofness 5/5</p>
<p>Breathability 3/5</p>
<p>Lightness 3/5</p>
<ul>
<li>Weight:190<em> g</em>
</li>
<li>Temperature:0°C - 14°C / 42°F - 57°F</li>
<li>Fit:Trail</li>
</ul>

PRODUCT FEATURES
Warmth and protection for cold-weather riding conditions4-way-stretch fabric with DWR and fleece backingZipper closure and reflective pull for easy on and offBottom opening accommodates road, gravel, or MTB shoesDurable panel wraps around lower part to protect shoecover when walking', array['castelli-unlimited-shoecover/1.jpg', 'castelli-unlimited-shoecover/2.jpg', 'castelli-unlimited-shoecover/3.jpg', 'castelli-unlimited-shoecover/4.jpg', 'castelli-unlimited-shoecover/5.jpg']::text[], 'new', 0, '2025-06-19'::date, false, false),
  ('neoprene-shoe-covers', 'Neoprene Shoe Covers', 'specialized', 'shoes', 'shoe-accessories', '<p>We all have our tricks for successful cold-weather riding. Want to know ours? Neoprene Shoe Covers. Made for cold, wet, and windy days on the bike, stretchy neoprene and fully taped seams help keep feet dry and comfortable mile after mile. Whether you’re suiting up for a gravel adventure or a road ride, the universal cleat opening makes it easy to pull on over your preferred cycling shoe type. Abrasion-resistant panels in high-wear areas add durability.</p>', array['neoprene-shoe-covers/1.jpg', 'neoprene-shoe-covers/2.jpg', 'neoprene-shoe-covers/3.jpg', 'neoprene-shoe-covers/4.jpg', 'neoprene-shoe-covers/5.jpg']::text[], 'new', 2, '2024-08-05'::date, false, false),
  ('neoprene-toe-covers', 'Neoprene Toe Covers', 'specialized', 'shoes', 'shoe-accessories', '<p>A little cold or windy weather in the forecast? No problem. When full shoe covers are overkill, pull on our Neoprene Toe Covers for just the right amount of warmth and protection. Perfect for short winter rides or longer shoulder season excursions, the stretchy, weather-resistant design is compatible with all cleat types. Abrasion-resistant panels add durability, so feet stay comfortable ride after ride.</p>', array['neoprene-toe-covers/1.jpg', 'neoprene-toe-covers/2.jpg', 'neoprene-toe-covers/3.jpg']::text[], 'new', 0, '2024-08-05'::date, false, false),
  ('rain-shoe-covers', 'Rain Shoe Covers', 'specialized', 'shoes', 'shoe-accessories', '<p>From sprinkles to downpours, our Rain Shoe Covers are built to keep feet dry and comfortable in wet weather. Fully taped seams and a waterproof membrane seal out the elements. Designed to fit snugly over cycling shoes, the flexible material and back zipper make them easy to get on and off.</p>', array['rain-shoe-covers/1.jpg', 'rain-shoe-covers/2.jpg']::text[], 'new', 3, '2025-05-21'::date, false, false),
  ('specialized-neoprene-shoe-cover', 'Specialized Neoprene Shoe Cover', 'specialized', 'shoes', 'shoe-accessories', '<p>We all have our tricks for successful cold-weather riding. Want to know ours? Neoprene Shoe Covers. Made for cold, wet, and windy days on the bike, stretchy neoprene and fully taped seams help keep feet dry and comfortable mile after mile. Whether you’re suiting up for a gravel adventure or a road ride, the universal cleat opening makes it easy to pull on over your preferred cycling shoe type. Abrasion-resistant panels in high-wear areas add durability.</p>

<ul>
<li>Abrasion-resistant toe and heel sole with universal welted hook-and-loop closure, so covers are compatible with both road and mountain shoes.</li>
<li>Fabric Content: 100% Polyester</li>
</ul>', array['specialized-neoprene-shoe-cover/1.jpg']::text[], 'new', 2, '2025-05-21'::date, false, false),
  ('team-issue-pro-height-aero-shoecovers', 'Team Issue Pro Height Aero Shoecovers', 'team-issue', 'shoes', 'shoe-accessories', '', array['team-issue-pro-height-aero-shoecovers/1.webp']::text[], 'new', 3, '2025-05-16'::date, false, false),
  ('velotoze-aero-shoe-covers', 'VeloToze Aero Shoe Covers', 'velotoze', 'shoes', 'shoe-accessories', '<h3>DESCRIPTION</h3>

<p><strong>EXPERIENCE UNRIVALED SPEED WITH CUTTING-EDGE AERO SHOE COVERS</strong></p>

<p>Introducing our latest innovation in aero gear – Aero Shoe Covers that redefine the standards of performance. Born from meticulous wind tunnel testing, we''ve combined the game-changing 2.0 Short Shoe Covers with Aero Socks to create the ultimate aero combo. Our Aero Shoe Covers are engineered to perfection, merging premium Italian aero fabric with windproof foot materials, in a cutting edge design without zipper or Velcro for maximum aerodynamic advantage. These shoe covers have the potential to save nearly 5 watts at a speed of 45 kph/28 mph during a time trial.</p>
<p><strong> </strong></p>
<p><strong>Advanced Aero Fabric:</strong> Our Aero Shoe Covers boast the craftsmanship of Italian precision and passion. Crafted from the finest Italian aero fabric, this advanced material is meticulously designed to optimize aerodynamics, allowing you to effortlessly slice through the air.</p>
<p><strong> </strong></p>
<p><strong>Windproof Technology:</strong> The windproof material at the foot area seamlessly molds to your cycling shoes, covering dials and buckles snugly to minimize aerodynamic drag.</p>
<p><strong> </strong></p>
<p><strong>Innovative Zipper-Free, Velcro-Free Design:</strong> Our Aero Shoe Covers feature the original veloToze innovation of a zipper-free and Velcro-free design, ensuring unrivaled aerodynamic efficiency.</p>
<p><strong> </strong></p>
<p><strong>Reliable Non-Slip Grippers:</strong> Engineered with true non-slip grippers, our shoe covers ensure they stay in place on your legs while delivering additional aerodynamic advantages.</p>
<p>Elevate your cycling experience and speed with our Aero Shoe Covers in your next UCI race or local club time trial. Born from the Italian spirit of performance, these covers epitomize the epitome of aerodynamic efficiency and style, empowering you to escalate your speed like never before. </p>
<p><strong> </strong></p>
<p><strong>Sizing</strong></p>
<p>Small (EU 37 - 40)</p>
<p>Medium (EU 40.5 - 43)</p>
<p>Large (EU 44 - 46)</p>
<p>XL (EU 46.5 - 49)</p>
<h4><strong>INSTRUCTIONS</strong></h4>
<ol>
<li>Put on sock then pull shoe cover on over sock BEFORE wearing cycling shoe</li>
<li>Put foot through large cleat hole, and pull shoe cover up and around the ankle</li>
<li>Put on the shoe then pull the shoe cover down over the heel of the shoe FIRST, then pull over the toe</li>
<li>Adjust around the cleat and heel. Ensure no part of the shoe cover is over the cleat or heel pad. </li>
</ol>
<h4><strong>MATERIALS</strong></h4>
<ul>
<li>Leg Fabric - 80% Polyester, 20% Elastane</li>
<li>Foot Fabric - 60% Polyester, 40% Polyurethane</li>
</ul>
<h4><strong>CARE INSTRUCTIONS</strong></h4>
<ul>
<li>Machine wash cold with like colors</li>
<li>Air Dry</li>
<li>Do not machine dry </li>
<li>Do not iron</li>
<li>Do not bleach</li>
</ul>', array['velotoze-aero-shoe-covers/1.jpg', 'velotoze-aero-shoe-covers/2.webp']::text[], 'new', 8, '2025-05-16'::date, false, false),
  ('velotoze-silicone-shoe-covers', 'VeloToze Silicone Shoe Covers', 'velotoze', 'shoes', 'shoe-accessories', '<p><strong>SHOE COVERS RE-INVENTED AGAIN WITH SNAPS</strong></p>

<p>Cyclists worldwide have cherished our 2.0 Tall Shoe Covers for their unmatched waterproofing and aerodynamic performance. Yet, for those seeking an easier installation solution without compromising performance, we invented Silicone Shoe Covers, featuring an ingenious snap-button design.</p>
<p><strong> </strong></p>
<p><strong>Protection Beyond Compare:</strong> Our Silicone Shoe Covers are meticulously engineered to provide superior insulation against the elements while retaining the hallmark waterproof and windproof protection you expect from veloToze. Silicone material is renowned for its exceptional insulating properties, ensuring your feet shielded from the harsh elements.</p>
<p><strong> </strong></p>
<p><strong>Snap-On Simplicity: </strong>We''ve taken ease of use to the next level with snap buttons at the bottom, making installation a breeze. These buttons are fastened snugly under your cycling shoes, providing a secure and comfortable fit. </p>
<p><strong> </strong></p>
<p><strong>Aerodynamic Form-Fitting: </strong>Our silicone material is incredibly flexible, allowing for a smooth, snug fit over the dials and buckles of your cycling shoes. Resulting a sleek, aero profile that enhances your performance while keeping your feet protected.</p>
<p><strong> </strong></p>
<p><strong>Fits Most Cleated Cycling Shoes: </strong>Our cleat and heel pad openings are generously sized to accommodate a wide range of cleated cycling shoes, including road, gravel, and MTB, ensuring a perfect fit for most riders.</p>
<p>Whether you''re gearing up for a race day, embarking on a rigorous training session, tackling gravel roads, or simply commuting to work, choosing veloToze Silicone Shoe Covers is as easy as a snap.</p>
<p>Designed for 0°C (32°F ) in dry, sunny weather to 15°C (59°F ) in wet, rainy weather. </p>
<p><strong> </strong></p>
<p><strong>INSTRUCTIONS</strong></p>
<ol>
<li>
<p>Put on sock then pull shoe cover on over sock</p>
</li>
<li>
<p>Ensure the closure at bottom of the shoe cover is open</p>
</li>
<li>
<p>Put on a cycling shoe and close snaps under the shoe</p>
</li>
<li>
<p>Ensure shoe cover is pulled up over sock to create a water-tight seal around the ankle</p>
</li>
<li>
<p>Adjust around the cleat and heel pad. Ensure no part of the shoe cover is over the cleat or heel pad.</p>
</li>
</ol>

<p><strong> </strong></p>
<p><strong>MATERIALS</strong></p>
<p>100% Silicone Rubber</p>
<p><strong> </strong></p>
<p><strong>CARE INSTRUCTIONS</strong></p>
<ul>
<li>
<p>To clean shoe covers, just wipe with a wet cloth or rinse with water. </p>
</li>
<li>
<p>To dry shoe covers, simply wipe with a dry cloth or air dry.</p>
</li>
<li>
<p>Avoid contact with sharp objects.</p>
</li>
</ul>
<p><strong> </strong></p>
<p><strong>PRO TIPS</strong></p>
<ul>
<li>
<p>To prevent water from entering from the bottom of the shoe, remove the insole and place tape over the vent opening.</p>
</li>
<li>
<p>Ensure shoe covers are pulled up over socks and are under legwarmers to create a water-tight seal.</p>
</li>
</ul>
<p><b> </b></p>
<p><b>SIZE</b></p>
<p>SMALL (EU 37 - 40)</p>
<p>MEDIUM (EU 40.5 - 42.5)</p>
<p>LARGE (EU 43 - 46)</p>
<p>XL (EU 46.5 - 49)</p>', array['velotoze-silicone-shoe-covers/1.jpg', 'velotoze-silicone-shoe-covers/2.jpg', 'velotoze-silicone-shoe-covers/3.jpg', 'velotoze-silicone-shoe-covers/4.jpg', 'velotoze-silicone-shoe-covers/5.jpg']::text[], 'new', 6, '2025-05-16'::date, false, false),
  ('velotoze-silicone-toe-covers', 'VeloToze Silicone Toe Covers', 'velotoze', 'shoes', 'shoe-accessories', '<p><strong>YOUR SMART SOLUTION FOR BRAVING THE ELEMENTS</strong></p>

<p>When the weather takes a turn for the worse, veloToze Silicone Toe Covers are here to ensure your toes stay warm and protected during those chilly rides. Engineered from high-quality silicone material, these covers are your reliable defense against the elements, offering waterproof, windproof, and aerodynamic features in a compact design.</p>
<p><strong> </strong></p>
<p><strong>Enhanced Protection: </strong>Our Silicone Toe Covers are designed to provide superior protection. Slightly thicker and longer than our original Toe Covers, they are tailored for added weather resistance. </p>
<p><strong> </strong></p>
<p><strong>Compact and Convenient: </strong>While these covers offer enhanced protection, they remain small and compact. Easily slip them into your jersey pocket or saddle bag, always there when needed.</p>
<p><strong> </strong></p>
<p><strong>Keep Your Cycling Shoes Clean:</strong> Cycling shoes often suffer from dirt and debris on the road, particularly at the toe area. veloToze Toe Covers act like a protective glove for your shoes, preventing unwanted splash and grime from tarnishing your prized cycling footwear.</p>
<p><strong> </strong></p>
<p><strong>Aero Advantage:</strong> veloToze Toe Covers windproof material forms a smooth, snug fit over the front dials and buckles of your cycling shoes, helps reduce aerodynamic drag. </p>
<p>Don''t let unpredictable weather dampen your rides – experience the warmth and protection that veloToze Silicone Toe Covers deliver, and keep your rides enjoyable, no matter the forecast.</p>
<p>Designed for 10<strong>°</strong>C/50<strong>°</strong>F to 20<strong>°</strong>C/68<strong>°</strong>F riding condition. </p>

<p><strong> </strong></p>
<p><strong>MATERIALS</strong></p>
<ul>
<li>
<p>100% Silicone Rubber</p>
</li>
</ul>
<p><strong> </strong></p>
<p><strong>CARE INSTRUCTIONS</strong></p>
<ul>
<li>
<p>To clean wipe with a cool, wet cloth. </p>
</li>
<li>
<p>To dry hang over a hanger or ledge or wipe with a dry cloth. Do not put Toe Covers in a clothes washer or a dryer. </p>
</li>
<li>
<p>Avoid contact with sharp objects.</p>
</li>
<li>
<p>Do not store in direct sunlight.</p>
</li>
</ul>', array['velotoze-silicone-toe-covers/1.png', 'velotoze-silicone-toe-covers/2.png', 'velotoze-silicone-toe-covers/3.png', 'velotoze-silicone-toe-covers/4.jpg', 'velotoze-silicone-toe-covers/5.png']::text[], 'new', 2, '2025-05-16'::date, false, false),
  ('velotoze-tall-shoe-covers-gravel-mtb', 'VeloToze Tall Shoe Covers - Gravel & MTB', 'velotoze', 'shoes', 'shoe-accessories', '<p><strong>THE ULTIMATE PROTECTION FOR YOUR OFF-ROAD ADVENTURES</strong></p><p><strong></strong></p><p><br></p><p>We love riding in the dirt, but spending time cleaning off mud after a thrilling trail ride isn''t our idea of fun. That''s why we created veloToze Tall Gravel/MTB Shoe Covers, engineered to let you relish the dirt and focus on the trails ahead instead of worrying about soggy cold feet and the post-ride cleanup hassle. </p><p><strong><br></strong></p><p><strong>Unrivaled Protection, Enhanced for Off-Road Thrill: </strong>Our Tall Shoe Covers - Gravel/MTB are your trusted companions on the trail. Crafted from our signature waterproof windproof material, these covers have been specially reinforced to excel in the rugged terrains of dirt and gravel trails. </p><p><strong><br></strong></p><p><strong>Easy Post Ride Clean Up: </strong>After an exhilarating, muddy ride, cleaning up your gear should be the last thing on your mind. That''s why veloToze Tall Shoe Covers - Gravel/MTB are designed for your ultimate convenience. Just give them a quick blast with a water hose to effortlessly remove dirt and mud, then wipe them dry. You''ll be all set for your next adventure. </p><p><strong><br></strong></p><p><strong>A Perfect Fit for Your Bulkier Mountain Bike Shoes: </strong>We understand the importance of accommodating bulkier mountain bike shoes. The cleat holes on our Gravel/MTB Shoe Covers are expertly cut to fit gravel/mountain bike shoes perfectly.</p><p>Whether you''re a competitive racer, a dedicated commuter, or an avid off-road enthusiast, our veloToze Tall Shoe Covers are your essential companion. Regardless of your riding style, these covers will keep your feet dry, warm, and comfortable. </p><p><strong><br></strong></p><p><strong>SIZE</strong></p><p>SMALL (EU 37 - 40)</p><p>MEDIUM (EU 40.5 - 42.5)</p><p>LARGE (EU 43 - 46)</p><p>XL (EU 46.5 - 49)</p>', array['velotoze-tall-shoe-covers-gravel-mtb/1.jpg', 'velotoze-tall-shoe-covers-gravel-mtb/2.jpg', 'velotoze-tall-shoe-covers-gravel-mtb/3.jpg', 'velotoze-tall-shoe-covers-gravel-mtb/4.jpg']::text[], 'new', 4, '2025-05-16'::date, false, false),
  ('velotoze-tall-shoe-covers-road', 'VeloToze Tall Shoe Covers/Road', 'velotoze', 'shoes', 'shoe-accessories', '<p><strong>ULTIMATE PROTECTION AND SPEED WITH ENHANCED DURABILITY</strong></p>

<p>At veloToze, we''ve taken your feedback to heart and overhauled our road cycling shoe covers to provide you with a superior, longer-lasting, and easier-to-wear solution. Our signature waterproof and windproof lightweight material remains the backbone of our design, now reinforced in the bottom and toe areas for enhanced durability.</p>

<p><strong>Unmatched Waterproof Performance:</strong> veloToze Tall Shoe Covers are engineered to create a tight seal with your calf, effectively shielding your feet and shoes from the elements. Our material doesn''t retain water at all when wet. Rain simply glides off, leaving you dry and ready to conquer the road.</p>

<p><strong>Ultimate Wind Protection:</strong> In those cold and rainy days, our windproof material offers amazing protection without the bulk. Even during chilly mornings or winter rides, these shoe covers are the choice of pro cyclists.</p>

<p><strong>Superb Aerodynamic Advantage:</strong> veloToze Tall Shoe Covers offer exceptional aerodynamics. The windproof material forms a smooth, snug fit over the dials and buckles of your cycling shoes, minimizing aerodynamic drag. Wind tunnel testing has demonstrated an impressive 4.47 watts of power savings at 40kph. The results speak for themselves in our VeloToze <a href="https://www.velotoze.com/pages/aero-advantages" rel="noopener nofollow" target="_blank">Aero-vantage</a> test result.</p>

<p><strong>Enhanced Durability and Easier-to-Wear:</strong> We''ve reinforced the bottom and toe areas of shoe covers with innovative production technique for enhanced durability while featuring a larger cleat opening for easier installation.</p>

<p><strong>Seamless Technology and Compact Design:</strong> Made from a flexible and lightweight material in a seamless one piece construction without zippers or Velcro. Compact design easily fits in a jersey pocket or saddle bag.</p>
<p>veloToze 2.0 Tall Shoe Covers is the ultimate aero waterproof shoe covers, engineered to elevate your cycling experience. Don''t compromise on speed, comfort, or protection. Join the community of cyclists who trust veloToze for top-notch performance, and discover why we''re the preferred shoe covers choice in the pro peloton in wet and challenging conditions. </p>

<p><strong> </strong></p>
<p><strong>MATERIALS</strong></p>
<ul>
<li>
<p>100% Latex Rubber</p>
</li>
</ul>
<p><strong> </strong></p>
<p><strong>CARE INSTRUCTIONS</strong></p>
<ul>
<li>
<p>To clean shoe covers, just wipe with a wet cloth or rinse with water. Do not put shoe covers in a clothes washer.</p>
</li>
<li>
<p>To dry shoe covers, simply wipe with a dry cloth. Apply baby powder to prevent sticking. Do not put shoe covers in a clothes dryer.</p>
</li>
<li>
<p>Avoid contact with sharp objects.</p>
</li>
<li>
<p>Do not store in direct sunlight.</p>
</li>
</ul>
<p>Designed for 5°C (40°F ) in dry, sunny weather to 19°C (66°F ) in wet, rainy weather. </p>
<p><strong> </strong></p>
<p><strong>PRO TIPS</strong></p>
<ul>
<li>
<p>To prevent water from entering from the bottom of the shoe, remove the insole and place tape over the vent opening.</p>
</li>
<li>
<p>Ensure shoe covers are pulled up over socks and are under legwarmers to create a water-tight seal.</p>
</li>
</ul>

<p><b>SIZE</b></p>
<p>SMALL (EU 37 - 40)</p>
<p>MEDIUM (EU 40.5 - 42.5)</p>
<p>LARGE (EU 43 - 46)</p>
<p>XL (EU 46.5 - 49)</p>
<p><strong> </strong></p>
<p><strong>CAUTION: </strong>THIS PRODUCT CONTAINS NATURAL RUBBER LATEX WHICH MAY CAUSE ALLERGIC REACTIONS.</p>', array['velotoze-tall-shoe-covers-road/1.jpg', 'velotoze-tall-shoe-covers-road/2.jpg', 'velotoze-tall-shoe-covers-road/3.jpg', 'velotoze-tall-shoe-covers-road/4.jpg', 'velotoze-tall-shoe-covers-road/5.jpg']::text[], 'new', 14, '2025-05-16'::date, false, false),
  ('velotoze-toe-covers', 'VeloToze Toe Covers', 'velotoze', 'shoes', 'shoe-accessories', '<h4><strong>YOUR SECRET WEAPON FOR CHILLY RIDES</strong></h4><h4></h4><p>Designed to keep cyclists'' feet warm on those cool, foggy mornings, veloToze Toe Covers are the ultimate minimalist solution. Engineered from our lightweight, waterproof, and windproof material, these covers offer just perfect level of enhanced protection. </p><p><strong><br></strong></p><p><strong>Featherlight and Compact: </strong>Weighing less than 25 grams a pair, veloToze Toe Covers are virtually weightless. Their compact design allows them to fold up smaller than a spare tube, making them the ideal addition to your jersey pocket or saddle bag. You won''t even notice until you need them. </p><p><strong><br></strong></p><p><strong>Aero Advantage:</strong> veloToze Toe Covers windproof material forms a smooth, snug fit over the front dials and buckles of your cycling shoes, helps reduce aerodynamic drag. </p><p><strong><br></strong></p><p><strong>Keep Your Cycling Shoes Clean: </strong>Cycling shoes often suffer from dirt and debris on the road, particularly at the toe area. veloToze Toe Covers act like a protective glove for your shoes, preventing unwanted splash and grime from tarnishing your prized cycling footwear.</p><p><strong><br></strong></p><p><strong>Triathlete-Friendly: </strong>Triathletes, listen up! Our Toe Covers are designed to fit your cycling shoes without interfering with your transition. Slip them over your cycling shoes before the start and leave them on throughout the race, saving valuable time in transition and on the bike course.</p><p>Whether it''s race day, a training session, or your daily commute, veloToze Toe Covers are an excellent choice for minimalists looking to enhance their riding experience, stay comfortable and protected in a variety of cycling situations.</p><p><br><strong></strong><strong></strong></p><p>Designed for 13<strong>°</strong>C/55<strong>°</strong>F to 24<strong>°</strong>C/75<strong>°</strong>F riding condition. </p><h4> </h4>', array['velotoze-toe-covers/1.jpg', 'velotoze-toe-covers/2.jpg', 'velotoze-toe-covers/3.jpg', 'velotoze-toe-covers/4.jpg', 'velotoze-toe-covers/5.jpg']::text[], 'new', 5, '2025-05-16'::date, false, false),

  -- ---- shoes · triathlon-shoes ----
  ('bont-riot-tr-26-white', 'Bont Riot TR+ 26 White', 'bont', 'shoes', 'triathlon-shoes', '<p>Designed to provide a fast entry and secure ride, the all-new Riot TR+ 26 delivers all-day comfort and a modern approach to Bont Cycling’s popular Riot series. Built using our latest ‘slide and ride’ construction method and backed by anatomically correct shaping, the Riot TR+ 26 is the go-to triathlon shoe for racers of any ability.</p>
<p>Featuring a carbon composite base, lowered carbon mid and forefoot shaping plus a dual-Velcro strap fastening system for rapid entry and release into transition, the Riot TR+ continues Bont Cycling’s latest approach to cycling shoe design. </p>
<p>Providing a more versatile fit and feel – compared to the previous generation Riot TR+ – the TR+ 26 accommodates an even greater range of foot shapes, sizes and types.</p>

<ul>
<li>
Carbon composite construction and Bont Cycling''s proprietary heat molding technology.</li>
<li>
Ultralight and supportive Microfiber upper for improved breathability, comfort, and performance.</li>
<li>
Comfortable honeycomb fabric liner with lightweight padding for a cool and comfortable fit across the entire day.</li>
<li>
Industry-leading 4.6mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability, and injury prevention.</li>
<li>
Innersole-Bont Cycling x Cobra9 dual-density EVA innersole.</li>
<li>
Sole Guard-Replaceable heel guards with internal fittings.</li>
<li>
Carbon steel cleat t-nut hardware for long lasting and hassle-free cleat installation and adjustment.</li>
<li>
Two widths with improved foot suitability across different shapes and types: standard and wide.</li>
<li>
Cleat Mounting:Fixed3-hole road pedal configuration with alignment grid.</li>
<li>
Independent double Velcro with heel loop.</li>
<li>
Weight-238grams (weighed, based on size 42 shoe)</li>
</ul>', array['bont-riot-tr-26-white/1.webp', 'bont-riot-tr-26-white/2.webp', 'bont-riot-tr-26-white/3.webp', 'bont-riot-tr-26-white/4.webp']::text[], 'new', 14, '2026-03-06'::date, false, false),
  ('bont-riot-tr-26-wide-white', 'Bont Riot TR+ 26 Wide White', 'bont', 'shoes', 'triathlon-shoes', '<p>Designed to provide a fast entry and secure ride, the all-new Riot TR+ 26 Wide Fit delivers all-day comfort and a modern approach to Bont Cycling’s popular Riot series. Built using our latest ‘slide and ride’ construction method and backed by anatomically correct shaping, the Riot TR+ 26 is the go-to triathlon shoe for racers of any ability.</p>
<p>Featuring a carbon composite base, lowered carbon mid and forefoot shaping plus a dual-Velcro strap fastening system for rapid entry and release into transition, the Riot TR+ continues Bont Cycling’s latest approach to cycling shoe design. </p>
<p>Providing a more versatile fit and feel – compared to the previous generation Riot TR+ – the TR+ 26 accommodates an even greater range of foot shapes, sizes and types.</p>
<p><br></p>
<ul>
<li>
Carbon composite construction and Bont Cycling''s proprietary heat molding technology.</li>
<li>
Ultralight and supportive Microfiber upper for improved breathability, comfort, and performance.</li>
<li>
Comfortable honeycomb fabric liner with lightweight padding for a cool and comfortable fit across the entire day.</li>
<li>
Industry-leading 4.6mm stack height (sole thickness) for a closer connection to the pedal, more rounded pedal strokes, improved stability, and injury prevention.</li>
<li>
Innersole-Bont Cycling x Cobra9 dual-density EVA innersole.</li>
<li>
Sole Guard-Replaceable heel guards with internal fittings.</li>
<li>
Carbon steel cleat t-nut hardware for long lasting and hassle-free cleat installation and adjustment.</li>
<li>
Two widths with improved foot suitability across different shapes and types: standard and wide.</li>
<li>
Cleat Mounting:Fixed3-hole road pedal configuration with alignment grid.</li>
<li>
Independent double Velcro with heel loop.</li>
<li>
Weight-238grams (weighed, based on size 42 shoe).</li>
</ul>', array['bont-riot-tr-26-wide-white/1.webp', 'bont-riot-tr-26-wide-white/2.webp', 'bont-riot-tr-26-wide-white/3.webp', 'bont-riot-tr-26-wide-white/4.webp']::text[], 'new', 13, '2026-03-06'::date, false, false),
  ('fizik-hydra-triathlon-shoes-black-white-1', 'Fizik Hydra Triathlon Shoes Black/White', 'fizik', 'shoes', 'triathlon-shoes', '<h3>DESCRIPTION</h3>

<p><strong>Our highly breathable, comfortable triathlon cycling shoe constructed from 3D air-mesh fabric for cooler, drier feet and built with a single-strap closure system for rapid transitions.</strong></p>
<p>Hydra is a triathlon bike shoe designed to facilitate easier transitions, built with a breathable upper and moderately stiff nylon outsole that combines comfort and pedaling efficiency.</p>
<h3><strong>TRANSITION QUICKLY</strong></h3>
<p>As transitions become increasingly important—now considered the fourth discipline in any triathlon event, be that a full Ironman race or sprint distance—we have redesigned our tri-shoes range to meet the requirements of the most demanding athletes. Hydra is built with a single Velcro strap to allow faster, worry-free transitions, where any mistake can cost decisive time. Additionally, the enveloping strap provides the strong foot support athletes need to be efficient in every race situation.</p>
<h3><strong>EASY-BREATHING AIR MESH</strong></h3>
<p>The simple closure system is coupled with an upper made of 3D air-mesh fabric for a shoe that’s highly breathable to help avoid overly sweaty feet, making this an optimal solution for those who prefer to race sockless.</p>
<h3><strong>COMFORT, EFFICIENCY, CONTROL</strong></h3>
<p>The newly redesigned R5 nylon outsole offers comfort and a moderate level of stiffness for efficient pedaling. Additionally, cleat positioning is set slightly further back compared to traditional settings to better optimize pedaling efficiency and reduce knee compression. A wide vent inlet provides cooling airflow, aiding in temperature regulation.</p>
<h3><strong>TECHNOLOGY/SPECIFICATIONS</strong></h3>
<ul>
<li>
<strong>3D air mesh:</strong> highly breathable mesh construction</li>
<li>R5 nylon outsole</li>
<li>Stiffness index 6</li>
<li>
<strong>Weight:</strong> 233g</li>
<li>
<strong>Sizes:</strong> 36-48 (37 to 47 also in half sizes)</li>
</ul>', array['fizik-hydra-triathlon-shoes-black-white-1/1.webp', 'fizik-hydra-triathlon-shoes-black-white-1/2.webp']::text[], 'new', 5, '2025-08-26'::date, false, false),
  ('fizik-transiro-r4-powerstrap-black-white', 'Fizik Transiro R4 Powerstrap Black/White', 'fizik', 'shoes', 'triathlon-shoes', '<p>A comfortable triathlon cycling shoe with a fast and intuitive Velcro Powerstrap closure system, a mesh and microtex upper for superior ventilation, and an R4 carbon outsole for efficient power transfer.</p> <p><strong>POWERSTRAP</strong></p> <p>Powerstrap is extremely quick to fasten: simply slide into the shoe, pull and roll out from the transition smoothly. The strap is designed to pull an extended area of the shoe’s upper, so the fit is enveloping and secure, even with a relatively simple system.</p> <p>To ease transition, the Powerstrap can be locked in the wide open position ready for quick and easy foot entry, while the heel is equipped with a rubberized loop to facilitate setting the shoes ready clipped into the pedals, and easily and quickly pulling your feet into them.</p> <p>The shoe’s upper construction combines mesh – for superior ventilation – with Microtex, to ensure appropriate foot support in every pedal stroke.</p> <p><strong>R4 OUTSOLE</strong></p> <p>The upper is complemented by a moderately stiff R4 outsole, delivering a striking balance between comfort and pedalling efficiency while still providing efficient ventilation for temperature control.</p> <ul> <li>
<strong>Mesh and Microtex upper</strong>: enhanced ventilation with the needed support</li> <li>
<strong>R4 carbon injected nylon outsole</strong>: moderately stiff for efficient power transfer in comfort</li> <li>
<strong>Powerstrap</strong>: intuitive, quick and secure closure</li> <li>R4 outsole – carbon injected nylon</li> <li>Weight: 237g (size 42 - 1/2 pair)</li> </ul>', array['fizik-transiro-r4-powerstrap-black-white/1.jpg', 'fizik-transiro-r4-powerstrap-black-white/2.jpg', 'fizik-transiro-r4-powerstrap-black-white/3.jpg', 'fizik-transiro-r4-powerstrap-black-white/4.jpg']::text[], 'new', 1, '2023-07-19'::date, false, false),

  -- ---- wheels-tyres-tubes · clincher-tyres ----
  ('all-condition-armadillo-elite', 'All Condition Armadillo Elite', 'specialized', 'wheels-tyres-tubes', 'clincher-tyres', '<p>The All Condition Armadillo Elite is the most flat-resistant tire available. Impressively though, it has performance characteristics that far exceed many competitor''s race tires. We''ve given it a tread pattern that offers excellent all-weather traction, and newly-sourced materials for the best puncture protection possible. In terms of ride quality, our GRIPTON® compound is surpassed by none. It provides low rolling resistance and the ultimate in dry and wet condition traction. Without hyperbole, it''s the best flat-resistant, high-performance tire that we''ve ever made.</p>', array['all-condition-armadillo-elite/1.png']::text[], 'new', 1, '2026-03-02'::date, false, false),
  ('butcher-grid-gravity-radial-t9-tlr', 'Butcher Grid Gravity Radial T9 TLR', 'specialized', 'wheels-tyres-tubes', 'clincher-tyres', '<p>The new Specialized Grid Gravity Radial tires reinvent how trail riders experience grip and compliance. By increasing the angle of orientation to the tested Sweet Spot Ply, these tires achieve ground‑hugging conformity that amplifies traction and comfort—without compromising the lateral stiffness riders rely on for hard cornering. Unlike pressure‑tuning, which rapidly kills compliance as PSI rises, or choosing a sub-optimal casing angle for the intended experience, our Radial casing construction creates the Sweet Spot inherently: lower radial stiffness, preserved lateral stability, and a ride quality that makes technical trails feel smoother, faster, and more controlled.</p>', array['butcher-grid-gravity-radial-t9-tlr/1.webp', 'butcher-grid-gravity-radial-t9-tlr/2.png']::text[], 'new', 2, '2026-06-05'::date, false, false),
  ('continental-argotal-27-5-tyre', 'Continental Argotal 27.5" Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL ARGOTAL TYRE 27.5"</strong></p>

 <p><strong>Grip to push your limits</strong></p>

 <p>Ideal tire for loose terrain, with cornering stability and increased side-grip. The open tread pattern allows for self-cleaning so you can push your riding limits through dust and loam.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft: </strong>Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, and control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft:</strong> The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance:</strong> Compound with balanced properties on grip and endurance. With the endurance compound a high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as a endurance focused compound for e-Bikes</p>

 <p><strong>CASING</strong><br>
 The right construction for every riding style</p>

 <p><strong>Downhill:</strong> Most durable and reinforced carcass construction in gravity line up<br>
 <strong>Enduro:</strong> Durable single-ply carcass construction with Apex to prevent snakebites<br>
 <strong>Trail:</strong> Comparable performance to the Enduro casing tailored for trail use cases</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>
 <p>Supported in-line shoulder studs with the supportive structure for high stability even when cornering aggressively. Benefit: high mechanical grip especially in loose soils</p>
 </li>
 <li>
 <p>Open tread pattern design for perfect interaction on loose surfaces Benefit good self-cleaning in moist and wet conditions.</p>
 </li>
 <li>
 <p>The pronounced studs are equipped with steep ramps in order to generate mechanical grip through a pattern-soil interaction. Benefit: expectational grip in on loose and mixed-surface.</p>
 </li>
 <li>
 <p>Tubeless Ready</p>
 </li>
 <li>
 <p>Suitable For E-Bikes</p>
 </li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th>
 <p><strong>ETRTO</strong></p>
 </th>
 <th><strong>DIMENSION</strong></th>
 <th><strong>TECHNOLOGY</strong></th>
 <th><strong>COLOUR/SIDEWALL/BEAD</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>Weight(G)</strong></th>
 <th><strong>PSI</strong></th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>60-584</td>
 <td>27.5 X 2.40</td>
 <td>Trail Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>3/180</td>
 <td>1100</td>
 <td>44</td>
 </tr>
 <tr>
 <td>60-584</td>
 <td>27.5 X 2.40</td>
 <td>Enduro Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>3/330</td>
 <td>1000</td>
 <td>44</td>
 </tr>
 <tr>
 <td>60-584</td>
 <td>27.5 X 2.40</td>
 <td>Trail Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>3/180</td>
 <td>1080</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60-584</td>
 <td>27.5 X 2.40</td>
 <td>Enduro Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>3/330</td>
 <td>1220</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60-584</td>
 <td>27.5 X 2.40</td>
 <td>Downhill Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>6/660</td>
 <td>1200</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60-584</td>
 <td>27.5 X 2.40</td>
 <td>Downhill Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>6/660</td>
 <td>1220</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-argotal-27-5-tyre/1.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('continental-argotal-29-tyre', 'Continental Argotal 29" Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL ARGOTAL 29" TYRE</strong></p>

 <p><strong>Grip to push your limits</strong></p>

 <p>Ideal tire for loose terrain, with cornering stability and increased side-grip. The open tread pattern allows for self-cleaning so you can push your riding limits through dust and loam.</p>

 <p><strong>SuperSoft: </strong>Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, and control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft:</strong> The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance:</strong> Compound with balanced properties on grip and endurance. With the endurance compound a high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as a endurance focused compound for e-Bikes</p>

 <p><strong>CASING</strong></p>

 <ul>
 <li><strong>Downhill:</strong> Most durable and reinforced carcass construction in gravity line up</li>
 <li><strong>Enduro:</strong> Durable single-ply carcass construction with Apex to prevent snakebites</li>
 <li><strong>Trail:</strong> Comparable performance to the Enduro casing tailored for trail use case</li>
 </ul>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>
 <p>Supported in-line shoulder studs with the supportive structure for high stability even when cornering aggressively. Benefit: high mechanical grip especially in loose soils</p>
 </li>
 <li>
 <p>Open tread pattern design for perfect interaction on loose surfaces Benefit good self-cleaning in moist and wet conditions.</p>
 </li>
 <li>
 <p>The pronounced studs are equipped with steep ramps in order to generate mechanical grip through a pattern-soil interaction. Benefit: expectational grip in on loose and mixed-surface.</p>
 </li>
 <li>
 <p>Tubeless Ready</p>
 </li>
 <li>
 <p>Suitable For E-Bikes</p>
 </li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>DIMENSIONS</strong></th>
 <th><strong>TECHNOLOGY</strong></th>
 <th><strong>COLOUR/SIDEWALL/BEAD</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>G</strong></th>
 <th>
<br>
 <strong>PSI</strong><br>
  </th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>
 <p>65-622</p>
 </td>
 <td>
29 X 2.60
</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1200</td>
 <td>44</td>
 </tr>
 <tr>
 <td>
 <p>65-622</p>
 </td>
 <td>
29 X 2.60
</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1275</td>
 <td>44</td>
 </tr>
 <tr>
 <td>
 <p>65-622</p>
 </td>
 <td>
29 X 2.40
</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1040</td>
 <td>51</td>
 </tr>
 <tr>
 <td>
 <p>65-622</p>
 </td>
 <td>
29 X 2.40
</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1125</td>
 <td>51</td>
 </tr>
 <tr>
 <td>
 <p>65-622</p>
 </td>
 <td>
29 X 2.40
</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1290</td>
 <td>51</td>
 </tr>
 <tr>
 <td>
 <p>65-622</p>
 </td>
 <td>
29 X 2.40
</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1290</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-argotal-29-tyre/1.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('continental-gp5000-clincher', 'Continental GP5000 Clincher', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL GP 5000 CLINCHER</strong></p>

 <p><strong>The New Era In Cycling</strong></p>

 <p>The best allrounder in the field, brought to a whole new performance level. Ride faster, more comfortable and with increased puncture protection. Made to make you better.  </p>

 <p><strong>It’s All About How You Mix It </strong></p>

 <p>With our unique tread compound, which is produced only in Germany, we have revolutionised the sport of cycling. With the legendary BlackChili Compound we have answered the eternal question of the best balance of grip and rolling resistance for cycling.</p>

 <p>Regular test wins confirm the measureable and noticeable advantages for the cyclist, established in the laboratory and on the road. The latest polymers as well as specially developed carbon black particles and filler materials guarantee unique performance</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Active Comfort Technology</li>
 <li>Vectran Technology</li>
 <li>Lazer Grip Technology</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-gp5000-clincher/1.jpg', 'continental-gp5000-clincher/2.jpg', 'continental-gp5000-clincher/3.png', 'continental-gp5000-clincher/4.jpg', 'continental-gp5000-clincher/5.jpg']::text[], 'new', 5, '2026-08-10'::date, false, false),
  ('continental-grand-prix-clincher-tyre', 'Continental Grand Prix Clincher Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL GRAND PRIX CLINCHER TYRE</strong></p>

 <p><strong>FOR EVERY RIDE</strong></p>

 <p>The Grand Prix inherits technology and learnings from the iconic Grand Prix 5000 range., It comes with Black Chilli Compound and has a 3-ply construction that offers good puncture protection and low rolling resistance.<br>
 Whether training, commuting or going the distance - the Grand Prix has you covered.</p>
 </td>
 <td> </td>
 <td>
 
 </td>
 </tr>
	</tbody>
</table>', array['continental-grand-prix-clincher-tyre/1.jpg', 'continental-grand-prix-clincher-tyre/2.jpg', 'continental-grand-prix-clincher-tyre/3.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('continental-hydrotal-27-5-tyre', 'Continental Hydrotal 27.5" Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL HYDROTAL TYRE 27.5"</strong></p>

 <p>A specialist tire for downhill and a super soft compound option for racing. Balances grip and rolling resistance with a self-cleaning tread that ensures continuous grip when you’re shredding through muddy, slippery conditions.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft: </strong>Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, and control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft:</strong> The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance:</strong> Compound with balanced properties on grip and endurance. With the endurance compound a high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as a endurance focused compound for e-Bikes</p>

 <p><strong>CASING</strong></p>

 <p><strong>Downhill:</strong> Most durable and reinforced carcass construction in gravity line up</p>

 <p><strong>Enduro:</strong> Durable single-ply carcass construction with Apex to prevent snakebites<br>
 <strong>Trail:</strong> Comparable performance to the Enduro casing tailored for trail use case</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>
 <p>Tapered and supported knob elements are designed to ease the interaction between stud and soil. Benefit: high mechanical grip and superb self-cleaning properties</p>
 </li>
 <li>
 <p>Open tread pattern design for perfect interaction on loose surfaces Benefit good self-cleaning in moist and wet conditions.</p>
 </li>
 <li>
 <p>Support structure and in-line shoulder studs Benefit: high stability when cornering aggressively in loose and muddy soils.</p>
 </li>
 <li>
 <p>Tubeless Ready</p>
 </li>
 <li>
 <p>Suitable for E-Bikes</p>
 </li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>DIMENSION</strong></th>
 <th><strong>TECHNOLOGY</strong></th>
 <th><strong>Technology/Sidewall/Bead</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>G</strong></th>
 <th><strong>PSI</strong></th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>
 <p>60-584</p>
 </td>
 <td>27.5 x 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1220</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-hydrotal-27-5-tyre/1.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('continental-hydrotal-tyre-29', 'Continental Hydrotal Tyre 29"', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL HYDROTAL 29" TYRE</strong></p>

 <p>A specialist tire for downhill and a super soft compound option for racing. Balances grip and rolling resistance with a self-cleaning tread that ensures continuous grip when you’re shredding through muddy, slippery conditions.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft: </strong>Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, and control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft:</strong> The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance:</strong> Compound with balanced properties on grip and endurance. With the endurance compound a high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as a endurance focused compound for e-Bikes</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>
 <p>Tapered and supported knob elements are designed to ease the interaction between stud and soil. Benefit high mechanical grip and superb self-cleaning properties</p>
 </li>
 <li>
 <p>Open tread pattern design for perfect interaction on loose surfaces Benefit good self-cleaning in moist and wet conditions.</p>
 </li>
 <li>
 <p>Support structure and in-line shoulder studs Benefit: high stability when cornering aggressively in loose and muddy soils.</p>
 </li>
 <li>
 <p>Tubeless Ready</p>
 </li>
 <li>
 <p>Suitable for E-Bikes</p>
 </li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>DIMENSIONS</strong></th>
 <th><strong>TECHNOLOGY</strong></th>
 <th><strong>COLOUR/SIDEWALL/BEAD</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>G</strong></th>
 <th>
<br>
 <strong>PSI</strong><br>
  </th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>
 <p>60-622</p>
 </td>
 <td>
 <p>29 X 2.40</p>
 </td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1290</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-hydrotal-tyre-29/1.jpg', 'continental-hydrotal-tyre-29/2.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('continental-kryptotal-front-27-5-tyre', 'Continental Kryptotal Front 27.5" Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL KRYPTOTAL FRONT TYRE 27.5"</strong></p>

 <p><strong>Grip to push your limits</strong></p>

 <p>Optimized for the front wheel, this all-around tire balances stability of grip, traction for braking, and rolling resistance. Ideal for mixed terrain conditions for you to push your limits in the trail, enduro, or downhill gravity riding.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft:</strong> Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft: </strong>The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance</strong>: Compound with balanced properties on grip and endurance. With the endurance compound a high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as a endurance focused compound for e-Bikes</p>

 <p><strong>Casing</strong><br>
 The right construction for every riding style</p>

 <p><strong>Downhill:</strong> Most durable and reinforced carcass construction in gravity line up<br>
 <strong>Enduro:</strong> Durable single ply carcass construction with Apex to prevent snakebites<br>
 <strong>Trail: </strong>Comparable performance to the Enduro casing tailored for trail use cases</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>
 <p>Thanks to their specially developed pattern designs, KRYPTOTALFr and KRYPTOTALRe achieve the best performance for specific maneuvers on the front and rear wheel and together form the ideal combination for demanding terrain.</p>
 </li>
 <li>
 <p>Pattern design especially tailored for front wheel use. Benefit: best performance in front-wheel specific requirements like track stability, and agility.</p>
 </li>
 <li>
 <p>Designed with the same design boundary conditions as KRYPTOTALRe: steep and shallow ramps tailored to the area of application in mixed and loose terrain. Benefit: balance between harmonious, easy rolling and power transmission</p>
 </li>
 <li>
 <p>Tubeless Ready</p>
 </li>
 <li>
 <p>Suitable For E-Bikes</p>
 </li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>Dimension</strong></th>
 <th><strong>Technology</strong></th>
 <th><strong>Colour/Sidewall/Bead</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>g</strong></th>
 <th><strong>PSI</strong></th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>60 - 584</td>
 <td>27.5 X 2.40</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1000</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 584</td>
 <td>27.5 X 2.40</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1080</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 584</td>
 <td>27.5 X 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1220</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-kryptotal-front-27-5-tyre/1.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('continental-kryptotal-front-29-tyre', 'Continental Kryptotal Front 29" Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL KRYPTOTAL FRONT TYRE 29"</strong></p>

 <p><strong>Grip to push your limits</strong></p>

 <p>Optimized for the front wheel, this all-around tire balances stability of grip, traction for braking, and rolling resistance. Ideal for mixed terrain conditions for you to push your limits in the trail, enduro, or downhill gravity riding.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft:</strong> Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft: </strong>The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance</strong>: Compound with balanced properties on grip and endurance. With the endurance compound a high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as a endurance focused compound for e-Bikes</p>

 <p><strong>Casing</strong><br>
 The right construction for every riding style</p>

 <p><strong>Downhill:</strong> Most durable and reinforced carcass construction in gravity line up<br>
 <strong>Enduro:</strong> Durable single ply carcass construction with Apex to prevent snakebites<br>
 <strong>Trail: </strong>Comparable performance to the Enduro casing tailored for trail use case</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>
 <p>Thanks to their specially developed pattern designs, KRYPTOTALFr and KRYPTOTALRe achieve the best performance for specific maneuvers on the front and rear wheel and together form the ideal combination for demanding terrain.</p>
 </li>
 <li>
 <p>Pattern design especially tailored for front wheel use. Benefit: best performance in front-wheel specific requirements like track stability, and agility.</p>
 </li>
 <li>
 <p>Designed with the same design boundary conditions as KRYPTOTALRe: steep and shallow ramps tailored to the area of application in mixed and loose terrain. Benefit: balance between harmonious, easy rolling and power transmission</p>
 </li>
 <li>
 <p>Tubeless Ready</p>
 </li>
 <li>
 <p>Suitable For E-Bikes</p>
 </li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>Dimension</strong></th>
 <th><strong>Technology</strong></th>
 <th><strong>Colour/Sidewall/Bead</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>g</strong></th>
 <th><strong>PSI</strong></th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>60 - 622</td>
 <td>29 X 2.40</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1040</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 622</td>
 <td>29 X 2.40</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1125</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 622</td>
 <td>29X 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1290</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-kryptotal-front-29-tyre/1.jpg', 'continental-kryptotal-front-29-tyre/2.jpg']::text[], 'new', 6, '2026-08-10'::date, false, false),
  ('continental-kryptotal-rear-27-5-tyre', 'Continental Kryptotal Rear 27.5" Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL KRYPTOTAL REAR TYRE 27.5"</strong></p>

 <p>Optimized for the rear wheel, this all-around tire balances stability of grip, traction for braking, and rolling resistance. Ideal for mixed terrain conditions for you to push your limits in the trail, enduro, or downhill gravity riding.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft:</strong> Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft: </strong>The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance</strong>: Compound with balanced properties on grip and endurance. With the endurance compound, high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as an endurance-focused compound for e-Bikes</p>

 <p><strong>Casing</strong></p>

 <ul>
 <li><strong>Downhill:</strong> Most durable and reinforced carcass construction in the gravity line up</li>
 <li><strong>Enduro:</strong> Durable single-ply carcass construction with Apex to prevent snakebites</li>
 <li><strong>Trail: </strong>Comparable performance to the Enduro casing tailored for trail use case</li>
 </ul>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>
 <p>Pattern design especially tailored for rear wheel use. Benefit: best performance in rear-wheel-specific requirements like track stability, and agility.</p>
 </li>
 <li>
 <p>Balance of positive profile and open areas designed for best performance in complex terrains. Benefit: the sweet spot between grip, self-cleaning, adaptivity and rolling characteristics</p>
 </li>
 <li>
 <p>The use of steep and shallow ramps are tailored to the area of application in mixed and loose terrain. Benefit: balance between harmonious, easy rolling and power transmission</p>
 </li>
 <li>
 <p>Tubeless Ready</p>
 </li>
 <li>
 <p>Suitable for E-Bikes</p>
 </li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>Dimension</strong></th>
 <th><strong>Technology</strong></th>
 <th><strong>Color/Sidewall/Bead</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>g</strong></th>
 <th>
<br>
 <strong>PSI</strong><br>
  </th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>60 - 584</td>
 <td>27.5 X 2.60</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1100</td>
 <td>44</td>
 </tr>
 <tr>
 <td>60 - 584</td>
 <td>27.5 X 2.60</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1220</td>
 <td>44</td>
 </tr>
 <tr>
 <td>60 - 584</td>
 <td>27.5 X 2.40</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1000</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 584</td>
 <td>27.5 X 2.40</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1080</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 584</td>
 <td>27.5 X 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1220</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-kryptotal-rear-27-5-tyre/1.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('continental-kryptotal-rear-29-tyre', 'Continental Kryptotal Rear 29" Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL KRYPTOTAL REAR TYRE 29"</strong></p>

 <p>Optimized for the rear wheel, this all-around tire balances stability of grip, traction for braking, and rolling resistance. Ideal for mixed terrain conditions for you to push your limits in the trail, enduro, or downhill gravity riding.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft:</strong> Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft: </strong>The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance</strong>: Compound with balanced properties on grip and endurance. With the endurance compound, high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as an endurance-focused compound for e-Bikes</p>

 <p><strong>Casing</strong></p>

 <p><strong>Downhill:</strong> Most durable and reinforced carcass construction in the gravity line up</p>

 <p><strong>Enduro:</strong> Durable single-ply carcass construction with Apex to prevent snakebites<br>
 <strong>Trail: </strong>Comparable performance to the Enduro casing tailored for trail use case</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>
 <p>Pattern design especially tailored for rear wheel use. Benefit: best performance in rear-wheel-specific requirements like track stability, and agility.</p>
 </li>
 <li>
 <p>Balance of positive profile and open areas designed for best performance in complex terrains. Benefit: the sweet spot between grip, self-cleaning, adaptivity and rolling characteristics</p>
 </li>
 <li>
 <p>The use of steep and shallow ramps are tailored to the area of application in mixed and loose terrain. Benefit: balance between harmonious, easy rolling and power transmission</p>
 </li>
 <li>
 <p>Tubeless Ready</p>
 </li>
 <li>
 <p>Suitable For E-Bikes</p>
 </li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>Dimension</strong></th>
 <th><strong>Technology</strong></th>
 <th><strong>Color/Sidewall/Bead</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>g</strong></th>
 <th>
<br>
 <strong>PSI</strong><br>
  </th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>60 - 622</td>
 <td>29 X 2.60</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1200</td>
 <td>44</td>
 </tr>
 <tr>
 <td>60 - 622</td>
 <td>29 X 2.60</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1275</td>
 <td>44</td>
 </tr>
 <tr>
 <td>60 - 622</td>
 <td>29 X 2.40</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1040</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 622</td>
 <td>29 X 2.40</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1125</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 622</td>
 <td>29X 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1290</td>
 <td>51</td>
 </tr>
 <tr>
 <td>60 - 622</td>
 <td>29X 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1290</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-kryptotal-rear-29-tyre/1.jpg']::text[], 'new', 5, '2026-08-10'::date, false, false),
  ('continental-xynotal-27-5-tyre', 'Continental Xynotal 27.5" Tyre', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL XYNOTAL TYRE 27.5"</strong></p>

 <p>Specialist for Hardpack and dry Conditions</p>

 <p>Perfect for hardpack, rocky surfaces.<br>
 With low rolling resistance and contact edges for improved traction and braking, you can enjoy a fast gravity ride with the confidence of continuous grip when you need it most.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft</strong>: Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft:</strong> The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance:</strong> Compound with balanced properties on grip and endurance. With the endurance compound a high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as a endurance focused compound for e-Bikes<br>
 <strong>CASING</strong></p>

 <p><strong>Downhill:</strong> Most durable and reinforced carcass construction in gravity line up</p>

 <p><strong>Enduro:</strong> Durable single ply carcass construction with Apex to prevent snakebites<br>
 <strong>Trail:</strong> Comparable performance to the Enduro casing tailored for trail use case</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Angled in-line shoulder studs for predictable and indulgent transitions. Benefit: high limit range can be reached predictably and safely.</li>
 <li>Pronounced positive profile with a large number of contact areas. Benefit: harmonious riding behavior and high grip on hard and slightly loose surfaces.</li>
 <li>Pronounced ramps in the direction of rotation ensure harmonious and easy rolling. Benefit: low rolling resistance and improved grip on hard surfaces.</li>
 <li>Tubeless Ready</li>
 <li>Suitable For E-Bikes</li>
 </ul>

 
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>Dimensions</strong></th>
 <th><strong>Technology</strong></th>
 <th><strong>Colour/Sidewall/Bead</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>Weight</strong></th>
 <th>
<br>
 <strong>PSI</strong><br>
  </th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>
 <p>60-584</p>
 </td>
 <td>27.5 x 2.40</td>
 <td>Trail Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>3/180</td>
 <td>1000g</td>
 <td>51</td>
 </tr>
 <tr>
 <td>
 <p>60-584</p>
 </td>
 <td>27.5 x 2.40</td>
 <td>Enduro Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>3/330</td>
 <td>1080g</td>
 <td>51</td>
 </tr>
 <tr>
 <td>
 <p>60-584</p>
 </td>
 <td>27.5 x 2.40</td>
 <td>Downhill Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>6/660</td>
 <td>1220g</td>
 <td>51</td>
 </tr>
 <tr>
 <td>
 <p>60-584</p>
 </td>
 <td>27.5 x 2.40</td>
 <td>Downhill Casing</td>
 <td>Black/Black Skin Foldable</td>
 <td>6/660</td>
 <td>1200g</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-xynotal-27-5-tyre/1.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('continental-xynotal-tyre-29', 'Continental Xynotal Tyre 29"', 'continental', 'wheels-tyres-tubes', 'clincher-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL XYNOTAL TYRE 29"</strong></p>

 <p>Perfect for hardpack, rocky surfaces.</p>

 <p>With low rolling resistance and contact edges for improved traction and braking, you can enjoy a fast gravity ride with the confidence of continuous grip when you need it most.</p>

 <p><strong>The best compound for every riding style</strong></p>

 <p><strong>SuperSoft</strong>: Our softest and grippiest compound in the MTB Gravity range. Especially for Downhill and Enduro use cases where the main focus is descending. Tires equipped with this compound are for riders with a 100% focus on grip, traction, control. Recommended for use cases with a large share of descent.</p>

 <p><strong>Soft:</strong> The balance of grip and rolling resistance for gravity focussed use cases. High level of grip with a reasonable rolling resistance. Option to optimize the rolling properties of your rear wheel on the DH bike or have the optimal combo for Enduro or Trail riding.</p>

 <p><strong>Endurance:</strong> Compound with balanced properties on grip and endurance. With the endurance compound a high durability in combination with good rolling resistance and grip is achieved. A Compound choice for trail riding or as a endurance-focused compound for e-Bikes</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Angled in-line shoulder studs for predictable and indulgent transitions. Benefit: high limit range can be reached predictably and safely.</li>
 <li>Pronounced positive profile with a large number of contact areas. Benefit: harmonious riding behavior and high grip on hard and slightly loose surfaces.</li>
 <li>Pronounced ramps in the direction of rotation ensure harmonious and easy rolling. Benefit: low rolling resistance and improved grip on hard surfaces.</li>
 <li>Tubeless Ready</li>
 <li>Suitable For E-Bikes</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<thead>
 <tr>
 <th><strong>ETRTO</strong></th>
 <th><strong>DIMENSIONS</strong></th>
 <th><strong>TECHNOLOGY</strong></th>
 <th><strong>COLOUR/SIDEWALL/BEAD</strong></th>
 <th><strong>TPI</strong></th>
 <th><strong>G</strong></th>
 <th>
<br>
 <strong>PSI</strong><br>
  </th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>65-622</td>
 <td>
29 X 2.60
</td>
 <td>Trail Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1200</td>
 <td>44</td>
 </tr>
 <tr>
 <td>65-622</td>
 <td>
29 X 2.60
</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1275</td>
 <td>44</td>
 </tr>
 <tr>
 <td>65-622</td>
 <td>29 X 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>3/180</td>
 <td>1040</td>
 <td>51</td>
 </tr>
 <tr>
 <td>65-622</td>
 <td>29 X 2.40</td>
 <td>Enduro Casing</td>
 <td>black/black skin foldable</td>
 <td>3/330</td>
 <td>1125</td>
 <td>51</td>
 </tr>
 <tr>
 <td>65-622</td>
 <td>29 X 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1290</td>
 <td>51</td>
 </tr>
 <tr>
 <td>65-622</td>
 <td>29 X 2.40</td>
 <td>Downhill Casing</td>
 <td>black/black skin foldable</td>
 <td>6/660</td>
 <td>1290</td>
 <td>51</td>
 </tr>
	</tbody>
</table>', array['continental-xynotal-tyre-29/1.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('mondo-folding-endurance-tire', 'Mondo Folding Endurance Tire', 'specialized', 'wheels-tyres-tubes', 'clincher-tyres', '<p>Mondo is the fastest, lightest tubed endurance tire in the world, breaking endurance records and winning Paris-Roubaix alike. Robust tread and casing design fend off punctures, while the ideally balanced GRIPTON T5 rubber keeps you rolling quickly with grip for the weather’s worst. For the reliable patch-and-ride solution of a clincher tire, there’s no better choice to do the off-season work than Mondo Folding.</p>', array['mondo-folding-endurance-tire/1.jpg', 'mondo-folding-endurance-tire/2.png']::text[], 'new', 2, '2025-03-18'::date, false, false),
  ('pirelli-p-zero-race-clincher', 'Pirelli P Zero Race Clincher', 'pirelli', 'wheels-tyres-tubes', 'clincher-tyres', '<p>P ZERO™ Race combines the advantages of the tube-type technology in an all-round cycling tyre for high-intensity training sessions and races. The TechBELT Road carcass improves reliability against punctures, without impacting the weight of the tyre, whilst the special SmartEVO Compound enhances grip on both wet and dry asphalt compared to our previous cycling compounds.</p>
<ul>
<li>SPEED</li>
<li>HANDLING</li>
<li>LIGHTNESS</li>
</ul>
<p><strong>COMPOUND, CASING, TECHNOLOGIES</strong></p>
<p><strong>SMARTEVO COMPOUND</strong></p>
<p>What''s the secret to our tyres? Let''s take a look at some of the motorsport-derived technologies applied to our cycling tyres</p>
<p>So far the most advanced racing chemical formulation for road use, it was born from the Motorsport experience of Pirelli and the collaboration with the factory World Tour teams. The new SmartEVO Compound features a single-compound formulation based on three different polymers, each of which provides opposite performances in a perfec blend. The advanced mixture of polymers with ''smart'' behaviors are the key elements of the SmartEVO Compound, providing better grip and rolling resistance in any weather condition. The SmartEVO Compound is an high-performance chemical formulation developed for modern road cycling, from everyday training to World Tour racing. SmartEVO Compound is an exclusive feature of the P ZERO™ range</p>
<p><strong>P ZERO™ Race</strong> Size 26-622 / Weight 205gm / TPI 120 / Casing TechBELT Road / Compound SMARTEVO</p>
<p><strong>P ZERO™ Race</strong> Size 28-622 / Weight 225gm / TPI 120 / Casing TechBELT Road / Compound SMARTEVO</p>
<p><strong>P ZERO™ Race</strong> Size 30-622 / Weight 245gm / TPI 120 / Casing TechBELT Road / Compound SMARTEVO</p>
<p>The performance, safety, comfort and reliability of your road bike depend on the tyres you use. That is why it is important to choose road bike tyres very carefully.<br><br><strong>Road bike tyres</strong> are specifically designed for riding on tarmac, on both the dry and wet. There are various types, which have significant differences depending on the specific use and the performance required. There are even models that have different weights and sizes to choose from.<br><br>Road bike tyres should be lightweight, to offer optimal performance whichever conditions you find yourself cycling in. Wider road bike tyres offer better performance and comfort because they have a larger contact patch. Sizes can be expressed in millimeters, with two values indicating the width of the tyre and diameter of the rim, such as <strong>“25-662”</strong>. Or according to the <strong>French standard</strong>, which indicates the outer diameter of the tyre and the width of the corresponding rim, e.g.<strong> “700x23C”</strong>.</p>', array['pirelli-p-zero-race-clincher/1.jpg', 'pirelli-p-zero-race-clincher/2.jpg']::text[], 'new', 5, '2024-10-31'::date, false, false),
  ('roadsport-elite', 'RoadSport Elite', 'specialized', 'wheels-tyres-tubes', 'clincher-tyres', '<p>The Roadsport Elite is an extremely reliable road tire that''s ideal for ambitious training and high-mileage rides. It features our BlackBelt protection and tread life that lasts 20% longer than most light weight tires. This provides great protection throughout the tire’s life. The foldable construction creates a lightweight and supple tire that’s easy to install.</p>', array['roadsport-elite/1.jpg', 'roadsport-elite/2.png']::text[], 'new', 1, '2025-02-12'::date, false, false),
  ('s-works-turbo-t2-t5', 'S-Works Turbo T2/T5', 's-works', 'wheels-tyres-tubes', 'clincher-tyres', '<p>The S-Works Turbo tire sets the standard for a fast and durable performance tube type race tire. Our all new Gripton T2 center compound is the fastest, most efficient compound we have ever developed. T2 is placed in the center of our dual compound for speed and longevity on the straights with T5 compound on the shoulders for incredible grip through the corners. We’ve improved the tire’s puncture protection by 8% with all new hybrid-Kevlar Blackbelt breaker under the tread. Combined with our light and supple casing you’ve not only got improved puncture protection but lighter weight and more flexibility for an incredibly supple and confidence inspiring ride. It all adds up to a S-Works Turbo tube type tire that 4 watts faster per set than the previous S-Works Turbo and that weighs just 200 grams for a 24mm. This is S-Works level speed with a tube.</p>', array['s-works-turbo-t2-t5/1.jpg', 's-works-turbo-t2-t5/2.png']::text[], 'new', 3, '2024-08-05'::date, false, false),
  ('schwalbe-tyre-one', 'Schwalbe Tyre One', 'schwalbe', 'wheels-tyres-tubes', 'clincher-tyres', '<p>The name alone indicates how significant this tyre is for Schwalbe. With an extremely lightweight casing, OneStar rubber compound and V-Guard puncture protection; the Schwalbe one Road Tyre has all the features you could want. It is lightweight and extremely fast whilst the V-Guard cut resistant fabric offers reliable puncture protection. </p>', array['schwalbe-tyre-one/1.jpg', 'schwalbe-tyre-one/2.jpg']::text[], 'new', 1, '2021-08-25'::date, false, true),
  ('schwalbe-tyre-pro-one-tube-type-1', 'Schwalbe Tyre Pro One Tube Type', 'schwalbe', 'wheels-tyres-tubes', 'clincher-tyres', '<p>High-end Tube Type road bike tire. Combines “souplesse” , speed and control at the highest level. The best road bike tire Schwalbe has ever developed. With the latest Souplesse Carcass construction and the high-tech V-Guard protection fabric, this Pro One is the benchmark for tube type road bike tires. For racers who prefer to ride with tubes, but still want the best riding characteristics and “souplesse” , The use of the new ADDIX Race Compound is a promise for maximum speed and control - on the fastest descents, in extreme cornering, in all conditions. Schwalbe Pro One. Creating Souplesse. ***The Tube Type tire is specially made for use with a tube and cannot be used tubeless.</p>', array['schwalbe-tyre-pro-one-tube-type-1/1.png', 'schwalbe-tyre-pro-one-tube-type-1/2.png', 'schwalbe-tyre-pro-one-tube-type-1/3.png', 'schwalbe-tyre-pro-one-tube-type-1/4.png']::text[], 'new', 2, '2025-10-10'::date, false, true),
  ('turbo-cotton', 'Turbo Cotton', 'specialized', 'wheels-tyres-tubes', 'clincher-tyres', '<p>We''re not afraid to say that our GRIPTON® compound is the best out there. And when combined with an ultra-supple 320 TPI cotton casing, you get a tire that''s very special—you get the Turbo Cotton tire. Both materials stand for master craftsmanship, and they work in harmony to reflect our dedication to building the world''s fastest tires. By bringing both of these materials together, we''ve created the best clincher tire out there. It provides a clear-cut performance advantage.</p>', array['turbo-cotton/1.png']::text[], 'new', 1, '2025-11-07'::date, false, false),
  ('vittoria-700c-corsa-pro-tube-type', 'Vittoria 700c Corsa Pro Tube Type', 'vittoria', 'wheels-tyres-tubes', 'clincher-tyres', '<p> The tube type version of the most winning road tire ever made.</p>

<p>Ultimate cornering grip in wet or dry conditions. Reinforced puncture resistance. A supple construction that reduces rolling resistance and makes chattery chip seal feel like freshly laid tarmac. The Corsa PRO combines the convenience of a tube-type clincher platform with the pedigree of the world’s most successful racing tire, proven in the rarefied air of France’s highest passes and the punchy finales of the classics alike.</p>

<p>Engineered with the revolutionary, WorldTour-proven technology of Graphene + Silica compounds and the timeless perfection of a 320 TPI cotton-blend casing. Electrically cured to eliminate seams and increase aerodynamics. The Corsa PRO Tube-Type provides an impossibly supple connection to the road, erasing rolling resistance, denying road debris, and inspiring confidence through sweeping corners.</p>

<p>The new Corsa PRO Tube-Type delivers a 12% improvement in rolling efficiency, 18% extra puncture resistance, and a 9% weight reduction compared to its predecessor, Corsa Tube-Type.</p>

<ul>
	<li>Tube Type - an inner tube is required.</li>
	<li>Available in cotton tan sidewall colour. </li>
	<li>Hookless rim compatibility for sizes 28c and larger.</li>
	<li>Made in a CarbonNeutral® operations certified factory. Product Carbon Footprint: 1.73 kg CO2e (reference size 700x28c)</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>700x26c</td>
 <td>26-622</td>
 <td>Para</td>
 <td>245 g</td>
 </tr>
 <tr>
 <td>700x28c*</td>
 <td>28-622</td>
 <td>Para</td>
 <td>255 g</td>
 </tr>
 <tr>
 <td>700x30c*</td>
 <td>30-622</td>
 <td>Para</td>
 <td>270 g</td>
 </tr>
	</tbody>
</table>

<p>* These sizes are Hookless Rim Compatible</p>', array['vittoria-700c-corsa-pro-tube-type/1.jpg', 'vittoria-700c-corsa-pro-tube-type/2.png', 'vittoria-700c-corsa-pro-tube-type/3.jpg', 'vittoria-700c-corsa-pro-tube-type/4.jpg', 'vittoria-700c-corsa-pro-tube-type/5.jpg']::text[], 'new', 3, '2025-10-01'::date, false, true),
  ('vittoriarubinoproclincher', 'Vittoria 700c Rubino Tube Type', 'vittoria', 'wheels-tyres-tubes', 'clincher-tyres', '<p>Improved Speed, Grip, and Durability. The iconic Rubino reimagined.</p>
<p>The go-to, everyday performance tire at the center of the Vittoria range arrives today, reenergized with new heart and soul. Rubino has long been the champion of lunch rides, town line sprints, and endless wanderings. This latest incarnation of Rubino is available in Tubeless-Ready and Tube-Type variants and delivers more for the rider and a lighter impact on the environment.</p>
<p>The modernized Rubino tread increases speed, grip, and durability by utilizing a smooth center, which transitions smoothly into updated chevron clusters, while retaining the familiar grid texture at the limit. The new Graphene + Silica compound is engineered for long mileage, puncture resistance, high grip, and speed for everyday use.</p>
<p>An all new 100 TPI nylon casing ensures durability, longevity and reliability, while the Anti-puncture belt below the tread guarantees extra protection where needed the most.</p>
<ul>
<li>TWI - Tyre Wear Indicator built into the tread.</li>
<li>Available in TLR &amp; tube type constructions.</li>
<li>Available in both black&amp; tan sidewall colours.</li>
<li>Sizes from 26mm-34mm.</li>
<li>Hookless Rim compatible in sizes 28mm and larger.</li>
</ul>
<p>Product Carbon Footprint (reference size 28-622): TLR 4.10 kg CO2e; tube-type3.26kg CO2e. </p>
<table>
<tbody>
<tr>
<td>MODEL</td>
<td>CONSTRUCTION</td>
<td>ETRTO</td>
<td>Hookless<br>Compatibility</td>
<td>SIDEWALL COLOUR</td>
<td>TREAD COLOUR</td>
<td>WEIGHT<br>(gr)</td>
</tr>
<tr>
<td>Rubino V 26-622 fold Full Black G2.0</td>
<td>Tube Type / Foldable</td>
<td>26-622</td>
<td><strong>NO</strong></td>
<td>Black</td>
<td>Black</td>
<td>235</td>
</tr>
<tr>
<td>Rubino V 28-622 fold tan-blk-blk G2.0</td>
<td>Tube Type / Foldable</td>
<td>28-622</td>
<td>YES</td>
<td>Tan</td>
<td>Black</td>
<td>260</td>
</tr>
<tr>
<td>Rubino V 28-622 fold Full Black G2.0</td>
<td>Tube Type / Foldable</td>
<td>28-622</td>
<td>YES</td>
<td>Black</td>
<td>Black</td>
<td>260</td>
</tr>
<tr>
<td>Rubino V 30-622 fold tan-blk-blk G2.0</td>
<td>Tube Type / Foldable</td>
<td>30-622</td>
<td>YES</td>
<td>Tan</td>
<td>Black</td>
<td>290</td>
</tr>
<tr>
<td>Rubino V 30-622 fold Full Black G2.0</td>
<td>Tube Type / Foldable</td>
<td>30-622</td>
<td>YES</td>
<td>Black</td>
<td>Black</td>
<td>290</td>
</tr>
<tr>
<td>Rubino V 32-622 fold tan-blk-blk G2.0</td>
<td>Tube Type / Foldable</td>
<td>32-622</td>
<td>YES</td>
<td>Tan</td>
<td>Black</td>
<td>320</td>
</tr>
<tr>
<td>Rubino V 32-622 fold Full Black G2.0</td>
<td>Tube Type / Foldable</td>
<td>32-622</td>
<td>YES</td>
<td>Black</td>
<td>Black</td>
<td>320</td>
</tr>
<tr>
<td>Rubino V 34-622 fold tan-blk-blk G2.0</td>
<td>Tube Type / Foldable</td>
<td>34-622</td>
<td>YES</td>
<td>Tan</td>
<td>Black</td>
<td>350</td>
</tr>
<tr>
<td>Rubino V 34-622 fold Full Black G2.0</td>
<td>Tube Type / Foldable</td>
<td>34-622</td>
<td>YES</td>
<td>Black</td>
<td>Black</td>
<td>350</td>
</tr>
</tbody>
</table>', array['vittoriarubinoproclincher/1.jpg', 'vittoriarubinoproclincher/2.jpg', 'vittoriarubinoproclincher/3.jpg', 'vittoriarubinoproclincher/4.jpg']::text[], 'new', 8, '2024-09-03'::date, false, true),
  ('vittoria-700c-rubino-tube-type', 'Vittoria 700c Rubino V Tube Type', 'vittoria', 'wheels-tyres-tubes', 'clincher-tyres', '<p>Improved Speed, Grip, and Durability. The iconic Rubino reimagined.</p>

<p>The go-to, everyday performance tire at the center of the Vittoria range arrives today, reenergized with new heart and soul. Rubino has long been the champion of lunch rides, town line sprints, and endless wanderings. This latest incarnation of Rubino is available in Tubeless-Ready and Tube-Type variants and delivers more for the rider and a lighter impact on the environment.</p>

<p>The modernized Rubino tread increases speed, grip, and durability by utilizing a smooth center, which transitions smoothly into updated chevron clusters, while retaining the familiar grid texture at the limit. The new Graphene + Silica compound is engineered for long mileage, puncture resistance, high grip, and speed for everyday use.</p>

<p>An all new 100 TPI nylon casing ensures durability, longevity and reliability, while the Anti-puncture belt below the tread guarantees extra protection where needed the most.</p>

<ul>
	<li>TWI - Tyre Wear Indicator built into the tread.</li>
	<li>Available in TLR &amp; tube type constructions.</li>
	<li>Available in both black&amp; tan sidewall colours.</li>
	<li>Sizes from 26mm-34mm.</li>
	<li>Hookless Rim compatible in sizes 28mm and larger.</li>
</ul>

<p>Product Carbon Footprint (reference size 28-622): TLR 4.10 kg CO2e; tube-type3.26kg CO2e. </p>

<table>
	<tbody>
 <tr>
 <td>MODEL</td>
 <td>CONSTRUCTION</td>
 <td>ETRTO</td>
 <td>Hookless<br>
 Compatibility</td>
 <td>SIDEWALL COLOUR</td>
 <td>TREAD COLOUR</td>
 <td>WEIGHT<br>
 (gr)</td>
 </tr>
 <tr>
 <td>Rubino V 26-622 fold Full Black G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>26-622</td>
 <td><strong>NO</strong></td>
 <td>Black</td>
 <td>Black</td>
 <td>235</td>
 </tr>
 <tr>
 <td>Rubino V 28-622 fold tan-blk-blk G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>28-622</td>
 <td>YES</td>
 <td>Tan</td>
 <td>Black</td>
 <td>260</td>
 </tr>
 <tr>
 <td>Rubino V 28-622 fold Full Black G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>28-622</td>
 <td>YES</td>
 <td>Black</td>
 <td>Black</td>
 <td>260</td>
 </tr>
 <tr>
 <td>Rubino V 30-622 fold tan-blk-blk G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>30-622</td>
 <td>YES</td>
 <td>Tan</td>
 <td>Black</td>
 <td>290</td>
 </tr>
 <tr>
 <td>Rubino V 30-622 fold Full Black G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>30-622</td>
 <td>YES</td>
 <td>Black</td>
 <td>Black</td>
 <td>290</td>
 </tr>
 <tr>
 <td>Rubino V 32-622 fold tan-blk-blk G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>32-622</td>
 <td>YES</td>
 <td>Tan</td>
 <td>Black</td>
 <td>320</td>
 </tr>
 <tr>
 <td>Rubino V 32-622 fold Full Black G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>32-622</td>
 <td>YES</td>
 <td>Black</td>
 <td>Black</td>
 <td>320</td>
 </tr>
 <tr>
 <td>Rubino V 34-622 fold tan-blk-blk G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>34-622</td>
 <td>YES</td>
 <td>Tan</td>
 <td>Black</td>
 <td>350</td>
 </tr>
 <tr>
 <td>Rubino V 34-622 fold Full Black G2.0</td>
 <td>Tube Type / Foldable</td>
 <td>34-622</td>
 <td>YES</td>
 <td>Black</td>
 <td>Black</td>
 <td>350</td>
 </tr>
	</tbody>
</table>', array['vittoria-700c-rubino-tube-type/1.jpg', 'vittoria-700c-rubino-tube-type/2.jpg', 'vittoria-700c-rubino-tube-type/3.png', 'vittoria-700c-rubino-tube-type/4.png', 'vittoria-700c-rubino-tube-type/5.jpg']::text[], 'new', 13, '2025-10-01'::date, false, true),
  ('vittoriacorsaprotubular', 'Vittoria Corsa Pro Tubular', 'vittoria', 'wheels-tyres-tubes', 'clincher-tyres', '<p>The ultimate evolution in cotton tyre performance</p>
<p>The Tubular version of the Corsa PRO is the most advanced cotton tubular ever made, delivering unmatched pro-level racing performance. With Corsa PRO, Vittoria engineers succeeded in incorporating the rubber tyre tread with the cotton casing by using newly developed vulcanization processes.</p>
<p>The tread is now completely embedded with the casing, creating a 100% seamless tyre. Corsa PRO 320 TPI cotton casing – the finest available in the market – provides the suppleness, flexibility and comfort pro-riders are used to, now served in an even more flexible, aerodynamic and reliable tyre construction.</p>
<p>Winner of countless stages and one-day races at World Tour level since the start of the season, Corsa PRO delivers increased speed, wet &amp; cornering grip, puncture resistance and comfort compared to the previous version.</p>
<ul>
<li>The new choice of the pro peloton, now even faster and with increased wet weather grip and puncture resistance;</li>
<li>
Graphene + Silica compound ensures speed and confidence through a range of surface conditions, for the ultimate control;</li>
<li> Proven cotton 320tpi casing material, wrapped in a revolutionary new construction process provides the foundation for the new standard in race-day performance road tires.</li>
<li>Scan the QR code on the tyre label for installation tutorials, pressure recommendations and more.</li>
<li>Latex inner tube with a 48mm RVC Valve</li>
</ul>
<p>Weights</p>
<ul>
<li>23mm Tubular - 285g</li>
<li>25mm Tubular - 295g</li>
</ul>', array['vittoriacorsaprotubular/1.jpg']::text[], 'new', 2, '2021-08-19'::date, false, true),

  -- ---- wheels-tyres-tubes · gravel-tyres ----
  ('continental-terra-adventure-700c-gravel-tyres', 'Continental Terra Adventure 700c Gravel Tyres', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL TERRA ADVENTURE 700C TYRES</strong></p>

 <p>ENGINEERED FOR THE UNKNOWN</p>

 <p>Your gateway to the uncharted.  Optimized for diverse terrains, it excels from soft to hardpack. With widths up to 55 mm Terra Adventure merges Gravel and MTB performance seamlessly. Embrace the freedom of the outdoors with a tire designed for the adventurer in you.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>For Dry, Loose or Muddy terrain</li>
 <li>Trail casing</li>
 <li>Grip compound</li>
 <li>Tubeless Ready</li>
 </ul>

 <p><strong>Sizes</strong></p>

 <ul>
 <li>700 x 45</li>
 <li>700 x 50</li>
 <li>700 x 55</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-terra-adventure-700c-gravel-tyres/1.jpg', 'continental-terra-adventure-700c-gravel-tyres/2.jpg', 'continental-terra-adventure-700c-gravel-tyres/3.jpg', 'continental-terra-adventure-700c-gravel-tyres/4.jpg', 'continental-terra-adventure-700c-gravel-tyres/5.jpg']::text[], 'new', 5, '2026-08-10'::date, false, false),
  ('continental-terra-competition-gravel-tyre', 'Continental Terra Competition Gravel Tyre', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<p><strong>BLUR THE LINE BETWEEN ROAD AND GRAVEL</strong></p>
<p>Built for multi-surface speed, Terra Competition redefines gravel performance.</p>
<p>Engineered for all-road riding, it features improved aerodynamics, reduced weight, and lower rolling resistance — delivering faster climbs, sharper acceleration, and energy savings at every yaw angle.</p>
<p><strong>TECHNOLOGY</strong></p>
<p><strong>TERRAIN</strong> Hardpack</p>
<p><strong>CASING</strong></p>
<ul>
<li><strong>Trail</strong>: A light and durable single-ply carcass construction, ideal for Trail use cases.</li>
<li><strong>Race</strong>: Light and supple one-ply construction. Fabrics and body compounds combined for superb plushness and suppleness.</li>
</ul>
<p><strong>COMPOUND</strong></p>
<ul>
<li><strong>Grip</strong>: Designed for modern Cross-Country, Down-Country, Trail and gravel use cases. This compound offers an excellent balance of grip and rolling resistance and is the number one choice for all- round balanced characteristics.</li>
<li><strong>Rapid</strong>: When speed and acceleration on flat and inclines is all that matters, then the Rapid Compound is your go-to option. Inspired by the characteristics of compounds used in our road, race and gravel tires. For riders who do not want to compromise in speed.</li>
</ul>
<p><strong>SIZES</strong></p>
<ul>
<li>700 x 35</li>
<li>700 x 40</li>
<li>700 x 45</li>
</ul>
<p><strong>FEATURES</strong></p>
<ul>
<li>Up to 17% less rolling resistance vs Terra Speed</li>
<li>Advanced puncture protection</li>
<li>Optimised aerodynamics</li>
<li>Up to 16% lighter than Terra Speed</li>
</ul>', array['continental-terra-competition-gravel-tyre/1.jpg', 'continental-terra-competition-gravel-tyre/2.jpg', 'continental-terra-competition-gravel-tyre/3.jpg']::text[], 'new', 3, '2026-06-24'::date, false, false),
  ('continental-terra-hardpack-shieldwall-27-5', 'Continental Terra Hardpack Shieldwall 27.5"', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL TERRA HARDPACK SHIELDWALL TYRE 27.5"</strong></p>

 <p>With a wide footprint and a flat central tread ideal for bikepacking adventure.</p>

 <p><strong>PureGrip Compound </strong></p>

 <p>The advanced new compound</p>

 <p>Based on activated silica compounds, this technology was originally intended as an performance level compound, but after intensive development at our Korbach Research and Development Department Facility, an advanced new compound with outstanding grip and cross-country properties was developed. This new rubber mix, given the self explanatory name “PureGrip”, is ranked just behind our BlackChili Compound and is being used in our performance products both in the road and mountain bike sectors. Whilst providing great grip, it is also long lasting and highly durable – both characteristics of Continental tires, which are exclusively manufactured in the factory in Hefei (Asia).</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Shieldwall System</li>
 <li>Tubeless Ready</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-terra-hardpack-shieldwall-27-5/1.jpg', 'continental-terra-hardpack-shieldwall-27-5/2.jpg']::text[], 'new', 0, '2026-08-10'::date, false, false),
  ('continental-terra-hardpack-shieldwall-700c', 'Continental Terra Hardpack Shieldwall 700c', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL TERRA HARDPACK SHIELD WALL TYRE 700C</strong></p>

 <p>With a wide footprint and a flat central tread ideal for bikepacking adventure.</p>

 <p><strong>PureGrip Compound </strong></p>

 <p>Based on activated silica compounds, this technology was originally intended as an performance level compound, but after intensive development at our Korbach Research and Development Department Facility, an advanced new compound with outstanding grip and cross-country properties was developed. This new rubber mix, given the self explanatory name “PureGrip”, is ranked just behind our BlackChili Compound and is being used in our performance products both in the road and mountain bike sectors. Whilst providing great grip, it is also long lasting and highly durable – both characteristics of Continental tires, which are exclusively manufactured in the factory in Hefei (Asia).</p>

 <p><strong>Shieldwall System</strong></p>

 <p>The ShieldWall system combines the optimum combination of high puncture protection and the low rolling resistance with low weight. This is made possible by an additional, all-round puncture protection layer, which consists of a finely woven cross fabric. This gives the tire a high resistance to punctures and damage. Despite its additional ply, the tire has a very good damping property and a high degree of flexibility to adapt perfectly to the ground. The revolutionary tubeless ready bead allows easy and uncomplicated mounting of the tire. For best results in sealing and in use, we recommend the use of the new Continental RevoSealant sealant</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>PureGrip Compound</li>
 <li>Shield Wall System</li>
 <li>Tubeless Ready</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-terra-hardpack-shieldwall-700c/1.jpg', 'continental-terra-hardpack-shieldwall-700c/2.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('continental-terra-speed', 'Continental Terra Speed', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Terra Speed</p>
<p>For your way off-road. For more comfort. For the adventure. Be it the long tour, or the shortcut on your way home. The new gravel Terra series by Continental gets you there. Made to get you over rough and smooth.</p>
<p>Choose alter road, choose Terra.</p>
<ul>
<li>Black Chilli Compound</li>
<li>240tpi 4plies under the tread</li>
<li>180tpi 3ply Protection sidewall</li>
<li>Revolution Tubeless Ready foldable bead</li>
</ul>', array['continental-terra-speed/1.png', 'continental-terra-speed/2.jpg', 'continental-terra-speed/3.png', 'continental-terra-speed/4.jpg']::text[], 'new', 1, '2022-05-17'::date, false, false),
  ('continental-terra-speed-tyres-27-5', 'Continental Terra Speed Tyres 27.5"', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL TERRA SPEED TYRES 27.5"</strong></p>

 <p>For your way off-road. For more comfort. For the adventure. Be it the long tour, or the shortcut on your way home. The new gravel Terra series by Continental gets you there. Made to get you over rough and smooth.</p>

 <p>Choose alter road, choose Terra.</p>

 <p>Fast rolling tyre for hard &amp; dry conditions</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Black Chilli Compound</li>
 <li>240tpi 4plies under the tread</li>
 <li>180tpi 3ply Protection sidewall</li>
 <li>Revolution Tubeless Ready foldable bead</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-terra-speed-tyres-27-5/1.jpg', 'continental-terra-speed-tyres-27-5/2.png', 'continental-terra-speed-tyres-27-5/3.png', 'continental-terra-speed-tyres-27-5/4.jpg', 'continental-terra-speed-tyres-27-5/5.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('continental-terra-trail-protection-700c', 'Continental Terra Trail ProTection 700c', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL TERRA TRAIL PROTECTION TYRE 700C</strong></p>

 <p>For your way off-road. For more comfort. For the adventure. Be it the long tour, or the shortcut on your way home. The new gravel Terra series by Continental gets you there. Made to get you over rough and smooth.</p>

 <p>Choose alter road, choose Terra.</p>

 <p>Fast rolling tyre for loose conditions</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Black Chilli Compound</li>
 <li>240tpi 4plies under the tread</li>
 <li>180tpi 3ply Protection sidewall</li>
 <li>Revolution Tubeless Ready foldable bead</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-terra-trail-protection-700c/1.png', 'continental-terra-trail-protection-700c/2.png', 'continental-terra-trail-protection-700c/3.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('continental-terra-trail-shieldwall-27-5', 'Continental Terra Trail Shieldwall 27.5"', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL TERRA TRAIL SHIELDWALL TYRE 27.5"</strong></p>

 <p><strong>Terra Trail</strong></p>

 <p>For your way off-road. For more comfort. For the adventure. For your way off-road. For more comfort. For the adventure. Be it the long tour, or the shortcut on your way home. The new gravel Terra series by Continental gets you there. Made to get you over rough and smooth.</p>

 <p>Choose alter road, choose Terra.</p>

 <p><strong>Shieldwall System</strong></p>

 <p>The ShieldWall system combines the optimum combination of high puncture protection and the low rolling resistance with low weight. This is made possible by an additional, all-round puncture protection layer, which consists of a finely woven cross fabric. This gives the tire a high resistance to punctures and damage. Despite its additional ply, the tire has a very good damping property and a high degree of flexibility to adapt perfectly to the ground. The revolutionary tubeless ready bead allows easy and uncomplicated mounting of the tire. For best results in sealing and in use, we recommend the use of the new Continental RevoSealant sealant.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>PureGrip Compound</li>
 <li>Shield Wall System</li>
 <li>Tubeless Ready</li>
 <li>Suitable for E-Bikes</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-terra-trail-shieldwall-27-5/1.jpg', 'continental-terra-trail-shieldwall-27-5/2.jpg']::text[], 'new', 0, '2026-08-10'::date, false, false),
  ('continental-terra-trail-shieldwall-700c', 'Continental Terra Trail Shieldwall 700c', 'continental', 'wheels-tyres-tubes', 'gravel-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL TERRA TRAIL SHIELDWALL TYRE 700C</strong></p>

 <p>For your way off-road. For more comfort. For the adventure. For your way off-road. For more comfort. For the adventure. Be it the long tour, or the shortcut on your way home. The new gravel Terra series by Continental gets you there. Made to get you over rough and smooth.</p>

 <p>Choose alter road, choose Terra.</p>

 <p><strong>Shieldwall System</strong></p>

 <p>The ShieldWall system combines the optimum combination of high puncture protection and the low rolling resistance with low weight. This is made possible by an additional, all-round puncture protection layer, which consists of a finely woven cross fabric. This gives the tire a high resistance to punctures and damage. Despite its additional ply, the tire has a very good damping property and a high degree of flexibility to adapt perfectly to the ground. The revolutionary tubeless ready bead allows easy and uncomplicated mounting of the tire. For best results in sealing and in use, we recommend the use of the new Continental RevoSealant sealant</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>PureGrip Compound</li>
 <li>Shield Wall System</li>
 <li>Tubeless Ready</li>
 <li>Suitable for E-Bikes</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-terra-trail-shieldwall-700c/1.jpg', 'continental-terra-trail-shieldwall-700c/2.jpg', 'continental-terra-trail-shieldwall-700c/3.jpg', 'continental-terra-trail-shieldwall-700c/4.jpg', 'continental-terra-trail-shieldwall-700c/5.jpg']::text[], 'new', 2, '2026-08-10'::date, false, false),
  ('pathfinder-tlr-fast-gravel-tire', 'Pathfinder TLR Fast Gravel Tire', 'specialized', 'wheels-tyres-tubes', 'gravel-tyres', '<p>The all-new Pathfinder TLR is 19% faster, 25g lighter, and 30% more cut-resistant than its predecessor, making the winningest gravel tire even better. Its fast-rolling tread and high-speed center T2 compound ensure top straight-line velocity, while the grippier T5 compound on the shoulder knobs enhances cornering traction. The strong, fast-rolling TLR casing delivers rapid acceleration and top climbing performance while preventing flats. For sheer speed, Pathfinder is the ultimate choice.</p>', array['pathfinder-tlr-fast-gravel-tire/1.jpg', 'pathfinder-tlr-fast-gravel-tire/2.jpg', 'pathfinder-tlr-fast-gravel-tire/3.jpg', 'pathfinder-tlr-fast-gravel-tire/4.png']::text[], 'new', 4, '2025-03-18'::date, false, false),
  ('pirelli-cinturato-gravel-rc', 'PIRELLI  Cinturato Gravel RC', 'pirelli', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Cinturato™ Gravel RC is the gravel-racing specific tyre, derived from our experience in the biggest competitions around the World and the feedbacks of our PRO athletes. The tread design is inspired by the Scorpion™ XC RC, focussed on two key features: higher average speed on straight and fast lines, improved lateral grip when off-road cornering. The Cinturato™ Gravel RC is compatible with hookless rims according to ETRTO 5bar/73psi max pressure limit</p>
<p><strong>COMPOUND, CASING, TECHNOLOGIES</strong></p>
<p>What''s the secret to our tyres? Let''s take a look at some of the motorsport-derived technologies applied to our cycling tyres</p>
<p><strong>SpeedGRIP Compound</strong></p>
<p>The SpeedGRIP Compound is a gravel-specific rubber formulation born from the Pirelli experience in the World Rally Championship where the performances of speed and grip on and off-road are crucial. This chemical formulation rely on the polymer matrix of the MTB-specific SmartGRIP Compound while lowering its rolling resistance. The gravel application requires good speed and on-off road capabilities, for this reason our engineers tweaked the compound features towards a better energetic efficiency with a little compromise on the grip, the result is a predictable compound with solid performances on and off road.</p>
<p><strong>TechWALL Gravel</strong></p>
<p>Our engineers wisely combined the technologies derived from road-specific reinforced casings with the MTB-specific casings to obtain our most advanced gravel casing whose performances are obtained with the use of special fabric reinforcements and thicker layers of rubber in specific areas of the tyre. On the road the majority of punctures are caused by the penetration of sharp objects while off-road the most common punctures are caused by sidewall cuts, for this reason the TechWALL Gravel features a cut-resistant 120tpi fabric all over the perimeter of the tyre still offering a supple riding feeling.</p>
<p><strong>Cinturato™ Gravel RC </strong>Size 35-622 / Weight 510gm / TPI 60 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel RC </strong>Size 40-622 / Weight 540gm / TPI 60 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel RC </strong>Size 45-622 / Weight 590gm / TPI 60 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>', array['pirelli-cinturato-gravel-rc/1.jpg', 'pirelli-cinturato-gravel-rc/2.jpg']::text[], 'new', 4, '2024-08-09'::date, false, false),
  ('pirelli-m-cinturato-gravel-m', 'PIRELLI  M Cinturato Gravel M', 'pirelli', 'wheels-tyres-tubes', 'gravel-tyres', '<p>The Cinturato™ Gravel M is a gravel-specific tyre designed for mixed terrain, where the surface varies between compact and unstable terrain and all intermediate types. The tread consists of knobs with average height and spacing to guarantee excellent performance on a wide range of terrains. The special SpeedGRIP Compound adds features of mechanical resistance and chemical grip, without compromising the rolling efficiency. Cinturato™ Gravel H is a high-performance tyre with unique characteristics of grip in all weather conditions, both wet or dry, plus a high level of puncture protection. The Cinturato™ Gravel M is compatible with hookless rims according to ETRTO 5bar/73psi max pressure limit</p>
<p><strong>COMPOUND, CASING, TECHNOLOGIES</strong></p>
<p>What''s the secret to our tyres? Let''s take a look at some of the motorsport-derived technologies applied to our cycling tyres</p>
<p><strong>SpeedGRIP Compound</strong></p>
<p>The SpeedGRIP Compound is a gravel-specific rubber formulation born from the Pirelli experience in the World Rally Championship where the performances of speed and grip on and off-road are crucial. This chemical formulation rely on the polymer matrix of the MTB-specific SmartGRIP Compound while lowering its rolling resistance. The gravel application requires good speed and on-off road capabilities, for this reason our engineers tweaked the compound features towards a better energetic efficiency with a little compromise on the grip, the result is a predictable compound with solid performances on and off road.</p>
<p><strong>TechWALL Gravel</strong></p>
<p>Our engineers wisely combined the technologies derived from road-specific reinforced casings with the MTB-specific casings to obtain our most advanced gravel casing whose performances are obtained with the use of special fabric reinforcements and thicker layers of rubber in specific areas of the tyre. On the road the majority of punctures are caused by the penetration of sharp objects while off-road the most common punctures are caused by sidewall cuts, for this reason the TechWALL Gravel features a cut-resistant 120tpi fabric all over the perimeter of the tyre still offering a supple riding feeling.</p>
<p><strong>Cinturato™ Gravel M </strong>Size 35-622 / Weight 445gm / TPI 120 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel M </strong>Size 40-622 / Weight 510gm / TPI 120 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel M </strong>Size 45-584 / Weight 535gm / TPI 120 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel M </strong>Size 45-622 / Weight 630gm / TPI 120 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>', array['pirelli-m-cinturato-gravel-m/1.jpg', 'pirelli-m-cinturato-gravel-m/2.jpg']::text[], 'new', 4, '2024-08-09'::date, false, true),
  ('pirelli-cinturato-gravel-h', 'PIRELLI Cinturato Gravel H', 'pirelli', 'wheels-tyres-tubes', 'gravel-tyres', '<p>The Cinturato™ Gravel H is a gravel-specific tyre designed for compact terrain and the hardest surfaces. The tread features low, tightly packed knobs and an elevated ability to adapt to the terrain, offering a large contact area and therefore excellent feeling while riding. The special SpeedGRIP Compound adds features of mechanical resistance and chemical grip, without compromising the rolling efficiency. Cinturato™ Gravel H is a high-performance tyre with unique characteristics of grip in all weather conditions, both wet or dry, plus a high level of puncture protection. Cinturato™ Gravel H is compatible with hookless rims according to ETRTO 5bar/73psi max pressure limit</p>
<p><strong>COMPOUND, CASING, TECHNOLOGIES</strong></p>
<p>What''s the secret to our tyres? Let''s take a look at some of the motorsport-derived technologies applied to our cycling tyres</p>
<p><strong>SpeedGRIP Compound</strong></p>
<p>The SpeedGRIP Compound is a gravel-specific rubber formulation born from the Pirelli experience in the World Rally Championship where the performances of speed and grip on and off-road are crucial. This chemical formulation rely on the polymer matrix of the MTB-specific SmartGRIP Compound while lowering its rolling resistance. The gravel application requires good speed and on-off road capabilities, for this reason our engineers tweaked the compound features towards a better energetic efficiency with a little compromise on the grip, the result is a predictable compound with solid performances on and off road.</p>
<p><strong>TechWALL Gravel</strong></p>
<p>Our engineers wisely combined the technologies derived from road-specific reinforced casings with the MTB-specific casings to obtain our most advanced gravel casing whose performances are obtained with the use of special fabric reinforcements and thicker layers of rubber in specific areas of the tyre. On the road the majority of punctures are caused by the penetration of sharp objects while off-road the most common punctures are caused by sidewall cuts, for this reason the TechWALL Gravel features a cut-resistant 120tpi fabric all over the perimeter of the tyre still offering a supple riding feeling.</p>
<p><strong>Cinturato™ Gravel H </strong>Size 35-622 / Weight 435gm / TPI 120 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel H </strong>Size 40-622 / Weight 455gm / TPI 120 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel H </strong>Size 45-584 / Weight 550gm / TPI 120 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel H </strong>Size 45-622 / Weight 590gm / TPI 120 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>', array['pirelli-cinturato-gravel-h/1.jpg', 'pirelli-cinturato-gravel-h/2.jpg']::text[], 'new', 5, '2024-08-09'::date, false, false),
  ('pirelli-cinturato-gravel-rc-x', 'Pirelli Cinturato Gravel RC-X', 'pirelli', 'wheels-tyres-tubes', 'gravel-tyres', '<p>From the success of the Cinturato Gravel RC, our first ever gravel-racing specific tyre, we developed an even more reinforced version: the Cinturato Gravel RC X. This model features the new Techwall X Gravel, a 60tpi fabric casing structure extended past the tread line, with also an additional bead-to-bead protection layer. Keeping the characteristic tread design of our RC models, the Cinturato Gravel RC X is designed for gravel-racing on rough surfaces.</p>
<p><strong>COMPOUND, CASING, TECHNOLOGIES</strong></p>
<p>What''s the secret to our tyres? Let''s take a look at some of the motorsport-derived technologies applied to our cycling tyres</p>
<p><strong>SpeedGRIP Compound</strong></p>
<p>The SpeedGRIP Compound is a gravel-specific rubber formulation born from the Pirelli experience in the World Rally Championship where the performances of speed and grip on and off-road are crucial. This chemical formulation rely on the polymer matrix of the MTB-specific SmartGRIP Compound while lowering its rolling resistance. The gravel application requires good speed and on-off road capabilities, for this reason our engineers tweaked the compound features towards a better energetic efficiency with a little compromise on the grip, the result is a predictable compound with solid performances on and off road.</p>
<p><strong>TechWALL-X Gravel</strong></p>
<p>The 60tpi tubeless-ready gravel-specific casing: provides an in increased puncture protection thanks to an additional bead-to-bead anti-puncture fabric</p>

<p><strong>Cinturato™ Gravel RC-X Classic </strong>Size 35-622 / Weight 480gm / TPI 60 / Casing TechWALL-X Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel RC-X Classic </strong>Size 40-622 / Weight 560gm / TPI 60 / Casing TechWALL-X Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel RC-X </strong>Size 40-622 / Weight 560gm / TPI 60 / Casing TechWALL-X Gravel / Compound SPEEDGRIP</p>', array['pirelli-cinturato-gravel-rc-x/1.jpg']::text[], 'new', 3, '2024-10-17'::date, false, false),
  ('pirelli-cinturato-gravel-s', 'PIRELLI Cinturato Gravel S', 'pirelli', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Cinturato™ Gravel S is the gravel tryre for soft and muddy terrain, it is a versatile model that delivers a safe cycling experience in adverse weather conditions and on technical tracks, at the very limit with mountain biking. Cinturato™ Gravel S in the suggested model for those looking for a reliable tyre which is easy to crontrol and safe in every condition. Grip and safety are prioritized rather than the pure speed of racing-specific models. The Cinturato™ Gravel S is compatible with hookless rims according to ETRTO 5bar/73psi max pressure limit</p>
<p><strong>COMPOUND, CASING, TECHNOLOGIES</strong></p>
<p>What''s the secret to our tyres? Let''s take a look at some of the motorsport-derived technologies applied to our cycling tyres</p>
<p><strong>SpeedGRIP Compound</strong></p>
<p>The SpeedGRIP Compound is a gravel-specific rubber formulation born from the Pirelli experience in the World Rally Championship where the performances of speed and grip on and off-road are crucial. This chemical formulation rely on the polymer matrix of the MTB-specific SmartGRIP Compound while lowering its rolling resistance. The gravel application requires good speed and on-off road capabilities, for this reason our engineers tweaked the compound features towards a better energetic efficiency with a little compromise on the grip, the result is a predictable compound with solid performances on and off road.</p>
<p><strong>TechWALL Gravel</strong></p>
<p>Our engineers wisely combined the technologies derived from road-specific reinforced casings with the MTB-specific casings to obtain our most advanced gravel casing whose performances are obtained with the use of special fabric reinforcements and thicker layers of rubber in specific areas of the tyre. On the road the majority of punctures are caused by the penetration of sharp objects while off-road the most common punctures are caused by sidewall cuts, for this reason the TechWALL Gravel features a cut-resistant 120tpi fabric all over the perimeter of the tyre still offering a supple riding feeling.</p>
<p><strong>Cinturato™ Gravel S </strong>Size 40-622 / Weight 540gm / TPI 60 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>
<p><strong>Cinturato™ Gravel S </strong>Size 45-622 / Weight 550gm / TPI 60 / Casing TechWALL Gravel / Compound SPEEDGRIP</p>', array['pirelli-cinturato-gravel-s/1.jpg']::text[], 'new', 4, '2024-08-09'::date, false, false),
  ('schwalbe-tyre-g-one-allround-1', 'Schwalbe Tyre G-One Allround', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Schwalbe One Goes Gravel. The Schwalbe One family provides the right tire for the latest gravel bike trend. The smooth rolling G-One profile and Tubeless Easy technology make it a pleasure to ride over forest paths and rolling fields.</p>', array['schwalbe-tyre-g-one-allround-1/1.png', 'schwalbe-tyre-g-one-allround-1/2.png', 'schwalbe-tyre-g-one-allround-1/3.png', 'schwalbe-tyre-g-one-allround-1/4.png', 'schwalbe-tyre-g-one-allround-1/5.png']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('schwalbe-tyre-g-one-bite-1', 'Schwalbe Tyre G-One Bite', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p>A REAL OFF-ROADER. This G-One feels pretty good on the road, but its true strength comes through off-road. G-One Bite is constructed for more off-road use than its stablemates. The open tread design and strong outer blocks provide stability when cornering and deliver this G-One the perfect “Bite”. </p>', array['schwalbe-tyre-g-one-bite-1/1.png', 'schwalbe-tyre-g-one-bite-1/2.png', 'schwalbe-tyre-g-one-bite-1/3.png']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('schwalbe-tyre-g-one-overland-1', 'Schwalbe Tyre G-One Overland', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p><strong>The gravel tire for commuters, adventurers and e-bikers.</strong></p> <ul> <li>Use: 50% road, 50% off-road</li> <li>High durability and good cornering grip due to large and stable blocks</li> <li>Especially suitable for e-bikes</li> <li>Very smooth on asphalt</li> </ul> <ul> <li>
<strong>Evolution Line</strong> <ul> <li>The very best possible. Highest grade materials. Latest technology.</li> </ul> </li> <li>
<strong>ADDIX Speedgrip Compound</strong> <ul> <li>
ADDIX SPEEDGRIP the universal compound. It definitely has the widest range of use. Perfect for XC, AM and Trail.</li> </ul> </li> <li>
<strong>Super Ground</strong> <ul> <li>Combines light weight and stability. Feels comfortable in any terrain. Balanced ratio of puncture protection and smooth rolling. For flowing trails, long rides and any terrain.</li> </ul> </li> <li>
<strong>Tubeless Technology</strong> <ul> <li>For all ambitious sports cyclists Tubeless is the right choice. Only Tubeless achieves the best values in terms of: <ul> <li>SPEED</li> <li>GRIP</li> <li>PUNCTURE PROTECTION</li> <li>COMFORT</li> </ul> </li> </ul> </li> <li>
<strong>E-50</strong> <ul> <li>E-Bike tires with European ECE-R75 approval. Our recommendation for fast E-Bikes - S-Pedelecs with type approval, insurance, and motor assist over 25 km/h – for which a special tire approval is necessary.</li> </ul> </li> </ul>', array['schwalbe-tyre-g-one-overland-1/1.png', 'schwalbe-tyre-g-one-overland-1/2.png', 'schwalbe-tyre-g-one-overland-1/3.png']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('schwalbe-tyre-g-one-overland-pro', 'Schwalbe Tyre G-One Overland Pro', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p><b>Even more puncture protection and grip for Schwalbe''s G-ONE Overland PRO </b></p>
<p>A versatile tread and extreme durability – the G-ONE Overland PRO is now available with enhanced puncture protection and even more grip. </p>
<p>The basis for this is Schwalbe''s proven Double Defense construction: </p>
<p>Continuous Snakeskin fabric, together with the RaceGuard insert, provides puncture protection and high resistance – you can feel this both on asphalt and off-road </p>
<p>In addition, a dual compound, two different rubber mixtures, ensures even better performance – the grippier compound is placed on the sides of the tread, giving you even more grip in cornering.  </p>
<p><br></p>
<p>The tread remains unchanged:  </p>
<ul>
<li>Closed centre tread for quiet and efficient rolling </li>
<li>Wide centre knobs for exceptional durability  </li>
<li>Pronounced outer knobs for cornering grip </li>
</ul>

<p>Who is this tire suitable for? </p>
<ul>
<li>It is the best choice for powerful e-gravel bikes </li>
<li>Daily commuting to work </li>
<li>Bikepacking trips</li>
</ul>', array['schwalbe-tyre-g-one-overland-pro/1.png']::text[], 'new', 3, '2025-08-19'::date, false, true),
  ('schwalbe-tyre-g-one-r-1', 'Schwalbe Tyre G-One R', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p><strong>THE RACE GRAVEL TIRE. </strong>The Schwalbe G-One R is made for use on light terrain, gravel roads and asphalt. Thanks to the Super Race carcass, it combines souplesse, speed and control at the highest level.</p>
<ul>
<li>New Boomerang profile for best traction uphill and ideal rolling behavior.</li>
<li>Super Race carcass (Souplesse construction) for a particularly smooth ride with low rolling resistance and high impact protection.</li>
<li>Angled side lugs create in conjunction with the Super Race carcass best cornering grip.</li>
</ul>', array['schwalbe-tyre-g-one-r-1/1.png', 'schwalbe-tyre-g-one-r-1/2.png', 'schwalbe-tyre-g-one-r-1/3.png']::text[], 'new', 0, '2026-08-10'::date, false, false),
  ('schwalbe-tyre-g-one-r-pro', 'Schwalbe Tyre G-One R Pro', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p>THE ALLROUNDER FOR SPEED AND CONTROL</p>
<p>The G-ONE R PRO is the perfect tire for riders who traverse a variety of terrain. Whether on forest paths, off-road trails, or asphalt, the G-ONE R PRO strikes a balance between speed and control. Thanks to its boomerang tread pattern and angled side knobs, it offers plenty of grip even in wet conditions. This makes it a safe choice for unfamiliar terrain.</p>

ETRTO:
50-622

Weight:
610 g

Version:
RACE PRO, V-Guard

Compound:
ADDIX Race

Color:
Transparent Sidewall

Bead:
Folding

E-Bike:
E-25

Epi:
67

Inch:
28x2.00

Load (kg):
100 kg

Quality:
PRO

Seal:
TLR

Tread:
HS610

max. Bar:
4 Bar

max. Psi:
55 PSI

min. Bar:
0 Bar', array['schwalbe-tyre-g-one-r-pro/1.png', 'schwalbe-tyre-g-one-r-pro/2.png', 'schwalbe-tyre-g-one-r-pro/3.png']::text[], 'new', 2, '2025-06-19'::date, false, true),
  ('schwalbe-tyre-g-one-rs-1', 'Schwalbe Tyre G-One RS', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p><strong>Race-oriented semi-slick race tire</strong></p> <ul> <li>Lowest rolling resistance in the G-One range</li> <li>Maximum efficiency on light terrain, hard surfaces and asphalt</li> <li>Braking and traction edges for front wheel and rear wheel thanks to scale-like tread pattern</li> <li>Souplesse construction for smooth ride + high puncture protection under tough racing conditions</li> </ul> <ul> <li>
<strong>Evolution Line</strong> <ul> <li>The very best possible. Highest grade materials. Latest technology.</li> </ul> </li> <li>
<strong>ADDIX Race Compound</strong> <ul> <li>Offers tenacious grip at high cornering speeds and extensive durability in E-operation.</li> </ul> </li> <li>
<strong>Super Race</strong> <ul> <li>In no other discipline is the focus on rolling resistance and weight as critical as it is in cross-country and marathon competition. With the new Super Race construction, we are also setting new standards in suppleness - no other carcass glides so silky smooth over the ground, and thus providing traction, like Super Race does.</li> </ul> </li> <li>
<strong>Soupless Carcass</strong> <ul> <li>Souplesse Carcass Construction<br>Special turn-up construction for an exceptional riding experience in race tires.</li> </ul> </li> <li>
<strong>V-Guard</strong> <ul> <li>Extremely lightweight and cut resistant high-tech fabric.</li> </ul> </li> <li>
<strong>Tubeless Technology</strong> <ul> <li>For all ambitious sports cyclists Tubeless is the right choice. Only Tubeless achieves the best values in terms of: <ul> <li>SPEED</li> <li>GRIP</li> <li>PUNCTURE PROTECTION</li> <li>COMFORT</li> </ul> </li> </ul> </li> <li>
<strong>E-25</strong> <ul> <li>Tires with the recommendation "E-25" are the perfect choice for all pedelecs with pedal assistance up to 25 km/h. The most important criterion for this recommendation: safety.</li> </ul> </li> </ul>', array['schwalbe-tyre-g-one-rs-1/1.png', 'schwalbe-tyre-g-one-rs-1/2.png', 'schwalbe-tyre-g-one-rs-1/3.png']::text[], 'new', 1, '2025-04-24'::date, false, true),
  ('schwalbe-tyre-g-one-rs-pro', 'Schwalbe Tyre G-One RS Pro', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', 'MAXIMUM SPEED

The G-ONE RS PRO is our fastest gravel tire. The semi-slick tire is designed to provide maximum efficiency on hard surfaces. It is the first choice for those who have only one goal in mind: speed. Numerous victories in the toughest gravel races worldwide prove its performance. The scaled tread pattern offers the lowest rolling resistance of the entire G-ONE PRO line, while the recessed side knobs ensure corner grip and traction.

ETRTO:
40-622

Weight:
475 g

Version:
V-Guard

Compound:
ADDIX Race

Color:
Transparent Sidewall

Bead:
Folding

E-Bike:
E-25

Epi:
67

French Size:
700x40C

Inch:
28x1.50

Load (kg):
100 kg

Quality:
PRO

Seal:
TLR

Tread:
HS621

max. Bar:
4.5 Bar

max. Psi:
65 PSI

min. Bar:
0 Bar', array['schwalbe-tyre-g-one-rs-pro/1.png', 'schwalbe-tyre-g-one-rs-pro/2.png']::text[], 'new', 1, '2025-06-19'::date, false, true),
  ('schwalbe-tyre-g-one-rx', 'Schwalbe Tyre G-One RX', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p>The race tyre for best off-road performance</p>
<ul>
<li>Enormous grip even under difficult conditions (rocky, muddy terrain)</li>
<li>Maximum cornering traction thanks to paired outer blocks</li>
<li>Good self-cleaning in muddy conditions</li>
<li>Souplesse construction for smooth ride feel + high puncture protection</li>
</ul>

ETRTO:
40-622

Weight:
520 g

Version:
RACE PRO, V-Guard

Compound:
ADDIX Race

Color:
Black

Bead:
Folding

E-Bike:
E-25

Epi:
67

French Size:
700x40C

Inch:
28x1.50

Load (kg):
100 kg

Quality:
PRO

Seal:
TLR

Tread:
HS637

max. Bar:
4.5 Bar

max. Psi:
65 PSI

min. Bar:
0 Bar', array['schwalbe-tyre-g-one-rx/1.png']::text[], 'new', 2, '2025-08-19'::date, false, true),
  ('schwalbe-tyre-g-one-speed-1', 'Schwalbe Tyre G-One Speed', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p>THE SPECIAL ONE. Unleashing profile and breathtakingly fast – especially when large volume counts. As a 30mm wide road race version with V-Guard protection, G-One Speed is a tire for the real tough jobs. You can ride it as a handmade tubular or with the most modern Tubeless Easy technology. But it is also a guarantee for maximum speed in the extra-wide 60mm execution – of course not only at the fascinating beach races on Holland’s coasts. The new G-One Speed is an evolution of the former S-One and Big One.</p>', array['schwalbe-tyre-g-one-speed-1/1.png', 'schwalbe-tyre-g-one-speed-1/2.png']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('schwalbe-tyre-g-one-speed-pro', 'Schwalbe Tyre G-One Speed Pro', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p>THE SPECIAL ONE. G-One Speed is above all a promise of maximum speed! This tire extends the range of use for every road cyclist. It rolls fast on the road, but at the same time safely on unkept cycle paths and gravel roads.</p><ul><li>Homogeneous round knob profile for optimal rolling on the road and safe grip on gravel.</li></ul>', array['schwalbe-tyre-g-one-speed-pro/1.webp']::text[], 'new', 1, '2026-05-13'::date, false, true),
  ('schwalbe-tyre-g-one-ultrabite-1', 'Schwalbe Tyre G-One Ultrabite', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Gravel without limits. Created for off-road use. The aggressive tread design impresses with its compact “tape knobs” in the middle of the tread and provides full grip and unrivaled traction. The strong outer blocks provide the rider with safety at all times when cornering. The G-One Ultrabite''s off-road performance is noticeably enhanced by the stable construction and progressive Tubeless Easy technology. The tire is completed with the versatile Addix Speedgrip compound. In widths of 40mm and 50mm, the G-One Ultrabite is perfectly suited for use on gravel roads, forest tracks and trails, even in challenging conditions. The “Ultrabite” offers remarkable performance as a front tire in combination with G-One Bite or G-One Allround on the rear wheel. Thanks to TLE tubeless technology all versions of G-One Ultrabite can be used tubeless. </p>', array['schwalbe-tyre-g-one-ultrabite-1/1.png', 'schwalbe-tyre-g-one-ultrabite-1/2.png']::text[], 'new', 3, '2025-04-24'::date, false, true),
  ('schwalbe-tyre-x-one-r', 'Schwalbe Tyre X-One R', 'schwalbe', 'wheels-tyres-tubes', 'gravel-tyres', 'PRODUCT INFORMATION "SCHWALBE X-ONE R"<br>
<p>The race cyclocross tire</p>
<ul>
<li>New tread design with all-round properties</li>
<li>Improved traction in cornering sections and excellent rolling characteristics</li>
<li>Sleek souplesse construction: Low rolling resistance + high grip through<br>Super Race carcass as well as very good Puncture protection thanks to V-Guard</li>
<li>The choice of the German champions (Judith Krahl and Sascha Weber)</li>
</ul>

<br>

ETRTO: 33-622

Version: Super Race, V-Guard

Compound: Addix Race

Color: Transparent Sidewall

Bead: Folding

E-Bike: E-25

Epi: 67

French Size: 700x33C

Inch: 28x1.30

Load (kg): 75 kg

Seal: TLE (Tubeless Easy)

max. Bar: 4.5 bar

max. Psi: 65 psi

min. Bar: 0 bar', array['schwalbe-tyre-x-one-r/1.png', 'schwalbe-tyre-x-one-r/2.jpg']::text[], 'new', 1, '2025-04-24'::date, false, true),
  ('terra-tlr-trail-gravel-tire', 'Terra TLR Trail Gravel Tire', 'specialized', 'wheels-tyres-tubes', 'gravel-tyres', '<p>For maximum control on the gnarliest trails, Terra TLR has you covered. Its fast-rolling, compact center tread ensures efficiency and speed, while the wider spaced shoulder knobs provide predictable cornering and handling in the most rugged terrain. Grippy T5 compound balances speed and traction, and our strong, fast rolling TLR casing offers lightning-fast acceleration and top climbing performance while eliminating flats. For the trail less traveled, Terra is the perfect choice.</p>', array['terra-tlr-trail-gravel-tire/1.jpg', 'terra-tlr-trail-gravel-tire/2.png']::text[], 'new', 1, '2025-03-24'::date, false, false),
  ('tracer-tlr-all-terrain-gravel-tire', 'Tracer TLR All Terrain Gravel Tire', 'specialized', 'wheels-tyres-tubes', 'gravel-tyres', '<p>For hardpack racing, loose gravel exploring, and singletrack shenanigans, Tracer delivers. Its fast rolling compact center knob cluster with wide-set, aggressive T5 compound knobs enhance traction and stability on mixed-terrain gravel. Our strong and fast rolling TLR casing offers lightning-fast acceleration and top climbing performance while eliminating flats. When speed and control matters most, Tracer is the perfect choice.</p>', array['tracer-tlr-all-terrain-gravel-tire/1.jpg', 'tracer-tlr-all-terrain-gravel-tire/2.jpg', 'tracer-tlr-all-terrain-gravel-tire/3.jpg', 'tracer-tlr-all-terrain-gravel-tire/4.png']::text[], 'new', 4, '2025-03-18'::date, false, false),
  ('vittora-700c-terreno-t80-coarse-loose-gravel-endurance', 'Vittora 700c Terreno T80 Coarse Loose Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Ultimate confidence in mixed to coarse loose conditions</p>

<p>With a T-score of 80, the Terreno T80 is engineered for coarse loose conditions.<br>
The tire is designed for riders who demand ultimate confidence when navigating the most unpredictable and aggressive gravel terrain.<br>
<br>
The T80 features a fast-rolling center tread that sheds debris and muck with ease, keeping the ride smooth and efficient even in rough or muddy conditions. Meanwhile, aggressive shoulder knobs deliver consistent grip when cornering off-camber, digging into loose terrain without compromising responsiveness or control. This aggressive tread is made from Vittoria’s Endurance Formulation powered by Graphene, providing long-haul durability, dependable performance, and weather-resistant grip.<br>
<br>
The tire’s robust Endurance Casing offers exceptional adaptability and strength, bolstered by reinforced nylon sidewall protection and an anti-puncture belt—keeping you covered when the terrain gets sharp, steep, or sloppy.</p>

<p>T80 is ready for the roughest rides, making it the ideal choice for adventurous endurance rides and technical gravel events.</p>

<ul>
	<li>Fast on the straights with a mixed tread that maintains a secure connection on any surface. Smooth and efficient ride thanks to the fast-rolling center knobs which shed debris and muck.</li>
	<li>Confident grip off-camber and in coarse loose terrain conditions with aggressive shoulder knobs that bite into the terrain without sacrificing control or responsiveness.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance TLR Casing.</li>
	<li>Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-puncture belt.</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.<br>
This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint = 6.4 kg CO2e (ref. size 40-622).</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>700x37c</td>
 <td>37-622</td>
 <td>Black</td>
 <td>480 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622</td>
 <td>Brown</td>
 <td>500 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622</td>
 <td>Black</td>
 <td>520 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622</td>
 <td>Brown</td>
 <td>520 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622</td>
 <td>Black</td>
 <td>540 g</td>
 </tr>
 <tr>
 <td>700x50c</td>
 <td>50-622</td>
 <td>Black</td>
 <td>600 g</td>
 </tr>
	</tbody>
</table>', array['vittora-700c-terreno-t80-coarse-loose-gravel-endurance/1.jpg', 'vittora-700c-terreno-t80-coarse-loose-gravel-endurance/2.jpg', 'vittora-700c-terreno-t80-coarse-loose-gravel-endurance/3.jpg', 'vittora-700c-terreno-t80-coarse-loose-gravel-endurance/4.jpg', 'vittora-700c-terreno-t80-coarse-loose-gravel-endurance/5.jpg']::text[], 'new', 6, '2025-10-01'::date, false, true),
  ('vittoria-650b-terreno-t10-hardpack-gravel-endurance', 'Vittoria 650b Terreno T10 Hardpack Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>The fastest choice for when the pavement ends</p>

<p>With a T-score of 10, the Terreno T10 is ideal for riders who spend most of their time on pavement or hardpacked gravel but want a tyre that can handle occasional detours with confidence. Designed for maximum efficiency on firm terrain, the T10 rolls effortlessly while maintaining essential grip for real-world gravel riding—making it the go-to choice for events with mixed sections or fast endurance rides.<br>
<br>
The Terreno T10 Hardpack Gravel Endurance tyre is the most road-efficient model in the Vittoria Gravel Endurance range, engineered for speed and control on compact surfaces. The heart of the T10 is Vittoria’s Endurance Formulation powered by Graphene, delivering proven durability, weather resistance, and consistent performance across seasons and surfaces. A Corsa-inspired and fast rolling slick center strip is paired with revolutionary fish scale shoulders, adapted from the Terreno T30, for added cornering grip and navigating wet or variable terrain. Built with our Endurance Casing, the T10 offers high adaptability and structural strength for long-distance riding, reinforced with a nylon sidewall protection layer and an anti-puncture belt to ensure maximum reliability and peace of mind.<br>
<br>
From tarmac to fast rolling hardpack, the T10 brings road-like efficiency to the gravel world—with the endurance pedigree to match.</p>

<ul>
	<li>Reduced rolling resistance thanks to the Corsa-inspired slick center strip.</li>
	<li>High grip while cornering and navigating wet conditions with the revolutionary fish scale shoulders adapted from Terreno T30.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance Casing.</li>
	<li>Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-puncture belt.
</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.<br>
This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint = 6.5 kg CO2e (ref. size 40-622).</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>650x47b</td>
 <td>47-584</td>
 <td>Black</td>
 <td>570 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-650b-terreno-t10-hardpack-gravel-endurance/1.jpg', 'vittoria-650b-terreno-t10-hardpack-gravel-endurance/2.jpg', 'vittoria-650b-terreno-t10-hardpack-gravel-endurance/3.jpg', 'vittoria-650b-terreno-t10-hardpack-gravel-endurance/4.jpg', 'vittoria-650b-terreno-t10-hardpack-gravel-endurance/5.jpg']::text[], 'new', 1, '2025-11-28'::date, false, true),
  ('vittoria-650b-terreno-t30-fine-loose-gravel-endurance', 'Vittoria 650b Terreno T30 Fine Loose Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>The champion of fine loose gravel</p>

<p>With a T-score of 30, the Terreno T30 is designed for riders who prioritize speed on fine gravel yet demand dependable handling and versatility when conditions become more technical.<br>
<br>
The Terreno T30 Fine Loose Gravel Endurance tyre strikes the perfect balance between speed and control on fast-rolling gravel. The T30 features a unique fish scale center strip and is optimized for low rolling resistance while maintaining braking traction and stability in demanding conditions. The siped shoulder knobs are engineered to dig into off-camber sections, offering enhanced grip when cornering, while a gradual ramp-up tread design ensures a smooth, confident transition as you lean into turns. All made from our Endurance Formulation powered by Graphene.<br>
<br>
With Vittoria’s Endurance Casing, the T30 delivers high adaptability and strength across long distances. Reinforced nylon sidewall protection and an anti-puncture belt add critical resilience and stability, ensuring riders stay protected against sharp rocks, roots, and unpredictable terrain.<br>
<br>
The T30 is built for fast gravel, offering a race-ready feel with the confidence to handle off-camber turns, tricky corners in the wet or dry, and shifting surfaces without hesitation.</p>

<ul>
	<li>Optimized for speed on dry, fast courses with a unique fish scale center strip that minimizes rolling resistance while maintaining control under braking and cornering.</li>
	<li>Enhanced cornering grip with siped shoulder knobs that bite into off-camber sections, while the gradual ramp-up design ensures a smooth transition when leaning into turns.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance Casing.</li>
	<li>Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-puncture belt.</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint = 6.3 kg CO2e (ref. size 40-622).</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETR TO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>650x47b</td>
 <td>47-584</td>
 <td>Black</td>
 <td>570 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-650b-terreno-t30-fine-loose-gravel-endurance/1.jpg', 'vittoria-650b-terreno-t30-fine-loose-gravel-endurance/2.jpg', 'vittoria-650b-terreno-t30-fine-loose-gravel-endurance/3.jpg', 'vittoria-650b-terreno-t30-fine-loose-gravel-endurance/4.jpg', 'vittoria-650b-terreno-t30-fine-loose-gravel-endurance/5.jpg']::text[], 'new', 1, '2026-08-10'::date, false, true),
  ('vittoria-700c-terreno-t10-hardpack-gravel-endurance', 'Vittoria 700c Terreno T10 Hardpack Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>The fastest choice for when the pavement ends</p>

<p>With a T-score of 10, the Terreno T10 is ideal for riders who spend most of their time on pavement or hardpacked gravel but want a tyre that can handle occasional detours with confidence. Designed for maximum efficiency on firm terrain, the T10 rolls effortlessly while maintaining essential grip for real-world gravel riding—making it the go-to choice for events with mixed sections or fast endurance rides.<br>
<br>
The Terreno T10 Hardpack Gravel Endurance tyre is the most road-efficient model in the Vittoria Gravel Endurance range, engineered for speed and control on compact surfaces. The heart of the T10 is Vittoria’s Endurance Formulation powered by Graphene, delivering proven durability, weather resistance, and consistent performance across seasons and surfaces. A Corsa-inspired and fast rolling slick center strip is paired with revolutionary fish scale shoulders, adapted from the Terreno T30, for added cornering grip and navigating wet or variable terrain. Built with our Endurance Casing, the T10 offers high adaptability and structural strength for long-distance riding, reinforced with a nylon sidewall protection layer and an anti-puncture belt to ensure maximum reliability and peace of mind.<br>
<br>
From tarmac to fast rolling hardpack, the T10 brings road-like efficiency to the gravel world—with the endurance pedigree to match.</p>

<ul>
	<li>Reduced rolling resistance thanks to the Corsa-inspired slick center strip.</li>
	<li>High grip while cornering and navigating wet conditions with the revolutionary fish scale shoulders adapted from Terreno T30.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance TLR Casing.</li>
	<li>Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-puncture belt.
</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.<br>
This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint = 6.5 kg CO2e (ref. size 40-622).</p>

<table>
	<tbody>
 <tr>
 <td>700x37c</td>
 <td>37-622</td>
 <td>Black</td>
 <td>470 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622</td>
 <td>Brown</td>
 <td>490 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622</td>
 <td>Black</td>
 <td>510 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622</td>
 <td>Brown</td>
 <td>540 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622</td>
 <td>Black</td>
 <td>560 g</td>
 </tr>
 <tr>
 <td>650x47b</td>
 <td>47-584</td>
 <td>Black</td>
 <td>570 g</td>
 </tr>
 <tr>
 <td>700x50c</td>
 <td>50-622</td>
 <td>Brown</td>
 <td>640 g</td>
 </tr>
 <tr>
 <td>700x50c</td>
 <td>50-622</td>
 <td>Black</td>
 <td>640 g</td>
 </tr>
 <tr>
 <td>700x55c</td>
 <td>55-622</td>
 <td>Brown</td>
 <td>690 g</td>
 </tr>
 <tr>
 <td>700x55c</td>
 <td>55-622</td>
 <td>Black</td>
 <td>710 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-700c-terreno-t10-hardpack-gravel-endurance/1.jpg', 'vittoria-700c-terreno-t10-hardpack-gravel-endurance/2.jpg', 'vittoria-700c-terreno-t10-hardpack-gravel-endurance/3.jpg', 'vittoria-700c-terreno-t10-hardpack-gravel-endurance/4.jpg', 'vittoria-700c-terreno-t10-hardpack-gravel-endurance/5.jpg']::text[], 'new', 6, '2025-10-01'::date, false, true),
  ('vittoria-700c-terreno-t30-fine-loose-gravel-endurance', 'Vittoria 700c Terreno T30 Fine Loose Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>The champion of fine loose gravel</p>

<p>With a T-score of 30, the Terreno T30 is designed for riders who prioritize speed on fine gravel yet demand dependable handling and versatility when conditions become more technical.<br>
<br>
The Terreno T30 Fine Loose Gravel Endurance tyre strikes the perfect balance between speed and control on fast-rolling gravel. The T30 features a unique fish scale center strip and is optimized for low rolling resistance while maintaining braking traction and stability in demanding conditions. The siped shoulder knobs are engineered to dig into off-camber sections, offering enhanced grip when cornering, while a gradual ramp-up tread design ensures a smooth, confident transition as you lean into turns. All made from our Endurance Formulation powered by Graphene.<br>
<br>
With Vittoria’s Endurance Casing, the T30 delivers high adaptability and strength across long distances. Reinforced nylon sidewall protection and an anti-puncture belt add critical resilience and stability, ensuring riders stay protected against sharp rocks, roots, and unpredictable terrain.<br>
<br>
The T30 is built for fast gravel, offering a race-ready feel with the confidence to handle off-camber turns, tricky corners in the wet or dry, and shifting surfaces without hesitation.</p>

<ul>
	<li>Optimized for speed on dry, fast courses with a unique fish scale center strip that minimizes rolling resistance while maintaining control under braking and cornering.</li>
	<li>Enhanced cornering grip with siped shoulder knobs that bite into off-camber sections, while the gradual ramp-up design ensures a smooth transition when leaning into turns.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance TLR Casing.</li>
	<li>Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-puncture belt.</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint = 6.3 kg CO2e (ref. size 40-622).</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETR TO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>700x37c</td>
 <td>37-622</td>
 <td>Black</td>
 <td>480 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622</td>
 <td>Brown</td>
 <td>500 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622</td>
 <td>Black</td>
 <td>520 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622</td>
 <td>Brown</td>
 <td>540 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622</td>
 <td>Black</td>
 <td>560 g</td>
 </tr>
 <tr>
 <td>700x50c</td>
 <td>50-622</td>
 <td>Black</td>
 <td>610 g</td>
 </tr>
 <tr>
 <td>700X50c</td>
 <td>50-622</td>
 <td>Brown</td>
 <td>570 g</td>
 </tr>
 <tr>
 <td>700x55c</td>
 <td>55-622</td>
 <td>Black</td>
 <td>690 g</td>
 </tr>
 <tr>
 <td>700x55c</td>
 <td>55-622</td>
 <td>Brown</td>
 <td>670 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-700c-terreno-t30-fine-loose-gravel-endurance/1.jpg', 'vittoria-700c-terreno-t30-fine-loose-gravel-endurance/2.jpg', 'vittoria-700c-terreno-t30-fine-loose-gravel-endurance/3.jpg', 'vittoria-700c-terreno-t30-fine-loose-gravel-endurance/4.jpg', 'vittoria-700c-terreno-t30-fine-loose-gravel-endurance/5.jpg']::text[], 'new', 7, '2025-10-01'::date, false, true),
  ('vittoria-700c-terreno-t50-mixed-gravel-endurance', 'Vittoria 700c Terreno T50 Mixed Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Speed &amp; capability from hardpack to mixed terrain</p>

<p>The Terreno T50 Mixed Gravel Endurance tyre, is one of two options sitting between two gravel legends; the T30 (formerly the Terreno Dry) and the T70 (formerly Mezcal). With a T-score of 50, this tyre represents the perfect balance between pavement efficiency and off-road capability. The versatile tread design with its new directional siping texture and capable cornering lugs, makes it a great option for tackling a wide range of terrain with enhanced control and confidence.â€¯</p>

<p>Like its Gravel Endurance siblings, T50 is crafted with our innovative Endurance Formulation powered by Graphene, making the Terreno T50 Mixed capable of withstanding the rigors of long-distance gravel riding in any weather condition. An anti-puncture belt is added to provide extra puncture resistance, while a sidewall stability insert provides additional bead protection for enhanced durability and longevity.<br>
<br>
The endurance casing is engineered for high adaptability and strength, featuring reinforced nylon sidewall protection for increased puncture resistance and stability.</p>

<p>Our “gravel multi-tool,” the T50 tread option is ideal for those who want a "one-tire-fits-all" solution. It''s the ultimate choice for riders who demand consistent performance in various conditions without the need for frequent tire changes.<br>
Versatility is at its core: Whether you are navigating smooth pavements, hardpacked dirt roads, or moderately loose gravel paths, the T50 is engineered to perform seamlessly, offering stability and traction without compromising speed.<br>
<br>
Enhanced traction thanks to a directional siping texture that works in addition to the directional edges of the knob placement.</p>

<ul>
	<li>Confident handling across varied terrains with a versatile center and mid-tread, plus capable cornering lugs.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance Casing.</li>
	<li>Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-punture belt.</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint: 6.7 kgCO2e.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>700x40c</td>
 <td>40-622</td>
 <td>Brown</td>
 <td>530 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622</td>
 <td>Black</td>
 <td>530 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622</td>
 <td>Brown</td>
 <td>540 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622</td>
 <td>Black</td>
 <td>545 g</td>
 </tr>
 <tr>
 <td>700x50c</td>
 <td>50-622</td>
 <td>Brown</td>
 <td>570 g</td>
 </tr>
 <tr>
 <td>700x50c</td>
 <td>50-622</td>
 <td>Black</td>
 <td>590 g</td>
 </tr>
 <tr>
 <td>700x55c</td>
 <td>55-622</td>
 <td>Brown</td>
 <td>650 g</td>
 </tr>
 <tr>
 <td>700x55c</td>
 <td>55-622</td>
 <td>Black</td>
 <td>670 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-700c-terreno-t50-mixed-gravel-endurance/1.jpg', 'vittoria-700c-terreno-t50-mixed-gravel-endurance/2.jpg', 'vittoria-700c-terreno-t50-mixed-gravel-endurance/3.jpg', 'vittoria-700c-terreno-t50-mixed-gravel-endurance/4.jpg', 'vittoria-700c-terreno-t50-mixed-gravel-endurance/5.jpg']::text[], 'new', 5, '2025-10-01'::date, false, true),
  ('vittoria-700c-terreno-t60-mixed-gravel-endurance', 'Vittoria 700c Terreno T60 Mixed Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Built to handle the toughest mixed conditions</p>

<p>The Terreno T60 Mixed Gravel Endurance tire is built to perform when terrain gets rough, unpredictable, and relentlessly varied. With a T-score of 60, the Terreno T60 is the choice for riders who tackle aggressive mixed terrain and demand a tire that can keep up without question.<br>
<br>
T60’s proven V-formation tread pattern and uniform profile offer confident cornering and consistent handling across complex surfaces, ranging from compact dirt to chunky gravel to loose-over-hard trails. Strategically placed surface siping and balanced tread spacing ensure dependable grip in fast-changing conditions, giving riders the control they need when it matters most.<br>
<br>
Constructed with Vittoria’s Endurance Casing, the T60 combines high adaptability with reinforced strength for all-day comfort and protection. Nylon sidewall protection and an anti-puncture belt add crucial resilience against sharp rocks, ruts, and the unexpected hits of real-world gravel adventures.<br>
<br>
The grip comes from our Endurance Formulation powered by Graphene, delivering weather-resistant performance, long-lasting durability, and the confidence to go deep into untamed territory—rain or shine.<br>
<br>
The T60 is designed to thrive in the unpredictable middle ground between dry and loose conditions, and is ideal for adventurous gravel riders, racers, and endurance athletes who need confidence and capability across every mile.</p>

<ul>
	<li>Confident cornering and consistent handling with the proven V-formation and uniform tread profile.</li>
	<li>Reliable grip on mixed gravel thanks to surface siping and balanced tread spacing.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance Casing.</li>
	<li>Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-puncture belt.</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint = 6.4 kg CO2e (ref. size 40-622).</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>700x40c</td>
 <td>40-622â€‹</td>
 <td>Black</td>
 <td>470 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622â€‹</td>
 <td>Brown</td>
 <td>490 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622â€‹</td>
 <td>Black</td>
 <td>490 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622â€‹</td>
 <td>Brown</td>
 <td>510 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-700c-terreno-t60-mixed-gravel-endurance/1.jpg', 'vittoria-700c-terreno-t60-mixed-gravel-endurance/2.jpg', 'vittoria-700c-terreno-t60-mixed-gravel-endurance/3.jpg', 'vittoria-700c-terreno-t60-mixed-gravel-endurance/4.jpg', 'vittoria-700c-terreno-t60-mixed-gravel-endurance/5.jpg']::text[], 'new', 4, '2025-10-01'::date, false, true),
  ('vittoria-700c-terreno-t70-coarse-loose-gravel-endurance', 'Vittoria 700c Terreno T70 Coarse Loose Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>World Championship Winning MTB technology for your gravel bike</p>

<p>The Terreno T70 Coarse Loose Gravel Endurance tyre brings World Championship - winning mountain bike technology to your gravel rig. With a T-score of 70, the Terreno T70 is designed for riders who thrive on rugged gravel routes, where loose surfaces and unpredictable conditions are the norm.<br>
<br>
Adapted from the proven Mezcal XC tread design, the T70 delivers XC race-level speed and grip, and is now optimized for coarse, loose gravel. Built from the Endurance Formulation powered by Graphene, the T70 tread offers weather-resistant dependability, all-condition performance, and the long-lasting resilience needed for epic gravel outings. A fast-rolling center tread ensures momentum on straights, while aggressive shoulder knobs and full-depth tread siping bring control and confidence in corners, offering exceptional traction when terrain gets technical.<br>
<br>
Built on Vittoria’s Endurance Casing, the T70 offers high adaptability and toughness for long-distance adventures. Reinforced nylon sidewall protection and an anti-puncture belt provide the durability and stability needed to handle rough terrain and sharp impacts.</p>

<ul>
	<li>XCO-proven speed and grip, adapted for gravel to excel on coarse loose surfaces.</li>
	<li>Fast-rolling center tread for speed on straights, with shoulder knobs that bite in corners.</li>
	<li>Confident traction on technical terrain thanks to full tread siping that adapts to coarse loose gravel, roots, and pavement.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance Casing. Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-puncture belt.</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint = 6.1 kg CO2e (ref. size 40-622).</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>700x37c</td>
 <td>37-622â€‹</td>
 <td>Black</td>
 <td>460 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622â€‹</td>
 <td>Brown</td>
 <td>490 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622â€‹</td>
 <td>Black</td>
 <td>510 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622â€‹</td>
 <td>Brown</td>
 <td>530 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622â€‹</td>
 <td>Black</td>
 <td>550 g</td>
 </tr>
 <tr>
 <td>700x50c</td>
 <td>50-622</td>
 <td>Brown</td>
 <td>600 g</td>
 </tr>
 <tr>
 <td>700x50c</td>
 <td>50-622</td>
 <td>Black</td>
 <td>610 g</td>
 </tr>
 <tr>
 <td>700x55c</td>
 <td>55-622</td>
 <td>Brown</td>
 <td>690 g</td>
 </tr>
 <tr>
 <td>700x55c</td>
 <td>55-622</td>
 <td>Black</td>
 <td>700 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-700c-terreno-t70-coarse-loose-gravel-endurance/1.jpg', 'vittoria-700c-terreno-t70-coarse-loose-gravel-endurance/2.jpg', 'vittoria-700c-terreno-t70-coarse-loose-gravel-endurance/3.jpg', 'vittoria-700c-terreno-t70-coarse-loose-gravel-endurance/4.jpg', 'vittoria-700c-terreno-t70-coarse-loose-gravel-endurance/5.jpg']::text[], 'new', 5, '2025-10-01'::date, false, true),
  ('vittoria-700c-terreno-t90-mud-gravel-endurance', 'Vittoria 700c Terreno T90 Mud Gravel Endurance', 'vittoria', 'wheels-tyres-tubes', 'gravel-tyres', '<p>Torture tested performance for the most challenging terrain</p>

<p>With a T-score of 90, the Terreno T90 stands at the top of our terrain severity scale—built for riders who don’t back down when the course turns to chaos. The Terreno T90 Mud Gravel Endurance tyre is engineered for performance in the most extreme gravel conditions. Borrowing from Vittoria’s World Cup-proven cyclocross and MTB technology, the T90 delivers unstoppable traction through deep mud, slick terrain, and sloppy off-camber sections where other tires fail.<br>
<br>
Its spacious, high-traction tread pattern powers through thick muck with confidence, while tall, widely spaced knobs and a self-cleaning tread design dig deep and actively shed mud and loamy soil as conditions worsen. Powered by Vittoria’s Endurance Formulation with Graphene, the T90 brings dependable performance, all-weather durability, keeping you in control when grip is at a premium. A self-cleaning tread design actively sheds mud and loamy soil, ensuring consistent traction through wet weather, heavy ruts, and unpredictable terrain.</p>

<ul>
	<li>World Cup-proven traction for wet, muddy conditions with a spacious tread that powers through the slop.</li>
	<li>High-traction knobs dig in deeper as the mud thickens, keeping you in control. Self-cleaning design sheds mud and loamy soil to keep traction strong in sloppy conditions.</li>
	<li>Dependability, durability, and performance, made for the long haul, no matter the weather, thanks to the Endurance Formulation powered by Graphene.</li>
	<li>High adaptability and strength with the Endurance TLR Casing.</li>
	<li>Increased puncture resistance and stability with the reinforced nylon sidewall protection and anti-puncture belt.</li>
	<li>Hookless Rim Compatible.</li>
	<li>e-Bike Ready.</li>
</ul>

<p>To help you choose the right tire-and-rim combination, <a href="https://int.vittoria.com/blogs/magazine/vittoria-is-member-of-etrto" rel="noopener nofollow" target="_blank">please refer to the ETRTO table</a> with recommended rim widths for each tire size.<br>
This ensures your setup is fully compatible, safe, and performance-ready.</p>

<p>Product Carbon Footprint = 6.2 kg CO2e (ref. size 40-622).</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>700x40c</td>
 <td>40-622â€‹</td>
 <td>Brown</td>
 <td>480 g</td>
 </tr>
 <tr>
 <td>700x40c</td>
 <td>40-622â€‹</td>
 <td>Black</td>
 <td>500 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622â€‹</td>
 <td>Brown</td>
 <td>520 g</td>
 </tr>
 <tr>
 <td>700x45c</td>
 <td>45-622â€‹</td>
 <td>Black</td>
 <td>540 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-700c-terreno-t90-mud-gravel-endurance/1.jpg', 'vittoria-700c-terreno-t90-mud-gravel-endurance/2.jpg', 'vittoria-700c-terreno-t90-mud-gravel-endurance/3.jpg', 'vittoria-700c-terreno-t90-mud-gravel-endurance/4.jpg', 'vittoria-700c-terreno-t90-mud-gravel-endurance/5.jpg']::text[], 'new', 4, '2025-10-01'::date, false, true),

  -- ---- wheels-tyres-tubes · inner-tubes ----
  ('continental-race-lighweight-tube', 'Continental Race Lighweight Tube', 'continental', 'wheels-tyres-tubes', 'inner-tubes', '<p>The new ContiTube bicycle tube program makes it easier for you to find the ideal tube for your cycling demands. The user-friendly tube system is suitable for any size, length, design, type of valve and perfect for any tyre dimension and riding occasion. Varying tube types can affect your tyres’ handling characteristics: the Standard tube, available in all dimensions is the best choice for everyday cycling whilst Light &amp; Supersonic varieties give racers the option of lower rotating weight, therefore increasing speed. The lightweight tubes have a lower thickness and so it is imperative that inflation pressures are maintained to prevent the risk of pinch flats.</p>
<ul>
<li>Seamless and mould-cured to ensure uniform roundness and improved reliability at the valve stem.</li>
<li>Each tube passes a stringent 100% quality control inspection.</li>
<li>Presta valves are available in a variety of lengths.</li>
<li>Most sizes available in a box of 25 for an extra 5% discount.</li>
</ul>', array['continental-race-lighweight-tube/1.jpg']::text[], 'new', 2, '2023-12-19'::date, false, false),
  ('contitubes', 'Continental Race Tubes', 'continental', 'wheels-tyres-tubes', 'inner-tubes', '<table>
<tbody>
<tr>
<td>
<p>The new ContiTube bicycle tube program makes it easier for you to find the ideal tube for your cycling demands. The user-friendly tube system is suitable for any size, length, design, type of valve and perfect for any tyre dimension and riding occasion. Varying tube types can affect your tyres’ handling characteristics: the Standard tube, available in all dimensions is the best choice for everyday cycling whilst Light &amp; Supersonic varieties give racers the option of lower rotating weight, therefore increasing speed. The lightweight tubes have a lower thickness and so it is imperative that inflation pressures are maintained to prevent the risk of pinch flats.</p>

</td>
<td> </td>
<td>
<p><strong>FEATURES</strong></p>
<ul>
<li>Seamless and mould-cured to ensure uniform roundness and improved reliability at the valve stem.</li>
<li>Each tube passes a stringent 100% quality control inspection.</li>
<li>Presta valves are available in a variety of lengths.</li>
</ul>
</td>
</tr>
</tbody>
</table>', array['contitubes/1.jpg']::text[], 'new', 0, '2025-02-19'::date, false, false),
  ('continental-tpu-inner-tube', 'Continental TPU Inner Tube', 'continental', 'wheels-tyres-tubes', 'inner-tubes', '<p><strong>Continental TPU tubes </strong></p>
<ul>
<li>Lightweight</li>
<li>Low Rolling Resistance</li>
<li>Small size whan packed</li>
<li>Easy repair with included patches</li>
<li>60mm Preata valve</li>
</ul>
<p><strong>IMPORTANT INFORMATION</strong><br>1. TPU tubes must never be used in conjunction with rim brakes. Excessive heat exposure can lead to a sudden loss of air pressure.<br>2. Use suitable rim tape to protect the TPU tube. Otherwise, it can become damaged.<br>3. During mounting, the TPU tubes must not be inflated over 0.3 bar. Over-inflation during this part of the process can excessively stretch the tube and render it unusable.<br>4. Ensure the valve hole in the rim is the correct diameter. If the valve hole is too large, the valve can twist or shear off.<br>5. Pay close attention when mounting the tube. Always ensure the tube or valve isn''t trapped, twisted or damaged.<br>6. TPU tubes must never be re-used with a smaller tire! If you are mounting a smaller tire, then it is necessary to use a new tube.</p>', array['continental-tpu-inner-tube/1.jpg']::text[], 'new', 1, '2024-11-06'::date, false, false),
  ('schwalbe-aerothan-tubes', 'Schwalbe Aerothan Tubes', 'schwalbe', 'wheels-tyres-tubes', 'inner-tubes', '<h3>Aerothan Tube</h3>
<p>Aerothan is a material that completely redefines bicycle tubes: extremely light, with maximum puncture protection and designed for minimum rolling resistance.</p>
<p>During the development of Aerothan Tubes, Schwalbe have explored new avenues right from the beginning. The result was a high-end alternative to conventional bicycle tubes. The next generation Aerothan tube sets new standards for weight, puncture protection, riding characteristics, easy installation and packing dimensions. Specifically made for road bikes, MTBs and all-round purposes. </p>
<p>AEROTHAN TUBE. THE FACTS.</p>
<ul>
<li>
<p>Fully light-weight, right to the valve - about 40% less weight than a comparable Schwalbe extra light tube</p>
</li>
<li>
<p>Puncture protection newly defined - the material itself prevents sudden air loss</p>
</li>
<li>
<p>Minimal rolling resistance - maximum riding dynamics</p>
</li>
<li>
<p>Extremely heat resistant - certified for rim brakes</p>
</li>
<li>
<p>A stable ride - even with low air pressures</p>
</li>
<li>
<p>Easy installation - without slipping or pinching</p>
</li>
<li>
<p>Made in Germany</p>
</li>
<li>
<p>100% recyclable</p>
</li>
</ul>

<h3>AEROTHAN IS 100% RECYCLABLE</h3>
<p>Aerothan tubes consist of 100% thermoplastic polyurethane (TPU), including the valve, and are therefore fully recyclable. Like all Schwalbe tubes, Aerothan tubes may be returned to Schwalbe at no cost using the tube recycling programme. The material of used tubes is recycled to make sealing or insulation material.</p>', array['schwalbe-aerothan-tubes/1.png', 'schwalbe-aerothan-tubes/2.png', 'schwalbe-aerothan-tubes/3.png', 'schwalbe-aerothan-tubes/4.jpg']::text[], 'new', 5, '2024-11-05'::date, false, true),
  ('specialized700ctube', 'Specialized 700c Tube', 'specialized', 'wheels-tyres-tubes', 'inner-tubes', '<p>Our standard tubes use a molded method of construction, ensuring a consistent thickness of butyl rubber.</p>', array['specialized700ctube/1.webp']::text[], 'new', 6, '2021-08-25'::date, false, false),
  ('specialized700cturbotube', 'Specialized 700c Turbo Tube', 'specialized', 'wheels-tyres-tubes', 'inner-tubes', '<h3>Specialized 700c Turbo Tube – Lightweight, High-Performance</h3>
<h3><strong>Reduce Rotating Weight, Improve Speed</strong></h3>
<p>The <strong>Specialized Turbo Tube</strong> is designed for cyclists seeking <strong>maximum performance with minimal weight</strong>. Our lightest and most supple tube, it’s engineered to <strong>reduce rolling resistance, improve acceleration, and provide a reliable, smooth ride</strong>.</p>

<h3>Key Features</h3>
<ul>
<li>
<p><strong>Ultra-Lightweight:</strong> Thinner 0.6mm design saves approximately 40g of rotating weight per wheel</p>
</li>
<li>
<p><strong>Proven Performance:</strong> Rolling-resistance testing shows up to 13% reduction in drag per wheel</p>
</li>
<li>
<p><strong>Oversized 4.8cm Valve Base:</strong> Patented design prevents valve tearing during inflation</p>
</li>
<li>
<p><strong>Partially Threaded Valve Stem:</strong> Smooth interface with pumps for easy and secure inflation</p>
</li>
<li>
<p><strong>Talc-Coated:</strong> Packed in talc for easier installation and reduced friction</p>
</li>
<li>
<p><strong>Smooth Valve Top:</strong> Easier pump head insertion and less wear on pump internals</p>
</li>
</ul>', array['specialized700cturbotube/1.jpg']::text[], 'new', 3, '2021-08-25'::date, false, false),
  ('vittoria-ultra-light-speed-tpu-tube', 'Vittoria Ultra Light Speed TPU tube', 'vittoria', 'wheels-tyres-tubes', 'inner-tubes', '<p>The fastest and lightest tube. Made for pure speed.</p>
<ul>
<li>Compatible with disc brake wheels only.</li>
<li>Ultra fast: designed to offer the lowest rolling resistance possible.</li>
<li>Ultra light: 30g.</li>
<li>One Size 700x 25-30c</li>
<li>Valve 60mm Long RVC (removeable Valve Core)</li>
<li>Extremely compact and light weight carried as a spare.</li>
</ul>
<p>Ultralight TPU construction reduces rolling resistance by 14% and weight by 70% compared to butyl – switching to the Ultra Light Speed Inner Tube saves up to 160g of rotational mass – an unbeatable ratio of weight reduction to cost.</p>
<p><strong>For disk brake only</strong></p>
<p>Despite the incredible technical characteristics of the material and the production technologies used, high temperature is the sworn enemy of thermoplastic polyurethane. In very rare circumstances, rim brakes can overheat the rim to extremely high temperatures. For this reason, to guarantee total safety for the rider, we recommend using these inner tubes exclusively with bicycles equipped with disc brakes.</p>
<p><strong>Repair kit included</strong><br>We have created a very resistant product, but punctures are part of the game. Thermoplastic polyurethane inner tubes require a specific repair kit which is not easy to find in shops. For this reason, a repair kit is provided inside the packaging, which includes a self-adhesive patch and a prep wipe. It is easy to use and allows a fast and durable repair.</p>
<p><strong>RVC Presta valve</strong><br>Ultra Light Speed inner tube is available in 700x25/30c with 60mm valve and removable Presta core. Thanks to this valve, full compatibility with any rim up to 50mm deep is guaranteed. By removing the Presta core and using valve extensions, the inner tubes can be used with even higher rim profiles.</p>
<p><strong>Fitting</strong> - Due to its ultralight, extremely supple qualities, TPU requires a little special care when mounting (please see the installation and inflation instructions included with the tube).</p>', array['vittoria-ultra-light-speed-tpu-tube/1.png']::text[], 'new', 0, '2024-11-06'::date, false, false),

  -- ---- wheels-tyres-tubes · mtb-tyres ----
  ('air-trak-flex-lite-t5-t7-tlr-xc-tire', 'Air Trak Flex Lite T5/T7 TLR XC Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>For ultimate XC speed on hardpack, Air Trak delivers. Its fast-rolling tread cluster and high-speed center T5 compound ensure unmatched straight-line velocity, while grippier T7 compound on the sides delivers traction to maintain cornering speed. Our lightest Flex Lite casing keeps the tire at just 575 grams, offering lightning-fast acceleration and top climbing performance. When sheer speed matters, Air Trak is the perfect choice.</p>', array['air-trak-flex-lite-t5-t7-tlr-xc-tire/1.jpg', 'air-trak-flex-lite-t5-t7-tlr-xc-tire/2.jpg']::text[], 'new', 1, '2025-03-18'::date, false, false),
  ('bucher-grid-trail-t9-tlr-soil-searching-tan-trail-tire', 'Bucher Grid Trail T9 TLR Soil Searching Tan Trail Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>With our special-edition Specialized Soil Searching tires you can support trail builders on every ride. Every Soil Searching tire you buy helps us support Specialized Soil Searching and its mission. You’ll hit the perfect line for the perfect cause.</p>', array['bucher-grid-trail-t9-tlr-soil-searching-tan-trail-tire/1.jpg', 'bucher-grid-trail-t9-tlr-soil-searching-tan-trail-tire/2.png']::text[], 'new', 1, '2025-03-18'::date, false, false),
  ('butcher-grid-2bliss-ready-t7-1', 'Butcher Grid 2Bliss Ready T7', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Butcher GRID 2Bliss Ready T7 features a World-Cup proven aggressive tread design to bite and grip in any condition. Ramped and siped, the center tread blocks provide maximum traction and accurate steering. The sawtooth faced shoulder knobs offer a continuous biting edge for railing through corners. The GRID casing provides a light and supple trail construction with additional sidewall protection for exceptional durability and sidewall stability. The T7 GRIPTON® compound enhances rolling speed while still providing tons of grip.</p>', array['butcher-grid-2bliss-ready-t7-1/1.jpg', 'butcher-grid-2bliss-ready-t7-1/2.jpg', 'butcher-grid-2bliss-ready-t7-1/3.png']::text[], 'new', 0, '2024-07-31'::date, false, false),
  ('butcher-grid-2bliss-ready-t9', 'Butcher Grid 2Bliss Ready T9', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Butcher GRID 2Bliss Ready T9 features a World-Cup proven aggressive tread design to bite and grip in any condition. Ramped and siped, the center tread blocks provide maximum traction and accurate steering. The sawtooth faced shoulder knobs offer a continuous biting edge for railing through corners. The GRID casing provides a light and supple trail construction with additional sidewall protection for exceptional durability and sidewall stability. The high-dampening GRIPTON® T9 compound rebounds slowly to grip and stick to the ground for total traction and control.</p>', array['butcher-grid-2bliss-ready-t9/1.jpg', 'butcher-grid-2bliss-ready-t9/2.png']::text[], 'new', 1, '2024-07-31'::date, false, false),
  ('butcher-grid-gravity-2bliss-ready-t9', 'Butcher Grid Gravity 2Bliss Ready T9', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Butcher GRID GRAVITY 2Bliss Ready T9 is the perfect choice for trail and gravity riders. Ramped and siped center tread blocks provide strong traction and accurate steering, while the shoulder knobs offer a continuous biting edge for railing through fast corners. The GRID GRAVITY casing compliments gravity riding with an all-new 2-ply construction for cornering stability and flat protection. Building on this solid base, the high-dampening T9 GRIPTON® compound rebounds slowly to grip and stick to the ground for total traction and control.</p>', array['butcher-grid-gravity-2bliss-ready-t9/1.jpg', 'butcher-grid-gravity-2bliss-ready-t9/2.png']::text[], 'new', 0, '2024-07-31'::date, false, false),
  ('butcher-grid-gravity-t9-tlr-enduro-tire', 'Butcher Grid Gravity T9 TLR Enduro Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Butcher delivers total confidence and control across all trail conditions. With 12% more of our stickiest compound tread in contact with the terrain, it excels whether you’re carving groomed turns, plowing through chunder, or tackling post-storm slop. Trust Butcher to give you the grip and assurance to send it with conviction, no matter the challenge.</p>', array['butcher-grid-gravity-t9-tlr-enduro-tire/1.jpg', 'butcher-grid-gravity-t9-tlr-enduro-tire/2.png']::text[], 'new', 3, '2025-03-18'::date, false, false),
  ('butcher-grid-trail-2bliss-ready-t7-1', 'Butcher Grid Trail 2Bliss Ready T7', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Butcher GRID TRAIL 2Bliss Ready T7 features a World-Cup proven aggressive tread design to bite and grip in any condition. Ramped and siped, the center tread blocks provide maximum traction and accurate steering. The sawtooth faced shoulder knobs offer a continuous biting edge for railing through corners. Our GRID TRAIL casing is a step up from GRID with more reinforcement, delivering better handling at lower pressures—all while increasing pinch flat protection by 15% and puncture protection by 30%. Building on this solid base, the T7 GRIPTON® compound enhances rolling speed while still providing tons of grip.</p>', array['butcher-grid-trail-2bliss-ready-t7-1/1.jpg', 'butcher-grid-trail-2bliss-ready-t7-1/2.png']::text[], 'new', 0, '2024-07-31'::date, false, false),
  ('butcher-grid-trail-t9-tlr-trail-tire', 'Butcher Grid Trail T9 TLR Trail Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Butcher delivers total confidence and control across all trail conditions. With 12% more of our stickiest compound tread in contact with the terrain, it excels whether you’re carving groomed turns, plowing through chunder, or tackling post-storm slop. Trust Butcher to give you the grip and assurance to send it with conviction, no matter the challenge.</p>', array['butcher-grid-trail-t9-tlr-trail-tire/1.jpg', 'butcher-grid-trail-t9-tlr-trail-tire/2.png']::text[], 'new', 3, '2025-03-18'::date, false, false),
  ('continental-dubnital-27-5-mtb-tyre', 'Continental Dubnital 27.5 MTB Tyre', 'continental', 'wheels-tyres-tubes', 'mtb-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>MASTER OF SPEED</strong></p>

 <p>Dubnital is designed for dry to damp conditions and for rocky, hardpack, and medium loose soils. Master the challenges of modern cross-country and downcountry riding at speed. Dubnital supersedes its predecessor, the championed ''Race King'', and takes performance to the next level.</p>

 <table>
 <tbody>
 <tr>
 <th><strong>SPECIFICATIONS</strong></th>
 <td> </td>
 <td><strong>TERRAIN</strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td>Designed for dry to damp conditions and for rocky, <strong>hardpack</strong>, and medium loose soils. Master the challenges of modern cross-country and down-country riding at speed.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td><strong>CASING</strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Trail: </strong>A light and durable single-ply carcass construction, ideal for Trail use cases.</td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Race:</strong> The lightest and fastest construction in our MTB line-up. Perfect for modern Cross and Down-Country riding and racing.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td><strong>COMPOUND</strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td>
<strong>Grip:</strong> Designed for modern Cross-Country, Down-Country, Trail and gravel use cases. This compound offers an excellent balance of grip and rolling resistance and is the number one choice for all-round balanced characteristics.<br>
  </td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Rapid:</strong> When speed and acceleration on flat and inclines is all that matters, then the Rapid compound is your go-to option. Inspired by the characteristics of compounds used in our road, race and gravel tires.</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>AVAILABLE SIZES</strong></p>

 <ul>
 <li>27.5 x 2.2</li>
 <li>27.5 x 2.4</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<tbody>
	</tbody>
</table>', array['continental-dubnital-27-5-mtb-tyre/1.jpg', 'continental-dubnital-27-5-mtb-tyre/2.jpg', 'continental-dubnital-27-5-mtb-tyre/3.jpg', 'continental-dubnital-27-5-mtb-tyre/4.jpg', 'continental-dubnital-27-5-mtb-tyre/5.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('continental-dubnital-mtb-tyre', 'Continental Dubnital 29er MTB Tyre', 'continental', 'wheels-tyres-tubes', 'mtb-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>MASTER OF SPEED</strong></p>

 <p>Dubnital is designed for dry to damp conditions and for rocky, hardpack, and medium loose soils. Master the challenges of modern cross-country and downcountry riding at speed. Dubnital supersedes its predecessor, the championed ''Race King'', and takes performance to the next level.</p>

 <table>
 <tbody>
 <tr>
 <th><strong>SPECIFICATIONS</strong></th>
 <td> </td>
 <td><strong>TERRAIN</strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td>Designed for dry to damp conditions and for rocky, <strong>hardpack</strong>, and medium loose soils. Master the challenges of modern cross-country and down-country riding at speed.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td><strong>CASING</strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Trail: </strong>A light and durable single-ply carcass construction, ideal for Trail use cases.</td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Race:</strong> The lightest and fastest construction in our MTB line-up. Perfect for modern Cross and Down-Country riding and racing.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td><strong>COMPOUND</strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td>
<strong>Grip:</strong> Designed for modern Cross-Country, Down-Country, Trail and gravel use cases. This compound offers an excellent balance of grip and rolling resistance and is the number one choice for all-round balanced characteristics.<br>
  </td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Rapid:</strong> When speed and acceleration on flat and inclines is all that matters, then the Rapid compound is your go-to option. Inspired by the characteristics of compounds used in our road, race and gravel tires.</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>AVAILABLE SIZES</strong></p>

 <ul>
 <li>27.5 x 2.2</li>
 <li>27.5 x 2.4</li>
 <li>29 x 2.0</li>
 <li>29 x 2.2</li>
 <li>29 x 2.4</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<tbody>
	</tbody>
</table>', array['continental-dubnital-mtb-tyre/1.jpg', 'continental-dubnital-mtb-tyre/2.jpg', 'continental-dubnital-mtb-tyre/3.jpg', 'continental-dubnital-mtb-tyre/4.jpg', 'continental-dubnital-mtb-tyre/5.jpg']::text[], 'new', 8, '2026-08-10'::date, false, false),
  ('continental-trinotal-mtb-tyre', 'Continental Trinotal MTB Tyre', 'continental', 'wheels-tyres-tubes', 'mtb-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTROL THE TERRAIN</strong></p>

 <p>Trinotal is truly versatile, designed to be ridden on hard and light mixed soils whether dry or damp. Trinotal supersedes its predecessor, the popular ''Cross King''. Conquer the varied challenges of modern cross-country and downcountry riding.</p>

 <table>
 <tbody>
 <tr>
 <th><strong>SPECIFICATIONS</strong></th>
 <td> </td>
 <td><strong>TERRAIN</strong></td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td>TRINOTAL is truly versatile, designed to be ridden on hard and light mixed soils whether dry or damp.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td><strong>CASING </strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Trail: </strong>A light and durable single-ply carcass construction, ideal for Trail use cases.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Race:</strong> The lightest and fastest construction in our MTB line-up. Perfect for modern Cross and Down-Country riding and racing</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td><strong>COMPOUND</strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Grip:</strong> Designed for modern Cross-Country, Down-Country, Trail and gravel use cases. This compound offers an excellent balance of grip and rolling resistance and is the number one choice for all-round balanced characteristics.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Rapid:</strong> When speed and acceleration on flat and inclines is all that matters, then the Rapid compound is your go-to option. Inspired by the characteristics of compounds used in our road, race and gravel tires.</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>AVAILABLE SIZES</strong></p>

 <ul>
 <li>26 x 2.2</li>
 <li>27.5 x 2.2</li>
 <li>27.5 x 2.4</li>
 <li>29 x 2.2</li>
 <li>29 x 2.4</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<tbody>
	</tbody>
</table>

<table>
	<tbody>
	</tbody>
</table>', array['continental-trinotal-mtb-tyre/1.jpg', 'continental-trinotal-mtb-tyre/2.jpg', 'continental-trinotal-mtb-tyre/3.jpg', 'continental-trinotal-mtb-tyre/4.jpg', 'continental-trinotal-mtb-tyre/5.jpg']::text[], 'new', 7, '2026-08-10'::date, false, false),
  ('eliminator-grid-2bliss-ready-t9', 'Eliminator Grid 2Bliss Ready T9', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Eliminator GRID 2Bliss Ready T9 tire features a tread that combines an aggressive block design with a well-balanced tread pattern. Its transition knobs help bridge the traditional channel between center and shoulder knobs, making the Eliminator extremely predictable on soft to hardpack trails. It’s perfect for trail and enduro where versatility and confidence are key. The GRID casing provides a light and supple trail construction with additional sidewall protection for exceptional durability and sidewall stability. The high-dampening GRIPTON® T9 compound rebounds slowly to grip and stick to the ground for total traction and control.</p>', array['eliminator-grid-2bliss-ready-t9/1.jpg', 'eliminator-grid-2bliss-ready-t9/2.png']::text[], 'new', 0, '2025-09-09'::date, false, false),
  ('eliminator-grid-gravity-radial-t7-t9-tlr', 'Eliminator Grid Gravity Radial T7/T9 TLR', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The new Specialized Grid Gravity Radial tires reinvent how trail riders experience grip and compliance. By increasing the angle of orientation to the tested Sweet Spot Ply, these tires achieve ground‑hugging conformity that amplifies traction and comfort—without compromising the lateral stiffness riders rely on for hard cornering. Unlike pressure‑tuning, which rapidly kills compliance as PSI rises, or choosing a sub-optimal casing angle for the intended experience, our Radial casing construction creates the Sweet Spot inherently: lower radial stiffness, preserved lateral stability, and a ride quality that makes technical trails feel smoother, faster, and more controlled.</p>', array['eliminator-grid-gravity-radial-t7-t9-tlr/1.webp', 'eliminator-grid-gravity-radial-t7-t9-tlr/2.png']::text[], 'new', 1, '2026-06-04'::date, false, false),
  ('eliminator-grid-gravity-t7-t9-tlr-enduro-tire', 'Eliminator Grid Gravity T7/T9 TLR Enduro Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Eliminator is your go-to rear tire for fast rolling and confident cornering traction on aggressive, technical terrain. Its Grid Gravity Casing, dual compound rubber and optimized tread deliver the perfect balance of low rolling resistance and exceptional control. With an alternating tread pattern for smooth center-to-edge transitions and stacked knobs for unbeatable stability, it’s built for speed, precision, and confidence.</p>', array['eliminator-grid-gravity-t7-t9-tlr-enduro-tire/1.jpg', 'eliminator-grid-gravity-t7-t9-tlr-enduro-tire/2.png']::text[], 'new', 2, '2025-03-18'::date, false, false),
  ('eliminator-grid-trail-2bliss-ready-t7-soil-searching', 'Eliminator Grid Trail 2Bliss Ready T7 Soil Searching', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Eliminator GRID TRAIL 2Bliss Ready T7 tire features a tread that combines an aggressive block design with a well-balanced tread pattern. Its transition knobs help bridge the traditional channel between center and shoulder knobs, making the Eliminator extremely predictable on soft to hardpack trails. It’s perfect for enduro and E-bikes where versatility and confidence are key. Our GRID TRAIL casing is a step up from GRID with more reinforcement, delivering better handling at lower pressures—all while increasing pinch flat protection by 15% and puncture protection by 30%. Building on this solid base, the T7 GRIPTON® compound enhances rolling speed while still providing tons of grip. With our limited-edition Specialized Soil Searching tires you can support trail builders on every ride. Every Soil Searching tire you buy helps us support Specialized Soil Searching and its mission. You’ll hit the perfect line for the perfect cause.</p>', array['eliminator-grid-trail-2bliss-ready-t7-soil-searching/1.jpg', 'eliminator-grid-trail-2bliss-ready-t7-soil-searching/2.jpg', 'eliminator-grid-trail-2bliss-ready-t7-soil-searching/3.jpg']::text[], 'new', 1, '2024-07-31'::date, false, false),
  ('eliminator-grid-trail-t7-tlr-soil-searching-tan-trail-ti', 'Eliminator Grid Trail T7 TLR Soil Searching Tan Trail Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Eliminator is your go-to rear tire for fast rolling and confident cornering traction on aggressive, technical terrain. Its fast-rolling compound and optimized tread deliver the perfect balance of low rolling resistance and exceptional control. With an alternating tread pattern for smooth center-to-edge transitions and stacked knobs for unbeatable stability, it’s built for speed, precision, and confidence.</p>', array['eliminator-grid-trail-t7-tlr-soil-searching-tan-trail-ti/1.jpg', 'eliminator-grid-trail-t7-tlr-soil-searching-tan-trail-ti/2.png']::text[], 'new', 1, '2025-03-18'::date, false, false),
  ('eliminator-grid-trail-t7-tlr-trail-tire', 'Eliminator Grid Trail T7 TLR Trail Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Eliminator is your go-to rear tire for fast rolling and confident cornering traction on aggressive, technical terrain. Its fast-rolling compound and optimized tread deliver the perfect balance of low rolling resistance and exceptional control. With an alternating tread pattern for smooth center-to-edge transitions and stacked knobs for unbeatable stability, it’s built for speed, precision, and confidence.</p>', array['eliminator-grid-trail-t7-tlr-trail-tire/1.jpg', 'eliminator-grid-trail-t7-tlr-trail-tire/2.png']::text[], 'new', 2, '2025-03-18'::date, false, false),
  ('fast-trak-control-2bliss-ready-t5', 'Fast Trak Control 2Bliss Ready T5', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Fast Trak Control 2Bliss Ready T5 has become synonymous with fast and lightweight tires that are able to handle the most technical courses and the most grueling conditions. This model redefines what was thought possible with a cross-country tread design. Our Block-In-Block design uses a taller adaptable inner block to pierce the ground and claw for traction. The larger outer structure supports the inner block for additional speed, traction, support and stable handling. Adding to this, the Fast Trak profile and knob spacing has been optimized for a wide variety of internal rim widths. The Control casing is our light and durable do it all XC construction. To top off this build we use our fastest rolling, race ready T5 compound with excellent wear and tear protection.</p>', array['fast-trak-control-2bliss-ready-t5/1.jpg', 'fast-trak-control-2bliss-ready-t5/2.jpg', 'fast-trak-control-2bliss-ready-t5/3.jpg', 'fast-trak-control-2bliss-ready-t5/4.png']::text[], 'new', 1, '2024-07-31'::date, false, false),
  ('fast-trak-flex-lite-t5-t7-tlr-xc-tire', 'Fast Trak Flex Lite T5/T7 TLR XC Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Experience unmatched speed, control, and efficiency in mixed terrain with Fast Trak - the ultimate go-to tire for high-performance XC riding and racing. Its optimized tread design and reduced knob height cut weight by 55g and improve rolling resistance by 5%, delivering faster acceleration, superior handling, and peak performance in any condition.</p>', array['fast-trak-flex-lite-t5-t7-tlr-xc-tire/1.jpg', 'fast-trak-flex-lite-t5-t7-tlr-xc-tire/2.png']::text[], 'new', 2, '2025-03-18'::date, false, false),
  ('fast-trak-grid-2bliss-ready', 'Fast Trak GRID 2Bliss Ready', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>We took the tread design of the Fast Trak GRID 2Bliss Ready tire a step further by manipulating each knob with Finite Element Analysis. We improved an already proven tread design by having more consistent shoulder blocks for better cornering traction, as well as having the block spacing being configured for better self-cleaning. And now, it also features our own GRIPTON® compound that maximizes mechanical grip, damps vibration, and offers unparalleled traction in either wet or dry conditions.</p>', array['fast-trak-grid-2bliss-ready/1.png']::text[], 'new', 0, '2024-07-31'::date, false, false),
  ('fast-trak-grid-2bliss-ready-t7', 'Fast Trak GRID 2Bliss Ready T7', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Fast Trak GRID 2Bliss Ready T7 has become synonymous with fast and lightweight tires that are able to handle the most technical courses and the most grueling conditions. This model redefines what was thought possible with a cross-country tread design. Our Block-In-Block design uses a taller adaptable inner block to pierce the ground and claw for traction. The larger outer structure supports the inner block for additional speed, traction, support and stable handling. Adding to this, the Fast Trak profile and knob spacing has been optimized for a wide variety of internal rim widths. The GRID casing provides a light and supple trail construction with additional sidewall protection for durability and sidewall stability. To top off this build we use our T7 compound to maximize grip and damping.</p>', array['fast-trak-grid-2bliss-ready-t7/1.jpg', 'fast-trak-grid-2bliss-ready-t7/2.png']::text[], 'new', 1, '2024-07-31'::date, false, false),
  ('fast-trak-grid-lite-t5-t7-tlr-xc-tire', 'Fast Trak Grid Lite T5/T7 TLR XC Tire', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Experience unmatched speed, control, and efficiency in mixed terrain with Fast Trak - the ultimate go-to tire for high-performance XC riding and racing. Its optimized tread design and reduced knob height cut weight by 110g and improve rolling resistance by 5%, delivering faster acceleration, superior handling, and peak performance in any condition.</p>', array['fast-trak-grid-lite-t5-t7-tlr-xc-tire/1.jpg', 'fast-trak-grid-lite-t5-t7-tlr-xc-tire/2.png']::text[], 'new', 2, '2025-03-18'::date, false, false),
  ('fast-trak-sport', 'Fast Trak Sport', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Fast Trak Sport has become synonymous with fast and lightweight tires that are able to handle the most technical courses and the most grueling conditions. This model redefines what was thought possible with a cross-country tread design. Our Block-In-Block design uses a taller adaptable inner block to pierce the ground and claw for traction. The larger outer structure supports the inner block for additional speed, traction, support and stable handling. Adding to this, the Fast Trak profile and knob spacing has been optimized for a wide variety of internal rim widths.</p>', array['fast-trak-sport/1.jpg', 'fast-trak-sport/2.png']::text[], 'new', 0, '2024-07-31'::date, false, false),
  ('purgatory-control-2bliss-ready-t5', 'Purgatory CONTROL 2Bliss Ready T5', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Purgatory CONTROL 2Bliss Ready tire is the standard bearer for light trail tire performance. The new, completely redesigned tread features square lugs that bite in on soft soil, while still providing support on hard-packed ground. Additionally, flexible center sipes fold out under braking force for increased ground contact and adhesion. To top it all off, our proprietary GRIPTON® compound helps make this the perfect choice for epic trail rides in any condition.</p>', array['purgatory-control-2bliss-ready-t5/1.jpg', 'purgatory-control-2bliss-ready-t5/2.png']::text[], 'new', 0, '2024-07-31'::date, false, false),
  ('purgatory-grid-2bliss-ready-t7', 'Purgatory GRID 2Bliss Ready T7', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The Purgatory GRID 2Bliss Ready T7 tire is the standard bearer for light trail tire performance. The new, completely redesigned tread features square lugs that bite in on soft soil, while still providing support on hard-packed ground. Additionally, flexible center sipes fold out under braking force for increased ground contact and adhesion. The GRID casing provides a light and supple trail construction with additional sidewall protection for exceptional durability and sidewall stability. The T7 GRIPTON® compound enhances rolling speed while still providing tons of grip.</p>', array['purgatory-grid-2bliss-ready-t7/1.jpg', 'purgatory-grid-2bliss-ready-t7/2.png']::text[], 'new', 0, '2024-07-31'::date, false, false),
  ('purgatory-grid-trail-2bliss-ready-t7', 'Purgatory Grid Trail 2Bliss Ready T7', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Meet the totally new Purgatory. This do-it-all tread features large center square lugs that bite in soft soil, while still providing support on hard-packed ground and is equally at home on the front or back of the bike. Block-in-block knobs roll fast, adapt to terrain, and are supremely confident when pushed hard. There’s plenty of meat on the Purgatory to offer reassuring grip across a wide range of terrain. Dial in for your best ride with casing and compound combos on Purgatory tires. When choosing a casing and compound, think about where and how you ride. Pick the GRID Casing for a light and supple ride, that still offers sidewall protection panels. If you need additional stability and durability, scale up to GRID Trail which adds bead-to-bead protection on top of the GRID base. When it comes to compounds, firmer rubber—like the T7—prioritizes rolling speed, and longevity, but still has excellent grip. Our T9 compound is a gummy, gravity compound with loads of stickiness, for the rider won’t compromise on grip. Whatever trails you ride, the tactical tread pattern of Purgatory plus casing and compound options make it a great tire to level up your ride.</p>', array['purgatory-grid-trail-2bliss-ready-t7/1.jpg', 'purgatory-grid-trail-2bliss-ready-t7/2.png']::text[], 'new', 0, '2024-07-31'::date, false, false),
  ('purgatory-grid-trail-2bliss-ready-t9-1', 'Purgatory Grid Trail 2Bliss Ready T9', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Meet the totally new Purgatory. This do-it-all tread features large center square lugs that bite in soft soil, while still providing support on hard-packed ground and is equally at home on the front or back of the bike. Block-in-block knobs roll fast, adapt to terrain, and are supremely confident when pushed hard. There’s plenty of meat on the Purgatory to offer reassuring grip across a wide range of terrain. Dial in for your best ride with casing and compound combos on Purgatory tires. When choosing a casing and compound, think about where and how you ride. Pick the GRID Casing for a light and supple ride, that still offers sidewall protection panels. If you need additional stability and durability, scale up to GRID Trail which adds bead-to-bead protection on top of the GRID base. When it comes to compounds, firmer rubber—like the T7—prioritizes rolling speed, and longevity, but still has excellent grip. Our T9 compound is a gummy, gravity compound with loads of stickiness, for the rider won’t compromise on grip. Whatever trails you ride, the tactical tread pattern of Purgatory plus casing and compound options make it a great tire to level up your ride.</p>', array['purgatory-grid-trail-2bliss-ready-t9-1/1.jpg', 'purgatory-grid-trail-2bliss-ready-t9-1/2.png']::text[], 'new', 1, '2024-07-31'::date, false, false),
  ('purgatory-grid-trail-2bliss-ready-t9', 'Purgatory Grid Trail 2Bliss Ready T9', 'specialized', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Meet the totally new Purgatory. This do-it-all tread features large center square lugs that bite in soft soil, while still providing support on hard-packed ground and is equally at home on the front or back of the bike. Block-in-block knobs roll fast, adapt to terrain, and are supremely confident when pushed hard. There’s plenty of meat on the Purgatory to offer reassuring grip across a wide range of terrain.</p>
<p>Dial in for your best ride with casing and compound combos on Purgatory tires. When choosing a casing and compound, think about where and how you ride. Pick the GRID Casing for a light and supple ride, that still offers sidewall protection panels. If you need additional stability and durability, scale up to GRID Trail which adds bead-to-bead protection on top of the GRID base. When it comes to compounds, firmer rubber—like the T7—prioritizes rolling speed, and longevity, but still has excellent grip. Our T9 compound is a gummy, gravity compound with loads of stickiness, for the rider won’t compromise on grip. Whatever trails you ride, the tactical tread pattern of Purgatory plus casing and compound options make it a great tire to level up your ride.</p>

<ul>
<li>High volume center blocks for climbing and braking traction, suitable for front or rear.</li>
<li>Block-in-block knobs adapt to find grip.</li>
<li>Staggered shoulder blocks for predictability and corner control.</li>
<li>Compound: T9 for high grip.</li>
<li>Tubeless Ready.</li>
<li>GRID Trail Casing: 60 TPI, tough MTB trail construction with additional bead-to-bead protection for exceptional puncture resistance, sidewall stiffness, and stability.</li>
<li>GRID Trail 29x2.4" T9, psi 25-50, approximate weight 1050g.</li>
</ul>', array['purgatory-grid-trail-2bliss-ready-t9/1.jpg']::text[], 'new', 1, '2024-03-12'::date, false, false),
  ('schwalbe-tyre-big-betty', 'Schwalbe Tyre Big Betty', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p><strong>BIG BETTY IS BACK!</strong> Equipped with everything modern tire technology has to offer. A Downhill and Enduro Allrounder for dry to damp conditions. Big Betty works perfectly on the rear wheel when combined with our much-loved Magic Mary.</p> <ul> <li>Long supported braking edges for maximum braking traction</li> <li>Extremely stable shoulder blocks for outstanding cornering grip</li> <li>Open and aggressive tread for excellent grip and self-cleaning</li> </ul> <ul> <li>
<strong>Evolution Line</strong> <ul> <li>The very best possible. Highest grade materials. Latest technology.</li> </ul> </li> <li>
<strong>Performance Line</strong> <ul> <li>Excellent quality for intensive use.</li> </ul> </li> <li><strong>ADDIX Soft Compound</strong></li> <ul> <li>
<strong>ADDIX SOFT</strong> is a compound that bridges many disciplines. It’s just as at home in the Enduro and downhill world as it is in the demanding discipline of all-mountain and trail riding.</li> </ul> <li>
<strong>ADDIX Performance Compound</strong> <ul> <li>Very durable rubber compound with a wide range of requirements. Similar to Speedgrip, it is a universal compound for tires in the Performance Line.</li> </ul> </li> <li>
<strong>Super Trail</strong> <ul> <li>As versatile as a multi-tool: a stable construction, with a range of applications from intense all-mountain and trail rides to enduro use. Ideal for riders riding a medium-travel bike.</li> </ul> </li> <li>
<strong>Super Gravity</strong> <ul> <li>Go where others dare not to venture . Where the rider and the trail demand everything from the material. Where the bikes have a lot of travel. Right there is the zone for tires with Super Gravity construction.</li> </ul> </li> <li>
<strong>Bike Park</strong> <ul> <li>
<strong>USE:</strong> As the name suggests, ideal for the perfect day in the bike park or as a training tire for downhill.<br><strong>CONSTRUCTION:</strong> Incredibly robust due to extremely stable special carcass fabric. Extra rubberized sidewall. Very durable. Wire cores.</li> </ul> </li> <li>
<strong>Tubeless Technology</strong> <ul> <li>For all ambitious sports cyclists Tubeless is the right choice. Only Tubeless achieves the best values in terms of: <ul> <li>SPEED</li> <li>GRIP</li> <li>PUNCTURE PROTECTION</li> <li>COMFORT</li> </ul> </li> </ul> </li> <li>
<strong>E-50</strong> <ul> <li>E-Bike tires with European ECE-R75 approval. Our recommendation for fast E-Bikes - S-Pedelecs with type approval, insurance, and motor assist over 25 km/h – for which a special tire approval is necessary.</li> </ul> </li> <li>
<strong>E-25</strong> <ul> <li>Tires with the recommendation "E-25" are the perfect choice for all pedelecs with pedal assistance up to 25 km/h. The most important criterion for this recommendation: safety.</li> </ul> </li> </ul>', array['schwalbe-tyre-big-betty/1.png', 'schwalbe-tyre-big-betty/2.png', 'schwalbe-tyre-big-betty/3.png', 'schwalbe-tyre-big-betty/4.png']::text[], 'new', 0, '2025-06-06'::date, false, false),
  ('schwalbe-tyre-dirty-dan-1', 'Schwalbe Tyre Dirty Dan', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p><strong>THE SPECIALIST FOR MIRE.</strong> For deep mud and soft terrain. Ideal for extreme conditions.</p>
<ul>
<li>Aggressive open tread design with large blocks excellent brake traction on deep and soft terrain.</li>
<li>Excellent braking traction and extremely good self-cleaning properties due to large gaps between studs.</li>
<li>Special ‘Curveclaws’ for outstanding adverse-camber grip.</li>
</ul>', array['schwalbe-tyre-dirty-dan-1/1.png', 'schwalbe-tyre-dirty-dan-1/2.png', 'schwalbe-tyre-dirty-dan-1/3.png']::text[], 'new', 2, '2025-06-06'::date, false, true),
  ('schwalbe-tyre-eddy-current-1', 'Schwalbe Tyre Eddy Current', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p><strong>THE REVOLUTION FOR E-MTB’S.</strong> Our first real E-MTB specialist for All Mountain and Enduro. It allows uncompromising riding even uphill, takes fierce acceleration as well as allowing technical riding on trails. Its solid appearance comes from the stable blocks, more rubber and big widths.</p>
<ul>
<li>Tread design inspired by Motocross with massive, stable studs in the center and the shoulder area for reliable riding behavior.</li>
<li>Concise V-Grooves in the center and side blocks for direct, precise steering characteristics.</li>
<li>Specially adjusted design for front and rear wheel use.</li>
</ul>
<p><strong>FRONT:</strong></p>
<ul>
<li>Reliable cornering grip paired with high braking traction.</li>
<li>Excellent transmission of steering corrections throughlong grip edges even when less weight is on the front wheel in ascents. The result: Understeer is more controllable.</li>
</ul>

<p><strong>REAR:</strong></p>
<ul>
<li>Maximum propulsion and braking traction throughmassive blocks that transmit sufficient power to the ground, even on the steepest climbs.</li>
<li>Hard wearing thanks to large-volume center studs.</li>
</ul>', array['schwalbe-tyre-eddy-current-1/1.png', 'schwalbe-tyre-eddy-current-1/2.png', 'schwalbe-tyre-eddy-current-1/3.png', 'schwalbe-tyre-eddy-current-1/4.png', 'schwalbe-tyre-eddy-current-1/5.png']::text[], 'new', 0, '2025-06-06'::date, false, false),
  ('schwalbe-tyre-eddy-current-front', 'Schwalbe Tyre Eddy Current Front', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '', array['schwalbe-tyre-eddy-current-front/1.webp']::text[], 'new', 0, '2025-06-06'::date, false, false),
  ('schwalbe-tyre-hans-dampf-1', 'Schwalbe Tyre Hans Dampf', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p><strong>HANS DAMPF HAS EVERYTHING TO INCREASE ENDURO FUN. </strong>For stunning handling and the highest puncture protection on demanding trails - ascent as well as descent.</p>
<ul>
<li>Precisely tuned stud positioning for controlled and forgiving riding at the limit.</li>
<li>The combination of large and small shoulder studs grants the rider optimal grip in numerous conditions.</li>
<li>Semi-open blocks ensure optimal self-cleaning properties with low rolling resistance.</li>
</ul>', array['schwalbe-tyre-hans-dampf-1/1.png', 'schwalbe-tyre-hans-dampf-1/2.png', 'schwalbe-tyre-hans-dampf-1/3.png', 'schwalbe-tyre-hans-dampf-1/4.png', 'schwalbe-tyre-hans-dampf-1/5.png']::text[], 'new', 0, '2025-06-06'::date, false, false),
  ('schwalbe-tyre-johnny-watts-1', 'Schwalbe Tyre Johnny Watts', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p><strong>THE PERFECT CHOICE FOR SUV BIKES.</strong> Like no other, Johnny Watts unites smooth rolling on hard ground with longevity and puncture protection. Off-road instilling confidence, while on pavement rolling whisper-quiet.</p>
<ul>
<li>Versatile tread for a wide range of use from asphalt to off-road.</li>
<li>Blocks with large contact areas for excellent rolling, little vibration and high durability.</li>
<li>Steady and forgiving cornering behavior on hard ground.</li>
<li>Performance Line
<ul>
<li>Excellent quality for intensive use.</li>
</ul>
</li>
<li>MTB-DD-Raceguard
<ul>
<li>The combined puncture protection. All around SnakeSkin + RaceGuard under the tread provides maximum security.</li>
</ul>
</li>
<li>E-50
<ul>
<li>E-Bike tires with European ECE-R75 approval. Our recommendation for fast E-Bikes - S-Pedelecs with type approval, insurance, and motor assist over 25 km/h – for which a special tire approval is necessary.</li>
</ul>
</li>
<li>ADDIX Performance Compound
<ul>
<li>Very durable rubber compound with a wide range of requirements. Similar to Speedgrip, it is a universal compound for tires in the Performance Line.</li>
</ul>
</li>
</ul>', array['schwalbe-tyre-johnny-watts-1/1.png', 'schwalbe-tyre-johnny-watts-1/2.png', 'schwalbe-tyre-johnny-watts-1/3.png']::text[], 'new', 2, '2025-06-06'::date, false, true),
  ('schwalbe-tyre-johnny-watts-365', 'Schwalbe Tyre Johnny Watts 365', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The all-season SUV tire</p>
<ul>
<li>Siped tread ensures secure interlocking on all surfaces</li>
<li>Very good puncture protection thanks to Double Defense RaceGuard (folding tire) or GreenGuard (clincher tire)</li>
<li>Addix 4-Season Compound: grippy and durable compound for all conditions</li>
<li>even at very low temperatures</li>
<li>Especially developed for e-bikes.</li>
</ul>

<h3>RATING</h3>', array['schwalbe-tyre-johnny-watts-365/1.png', 'schwalbe-tyre-johnny-watts-365/2.png', 'schwalbe-tyre-johnny-watts-365/3.png']::text[], 'new', 1, '2025-06-06'::date, false, true),
  ('schwalbe-tyre-magic-mary-1', 'Schwalbe Tyre Magic Mary', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The legendary all-rounder for enduro and downhill bikes</p><p>Magic Mary is the all-round tire for all mountain bikers who prioritise performance, fun, and safety on the descent. Whether you need reliable grip on the downhill track, in the bike park, or on your home trail, it delivers – trustworthy and predictable. In addition to enduro and downhill bikes, it also performs well on e-MTBs, trail, and all-mountain bikes. Changing conditions and surfaces? With Magic Mary, you’ll get through them controlled and fast!</p><p>One tread for all trails</p><p>You’ll find the distinctive Mary tire tread on the world’s most famous trails. As an intermediate tire, Magic Mary has an open tread with knobs that bite into soft ground but also provide reliable grip on hardpack. The large, angled, and solidly supported side knobs offer plenty of cornering grip. The centre knobs support you with braking traction and are angled to roll more easily. On closer inspection, you’ll notice small slits on the knobs. These V-grooves, developed specifically for Magic Mary, ensure the knobs interlock even better with the trail surface.</p><p>Countless successes in the Mountain Bike World Cup</p><p>The Schwalbe Magic Mary is the go-to tire for top athletes in the downhill and enduro World Cup. Amaury Pierron, Myriam Nicole, Stevie Smith, Tahnee Seagrave, Camille Balanche, Danny Hart, and many others have ridden it all the way to the podium (and beyond). But even if you’re not competing at the world’s highest level, Magic Mary will determinedly get you to your goal.</p>', array['schwalbe-tyre-magic-mary-1/1.webp']::text[], 'new', 13, '2026-05-13'::date, false, true),
  ('schwalbe-tyre-magic-mary-radial-1', 'Schwalbe Tyre Magic Mary Radial', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>THE ULTIMATE GRAVITY TIRE. Indisputably the favorite among Schwalbe Downhill and Enduro athletes. Perfect all-round characteristics for almost all tracks and conditions. The sophisticated intermediate profile is combined with the best compounds and construction, pushing the limits to surprising levels.</p>
<ul>
<li>Strong shoulder studs and aggressive, open tread design provide maximum braking traction and cornering grip even in extremely muddy terrain.</li>
<li>Equipped with V-Groves specially developed for Magic Mary, every stud can bite into the ground for even more grip.</li>
<li>Angled studs in the middle of the tread optimise the rolling characteristics.</li>
</ul>
<p><br></p>
<ul></ul>
<h3>THE STRUCTURE OF RADIAL TIRES</h3><p>With our radial tires, we are turning the MTB world on its head. We have always asked ourselves the following question during development: How can we make the best possible use of the limited contact area of a tire?</p><p>The basis for this is the completely rethought construction of the carcass. The carcass threads, which run diagonally across the tire at a 45° angle in conventional bicycle tires, are arranged at a much more obtuse angle in our radial tires. This technology opens up a completely new dimension in the function of bicycle tires.</p><h3>HIGHLIGHTS </h3><p>MORE GRIP FOR EVEN MORE SAFETY</p><p>MORE COMFORT THANKS TO MORE CUSHIONING</p><p>LARGER CONTACT SURFACE ON THE GROUND</p>', array['schwalbe-tyre-magic-mary-radial-1/1.webp']::text[], 'new', 3, '2026-05-13'::date, false, true),
  ('schwalbe-tyre-nobby-nic-1', 'Schwalbe Tyre Nobby Nic', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>THE MTB TIRE WITH THE GREATEST RANGE OF APPLICATIONS. The all-rounder that works in every situation, no matter the weather, no matter the terrain. Widest possible range of use: for tour and all-mountain, for difficult cross-country tracks as well as technically challenging enduro trails. Tread design: excellent traction and braking performance thanks to special central stud arrangement, large shoulder studs for excellent control on tricky trails.</p>', array['schwalbe-tyre-nobby-nic-1/1.png', 'schwalbe-tyre-nobby-nic-1/2.png', 'schwalbe-tyre-nobby-nic-1/3.png', 'schwalbe-tyre-nobby-nic-1/4.png', 'schwalbe-tyre-nobby-nic-1/5.png']::text[], 'new', 0, '2025-06-06'::date, false, false),
  ('schwalbe-tyre-racing-ralph-1', 'Schwalbe Tyre Racing Ralph', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p><strong>THE PERFECT RACER.</strong> Faced with the extreme challenges of today‘s XC tracks, we completely revised Racing Ralph. The result is a very fast and versatile XC profile, specially developed for the rear wheel.</p>
<ul>
<li>Numerous grip edges in the tread center for super traction and excellent acceleration.</li>
<li>Distinct shoulder studs for excellent lateral grip.</li>
<li>Good rolling properties and extremely quiet.</li>
</ul>', array['schwalbe-tyre-racing-ralph-1/1.png', 'schwalbe-tyre-racing-ralph-1/2.png', 'schwalbe-tyre-racing-ralph-1/3.png', 'schwalbe-tyre-racing-ralph-1/4.png']::text[], 'new', 2, '2025-04-24'::date, false, true),
  ('schwalbe-tyre-racing-ray-1', 'Schwalbe Tyre Racing Ray', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The front wheel specialist. The completely new, extra aggressive XC profile paired with the versatile Addix Speedgrip compound makes Racing Ray an XC weapon and an ingenious addition to Racing Ralph. Profile design: The shifted center blocks and stable shoulder blocks are striking. In between a sophisticated open area. This enables precise steering, reliable cornering far into the limit, sporty handling and direct feedback, together with high braking performance under all conditions. Tubeless Easy Version with ADDIX Speedgrip (blue) for speed, grip and durability.</p>', array['schwalbe-tyre-racing-ray-1/1.png', 'schwalbe-tyre-racing-ray-1/2.png', 'schwalbe-tyre-racing-ray-1/3.png', 'schwalbe-tyre-racing-ray-1/4.png', 'schwalbe-tyre-racing-ray-1/5.png']::text[], 'new', 2, '2025-04-24'::date, false, true),
  ('schwalbe-tyre-rapid-rob-1', 'Schwalbe Tyre Rapid Rob', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p><strong>TOP CHOICE FOR ROOKIES.</strong> A first-class XC tire with excellent tread design and K-Guard puncture protection. Best suited for the rear wheel in combination with (e.g.) Tough Tom.<br>Highlight: A version with white stripes in the tread in all wheel sizes from 26“ to 29“.</p>
<ul>
<li>The special XC tread ensures low rolling resistance by remaining low weight.</li>
</ul>', array['schwalbe-tyre-rapid-rob-1/1.png', 'schwalbe-tyre-rapid-rob-1/2.png', 'schwalbe-tyre-rapid-rob-1/3.png', 'schwalbe-tyre-rapid-rob-1/4.png', 'schwalbe-tyre-rapid-rob-1/5.png']::text[], 'new', 4, '2025-04-24'::date, false, true),
  ('schwalbe-tyre-rick-xc-pro', 'Schwalbe Tyre Rick XC Pro', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The perfect choice for XC races where every (tenth of a) second counts</p>
<ul>
<li>Developed in collaboration with Olympic silver medalist Mathias Flückiger</li>
<li>Combines grip and low rolling resistance like no other Schwalbe XC tire</li>
<li>Reinforced transition area between center and shoulder blocks for optimal SnakeBite protection</li>
<li>Closes the gap between Racing Ralph and Thunder Burt, as it is faster than Racing Ralph and provides more grip than Thunder Burt</li>
</ul>

<h3>FEATURES</h3>', array['schwalbe-tyre-rick-xc-pro/1.png', 'schwalbe-tyre-rick-xc-pro/2.png', 'schwalbe-tyre-rick-xc-pro/3.png']::text[], 'new', 2, '2025-04-24'::date, false, true),
  ('schwalbe-tyre-rock-razor-1', 'Schwalbe Tyre Rock Razor', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The fastest gravity tire. For the first time, we brought a "real" semi-slick to the Gravity and Enduro scenes. It''s a very interesting option especially on the rear wheel and for very fast, dry trails. These is no better tire for low rolling resistance than Rock Razor.</p>', array['schwalbe-tyre-rock-razor-1/1.png', 'schwalbe-tyre-rock-razor-1/2.png', 'schwalbe-tyre-rock-razor-1/3.png']::text[], 'new', 0, '2025-06-06'::date, false, false),
  ('schwalbe-tyre-shredda-front-radial', 'Schwalbe Tyre Shredda Front Radial', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The tyre itself for the steepest uphill passages</p>
<ul>
<li>Radial carcass allows for a larger contact patch and significantly filters road irregularities: more grip, more comfort, and more safety</li>
<li>Virtually sticks to the ground as the tyre deforms more precisely at specific points</li>
<li>Profile optimised for radial carcass: Open tread design with high tread depth for excellent traction especially on soft surfaces</li>
</ul>

<h3>THE STRUCTURE OF RADIAL TIRES</h3>
<p>With our radial tires, we are turning the MTB world on its head. We have always asked ourselves the following question during development: How can we make the best possible use of the limited contact area of a tire?</p>
<p>The basis for this is the completely rethought construction of the carcass. The carcass threads, which run diagonally across the tire at a 45° angle in conventional bicycle tires, are arranged at a much more obtuse angle in our radial tires. This technology opens up a completely new dimension in the function of bicycle tires.</p>

<h3>HIGHLIGHTS </h3>
<p>MORE GRIP FOR EVEN MORE SAFETY</p>
<p>MORE COMFORT THANKS TO MORE CUSHIONING</p>
<p>LARGER CONTACT SURFACE ON THE GROUND</p>', array['schwalbe-tyre-shredda-front-radial/1.png', 'schwalbe-tyre-shredda-front-radial/2.png', 'schwalbe-tyre-shredda-front-radial/3.png']::text[], 'new', 0, '2025-06-19'::date, false, false),
  ('schwalbe-tyre-shredda-rear-radial', 'Schwalbe Tyre Shredda Rear Radial', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', 'The tire itself for the steepest uphill passages

Radial carcass allows for a larger contact area: more grip, more comfort, and more safety
Almost sucks itself to the ground because the tire deforms more precisely
Slightly shallower tread depth than Shredda Front, but more stability
Profile optimized for radial carcass: Open tread design with scooping effect and high tread depth for excellent interlocking
Especially on soft surfaces, it generates a lot of braking and propulsion traction

THE STRUCTURE OF RADIAL TIRES

With our radial tires, we are turning the MTB world on its head. We have always asked ourselves the following question during development: How can we make the best possible use of the limited contact area of a tire?

The basis for this is the completely rethought construction of the carcass. The carcass threads, which run diagonally across the tire at a 45° angle in conventional bicycle tires, are arranged at a much more obtuse angle in our radial tires. This technology opens up a completely new dimension in the function of bicycle tires.

HIGHLIGHTS 

MORE GRIP FOR EVEN MORE SAFETY

MORE COMFORT THANKS TO MORE CUSHIONING

LARGER CONTACT SURFACE ON THE GROUND', array['schwalbe-tyre-shredda-rear-radial/1.png', 'schwalbe-tyre-shredda-rear-radial/2.png', 'schwalbe-tyre-shredda-rear-radial/3.png']::text[], 'new', 0, '2025-06-19'::date, false, false),
  ('schwalbe-tyre-thunder-burt-1', 'Schwalbe Tyre Thunder Burt', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p><strong>OUTSTANDING FOR FAST AND DRY XC TRACKS.</strong> Its low weight and extremely low rolling resistance makes it Schwalbe’s fastest MTB tire!</p>
<ul>
<li>Multiple small, flat studs for fast and quiet rolling.</li>
<li>Numerous grip edges for hard ground.</li>
<li>Edged shoulder studs for good grip and control in curves.</li>
</ul>', array['schwalbe-tyre-thunder-burt-1/1.png']::text[], 'new', 1, '2025-05-10'::date, false, true),
  ('schwalbe-tyre-wicked-will-1', 'Schwalbe Tyre Wicked Will', 'schwalbe', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Welcome to the team! Our new Wicked Will has many faces. Whether you set out on an alpine crossing or the fast trail lap, Wicked Will is the right choice and combines like no other light running and grip.</p>
<ul>
<li>Fast rolling midsection with ramp-like lugs</li>
<li>Smooth transition area for maximum control when cornering</li>
<li>Stable and grippy shoulder knobs for high support in off-camber sections and turns</li>
<li>
<strong>SUPER RACE</strong>
<ul>
<li>In no other discipline is the focus on rolling resistance and weight as critical as it is in cross-country and marathon competition. With the new Super Race construction, we are also setting new standards in suppleness - no other carcass glides so silky smooth over the ground, and thus providing traction, like Super Race does.</li>
</ul>
</li>
<li>
<strong>SUPER GROUND</strong>
<ul>
<li>Combines light weight and stability. Feels comfortable in any terrain. Balanced ratio of puncture protection and smooth rolling. For flowing trails, long rides and any terrain.</li>
</ul>
</li>
<li>
<strong>E-50</strong>
<ul>
<li>E-Bike tires with European ECE-R75 approval. Our recommendation for fast E-Bikes - S-Pedelecs with type approval, insurance, and motor assist over 25 km/h – for which a special tire approval is necessary.</li>
</ul>
</li>
</ul>', array['schwalbe-tyre-wicked-will-1/1.png', 'schwalbe-tyre-wicked-will-1/2.png', 'schwalbe-tyre-wicked-will-1/3.png']::text[], 'new', 1, '2026-05-13'::date, false, true),
  ('vittoria-27-5-martello-enduro', 'Vittoria 27.5" Martello Enduro', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The most versatile enduro tire for hardpack to mixed trails.</p>

<p>The Martello Enduro is engineered for everything from gravity competition to exploring to competing again. Any technical trail, any challenging weather conditions, any chance it has to glue itself to obstacles – the Martello is proven in enduro and DH at the highest level. Dry terrain, will party.<br>
The tread’s moto-inspired blocks are reliable, durable, and thrive on technical terrain in wet or dry conditions. Progressive siping throughout varies the tread’s edges – thick and thin – to balance responsive trail-feel with tenacious grab and no instability. Glued, in control, and with predictable rebound. Between the knobs, voracious spacing gobbles and clears loose, loamy soil and clingy muck</p>

<p>The Martello Enduro blends four Graphene-infused compounds to minimize rolling resistance on the center strip and maximize confident grip on the shoulders. The 100-TPI double-ply nylon Enduro TLR casing features a two-ply construction that’s durable, supple, and puncture resistant, reinforced with added protection against rim strikes, pinch flats, and low sidewall cuts.</p>

<ul>
	<li>Versatile all-conditions tyre.</li>
	<li>Moto-block square knobs offer stability and durability.</li>
	<li>4 compounds in the tread (4C) for increased wear life and fast rolling.</li>
	<li>Progressive sipe-width pattern provides tactile grip at the knob surface without compromising on speed or grip.</li>
	<li>Tubeless 2 ply reinforced Enduro Case with APF insert (anti Pinch Flat).</li>
	<li>Hookless rim compatible.</li>
</ul>

<p>Weights</p>

<ul>
	<li>27.5x2.35". Enduro 2-Ply Weight 1180g.</li>
	<li>27.5x2.40"  Enduro 2-Ply Weight 1190g</li>
	<li>27.5x2.60". Enduro 2-Ply Weight 1230g.</li>
	<li>27.5x2.80". Enduro 2-Ply Weight 1300g</li>
</ul>', array['vittoria-27-5-martello-enduro/1.png', 'vittoria-27-5-martello-enduro/2.png', 'vittoria-27-5-martello-enduro/3.jpg', 'vittoria-27-5-martello-enduro/4.jpg', 'vittoria-27-5-martello-enduro/5.png']::text[], 'new', 4, '2025-10-01'::date, false, true),
  ('vittoria-27-5-martello-enduro-race', 'Vittoria 27.5" Martello Enduro Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The race-day choice for hardpack to mixed course conditions.</p>

<p>The enduro racing classic, evolved with a new race-tuned construction. It’s grabby, it mutes chatter, and it rebounds with the kind of supple predictability that makes the difference on technical stretches and off-camber sections. On dry, mixed terrain, the Martello provides surgical control.<br>
The tread’s moto-inspired blocks are reliable, durable, and thrive on technical terrain in wet or dry conditions. Progressive siping throughout varies the tread’s edges – thick and thin – to balance responsive trail-feel with tenacious grab and no instability. Glued, in control, and with predictable rebound. Between the knobs, voracious spacing gobbles and clears loose, loamy soil and clingy muck.</p>

<p>The 1C Race tread is a soft, tacky, supple Graphene + Silica-infused compound, the ultimate enduro racing technology. It’s electrically bonded to an ultra-durable Enduro Race nylon casing, which is further reinforced with a center-strip breaker, bead-to-bead puncture resistance, and protection against pinch flats from rim strikes.</p>

<ul>
	<li>Moto-block square knobs offers stability and durability.</li>
	<li>Progressive sipe-width pattern provides tactile grip at the knob surface, without sacrificing speed or grip.</li>
	<li>27.5" tire built for high-speed enduro racing in mixed conditions.</li>
	<li>60tpi Enduro race casing with anti puncture insert below the tread.</li>
	<li>Aramid TLR bead allows for quick and easy tire swaps.</li>
	<li>Enduro Race-specific 1c compound is soft and grippy.</li>
	<li>Anti-Pinch Flat Insert offers sidewall support and rim strike protection.</li>
	<li>Hookless rim compatible.</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>27.5x2.4</td>
 <td>60-584</td>
 <td>Black</td>
 <td>1205 g</td>
 </tr>
 <tr>
 <td>27.5x2.6</td>
 <td>65-584</td>
 <td>Black</td>
 <td>1245 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-27-5-martello-enduro-race/1.png', 'vittoria-27-5-martello-enduro-race/2.png', 'vittoria-27-5-martello-enduro-race/3.jpg', 'vittoria-27-5-martello-enduro-race/4.jpg', 'vittoria-27-5-martello-enduro-race/5.png']::text[], 'new', 2, '2025-10-01'::date, false, true),
  ('vittoria-27-5-mazza-enduro', 'Vittoria 27.5" Mazza Enduro', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The ultimate mixed conditions enduro tire for a range of terrains.</p>

<p>Engineered for reliability, control, grip, and speed on mixed courses, the Mazza Enduro is the do-it-all tyre for shuttle laps, timed gravity runs, and any time your day on the bike involves dicing technical terrain. Engineered with EWS-proven technology and designed to the specs of top athletes, the Mazza is equal to anything the trail can throw at it.<br>
<br>
While cornering or gripping off-camber rock faces, progressive siping on the shoulders varies the tread’s edges to balance responsive trail-feel with tenacious grab and no instability – glued, in control, and predictable. On climbs, the Mazza digs in with staircase leading edges that thrive on punchy rollers and technical rock gardens. Between the knobs, voracious spacing gobbles and clears loose, loamy soil and clingy muck.</p>

<p>The Mazza Enduro’s 4C tread blends four Graphene-infused compounds to minimize rolling resistance, maximize confident grip, and boost durability. The 100-TPI double-ply nylon Enduro TLR casing features a two-ply construction that’s abrasion-resistant, supple, and puncture resistant, reinforced with added protection against rim strikes, pinch flats, and low sidewall cuts.</p>

<ul>
	<li>Tubeless 2ply reinforced Enduro case with APF (Anti Pinch Flat) protection.</li>
	<li>Hookless rim compatible.</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>27.5x2.4</td>
 <td>60-584</td>
 <td>Black</td>
 <td>1200 g</td>
 </tr>
 <tr>
 <td>27.5x2.6</td>
 <td>65-584</td>
 <td>Black</td>
 <td>1265 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-27-5-mazza-enduro/1.png', 'vittoria-27-5-mazza-enduro/2.png', 'vittoria-27-5-mazza-enduro/3.jpg', 'vittoria-27-5-mazza-enduro/4.jpg', 'vittoria-27-5-mazza-enduro/5.jpg']::text[], 'new', 2, '2025-10-01'::date, false, true),
  ('vittoria-27-5-mazza-enduro-race', 'Vittoria 27.5" Mazza Enduro Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Enduro World Cup performance in mixed terrain.</p>

<p>Engineered for the aggression, technical expertise, and pedaling power of EWS pros, no tire responds as intuitively or as predictably on mixed-terrain gravity runs as the Mazza Enduro Race. The Race variant’s revolutionary compound maximizes grip, mutes chatter, and rebounds with supple predictability on any technical course. Just get the tire on an obstacle. It’ll stick.<br>
<br>
While cornering or gripping off-camber rock faces, progressive siping on the shoulders varies the tread’s edges to balance responsive trail-feel with tenacious grab and no instability – glued, in control, and predictable. On climbs, the Mazza digs in with staircase leading edges that thrive on punchy rollers and technical rocky gardens. Between the knobs, voracious spacing gobbles and clears loose, loamy soil and clingy muck.</p>

<p>The 1C Race tread is a soft, tacky, supple Graphene + Silica-infused compound, the ultimate enduro racing technology. It’s electrically bonded to an ultra-durable Enduro Race nylon casing, which is further reinforced with a center-strip breaker, bead-to-bead puncture resistance, and added protection against pinch flats from rim strikes.</p>

<ul>
	<li>27.5" tire built for high-speed enduro racing in mixed conditions</li>
	<li>New 60tpi Enduro race casing with anti puncture insert below the tread.</li>
	<li>Stepped center tread delivers traction for tricky climbs</li>
	<li>Aramid bead allows for quick and easy tyre swaps</li>
	<li>Enduro Race specific 1c compound is soft and grippy</li>
	<li>Anti-Pinch Flat Insert offers sidewall support and rim strike protection</li>
	<li>Hookless rim compatible.</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>27.5x2.4</td>
 <td>60-584</td>
 <td>Black</td>
 <td>1260 g</td>
 </tr>
 <tr>
 <td>27.5x2.6</td>
 <td>65-584</td>
 <td>Black</td>
 <td>1340 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-27-5-mazza-enduro-race/1.png', 'vittoria-27-5-mazza-enduro-race/2.png', 'vittoria-27-5-mazza-enduro-race/3.jpg', 'vittoria-27-5-mazza-enduro-race/4.jpg', 'vittoria-27-5-mazza-enduro-race/5.png']::text[], 'new', 2, '2025-10-01'::date, false, true),
  ('vittoria-27-5-mostro-enduro', 'Vittoria 27.5" Mostro Enduro', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The gravity category weapon, specifically developed for loose terrain conditions.</p>

<p>Developed with and tested by professional riders on the Downhill and Enduro tracks of the UCI Mountain Bike World Series, Mostro Enduro is the latest addition in the gravity mountain bike line up, and the go-to tyre choice for loose terrain conditions.</p>

<p>With Mostro Enduro, you can experience enhanced anchor-like braking-stability and control through the pronounced trailing edges. Thanks to the progressively siped and surface-stepped tread profile, you can hold the line across rocks, roots, and loose surfaces. Mostro Enduro gives you supple predictability on any technical course, no matter what.</p>

<p>Mostro Enduro uses the 4Compound technology featuring 4 optimized rubber compounds powered by Graphene strategically placed where they are needed for an unparalleled blend of speed, grip, and durability.<br>
The 2-ply 100 TPI nylon casing is resistant to abrasion and punctures. The Sidewall Stability Insert provides increased protection from rim strikes and gives additional sidewall support thanks to its high-tech rubber material.</p>

<p>Hookless rim compatible.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>27.5x2.4</td>
 <td>60-584</td>
 <td>Black</td>
 <td>1390g</td>
 </tr>
 <tr>
 <td>27.5x2.6</td>
 <td>65-584</td>
 <td>Black</td>
 <td>1450g</td>
 </tr>
	</tbody>
</table>', array['vittoria-27-5-mostro-enduro/1.jpg', 'vittoria-27-5-mostro-enduro/2.jpg', 'vittoria-27-5-mostro-enduro/3.jpg', 'vittoria-27-5-mostro-enduro/4.jpg', 'vittoria-27-5-mostro-enduro/5.jpg']::text[], 'new', 1, '2025-10-01'::date, false, true),
  ('vittoria-27-5-mostro-enduro-race', 'Vittoria 27.5" Mostro Enduro Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Race compound and construction on our most aggressive loose terrain tread.</p>

<p>Developed with and tested by professional riders on the Downhill and Enduro tracks of the UCI Mountain Bike World Series, Mostro Enduro Race is the latest addition in the gravity mountain bike line up, and the go-to tyre choice for loose terrain conditions.</p>

<p>With Mostro Enduro Race, you can experience enhanced anchor-like braking-stability and control through the pronounced trailing edges. The Race Formulation technology is optimized to maximize speed and grip thanks to its soft single compound and its flexible, but also ultra puncture resistant casing.<br>
Mostro Enduro Race gives you supple predictability on any technical course, no matter what. Experience the ultimate enduro racing package from Vittoria.</p>

<p>Mostro Enduro Race uses the new Race Formulation technology which features a single, soft rubber compound powered by Graphene + Silica to offer speed and grip without compromise.<br>
The multi-layer casing, made of 60 TPI plies overlapping an additional bead-to-bead reinforcement layer, offers race-tuned durability and abrasion-resistance. To increase puncture protection, Mostro Enduro Race features an anti-puncture belt placed in the upper part of the casing.<br>
The Sidewall Stability Insert protects the tire from rim strikes and gives additional sidewall support thanks to its high-strength rubber material.</p>

<p>Hookless rim compatible.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>27.5x2.4</td>
 <td>60-584</td>
 <td>Black</td>
 <td>1420 g</td>
 </tr>
 <tr>
 <td>27.5x2.6</td>
 <td>65-584</td>
 <td>Black</td>
 <td>1480g</td>
 </tr>
	</tbody>
</table>', array['vittoria-27-5-mostro-enduro-race/1.jpg', 'vittoria-27-5-mostro-enduro-race/2.jpg', 'vittoria-27-5-mostro-enduro-race/3.jpg', 'vittoria-27-5-mostro-enduro-race/4.jpg', 'vittoria-27-5-mostro-enduro-race/5.jpg']::text[], 'new', 2, '2025-10-01'::date, false, true),
  ('vittoria-29-barzo-xc-race', 'Vittoria 29" Barzo XC Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>World Championship proven tread for coarse loose terrain conditions</p>

<p>When the trail turns loose, rocky, and unpredictable, the Barzo XC Race delivers the traction, speed, and confidence cross-country racers demand. Purpose-built for high performance on coarse terrain, it’s this is the tire that turns chaos into control — and power into podiums.<br>
<br>
Alternating center knobs create a fast-rolling profile that excels on rough and loose surfaces, maintaining momentum without sacrificing climbing grip. At the edges, moto-inspired shoulder knobs dig deep during aggressive cornering, giving you the bite you need when the trail fights back.<br>
<br>
Full tread siping and wide knob spacing ensure dependable traction across mixed conditions — while shedding debris for consistent performance lap after lap. Whether you’re sprinting off the line, hammering climbs, or railing dusty descents, the Barzo XC Race keeps you planted, fast, and focused.<br>
<br>
The Race Formulation Graphene + Silica compound delivers championship-level grip while preserving low rolling resistance and long-lasting durability. Paired with a 60 TPI nylon Race Casing, this tire absorbs impacts, resists punctures, and deforms consistently for optimal race feel and control.<br>
<br>
The new XC Race construction delivers the numbers: 20% more speed, 8% more grip, 44% better puncture resistance, and 9% improved riding comfort.</p>

<ul>
	<li>Maximum speed on coarse loose terrain thanks to the fast-rolling alternating center knobs.</li>
	<li>Confident cornering grip from moto-style shoulder knobs that bite hard.</li>
	<li>Reliable traction and self-cleaning performance with full siping and spacious knob placement.</li>
	<li>Race Formulation Graphene + Silica enhances grip, while preserving rolling speed and durability. It’s built for cross-country racers who demand peak performance in every section: climbs, descents, and sprints.</li>
	<li>The 60 TPI nylon Race Casing offers a supple yet robust structure that enhances puncture resistance and impact absorption without compromising speed. Consistent deformation across tread and sidewall ensures peak performance in cross-country racing.</li>
</ul>

<p>Product Carbon Footprint: 8.5 kgCO2e.</p>

<p>Hookless rim compatible.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>Blk/Brown</td>
 <td>680g</td>
 </tr>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>full Black</td>
 <td>700g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Blk/Brown</td>
 <td>720g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>full Black</td>
 <td>740 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-barzo-xc-race/1.jpg', 'vittoria-29-barzo-xc-race/2.jpg', 'vittoria-29-barzo-xc-race/3.jpg', 'vittoria-29-barzo-xc-race/4.jpg', 'vittoria-29-barzo-xc-race/5.jpg']::text[], 'new', 4, '2025-10-01'::date, false, true),
  ('vittoria-29-barzo-xcr-tan-wall', 'Vittoria 29" Barzo XCR Tan wall', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>World Championship proven tread combined with XC Race TLR construction for coarse loose terrain conditions</p>

<p>No tire handles every XC race course like the Barzo XC Race, and it’s got multiple UCI World Championships to prove it. Its speed isn’t limited to any specific weather or surface. Rain and mud, sun and hardpack, roots and rocks – it doesn’t matter, the Barzo shreds it all.<br>
The alternating center knobs roll fast, and – despite the tire’s speed-focused pedigree – the moto-style shoulder knobs bite hard while cornering. Siping throughout increases grip under lateral loads, helping to maintain speed across terrain of all types, and spacious knob placement cleans muck and loamy soil.</p>

<p>The Barzo XC Race blends four Graphene-infused compounds to minimize rolling resistance on the center strip and maximize confident grip on the shoulders. The 120-TPI nylon XC Race TLR casing is durable, supple, and puncture resistant – reliability and longevity don’t come at the cost of your connection to the terrain.</p>

<ul>
	<li>XC tire with aggressive tread design for the most technical terrain.</li>
	<li>Progressive sipe angle pattern increases cornering grip.</li>
	<li>Square knobs offer stability and durability.</li>
	<li>Functionalized GRAPHENE 2.0 compound delivers ultimate wet grip.</li>
	<li>4 compounds in the tread (4C) for unparalleled traction on technical courses.</li>
	<li>120tpi Nylon TLR casing.</li>
	<li>Tan wall XCR casing: the lightest XC tubeless-ready casing of Vittoria.
</li>
	<li>Hookless Rim Compatible.</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>Tan</td>
 <td>680 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-barzo-xcr-tan-wall/1.png', 'vittoria-29-barzo-xcr-tan-wall/2.png', 'vittoria-29-barzo-xcr-tan-wall/3.jpg', 'vittoria-29-barzo-xcr-tan-wall/4.jpg', 'vittoria-29-barzo-xcr-tan-wall/5.jpg']::text[], 'new', 1, '2025-10-01'::date, false, true),
  ('vittoria-29-martello-enduro', 'Vittoria 29" Martello Enduro', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The most versatile enduro tyre for hardpack to mixed trails.</p>

<p>The Martello Enduro is engineered for everything from gravity competition to exploring to competing again. Any technical trail, any challenging weather conditions, any chance it has to glue itself to obstacles – the Martello is proven in enduro and DH at the highest level. Dry terrain, will party.<br>
The tread’s moto-inspired blocks are reliable, durable, and thrive on technical terrain in wet or dry conditions. Progressive siping throughout varies the tread’s edges – thick and thin – to balance responsive trail-feel with tenacious grab and no instability. Glued, in control, and with predictable rebound. Between the knobs, voracious spacing gobbles and clears loose, loamy soil and clingy muck</p>

<p>The Martello Enduro blends four Graphene-infused compounds to minimize rolling resistance on the center strip and maximize confident grip on the shoulders. The 100-TPI double-ply nylon Enduro TLR casing features a two-ply construction that’s durable, supple, and puncture resistant, reinforced with added protection against rim strikes, pinch flats, and low sidewall cuts.</p>

<ul>
	<li>Versatile all-conditions tyre.</li>
	<li>Moto-block square knobs offer stability and durability.</li>
	<li>4 compounds in the tread (4C) for increased wear life and fast rolling.</li>
	<li>Functionalized GRAPHENE 2.0 compound delivers ultimate wet grip.</li>
	<li>Progressive sipe-width pattern provides tactile grip at the knob surface without compromising on speed or grip.</li>
	<li>Tubeless, 2 ply reinforced, 100tpi Nylon Case with APF insert (anti Pinch Flat).</li>
	<li>Hookless Rim Compatible.</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Black</td>
 <td>1265 g</td>
 </tr>
 <tr>
 <td>29x2.6</td>
 <td>65-622</td>
 <td>Black</td>
 <td>1340 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-martello-enduro/1.png', 'vittoria-29-martello-enduro/2.png', 'vittoria-29-martello-enduro/3.jpg', 'vittoria-29-martello-enduro/4.jpg', 'vittoria-29-martello-enduro/5.jpg']::text[], 'new', 1, '2025-10-01'::date, false, true),
  ('vittoria-29-martello-enduro-race', 'Vittoria 29" Martello Enduro Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The race-day choice for hardpack to mixed course conditions.</p>

<p>The enduro racing classic, evolved with a new race-tuned construction. It’s grabby, it mutes chatter, and it rebounds with the kind of supple predictability that makes the difference on technical stretches and off-camber sections. On dry, mixed terrain, the Martello provides surgical control.<br>
The tread’s moto-inspired blocks are reliable, durable, and thrive on technical terrain in wet or dry conditions. Progressive siping throughout varies the tread’s edges – thick and thin – to balance responsive trail-feel with tenacious grab and no instability. Glued, in control, and with predictable rebound. Between the knobs, voracious spacing gobbles and clears loose, loamy soil and clingy muck.</p>

<p>The 1C Race tread is a soft, tacky, supple Graphene + Silica-infused compound, the ultimate enduro racing technology. It’s electrically bonded to an ultra-durable Enduro Race nylon casing, which is further reinforced with a center-strip breaker, bead-to-bead puncture resistance, and protection against pinch flats from rim strikes.</p>

<ul>
	<li>Moto-block square knobs offers stability and durability.</li>
	<li>Progressive sipe-width pattern provides tactile grip at the knob surface, without sacrificing speed or grip.</li>
	<li>New 60tpi Enduro race casing with anti puncture insert below the tread.</li>
	<li>Aramid TLR bead allows for quick and easy tire swaps.</li>
	<li>Enduro Race-specific 1c compound is soft and grippy.</li>
	<li>Anti-Pinch Flat Insert offers sidewall support and rim strike protection.</li>
	<li>Antipuncture belt below tread.</li>
	<li>Hookless Rim Compatible.</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Black</td>
 <td>1290 g</td>
 </tr>
 <tr>
 <td>29x2.6</td>
 <td>65-622</td>
 <td>Black</td>
 <td>1320 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-martello-enduro-race/1.png', 'vittoria-29-martello-enduro-race/2.png', 'vittoria-29-martello-enduro-race/3.jpg', 'vittoria-29-martello-enduro-race/4.jpg', 'vittoria-29-martello-enduro-race/5.png']::text[], 'new', 1, '2025-10-01'::date, false, true),
  ('vittoria-29-mazza-enduro', 'Vittoria 29" Mazza Enduro', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The ultimate mixed conditions enduro tire for a range of terrains.</p>

<p>Engineered for reliability, control, grip, and speed on mixed courses, the Mazza Enduro is the do-it-all tire for shuttle laps, timed gravity runs, and any time your day on the bike involves dicing technical terrain. Engineered with EWS-proven technology and designed to the specs of top athletes, the Mazza is equal to anything the trail can throw at it. </p>

<p>While cornering or gripping off-camber rock faces, progressive siping on the shoulders varies the tread’s edges to balance responsive trail-feel with tenacious grab and no instability – glued, in control, and predictable. On climbs, the Mazza digs in with ramped leading edges that thrive on rollers and technical rock gardens. Between the knobs, voracious spacing gobbles and clears loose, loamy soil and clingy muck.</p>

<p>The Mazza Enduro’s 4C tread blends four Graphene-infused compounds to minimize rolling resistance, maximize confident grip, and boost durability. The 100-TPI double-ply nylon Enduro TLR casing features a two-ply construction that’s abrasion-resistant, supple, and puncture resistant, reinforced with added protection against rim strikes, pinch flats, and low sidewall cuts.</p>

<ul>
	<li>Tubeless, 2 ply reinforced, 100tpi Nylon Case with APF insert (anti Pinch Flat).</li>
	<li>Hookless Rim Compatible.</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Black</td>
 <td>1375 g</td>
 </tr>
 <tr>
 <td>29x2.6</td>
 <td>65-622</td>
 <td>Black</td>
 <td>1400 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-mazza-enduro/1.png', 'vittoria-29-mazza-enduro/2.png', 'vittoria-29-mazza-enduro/3.jpg', 'vittoria-29-mazza-enduro/4.jpg', 'vittoria-29-mazza-enduro/5.png']::text[], 'new', 2, '2025-10-01'::date, false, true),
  ('vittoria-29-mazza-enduro-race', 'Vittoria 29" Mazza Enduro Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Enduro World Cup performance in mixed terrain.</p>

<p>Engineered for the aggression, technical expertise, and pedaling power of EWS pros, no tire responds as intuitively or as predictably on mixed-terrain gravity runs as the Mazza Enduro Race. The Race variant’s revolutionary compound maximizes grip, mutes chatter, and rebounds with supple predictability on any technical course. Just get the tire on an obstacle. It’ll stick.</p>

<p>While cornering or gripping off-camber rock faces, progressive siping on the shoulders varies the tread’s edges to balance responsive trail-feel with tenacious grab and no instability – glued, in control, and predictable. On climbs, the Mazza digs in with staircase leading edges that thrive on punchy rollers and technical rock gardens. Between the knobs, voracious spacing gobbles and clears loose, loamy soil and clingy muck.</p>

<p>The 1C Race tread is a soft, tacky, supple Graphene + Silica-infused compound, the ultimate enduro racing technology. It’s electrically bonded to an ultra-durable Enduro Race nylon casing, which is further reinforced with a center-strip breaker, bead-to-bead puncture resistance, and added protection against pinch flats from rim strikes.</p>

<ul>
	<li>29er tire built for high-speed enduro racing in mixed conditions</li>
	<li>60tpi Enduro race casing with anti puncture insert below the tread.</li>
	<li>Stepped center tread delivers traction for tricky climbs</li>
	<li>Aramid bead allows for quick and easy tire swaps</li>
	<li>Enduro Race-specific 1c compound is soft and grippy</li>
	<li>Anti-Pinch Flat Insert offers sidewall support and rim strike protection</li>
	<li>Hookless Rim Compatible.</li>
</ul>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Black</td>
 <td>1345 g</td>
 </tr>
 <tr>
 <td>29x2.6</td>
 <td>65-622</td>
 <td>Black</td>
 <td>1410 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-mazza-enduro-race/1.png', 'vittoria-29-mazza-enduro-race/2.png', 'vittoria-29-mazza-enduro-race/3.jpg', 'vittoria-29-mazza-enduro-race/4.jpg', 'vittoria-29-mazza-enduro-race/5.jpg']::text[], 'new', 1, '2025-10-01'::date, false, true),
  ('vittoria-29-mezcal-xc-race', 'Vittoria 29" Mezcal XC Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>World Championship proven tread for mixed terrain conditions</p>

<p>Born from the podium and bred for speed, the Mezcal XC Race is the choice of World and European XC Champions — and for good reason. Engineered for elite-level cross-country racing, the Mezcal delivers class-leading performance across technical terrain, fast descents, and grueling climbs.<br>
<br>
A continuous center tread ensures lightning-fast rolling on straightaways, while siped extensions dig in when you need it most — maximizing traction on steep climbs and under hard braking. When cornering gets sketchy, the Mezcal comes alive: directional siping on the shoulder knobs runs parallel to the trail, with variable widths and open trailing edges for aggressive grip on hard, slippery surfaces.<br>
<br>
Underneath it all, the advanced Graphene + Silica Race Formulation strikes a perfect harmony between grip, speed, and long-wearing durability — tailored for riders who attack every section of the course.</p>

<p>Combined with our new 60 TPI nylon Race Casing, Mezcal delivers an exceptional performance upgrade over its predecessor; 20% more speed, 8% more grip, 44% better puncture resistance, and 9% improved riding comfort, all with predictable control at race pace.</p>

<ul>
	<li>Engineered for pure XC speed and proven with multiple UCI World Championship and XCO European Championship wins.</li>
	<li>Fast rolling thanks to the continuous center, with siped extensions that enhance climbing grip and braking bite.</li>
	<li>Aggressive cornering on hard, slippery surfaces thanks to the directional siping on the shoulder knobs running parallel to the trail with variable widths and open trailing edges.</li>
	<li>Race Formulation Graphene + Silica enhances grip, while preserving rolling speed and durability. It’s built for cross-country racers who demand peak performance in every section: climbs, descents, and sprints.</li>
	<li>The 60 TPI nylon Race Casing offers a supple yet robust structure that enhances puncture resistance and impact absorption without compromising speed. Consistent deformation across tread and sidewall ensures peak performance in cross-country racing.</li>
</ul>

<p>Product Carbon Footprint: 8.4 kgCO2e.</p>

<p>Hookless Rim compatible</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>Blk/Brown</td>
 <td>680g</td>
 </tr>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>full Black</td>
 <td>700g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Blk/Brown</td>
 <td>720g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>full Black</td>
 <td>740 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-mezcal-xc-race/1.jpg', 'vittoria-29-mezcal-xc-race/2.jpg', 'vittoria-29-mezcal-xc-race/3.jpg', 'vittoria-29-mezcal-xc-race/4.jpg', 'vittoria-29-mezcal-xc-race/5.jpg']::text[], 'new', 4, '2025-10-01'::date, false, true),
  ('vittoria-29-mostro-enduro', 'Vittoria 29" Mostro Enduro', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>The gravity category weapon, specifically developed for loose terrain conditions.</p>

<p>Developed with and tested by professional riders on the Downhill and Enduro tracks of the UCI Mountain Bike World Series, Mostro Enduro is the latest addition in the gravity mountain bike line up, and the go-to tyre choice for loose terrain conditions.</p>

<p>With Mostro Enduro, you can experience enhanced anchor-like braking-stability and control through the pronounced trailing edges. Thanks to the progressively siped and surface-stepped tread profile, you can hold the line across rocks, roots, and loose surfaces. Mostro Enduro gives you supple predictability on any technical course, no matter what.</p>

<p>Mostro Enduro uses the 4Compound technology featuring 4 optimized rubber compounds powered by Graphene strategically placed where they are needed for an unparalleled blend of speed, grip, and durability.<br>
The 2-ply 100 TPI nylon casing is resistant to abrasion and punctures. The Sidewall Stability Insert provides increased protection from rim strikes and gives additional sidewall support thanks to its high-tech rubber material.</p>

<p>Hookless rim compatible.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Black</td>
 <td>1460g</td>
 </tr>
 <tr>
 <td>29x2.6</td>
 <td>65-622</td>
 <td>Black</td>
 <td>1530g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-mostro-enduro/1.jpg', 'vittoria-29-mostro-enduro/2.jpg', 'vittoria-29-mostro-enduro/3.jpg', 'vittoria-29-mostro-enduro/4.jpg', 'vittoria-29-mostro-enduro/5.jpg']::text[], 'new', 2, '2025-10-01'::date, false, true),
  ('vittoria-29-mostro-enduro-race', 'Vittoria 29" Mostro Enduro Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Race compound and construction on our most aggressive loose terrain tread.</p>

<p>Developed with and tested by professional riders on the Downhill and Enduro tracks of the UCI Mountain Bike World Series, Mostro Enduro Race is the latest addition in the gravity mountain bike line up, and the go-to tyre choice for loose terrain conditions.</p>

<p>With Mostro Enduro Race, you can experience enhanced anchor-like braking-stability and control through the pronounced trailing edges. The Race Formulation technology is optimized to maximize speed and grip thanks to its soft single compound and its flexible, but also ultra puncture resistant casing.<br>
Mostro Enduro Race gives you supple predictability on any technical course, no matter what. Experience the ultimate enduro racing package from Vittoria.</p>

<p>Mostro Enduro Race uses the new Race Formulation technology which features a single, soft rubber compound powered by Graphene + Silica to offer speed and grip without compromise.<br>
The multi-layer casing, made of 60 TPI plies overlapping an additional bead-to-bead reinforcement layer, offers race-tuned durability and abrasion-resistance. To increase puncture protection, Mostro Enduro Race features an anti-puncture belt placed in the upper part of the casing.<br>
The Sidewall Stability Insert protects the tire from rim strikes and gives additional sidewall support thanks to its high-strength rubber material.</p>

<p>Hookless rim compatible.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Black</td>
 <td>1490 g</td>
 </tr>
 <tr>
 <td>29x2.6</td>
 <td>65-622</td>
 <td>Black</td>
 <td>1560g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-mostro-enduro-race/1.jpg', 'vittoria-29-mostro-enduro-race/2.jpg', 'vittoria-29-mostro-enduro-race/3.jpg', 'vittoria-29-mostro-enduro-race/4.jpg', 'vittoria-29-mostro-enduro-race/5.jpg']::text[], 'new', 2, '2025-10-01'::date, false, true),
  ('vittoria-29-peyote-xc-race', 'Vittoria 29" Peyote XC Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Unparalleled performance in fine loose conditions</p>

<p>The Peyote delivers World Cup level speed and confidence across a range of terrain thanks to its revolutionary new tread pattern. Positioned between Terreno and Mezcal, the tread features a low-profile, alternating center ribbon designed to increase speed and grip.<br>
<br>
The familiar Vittoria v-formation used in the Peyote allows the tire to dig through loose terrain to find traction while evacuating debris laterally. The alternating mid-tread tapers up to capable cornering tread, providing responsive handling and a predictable feel. These traits work to boost cornering performance by placing effective edges directly opposing the path of cornering forces, regardless of lean or cornering angles.<br>
<br>
The 60 TPI nylon Race Casing combined with the new XC Race construction, delivers an exceptional performance upgrade: 20% more speed, 8% more grip, 44% better puncture resistance, and 9% improved riding comfort.</p>

<ul>
	<li>World Cup-level speed and confidence across varied terrain with a revolutionary tread design.</li>
	<li>Fast-rolling alternating center ribbon enhances grip, while the Vittoria V-formation clears debris for consistent traction.</li>
	<li>Predictable, responsive handling with the alternating mid-tread that tapers up to capable cornering lugs.</li>
	<li>Race Formulation Graphene + Silica enhances grip, while preserving rolling speed and durability. It’s built for cross-country racers who demand peak performance in every section: climbs, descents, and sprints.</li>
	<li>The 60 TPI nylon Race Casing offers a supple yet robust structure that enhances puncture resistance and impact absorption without compromising speed. Consistent deformation across tread and sidewall ensures peak performance in cross-country racing.</li>
</ul>

<p>Product Carbon Footprint: 8.5 kgCO2e.</p>

<p>Hookless rim compatible.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>Blk/Brown</td>
 <td>690g</td>
 </tr>
 <tr>
 <td>29x.2.25</td>
 <td>55-622</td>
 <td>Full Black</td>
 <td>710g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Blk/Brown</td>
 <td>730g</td>
 </tr>
 <tr>
 <td>29X2.4</td>
 <td>60-622</td>
 <td>Full Black</td>
 <td>750g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-peyote-xc-race/1.jpg', 'vittoria-29-peyote-xc-race/2.jpg', 'vittoria-29-peyote-xc-race/3.jpg', 'vittoria-29-peyote-xc-race/4.jpg', 'vittoria-29-peyote-xc-race/5.jpg']::text[], 'new', 4, '2025-10-01'::date, false, true),
  ('vittoria-29-terreno-xc-race', 'Vittoria 29" Terreno XC Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Gravel World Championship winning technology for your mountain bike</p>

<p>Engineered for blistering speed on smooth, dry hardpack, the Terreno XC Race is the weapon of choice when efficiency and precision define the podium. Purpose-built for cross-country racers, every element of its design delivers one thing: race-winning performance.<br>
<br>
At the core is a fast-rolling fish scale center tread, minimizing rolling resistance on straightaways while maintaining confident braking and cornering traction when the course demands more. Transitions through turns are seamless, thanks to a gradual progression from the central strip to reinforced shoulder knobs — giving you smooth handling at full tilt.<br>
<br>
The advanced Race Formulation blends Graphene + Silica for an unbeatable combination of grip, speed, and durability. From hammering climbs, to railing descents, to out-of-the saddle sprints, this compound keeps you locked in and charging forward.<br>
<br>
The 60 TPI nylon Race Casing strikes the perfect balance between suppleness and strength, boosting puncture resistance and absorbing impacts without compromising rolling efficiency. With uniform tread and sidewall deformation, you get predictable handling and peak responsiveness in every section of the course.<br>
<br>
The new XC Race construction delivers an exceptional performance upgrade over its predecessor: 20% more speed, 8% more grip, 44% better puncture resistance, and 9% improved riding comfort.</p>

<p>Product Carbon Footprint: 8.5 kgCO2e.</p>

<p>Hookless rim compatible.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>full Black</td>
 <td>660g</td>
 </tr>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>Blk/Brown</td>
 <td>680g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>full Black</td>
 <td>700 g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Blk/Brown</td>
 <td>720 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-terreno-xc-race/1.jpg', 'vittoria-29-terreno-xc-race/2.jpg', 'vittoria-29-terreno-xc-race/3.jpg', 'vittoria-29-terreno-xc-race/4.jpg', 'vittoria-29-terreno-xc-race/5.jpg']::text[], 'new', 4, '2025-10-01'::date, false, true),
  ('vittoria-29-torrente-xc-race', 'Vittoria 29" Torrente XC Race', 'vittoria', 'wheels-tyres-tubes', 'mtb-tyres', '<p>Extreme grip and self-cleaning design for the harshest muddy terrains</p>

<p>Built for the most demanding, wet cross-country conditions, the Torrente XC Race is precision-engineered to perform when trail is at its worst.<br>
<br>
A generous tread spacing aggressively sheds peanut-buttery mud, clearing with every rotation to keep traction sharp and consistent, even in the wettest, sloppiest race conditions. The alternating center ridge delivers blistering speed with claw-like edge traction, so you stay fast without sacrificing control.<br>
<br>
Each lug features a progressive surface siping pattern, designed to bite into slippery roots and hidden rocks beneath the surface. The result? Confident grip, responsive rebound, and predictable handling when the trail is anything but.<br>
<br>
The Race Formulation Graphene + Silica compound strikes the perfect balance between grip, rolling speed, and long-lasting durability. Wrapped in our supple yet tough 60 TPI nylon Race Casing, this tire delivers reliable puncture resistance and controlled deformation across the tread and sidewall — maximizing speed and feel without compromise.<br>
<br>
The new XC Race construction delivers the numbers: 20% more speed, 8% more grip, 44% better puncture resistance, and 9% improved riding comfort.</p>

<ul>
	<li>Generous tread spacing cleans peanut-buttery mud in the wettest, sloppiest conditions, clearing the tread on each revolution.</li>
	<li>Alternating center ridge maintains speed while providing sharp edges for traction.</li>
	<li>Progressive surface siping pattern on each lug ensures grip on wet roots and rocks which live under the mud, increasing control with predictable rebound.</li>
	<li>Race Formulation Graphene + Silica enhances grip, while preserving rolling speed and durability. It’s built for cross-country racers who demand peak performance in every section: climbs, descents, and sprints.</li>
	<li>The 60 TPI nylon Race Casing offers a supple yet robust structure that enhances puncture resistance and impact absorption without compromising speed. Consistent deformation across tread and sidewall ensures peak performance in cross-country racing.</li>
</ul>

<p>Product Carbon Footprint: 8.8 kgCO2e.</p>

<p>Hookless Rim compatible.</p>

<table>
	<thead>
 <tr>
 <th>Size</th>
 <th>ETRTO</th>
 <th>Color</th>
 <th>Weight</th>
 </tr>
	</thead>
	<tbody>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>Blk/Brown</td>
 <td>680g</td>
 </tr>
 <tr>
 <td>29x2.25</td>
 <td>55-622</td>
 <td>full Black</td>
 <td>700g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>Blk/Brown</td>
 <td>720g</td>
 </tr>
 <tr>
 <td>29x2.4</td>
 <td>60-622</td>
 <td>full Black</td>
 <td>740 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-29-torrente-xc-race/1.jpg', 'vittoria-29-torrente-xc-race/2.jpg', 'vittoria-29-torrente-xc-race/3.jpg', 'vittoria-29-torrente-xc-race/4.jpg', 'vittoria-29-torrente-xc-race/5.jpg']::text[], 'new', 4, '2025-10-01'::date, false, true),

  -- ---- wheels-tyres-tubes · road-wheels ----
  ('dk-composite-gravel-60-wheelset', 'DK Composite Gravel 60 Wheelset', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<h3>DESCRIPTION</h3>

<p><strong>Deep gravel speed. Built for wide rubber and wide-open roads.</strong></p>

<p>The Gravel 60 is designed for all-out aero performance in the dirt. With a 60mm deep hookless carbon rim, ultra-wide internal width, and smooth-rolling reliability, it’s built for high-speed gravel racing and long solo escapes across open terrain.</p>

<ul>
<li>
<p><strong>60mm deep hookless profile:</strong> Engineered for aerodynamic efficiency on fast gravel courses, with stable handling and serious momentum.</p>
</li>
<li>
<p><strong>Ultra-wide rim platform:</strong> 24mm internal / 34mm external width provides optimal support for today’s 38–50mm tires—improving cornering, comfort, and traction at low pressures.</p>
</li>
<li>
<p><strong>Tubeless-compatible design:</strong> Run lower pressures with confidence. Hookless rim bed comes pre-taped for tubeless setup (valves not included).</p>
</li>
<li>
<p><strong>Reinforced spoke interface:</strong> Built for hard efforts and heavy terrain, with high-tension strength and responsive feel.</p>
</li>
<li>
<p><strong>Ratchet ring hub internals:</strong> High-engagement, ultra-reliable, and easy to maintain—ready for brutal terrain and endless dust.</p>
</li>
</ul>
<p><strong></strong><br></p>
<p><strong>Weights (with tubeless tape, no valves):</strong><br>Front: 713g<br>Rear: 817g<br><strong>Total: 1,530g</strong></p>', array['dk-composite-gravel-60-wheelset/1.webp', 'dk-composite-gravel-60-wheelset/2.webp']::text[], 'new', 1, '2026-02-27'::date, false, false),
  ('dk-composite-gravel-wave-45-wheelset', 'DK Composite Gravel Wave 45 Wheelset', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<h3>DESCRIPTION</h3>

<p><strong>Fast. Stable. Built for the long haul.</strong></p>

<p>The Gravel Wave 45 is your go-anywhere, do-anything carbon wheelset—purpose-built to handle the evolving demands of modern gravel. Whether you''re racing ribbons of fire road, loaded up for a week off-grid, or just getting lost in the backblocks, the Wave 45 balances low weight, responsiveness, and sheer durability in one brutally capable package.</p>

<ul>
<li>
<p><strong>Deep, but not too deep:</strong> The 45mm depth hits the sweet spot—enough aero to cheat the wind, but shallow enough to stay composed on washboard descents and rough corners.</p>
</li>
<li>
<p><strong>Wide where it counts:</strong> With a 25mm internal and 32mm external rim width, this platform is perfect for today’s high-volume gravel tires, offering better support, improved traction, and a smoother ride feel across varied terrain.</p>
</li>
<li>
<p><strong>Tubeless-ready with hooked rim design:</strong> Secure tire retention at low pressures. Tape comes pre-installed (valves not included).</p>
</li>
<li>
<p><strong>Reinforced where it matters:</strong> DK’s spoke hole reinforcement tech strengthens the most stressed part of the rim without adding weight—holding tension under load and keeping power transfer sharp and clean.</p>
</li>
<li>
<p><strong>Ring drive hub internals:</strong> Instant, confident engagement from a robust ratchet system. Fewer moving parts, more durability, better torque handling—just set and forget.</p>
</li>
</ul>
<p><strong></strong><br></p>
<p><strong>Weights (with rim tape, no valves):</strong><br>Front: 682g<br>Rear: 800g<br><strong>Total: 1,482g</strong></p>', array['dk-composite-gravel-wave-45-wheelset/1.webp', 'dk-composite-gravel-wave-45-wheelset/2.webp', 'dk-composite-gravel-wave-45-wheelset/3.webp']::text[], 'new', 1, '2026-02-27'::date, false, false),
  ('dk-composite-road-55-wheelset', 'DK Composite Road 55 Wheelset', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<p><strong>Smooth, fast, and built to punch through wind.</strong></p>
<p>The Road 55 is a deep-section carbon wheelset engineered for riders chasing top-end speed and long-haul efficiency. With a classic 55mm depth and clean, consistent aerodynamic shaping, it delivers a refined ride feel with stability and punch.</p>
<ul>
<li>
<p><strong>55mm deep carbon rims:</strong> Aerodynamic without over-committing. The 55 hits the sweet spot for rolling speed and predictable handling.</p>
</li>
<li>
<p><strong>Modern rim width:</strong> 21mm internal / 28mm external width works seamlessly with 25–30mm tires, unlocking low rolling resistance and composed cornering.</p>
</li>
<li>
<p><strong>Reinforced rim structure:</strong> DK''s proprietary spoke-hole reinforcement gives the wheel the backbone to hold tension under pressure without compromise.</p>
</li>
<li>
<p><strong>Tubeless-ready performance:</strong> A smooth rim bed allows for reliable tubeless setup and low-pressure efficiency.</p>
</li>
<li>
<p><strong>Ring drive hub internals:</strong> Fast engagement and bombproof power transfer from a proven ratchet system.</p>
</li>
</ul>
<p><strong>Weights (with rim tape, no valves):</strong><br>Front: TBA<br>Rear: TBA<br><strong>Total: TBA</strong></p>
<p>When you want deep-section performance in a clean, classic form—Road 55 delivers.</p>', array['dk-composite-road-55-wheelset/1.webp', 'dk-composite-road-55-wheelset/2.webp', 'dk-composite-road-55-wheelset/3.webp', 'dk-composite-road-55-wheelset/4.webp']::text[], 'new', 0, '2025-08-22'::date, false, false),
  ('dk-composite-road-disc', 'DK Composite Road Disc', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<h3>DESCRIPTION</h3>

<p><strong>Zero drag. All drive. Race-mode only.</strong></p>
<p>The Wave Aero Disc is a full carbon rear disc wheel designed for time trials, triathlons, and all-out assaults against the clock. If you want maximum efficiency with no excuses, this is it.</p>
<ul>
<li>
<p><strong>Monocoque carbon shell:</strong> Stiff, seamless, and engineered for brutal power transfer without deflection.</p>
</li>
<li>
<p><strong>Wide optimized shape:</strong> 20.8mm internal and 27mm external width mates perfectly with aero tires for smooth airflow and low rolling resistance.</p>
</li>
<li>
<p><strong>Tubeless-ready + molded valve cover:</strong> Set up fast and race with a fully integrated look. The custom carbon valve cover ditches the sticker and preserves surface aero.</p>
</li>
<li>
<p><strong>Ring drive internals:</strong> Built around DK’s premium ratchet hub tech for immediate power delivery and bulletproof reliability.</p>
</li>
</ul>
<p><strong>Weight (rear only):</strong><br>Rear: 1,230g</p>
<p>Tri or TT, this wheel is built to do one thing: destroy your previous best.</p>', array['dk-composite-road-disc/1.webp', 'dk-composite-road-disc/2.webp']::text[], 'new', 1, '2026-02-27'::date, false, false),
  ('dk-composite-road-wide-55-wheelset', 'DK Composite Road Wide 55 Wheelset', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<p><strong>Wide, stable, and built for modern road speed.<br><br></strong></p>

<p>The Road Wide 55 is a deep-section carbon wheelset developed for riders who want the aerodynamic benefits of wider road tyres. With a classic 55mm profile and a substantially wider rim bed, it delivers smoother airflow, improved stability in crosswinds, and a confident, efficient ride on every surface.</p>

<ul>
 <li>
 <p><strong>55mm deep carbon rims:</strong> A proven deep-section depth tuned for carrying speed with a composed, predictable feel in fast bunches and long solo efforts.</p>
 </li>
 <li>
 <p><strong>Wide aero profile:</strong> 24mm internal / 31mm external creates the ideal shape for 28–32mm tyres. The wider interface improves airflow, enhances stability, and reduces rolling resistance.</p>
 </li>
 <li>
 <p><strong>T800 Toray carbon construction:</strong> High-strength, lightweight fibre ensures a responsive feel with excellent durability and impact resistance.</p>
 </li>
 <li>
 <p><strong>Optimised tyre support:</strong> The wide bed allows the tyre to sit round and smooth, improving grip and cornering confidence while maintaining an efficient contact patch.</p>
 </li>
 <li>
 <p><strong>Tubeless-ready with hooked rim design:</strong> Easy, secure setup. Rim tape comes pre-installed (valves not included).</p>
 </li>
 <li>
 <p><strong>Reinforced spoke interface:</strong> DK''s strengthened spoke bed keeps tension balanced and stiffness high, even under heavy load. 24h front and rear.</p>
 </li>
 <li>
 <p><strong>Ratchet ring drive internals:</strong> Instant engagement, clean power transfer, and long-term durability with minimal maintenance.</p>
 </li>
</ul>

<p><strong><br>Weights (with tubeless tape, no valves):</strong><br>
Front: TBA<br>
Rear: TBA<br>
<strong>Total: TBA</strong></p>

<p><br>When you want deep-section speed with the stability and efficiency of a modern wide platform, the Road Wide 55 brings it all together.</p>

<p><em><br>Contact your rep for a discounted bundle deal on Swissstop rotors and pads with your DK wheels.</em></p>

<p><em><br>If the freehub option you would like is not in stock, please contact us — we can swap freehubs to accommodate.</em></p>', '{}'::text[], 'new', 0, '2026-02-27'::date, false, false),
  ('dk-composite-road-wide-60-wheelset', 'DK Composite Road Wide 60 Wheelset', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<p><strong>Wide, fast, and built for maximum aero efficiency.<br><br></strong></p>

<p>The Road Wide 60 is a deep-section carbon wheelset created for riders who want high-speed stability and aerodynamic performance with modern wide tyres. With a full 60mm rim depth and a wide-profile design, it delivers exceptional momentum, smooth airflow at higher yaw angles, and a confident, planted feel during fast riding and racing.</p>

<ul>
 <li>
 <p><strong>60mm deep carbon rims:</strong> A high-aero profile that excels at holding speed on the flats and rolling terrain, with a composed, predictable feel at racing intensity.</p>
 </li>
 <li>
 <p><strong>Wide aero profile:</strong> 24mm internal / 31mm external creates the ideal shape for 28–32mm tyres. The wider interface improves airflow, enhances stability, and reduces rolling resistance.</p>
 </li>
 <li>
 <p><strong>T800 Toray carbon construction:</strong> High-strength, lightweight fibre ensures a responsive feel with excellent durability and impact resistance.</p>
 </li>
 <li>
 <p><strong>Optimised tyre support:</strong> The wide bed allows the tyre to sit round and smooth, improving grip and cornering confidence while maintaining an efficient contact patch.</p>
 </li>
 <li>
 <p><strong>Tubeless-ready with hooked rim design:</strong> Easy, secure setup. Rim tape comes pre-installed (valves not included).</p>
 </li>
 <li>
 <p><strong>Reinforced spoke interface:</strong> DK''s strengthened spoke bed keeps tension balanced and stiffness high, even under heavy load. 24h front and rear.</p>
 </li>
 <li>
 <p><strong>Ratchet ring drive internals:</strong> Instant engagement, clean power transfer, and long-term durability with minimal maintenance.</p>
 </li>
</ul>

<p><strong><br>Weights (with tubeless tape, no valves):</strong><br>
Front: TBA<br>
Rear: TBA<br>
<strong>Total: TBA</strong></p>

<p><br>When you want deep aerodynamic performance with modern wide-tyre optimisation, the Road Wide 60 offers speed, stability, and a confident race-ready feel.</p>

<p><em><br>Contact your rep for a discounted bundle deal on Swissstop rotors and pads with your DK wheels.</em></p>

<p><em><br>If the freehub option you would like is not in stock, please contact us — we can swap freehubs to accommodate.</em></p>', '{}'::text[], 'new', 0, '2026-02-27'::date, false, false),
  ('dk-composite-wave-50-wheelset-1', 'DK Composite Wave 50 Wheelset', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<ul>
<li>Special wave shape designs, more aerodynamic, lighter and stiffer.</li>
<li>Wider 28mm outer width U-shape design for stiffness and aerodynamic.</li>
<li>Spoke hole reinforced technology reduces weight and ensures high spoke tension.</li>
<li>Ideal for road or triathletes looking to improve their speed and performance.</li>
<li>Proven and durable ratchet freehub body design</li>
</ul>
<h3><strong>Reinforcement Technology</strong></h3>
<p>DK Composite use reinforcement/thicker carbon fiber on each spoke hole area, and use thinner carbon fiber outside the spoke hole area, so the rim light can be saved greatly while strength can be guaranteed.</p>
<h3><strong>Unique Resin and Lamination System</strong></h3>
<p>DK Composite developed own high TG 255℃ and high tenacity resin system and special lamination for best carbon bicycle rim performance.</p>
<h3><strong>Six-Axis Drilling Machine</strong></h3>
<p>DK Composite developed a six-axis machine especially for carbon bicycle rims, so all kind of angles and diameters drilling are available.</p>
<h3><strong>Strong R&amp;D Team</strong></h3>
<p>DK Composite have their own R&amp;D team for new project and mould development, except carbon bicycle rim, we also have the experiences and ability to develop any new carbon composite products.</p><p><br></p><p><br></p><p>Rear: 856g </p><p>Front: 738g</p><p>Pair: 1574g (HG Freehub, excludes valves)</p>', array['dk-composite-wave-50-wheelset-1/1.jpg', 'dk-composite-wave-50-wheelset-1/2.jpg', 'dk-composite-wave-50-wheelset-1/3.jpg', 'dk-composite-wave-50-wheelset-1/4.jpg', 'dk-composite-wave-50-wheelset-1/5.jpg']::text[], 'new', 0, '2025-09-16'::date, false, false),
  ('dk-composite-wave-50-65-wheelset', 'DK Composite Wave 50/65 Wheelset', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<h3>DK COMPOSITE WAVE Duality Wheelset: The Best of Both Worlds</h3><p>The DK Composite Wave Duality wheelset is a meticulously designed concept that combines a 50mm deep front wheel with a 65mm deep rear wheel, offering a unique blend of performance benefits. This unique combination is crafted to <strong>provide exceptional acceleration for quick bursts of speed and superior rolling efficiency for maintaining momentum</strong>.</p><p><strong>Unveiling a Wheelset Unlike Any Other:</strong></p><ul>
<li><p><strong>Strategic Depth Design:</strong> The Wave Duality combines the best of both worlds. The 50mm front wheel offers exceptional handling and responsiveness, ideal for quick accelerations and navigating tight corners. The deeper 65mm rear wheel slices through the air with impressive efficiency, minimizing drag and propelling you forward with relentless momentum.</p></li>
<li><p><strong>Tuned for Efficiency and Stability:</strong> This innovative depth configuration is not just about speed. The shallower front wheel profile enhances stability when riding in aggressive positions, whether you''re down on the drops or comfortably nestled on aerobars. This confidence-inspiring design allows you to push your limits and maintain precise control, even in challenging conditions.</p></li>
</ul><p><strong>DK''s Signature Performance:</strong></p><ul>
<li><p><strong>Reinforced Rim Integrity:</strong> DK''s proprietary spoke hole reinforcement technology ensures the Wave Duality maintains incredible spoke tension for optimal power transfer without sacrificing rim weight.</p></li>
<li><p><strong>Tuned for Efficiency:</strong> The Wave Duality utilizes a proven and ultra-reliable ratchet freehub body design, available in HG and XDR variants. This low-friction system ensures smooth engagement and lightning-fast power transfer, keeping you rolling efficiently with every pedal stroke.</p></li>
<li><p><strong>Uncompromising R&amp;D:</strong> DK boasts a dedicated in-house R&amp;D team that tirelessly pushes the boundaries of carbon fiber technology. This commitment to innovation ensures you''re getting a wheelset built with the latest advancements for unmatched performance on every ride.</p></li>
</ul><p><strong>The DK Wave Duality isn''t just a wheelset, it''s a versatile companion.</strong> It''s meticulously crafted to excel in various riding scenarios, offering exceptional acceleration, impressive cruising efficiency, and confidence-inspiring stability.</p><p><strong>Weight (to be confirmed):</strong></p><ul>
<li>Rear: TBA</li>
<li>Front: TBA</li>
<li>Pair: TBA (HG Freehub, excludes valves)</li>
</ul><p><strong>Experience unmatched versatility and ride like never before with the DK Wave Duality wheelset.</strong></p>', array['dk-composite-wave-50-65-wheelset/1.webp', 'dk-composite-wave-50-65-wheelset/2.webp', 'dk-composite-wave-50-65-wheelset/3.webp', 'dk-composite-wave-50-65-wheelset/4.webp', 'dk-composite-wave-50-65-wheelset/5.webp']::text[], 'new', 0, '2025-09-16'::date, false, false),
  ('dk-composite-wave-65-wheelset', 'DK Composite Wave 65 Wheelset', 'dk', 'wheels-tyres-tubes', 'road-wheels', '<h3>DK COMPOSITE WAVE 65 WHEELSET: OWN THE WIND AND DOMINATE THE COMPETITION</h3><p>The DK Composite Wave 65 wheelset is the ultimate expression of aerodynamic advantage. Engineered for pure speed and minimal drag, the Wave 65 pushes the boundaries of performance, empowering you to conquer the road and time trial with unrivaled efficiency.</p><p><strong>Unveiling the Pinnacle of Aerodynamics:</strong></p><ul>
<li><p><strong>Aero Wave+ Design:</strong> Building on the success of the Wave 50, the Wave 65 features an all-new, ultra-deep 65mm rim profile. This innovative design cleaves through the air with unparalleled efficiency, minimizing drag and maximizing your forward momentum.</p></li>
<li><p><strong>Optimized Aerodynamics:</strong> Every aspect of the Wave 65 is meticulously sculpted for wind-cheating performance.From the rim shape to the spoke configuration, each element is designed to work in harmony, creating a wheelset that slices through the air with minimal resistance.</p></li>
</ul><p><strong>Uncompromising Strength and Efficiency:</strong></p><ul>
<li><p><strong>Reinforced Rim Integrity:</strong> DK''s proprietary spoke hole reinforcement technology ensures the Wave 65 maintains incredible spoke tension for optimal power transfer without sacrificing rim weight.</p></li>
<li><p><strong>Tuned for Efficiency:</strong> The Wave 65 utilizes a proven and ultra-reliable ratchet freehub body design, available in HG and XDR variants. This low-friction system ensures smooth engagement and lightning-fast power transfer,keeping you rolling efficiently with every pedal stroke.</p></li>
</ul><p><strong>The DK Difference:</strong></p><ul><li>
<strong>Uncompromising R&amp;D:</strong> DK boasts a dedicated in-house R&amp;D team that tirelessly pushes the boundaries of carbon fiber technology. This commitment to innovation ensures you''re getting a wheelset built with the latest advancements for unmatched aerodynamic advantage.</li></ul><p><strong>The DK Wave 65 isn''t just a wheelset, it''s a statement.</strong> It''s the culmination of cutting-edge engineering, lightweight construction, and aerodynamic mastery, all designed to make you the undisputed ruler of the road and time trial course.</p><p><strong>Weight (to be confirmed):</strong></p><ul>
<li>Rear: TBA</li>
<li>Front: TBA</li>
<li>Pair: TBA (HG Freehub, excludes valves)</li>
</ul><p><strong>Dominate the competition. Experience the DK Wave 65 difference.</strong></p>', array['dk-composite-wave-65-wheelset/1.webp', 'dk-composite-wave-65-wheelset/2.webp', 'dk-composite-wave-65-wheelset/3.webp', 'dk-composite-wave-65-wheelset/4.webp']::text[], 'new', 0, '2025-09-16'::date, false, false),
  ('reserve-52-63-turbulent-aero', 'Reserve 52|63 Turbulent Aero', 'reserve', 'wheels-tyres-tubes', 'road-wheels', '<p>Winner of a Design and Innovation Award and Best Buy in Gran Fondo''s 2024 aero wheel comparison, the Reserve 52|63 was designed to be the ultimate wheelset for sprint stages, triathlons, and anywhere with a straight long enough to make a break for it. The 52mm deep front slices through the air while still guaranteeing predictable handling in crosswinds, and the deep, 63mm rear helps you bank watts for those crucial final kilometers. It''s the ultimate go fast wheelset, designed with Turbulent Aero technology.</p>

Designed For- Road racing, crits, and fast group rides

Wheelset Weight- DT350 1,660g

ERD-Front 537, Rear 515

Inner Width-Front 25mm, Rear 24mm

External Width-Front 35mm, Rear 34mm

Depth-Front 52mm, Rear 63mm

Offset- Rear1.8mm

Recommended Tire Dimensions-28 to 35mm

Spoke Count- 24

Rim Weights- 465g - 52, 520g - 63

Hub Spacing- 12X100mm/12X142mm

Freehub Options- XDR, HG-EV

Disc Style Option- Centerlock', array['reserve-52-63-turbulent-aero/1.webp']::text[], 'new', 1, '2026-07-08'::date, false, false),
  ('roval-321-disc-disc-brake', 'Roval 321 Disc - Disc Brake', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>Making up about 50% of your total race time, the bike portion of a triathlon is where equipment choices can make the difference between first and fifth, and no other equipment choice will save you more time than a disc wheel. While traditionally-shaped disc wheels are faster than their spoked counterparts, the Roval 321 Disc for disc brakes turns conventional design on its head, creating the fastest wheel on the planet. Disc wheels often fall into two categories—a completely flat shape, with structure coming from carbon fiber and a honeycomb-foam filling, or a spoked wheel that''s been faired with a carbon fiber cover. In our quest to break traditions, the 321 uses a single layer of 1k carbon fiber on each side of the wheel, and it all comes together at the brake track bridge. This kind of carbon fiber is rarely used in bicycle components due to its high manufacturing cost, but it offers a bevy of performance benefits. This coveted carbon is much lighter than other layups, like 3k and 12k, and it can only be laid by the most skilled of carbon fiber craftsmen. It''s complicated, but the payout is worth it, as it delivers a supple ride and one of the lightest disc wheels available. And in the real world, this means that it''ll spin-up quickly and reduce fatigue over the length of the course. Stiffness is often the “hot-topic” in the disc wheel world, but we think it’s an interesting conversation. It''s long been thought that efficient power transfer and high stiffness are directly correlated, but through extensive field-testing, we''ve determined that this isn''t the case at all. In fact, our initial disc was so stiff that, under power, it wouldn''t flex with the frame and this caused brake rub. This wrongly creates the perception of a flexy wheel, when really, the wheel is actually too stiff. In order to solve the brake rub problem, we first designed our optimal aero shape and then worked on our internal stiffness targets to fit within what we consider to be a desirable frame stiffness. And while light overall weight was a development priority, our focus was aerodynamics. Through hours of Computational Fluid Dynamics (CFD) and testing in the Win Tunnel, we developed a never-before-seen shape that''s optimized to work with a tire for on-bike airflow. What this translates to is an all-carbon disc wheel that, on the non-drive-side, has a shape that''s as aerodynamic as our current understanding allows, and a drive-side shape that''s as aerodynamic as the wheel-dish and derailleur clearance will allow for. To save every possible watt, we''ve also added CeramicSpeed bearings and DT Swiss 240 hub internals into our hub. Each 321 Disc wheel is also 2Bliss Ready right out of the box and comes with a quick-release, and tubeless valve stem. Designed for the most uncompromising athletes in the world, with engineering to match, the 321 Disc is the world''s most advanced disc wheel for your race against the clock.</p>', array['roval-321-disc-disc-brake/1.jpg', 'roval-321-disc-disc-brake/2.jpg', 'roval-321-disc-disc-brake/3.jpg', 'roval-321-disc-disc-brake/4.jpg', 'roval-321-disc-disc-brake/5.jpg']::text[], 'new', 1, '2025-07-31'::date, false, false),
  ('roval-alpinist-cl-ii', 'Roval Alpinist CL II', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>Feel your bike come alive on the open road with the new Alpinist CL II, featuring the lightest, best-handling clincher rims we have ever made, elevated with the performance of a tubeless system. The brand new Alpinist CL II now brings mountain-taming performance slightly closer to Earth with a carefully selected build designed to let riders take full advantage of the low rim and spoke mass. The Alpinist CL II utilizes the same rim as the Alpinist CLX II. They react to even the slightest increase in power with immediate acceleration and carve the purest lines in the corners, yet they can also handle almost double the impact standards of every certifying body. The result is a 1375-gram tubeless wheelset with an otherworldly ride quality designed for real-world road pressures. The Alpinist CL II utilizes components curated to keep you rolling and rolling fast. The DT Swiss 350 hubs, featuring their Star Ratchet drive system, are reliable and easy to service, while 24 DT Swiss CompRace Straightpull spokes front and rear, laced to the rims with their alloy Pro Lock nipples, are synonymous with reliability and can be obtained at any bike shop. The reduced rolling resistance of a tubeless setup is undeniable, as are the benefits of improved handling and incredible puncture protection. It took the most extensive and demanding engineering and testing program we’ve ever undertaken. As a result of this extensive development, the Alpinist CL II features a hooked rim that can handle a huge range of pressures up to 110psi and offers an easier set up and mounting experience than ever.</p>', array['roval-alpinist-cl-ii/1.jpg', 'roval-alpinist-cl-ii/2.jpg', 'roval-alpinist-cl-ii/3.jpg', 'roval-alpinist-cl-ii/4.jpg', 'roval-alpinist-cl-ii/5.jpg']::text[], 'new', 2, '2025-04-14'::date, false, false),
  ('roval-alpinist-clx-ii', 'Roval Alpinist CLX II', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>Feel your bike come alive on the open road with the new Alpinist CLX II—the lightest, best-handling clincher wheels we have ever made. Hyper-responsive acceleration, magic in the corners, sublime over rough roads, all elevated with the performance of a tubeless system. There’s no room for a single excess gram whether you’re chasing summits or ride quality because perfection is only achieved when there is nothing left to take away. It takes more than a lightweight rim to deliver the incredible reactivity and handling of the tubeless Alpinist CLX II. The wheelset is designed as a system with our engineers controlling and testing every part of that system—hubs; rims, spokes, lacing—and developing it hand-in-hand with Specialized Tubeless tires. The result is a 1250-gram tubeless wheelset with otherworldly ride quality. The Alpinist CLX II utilizes a hooked rim (allowing for real-world riding pressures up to 110psi, if that’s your thing) for secure tire bead retention and an easier set up and mounting experience than ever before. All in a wheel that almost doubles current industry impact standards while managing to achieve the lightest weight possible. Our all-new LightAF hubs are the spinning heart of the Alpinist CLX II. We carved 50 grams out of the previous Alpinist CLX hub with new low-profile hub bodies and machined rotor mounts. Inside, DT Swiss EXP internals and SINC ceramic bearings deliver silky-smooth efficiency and outstanding durability.</p>', array['roval-alpinist-clx-ii/1.jpg', 'roval-alpinist-clx-ii/2.jpg', 'roval-alpinist-clx-ii/3.jpg', 'roval-alpinist-clx-ii/4.jpg', 'roval-alpinist-clx-ii/5.jpg']::text[], 'new', 2, '2025-04-14'::date, false, false),
  ('roval-alpinist-clx-ii-wheels', 'Roval Alpinist CLX II Wheels', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>Feel your bike come alive on the open road with the new Alpinist CLX II—the lightest, best-handling clincher wheels we have ever made. Hyper-responsive acceleration, magic in the corners, sublime over rough roads, all elevated with the performance of a tubeless system. There’s no room for a single excess gram whether you’re chasing summits or ride quality because perfection is only achieved when there is nothing left to take away.</p>
<p>It takes more than a lightweight rim to deliver the incredible reactivity and handling of the tubeless Alpinist CLX II. The wheelset is designed as a system with our engineers controlling and testing every part of that system—hubs, rims, spokes, lacing—and developing it hand-in-hand with Specialized Tubeless tires. The result is a 1250-gram tubeless wheelset with otherworldly ride quality.</p>
<p>The Alpinist CLX II utilizes a hooked rim (allowing for real-world riding pressures up to 110psi, if that’s your thing) for secure tire bead retention and an easier set up and mounting experience than ever before. All in a wheel that almost doubles current industry impact standards while managing to achieve the lightest weight possible.</p>
<p>Our all-new LFD hubs are the spinning heart of the Alpinist CLX II. We carved 50 grams out of the previous Alpinist CLX hub with new low-profile hub bodies and machined rotor mounts. Inside, DT Swiss EXP internals and SINC ceramic bearings deliver silky-smooth efficiency and outstanding durability.</p>

<ul>
<li>Rim: Alpinist CLX Cabon Clincher, 700c, Disc Brake, Tubeless</li>
<li>Rim Details: 33mm Depth, 27mm External Width, 21mm Internal Width</li>
<li>Hub: Roval LFD (LFD13/LF14R) Center Lock, DT Swiss 180 Ratchet EXP 36t internals (10 degs), 100x12mm &amp; 142x12mm, Shim. RD. 11SP HG freehub</li>
<li>Bearing Type: DT Swiss SINC Ceramic Bearings</li>
<li>Spokes: DT Swiss Aerolite T-head, Front: Radial/One-cross (2:1) 21 count, DS: 276mm, NDS: 290mm, Rear: One-cross/Two-cross (2:1), DS: 288mm NDS: 286mm</li>
<li>Nipple: DT Swiss Hex Prolock Al 2.0x14mm</li>
<li>Tire Size: 24mm - 38mm, Max Pressure: 24mm-35mm: Tubeless (110psi) Tubed (130psi), 36mm-38mm: Tubeless (60psi) Tubed (60psi)</li>
<li>Weight: Wheelset 1,265g, Front 570g, Rear 694g (including 15g, tubeless rim tape and tubeless valve)</li>
<li>Assembly Method: Hand built at every step, from rim layup to the last nipple turn.</li>
<li>Extras: Roval Rim Tape, Spare Spoke &amp; Nipple Kit, System Weight Limit: 275lbs/125kg</li>
</ul>', array['roval-alpinist-clx-ii-wheels/1.jpg']::text[], 'new', 2, '2024-03-12'::date, false, false),
  ('roval-alpinist-clx-iii', 'Roval Alpinist CLX III', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>Engineered for polka dot jersey contenders and riders who enjoy fast climbs, the Roval Alpinist CLX III is our lightest road wheelset yet at 1,131g, shedding 134g from its predecessor. A new lightweight hub and Roval Aero Composite Spokes by ARRIS save 103.5g, while being 20% stronger than steel. And the proof is in the performance, helping Demi climb the Tourmalet 5 seconds faster than she ever has.</p>', array['roval-alpinist-clx-iii/1.jpg', 'roval-alpinist-clx-iii/2.jpg', 'roval-alpinist-clx-iii/3.jpg', 'roval-alpinist-clx-iii/4.jpg', 'roval-alpinist-clx-iii/5.jpg']::text[], 'new', 2, '2025-10-22'::date, false, false),
  ('rovalc38wheelset', 'Roval C38 Wheelset', 'specialized', 'wheels-tyres-tubes', 'road-wheels', '<p>Performance Upgrade Made Easy The C38 brings carbon fiber high performance to the real world. It’s a versatile all-rounder equally at home crushing gravel washboards and summiting alpine passes. Optimized for use with modern wide tires, providing the right amount of sidewall support to facilitate surefooted handling in all conditions, the C38 wheelset is a great handling, lively climbing, robust all-road performer that also aerodynamically outperforms many deeper, aero-specific rims that cost twice as much. Carbon wheels are a true performance upgrade to any bike, but too often the price tag puts them out of reach. The Rapide C38 shatters that barrier and brings a class leading Roval carbon rim and DT Swiss reliability together to provide riders with the best performance carbon wheel per dollar.</p>', array['rovalc38wheelset/1.jpg']::text[], 'new', 0, '2021-09-22'::date, false, false),
  ('roval-control-sl-v-370', 'Roval Control SL V 370', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>XC speed meets trail-ready durability with the new high value Control SL V 370. Weighing just 1,590g, these fly up climbs, they feature a tuned carbon lay-up for better traction and a stronger rear rim for impact resistance. Sapim D-Light spokes pair with the durable and fast engaging DT Swiss Ratchet LN for 20 degree engagement. A 4mm FlatStop beadhook minimizes pinch flats, and an asymmetric rim profile boosts longevity—blending speed, control, and durability for elite performance.</p>', array['roval-control-sl-v-370/1.jpg', 'roval-control-sl-v-370/2.jpg', 'roval-control-sl-v-370/3.jpg', 'roval-control-sl-v-370/4.jpg', 'roval-control-sl-v-370/5.jpg']::text[], 'new', 2, '2025-05-12'::date, false, false),
  ('roval-control-sl-vi-350', 'Roval Control SL VI 350', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>XC speed meets trail-ready durability with the new Control SL VI 350. Weighing just 1,478g, these fly up climbs, they feature a tuned carbon lay-up for better traction and a stronger rear rim for impact resistance. DT Swiss Revolution spokes pair with the durable and fast engaging DT Swiss Star Ratchet for 10 degree engagement . A 4mm FlatStop bead hook minimizes pinch flats, and an asymmetric rim profile boosts longevity—blending speed, control, and durability for elite performance.</p>', array['roval-control-sl-vi-350/1.jpg', 'roval-control-sl-vi-350/2.jpg', 'roval-control-sl-vi-350/3.jpg', 'roval-control-sl-vi-350/4.jpg', 'roval-control-sl-vi-350/5.jpg']::text[], 'new', 1, '2025-05-12'::date, false, false),
  ('roval-control-world-cup', 'Roval Control World Cup', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>The Roval Control World Cup wheelset is the fastest in the world, and at just 998 grams, they’re also the lightest. Every detail was obsessively engineered with input from top pros to deliver unmatched performance at the highest level. Beyond its featherweight design, it boasts leading flat resistance, durability, and ride quality, proven by our Factory Team. The Roval Control World Cup isn’t just a wheelset, it’s a new benchmark in XC racing.</p>', array['roval-control-world-cup/1.jpg', 'roval-control-world-cup/2.jpg', 'roval-control-world-cup/3.jpg', 'roval-control-world-cup/4.jpg', 'roval-control-world-cup/5.jpg']::text[], 'new', 2, '2025-04-14'::date, false, false),
  ('roval-rapide-cl-iii', 'Roval Rapide CL III', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>The all-new Roval Rapide CL III wheels are a direct descendent of CLX III, turning aerodynamic convention on its head. A deeper front rim puts aerodynamic performance where it matters most. A shallower rear rim cuts unnecessary weight for faster acceleration and improved handling, helping save 35g. FlatStop Bead Hooks require 39% more force to flat, ensuring your race goes all the way to the line with best-in-class flat protection. Get there fast on any course with Roval Rapide CL III.</p>', array['roval-rapide-cl-iii/1.jpg', 'roval-rapide-cl-iii/2.jpg', 'roval-rapide-cl-iii/3.jpg', 'roval-rapide-cl-iii/4.jpg', 'roval-rapide-cl-iii/5.jpg']::text[], 'new', 1, '2025-06-27'::date, false, false),
  ('roval-rapide-clx-iii', 'Roval Rapide CLX III', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>The all-new Roval Rapide CLX III wheels flip aero convention on its head for unmatched speed across any course. Up front, a deep-profile rim slices air where it matters most. Out back, a lower-profile rim and carbon spokes shaves 215g, unlocking explosive acceleration and razor-sharp control. And with FlatStop Bead Hooks requiring 39% more force to flat you’ve got best-in-class protection to go full gas all the way to the line. Get there fast, every time, on any course with Roval Rapide CLX III.</p>', array['roval-rapide-clx-iii/1.jpg', 'roval-rapide-clx-iii/2.jpg', 'roval-rapide-clx-iii/3.jpg', 'roval-rapide-clx-iii/4.jpg', 'roval-rapide-clx-iii/5.jpg']::text[], 'new', 4, '2025-06-27'::date, false, false),
  ('roval-rapide-sprint-clx', 'Roval Rapide Sprint CLX', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>Meet the Roval Rapide CLX Sprint—built to get to the finish line first. Since 90% of aero benefit comes from the front wheel, we went all-in with a 63mm deep front rim to slice through the wind, and a lightweight 58mm rear with carbon spokes for blistering acceleration when it counts. Charge full gas with confidence: FlatStop bead hooks demand 39% more force to flat, delivering race-day reliability that lasts to the line. Roval is shifting the aero paradigm—depth redefined for absolute speed.</p>', array['roval-rapide-sprint-clx/1.jpg', 'roval-rapide-sprint-clx/2.jpg', 'roval-rapide-sprint-clx/3.jpg', 'roval-rapide-sprint-clx/4.jpg', 'roval-rapide-sprint-clx/5.jpg']::text[], 'new', 2, '2025-07-10'::date, false, false),
  ('roval-terra-aero-clx', 'Roval Terra Aero CLX', 'specialized', 'wheels-tyres-tubes', 'road-wheels', '<p>Gravel racing now demands the same level of aerodynamic discipline historically reserved for World Tour races. Riders are pushing deeper into speed ranges where aero drag matters—and they’re doing it on rougher terrain with bigger tires. Up to 5.84 watts faster than the previous generation, with a first-of-its-kind 50mm Chopped Aero Speed design.</p>', array['roval-terra-aero-clx/1.webp', 'roval-terra-aero-clx/2.webp', 'roval-terra-aero-clx/3.webp', 'roval-terra-aero-clx/4.webp', 'roval-terra-aero-clx/5.webp']::text[], 'new', 2, '2026-07-09'::date, false, false),
  ('specialized-alpinist-cl-ii', 'Specialized Alpinist CL II', 'specialized', 'wheels-tyres-tubes', 'road-wheels', '<p>Feel your bike come alive on the open road with the new Alpinist CL II, featuring the lightest, best-handling clincher rims we have ever made, elevated with the performance of a tubeless system. The brand new Alpinist CL II now brings mountain-taming performance slightly closer to Earth with a carefully selected build designed to let riders take full advantage of the low rim and spoke mass. The Alpinist CL II utilizes the same rim as the Alpinist CLX II. They react to even the slightest increase in power with immediate acceleration and carve the purest lines in the corners, yet they can also handle almost double the impact standards of every certifying body. The result is a 1375-gram tubeless wheelset with an otherworldly ride quality designed for real-world road pressures.The Alpinist CL II utilizes components curated to keep you rolling and rolling fast. The DT Swiss 350 hubs, featuring their Star Ratchet drive system, are reliable and easy to service, while 24 DT Swiss CompRace Straightpull spokes front and rear, laced to the rims with their alloy Pro Lock nipples, are synonymous with reliability and can be obtained at any bike shop.The reduced rolling resistance of a tubeless setup is undeniable, as are the benefits of improved handling and incredible puncture protection. It took the most extensive and demanding engineering and testing program we’ve ever undertaken. As a result of this extensive development, the Alpinist CL II features a hooked rim that can handle a huge range of pressures up to 110psi and offers an easier set up and mounting experience than ever. Specialized Alpinist CL II</p>', array['specialized-alpinist-cl-ii/1.jpg']::text[], 'new', 2, '2024-03-12'::date, false, false),
  ('traverse-hd-350-deg', 'Traverse HD 350 DEG', 'roval', 'wheels-tyres-tubes', 'road-wheels', '<p>The Traverse HD is the strongest carbon trail wheel we’ve ever tested, engineered for those who live to send it—maybe harder than they should. Designed to handle big hits and rowdy lines, the Traverse HD 350 DEG is built to keep rolling no matter how hard you charge.</p>', array['traverse-hd-350-deg/1.jpg', 'traverse-hd-350-deg/2.jpg', 'traverse-hd-350-deg/3.jpg', 'traverse-hd-350-deg/4.jpg', 'traverse-hd-350-deg/5.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),

  -- ---- wheels-tyres-tubes · tubeless-sealant ----
  ('dynamic-barkeeper-pro-tubeless-sealant', 'Dynamic Barkeeper Pro Tubeless Sealant', 'dynamic-bike-care', 'wheels-tyres-tubes', 'tubeless-sealant', '<p>Barkeeper Pro is the ultimate tubeless sealant. When every second counts, this is what you need. The cutting-edge Hi-Fibre synthetic latex formula seals punctures up to 8mm and does so within record time.<br>Barkeeper Pro seals 6mm punctures at a pressure of 4 bar within 1 tyre rotation at 30 km/h. That is within less than 0,5 sec!<br><br>✔️ Seals punctures up to 8mm<br>✔️ 100% carbon safe, ammonia free, hypo allergenic non-corrosive<br>✔️ Compatible with all tubeless wheels and tyres<br>✔️ Works with CO2 cartridges<br>✔️ Seals 6mm punctures in less than 0,5s!<br><br>The pro''s choice when performance matters most.</p><p><br></p><p>Dynamic Barkeeper Pro is the only choice when a puncture can mean the difference between winning and losing. The Pro formula uses an optimal viscosity to enable fast and even distribution of the sealant around the tyre. This results in instant sealing effectivity as the sealant is always immediately present at the site of a puncture.</p><p>Barkeeper Pro does not ball up or dry out and can be topped up without removing the old sealant. It is engineered for use on- and off-road, with pressures between 1 and 8 bar. Barkeeper works between -20°C to +50°C and is compatible with CO₂ cartridges. The formula is 100% carbon safe, ammonia free, hypo allergenic, skin safe and non-corrosive<strong>.</strong></p>', array['dynamic-barkeeper-pro-tubeless-sealant/1.png', 'dynamic-barkeeper-pro-tubeless-sealant/2.png', 'dynamic-barkeeper-pro-tubeless-sealant/3.png', 'dynamic-barkeeper-pro-tubeless-sealant/4.jpg', 'dynamic-barkeeper-pro-tubeless-sealant/5.jpg']::text[], 'new', 1, '2025-03-18'::date, false, false),
  ('dynamic-barkeeper-tubeless-sealant', 'Dynamic Barkeeper Tubeless Sealant', 'dynamic-bike-care', 'wheels-tyres-tubes', 'tubeless-sealant', '<h3><strong>No. 1 tubeless sealant on the market.</strong></h3>

<p>Super lightweight tubeless sealant with Hi-Tec fibers.</p>

<p>Dynamic Barkeeper is a Hi-Tec fiber, synthetic latex, tubeless sealant. The unique formula clings to the inside of the tyre and rim and therefore seals holes quicker than any other sealant. Barkeeper lasts longer than other sealants, it does not ball up or dry out. It can be topped up without removing the old sealant.<br>It is engineered for use on- and off-road, with pressures between 1 and 8 bar. Barkeeper works between -20°C to +50°C and is compatible with CO₂ cartridges. The use of Hi-tec fibers in the sealant, ensures larger punctures are sealed fast and permanently. The formula is ammonia free, hypoallergenic, skin safe and non-corrosive<strong>.</strong></p>

<p><strong>Have a nice ride!</strong></p>

<h3><strong>DESCRIPTION</strong></h3>

<p>CO₂ compatible | Seals punctures up to 7mm | Works up to 8 bar and with all tire brands | Does not ball up | Planet friendly</p>

<p>Lower rolling resistance, more comfort, no flats. No matter if you ride on- or off-road, the key to the optimal experience is the right sealant. You want to seal punctures quickly and prevent pressure loss. This is why we developed Barkeeper, providing the optimal tubeless experience for all cyclists.</p>

<h3><strong>APPLICATION</strong></h3>

<p>1. Shake the bottle<br>2. Deflate tyres and add Barkeeper<br>3. Inflate and go for a ride!</p>

<p>Inject the following amount of sealant in the tyre:</p>

<p>Road bike: <strong>30 – 45 ml</strong><br>MTB 26”: <strong>60 – 75 ml</strong><br>Cross/Gravel: <strong>60 – 75 ml</strong><br>MTB 29”: <strong>100 – 140 ml</strong><br>Downhill MTB: <strong>120 – 140 ml</strong></p>', array['dynamic-barkeeper-tubeless-sealant/1.png', 'dynamic-barkeeper-tubeless-sealant/2.png', 'dynamic-barkeeper-tubeless-sealant/3.png', 'dynamic-barkeeper-tubeless-sealant/4.png', 'dynamic-barkeeper-tubeless-sealant/5.png']::text[], 'new', 2, '2025-02-14'::date, false, false),
  ('dynamic-cleaner-wipe-out-150ml', 'Dynamic Cleaner Wipe Out 150mL', 'dynamic-bike-care', 'wheels-tyres-tubes', 'tubeless-sealant', '<h3>DYNAMIC WIPE OUT 150ML</h3>

<h3>DESCRIPTION</h3>

<h3><strong>WIPE OUT THE TUBELESS MESS WITH EASE!</strong></h3>
<br>
<p>Dynamic Wipe Out is a heavy duty, planet friendly sealant and glue remover. It leaves a clean surface, ready for fresh tubeless sealant or rim tape. Also suitable for extreme degreasing. Quickly removes heavy grease, grime, oil and wax build-up. Even works on waterproof greases and lubricants.</p>
<br>
<p>Safe to use on all materials, including aluminium, steel, titanium, plastic, carbon, rubber and seals. The innovative formula is water soluble and biodegradable. It can easily be rinsed off, without leaving residue.</p>
<br>
<h3><strong>DESCRIPTION</strong></h3>
<br>
<p>Safely remove all sticky remains, such as dried sealant and glue. Prepare your rims &amp; tires for fresh rim tape and tubeless sealant with this fully biodegradable, carbon safe formula.</p>
<br>
<p>✅ Eliminates sealant and glue residue in seconds.<br>✅ Planet friendly. Wipe Out is fully biodegradable.<br>✅ 100% safe for all materials, paints and finishes.</p>
<br>
<h3><strong>APPLICATION</strong></h3>
<br>
<p>Apply directly onto frame and components with a cloth or sponge. Gently rub in and leave for 2 – 3 minutes. Gently agitate stubborn contamination and rinse with lukewarm water for optimal results. Do not use in direct sunlight or on hot surfaces. Be extra cautious with non-factory paintjobs and store in a cool and dry place. Test on an inconspicuous area before use.</p>', array['dynamic-cleaner-wipe-out-150ml/1.webp']::text[], 'new', 1, '2024-04-18'::date, false, false),
  ('stans-notubes-tyre-sealant-pint-473ml', 'STAN''S TYRE SEALANT', 'stans', 'wheels-tyres-tubes', 'tubeless-sealant', '<p>The Product that Started a Tubeless Revolution. Inside this simple black bottle is a product that changed cycling. Today''s tubeless systems rely on the lighter, more reliable, self-sealing performance of Stan''s Tire Sealant.</p>
<p><strong>Can I run your sealant in other brands of tubeless rims?</strong></p>
<ul>
<li>Yes, our sealant can be used in any tubeless application.</li>
</ul>
<p><strong>How much sealant should I use?</strong></p>
<ul>
<li>For a XC 29er tire we recommend 90-120ml of sealant. The amount of sealant can be adjusted based on the volume of the tire. More sealant can also be added if a tire is porous and difficult to seal. For road and cyclocross tires, we recommend 60ml.</li>
</ul>
<p><strong>Can I add sealant to my tubes or tubular tires?</strong></p>
<ul>
<li>Yes, if the tube or tubular has a removable valve core.</li>
</ul>

<p><strong>Why is my tire weeping/leaking sealant?</strong></p>
<ul>
<li>This is the natural process of the sealant evaporating. It is more evident in some tires, but is nothing to be overly concerned about. This “weeping” does not impact the effectiveness of the sealant.</li>
</ul>
<p><strong>How long will the sealant last in my tire?</strong></p>
<ul>
<li>The sealant should last anywhere from 2-6 months or longer, depending on your local conditions.</li>
</ul>
<p><strong>What is the sealant shelf-life?</strong></p>
<ul>
<li>Sealant bottles should be kept tightly sealed, and stored in a cool, dry place. The sealant can be expected to last for many years if not used.</li>
</ul>
<p><strong>Is there ammonia in your sealant and it is bad for my tire and or rim?</strong></p>
<ul>
<li>Any trace amount of ammonia in Stan’s sealant will evaporate soon after it is injected into the tire.</li>
</ul>
<p><strong>Will using your sealant void the warranty on my tire?</strong></p>
<ul>
<li>Stan’s NoTubes sealant will not damage your tire. Please consult your tire manufacturer’s warranty guidelines.</li>
</ul>
<p><strong>How do I get your sealant out of my tires or tubes?</strong></p>
<ul>
<li>Liquid sealant can be rinsed out with water or wiped away with a rag. Stan’s sealant is biodegradable.</li>
</ul>
<p><strong>Do I need to clean the sealant out of my tires?</strong></p>
<ul>
<li>It is always good to wipe excess sealant out of your tires if you plan to use them again. A dry rag is sufficient for cleaning out regular sealant.</li>
</ul>', array['stans-notubes-tyre-sealant-pint-473ml/1.jpg']::text[], 'new', 1, '2021-10-27'::date, false, false),
  ('stans-original-tubeless-sealant', 'Stans Original Tubeless Sealant', 'stans', 'wheels-tyres-tubes', 'tubeless-sealant', '<p>STAN''S ORIGINAL TUBELESS SEALANT - 500ML</p>
<p>The stuff in this bottle changed cycling forever. Tyre performance took a massive leap forward when Stan’s Tyre Sealant first hit the scene, with a promise that seemed almost too good to be true: ditch your inner tubes and enjoy tyres that roll faster, run at pressures that maximise grip, and will instantly self-heal when punctured. Stan''s formula worked so well that once people tried it, there was no looking back. More than twenty years later, Stan’s is still the name trusted by multiple Olympic and World Champions, not to mention countless riders like you around the globe, for its reliable and powerful sealing action. Stan’s NoTubes continues to drive the tubeless revolution, offering a complete system of products that is unrivalled in performance.</p>

<ul>
<li>The first choice for tubeless conversion and flat prevention</li>
<li>Seals punctures up to 6.5mm quickly</li>
<li>Stays liquid for up to several months for long-lasting protection</li>
<li>Made from natural materials, will not damage tyres and safe for the environment</li>
<li>Can be injected through valve stems with removable cores</li>
<li>Premium low-viscosity formula resists freezing to work in environments as cold as -28°C</li>
<li>60ml of sealant recommended for Road (per tyre)</li>
<li>90-120ml of sealant recommended for MTB (per tyre)</li>
<li>Also compatible with tubes and tubular tires</li>
</ul>', array['stans-original-tubeless-sealant/1.jpg', 'stans-original-tubeless-sealant/2.jpg', 'stans-original-tubeless-sealant/3.webp']::text[], 'new', 4, '2024-06-11'::date, false, false),

  -- ---- wheels-tyres-tubes · tubeless-tyres ----
  ('continental-2026-tour-de-france-limited-edition', 'Continental 2026 Tour de France Limited Edition', 'continental', 'wheels-tyres-tubes', 'tubeless-tyres', '<p><strong>One Tour de France. Two race-proven tires</strong></p>

<p><strong>Style your ride with limited edition transparent sidewalls.</strong></p>

<p>The 2026 Tour de France limited edition pairs the aerodynamic AERO 111 with the race-proven GP 5000 S TR, both featuring unique transparent sidewalls and exclusive Tour de France branding.<br>
The ultimate performance package reduces drag in crosswinds and delivers the trusted speed, grip, and puncture protection of the GP 5000 family, bringing together two high-performance tires in one special package for one very special race.</p>

<p>The 2026 Tour de France Limited Edition set consists of one Aero 111 700x 29 tyre and one GP5000S TR 700 x 30 tyre with transparent sidewalls.</p>', array['continental-2026-tour-de-france-limited-edition/1.png', 'continental-2026-tour-de-france-limited-edition/2.png', 'continental-2026-tour-de-france-limited-edition/3.png', 'continental-2026-tour-de-france-limited-edition/4.png', 'continental-2026-tour-de-france-limited-edition/5.png']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('continental-aero-111-tubeless-tyre', 'Continental Aero 111 Tubeless Tyre', 'continental', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Introducing the AERO 111 – the next generation in tire performance, developed in collaboration with DT Swiss and Swiss Side. <br>Featuring an innovative and aerodynamically-optimized tread, this tire is engineered to effortlessly cut through the air like never before.<br>The tread''s 48 precision-formed, vortex-generating cavities create controlled turbulence, ensuring prolonged airflow attachment to the rim, resulting in reduced aerodynamic drag and improved crosswind stability.</p>
<p>The AERO 111 also incorporates all the winning technologies from the GP5000 TR Family: Black Chili Compound for superior grip and minimal rolling resistance, coupled with the trusted Vectran Breaker for added puncture protection. It’s the ultimate aerodynamic tire – without compromise.</p>
<p><strong>Why choose this tyre?</strong></p>
<ul>
<li>Aero, grippy and fast: It is the go-to tire for road cyclists who know that every watt counts</li>
<li>Vortex Generators allow for the reduction of aerodynamic drag of the entire wheel-tire-system</li>
<li>Improved handling in crosswinds through enhancing the sailing effect</li>
<li>Vectran Breaker for unparalled puncture protection</li>
</ul>
<p>The combination of all these features means on top of the low aerodynamic drag, the AERO 111 offers low rolling resistance, good puncture resistance and exceptional grip in both wet and dry conditions.</p>
<p>As of 14/11/24, Aero 111 700x29 has the best Wet Grip scores tested by <strong>www.bicyclerollingresistance.com</strong></p>', array['continental-aero-111-tubeless-tyre/1.jpg']::text[], 'new', 2, '2024-11-15'::date, false, false),
  ('continental-archetype-700x30-tour-de-france-limited-edit', 'Continental Archetype 700x30 Tour de France Limited Edition Tyre', 'continental', 'wheels-tyres-tubes', 'tubeless-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL ARCHETYPE TOUR DE FRANCE LTD EDITION</strong></p>

 <p><strong>The Blueprint to Victory.</strong></p>

 <p>Finding the key to success doesn’t happen by accident - it’s forged by a relentless team working together to push the limits. <br>
 Born from countless hours and wins with UAE Team Emirates - XRG, the Archetype has racing in its DNA. <br>
 <br>
 Archetype is our lightest and fastest race-specific 30mm road tire, offering a substantial 35g weight saving over the Grand Prix 5000 S TR. <br>
 It features an extra-supple carcass, our latest BlackChili compound to further reduce rolling resistance, and outstanding levels of grip and cornering with our LazerGrip shoulder. <br>
 <br>
 Tubeless Ready and hookless-compatible technologies ensure confidence for the most demanding Grand Tours and stage races. </p>

 <table>
 <tbody>
 <tr>
 <th><strong>SPECIFICATIONS</strong></th>
 <td> </td>
 <td><strong>COMPOUND</strong></td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Black Chilli Compound:</strong> With our unique tread compound, we have revolutionized the sport of cycling. With the legendary <strong>BlackChili Compound </strong>we have answered the eternal question of the best balance of gripand rolling resistance for cycling. The latest polymers as well as specially developed carbon black particles and filler materials guarantee unique performance, be it on a road, gravel or a mountain bike, for time trialling or downhill.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Lazer Grip, </strong>to make you one with the road. The lazered micro profile structure expands over the tire’s shoulder and provides outstanding cornering.</td>
 <td> </td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td><strong>Active Comfort Technology:</strong> The revolutionary approach in cycling. Embedded in the tire construction the Active Comfort Technology absorbs vibrations and smoothens your ride.</td>
 </tr>
 <tr>
 <th> </th>
 <td> </td>
 <td> </td>
 </tr>
 <tr>
 <th></th>
 <td> </td>
 <td>
<strong>Tubeless Ready:</strong> Our carcass construction is robust and impervious against damage and penetration from foreign objects. The result: versatile, low weight and an attractive design. In addition, tires made using this technology can also be used as Tubeless or with an inner tube.
 <p>We recommend the usage of our Revo-Sealant.</p>
 </td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>WHY CHOOSE THIS TYRE</strong></p>

 <ul>
 <li>Our lightest and fastest 30mm road tireOur lightest and fastest 30mm road tire</li>
 <li>Developed and tested in collaboration with Team UAE Emirates – XRG</li>
 <li>Tubeless Ready and hookless compatible</li>
 <li>Limited Edition</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>

<table>
	<tbody>
	</tbody>
</table>', array['continental-archetype-700x30-tour-de-france-limited-edit/1.jpg', 'continental-archetype-700x30-tour-de-france-limited-edit/2.jpg', 'continental-archetype-700x30-tour-de-france-limited-edit/3.jpg', 'continental-archetype-700x30-tour-de-france-limited-edit/4.jpg', 'continental-archetype-700x30-tour-de-france-limited-edit/5.jpg']::text[], 'new', 1, '2026-08-10'::date, false, false),
  ('continental-gp5000-all-season-tr-1', 'Continental GP5000 All Season TR', 'continental', 'wheels-tyres-tubes', 'tubeless-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL GP5000 ALL SEASON TUBELESS READY FOLDING TYRE 700x28</strong></p>

 <p>If you''ve been searching for one tire to ride all year round, then look no further. The AS TR builds upon the legendary GP S 5000 TR with added puncture protection and grip. So whatever the weather throws at you, you can focus on the ride ahead.</p>

 <p><strong>SPECIFICATIONS</strong></p>

 <table>
 <tbody>
 <tr>
 <th><strong>Weight</strong></th>
 <td>Starts from 250g</td>
 </tr>
 <tr>
 <th><strong>Application </strong></th>
 <td>Race, Road, Urban</td>
 </tr>
 <tr>
 <th><strong>Category</strong></th>
 <td>Tubeless</td>
 </tr>
 </tbody>
 </table>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>More wet grip</li>
 <li>More sidewall protection</li>
 <li>More mileage</li>
 <li>Higher visibility with Black-Reflex</li>
 <li>Black Chili Compound</li>
 <li>Vectran Breaker</li>
 <li>Lazer Grip</li>
 <li>ACT</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-gp5000-all-season-tr-1/1.jpg', 'continental-gp5000-all-season-tr-1/2.jpg']::text[], 'new', 6, '2026-08-10'::date, false, false),
  ('continental-gp5000-tt-tr', 'Continental GP5000 TT TR', 'continental', 'wheels-tyres-tubes', 'tubeless-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL GP5000 TIME TRIAL TUBELESS READY FOLDING TYRES</strong></p>

 <p>The fastest option in the Grand Prix 5000 tubeless tyre family. For the pure pursuit of speed, and already proven in both Dan Bigham &amp; Filippo Ganna''s successful World Hour Record attempts. The tyre of choice for Team Ineos in all TT and Team TT races.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Tubeless</li>
 <li>BlackChili compound</li>
 <li>Lazer Grip</li>
 <li>Vectran™ Breaker</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-gp5000-tt-tr/1.jpg', 'continental-gp5000-tt-tr/2.jpg', 'continental-gp5000-tt-tr/3.jpg', 'continental-gp5000-tt-tr/4.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('continental-gp5000s-tr-1', 'Continental GP5000S TR', 'continental', 'wheels-tyres-tubes', 'tubeless-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL GP5000S TUBELESS READY FOLDING TYRES</strong></p>

 <p>The new Grand Prix 5000 S Tubeless Ready: Lighter, faster and with stronger sidewalls. The new standard in road tubeless ready technology. Ride faster, more comfortable and with increased puncture protection. Made to make you better.</p>

 <p><strong>Note- maximum internal rim width for 700 x 25 is 21mm</strong></p>

 <p>Maximum internal rim width for all othersizes is 25mm</p>
 </td>
 <td> </td>
 <td>
 <p><strong>FEATURES</strong></p>

 <ul>
 <li>Black Chili Compound</li>
 <li>Vectran Breaker</li>
 <li>Lazer Grip</li>
 <li>Tubeless Ready</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-gp5000s-tr-1/1.jpg', 'continental-gp5000s-tr-1/2.jpg', 'continental-gp5000s-tr-1/3.jpg']::text[], 'new', 8, '2026-08-10'::date, false, false),
  ('continental-grand-prix-tr-tyres-1', 'Continental Grand Prix TR Tyres', 'continental', 'wheels-tyres-tubes', 'tubeless-tyres', '<table>
	<tbody>
 <tr>
 <td>
 <p><strong>CONTINENTAL GRAND PRIX TUBELESS READY TYRES</strong></p>

 <p>The perfect option for those looking for a great value tire that is tubeless-ready.<br>
 It comes with BlackChili Compound and has an all-new 4-ply construction, that perfectly balances puncture protection and rolling resistance. Whether training, commuting or going the distance – the Grand Prix TR has you covered.</p>

 <p>This tire is Hookless compatible to the maximum pressure specified by the rim manufacturer. Please check wheel instruction and tire packaging for detailed information.</p>
 </td>
 <td> </td>
 <td>
 <p><strong>TECHNOLOGY</strong></p>

 <ul>
 <li>Black Chilli Compound</li>
 <li>Tubeless Ready</li>
 <li>4-Ply Construction</li>
 <li>Tread Pattern Inspired By Iconic Lazer Grip</li>
 </ul>
 </td>
 </tr>
	</tbody>
</table>', array['continental-grand-prix-tr-tyres-1/1.jpg', 'continental-grand-prix-tr-tyres-1/2.jpg', 'continental-grand-prix-tr-tyres-1/3.jpg']::text[], 'new', 4, '2026-08-10'::date, false, false),
  ('cotton-tlr', 'Cotton TLR', 'specialized', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Born from the need of pro racing, perfected for real roads, our Cotton TLR tires deliver unmatched speed, grip, and comfort. The unique Poly-Cotton-Corespun casing with seamless vulcanization blends a strong polyester core with supple cotton fibers for a fast, confident, and smooth ride. Tubeless-ready, race-proven, and crafted for those who demand every watt and every edge—this is pure performance you can feel in every turn.</p>', array['cotton-tlr/1.webp', 'cotton-tlr/2.png']::text[], 'new', 3, '2026-03-25'::date, false, false),
  ('mondo-tlr-endurance-tire', 'Mondo TLR Endurance Tire', 'specialized', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Mondo is the fastest, lightest endurance tire in the world, breaking endurance records and winning Paris-Roubaix. Its fast-rolling GRIPTON T2/T5 dual-compound tread handles rough tarmac and hardpack gravel with ease. Weighing 310g with a anti-puncture strip, Mondo tackles the worst conditions while climbing and accelerating like no other. For high-mileage high-performance riders, Mondo is the perfect choice.</p>', array['mondo-tlr-endurance-tire/1.jpg', 'mondo-tlr-endurance-tire/2.png']::text[], 'new', 3, '2025-03-18'::date, false, false),
  ('pirelli-p-zero-race-tlr-rs', 'Pirelli  P Zero RS Race TLR', 'pirelli', 'wheels-tyres-tubes', 'tubeless-tyres', '<strong>DESCRIPTION</strong>

The P ZERO™ Race TLR RS represents the latest addition to our range of P ZERO™ Race road racing tires, made in Italy. It has been developed in collaboration with professional athletes from our World Tour teams to deliver superior speed and grip performance compared to any other tire we have created. This achievement is made possible by the new SmartEVO² compound, formulated with the know-how and latest materials used in Motorsport, ensuring further improvement in grip and handling on both dry and wet surfaces. Additionally, we have lightened the patented SpeedCORE™ structure, featuring a thin, hermetic layer of rubber compound enriched with aramid particles. The combination of these factors has made it possible to create a high-performance tire that is even faster for competitors, but also for those who wish to benefit from the same tech as the pros.

COMPOUND, CASING, TECHNOLOGIES
What''s the secret to our tyres? Let''s take a look at some of the motorsport-derived technologies applied to our cycling tyres

COMPOUND

The new SmartEVO² represents the latest advancement in our high-performance racing bicycle tyre compound, enhanced by incorporating our Motorsport expertise at the highest level and the needs of modern World Tour racing. It evolves from the SmartEVO blend of three polymers with ''smart'' characteristics, utilizing new materials and innovative mixing processes, now possible at our own manufacturing plant in Italy located just close by our R&amp;D global headquarter. This results in improved overall grip, especially on wet surfaces, and a reduced rolling resistance to record level for its category, elevating both performances and handling feelings to what the fastest World Tour racers in the world demand.

STRUCTURE

SpeedCORE™ is an innovative tubeless-ready construction developed by Pirelli (Patent Pending) for our high-performance cycling tyres, representing our most advanced TLR technology to date. Derived from Pirelli automotive know-how and made possible by our newest production plant in Italy, nearby our Headquarter in Milan, SpeedCORE™ construction consists of a thin air-tight layer of rubber compound infused of aramid particles. This layer covers the internal part of the tyre and thanks to the presence of the aramid into the rubber blend, it allows for better mechanical resistance, improved air retention and overall greater flexibility: all contributing to the tyre''s overall performance

TECH SPECS

<table>
<thead>
<tr>
<th>
MODEL
</th>
<th>
SIZE
</th>
<th>
WEIGHT
</th>
<th>
TPI
</th>
<th>
CASING
</th>
<th>
COMPOUND
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
P ZERO™ Race TLR RS Black
</td>
<td>
<a href="https://www.pirelli.com/tyres/en-ww/bike/tyres/catalogue/p-zero-race-tlr-rs/26-622" rel="noopener nofollow" target="_blank">26-622</a>
</td>
<td>
270
</td>
<td>
120 TPI
</td>
<td>
SpeedCORE
</td>
<td>

</td>
</tr>
<tr>
<td>
P ZERO™ Race TLR RS Black
</td>
<td>
<a href="https://www.pirelli.com/tyres/en-ww/bike/tyres/catalogue/p-zero-race-tlr-rs/28-622" rel="noopener nofollow" target="_blank">28-622</a>
</td>
<td>
290
</td>
<td>
120 TPI
</td>
<td>
SpeedCORE
</td>
<td>

</td>
</tr>
<tr>
<td>
P ZERO™ Race TLR RS Black
</td>
<td>
<a href="https://www.pirelli.com/tyres/en-ww/bike/tyres/catalogue/p-zero-race-tlr-rs/30-622" rel="noopener nofollow" target="_blank">30-622</a>
</td>
<td>
310
</td>
<td>
120 TPI
</td>
<td>
SpeedCORE
</td>
<td>

</td>
</tr>
<tr>
<td>
P ZERO™ Race TLR RS Black
</td>
<td>
<a href="https://www.pirelli.com/tyres/en-ww/bike/tyres/catalogue/p-zero-race-tlr-rs/32-622" rel="noopener nofollow" target="_blank">32-622</a>
</td>
<td>
340
</td>
<td>
120 TPI
</td>
<td>
SpeedCORE
</td>
<td>

</td>
</tr>
</tbody>
</table>', array['pirelli-p-zero-race-tlr-rs/1.jpg']::text[], 'new', 6, '2024-08-09'::date, false, false),
  ('new-pirelli-p-zero-race-tlr', 'Pirelli P Zero Race TLR', 'pirelli', 'wheels-tyres-tubes', 'tubeless-tyres', '<p><strong>A new SPEEDCORE technology that makes the tyre 24% faster than its predecessor and reduces puncture risk</strong></p>
<p><strong>Manufactured in the renovated Milano-Bollate plant</strong></p>
<p><i>Milan, Italy, 20th March 2023</i> – Pirelli is launching its new P ZERO Race TLR, the tubeless version of its clincher tyre for road bikes. This product has been redesigned with new technologies and is manufactured in the modernised and innovative Pirelli plant in Milan-Bollate.</p>
<p>The new tubeless ready tyre by Pirelli is the fastest of the entire road bike range: this feature is sought not only by amateurs but also by the World Tour teams with which Pirelli collaborates: Trek-Segafredo and AG2R Citroën; more recently also the Q36.5 Pro Cycling Team.</p>
<p>The P ZERO Race TLR is the result of a complex project that involved many departments of Pirelli’s R&amp;D, as well as the teams that tested it on the ground: it features an innovative technology called SPEEDCORE.</p>
<p><strong>SPEEDCORE: REINFORCED CASING</strong></p>
<p>The structure of the P ZERO Race TLR features a tyre tread made with the SmartEVO formulation, a cutting-edge compound of polymers created to offer an excellent grip and low rolling resistance. The tyre is different in the inside compared to its predecessor: here the use of the new SPEEDCORE technology offers low rolling resistance and great protection from punctures, thus reinforcing the casing – without making it stiff – through the use of aramid fibres. Aramid in fact has chemical-physical features that allow for high resistance to traction, cuts and heat, thus favouring the mechanical properties of the tyre itself.</p>
<p><strong>FAST TYRE WITH HIGH RESISTANCE AND LOW RIGIDITY</strong></p>
<p>This new technology has been developed thanks to Pirelli’s experience in the field of compounds for racing tyres and has allowed for the reduction of rolling resistance, thus improving the smoothness of this tyre by 24% compared to the P ZERO Race TLR’s predecessor (Pirelli in-house testing carried out with tyres in the size 28-622). The aramid fibres bind evenly with the other chemical elements in the rubber, arranging themselves homogeneously in the structure, thus favouring the high mechanical properties required of low rolling resistance, high puncture resistance and low rigidity. So thanks to SPEEDCORE the structure of the new P ZERO Race TLR is much more flexible and thinner than a traditional butyl rubber layer, with improved mechanical resistance characteristics compared to the previous version of the product and able to offer a better level of puncture protection than a classic bead-to-bead fabric casing.</p>
<p>Compared to the previous version on the market, the weight and excellent grip and reliability characteristics in dry and wet conditions remain unchanged, confirming the product as a reliable and high-performance all-rounder, a benchmark in its category.</p>
<p>P ZERO Race TLR is already available in sizes 26-622, 28-622, 30-622 (all also in the ‘Classic’ version) as well as size 32-622 with black sidewalls. The sizes 35-622 and 40-622 will enter the market later this year.</p>', array['new-pirelli-p-zero-race-tlr/1.webp', 'new-pirelli-p-zero-race-tlr/2.jpg', 'new-pirelli-p-zero-race-tlr/3.jpg', 'new-pirelli-p-zero-race-tlr/4.jpg', 'new-pirelli-p-zero-race-tlr/5.jpg']::text[], 'new', 8, '2024-08-09'::date, false, false),
  ('rapidair-tlr-racing-only-tire', 'RapidAir TLR Racing Only Tire', 'specialized', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>For the fastest race tire on the tarmac, RapidAir TLR delivers. Weighing 220g with the fastest tread we’ve ever tested, the RapidAir TLR is 33 seconds faster than its predecessor while reducing aero drag by 2 watts and rolling resistance by 3 watts, resulting in the fastest tire we’ve ever made. When sheer speed matters, RapidAir is the perfect choice.</p>', array['rapidair-tlr-racing-only-tire/1.jpg', 'rapidair-tlr-racing-only-tire/2.png']::text[], 'new', 2, '2025-05-16'::date, false, false),
  ('s-works-turbo-2bliss-ready-t2-t5', 'S-Works Turbo 2Bliss Ready T2/T5', 's-works', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>When tubeless performance on race day is mandatory but durability for rough roads all season is just as important the S-Works 2BR delivers – from cobbled classics to your daily lunch ride. Our all-new Gripton T2 compound is the fastest, most efficient compound we’ve ever created. We’ve combined this with the legendary grip of our Gripton T5 compound on the shoulders to the Turbo 2BR more grip, speed, and durability than ever before – six watts faster vs the previous 2BR and just 260 grams for a 26mm tire. As a tubeless tire, the new Turbo 2BR can self-seal punctures when used with RapidAir sealant, that is if a puncture can ever pierce the Blackbelt protection under the tread which delivers 8% more puncture protection than the previous tire. This new Blackbelt was created using hybrid-Kevlar protection under the tread. You’ve not only got improved puncture protection but lighter weight and more flexibility for a more supple ride. The new S-Works Turbo 2BR is also compatible with both hooked and hookless rims for the flexibility to ride the wheels and pressure you want. Our new Zylon reinforced beads also exceed hookless burst pressure standards by 200% for ultimate peace of mind. When it’s all about efficiency and great handling in concert with incredible durability you’ll see the S-Works Turbo 2BR performing everywhere from the World Tour to local training rides.</p>', array['s-works-turbo-2bliss-ready-t2-t5/1.jpg', 's-works-turbo-2bliss-ready-t2-t5/2.jpg', 's-works-turbo-2bliss-ready-t2-t5/3.jpg', 's-works-turbo-2bliss-ready-t2-t5/4.png']::text[], 'new', 1, '2024-11-19'::date, false, false),
  ('s-works-turbo-rapidair-2bliss-ready-t2-t5', 'S-Works Turbo RapidAir 2Bliss Ready T2/T5', 's-works', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>The all-new S-Works Turbo RapidAir is our ultimate race day tire. The most efficient, lightest, best handling, and durable tubeless tire we’ve ever made. The original RapidAir is the tire that broke the World Tour’s addiction to tubulars with Tour de France stage wins, Green Jerseys, and Monument victories. Coaxing more speed and a longer life from our fastest race-day tubeless tire was no easy feat. We knew we had an incredibly fast foundation – RapidAir’s unique construction. Instead of a traditional three-ply casing that masses material under the tread where it increases rolling resistance, the Rapid Air casing is just two plies that overlap at the side wall that not only rolls faster, but grips better as well, with a more supple contact patch. Elevating this already formidable performance is our all-new Gripton T2 compound - the fastest, most efficient compound we’ve ever created. We’ve combined this with the legendary grip of our Gripton T5 compound on the shoulders. With this dual compound a set of 26mm S-Works Turbo RapidAir 2BR tires saves two watts of rolling resistance over the previous tire and adds approximately 1000 kilometers of life to a set. Oh, did we mention they are lighter? Just 230grams in 26mm. As a tubeless tire, the new RapidAir has ‘leave the spare tube at home’ performance when combined with RapidAir sealant, but the protection doesn’t end there. With new hybrid-Kevlar Blackbelt protection under the tread, you’ve got 12% more puncture protection with lighter weight and more flexibility for a more supple ride. The new S-Works Rapid Air is also compatible with both hooked and hookless rims for the flexibility to ride the wheels and pressure you want. Our new Zylon reinforced beads also exceed hookless burst pressure standards by 200% for ultimate peace of mind. The win-win’s keep on coming with new RapidAir.</p>', array['s-works-turbo-rapidair-2bliss-ready-t2-t5/1.jpg', 's-works-turbo-rapidair-2bliss-ready-t2-t5/2.png']::text[], 'new', 0, '2024-08-05'::date, false, false)
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
