-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 07:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astrodatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `EditDateTime` datetime DEFAULT NULL,
  `CreationDateTime` datetime DEFAULT NULL,
  `IsActive` bit(1) NOT NULL,
  `AvatarURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Name`, `Surname`, `Email`, `Address`, `Phone`, `Notes`, `EditDateTime`, `CreationDateTime`, `IsActive`, `AvatarURL`) VALUES
(12345, 'John', 'Snow', 'snow@mail.com', 'Haunted Forest, Behind the Wall', '785464758', 'John Snow , Real King in the North', '2023-05-31 17:15:14', '2023-05-31 17:15:14', b'1', 'https://iili.io/HUrcHXV.jpg'),
(23456, 'Daenerys', 'Targaryen', 'dany@mail.com', 'Meereen, Pyramid', '748375849', 'Daenerys Stormborn of House Targaryen, the First of Her Name, Queen of the Andals and the First Men, Protector of the Seven Kingdoms, the Mother of Dragons, the Khaleesi of the Great Grass Sea, the Unburnt, the Breaker of Chains', '2023-05-27 11:59:35', '2023-05-27 11:59:35', b'1', 'https://iili.io/HUrc9zQ.jpg'),
(23457, 'Khal', 'Drogo', 'drogo@mail.com', 'Vaes Dothrak', '43784738', 'Khal of Khals', '2023-05-27 13:07:04', '2023-05-27 13:07:04', b'1', 'https://iili.io/HUrapmx.jpg'),
(23458, 'dea', 'dea', NULL, NULL, NULL, NULL, '2023-05-17 09:25:24', '2023-05-17 00:00:00', b'0', NULL),
(23459, 'Sansa', 'Stark', 'sansa@gmail.com', 'Winterfell', '748364839', 'Queen in the North', '2023-05-30 07:34:02', '2023-05-30 07:34:02', b'1', 'https://iili.io/HrWZwMX.jpg'),
(23460, 'Tyrion', 'Lannister', 'tyrla@gmail.com', 'Meereen', '746254748', 'Just Tyrion', '2023-05-30 07:35:05', '2023-05-30 07:35:05', b'1', 'https://iili.io/HrWZXtI.jpg'),
(23461, 'Tormund', 'Giantsbane', 'tormund@gmail.com', 'Behind the Wall', '226473728', 'Tormund', '2023-05-30 07:35:47', '2023-05-30 07:35:47', b'1', 'https://iili.io/HrWZjnt.jpg'),
(23462, 'demo', 'demo', NULL, NULL, NULL, NULL, '2023-05-31 17:15:34', '2023-05-31 17:15:31', b'0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Code` tinytext NOT NULL,
  `Price` double(10,2) NOT NULL,
  `ImageURL` varchar(255) NOT NULL,
  `ContentHTML` longtext DEFAULT NULL,
  `IdCategory` int(11) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `EditDateTime` datetime DEFAULT NULL,
  `CreationDateTime` datetime DEFAULT NULL,
  `IsActive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Name`, `Code`, `Price`, `ImageURL`, `ContentHTML`, `IdCategory`, `Description`, `EditDateTime`, `CreationDateTime`, `IsActive`) VALUES
