-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 9 OF 10
--
-- Products 1401-1423 of 1423 (wheels-tyres-tubes).
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
  -- ---- wheels-tyres-tubes · tubeless-tyres ----
  ('s-works-turbo-tlr-race-tire', 'S-Works Turbo TLR Race Tire', 's-works', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>For the ultimate combination of road speed and durability, S-Works Turbo TLR delivers. Optimized GRIPTON dual T2/T5 compound tread improves rolling resistance by 10%, while an efficient construction reduces weight by 20g for faster acceleration and climbing. Durable TLR casing with an added puncture resistant strip makes this the tire of choice all season long in wet or dry conditions. For racing and training on a single tire, S-Works Turbo TLR is the perfect choice.</p>', array['s-works-turbo-tlr-race-tire/1.jpg', 's-works-turbo-tlr-race-tire/2.jpg', 's-works-turbo-tlr-race-tire/3.jpg', 's-works-turbo-tlr-race-tire/4.png']::text[], 'new', 4, '2025-04-17'::date, false, false),
  ('schwalbe-tyre-pro-one-aero', 'Schwalbe Tyre Pro One Aero', 'schwalbe', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>The Pro One Aero is the result of a collaboration with Scott, Syncros and the Swiss engineering firm Radiate. An important part of the project: to develop the best possible aerodynamic tire that does not compromise riding performance. Schwalbe''s developers optimized the tire shape for modern wide rims in the wind tunnel. Different constructions are used for the front and rear wheel.<br><br>THE FOCUS AT THE FRONT:<br><br>Best possible aerodynamics and less weight: 235g.    </p>
<p>THE REAR FOCUS:<br><br>Lowest rolling resistance combined with high puncture protection (270g).</p>

<h3>NEXT GENERATION COMPETITION TIRES: SCHWALBE PRO ONE AERO</h3>
 
<p>"Numerous tests in the wind tunnel, in the laboratory and on the road: Schwalbe presents the Pro One Aero, which takes road bike tires to a new level with its aerodynamics. This is underlined by a total of <strong>20% less air resistance </strong>on the Pro One Aero Front compared the Pro One TT (measured at 45 km/h and on a 28mm wide tire). At the same time, Schwalbe''s RaceGuard material ensures <strong>high puncture resistance</strong>.<br><br>Numerous professional teams and triathletes were involved in the development phase and have already put the tire to the test in competition. Our Schwalbe athlete Magnus Ditlev set a world record on the long distance course on the Pro One Aero at the Challenge Roth 2024 event."</p>
<h3>A JOINT PROJECT WITH THREE PARTNERS</h3>
<p>The Pro One Aero is the result of a collaboration with Scott, Syncros and the Swiss engineering firm Radiate. An important part of the project: to develop the best possible aerodynamic tire that does not compromise on riding performance. In the wind tunnel, Schwalbe''s developers optimized the tire shape for modern wide rims (widths from 21 mm). Different designs are used for the front and rear wheels.</p>

<h3> <strong>"In the final result, the 28mm wide Pro One Aero Front even trumps the aerodynamics of the 25mm wide Pro One TT, which had been the benchmark. The tire is tubeless-compatible and suitable for hookless rims."</strong>
</h3>

<h3>FEATURES</h3>

slide 1 to 2 of 2

<h3>FAIR RUBBER</h3>
<p>Schwalbe is the first tire manufacturer to offer products with Fairtrade rubber. Schwalbe pays a Fair Rubber premium for every kilogram of rubber. This premium is used exclusively to improve the living conditions of small farmers and their families. More information under <a href="https://fairrubber.org/" rel="noopener nofollow" target="_blank">fairrubber.org</a>. </p>

<h3>ADDIX RACE COMPOUND</h3>
<p>Offers tenacious grip at high cornering speeds and extensive durability in E-operation.</p>', array['schwalbe-tyre-pro-one-aero/1.png', 'schwalbe-tyre-pro-one-aero/2.png', 'schwalbe-tyre-pro-one-aero/3.png', 'schwalbe-tyre-pro-one-aero/4.png', 'schwalbe-tyre-pro-one-aero/5.png']::text[], 'new', 1, '2025-03-18'::date, false, true),
  ('schwalbe-tyre-pro-one-tl-easy-1', 'Schwalbe Tyre Pro One TL-Easy', 'schwalbe', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Creating “souplesse”. Tubeless Easy high-end road bike tire. Combining “souplesse” , speed and control at the highest level. The best road bike tire Schwalbe has ver developed. With the latest Souplesse Carcass construction that integrates Tubeless Easy technology in the most progressive way. Pro One is the benchmark for Tubeless road bike tires, because no other tire provides the rider with as much control and safety as the Pro One. The riding characteristic is similar to the smooth behavior of a classic tubular tire. And it''s fast. The integrated Tubeless Easy technology and the new ADDIX Race Compound are an unbeatable combination for maximum speed. At the same time, the Pro One remains controllable at all times - on the fastest descents, in extreme cornering, in all conditions. In addition to the high protection level of the TLE technology, the high-tech fabric V-Guard protects against cuts and punctures. </p>', array['schwalbe-tyre-pro-one-tl-easy-1/1.png', 'schwalbe-tyre-pro-one-tl-easy-1/2.png', 'schwalbe-tyre-pro-one-tl-easy-1/3.png', 'schwalbe-tyre-pro-one-tl-easy-1/4.png', 'schwalbe-tyre-pro-one-tl-easy-1/5.png']::text[], 'new', 2, '2025-10-10'::date, false, true),
  ('schwalbe-tyre-pro-one-tt', 'Schwalbe Tyre Pro One TT', 'schwalbe', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>TUBELESS EASY HIGH-END TIME TRIAL AND TRIATHLON TIRE.<br>Uncompromisingly for competition use. TT stands for speed, lowest rolling resistance and minimum weight. The riding characteristics are nevertheless inimitably good.</p>
<ul>
<li>Super Race carcass (Souplesse construction)</li>
<li>Addix Race Compound</li>
</ul>
<p><br>In order to minimize weight and reduce rolling resistance, the Pro One TT runs without a puncture guard. Therefore, it must be run with sealant for added puncture protection.</p>
<p>TT stands for Time Trial.</p>
<p>Instructions for the first assembly: Schwalbe Pro One and Schwalbe Pro One TT Tubeless Easy tires must be used with Doc Blue tire sealant. At least 30 ml, preferably 60 ml per tire. The tire must be run for at least 25 km directly after the sealent is added. If the instructions for the first assembly are ignored, the sealing of the tire cannot be guaranteed. </p>

<h3>FEATURES</h3>

<h3>ADDIX RACE COMPOUND</h3>
<p>Offers tenacious grip at high cornering speeds and extensive durability in E-operation.</p>

<h3>EVOLUTION LINE</h3>
<p>The very best possible. Highest grade materials. Latest technology.</p>

<h3>SOUPLESS CARCASS</h3>
<p>Souplesse Carcass Construction<br>Special turn-up construction for an exceptional riding experience in race tires.</p>

<h3>TUBELESS TECHNOLOGY</h3>
<p>For all ambitious sports cyclists Tubeless is the right choice. Only Tubeless achieves the best values in terms of:<br>+ SPEED<br>+ GRIP<br>+ PUNCTURE PROTECTION<br>+ COMFORT</p>', array['schwalbe-tyre-pro-one-tt/1.png', 'schwalbe-tyre-pro-one-tt/2.png']::text[], 'new', 1, '2025-03-18'::date, false, true),
  ('vittoria-700c-corsa-n-ext', 'Vittoria 700c Corsa N.EXT', 'vittoria', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Road racing inspired speed and feel, with the everyday durability of a nylon casing.</p>

<p>Race day, interval training, multi-summit days, unsupported base miles – the Corsa N.EXT combines high cornering grip, low rolling resistance, and the ultra-durable construction of a daily workhorse. Those qualities are complemented by the universal convenience of a clincher design.</p>

<p>Engineered with the revolutionary, WorldTour-proven technology of Graphene + Silica compounds and the high longevity of a nylon casing. The Corsa N.EXT provides an impossibly supple connection to the road, erasing rolling resistance, denying road debris, and inspiring confidence through sweeping corners.</p>

<ul>
	<li>Nylon casing provides durability, for daily racers who want to raise the bar of their performance while relying on a longer-lasting tyre.</li>
	<li>New combination of Silica and Graphene 2c compound for improved rolling efficiency, grip and longer wear-life.</li>
	<li>Proven tread design used by Vittoria teams in the World Tour.</li>
	<li>TWI -Tyre Wear Indicator built into the tread.</li>
	<li>Tube type and Tubeless ready (TLR) versions.</li>
	<li>TLR version is TSS (Hookless) rim compatible in size 28mm or larger.</li>
	<li>100% recycleable packaging.</li>
	<li>New 29mm TLR size - optimised for wide rim (25mm internal rim width).</li>
</ul>

<table>
	<tbody>
 <tr>
 <td>Size</td>
 <td>ETRTO</td>
 <td>Color</td>
 <td>Weight</td>
 </tr>
 <tr>
 <td>700x24c</td>
 <td>24-622</td>
 <td>Black</td>
 <td>200 g</td>
 </tr>
 <tr>
 <td>700x26c</td>
 <td>26-622</td>
 <td>Black</td>
 <td>205 g</td>
 </tr>
 <tr>
 <td>700x28c</td>
 <td>28-622</td>
 <td>Black</td>
 <td>220 g</td>
 </tr>
 <tr>
 <td>700x30c</td>
 <td>30-622</td>
 <td>Black</td>
 <td>225 g</td>
 </tr>
 <tr>
 <td>700x32c</td>
 <td>32-622</td>
 <td>Black</td>
 <td>245 g</td>
 </tr>
 <tr>
 <td>700x34c</td>
 <td>34-622</td>
 <td>Black</td>
 <td>250 g</td>
 </tr>
 <tr>
 <td>TLR 700x24c</td>
 <td>24-622</td>
 <td>Black</td>
 <td>265 g</td>
 </tr>
 <tr>
 <td>TLR 700x26c</td>
 <td>26-622</td>
 <td>Black</td>
 <td>280 g</td>
 </tr>
 <tr>
 <td>TLR 700x28c*</td>
 <td>28-622</td>
 <td>Black</td>
 <td>305 g</td>
 </tr>
 <tr>
 <td>TLR 700x29cWR*</td>
 <td>29-622</td>
 <td>Black</td>
 <td>310 g</td>
 </tr>
 <tr>
 <td>TLR 700x30c*</td>
 <td>30-622</td>
 <td>Black</td>
 <td>320 g</td>
 </tr>
 <tr>
 <td>TLR 700x32c* </td>
 <td>32-622</td>
 <td>Black</td>
 <td>340 g</td>
 </tr>
 <tr>
 <td>TLR 700x34c* </td>
 <td>34-622</td>
 <td>Black</td>
 <td>350 g</td>
 </tr>
	</tbody>
</table>

<p>*TLR Versions Size 28mm &amp; larger are TSS (Hookless) rim compatible (max pressure 72.5psi).</p>', array['vittoria-700c-corsa-n-ext/1.jpg', 'vittoria-700c-corsa-n-ext/2.png', 'vittoria-700c-corsa-n-ext/3.jpg', 'vittoria-700c-corsa-n-ext/4.jpg', 'vittoria-700c-corsa-n-ext/5.png']::text[], 'new', 13, '2025-10-01'::date, false, true),
  ('vittoria-700c-corsa-pro-speed-tube-tlr', 'Vittoria 700c Corsa PRO Speed Tube/TLR', 'vittoria', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Dominate your next time trial or triathlon with the fastest tyre ever made.</p>

<p>Designed specifically for time trial and triathlon, Corsa PRO Speed promises to revolutionize the racing experience of pro riders and performance-oriented amateur riders.<br>
Featuring an advanced Graphene + Silica compound specifically designed to provide unparalleled efficiency, Corsa PRO Speed maximizes speed, grip, and control ensuring faster times and smoother rides.<br>
Whether you''re a professional racer or amateur racer, the Corsa PRO Speed is made to enhance your riding experience and achieve your best performance in Time Trial and Triathlon use.</p>

<p>By seamlessly tapering the tread into the sidewall, the Corsa PRO Speed construction combines the Graphene + Silica compound, the ultra-supple Corespun 320 TPI cotton casing - Vittoria''s finest - and updated tread pattern, all electrically cured to minimize rolling resistance. The results of internal testing show an improvement in rolling performance of 5%, with 2% savings in weight.</p>

<ul>
	<li>Graphene + Silica compound ensures speed and confidence through a range of surface conditions, for the ultimate control.</li>
	<li>The graphene + silica technology is the same as in the Corsa PRO and Corsa PRO Control, but the formulation is specifically designed for the intended TT use, therefore maximizing speed, yet providing a very high level of grip on wet..</li>
	<li>Extremely lightweight tyre that guarantees ultimate suppleness and speed, without sacrificing grip.</li>
	<li>The circumferential grooves distribution on the tread has been optimized compared to previous Corsa Speed, with a wider center slick area and closer grooves which provide suppleness and cornering edges. These improvements have led to overall enhanced speed and riding confidence in cornering.</li>
	<li>TWI - Tyre Wear Indicator built into the tread.</li>
	<li>Tread thickness is lower than Corsa PRO, and comparable to previous Corsa Speed in the center, but smoothly tapering toward the sidewall in its seamless construction allowed by the new manufacturing process which includes electrical curing.</li>
	<li>New 29mm size - optimised for wide rim (25mm internal rim width).</li>
</ul>

<p>You Choose - set up Tubeless or install a latex or TPU tube for pure speed. </p>

<p>Cotton casing requires use of an Ammonia free tubeless sealant - for best results use Vittoria Universal Sealer - Ammonia Free &amp; Latex Free.</p>

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
 <td>700x24c</td>
 <td>24-622</td>
 <td>Para</td>
 <td>220 g</td>
 </tr>
 <tr>
 <td>700x26c</td>
 <td>26-622</td>
 <td>Para</td>
 <td>235 g</td>
 </tr>
 <tr>
 <td>700x28c*</td>
 <td>28-622</td>
 <td>Para</td>
 <td>250 g</td>
 </tr>
 <tr>
 <td>700x29cWR*</td>
 <td>29-622</td>
 <td>Para</td>
 <td>255 g</td>
 </tr>
 <tr>
 <td>700x30c*</td>
 <td>30-622</td>
 <td>Para</td>
 <td>255 g</td>
 </tr>
	</tbody>
</table>

<p>*Size 28mm &amp; larger are TSS (Hookless) rim compatible (max pressure 72.5psi).</p>', array['vittoria-700c-corsa-pro-speed-tube-tlr/1.png', 'vittoria-700c-corsa-pro-speed-tube-tlr/2.png', 'vittoria-700c-corsa-pro-speed-tube-tlr/3.png', 'vittoria-700c-corsa-pro-speed-tube-tlr/4.jpg', 'vittoria-700c-corsa-pro-speed-tube-tlr/5.jpg']::text[], 'new', 5, '2025-10-01'::date, false, true),
  ('vittoria-700c-corsa-pro-tube-tlr', 'Vittoria 700c Corsa PRO Tube/TLR', 'vittoria', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>The most winning tubeless ready road tyre ever made</p>

<p>Ultimate cornering grip in wet or dry conditions. Reinforced puncture resistance. A supple construction that reduces rolling resistance and makes chattery chip seal feel like freshly laid tarmac. The Corsa PRO combines the convenience of a tubeless-ready clincher platform with the pedigree of the world’s most successful racing tyre, proven in the rarefied air of France’s highest passes and the punchy finales of the classics alike.<br>
Grand tours, monuments, one-days, criteriums – the Corsa PRO Tubeless-Ready is the platform of choice for the world’s strongest riders claiming the highest podium steps in the most prestigious races. And the only things more impressive than its palmarès are its sensation of speed and unequaled ride quality.</p>

<p>Engineered with the revolutionary, WorldTour-proven technology of Graphene + Silica compounds and the timeless perfection of a 320 TPI cotton-blend casing. Electrically cured to eliminate seams and increase aerodynamics. The Corsa provides an impossibly supple connection to the road, erasing rolling resistance, denying road debris, and inspiring confidence through sweeping corners.</p>

<ul>
	<li>The new choice of the pro peloton, now even faster and with increased wet weather grip and puncture resistance;</li>
	<li>
Graphene + Silica compound ensures speed and confidence through a range of surface conditions, for the ultimate control;</li>
	<li> Proven cotton 320tpi casing material, wrapped in a revolutionary new construction process provides the foundation for the new standard in race-day performance road tyres.</li>
	<li>You choose - run a tube or install tubeless.</li>
	<li>TSS (hookless) rim compatible in size 28mm and larger.</li>
	<li>TWI - Tyre Wear Indicator built into the tread.</li>
	<li>Scan the QR code on the tyre label for installation tutorials, pressure recommendations and more.</li>
	<li>New 29mm size - optimised for wide rim (25mm internal rim width).</li>
</ul>

<p>Cotton casing requires use of an <u><strong>Ammonia free tubeless sealant</strong></u> - for best results use Vittoria Universal Sealer - Ammonia Free &amp; Latex Free.</p>

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
 <td>700x24c</td>
 <td>24-622</td>
 <td>Para</td>
 <td>245 g</td>
 </tr>
 <tr>
 <td>700x26c</td>
 <td>26-622</td>
 <td>Para</td>
 <td>260 g</td>
 </tr>
 <tr>
 <td>700x28c*</td>
 <td>28-622</td>
 <td>Para</td>
 <td>280 g</td>
 </tr>
 <tr>
 <td>700x29cWR*</td>
 <td>29-622</td>
 <td>Para</td>
 <td>290 g</td>
 </tr>
 <tr>
 <td>700x30c*</td>
 <td>30-622</td>
 <td>Para</td>
 <td>285 g</td>
 </tr>
 <tr>
 <td>700x32c*</td>
 <td>32-622</td>
 <td>Para</td>
 <td>305 g</td>
 </tr>
	</tbody>
</table>

<p>*Size 28mm &amp; larger are TSS (Hookless) rim compatible (max pressure 72.5psi).</p>', array['vittoria-700c-corsa-pro-tube-tlr/1.jpg', 'vittoria-700c-corsa-pro-tube-tlr/2.jpg', 'vittoria-700c-corsa-pro-tube-tlr/3.jpg', 'vittoria-700c-corsa-pro-tube-tlr/4.jpg', 'vittoria-700c-corsa-pro-tube-tlr/5.jpg']::text[], 'new', 6, '2025-10-01'::date, false, true),
  ('vittoriarubinoprog', 'Vittoria 700c Rubino TLR', 'vittoria', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Improved Speed, Grip, and Durability. The iconic Rubino reimagined.</p>
<p>The go-to, everyday performance tire at the center of the Vittoria range arrives today, reenergized with new heart and soul. Rubino has long been the champion of lunch rides, town line sprints, and endless wanderings. This latest incarnation of Rubino is available in Tubeless-Ready and Tube-Type variants and delivers more for the rider and a lighter impact on the environment.</p>
<p>The modernized Rubino tread increases speed, grip, and durability by utilizing a smooth center, which transitions smoothly into updated chevron clusters, while retaining the familiar grid texture at the limit. The new Graphene + Silica compound is engineered for long mileage, puncture resistance, high grip, and speed for everyday use.</p>
<p>An all new 100 TPI nylon casing ensures durability, longevity and reliability, while the Anti-puncture belt below the tread guarantees extra protection where needed the most.</p>
<ul>
<li>TWI - Tyre Wear Indicator built into the tread.</li>
<li>Available in both black&amp; tan sidewall colours.</li>
<li>Sizes from 26mm-34mm.</li>
<li>Both TLR and Tube type are Hookless Rim compatible in sizes 28mm and larger.</li>
<li>Product Carbon Footprint (reference size 28-622): TLR 4.10 kg CO2e; tube-type3.26kg CO2e. </li>
</ul>

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
<td>Rubino V 26-622 TLR Full Black G2.0</td>
<td>TLR / Foldable</td>
<td>26-622</td>
<td><strong>NO</strong></td>
<td>Black</td>
<td>Black</td>
<td>305</td>
</tr>
<tr>
<td>Rubino V 28-622 TLR tan-blk-blk G2.0</td>
<td>TLR / Foldable</td>
<td>28-622</td>
<td>YES</td>
<td>Tan</td>
<td>Black</td>
<td>325</td>
</tr>
<tr>
<td>Rubino V 28-622 TLR Full Black G2.0</td>
<td>TLR / Foldable</td>
<td>28-622</td>
<td>YES</td>
<td>Black</td>
<td>Black</td>
<td>325</td>
</tr>
<tr>
<td>Rubino V 30-622 TLR tan-blk-blk G2.0</td>
<td>TLR / Foldable</td>
<td>30-622</td>
<td>YES</td>
<td>Tan</td>
<td>Black</td>
<td>345</td>
</tr>
<tr>
<td>Rubino V 30-622 TLR Full Black G2.0</td>
<td>TLR / Foldable</td>
<td>30-622</td>
<td>YES</td>
<td>Black</td>
<td>Black</td>
<td>345</td>
</tr>
<tr>
<td>Rubino V 32-622 TLR tan-blk-blk G2.0</td>
<td>TLR / Foldable</td>
<td>32-622</td>
<td>YES</td>
<td>Tan</td>
<td>Black</td>
<td>370</td>
</tr>
<tr>
<td>Rubino V 32-622 TLR Full Black G2.0</td>
<td>TLR / Foldable</td>
<td>32-622</td>
<td>YES</td>
<td>Black</td>
<td>Black</td>
<td>370</td>
</tr>
<tr>
<td>Rubino V 34-622 TLR tan-blk-blk G2.0</td>
<td>TLR / Foldable</td>
<td>34-622</td>
<td>YES</td>
<td>Tan</td>
<td>Black</td>
<td>390</td>
</tr>
<tr>
<td>Rubino V 34-622 TLR Full Black G2.0</td>
<td>TLR / Foldable</td>
<td>34-622</td>
<td>YES</td>
<td>Black</td>
<td>Black</td>
<td>390</td>
</tr>
</tbody>
</table>
<p>Compared to its predecessor, the new Rubino Tube-Type delivers remarkable performance gains: 5% improvement in rolling efficiency, 5% in grip, 11% in puncture resistance, 9% in riding comfort, 37% in durability, and a 12% reduction in weight.</p>
<p>Compared to its predecessor, the new Rubino Tubeless-Ready delivers remarkable performance gains: 18% improvement in rolling efficiency, 5% in grip, 21% in puncture resistance, 13% in riding comfort, 37% in durability, and a 10% reduction in weight.</p>', array['vittoriarubinoprog/1.jpg', 'vittoriarubinoprog/2.jpg']::text[], 'new', 7, '2024-09-03'::date, false, true),
  ('vittoria-700c-rubino-tlr', 'Vittoria 700c Rubino V TLR', 'vittoria', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Improved Speed, Grip, and Durability. The iconic Rubino reimagined.</p>

<p>The go-to, everyday performance tire at the center of the Vittoria range arrives today, reenergized with new heart and soul. Rubino has long been the champion of lunch rides, town line sprints, and endless wanderings. This latest incarnation of Rubino is available in Tubeless-Ready and Tube-Type variants and delivers more for the rider and a lighter impact on the environment.</p>

<p>The modernized Rubino tread increases speed, grip, and durability by utilizing a smooth center, which transitions smoothly into updated chevron clusters, while retaining the familiar grid texture at the limit. The new Graphene + Silica compound is engineered for long mileage, puncture resistance, high grip, and speed for everyday use.</p>

<p>An all new 100 TPI nylon casing ensures durability, longevity and reliability, while the Anti-puncture belt below the tread guarantees extra protection where needed the most.</p>

<ul>
	<li>TWI - Tyre Wear Indicator built into the tread.</li>
	<li>Available in both black&amp; tan sidewall colours.</li>
	<li>Sizes from 26mm-34mm.</li>
	<li>Both TLR and Tube type are Hookless Rim compatible in sizes 28mm and larger.</li>
	<li>Product Carbon Footprint (reference size 28-622): TLR 4.10 kg CO2e; tube-type3.26kg CO2e. </li>
</ul>

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
 <td>Rubino V 26-622 TLR Full Black G2.0</td>
 <td>TLR / Foldable</td>
 <td>26-622</td>
 <td><strong>NO</strong></td>
 <td>Black</td>
 <td>Black</td>
 <td>305</td>
 </tr>
 <tr>
 <td>Rubino V 28-622 TLR tan-blk-blk G2.0</td>
 <td>TLR / Foldable</td>
 <td>28-622</td>
 <td>YES</td>
 <td>Tan</td>
 <td>Black</td>
 <td>325</td>
 </tr>
 <tr>
 <td>Rubino V 28-622 TLR Full Black G2.0</td>
 <td>TLR / Foldable</td>
 <td>28-622</td>
 <td>YES</td>
 <td>Black</td>
 <td>Black</td>
 <td>325</td>
 </tr>
 <tr>
 <td>Rubino V 30-622 TLR tan-blk-blk G2.0</td>
 <td>TLR / Foldable</td>
 <td>30-622</td>
 <td>YES</td>
 <td>Tan</td>
 <td>Black</td>
 <td>345</td>
 </tr>
 <tr>
 <td>Rubino V 30-622 TLR Full Black G2.0</td>
 <td>TLR / Foldable</td>
 <td>30-622</td>
 <td>YES</td>
 <td>Black</td>
 <td>Black</td>
 <td>345</td>
 </tr>
 <tr>
 <td>Rubino V 32-622 TLR tan-blk-blk G2.0</td>
 <td>TLR / Foldable</td>
 <td>32-622</td>
 <td>YES</td>
 <td>Tan</td>
 <td>Black</td>
 <td>370</td>
 </tr>
 <tr>
 <td>Rubino V 32-622 TLR Full Black G2.0</td>
 <td>TLR / Foldable</td>
 <td>32-622</td>
 <td>YES</td>
 <td>Black</td>
 <td>Black</td>
 <td>370</td>
 </tr>
 <tr>
 <td>Rubino V 34-622 TLR tan-blk-blk G2.0</td>
 <td>TLR / Foldable</td>
 <td>34-622</td>
 <td>YES</td>
 <td>Tan</td>
 <td>Black</td>
 <td>390</td>
 </tr>
 <tr>
 <td>Rubino V 34-622 TLR Full Black G2.0</td>
 <td>TLR / Foldable</td>
 <td>34-622</td>
 <td>YES</td>
 <td>Black</td>
 <td>Black</td>
 <td>390</td>
 </tr>
	</tbody>
</table>

<p>Compared to its predecessor, the new Rubino Tube-Type delivers remarkable performance gains: 5% improvement in rolling efficiency, 5% in grip, 11% in puncture resistance, 9% in riding comfort, 37% in durability, and a 12% reduction in weight.</p>

<p>Compared to its predecessor, the new Rubino Tubeless-Ready delivers remarkable performance gains: 18% improvement in rolling efficiency, 5% in grip, 21% in puncture resistance, 13% in riding comfort, 37% in durability, and a 10% reduction in weight.</p>', array['vittoria-700c-rubino-tlr/1.jpg', 'vittoria-700c-rubino-tlr/2.jpg', 'vittoria-700c-rubino-tlr/3.png', 'vittoria-700c-rubino-tlr/4.jpg', 'vittoria-700c-rubino-tlr/5.jpg']::text[], 'new', 9, '2025-10-01'::date, false, true),
  ('vittoria-corsa-pro-black-ltd-edition', 'Vittoria Corsa Pro BLACK Ltd Edition', 'vittoria', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>Limited edition <strong>ALL BLACK</strong> Corsa Pro. Black like looking into a deep dark abyss. Set off with stunning metallic silver graphics.</p>

<p>Ultimate cornering grip in wet or dry conditions. Reinforced puncture resistance. A supple construction that reduces rolling resistance and makes chattery chip seal feel like freshly laid tarmac. The Corsa PRO combines the convenience of a tubeless-ready clincher platform with the pedigree of the world’s most successful racing tyre, proven in the rarefied air of France’s highest passes and the punchy finales of the classics alike.<br>
Grand tours, monuments, one-days, criteriums – the Corsa PRO Tubeless-Ready is the platform of choice for the world’s strongest riders claiming the highest podium steps in the most prestigious races. And the only things more impressive than its palmarès are its sensation of speed and unequaled ride quality.</p>

<p>Engineered with the revolutionary, WorldTour-proven technology of Graphene + Silica compounds and the timeless perfection of a 320 TPI cotton-blend casing. Electrically cured to eliminate seams and increase aerodynamics. The Corsa provides an impossibly supple connection to the road, erasing rolling resistance, denying road debris, and inspiring confidence through sweeping corners.</p>

<ul>
	<li>Race Formulation compound powered by Graphene + Silica sets the standard in speed and grip.</li>
	<li>Unique Cotton Casing suppleness delivers World Tour proven performance, while also improving cornering control.</li>
	<li>Anti-puncture belt ensures extra protection where needed the most.</li>
	<li>Limited edition <strong>ALL BLACK</strong> colour.</li>
	<li>Made in a CarbonNeutral® operations certified factory.</li>
	<li>Hookless Rim Compatible.</li>
	<li>Requires Ammonia Free tubeless sealant.</li>
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
 <td>700x28c</td>
 <td>28-622</td>
 <td>All Black LTD</td>
 <td>280 g</td>
 </tr>
 <tr>
 <td>700x30c</td>
 <td>30-622</td>
 <td>All Black LTD</td>
 <td>285 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-corsa-pro-black-ltd-edition/1.jpg', 'vittoria-corsa-pro-black-ltd-edition/2.jpg', 'vittoria-corsa-pro-black-ltd-edition/3.jpg', 'vittoria-corsa-pro-black-ltd-edition/4.jpg', 'vittoria-corsa-pro-black-ltd-edition/5.jpg']::text[], 'new', 2, '2026-06-25'::date, false, true),
  ('vittoria-corsa-pro-pink-ltd-edition', 'Vittoria Corsa Pro PINK Ltd Edition', 'vittoria', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>The most winning tubeless ready road tire ever made - now dressed in Pink!</p>

<p>Race-proven at the highest level, the Corsa PRO Tubeless-Ready is a premium racing bike tire trusted by the world’s strongest riders when performance matters most. From demanding mountain passes to the explosive finales of the Classics, this high-performance road bike tire delivers exceptional grip in all conditions, a fast-rolling ride, and a lightweight feel.<br>
<br>
Its supple construction reduces rolling resistance while absorbing road vibrations, transforming every pedal stroke into speed and control you can feel.<br>
Engineered for modern performance, this tubeless-ready tire combines reliability and race-day efficiency, giving you the confidence to push harder, corner faster, and ride further.<br>
<br>
Inspired by the color of Italy’s most iconic racing moments, it''s now available in a special-edition <strong>Pink</strong> sidewall.</p>

<ul>
	<li>Race Formulation compound powered by Graphene + Silica sets the standard in speed and grip.</li>
	<li>Unique Cotton Casing suppleness delivers World Tour proven performance, while also improving cornering control.</li>
	<li>Anti-puncture belt ensures extra protection where needed the most.</li>
	<li>Limited edition in <strong>Pink </strong>sidewall colour.</li>
	<li>Made in a CarbonNeutral® operations certified factory.</li>
	<li>Hookless Rim Compatible.</li>
	<li>Requires Ammonia Free tubeless sealant.</li>
</ul>

<p>Product Carbon Footprint: 1.8 kg CO2e.</p>

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
 <td>700x28</td>
 <td>28-622</td>
 <td>Pink</td>
 <td>280 g</td>
 </tr>
 <tr>
 <td>700x30</td>
 <td>30-622</td>
 <td>Pink</td>
 <td>285 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-corsa-pro-pink-ltd-edition/1.png', 'vittoria-corsa-pro-pink-ltd-edition/2.png', 'vittoria-corsa-pro-pink-ltd-edition/3.png', 'vittoria-corsa-pro-pink-ltd-edition/4.jpg', 'vittoria-corsa-pro-pink-ltd-edition/5.jpg']::text[], 'new', 2, '2026-05-19'::date, false, true),
  ('vittoria-corsa-pro-red-ltd-edition', 'Vittoria Corsa Pro RED Ltd Edition', 'vittoria', 'wheels-tyres-tubes', 'tubeless-tyres', '<p>The most winning tubeless ready road tyre ever made - now in a special Spanish <strong>Red</strong> Ltd Edition!</p>

<p>Ultimate cornering grip in wet or dry conditions. Reinforced puncture resistance. A supple construction that reduces rolling resistance and makes chattery chip seal feel like freshly laid tarmac.<br>
<br>
Now dressed in a bold special Spanish <strong>Red</strong> Edition, the Corsa PRO brings the same race-proven pedigree with a look that celebrates Spain’s grand tour.<br>
<br>
From the brutal climbs of the Angliru to the sun-baked sprints into Madrid, the Corsa PRO Tubeless-Ready is the platform of choice for the world’s strongest riders claiming the highest podium steps in cycling’s most prestigious races. Its only rivals: its blazing speed and unequaled ride quality.</p>

<ul>
	<li>Race Formulation compound powered by Graphene + Silica sets the standard in speed and grip.</li>
	<li>Unique Cotton Casing suppleness delivers World Tour proven performance, while also improving cornering control.</li>
	<li>Anti-puncture belt ensures extra protection where needed the most.</li>
	<li>Limited edition in <strong>RED </strong>sidewall colour.</li>
	<li>Made in a CarbonNeutral® operations certified factory.</li>
	<li>Hookless Rim Compatible.</li>
	<li>Requires Ammonia Free tubeless sealant.</li>
</ul>

<p>Product Carbon Footprint: 1.8 kg CO2e.</p>

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
 <td>700x28</td>
 <td>28-622</td>
 <td>Red</td>
 <td>280 g</td>
 </tr>
	</tbody>
</table>', array['vittoria-corsa-pro-red-ltd-edition/1.jpg', 'vittoria-corsa-pro-red-ltd-edition/2.jpg', 'vittoria-corsa-pro-red-ltd-edition/3.jpg', 'vittoria-corsa-pro-red-ltd-edition/4.jpg', 'vittoria-corsa-pro-red-ltd-edition/5.jpg']::text[], 'new', 1, '2026-06-25'::date, false, true),

  -- ---- wheels-tyres-tubes · tubeless-valves ----
  ('dynamic-barkeeper-tubeless-valves', 'Dynamic Barkeeper Tubeless Valves', 'dynamic-bike-care', 'wheels-tyres-tubes', 'tubeless-valves', '<p>Barkeeper Tubeless Valves are the perfect choice for all tubeless set-ups:</p><br><p>✅ Compatible with all wheel brands, rim-shapes and tire inserts<br>✅ Made from ultra-lightweight and super strong 7075 series aluminium<br>✅ Easy installation with the 4mm Allen slot and included valve core tool</p><br><h3><strong>Description</strong></h3><br><p>This complete Barkeeper Valve kit is the best choice for all tubeless set-ups. The valves are easy to install and engineered to be 100% compatible with all wheel brands and types. CNC-machined from aerospace grade 7075 series aluminium, with an innovative 5-hole design for optimal airflow and full insert compatibility. The 4mm Allen key slot allows for easy assembly and removal of the valve. Temperature, UV, and ozone resistant. Works with all Presta-style floor and hand pumps.</p><br><p>In this kit:</p><br><ul>
<br><li>2 complete tubeless valves (including: black valve cores, ultralight valve caps, rubber bases, o-rings and lockrings)</li>
<br><li>2 sets of alternative rubber bases, ensuring 100% compatibility</li>
<br><li>2 additional spare black valve cores</li>
<br><li>1 purple ultralight valve cap with integrated valve core tool</li>
<br>
</ul><br><h3><strong>Installation</strong></h3><br><ol>
<br><li>Remove the valve cap, lockring and o-ring from the valve stem.</li>
<br><li>Select the correct rubber base for your rim. Is your rim curved, use the circular rubber base and select the right width. Is your rim square; use the square rubber base. Make sure the base is slid all the way to the bottom of the valve before installation.</li>
<br><li>Push the valve through the valve hole in the rim from the outside towards the center. Place the o-ring over the tip of the valve and slide down until it sits on the rim.</li>
<br><li>Thread the lockring onto the valve and tighten it against the o-ring and the rim.</li>
<br><li>Use a 4mm Allen Key in the base of the valve to hold it on the inside and push the base of the valve against the rim bed. At the same time tighten the lockring until it is hand tight. It is okay if the o-ring is squeezes out slightly, this indicates an airtight seal. Do not overtighten the lockring to avoid leaks.</li>
<br><li>If you choose to ride with valve caps, choose either the 2 black ones or replace one with the purple valve cap with the core removal feature on your other wheel.</li>
<br>
</ol><br><p><strong>Easy installation and maintenance<br></strong>The 4mm Allen key slot in the base of the Barkeeper Valves ensures easy installation and a leak-free tubeless set-up. The included valve cap with the integrated valve-core tool, enables fast installation and refill without the need for additional tools.</p><br><p><strong>Aerospace grade 7075 aluminium<br></strong>Barkeeper Valves are extremely light, and super strong. The use of 7075 series aluminium keeps rotational weight to a minimum, whilst achieving maximum performance, durability, and impact resistance.</p><br><p><strong>Maximum compatibility</strong><br>Barkeeper Valves come with 3 types of rubber bases, ensuring a leak-free seal with every rim shape. The 5-hole design ensures optimal airflow and sealant dispersion, even when used in combination with a tire insert.</p>', array['dynamic-barkeeper-tubeless-valves/1.png', 'dynamic-barkeeper-tubeless-valves/2.png', 'dynamic-barkeeper-tubeless-valves/3.png', 'dynamic-barkeeper-tubeless-valves/4.png', 'dynamic-barkeeper-tubeless-valves/5.png']::text[], 'new', 2, '2024-05-15'::date, false, false),
  ('milkit-valve-packs-1', 'MilKit Valve Packs', 'milkit', 'wheels-tyres-tubes', 'tubeless-valves', '<p>The solution to combat sealant drying out or escaping! With other tubeless tire valve systems you need to remove the tire to check if enough sealant remains, with milKit you can simply remove the valve core and insert the syringe to check. No mess and faster results! Patented milKit presta bike valves are made in Germany from anodized high quality aluminum alloy and high performance rubber for the smart flaps. milKit valves can be used with most sealants, but we recommend milKit sealant. This has been specially designed for best results with these valves. Valves available in 35mm, 45mm, 55mm &amp; 75mm versions.</p>', array['milkit-valve-packs-1/1.jpg', 'milkit-valve-packs-1/2.jpg', 'milkit-valve-packs-1/3.jpg']::text[], 'new', 2, '2024-05-15'::date, false, false),
  ('stans-notubes-100mm-alloy-universal-valve', 'STAN''S NOTUBES - 100MM ALLOY UNIVERSAL VALVE', 'stans', 'wheels-tyres-tubes', 'tubeless-valves', '<p>Our lightweight aluminum valve stems are half the weight of our standard brass valves.</p>
<ul>
<li>Secure round base is compatible with most tubeless rims and a perfect fit for all Stan’s BST and BST-R rims</li>
<li>Removable valve core makes adding sealant easy</li>
<li>Fits up to 8mm valve hole</li>
<li>Available as a pair only</li>
</ul>', array['stans-notubes-100mm-alloy-universal-valve/1.jpg', 'stans-notubes-100mm-alloy-universal-valve/2.jpg']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('stans-notubes-35mm-alloy-universal-valve', 'STAN''S NOTUBES - 35MM ALLOY UNIVERSAL VALVE', 'stans', 'wheels-tyres-tubes', 'tubeless-valves', '<p>Our lightweight aluminum valve stems are half the weight of our standard brass valves.</p>
<ul>
<li>Secure round base is compatible with most tubeless rims and a perfect fit for all Stan’s BST and BST-R rims</li>
<li>Removable valve core makes adding sealant easy</li>
<li>Fits up to 8mm valve hole</li>
<li>Available as a pair only</li>
</ul>', array['stans-notubes-35mm-alloy-universal-valve/1.jpg', 'stans-notubes-35mm-alloy-universal-valve/2.jpg', 'stans-notubes-35mm-alloy-universal-valve/3.jpg', 'stans-notubes-35mm-alloy-universal-valve/4.jpg', 'stans-notubes-35mm-alloy-universal-valve/5.jpg']::text[], 'new', 5, '2024-05-15'::date, false, false),
  ('stans-notubes-44mm-alloy-universal-valve', 'STAN''S NOTUBES - 44MM ALLOY UNIVERSAL VALVE', 'mr-rider', 'wheels-tyres-tubes', 'tubeless-valves', '<p>Our lightweight aluminum valve stems are half the weight of our standard brass valves.</p>
<ul>
<li>Secure round base is compatible with most tubeless rims and a perfect fit for all Stan’s BST and BST-R rims</li>
<li>Removable valve core makes adding sealant easy</li>
<li>Fits up to 8mm valve hole</li>
<li>Available as a pair only</li>
</ul>

<p><br><br></p>', array['stans-notubes-44mm-alloy-universal-valve/1.jpg', 'stans-notubes-44mm-alloy-universal-valve/2.jpg', 'stans-notubes-44mm-alloy-universal-valve/3.jpg', 'stans-notubes-44mm-alloy-universal-valve/4.jpg', 'stans-notubes-44mm-alloy-universal-valve/5.jpg']::text[], 'new', 3, '2026-08-10'::date, false, false),
  ('stans-notubes-55mm-universal-valve', 'STAN''S NOTUBES - 55MM UNIVERSAL VALVE', 'mr-rider', 'wheels-tyres-tubes', 'tubeless-valves', '<p>The original and still the best tubeless valve stem for most rims and a perfect fit for all Stan’s rim models.</p>
<ul>
<li>Durable brass construction</li>
<li>Removable valve core makes adding sealant easy</li>
<li>Fits up to 8mm valve hole</li>
<li>Available as a pair only</li>
</ul>', array['stans-notubes-55mm-universal-valve/1.jpg', 'stans-notubes-55mm-universal-valve/2.jpg']::text[], 'new', 0, '2024-05-15'::date, false, false),
  ('stans-notubes-44mm-universal-valve', 'STAN''S NOTUBES - PRESTA VALVE CORE', 'stans', 'wheels-tyres-tubes', 'tubeless-valves', '<p>The original and still the best tubeless valve stem for most rims and a perfect fit for all Stan’s rim models.</p>
<ul>
<li>Durable brass construction</li>
<li>Removable valve core makes adding sealant easy</li>
<li>Fits up to 8mm valve hole</li>
<li>Sold as individual valves, pairs or 25 piece shop pack</li>
</ul>', array['stans-notubes-44mm-universal-valve/1.jpg', 'stans-notubes-44mm-universal-valve/2.jpg', 'stans-notubes-44mm-universal-valve/3.jpg']::text[], 'new', 4, '2024-05-15'::date, false, false),

  -- ---- wheels-tyres-tubes · tubular-tyres ----
  ('vittoria-pista-control-track-clincher-tyre', 'Vittoria Pista Control Track Clincher Tyre', 'vittoria', 'wheels-tyres-tubes', 'tubular-tyres', '<p>Strong endurance track tire, suitable for rougher track surfaces like concrete. The Pista Control features a strong Corespun 290TPI casing, and a Graphene enhanced compound for a combination of low rolling resistance and durability. Shares the modern asymetrical tread design of the Pista, for grip on banked tracks. Pair this with a Vittoria latex tube, and experience near tubular performance, with clincher convenience.</p>
<ul>
<li>Asymmetric tread design secure grip on banked tracks.</li>
<li>Functionalized GRAPHENE 2.0 compound allows for increased durability.</li>
<li>Reinforced casing for outdoor track use.</li>
</ul>
<p>700x23c Weight 210g</p>
<p><a href="https://www.vittoria.com/ap/graphene-technology" rel="noopener nofollow" target="_blank">G2.0 Graphene Enhanced Rubber Compound</a></p>', array['vittoria-pista-control-track-clincher-tyre/1.png']::text[], 'new', 1, '2023-02-16'::date, false, true),
  ('vittoria-pista-control-track-tubular-tyre', 'Vittoria Pista Control Track Tubular Tyre', 'vittoria', 'wheels-tyres-tubes', 'tubular-tyres', '<p>Strong endurance track tire, suitable for rougher track surfaces like concrete. The Pista Control features a strong Corespun 290TPI casing, and a Graphene enhanced compound for a combination of low rolling resistance and durability. Shares the modern asymetrical tread design of the Pista, for grip on banked tracks. </p>
<ul>
<li>Asymmetric tread design secure grip on banked tracks.</li>
<li>Functionalized GRAPHENE 2.0 compound allows for increased durability.</li>
<li>Reinforced casing for outdoor track use.</li>
<li>23-28". Weight 250g.</li>
</ul>
<p><a href="https://www.vittoria.com/ap/graphene-technology" rel="noopener nofollow" target="_blank">G2.0 Graphene Enhanced Rubber Compound</a></p>', array['vittoria-pista-control-track-tubular-tyre/1.png']::text[], 'new', 1, '2023-02-16'::date, false, true),
  ('vittoria-pista-oro-track-tubular-tyre', 'Vittoria Pista ORO Track Tubular Tyre', 'vittoria', 'wheels-tyres-tubes', 'tubular-tyres', '<p>New for Tokyo 2020 (2021) Pista ORO is the next evolution for our famous Pista range of track tubulars. With our thinnest tread strip yet and lighter, more supple base tape and a new unique 1c Graphene2.0 compound - Just faster. Enough said.</p>
<p>Finishes in track racing often come down to fractions of a second. When you’ve done the work, and you are at the starting line, be confident knowing that the Vittoria Pista Oro removes any barrier between you and your new PR. The Oro utilizes a special version of Vittoria’s groundbreaking Graphene compound technology, specifically made for track applications, coupled with the trademark supple cotton casing. This combination broke records during testing, before the product even hit the market. Now, Italy’s secret weapon is now available for track enthusiasts everywhere.</p>
<ul>
<li>All-slick tread for indoor, wooden tracks.</li>
<li>For your ultimate performance.</li>
<li>Functionalized 1c GRAPHENE 2.0 ORO compound allows for minimum rolling resistance.</li>
<li>Cotton T 320TPI casing</li>
<li>23-28". Weight 165g.</li>
</ul>', array['vittoria-pista-oro-track-tubular-tyre/1.jpg']::text[], 'new', 1, '2025-04-15'::date, false, true),
  ('vittoria-pista-speed-track-tubular', 'Vittoria Pista Speed Track Tubular', 'vittoria', 'wheels-tyres-tubes', 'tubular-tyres', '<p>Super fast tubular track tire, designed to win all track disciplines at the Olympic Games and beyond. This tubular is all about SPEED. By using an all-slick tread design, optimized for indoor wooden tracks, paired with a 320 TPI Corespun-T casing, the Pista Speed delivers the ultimate in low rolling resistance. Add to this the proprietary Graphene-enhanced compound, and it''s no wonder that Vittoria is the leader!</p>
<ul>
<li>All-slick tread for indoor, wooden tracks.</li>
<li>Only tubular construction available: the best choice for extreme speed.</li>
<li>Functionalized GRAPHENE 2.0 compound allows for minimum rolling resistance.<br> </li>
<li>19-28". Weight 140g.</li>
<li>23-28". Weight 165g.</li>
</ul>
<p><a href="https://www.vittoria.com/ap/graphene-technology" rel="noopener nofollow" target="_blank">G2.0 Graphene Enhanced Rubber Compound</a></p>', array['vittoria-pista-speed-track-tubular/1.png']::text[], 'new', 2, '2023-02-16'::date, false, true)
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