(12222, 'Canon EOS 2000D', '3232334', 889.00, 'https://iili.io/HSzbrT7.jpg', 'Some content', 22233, 'Canon EOS 2000D 2023 Edition', '2023-05-30 09:34:21', '2023-05-16 00:00:00', b'0'),
(12223, 'Fujifilm Tripod Pro 2', '3748273', 120.00, 'https://iili.io/H8ItVG1.jpg', '<h1>Fujifilm Tripod Pro 2 - Professional Tripod</h1><p>The Fujifilm Tripod Pro 2 is a versatile and sturdy tripod designed for professional photographers and\r\n    videographers. With its high-quality construction and advanced features, this tripod provides excellent stability\r\n    and support for capturing sharp and steady images and videos.</p>\r\n\r\n<p>The Tripod Pro 2 features a durable aluminum alloy construction, making it lightweight yet strong enough to\r\n    withstand heavy camera setups. It offers a maximum load capacity of up to 22 pounds (10 kilograms), allowing you\r\n    to mount a variety of cameras and lenses with ease.</p>\r\n\r\n<p>The tripod\'s adjustable legs and center column enable flexible positioning and height adjustment, allowing you to\r\n    achieve the desired shooting angle and perspective. The quick-release plate system ensures quick and secure\r\n    attachment and detachment of your camera, saving you valuable time during setup and breakdown.</p>\r\n\r\n<p>With the integrated ball head, the Tripod Pro 2 provides smooth and precise 360-degree panoramic rotation and\r\n    90-degree vertical tilt, enabling you to capture stunning panoramic shots and achieve creative compositions. The\r\n    built-in bubble level helps you ensure accurate leveling of the tripod for perfectly straight horizons.</p>\r\n\r\n<p>The Tripod Pro 2 features rubberized feet with retractable spikes, providing excellent stability on various\r\n    surfaces and enhancing grip on uneven terrain. The tripod also includes a removable hook for hanging additional\r\n    weight, increasing stability in windy conditions.</p>\r\n\r\n<p>Compact and lightweight, the Fujifilm Tripod Pro 2 is easy to transport and store, making it an ideal companion\r\n    for on-the-go photographers and videographers. Whether you\'re shooting landscapes, portraits, or long-exposure\r\n    images, this professional tripod delivers reliable performance and ensures sharp, blur-free results.</p>', 23343, 'The Fujifilm Tripod Pro 2 is a versatile and sturdy tripod designed for professional photographers and\r\n    videographers. With its high-quality construction and advanced features, this tripod provides excellent stability\r\n    and support for capturing sharp and steady images and videos.', '2023-05-30 09:36:54', '2023-05-16 00:00:00', b'1'),
(12224, 'Demo', '3213231', 1213.00, '3123', '312', 22233, '312', '2023-05-16 19:39:00', '2023-05-16 00:00:00', b'0'),
(12225, 'Nikon Lens Tele 350mm', '4343435', 3599.00, 'https://iili.io/HSzb4j9.jpg', '<h1>Nikon Telephoto Lens 350mm</h1>\r\n  <img src=\"nikon_lens_350mm.jpg\" alt=\"Nikon Telephoto Lens 350mm\" width=\"400\">\r\n  <p>The Nikon Telephoto Lens 350mm is a high-quality telephoto lens designed for Nikon DSLR cameras. It provides a focal length of 350mm, allowing photographers to capture distant subjects with exceptional detail and clarity.</p>\r\n  <p>Key features of the Nikon Telephoto Lens 350mm:</p>\r\n  <ul>\r\n    <li>Aperture range: f/2.8 - f/22</li>\r\n    <li>Advanced optical elements for superior image quality</li>\r\n    <li>Image stabilization technology for sharp handheld shots</li>\r\n    <li>Fast and accurate autofocus system</li>\r\n    <li>Durable construction with weather-sealing</li>\r\n    <li>Compatible with Nikon F-mount DSLR cameras</li>\r\n    <li>Includes lens hood and protective carrying case</li>\r\n  </ul>\r\n  <p>Whether you\'re shooting wildlife, sports, or any other type of telephoto photography, the Nikon Telephoto Lens 350mm delivers exceptional performance and stunning results.</p>', 23342, 'The Nikon Telephoto Lens 350mm is a high-quality telephoto lens designed for Nikon DSLR cameras. It provides a focal length of 350mm, allowing photographers to capture distant subjects with exceptional detail and clarity.', '2023-05-16 00:00:00', '2023-05-16 00:00:00', b'1'),
(12226, 'frs', 'frs', 4.00, 'fre', 'fre', 22233, 'fre', '2023-05-17 09:50:38', '2023-05-17 00:00:00', b'0'),
(12227, 'Nikon Lens EF-S 14mm', '32323443', 399.00, 'https://iili.io/HUgNrQe.jpg', '<p>\r\n	When it comes to capturing expansive landscapes, architectural marvels, or astrophotography, the Nikon Lens 14mm is an exceptional choice for photographers who desire a wider perspective. This lens allows you to see the world in a whole new way, capturing scenes with breathtaking clarity and detail.\r\n</p>\r\n\r\n<p>\r\n	The Nikon Lens 14mm features a wide-angle focal length of 14mm, providing an impressively broad field of view. This ultra-wide perspective enables you to fit more of the scene into the frame, allowing for stunning compositions and emphasizing the vastness of landscapes or the grandeur of architectural structures.\r\n</p>\r\n\r\n<p>\r\n	With its advanced optics, the Nikon Lens 14mm delivers outstanding image quality from edge to edge. The lens is built with precision and utilizes high-quality glass elements to minimize distortions, aberrations, and chromatic aberrations. This ensures that your images are sharp, vibrant, and free from unwanted visual artifacts.\r\n</p>\r\n<div class=\"image\">\r\n	<img src=\"https://cdn11.bigcommerce.com/s-1nktaieb4v/images/stencil/1280x1280/products/34742/70215/sea-and-sea-nikon-nikkor-14mm-f2.8d-lens-focus-gear__21226.1660162315.jpg?c=1\" alt=\"Nikon Lens 14mm\" width=\"500\">\r\n</div>\r\n<p>\r\n	One notable feature of the Nikon Lens 14mm is its fast aperture. With a maximum aperture of f/2.8, this lens excels in low-light conditions, allowing you to capture stunning images even in challenging lighting situations. The wide aperture also enables you to achieve a shallow depth of field, isolating your subject while maintaining the vastness of the surrounding environment.\r\n</p>\r\n\r\n<p>\r\n	The lens is designed with Nikon\'s superior build quality, ensuring durability and reliability in various shooting conditions. It features a robust construction that is resistant to dust and moisture, making it suitable for outdoor adventures and demanding environments.\r\n</p>\r\n\r\n<p>\r\n	Whether you are a landscape photographer, an architectural enthusiast, or an astrophotographer, the Nikon Lens 14mm opens up a world of creative possibilities. It allows you to capture stunning wide-angle shots that convey a sense of depth and immersion, transporting viewers into the heart of the scene.\r\n</p>\r\n\r\n<p>\r\n	In conclusion, the Nikon Lens 14mm is a remarkable tool for photographers who wish to explore and capture the world in a wider perspective. Its ultra-wide angle, exceptional image quality, and robust build make it an excellent choice for various genres of photography. So, grab your Nikon Lens 14mm and embark on an adventure to capture awe-inspiring images that showcase the beauty of the world.\r\n</p>', 23342, 'Nikon Lens EF-S Mount 14mm is the best for the panoramic shots.', '2023-05-17 09:58:46', '2023-05-17 00:00:00', b'1'),
(12228, 'gtrtg', 'g454g545g', 545.00, 'https://iili.io/HgM5RzG.jpg', 'frere', 23343, 'frere', '2023-05-30 09:41:07', '2023-05-27 06:41:27', b'0'),
(12229, 'Canon 2000D', '5465464564', 900.00, 'https://iili.io/HSzbrT7.jpg', '<h2>Description</h2>\r\n		<p>The Canon 2000D is an entry-level DSLR camera that offers a range of features for beginners to photography. With an 18 megapixel APS-C CMOS sensor and DIGIC 4+ image processor, the camera produces high quality images with vivid colors and sharp details. It has a wide ISO range of 100-6400 (expandable to 12800), which allows for shooting in various lighting conditions.</p>\r\n		<ul>\r\n			<li>18 megapixel APS-C CMOS sensor</li>\r\n			<li>DIGIC 4+ image processor</li>\r\n			<li>Full HD 1080p video recording</li>\r\n			<li>3.0-inch LCD screen</li>\r\n			<li>Built-in Wi-Fi and NFC connectivity</li>\r\n			<li>Scene Intelligent Auto mode</li>\r\n			<li>Continuous shooting at up to 3 frames per second</li>\r\n		</ul>\r\n		<h2>In the Box</h2>\r\n		<ul>\r\n			<li>Canon 2000D camera body</li>\r\n			<li>EF-S 18-55mm f/3.5-5.6 III lens</li>\r\n			<li>Battery pack and charger</li>\r\n			<li>Neck strap</li>\r\n			<li>Camera bag</li>\r\n			<li>Manual and warranty card</li>\r\n		</ul>\r\n		<h2>Conclusion</h2>\r\n		<p>The Canon 2000D is an excellent choice for beginners to photography who are looking for a reliable and affordable camera. With its easy-to-use features and high-quality image output, it offers a great value for its price. Plus, its built-in Wi-Fi and NFC connectivity make it easy to share your photos and videos with friends and family. </p>', 22233, 'The Canon 2000D, also known as the Canon EOS Rebel T7, is an entry-level digital single-lens reflex (DSLR) camera designed for beginners and photography enthusiasts. It was released in early 2018 as a successor to the Canon 1300D (Rebel T6). The camera features a compact and lightweight design, making it easy to handle and carry.', '2023-05-30 09:34:11', '2023-05-30 09:34:11', b'1'),
(12230, 'Canon RF 135mm', '56464564', 2300.00, 'https://iili.io/HgM5Ten.jpg', '<h1>Canon RF 135mm Lens</h1><h2 style=\"margin-top: 20px;\">Description</h2>\r\n		<p style=\"line-height: 1.5; margin-bottom: 10px;\">The Canon RF 135mm lens is a high-performance telephoto prime lens designed for use with Canon\'s full-frame mirrorless cameras. It features a fast maximum aperture of f/1.8, which allows for exceptional low light performance and beautiful bokeh. The lens also includes Canon\'s advanced optical technology, such as UD (Ultra-low Dispersion) and Super Spectra coatings, to ensure sharpness and clarity in every shot.</p>\r\n		<ul style=\"margin: 0; padding: 0; list-style: none; margin-bottom: 10px;\">\r\n			<li style=\"margin-bottom: 5px;\">Fast f/1.8 maximum aperture</li>\r\n			<li style=\"margin-bottom: 5px;\">RF mount compatible with Canon full-frame mirrorless cameras</li>\r\n			<li style=\"margin-bottom: 5px;\">13 elements in 9 groups, including UD lens element</li>\r\n			<li style=\"margin-bottom: 5px;\">Super Spectra coating for reduced flare and ghosting</li>\r\n			<li style=\"margin-bottom: 5px;\">Minimum focusing distance of 0.85m (2.8ft)</li>\r\n			<li style=\"margin-bottom: 5px;\">Filter size of 67mm</li>\r\n		</ul>\r\n		<h2 style=\"margin-top: 20px;\">In the Box</h2>\r\n		<ul style=\"margin: 0; padding: 0; list-style: none; margin-bottom: 10px;\">\r\n			<li style=\"margin-bottom: 5px;\">Canon RF 135mm lens</li>\r\n			<li style=\"margin-bottom: 5px;\">Lens cap (E-67 II)</li>\r\n			<li style=\"margin-bottom: 5px;\">Lens dust cap (RF)</li>\r\n			<li style=\"margin-bottom: 5px;\">Lens hood (ET-88B)</li>\r\n			<li style=\"margin-bottom: 5px;\">Lens case (LP1222)</li>\r\n			<li style=\"margin-bottom: 5px;\">User manual</li>\r\n		</ul>\r\n		<h2 style=\"margin-top: 20px;\">Conclusion</h2>\r\n		<p style=\"line-height: 1.5; margin-bottom: 10px;\">The Canon RF 135mm lens is a must-have for portrait photographers who want to achieve stunning results with their Canon full-frame mirrorless cameras. With its fast maximum aperture, advanced optical technology, and excellent build quality, it offers exceptional performance and versatility. Whether you\'re shooting in low light, capturing portraits, or creating stunning bokeh, the Canon RF 135mm lens is a top choice for serious photographers.</p>', 23342, 'The Canon RF 135mm lens is a high-performance telephoto prime lens designed for Canon\'s RF mount cameras. With a focal length of 135mm, it is ideal for capturing subjects from a distance and creating beautiful portraits with a shallow depth of field.', '2023-05-30 09:35:16', '2023-05-30 09:35:16', b'1'),
(12231, 'AF Nikkor 24-50mm f/1:3.3-4.5', '5434353453', 899.00, 'https://iili.io/Hr7PgmN.jpg', '<h1>AF Nikkor Lens 20-35mm</h1> <p>     The AF Nikkor Lens 20-35mm is a versatile wide-angle zoom lens designed for Nikon cameras. With its focal length range of 20mm to 35mm, it offers a wide field of view, making it ideal for landscape, architectural, and interior photography.   </p>   <p>     This lens features autofocus capabilities, allowing for quick and accurate focusing on your subject. It also has a maximum aperture of f/2.8, which means it performs well in low-light conditions and allows for shallow depth of field effects.   </p>   <p>     The lens is built with high-quality optics to deliver sharp and detailed images. It utilizes Nikon\'s advanced lens technologies to minimize distortion, chromatic aberration, and flare, ensuring excellent image quality across the entire zoom range.   </p>   <p>     The AF Nikkor Lens 20-35mm is constructed with a durable and lightweight design, making it easy to carry and handle. It features a sturdy lens barrel and a reliable autofocus system, enabling you to capture your shots with confidence.   </p>   <p>     Whether you\'re a professional photographer or an enthusiast, the AF Nikkor Lens 20-35mm is a reliable choice for wide-angle photography. Its versatile zoom range and high-performance optics make it a valuable addition to your camera gear.   </p>', 23342, 'The AF Nikkor Lens 20-35mm is a versatile wide-angle zoom lens designed for Nikon cameras. With its focal length range of 20mm to 35mm, it offers a wide field of view, making it ideal for landscape, architectural, and interior photography.', '2023-05-30 09:41:46', '2023-05-30 09:41:46', b'1'),
(12232, 'iOptron SkyGuider Pro iPolar', '54354534', 699.00, 'https://iili.io/Hr74ohX.jpg', '<h1>iOptron SkyGuider Pro iPolar</h1><p>The iOptron SkyGuider Pro iPolar is a portable camera tracking mount designed for astrophotography. It offers a compact and lightweight solution for capturing stunning long-exposure images of the night sky. The SkyGuider Pro iPolar features the innovative iPolar electronic polar scope, which simplifies polar alignment and ensures accurate tracking. With its user-friendly design and advanced features, this camera tracker is suitable for both beginner and advanced astrophotographers.</p>   <h2>Key Features:</h2>   <ul>     <li>Camera Tracking Mount: The SkyGuider Pro iPolar is specifically designed for camera tracking, allowing you to capture long-exposure images of celestial objects.</li>     <li>Weight Capacity: It can support camera setups weighing up to 11 lbs (5 kg), providing stability for various camera and lens combinations.</li>     <li>iPolar Electronic Polar Scope: The built-in iPolar electronic polar scope simplifies polar alignment, ensuring accurate tracking without the need for additional tools.</li>     <li>Tracking Modes: It offers multiple tracking modes, including sidereal, lunar, and solar, to accurately follow the motion of celestial objects during long-exposure photography.</li>     <li>Tracking Rates: The SkyGuider Pro iPolar provides adjustable tracking rates of 0.5x, 1x, and 2x, allowing for different levels of tracking speed.</li>     <li>DC Servo Motor: The mount features a high-precision DC servo motor with an encoder, providing smooth and accurate tracking performance.</li>     <li>Power Requirement: It operates on a DC power supply ranging from 3.6V to 6.5V, making it compatible with various power sources.</li>     <li>Compact and Lightweight: With its compact dimensions and lightweight design, the SkyGuider Pro iPolar is highly portable and convenient for on-the-go astrophotography.</li>   </ul>   <h2>Package Contents:</h2>   <ul>     <li>1 x iOptron SkyGuider Pro iPolar Camera Tracker</li>     <li>1 x iPolar Electronic Polar Scope</li>     <li>1 x Counterweight Package</li>     <li>1 x Mounting Base</li>     <li>1 x 1/4\" to 3/8\" Convertible Screw</li>     <li>1 x 3/8\" to 1/4\" Thread Adapter</li>     <li>1 x Ball Head</li>     <li>1 x Tool Kit</li>     <li>1 x Quick Start Guide</li>   </ul>', 23345, 'The iOptron SkyGuider Pro iPolar is a portable camera tracking mount designed for astrophotography. It offers a compact and lightweight solution for capturing stunning long-exposure images of the night sky. The SkyGuider Pro iPolar features the innovative iPolar electronic polar scope, which simplifies polar alignment and ensures accurate tracking. With its user-friendly design and advanced features, this camera tracker is suitable for both beginner and advanced astrophotographers.', '2023-05-30 09:42:26', '2023-05-30 09:42:26', b'1'),
(12233, 'iOptron GEM 28 iPolar and LiteRoc', '876455466', 1885.00, 'https://iili.io/Hr74nIt.jpg', '<h1>iOptron GEM 28 iPolar and LiteRoc</h1><p>The iOptron GEM 28 iPolar and LiteRoc is a versatile equatorial mount designed for astronomy enthusiasts and astrophotographers. It offers precise tracking and reliable performance, making it ideal for capturing stunning celestial images and observing celestial objects.</p>   <h2>Key Features:</h2>   <ul>     <li>Equatorial Mount: The mount features an equatorial design, allowing for accurate tracking of celestial objects and smooth panning.</li>     <li>Weight Capacity: With a weight capacity of 28 lbs (12.7 kg), it can accommodate a wide range of telescopes and imaging equipment.</li>     <li>iPolar Electronic Polar Scope: The iPolar electronic polar scope provides quick and accurate polar alignment, ensuring precise tracking of celestial objects.</li>     <li>GoTo System: The mount is equipped with a GoTo system, enabling automated slewing to thousands of celestial objects in its extensive database.</li>     <li>Tracking Modes: It offers multiple tracking modes, including sidereal, lunar, solar, and king, allowing for precise tracking based on specific astronomical events.</li>     <li>Slew Speeds: The mount provides adjustable slew speeds for smooth and controlled movement across the night sky.</li>     <li>DC Servo Motors: The mount utilizes DC servo motors with encoders, delivering precise and reliable tracking performance.</li>     <li>Hand Controller: The included Go2Nova 8408 hand controller features a user-friendly interface and access to a database of over 212,000 celestial objects.</li>     <li>Counterweight System: It comes with a counterweight bar and a 10 lb (4.5 kg) counterweight for balancing the telescope and ensuring stability during operation.</li>     <li>Power Requirement: The mount operates on a DC 12V power supply, providing sufficient power for smooth tracking and slewing movements.</li>     <li>Compact and Portable: With its compact dimensions and lightweight design, the GEM 28 iPolar and LiteRoc is easy to transport and set up in different observing locations.</li>   </ul>   <h2>Package Contents:</h2>   <ul>     <li>1 x iOptron GEM 28 iPolar and LiteRoc Equatorial Mount</li>     <li>1 x Go2Nova 8408 Hand Controller</li>     <li>1 x iPolar Electronic Polar Scope</li>     <li>1 x Counterweight Bar</li>     <li>1 x 10 lb (4.5 kg) Counterweight</li>     <li>1 x Power Adapter</li>     <li>1 x User Manual</li>   </ul>', 23345, 'The iOptron GEM 28 iPolar and LiteRoc is a versatile equatorial mount designed for astronomy enthusiasts and astrophotographers. It offers precise tracking and reliable performance, making it ideal for capturing stunning celestial images and observing celestial objects.', '2023-05-30 10:07:21', '2023-05-30 10:07:21', b'1'),
(12234, 'Nikon D3500', '543535345', 2450.00, 'https://iili.io/HgMRiJ9.jpg', '<h1>Nikon D3500 - Unleash Your Photography Potential</h1><p>The Nikon D3500 is the perfect camera for photography enthusiasts and beginners looking to explore the world of\r\n    digital photography. Combining user-friendly features, exceptional image quality, and a lightweight design, the\r\n    D3500 enables you to capture stunning images effortlessly.</p>\r\n\r\n<p>Key features of the Nikon D3500:</p>\r\n<ul>\r\n    <li>24.2-megapixel DX-format CMOS sensor for vibrant colors and sharp details.</li>\r\n    <li>Wide ISO range (100-25600) for excellent low-light performance.</li>\r\n    <li>Advanced EXPEED 4 image-processing engine for fast and efficient performance.</li>\r\n    <li>Full HD 1080p video recording for capturing high-quality videos.</li>\r\n    <li>Guide mode for step-by-step assistance, making it ideal for beginners to learn and experiment with\r\n        different shooting techniques.</li>\r\n    <li>SnapBridge connectivity for seamless sharing and remote camera control via your smartphone or tablet.</li>\r\n    <li>Compact and lightweight design for easy portability and comfortable handling.</li>\r\n    <li>Long battery life for extended shooting sessions without worrying about running out of power.</li>\r\n</ul>\r\n\r\n<p>The Nikon D3500 empowers you to capture breathtaking photos and videos with ease. Its intuitive interface and\r\n    Guide mode help you understand the camera\'s settings and functions, allowing you to unleash your creativity and\r\n    grow as a photographer.</p>\r\n\r\n<p>Whether you\'re capturing stunning landscapes, beautiful portraits, or precious moments with friends and family,\r\n    the D3500\'s impressive image quality and versatile features will help you capture and preserve memories that\r\n    last a lifetime.</p>\r\n\r\n<p>Invest in the Nikon D3500 and embark on an exciting photographic journey that will unlock your full potential\r\n    and ignite your passion for capturing the world through the lens.</p>', 22233, 'The Nikon D3500 is a lightweight and user-friendly camera designed for beginners and photography enthusiasts looking to step up their game. With its compact and ergonomic design, it\'s easy to handle and carry, making it a great companion for capturing moments on the go.', '2023-05-30 10:35:30', '2023-05-30 10:35:30', b'1'),
(12235, 'Nikon Z5 Zikkor', '22242454', 2999.00, 'https://iili.io/HSzbUpS.jpg', '<h2 style=\"margin-top: 20px;\">Description</h2>\r\n		<p style=\"line-height: 1.5; margin-bottom: 10px;\">The Nikon Z5 Zikkor is a high-quality mirrorless camera that offers exceptional performance and versatility. It features a full-frame 24.3 megapixel CMOS sensor that delivers stunning image quality, even in low light conditions. The camera is also equipped with the powerful EXPEED 6 image processor, which allows for fast and accurate autofocus, as well as advanced image processing capabilities.</p>\r\n		<ul style=\"margin: 0; padding: 0; list-style: none; margin-bottom: 10px;\">\r\n			<li style=\"margin-bottom: 5px;\">Full-frame 24.3 megapixel CMOS sensor</li>\r\n			<li style=\"margin-bottom: 5px;\">EXPEED 6 image processor</li>\r\n			<li style=\"margin-bottom: 5px;\">5-axis in-body image stabilization</li>\r\n			<li style=\"margin-bottom: 5px;\">4K UHD video recording</li>\r\n			<li style=\"margin-bottom: 5px;\">Built-in Wi-Fi and Bluetooth</li>\r\n			<li style=\"margin-bottom: 5px;\">Vari-angle touchscreen LCD</li>\r\n		</ul>\r\n		<h2 style=\"margin-top: 20px;\">Compatibility</h2>\r\n		<p style=\"line-height: 1.5; margin-bottom: 10px;\">The Nikon Z5 Zikkor is compatible with the full range of NIKKOR Z lenses, as well as F-mount NIKKOR lenses using the optional FTZ Mount Adapter. This allows photographers to take advantage of the vast range of high-quality NIKKOR lenses, from wide-angle to telephoto, to suit their shooting needs.</p>\r\n		<h2 style=\"margin-top: 20px;\">Conclusion</h2>\r\n		<p style=\"line-height: 1.5; margin-bottom: 10px;\">Overall, the Nikon Z5 Zikkor is an outstanding camera that offers exceptional image quality, advanced features, and compatibility with the full range of NIKKOR lenses. Whether you\'re a professional photographer or an enthusiast looking to upgrade your gear, the Nikon Z5 Zikkor is a reliable and versatile option that will help you capture stunning photos and videos with ease.</p>', 22233, 'The Nikon Z5 is a full-frame mirrorless camera that offers a balance of performance, features, and affordability. It is part of Nikon\'s Z-series lineup and is compatible with Nikon\'s Z-mount lenses.', '2023-05-30 10:36:09', '2023-05-30 10:36:09', b'1'),
(12236, 'Nikon D800', '656575675', 1099.00, 'https://iili.io/HgMRQDb.jpg', '<h1>Nikon D800 - A Powerful Camera for Photography Enthusiasts</h1><p>The Nikon D800 is a highly regarded camera that offers exceptional image quality and advanced features, making it a top choice for professional photographers and enthusiasts alike.</p> <p>Key features of the Nikon D800:</p> <ul class=\"features\"> <li><span class=\"highlight\">36.3 megapixel</span> full-frame FX-format CMOS sensor for stunningly detailed images.</li> <li><span class=\"highlight\">Advanced EXPEED 3 image processing engine</span> for fast and accurate performance.</li> <li><span class=\"highlight\">Wide ISO range</span> (100-6400) expandable up to 25,600 for exceptional low-light performance.</li> <li><span class=\"highlight\">51-point autofocus system</span> with 15 cross-type sensors for precise focus even in challenging conditions.</li> <li><span class=\"highlight\">Full HD 1080p video</span> recording with manual control and external microphone input for professional-quality videography.</li> <li><span class=\"highlight\">3.2-inch LCD monitor</span> with 921,000 dots for easy framing and reviewing of shots.</li> <li><span class=\"highlight\">Dual memory card slots</span> (SD and CF) for extended storage and backup options.</li> <li><span class=\"highlight\">Built-in HDR</span> (High Dynamic Range) and time-lapse shooting modes for creative photography.</li> </ul> <p>If you\'re passionate about photography and demand the best from your equipment, the Nikon D800 is a camera that won\'t disappoint. Whether you\'re shooting landscapes, portraits, or events, its high-resolution sensor, robust build quality, and extensive feature set will help you capture stunning images with remarkable detail and dynamic range.</p> <p>Investing in the Nikon D800 means investing in a camera that will deliver outstanding results, allowing you to unleash your creativity and take your photography to new heights.</p>', 22233, 'The Nikon D800 is a highly acclaimed camera known for its exceptional image quality and advanced features. With a 36.3-megapixel full-frame FX-format CMOS sensor, it captures stunningly detailed images that are rich in color and depth. The camera is equipped with an advanced EXPEED 3 image processing engine, ensuring fast and accurate performance in various shooting conditions. Its wide ISO range of 100-6400 (expandable up to 25,600) allows for excellent low-light performance, enabling photographers to capture clear and noise-free images in challenging lighting situations.', '2023-05-30 10:36:52', '2023-05-30 10:36:52', b'1'),
(12237, 'Canon Zoom Lens EF-S 18-135mm', '876767564', 389.00, 'https://iili.io/Hr7PUep.jpg', '<h1>Canon Zoom Lens EF-S 18-135mm</h1><p>The Canon Zoom Lens EF-S 18-135mm is a versatile and high-performance lens designed for Canon APS-C format cameras. With its wide zoom range and advanced optical technology, this lens is ideal for a variety of photography genres, including landscapes, portraits, and everyday shooting. The lens offers a flexible focal length range of 18-135mm, allowing you to capture a wide field of view or zoom in on distant subjects. Its maximum aperture ranges from f/3.5 to f/5.6, providing excellent low-light performance and shallow depth of field capabilities.</p>   <p>The lens features Canon\'s EF-S mount, which is specifically designed for APS-C sensor cameras. It ensures seamless compatibility and optimal performance with Canon EOS cameras in this format. The lens\'s angle of view ranges from 74.2° to 11.3°, enabling you to capture both wide-angle shots and close-up details with ease.</p>   <p>With a minimum focus distance of 1.28 ft (0.39 m) and a maximum magnification of 0.28x, the Canon Zoom Lens EF-S 18-135mm allows you to get close to your subjects and capture intricate details. Its 16-element optical design, including one UD (Ultra-Low Dispersion) element and one PMo (Precision Molded Optics) aspherical element, ensures high image quality with minimized chromatic aberrations and distortions.</p>   <p>The lens is equipped with image stabilization technology, which helps to reduce camera shake and produce sharp, blur-free images, especially in low-light or handheld shooting situations. The autofocus system provides fast and accurate focusing, allowing you to capture sharp and well-focused shots in various conditions.</p>   <p>The Canon Zoom Lens EF-S 18-135mm has a filter thread size of 67mm, allowing you to attach various filters and accessories to enhance your creative possibilities. With its compact dimensions of 3.0 x 3.8 inches (76.6 x 96 mm) and a weight of 1.04 lbs (475 g), it is a portable and convenient lens for everyday use and travel photography.</p>', 23342, 'The Canon Zoom Lens EF-S 18-135mm is a versatile and high-performance lens designed for Canon APS-C format cameras. With its wide zoom range and advanced optical technology, this lens is ideal for a variety of photography genres, including landscapes, portraits, and everyday shooting. The lens offers a flexible focal length range of 18-135mm, allowing you to capture a wide field of view or zoom in on distant subjects. Its maximum aperture ranges from f/3.5 to f/5.6, providing excellent low-light performance and shallow depth of field capabilities.', '2023-05-30 10:37:53', '2023-05-30 10:37:53', b'1'),
(12238, 'Canon Tripod 5', '7657567', 100.00, 'https://iili.io/HgM5KzJ.jpg', '<h1>Canon Tripod 5</h1>  <p>The Canon Tripod is a sturdy and reliable support system designed to securely hold your camera or camcorder in place. It is an essential accessory for photographers and videographers who require stability and precision during their shooting sessions.</p>   <h2>Features:</h2>   <ul>     <li>Sturdy Construction: The tripod is made of high-quality materials that ensure durability and stability even in challenging shooting environments.</li>     <li>Adjustable Height: The tripod\'s legs can be extended or collapsed to achieve the desired height, providing flexibility in various shooting situations.</li>     <li>Quick Release Plate: The tripod features a quick-release plate that allows for easy and swift mounting and dismounting of your camera or camcorder.</li>     <li>Pan and Tilt Head: The tripod head offers smooth pan and tilt movements, enabling you to capture panoramic shots and achieve precise framing.</li>     <li>Bubble Level: It is equipped with a built-in bubble level that helps you ensure your camera is perfectly level, resulting in straight and well-aligned shots.</li>     <li>Compact and Portable: The tripod can be folded into a compact size, making it easy to carry and store when not in use.</li>   </ul>   <h2>Specifications:</h2>   <ul>     <li>Maximum Load Capacity: [insert maximum load capacity here]</li>     <li>Minimum Height: [insert minimum height here]</li>     <li>Maximum Height: [insert maximum height here]</li>     <li>Weight: [insert weight here]</li>     <li>Material: [insert tripod material here]</li>   </ul>   <h2>Package Contents:</h2>   <ul>     <li>1 x Canon Tripod</li>     <li>1 x Carrying Bag</li>     <li>1 x User Manual</li>   </ul>', 23343, 'The Canon Tripod is a sturdy and reliable support system designed to securely hold your camera or camcorder in place. It is an essential accessory for photographers and videographers who require stability and precision during their shooting sessions.', '2023-05-30 10:38:20', '2023-05-30 10:38:20', b'1'),
(12239, 'Canon Astro Tripod', '43535345', 120.00, 'https://iili.io/HgM5ogI.jpg', '<h1>Canon Astro Tripod - Stable Tripod for Astrophotography</h1><p>The Canon Astro Tripod is a specialized tripod designed specifically for astrophotography enthusiasts. With its\r\n    stable and sturdy construction, this tripod provides the necessary support and vibration reduction required for\r\n    capturing clear and detailed images of celestial objects.</p>\r\n\r\n<p>The Astro Tripod features a heavy-duty aluminum alloy construction, which ensures stability and durability even\r\n    under challenging conditions. Its robust design effectively minimizes vibrations, resulting in sharper and\r\n    higher-quality astrophotos.</p>\r\n\r\n<p>Equipped with adjustable legs and a center column, this tripod offers flexibility in positioning and height\r\n    adjustment. You can easily customize the tripod\'s height and angle to achieve the desired composition and framing\r\n    for your astrophotography subjects.</p>\r\n\r\n<p>The tripod\'s quick-release plate system allows for fast and secure attachment and detachment of your camera or\r\n    telescope, facilitating efficient setup and breakdown during your astrophotography sessions. The removable\r\n    counterweight hook adds extra stability by allowing you to hang additional weights, ensuring optimal balance in\r\n    windy conditions.</p>\r\n\r\n<p>The Astro Tripod features rubberized feet with retractable spikes, providing excellent grip and stability on\r\n    various terrains. This ensures that the tripod remains steady and secure, even on uneven surfaces or outdoor\r\n    environments.</p>\r\n\r\n<p>With its compatibility with Canon\'s EOS cameras and other astrophotography equipment, the Canon Astro Tripod is a\r\n    reliable and essential tool for capturing stunning images of the night sky. Whether you\'re photographing the\r\n    stars, the moon, or deep-sky objects, this tripod will help you achieve outstanding results in your\r\n    astrophotography endeavors.</p>', 23343, 'The Canon Astro Tripod is a specialized tripod designed specifically for astrophotography enthusiasts. With its\r\n    stable and sturdy construction, this tripod provides the necessary support and vibration reduction required for\r\n    capturing clear and detailed images of celestial objects.', '2023-05-30 10:38:44', '2023-05-30 10:38:44', b'1'),
(12240, 'Fujifilm Tripod Pro 2', '32423324', 1100.00, 'https://iili.io/HgM5ogI.jpg', '<h1>Fujifilm Tripod Pro 2 - Professional Tripod</h1><p>The Fujifilm Tripod Pro 2 is a versatile and sturdy tripod designed for professional photographers and\r\n    videographers. With its high-quality construction and advanced features, this tripod provides excellent stability\r\n    and support for capturing sharp and steady images and videos.</p>\r\n\r\n<p>The Tripod Pro 2 features a durable aluminum alloy construction, making it lightweight yet strong enough to\r\n    withstand heavy camera setups. It offers a maximum load capacity of up to 22 pounds (10 kilograms), allowing you\r\n    to mount a variety of cameras and lenses with ease.</p>\r\n\r\n<p>The tripod\'s adjustable legs and center column enable flexible positioning and height adjustment, allowing you to\r\n    achieve the desired shooting angle and perspective. The quick-release plate system ensures quick and secure\r\n    attachment and detachment of your camera, saving you valuable time during setup and breakdown.</p>\r\n\r\n<p>With the integrated ball head, the Tripod Pro 2 provides smooth and precise 360-degree panoramic rotation and\r\n    90-degree vertical tilt, enabling you to capture stunning panoramic shots and achieve creative compositions. The\r\n    built-in bubble level helps you ensure accurate leveling of the tripod for perfectly straight horizons.</p>\r\n\r\n<p>The Tripod Pro 2 features rubberized feet with retractable spikes, providing excellent stability on various\r\n    surfaces and enhancing grip on uneven terrain. The tripod also includes a removable hook for hanging additional\r\n    weight, increasing stability in windy conditions.</p>\r\n\r\n<p>Compact and lightweight, the Fujifilm Tripod Pro 2 is easy to transport and store, making it an ideal companion\r\n    for on-the-go photographers and videographers. Whether you\'re shooting landscapes, portraits, or long-exposure\r\n    images, this professional tripod delivers reliable performance and ensures sharp, blur-free results.</p>', 23343, 'The Fujifilm Tripod Pro 2 is a versatile and sturdy tripod designed for professional photographers and\r\n    videographers. With its high-quality construction and advanced features, this tripod provides excellent stability\r\n    and support for capturing sharp and steady images and videos.', '2023-05-30 10:45:04', '2023-05-30 10:39:14', b'1'),
(12241, 'iOptron CEM120EC2', '34465645', 6899.00, 'https://iili.io/Hr74xQn.jpg', '<h1>iOptron CEM120EC2</h1>  <p>The iOptron CEM120EC2 is a professional-grade equatorial mount designed for astrophotography and serious astronomy enthusiasts. It offers exceptional stability, precise tracking, and advanced features to support capturing high-quality images of celestial objects. With its innovative Center-Balanced Equatorial Mount (CEM) design, the CEM120EC2 delivers an optimal balance between stability, portability, and performance.</p>   <h2>Key Features:</h2>   <ul>     <li>Equatorial Mount Design: The CEM120EC2 features a solid equatorial mount design that provides stable and accurate tracking of celestial objects.</li>     <li>Weight Capacity: With a weight capacity of 120 lbs (54.4 kg), it can accommodate heavy optical tubes and imaging setups.</li>     <li>Center-Balanced Equatorial Mount (CEM): The innovative CEM design evenly distributes the weight of the payload, minimizing stress on the mount and ensuring smooth and precise tracking.</li>     <li>Precision Tracking: The mount utilizes high-precision stepper motors and advanced control algorithms for accurate tracking and guiding.</li>     <li>GoTo System: The built-in GoTo system with an extensive celestial object database enables automated slewing and precise positioning of targets.</li>     <li>Integrated iPolar Electronic Polar Scope: The integrated iPolar electronic polar scope simplifies polar alignment, allowing for quick and precise setup.</li>     <li>Multiple Tracking Modes: It supports multiple tracking rates, including sidereal, lunar, solar, and user-defined custom tracking rates.</li>     <li>Adjustable Counterweight System: The adjustable counterweight system provides flexibility in balancing different telescope configurations for optimal performance.</li>     <li>Built-in WiFi and Ethernet Connectivity: The mount offers built-in WiFi and Ethernet connectivity, enabling remote control and operation using compatible devices.</li>     <li>DC Servo Motors: The CEM120EC2 utilizes high-torque DC servo motors with encoders for smooth and accurate motion control.</li>     <li>Power Management: The mount features a built-in rechargeable power management system with power ports for accessories and devices.</li>     <li>Hand Controller: The included Go2Nova 8407+ hand controller offers a user-friendly interface for manual control and access to advanced features.</li>   </ul>   <h2>Package Contents:</h2>   <ul>     <li>1 x iOptron CEM120EC2 Equatorial Mount</li>     <li>1 x Go2Nova 8407+ Hand Controller</li>     <li>1 x iPolar Electronic Polar Scope</li>     <li>1 x Counterweight Shaft</li>     <li>1 x Counterweight Set</li>     <li>1 x Power Adapter</li>     <li>1 x RS232-RJ9 Cable</li>     <li>1 x USB-to-Serial Adapter</li>     <li>1 x Tool Kit</li>     <li>1 x User Manual</li>   </ul>', 23345, 'The iOptron CEM120EC2 is a professional-grade equatorial mount designed for astrophotography and serious astronomy enthusiasts. It offers exceptional stability, precise tracking, and advanced features to support capturing high-quality images of celestial objects. With its innovative Center-Balanced Equatorial Mount (CEM) design, the CEM120EC2 delivers an optimal balance between stability, portability, and performance.', '2023-05-30 10:40:14', '2023-05-30 10:39:59', b'1'),
(12242, 'iOptron HE292A', '546366346', 1599.00, 'https://iili.io/HgMRy0B.jpg', '<h1>iOptron HE292A - Altazimuth Mount</h1><p>The iOptron HE292A Altazimuth Mount is a lightweight and portable mounting solution designed for observing and\r\n    tracking celestial objects. With its sturdy construction and easy-to-use design, this mount is ideal for\r\n    beginners and casual astronomers.</p>\r\n\r\n<p>The HE292A features an altazimuth mount design, allowing for smooth movement in both vertical (altitude) and\r\n    horizontal (azimuth) axes. The slow-motion controls enable precise manual adjustments to track celestial objects\r\n    as they move across the sky.</p>\r\n\r\n<p>With a maximum payload capacity of 5.5 pounds (2.5 kilograms), this mount can accommodate a range of telescopes,\r\n    cameras, and lightweight accessories. The Vixen-style dovetail plate ensures secure mounting of your equipment.</p>\r\n\r\n<p>The height of the mount can be adjusted from 19.7 inches to 43.3 inches (50 cm to 110 cm), providing comfortable\r\n    viewing positions for different users. The tripod is constructed from durable aluminum alloy and consists of\r\n    three sections for easy setup and adjustment.</p>\r\n\r\n<p>The iOptron HE292A Altazimuth Mount is powered by 8 AA batteries (not included), providing convenient and\r\n    portable operation. The manual control allows you to easily point and track celestial objects manually, making\r\n    it suitable for casual observations and educational purposes.</p>\r\n\r\n<p>Whether you\'re exploring the night sky or observing terrestrial objects, the iOptron HE292A Altazimuth Mount\r\n    offers simplicity and versatility. Set up quickly, adjust easily, and enjoy the wonders of the universe with\r\n    this compact and user-friendly altazimuth mount.</p>', 23345, 'The iOptron HE292A Altazimuth Mount is a lightweight and portable mounting solution designed for observing and\r\n    tracking celestial objects. With its sturdy construction and easy-to-use design, this mount is ideal for\r\n    beginners and casual astronomers.', '2023-05-30 10:40:43', '2023-05-30 10:40:43', b'1'),
(12243, 'Hoya 62mm UV-0', '434343', 99.00, 'https://iili.io/HgM59UP.jpg', '<h1>Hoya UV Filter - Protect Your Lens and Enhance Image Quality</h1><p>The Hoya UV filter is a high-quality accessory designed to protect your camera lens from scratches, dust, and\r\n    moisture. It acts as a transparent shield, allowing you to shoot in various conditions without worrying about\r\n    potential damage to your lens.</p>\r\n\r\n<p>In addition to its protective function, the Hoya UV filter also helps improve image quality by reducing\r\n    ultraviolet (UV) light. UV light can cause haziness and bluish tones in your photos, especially in outdoor\r\n    settings. By using a UV filter, you can minimize these unwanted effects and achieve clearer, more vibrant\r\n    images.</p>\r\n\r\n<p>The Hoya UV filter is constructed with precision optical glass and multi-coating to ensure minimal impact on\r\n    image quality. It maintains excellent transparency and color neutrality, allowing you to capture true-to-life\r\n    colors and maintain the integrity of your photographs.</p>\r\n\r\n<p>Installing the Hoya UV filter is quick and easy. Simply screw it onto the front of your camera lens, and you\'re\r\n    ready to go. Its slim profile ensures compatibility with wide-angle lenses without vignetting or image\r\n    distortion.</p>\r\n\r\n<p>Whether you\'re a professional photographer or an enthusiastic hobbyist, the Hoya UV filter is a valuable\r\n    investment to protect your lens and enhance your image quality. With its durable construction and reliable\r\n    performance, it offers peace of mind and helps you achieve optimal results in your photography endeavors.</p>', 23346, 'The Hoya UV filter is a high-quality accessory designed to protect your camera lens from scratches, dust, and moisture. It acts as a transparent shield, allowing you to shoot in various conditions without worrying about potential damage to your lens.', '2023-05-31 09:08:42', '2023-05-30 10:41:27', b'1'),
(12244, 'Fujifilm Vintage Filter', '4732742', 89.00, 'https://iili.io/HgM52Og.jpg', '<h1>Fujifilm Vintage Lens Filter</h1>\r\n  <p>The Fujifilm Vintage Lens Filter is a popular accessory for photographers who want to capture the nostalgic look and feel of vintage photography directly through their lenses. This filter is designed to emulate the distinctive characteristics of vintage lenses, allowing photographers to add a touch of retro charm to their images.</p>\r\n\r\n  <p>The Fujifilm Vintage Lens Filter is constructed using high-quality materials and advanced optical technology. It is designed to be attached directly to the front of the camera lens, where it modifies the incoming light before it reaches the camera\'s sensor. This filter recreates the optical imperfections and unique qualities of vintage lenses, resulting in images that have a distinct vintage appeal.</p>', 23346, 'The Fujifilm Vintage Lens Filter is a popular accessory for photographers who want to capture the nostalgic look and feel of vintage photography directly through their lenses. This filter is designed to emulate the distinctive characteristics of vintage lenses, allowing photographers to add a touch of retro charm to their images.', '2023-05-30 10:41:48', '2023-05-30 10:41:48', b'1'),
(12245, 'Sony UV Filter OPT2', '7868678668', 129.00, 'https://iili.io/HSzbSv2.jpg', '<h2 style=\"margin-top: 20px;\">Description</h2>\r\n		<p style=\"line-height: 1.5; margin-bottom: 10px;\">The Sony UV filter is a high-quality filter designed to protect your camera lens from dust, moisture, and scratches. It is made with high-quality glass and features a multi-coating that helps to reduce glare and ghosting, resulting in clear and sharp images. The filter also blocks ultraviolet rays, which can cause hazy and unclear photos, allowing you to capture clear and vivid images.</p>\r\n		<ul style=\"margin: 0; padding: 0; list-style: none; margin-bottom: 10px;\">\r\n			<li style=\"margin-bottom: 5px;\">High-quality glass construction</li>\r\n			<li style=\"margin-bottom: 5px;\">Multi-coated to reduce glare and ghosting</li>\r\n			<li style=\"margin-bottom: 5px;\">Blocks UV rays for clear and vivid images</li>\r\n			<li style=\"margin-bottom: 5px;\">Protects lens from dust, moisture, and scratches</li>\r\n			<li style=\"margin-bottom: 5px;\">Available in various sizes to fit different lenses</li>\r\n		</ul>\r\n		<h2 style=\"margin-top: 20px;\">Compatibility</h2>\r\n		<p style=\"line-height: 1.5; margin-bottom: 10px;\">The Sony UV filter is compatible with a wide range of lenses, including Sony\'s E-mount lenses and lenses from other manufacturers that have a filter thread size that matches the filter size. Before purchasing, please check the filter size of your lens to ensure compatibility.</p>\r\n		<h2 style=\"margin-top: 20px;\">Conclusion</h2>\r\n		<p style=\"line-height: 1.5; margin-bottom: 10px;\">Overall, the Sony UV filter is an essential accessory for any photographer looking to protect their lenses and improve the quality of their photos. With its high-quality glass construction, multi-coating, and UV-blocking capabilities, this filter offers both protection and performance. It is also available in various sizes to fit different lenses, making it a versatile and convenient addition to your camera gear.</p>', 23346, 'The Sony UV filter is a lens accessory designed to protect the front element of a camera lens from dust, moisture, and scratches. It is a transparent filter that screws onto the front of the lens and acts as a barrier between the lens and the external environment.', '2023-05-30 10:42:17', '2023-05-30 10:42:17', b'1'),
(12246, 'Hoya B&W Photo Filter', '453435435', 79.00, 'https://iili.io/HgMRpfV.jpg', '<h1>Hoya UV Filter - Protect Your Lens and Enhance Image Quality</h1><p>The Hoya UV filter is a high-quality accessory designed to protect your camera lens from scratches, dust, and\r\n    moisture. It acts as a transparent shield, allowing you to shoot in various conditions without worrying about\r\n    potential damage to your lens.</p>\r\n\r\n<p>In addition to its protective function, the Hoya UV filter also helps improve image quality by reducing\r\n    ultraviolet (UV) light. UV light can cause haziness and bluish tones in your photos, especially in outdoor\r\n    settings. By using a UV filter, you can minimize these unwanted effects and achieve clearer, more vibrant\r\n    images.</p>\r\n\r\n<p>The Hoya UV filter is constructed with precision optical glass and multi-coating to ensure minimal impact on\r\n    image quality. It maintains excellent transparency and color neutrality, allowing you to capture true-to-life\r\n    colors and maintain the integrity of your photographs.</p>\r\n\r\n<p>Installing the Hoya UV filter is quick and easy. Simply screw it onto the front of your camera lens, and you\'re\r\n    ready to go. Its slim profile ensures compatibility with wide-angle lenses without vignetting or image\r\n    distortion.</p>\r\n\r\n<p>Whether you\'re a professional photographer or an enthusiastic hobbyist, the Hoya UV filter is a valuable\r\n    investment to protect your lens and enhance your image quality. With its durable construction and reliable\r\n    performance, it offers peace of mind and helps you achieve optimal results in your photography endeavors.</p>', 23346, 'The Hoya UV filter is a high-quality accessory designed to protect your camera lens from scratches, dust, and moisture. It acts as a transparent shield, allowing you to shoot in various conditions without worrying about potential damage to your lens.', '2023-05-30 10:43:44', '2023-05-30 10:43:44', b'1'),
(12247, 'Nikon Lens Tele 350mm', '434343', 3599.00, 'https://iili.io/HgM5Cfp.jpg', 'FRE', 22233, 'FER', '2023-05-31 09:41:41', '2023-05-31 09:41:41', b'1');
INSERT INTO `product` (`Id`, `Name`, `Code`, `Price`, `ImageURL`, `ContentHTML`, `IdCategory`, `Description`, `EditDateTime`, `CreationDateTime`, `IsActive`) VALUES
(12248, 'GTR', '54', 54.00, 'GRT', 'GTR', 22233, 'GTR', '2023-05-31 09:47:25', '2023-05-31 09:47:03', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `EditDateTime` datetime DEFAULT NULL,
  `CreationDateTime` datetime DEFAULT NULL,
  `IsActive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`Id`, `Name`, `Notes`, `EditDateTime`, `CreationDateTime`, `IsActive`) VALUES
(22233, 'Cameras', 'Cameras', '2023-05-31 10:08:48', '2023-05-31 10:08:48', b'1'),
(23342, 'Lenses', NULL, '2023-05-31 10:08:51', '2023-05-31 10:08:51', b'1'),
(23343, 'Tripods', NULL, '2023-05-31 10:08:54', '2023-05-31 10:08:54', b'1'),
(23345, 'Mountings', 'Mounting', '2023-05-31 10:08:58', '2023-05-31 10:08:58', b'1'),
(23346, 'Filters', 'Filters', '2023-05-31 10:09:02', '2023-05-31 10:09:02', b'1'),
(23347, 'Demo', NULL, '2023-05-31 16:48:05', '2023-05-31 16:48:03', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `Id` int(11) NOT NULL,
  `OrderDateTime` datetime NOT NULL,
  `IdCustomer` int(11) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `EditDateTime` datetime DEFAULT NULL,
  `CreationDateTime` datetime DEFAULT NULL,
  `IsActive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`Id`, `OrderDateTime`, `IdCustomer`, `Total`, `Notes`, `EditDateTime`, `CreationDateTime`, `IsActive`) VALUES
(3, '2023-05-23 00:00:00', 12345, '13266.00', 'Some notes regarding the order', '2023-05-30 07:25:29', '2023-05-23 00:00:00', b'1'),
(4, '2023-05-23 00:00:00', 12345, '3232.00', 'ddwede', '2023-05-27 09:32:17', '2023-05-23 00:00:00', b'0'),
(5, '2023-05-23 00:00:00', 12345, '434.00', 'deaa', '2023-05-27 09:32:14', '2023-05-23 00:00:00', b'0'),
(6, '2023-05-23 00:00:00', 23456, '4354.00', '4343', '2023-05-27 12:12:43', '2023-05-23 00:00:00', b'1'),
(7, '2023-05-27 00:00:00', 12345, '8001.00', 'nuiini', '2023-05-27 09:32:13', '2023-05-27 00:00:00', b'0'),
(8, '2023-05-27 00:00:00', 12345, '2667.00', 'yuyuy', '2023-05-27 09:32:11', '2023-05-27 00:00:00', b'0'),
(9, '2023-05-27 00:00:00', 12345, '6633.00', 'hthtyht', '2023-05-27 09:32:10', '2023-05-27 09:05:27', b'0'),
(10, '2023-05-27 00:00:00', 12345, '3556.00', 'frwfrw', '2023-05-27 09:32:08', '2023-05-27 09:27:45', b'0'),
(11, '2023-05-26 00:00:00', 12345, '3556.00', 'frefre', '2023-05-27 11:28:07', '2023-05-27 09:32:30', b'1'),
(12, '2023-05-27 11:05:00', 12345, '1778.00', 'frerfe', '2023-05-27 11:27:54', '2023-05-27 11:07:06', b'1'),
(13, '2023-05-27 11:49:00', 12345, '0.00', NULL, '2023-05-27 12:59:26', '2023-05-27 11:52:45', b'0'),
(14, '2023-05-27 13:20:00', 12345, '0.00', NULL, '2023-05-27 13:20:39', '2023-05-27 13:20:39', b'1'),
(15, '2023-05-27 13:34:00', 12345, '4445.00', NULL, '2023-05-30 11:11:11', '2023-05-27 13:35:46', b'1'),
(16, '2023-05-27 13:36:00', 12345, '1778.00', NULL, '2023-05-30 11:11:01', '2023-05-27 13:36:38', b'1'),
(17, '2023-05-30 13:24:00', 23460, '1798.00', 'gf', '2023-05-30 13:24:20', '2023-05-30 13:24:20', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails`
--

CREATE TABLE `purchasedetails` (
  `Id` int(11) NOT NULL,
  `IdPurchase` int(11) NOT NULL,
  `IdProduct` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `EditDateTime` datetime DEFAULT NULL,
  `CreationDateTime` datetime DEFAULT NULL,
  `IsActive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchasedetails`
--

INSERT INTO `purchasedetails` (`Id`, `IdPurchase`, `IdProduct`, `Quantity`, `EditDateTime`, `CreationDateTime`, `IsActive`) VALUES
(3, 3, 12222, 12, '2023-05-30 07:25:29', '2023-05-23 00:00:00', b'1'),
(4, 3, 12223, 2, '2023-05-30 07:25:29', '2023-05-23 00:00:00', b'1'),
(5, 4, 12222, 1, '2023-05-23 00:00:00', '2023-05-23 00:00:00', b'1'),
(6, 5, 12222, 1, '2023-05-23 00:00:00', '2023-05-23 00:00:00', b'1'),
(7, 5, 12227, 2, '2023-05-23 00:00:00', '2023-05-23 00:00:00', b'1'),
(8, 6, 12222, 4, '2023-05-27 12:12:43', '2023-05-23 00:00:00', b'1'),
(9, 6, 12227, 2, '2023-05-27 12:12:43', '2023-05-23 00:00:00', b'1'),
(10, 7, 12222, 4, '2023-05-27 05:41:27', '2023-05-27 00:00:00', b'1'),
(11, 7, 12222, 5, '2023-05-27 05:41:27', '2023-05-27 00:00:00', b'1'),
(12, 8, 12222, 3, '2023-05-27 00:00:00', '2023-05-27 00:00:00', b'1'),
(13, 9, 12222, 6, '2023-05-27 09:05:27', '2023-05-27 09:05:27', b'1'),
(14, 9, 12223, 1, '2023-05-27 09:05:27', '2023-05-27 09:05:27', b'1'),
(15, 10, 12222, 4, '2023-05-27 09:27:45', '2023-05-27 09:27:45', b'1'),
(16, 11, 12222, 4, '2023-05-27 11:28:07', '2023-05-27 09:32:30', b'1'),
(17, 12, 12222, 2, '2023-05-27 11:27:54', '2023-05-27 11:07:06', b'1'),
(18, 15, 12222, 5, '2023-05-30 11:11:11', '2023-05-27 13:35:46', b'1'),
(19, 16, 12222, 2, '2023-05-30 11:11:01', '2023-05-27 13:36:38', b'1'),
(20, 17, 12231, 2, '2023-05-30 13:24:20', '2023-05-30 13:24:20', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCategory` (`IdCategory`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCustomer` (`IdCustomer`);

--
-- Indexes for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdPurchase` (`IdPurchase`),
  ADD KEY `IdProduct` (`IdProduct`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23463;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12249;

--
-- AUTO_INCREMENT for table `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23348;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`IdCategory`) REFERENCES `productcategory` (`Id`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`IdCustomer`) REFERENCES `customer` (`Id`);

--
-- Constraints for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD CONSTRAINT `purchasedetails_ibfk_1` FOREIGN KEY (`IdPurchase`) REFERENCES `purchase` (`Id`),
  ADD CONSTRAINT `purchasedetails_ibfk_2` FOREIGN KEY (`IdProduct`) REFERENCES `product` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
