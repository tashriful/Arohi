-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2020 at 02:04 AM
-- Server version: 10.3.23-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arohixyz_arohi_db_travels`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'admin@gmail.com', NULL, '$2y$10$RZEhb2zKynU3n3rYondkfeG.SrqyVpeuFF8vKSjHfBQEtbg/f8Djy', 'o3pbmdob8TR6y7Qw2nP4SLbnsyn97vgv3rxZhHOzlK5d4vIiMZ6Yw8CDOhCV', '2019-12-09 14:54:27', '2019-12-09 14:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `airs`
--

CREATE TABLE `airs` (
  `id` int(10) UNSIGNED NOT NULL,
  `airlines_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabin_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flying_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flying_from_airport` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flying_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flying_to_airport` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_seat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baggage_load` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airs`
--

INSERT INTO `airs` (`id`, `airlines_name`, `cabin_class`, `flying_from`, `flying_from_airport`, `departure_time`, `flying_to`, `flying_to_airport`, `destination_time`, `date`, `total_seat`, `baggage_load`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Novoair', 'Economy', 'Dhaka', 'Shahjalal Airport ', '9.00', 'Chittagong', 'Chittagong Airport', '10.00', '15/12/2019', '12', '20', 2000, NULL, NULL, NULL),
(2, 'Novoair', 'Economy', 'Comilla', 'Shahjalal Airport ', '9.00', 'Gazipur', 'Chittagong Airport', '10.00', '17/12/2019', '12', '20', 2000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b2bs`
--

CREATE TABLE `b2bs` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b2b_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b2bs`
--

INSERT INTO `b2bs` (`id`, `company_name`, `b2b_category`, `name`, `email`, `number`, `address`, `username`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rr', 'Hotel', 'tt', 't@gmail.com', 55, 'ggg', 'yyy', '$2y$10$amgew5WSE6hyMLsuzTvJlOrd84tS7PvCXt3Io9.hLb4ePSfXbrlOS', NULL, NULL, '2020-02-14 10:42:51', '2020-02-14 10:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `daytrips`
--

CREATE TABLE `daytrips` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daytrips`
--

INSERT INTO `daytrips` (`id`, `package_name`, `country`, `city`, `person`, `description`, `image`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(5, 'Mohera Jamidar Bari', 'Bangladesh', 'Mohera Jamidar Bari, Mirzapur, Tangail', 12, 'Mohera Jamidar Bari (Landlord’s Home) was founded by Kali Charan Saha who was a landlord. It is believed that the Jamidar Bari was established in 1890 at  Pakulla of Mirzapur in Tangail district and about 80 km from Dhaka city.  It has several buildings with different names such as Chowdhury Lodge, Ananda Lodge, Moharaj Lodge, Kalichoron Lodge etc. During the partition of India in 1947 and War of Independence in 1971, most of the landlords moved to India. Now this palace is a tourist spot.\r\n\r\n❒ Day Tour, Visit with family and friends Mohera Zamindar Bari, Tangail\r\n  Total Tourist : 10 people.\r\n\r\n  Tour Cost:\r\n❒ 1,400 / – BDT (per person)\r\n  For children:\r\n❒ 0 to 3 years: Fee will not be required.\r\n❒ 04 to 08 years: 1,150 / – BDT\r\n\r\nTravel plans:\r\n❒ From morning to 8:30 am, we will go from Shahbagh to the traditional Landlord’s Home Mahera Zamindar Bari, Tangail.\r\n❒ Arrive at 11 o’clock.\r\n❒ We will reach at 11:15 am and take breakfast.\r\n❒ After breakfast 11:30 am From start to visit the Bangladeshi most beautiful Landlord’s Home Mahira Zamindar Bari.\r\n❒ 2:30 pm lunch time & take some rest. After lunch, We will go to Chowdhury Lodge, Ananda Lodge, Moharaj Lodge, Kalichoron Lodge etc.\r\n❒ There will be some light snacks  arrangements in the evening.\r\n❒ At 5:30 pm we will move from Mahira Zamindar Bari, Tangail to Dhaka\r\n\r\nPrice includes\r\n•	Transportation between the program\r\n•	Meals (Breakfast, Lunch & Snacks)\r\n•	Services of the guide of the program\r\n•	Museum tickets\r\n\r\nPrice do not include\r\n•	Other costs not offered in this program\r\n•	Tip for your tour guide\r\n\r\nContact:\r\nCell:      01401234764\r\nE-Mail:   arohi.contact@gmail.com\r\nWebsite: www.arohi.xyz', 'mohera tour.jpg', 1400, NULL, '2020-01-18 23:29:52', '2020-01-18 23:29:52'),
(6, 'ZINDA PARK', 'BANGLADESH', 'Narayanganj', 12, 'Day Trip in Zinda park, Narayanganj\r\nThe park, called Zinda, was built on a large area in the village of Zinda in Purbachal suburb of Rupganj in Narayanganj, near Dhaka. The park was established with the funding of a social organization called OPS. Inside the park, surrounded by Tila and Lake, there are two ponds. you can get  boat ride on the lake\r\nZinda Park is a great place to visit as well as hanging out with friends. If you want to escape from the noise and busty life of city, this place should be your first choice.\r\n\r\n Total Tourist: 12 people.\r\n\r\n  Tour Cost:\r\n❒ 999 / – BDT (per person)\r\n\r\n\r\nTravel plans:\r\n❒ From morning to 8:00 am, we will go from Dhaka to the Narayanganj Zinda Park\r\n❒ Arrive at 10.30 o’clock and take breakfast.\r\n❒ After breakfast 11:00 am From start to visit the beautiful Nature of Zinda Park\r\n❒ 2:30 pm lunch time & take some rest. After lunch, We will go to Boad ride, visite mosk and local village\r\n❒ There will be some light snacks  arrangements in the evening.\r\n❒ At 5:00 pm we will move from Zinda park to Dhaka\r\n\r\n\r\n\r\nPrice includes\r\n•	Transportation between the program\r\n•	Meals (Breakfast, Lunch & Snacks)\r\n•	Services of the guide of the program\r\n\r\nPrice do not include\r\n•	Other costs not offered in this program\r\n•	Tip for your tour guide\r\n\r\n\r\nContact:\r\nCell: 01401234764\r\nE-Mail:arohi.contact@gmail.com, \r\nwww.arohi.xyz', 'zinda park.jpg', 999, NULL, '2020-02-03 01:49:44', '2020-02-03 01:49:44'),
(7, 'JAMUNA RESORT', 'BANGLADESH', 'Bhuapur', 12, 'Day Trip in Jamuna Resort\r\n  Tour Cost:\r\n❒ 1,399 / – BDT (per person)\r\n  For children:\r\n❒ 0 to 3 years: Fee will not be required.\r\n❒ 04 to 08 years: 1,150 / – BDT\r\n\r\n\r\nTravel plans:\r\n❒ From morning to 8:00 am, we will go from Dhaka to the Jamuna Bridge Approach Rd, Bhuapur \r\n❒ Arrive at 10.30 o’clock and take breakfast.\r\n❒ After breakfast 11:00 am From start to visit the beautiful Nature of Zamuna Resort.\r\n❒ 2:30 pm lunch time & take some rest. After lunch, We will go to Boad ride, visite Jamuna River bank and local village\r\n❒ There will be some light snacks  arrangements in the evening.\r\n❒ At 5:00 pm we will move from Zinda park to Dhaka\r\n\r\n\r\n\r\nPrice includes\r\n•	Transportation between the program\r\n•	Meals (Breakfast, Lunch & Snacks)\r\n•	Services of the guide of the program\r\n\r\nPrice do not include\r\n•	Other costs not offered in this program\r\n•	Tip for your tour guide\r\n\r\n\r\nContact:\r\nCell: 01401234764\r\nE-Mail:arohi.contact@gmail.com, \r\nwww.arohi.xyz', 'jamuna tour.jpg', 1399, NULL, '2020-02-03 02:49:28', '2020-02-03 02:49:28'),
(8, 'CUMILLA', 'BANGLADESH', 'Cumilla', 12, 'Day Trip in Cumilla \r\nThe only reason for tourists to visit the boisterous and bustling market town of Comilla is to see the Buddhist ruins of Mainimati. Sadly, most of them are located within a military camp on the outskirts of town, and so are off-limits to the general public. Salban Vihara, the most impressive of them all, is just outside the military boundary and can be visited\r\n❒ Visiting Place: Maynamoti, Salbon Bihar, War Cemetery, Dhormo Sagor, Gomoti River.\r\n\r\n Total Tourist: 12 people.\r\n\r\nTour Cost:\r\n❒ 1,499 / – BDT (per person)\r\n\r\nTravel plans:\r\n❒ From morning to 8:30 am, we will go from comilla city\r\n❒ Arrive at 11 o’clock.\r\n❒ We will reach at 11:15 am and take breakfast.\r\n❒ After breakfast 11:30 am From start to visit the Bangladeshi most historical Place Maynamoti, salbon bihar, war cemetery. \r\n❒ 2:30 pm lunch time & take some rest. After lunch, We will go to Dhormo Sagor, Gomoti River.\r\n❒ There will be some light snacks  arrangements in the evening.\r\n❒ At 5:30 pm we will move from Comilla to Dhaka\r\n\r\nPrice includes\r\n•	Transportation between the program\r\n•	Meals (Breakfast, Lunch & Snacks)\r\n•	Services of the guide of the program\r\n•	Museum tickets\r\n\r\nPrice do not include\r\n•	Other costs not offered in this program\r\n•	Tip for your tour guide\r\n\r\nContact:\r\nCell: 01401234764\r\nE-Mail:arohi.contact@gmail.com, \r\nWebsite: www.arohi.xyz', 'cumilla.jpg', 1499, NULL, '2020-02-03 02:53:24', '2020-02-03 02:53:24'),
(9, 'BALIATI JAMIDAR BARI', 'BANGLADESH', 'Manikganj', 12, 'Baliyati Zamindar Bari Day Tour\r\n100 year-old traditional Baliya zamindar house is adjacent to Dhaka\r\nLocated in Baliati village in Manikganj district. The Baliyati landlord\'s house is full of spectacular buildings, construction techniques and decoration. This huge building reminds us of the wealth of zamindars during the zamindar period. Ignoring storms, storms, rain and snow, it still survives as a timeless witness. As the lion of the zamindarbari enters the door, there will be a wide arena. Four multi-storeyed buildings stand on the same line. Behind them are the landlord Andarmahal and the Satghat pond.\r\n \r\nThinking of moving away from your family in less time? Then why can you take the family home late Baliya zamindar house near Dhaka.\r\nTour Facility:\r\n•	The 100-year-old Bali is a zamindar house and its old museum.\r\n•	Dhaka - Baliati Zamindar Home - Dhaka AC Micro / AC Minibus (Reserve) Service.\r\n•	Baliyat is the entry ticket to the landlord\'s house.\r\n•	Lunch, light breakfast.\r\n\r\n Total Tourist : 12 people.\r\nTour Cost:\r\n❒ 999 / – BDT (per person)\r\n For children:\r\n❒ 0 to 3 years: Fee will not be required.\r\n❒ 04 to 08 years: 800 / – BDT\r\n\r\nTravel plans:\r\n❒ From morning to 8:30 am, we will go from Dhaka to Baliya zamindar house Manikganj\r\n❒ Arrive at 11 o’clock. In between we take beeakfast\r\n❒ After breakfast 11:30 am From start to visit the Bangladeshi most beautiful Landlord’s\r\nHome Baliya zamindar house.\r\n❒ 2:30 pm lunch time &amp; take some rest. After lunch, We will go to visit jamindar house and sightseeing \r\n❒ There will be some light snacks arrangements in the evening.\r\n❒ At 5:30 pm we will move from Baliya zamindar house Manikganj to Dhaka\r\nPrice includes\r\n• Transportation between the program\r\n• Meals (Breakfast, Lunch &amp; Snacks)\r\n• Services of the guide of the program\r\n• Entry tickets\r\n\r\nPrice do not include\r\n• Other costs not offered in this program\r\n• Tip for your tour guide\r\n\r\nContact:\r\nCell: 01893-071762\r\nE-Mail:arohi.contact@gmail.com,\r\nWebsite: www.arohi.xyz', 'baliati tour.jpg', 999, NULL, '2020-02-03 04:04:36', '2020-02-03 04:04:36'),
(10, 'ARIAL KHA BEEL', 'BANGLADESH', 'Munshiganj', 12, 'Arial Kha beel\r\nIf you wish for listening birds chirping and wind up in the wetland to stop the boat’s engine, you can go Arial Beel. This is a large wetland about 136 square kilometers. The wetland is situated between Padma and Dhaleshwari River in the south of Dhaka.\r\nNature has not changed in the Arial Beel- like last century with its unique diversity. It has been contributing endlessly, changing the fate of millions. Arial Beel truly represents the Bangladesh where you can see affluence of fish in the wetland and full of crops. Huge quantity of fish- about 200 species of fish, plenty of rice, shell and grasses for cattle are produced in Arial Beel. The different kinds of tender water fishes of Arial Beel are incomparable in taste. The pleasant scenario of the afternoon will swung you. You can see the sunset sitting on the boat, it will give you amazing feeling. The water of the Arial Beel is not much deep, but still lots of boats are passing through the water easily. This is a wonderful location to pass your leisure with friends & family.\r\n\r\n Total Tourist : 12 people.\r\nTour Cost:\r\n❒    1,299 / – BDT (per person)\r\n For children:\r\n❒     0 to 3 years: Fee will not be required.\r\n❒     04 to 08 years: 1,050 / – BDT\r\n\r\nTravel plans:\r\n❒    From morning to 8:00 am, we will go from Dhaka to Arial kha beel\r\n❒    Arrive at 10.30 o’clock. In between we take breakfast\r\n❒    Than we Hire a boat and sightseeing of beautiful of Arial kha beel.\r\n❒     2:30 pm lunch time &amp; take some rest. After lunch, We will go to visit amazing , sightseeing of village, and beel.\r\n❒    There will be some light snacks arrangements in the evening.\r\n❒     We will enjoy sun set than back too dhaka\r\n\r\n\r\n\r\nPackage  includes\r\n• Transportation between the program\r\n• Meals (Breakfast, Lunch &amp; Snacks)\r\n\r\n\r\nPrice do not include\r\n• Other costs not offered in this program\r\n• Tip for your tour guide\r\n\r\nContact:\r\nCell: 01401234764\r\nE-Mail:arohi.contact@gmail.com, \r\nWebsite: www.arohi.xyz', 'arial tour.jpg', 1299, NULL, '2020-02-03 04:38:37', '2020-02-03 04:38:37'),
(11, 'BELAI BEEL', 'BANGLADESH', 'Gazipur', 12, 'Dhaka-Belai Beel-Dhaka \r\nTotal Tourist: 12 people.\r\nTour Cost:\r\n❒ 1,299 / – BDT (per person)\r\n For children:\r\n❒ 0 to 3 years: Fee will not be required.\r\n❒ 04 to 08 years: 1,150 / – BDT\r\n\r\nTravel plans:\r\n❒ From morning to 8:30 am, we will go from Dhaka to Gazipur belai beel.\r\n❒ Arrive at 10.30 o’clock. In between we take beeakfast\r\n❒ 2:30 pm lunch time. After lunch we take some rest. After rest, We will go to visit amazing River, sightseeing of village, \r\n❒ There will be some light snacks arrangements in the evening.\r\n❒ We will enjoy sun set in the mini Belai beel.\r\nPrice includes\r\n Transportation between the program•\r\n Meals• (Breakfast, Lunch &amp; Snacks)\r\n\r\nPrice do not include\r\n Other costs not offered in this program•\r\n Tip for your tour guide•\r\n\r\nContact:\r\nCell: 01401234764\r\nE-Mail:arohi.contact@gmail.com, \r\nWebsite: www.arohi.xyz', 'belai beel tour.jpg', 1299, NULL, '2020-02-03 04:50:12', '2020-02-03 04:50:12'),
(12, 'NUHASH PALLI', 'BANGLADESH', 'Gazipur', 12, 'Day Trip in Nuhash Palli,Gazipur\r\n  Tour Cost:\r\n❒ 1,799 / – BDT (per person)\r\n  For children:\r\n❒ 0 to 3 years: Fee will not be required.\r\n❒ 04 to 08 years: 1,450 / – BDT\r\n\r\n\r\nTravel plans:\r\n❒ From morning to 8:00 am, we will go from Dhaka to the Nuhash Palli, gazipur.\r\n❒ In this tarvelling time we take Breakfast.\r\n❒ Arrive at 10.30 o’clock. \r\n❒ After breakfast 10:30 am From start to visit the beautiful Nature of Nuhash Palli\r\n❒ 2:30 pm lunch time & take some rest. \r\nThen your tour guide will walk you through the entire Nuhash Rural, introducing you to the Nuhash Rural Tree. Show your favorite author Humayun Ahmed\'s memorial sites, where he did what he did. Where he was shooting all those popular drama movies. You will know all the different stories of Nuhash Palli that if you know, you will have another feeling.\r\n❒ There will be some light snacks  arrangements in the evening.\r\n❒ At 5:00 pm we will move from Nuhash Palli.\r\n\r\n\r\nPrice includes\r\n•	Transportation between the program( micro bus or mini bus)\r\n•	Meals (Breakfast, Lunch & Snacks)\r\n•	Services of the guide of the program\r\n\r\nPrice do not include\r\n•	Other costs not offered in this program\r\n•	Tip for your tour guide\r\n\r\nContact:\r\nCell: 01401234764\r\nE-Mail:arohi.contact@gmail.com, \r\nwww.arohi.xyz', 'nuhash polli tour.jpg', 1799, NULL, '2020-02-03 04:54:06', '2020-02-03 04:54:06'),
(13, 'MEGHNA VILLAGE RESORT', 'BANGLADESH', 'Munshiganj', 12, 'Meghna Resort day trip\r\n Total Tourist : 12 people.\r\nTour Cost:\r\n❒ 1,499 / – BDT (per person)\r\n For children:\r\n❒ 0 to 3 years: Fee will not be required.\r\n❒ 04 to 08 years: 1,250 / – BDT\r\n\r\nTravel plans:\r\n❒ From morning to 8:30 am, we will go from Dhaka to Meghna Resort\r\n❒ Arrive at 10.30 o’clock. In between we take breakfast\r\n❒After Arrivel we visit Meghna Resort and swimming in the swimming pool.\r\n❒ 2:30 pm lunch time &amp; take some rest. After lunch, We will go to visit amazing Meghna River, sightseeing of village, \r\n  ❒ There will be some light snacks arrangements in the evening.\r\n❒ We will enjoy sun set and then back too dhaka.\r\nPrice includes\r\n• Transportation between the program\r\n• Meals (Breakfast, Lunch &amp; Snacks)\r\nPrice do not include\r\n• Other costs not offered in this program\r\n• Tip for your tour guide\r\nContact:\r\nCell: 01401234764\r\nE-Mail:arohi.contact@gmail.com, \r\nWebsite: www.arohi.xyz', 'meghna resort tour.jpg', 1499, NULL, '2020-02-03 05:10:00', '2020-02-03 05:10:00'),
(14, 'MOINOT GHAT', 'BANGLADESH', 'Karttikpur, Dohar', 12, 'Moinot Ghat Day trip\r\nMoinot Ghat is an amazing tourist spot which is situated in Dohar Upazila of Nawabganj near Dhaka. Lots of tourists go to this riverbank to get the natural wonderful view of Padma river. Sand of the river, waves, boats, sunrise and sunset give such type of views that tourists feel like they are in Cox’s Bazar sea-beach. That’s why it is called ‘Mini Cox’s Bazar’ as well. But the rainy season is the best time to visit this place as during this time, the riverside is filled with water and the high waves can be seen. Tourists can hire boat or trawler to enjoy the boat ride. Before going to mini Cox’s Bazar, tourists can also visit some other places such as Adnan Palace, Judgebari, Ukilbari etc.\r\n\r\n Total Tourist : 12 people.\r\nTour Cost:\r\n❒ 1,299 / – BDT (per person)\r\n For children:\r\n❒ 0 to 3 years: Fee will not be required.\r\n❒ 04 to 08 years: 1,150 / – BDT\r\n\r\nTravel plans:\r\n❒ From morning to 8:30 am, we will go from Dhaka to  Moinot Ghat\r\n❒ Arrive at 10.30 o’clock. In between we take beeakfast\r\n❒ In the direction of Moinot Ghat we can also visit Adnan Palace, Judgebari, Ukilbari\r\n❒ 2:30 pm lunch time &amp; take some rest. After lunch, We will go to visit amazing paddma River, sightseeing of village, \r\n  ❒ There will be some light snacks arrangements in the evening.\r\n❒ We will enjoy sun set in the mini cox\'s bazaar & then start journey to Dhaka.\r\nPrice includes\r\n• Transportation between the program\r\n• Meals (Breakfast, Lunch &amp; Snacks)\r\n\r\nPrice do not include\r\n• Other costs not offered in this program\r\n• Tip for your tour guide\r\n\r\nContact:\r\nCell: 01401234764\r\nE-Mail:arohi.contact@gmail.com, \r\nWebsite: www.arohi.xyz', 'moinot tour.jpg', 1299, NULL, '2020-02-03 05:21:31', '2020-02-03 05:21:31'),
(15, 'PADMA RESORT', 'BANGLADESH', 'Munshiganj', 12, 'One Day Relaxation in Padma resort\r\nPadma resort is designed for people who are in desperate need for relaxation and spending some time away from the daily drudgery .The specialty for our resort is it’s location just a 100 minutes drive from Dhaka and you will find yourself in front of the mighty Padma river. Then what, just a 5 minutes boat drive and you and your relaxation will be bonded together.\r\nTotal Tourist: 12 Person\r\nPer Person: 1,299/=\r\nTour Discription \r\n	Leave Dhaka in the morning 08:00am and drive to padma resort in Munshigong, approximately a two hour drive. \r\n	We reached padma resort at 10:00am. \r\n	We will board a local boat at the padma revier bank for 5 minute crossing to the resort. \r\n	Upon arrivel you will be welcome with a light drink. \r\n	Your guide will give you brief information about the locality. \r\n	Later the guide will take you for a walk along the river if you like. You can take dip in the water. \r\n	Enjoy the freshly prepared lunch at the restaurant of the resort at 02:30pm. \r\n	After lunch you will have options for activities like boating or visiting some adjacent village. \r\n	We will start return journey back to Dhaka arriving on early evening.\r\nServices Included:\r\n	All travels by reserved a/c vehicles as per ilitinerary.\r\n	All permission and entrance fees.\r\n	All sightseeing excursions as per iliterary with full time experienced guide.\r\n	All meals.\r\n\r\n\r\nServices not included:\r\n	Personal Expenses\r\n	Gratuities for any activity not specifically mentioned in the itinerary.\r\n\r\n\r\nContact Us\r\nCell: 01893071762\r\nE-mail: arohi.contact@gmail.com\r\nWebsite: www.arohi.xyz', '14.jpg', 1299, NULL, '2020-02-03 05:38:01', '2020-02-03 05:38:01'),
(16, 'SONARGAON PANAM CITY', 'BANGLADESH', 'Narayanganj', 12, 'A day long visit of historical place in sonargaon panam city and Meghne River\r\nNearly 450 years ago, in the 15th century, the Baro Bhuiyan leader Isa Khan established the first capital of Bengal in Sonargaon. Twenty square kilometre area of Sonargaon consisted of the city at that time. The Bengal Muslin was the best business commodity then. Mainly the city was built for the high ranked royal employees and the Muslin businessmen. The royal punishment and service of Sonargaon were directed from the Panam Nagar. Some have called this the port city because foreign cloth was imported through Meghna River (East) and Shitolokkha River (West) and Muslin was exported via waterway. Entering Panam Nagar, the first thing that comes to one’s sight are the buildings. Some are two-storied, some are one. Some 52 of the buildings that still stand in the Panam Nagar are mentionable. There are 31 buildings in the north side of Panam Street and 21 in the south of it.\r\n\r\nExploring Places:\r\n	Explore The Old Capital of Bengal\r\n	Visit Folk Art and Crafts Museum\r\n	Experience The Panam City and Goaldi Mosque\r\n	Cruise on the Meghna River\r\nTotal Tourist: 12 Person\r\n\r\nPer Person: 1,299/=\r\n\r\nTrip Description: \r\n\r\n	Start our journey at 08:00am. \r\n	We reached Sonargaon Panam City at 10:00am & take breakfast.\r\n	Then visit Goaldi Mosque build in 1519. \r\n	Then visit Bangladesh Folk and Art center. \r\n	After that will visit the Panam City (Panam Nagar) . In this abandoned city there are around 50 nicely decorated building those were constructed end of 18 th century. \r\n	After taking lunch in a local restaurant at 02:30pm, we will visit a nicely designed bamboo made schools. This  school achieved international award for its unique design and made of under prevailed children. \r\n	In the early afternoon, will take boat ride in the river Meghna and visit some river Islands.\r\n	At 5 p.m we take some snacks & then start journey to Dhaka.  \r\n\r\n\r\n\r\n\r\nIncluding : \r\n\r\n	English speaking guide,\r\n	all kind of transports, \r\n	entrance fees,\r\n	Lunch in a local restaurants,\r\n	Boat ride.\r\n	Evening snacks \r\n\r\n\r\nContact Us:\r\n\r\nCell:01893-071762\r\nE-mail: arohi.contact@gmail.com\r\nWebsite: www.arohi.xyz', 'panam city tour.jpg', 1299, NULL, '2020-02-03 05:54:39', '2020-02-03 05:54:39'),
(17, 'IDRAKPUR KELLA', 'BANGLADESH', 'Munshiganj', 12, 'Dhaka-Idrakpur Kella-Dhaka\r\nPer person: 1,399/ =\r\nFor children:\r\n0 to 3 years: Travel fees do not apply.\r\n4 to 8 years: 1,150 / =\r\n\r\nPlaces to visit: Idrakpur Kella, Vaggokul Jamidar Bari, Rampal Dighi, Shyam Shiddhir Moth.\r\nTour Description:\r\n	From morning to 8:00 am, we will start our journey to Idrakpur Kella.\r\n	Arrive at 10:30am.\r\n	After taking breakfast 11:00am start to visit the Idrakpur Kella.\r\n	After visit Idrakpur Kella we visit Vaggokul Jamidar Bari & Rampal Dighi.\r\n	At 02:30pm we take our lunch & take some rest.\r\n	After rest we visit Shyam Shiddhir Moth.\r\n	There will be some light snacks  arrangements in the evening.\r\n	At 05:30pm we will move from Idrakpur Kella to Dhaka\r\nPrice includes:\r\n1. The cost of transportation.\r\n2. Food (Breakfast, Lunch and Snacks)\r\n3. Program Guide Services\r\n4. Entry tickets\r\n\r\nContact:\r\nMobile: 01893-071762, 01401-234764\r\nE-mail: arohi.contact@gmail.com\r\nWebsite: www.arohi.xyz', '123.jpg', 1399, NULL, '2020-02-06 02:43:16', '2020-02-06 02:43:16'),
(18, 'BANGLAR TAJMAHAL', 'BANGLADESH', 'Narayanganj', 12, 'Dhaka-Banglar Tajmahal-Dhaka\r\nTotal Tourist: 12\r\nPer person: 1,299/ =\r\nFor children:\r\n0 to 3 years: Travel fees do not apply.\r\n4 to 8 years: 1,050 / =\r\nPlaces to visit: Banglar Tajmahal, Rajmoni Film City Studio, Jamdani Saree Shop, Handicraft Materials Shop, Earth Jewelary Shop.\r\nTour Description:\r\n	From morning to 8:00 am, we will start our journey to Banglar Tajmahal.\r\n	Arrive at 10:00am.\r\n	After taking breakfast 10:30am start to visit the Banglar Tajmahal inside.\r\n	Then we visit Rajmoni Film City Studio.\r\n	After visit inside of Banglar Tajmahal we came out and at 02:30pm we take our lunch & take some rest.\r\n	After rest we visit Jamdani Saree Shop, Handicraft Materials Shop, Earth Jewelary Shop.\r\n	There will be some light snacks  arrangements in the evening.\r\n	At 05:30pm we will move from Banglar Tajmahal to Dhaka.\r\nPrice includes:\r\n1. The cost of transportation.\r\n2. Food (Breakfast, Lunch and Snacks)\r\n3. Program Guide Services\r\n4. Entry tickets\r\n\r\nContact:\r\nMobile: 01893-071762, 01401-234764\r\nE-mail: arohi.contact@gmail.com\r\nWebsite: www.arohi.xyz', '12312.jpg', 1299, NULL, '2020-02-06 03:20:09', '2020-02-06 03:20:09'),
(19, 'CHANDPUR', 'BANGLADESH', 'Chandpur', 12, 'Chandpur Tour, An Exclusive One Day long River Cruise\r\nDhaka (Buriganga)–Chadpur (Meghna)\r\nPer person cost: Tk. 1399/-\r\nMinimum Group Size: 12\r\nTrip Activity\r\n07:00am: Meet & greetings at your pick up point\r\n07:30am: Start from Shadarghat\r\n09:00am: Take breakfast\r\n11:00am: Reach at Chandpur City And  Visiting local historical places.\r\n12:00pm: Get off bank of Meghna for game activity\r\n02:30pm: Take lunch\r\n03:00pm: Enjoy traditional cultural program\r\n05:00pm: Take evening snacks\r\n06:30pm: Departure from Vessel & Transfer to your drop point.Back to your sweet home & end the trip\r\n\r\nPackage  includes\r\n• Transportation between the program\r\n• Meals (Breakfast, Lunch &amp; Snacks)\r\n\r\nContact: \r\nPhone: 01893071762\r\nE-Mail: arohi.contact@gmail.com\r\nWebsite: www.arohi.com', 'chadpur.jpg', 1399, NULL, '2020-02-08 04:12:19', '2020-02-08 04:12:19'),
(20, 'SAFARI PARK', 'BANGLADESH', 'Gazipur', 12, 'Day Trip in Bangabandhu Sheikh Mujib Safari Park\r\n❒ Day Tour, Visit with family and friends Bangabandhu Safari Park\r\n\r\nTour Cost:\r\n❒ 1,399 / – BDT (per person)\r\n\r\nFor children:\r\n❒ 0 to 3 years: Fee will not be required.\r\n❒ 04 to 08 years: 1,199 / – BDT\r\n\r\nTour Description: \r\n•	8:30am start our journey from Dhaka to Safari Park\r\n•	10:00am-10:30am enter the Bangabandhu Sheikh Mujib Safari Park and visit core Safari, Safari Kingdom, Biodiversity Park\r\n•	1:30pm–2:30pm lunch\r\n•	2:40pm– 4:30pm explore Bangabandhu Sheikh Mujib Safari Park. Also visit the famous Bangabandu sqaure and National History Musuem\r\n•	5:30pm serve some light snacks\r\n•	6:00pm start our journey to back Dhaka\r\n\r\n\r\nPrice includes\r\n•	Transportation between the program\r\n•	Meals (Breakfast, Lunch & Snacks)\r\n•	Services of the guide of the program\r\n•	All tickets\r\n\r\n\r\n\r\nContact:\r\nMail: arohi.contact@gmail.com\r\nPhone: 01401234764\r\nWebsite: www.arohi.xyz', 'safari park tour.jpg', 1399, NULL, '2020-02-08 04:57:03', '2020-02-08 04:57:03'),
(21, 'NIKLI HAOR', 'BANGLADESH', 'Kishorgonj', 12, '‘Day Tour in Nikli Haor\r\nTotal Tourist : 10-12 people.\r\nTour Cost:\r\n❒ 1,399 / – BDT (per person)\r\nVisiting Place:  Nikli Haor, Shiv Temple Gangatia\r\n\r\nTravel plans:\r\n❒ From morning to 7.00 am, we will go from Dhaka to Nikli Haor\r\n❒ Arrive at 10.30 o’clock. In between we take beeakfast\r\n❒ In the direction of Nikli Haor we can also seen some Natural beauty , “sorisa khet” and Shiv Temple.\r\n❒ 2:30 pm lunch time & take some rest. After lunch, We will also enjoying  boat riding. \r\n❒ There will be some light snacks arrangements in the evening.\r\n❒We will enjoy sun set in the Nikli Haor\r\n ❒Than we Come Back to Dhaka\r\nPrice includes\r\n• Transportation between the program\r\n• Meals (Breakfast, Lunch &amp; Snacks)\r\nPrice do not include\r\n• Other costs not offered in this program\r\n• Tip for your tour guide\r\nContact:\r\nCell: 01401234764, 01893-071762\r\nE-Mail:arohi.contact@gmail.com, \r\nWebsite: www.arohi.xyz', 'nikli hawor.jpg', 1399, NULL, '2020-02-08 05:34:02', '2020-02-08 05:34:02'),
(22, 'GOLAP GRAM', 'BANGLADESH', 'Shadullahpur', 12, 'Sadullapur Rose Village\r\nBed of roses -- this is exactly what you would feel in Sadullapur, popularly known as Golap Gram (village of roses).Blood red roses are everywhere in Sadullapur, Shaympur, Kamalpur and Bangnibari villages in Birulia union of Savar, on the outskirts of Dhaka city.Alongside roses, flower cultivators plant white roses, gerbera and gladiolus, too. People come from different parts of the city to visit the villages of flowers.\r\n\r\n Total Tourist : 10-12 people.\r\nTour Cost:\r\n❒ 599 / – BDT (per person)\r\n \r\nTravel plans:\r\n•	From morning to 7:00 am, we will go from Mirpur 1 to Dia bari boat ghat Explore boat journey\r\n•	Arrive at 8.30 o’clock. In between we take breakfast\r\n•	After Arrivel we visit Golap gram,Enjoing fresh air and beautiful nature\r\n•	2:30 pm lunch time & take some rest. \r\n•	After lunch, We will go to visit Rose Market, sightseeing of village \r\n•	There will be some light snacks arrangements in the evening.\r\n•	We will enjoy sun set and then back too dhaka.\r\nPrice includes\r\n• Transportation between the program\r\n• Meals (Breakfast, Lunch & Snacks)\r\nContact:\r\nCell: 01401234764, 01893071762\r\nE-Mail: arohi.contact@gmail.com \r\nWebsite: www.arohi.xyz', 'golapgram.jpg', 599, NULL, '2020-02-13 01:15:20', '2020-02-13 01:15:20'),
(23, 'HAJIGONJ FORT', 'BANGLADESH', 'Narayanganj', 12, 'Narayanganj  Hajiganj Fort\r\n\r\nTotal Tourist : 10-12 people.\r\nTour Cost:\r\n❒ 1299 / – BDT (per person)\r\n \r\nTravel plans:\r\n•	From morning to 8:00 am, we will go from Dhaka to Narayanganj  Hajiganj Fort\r\n•	Arrive at 11.30 o’clock. In between we take breakfast\r\n•	After arrival we visit heritage of 400 years old Hajiganj Fort.\r\n•	2:30 pm lunch time & take some rest. \r\n•	After lunch, We will go to visit sitlokkha river\r\n•	There will be some light snacks arrangements in the evening.\r\n•	We will enjoy sun set and then back too Dhaka.\r\n\r\nPrice includes\r\nTransportation between the program\r\nMeals (Breakfast, Lunch & Snacks)\r\n\r\nContact:\r\nCell: 01401234764, 01893071762\r\nE-Mail: arohi.contact@gmail.com \r\nWebsite: www.arohi.xyz', 'hajiganj.jpg', 1299, NULL, '2020-02-13 01:16:35', '2020-02-13 01:16:35'),
(24, 'PURAN DHAKA', 'BANGLADESH', 'DHAKA', 12, 'Puran Dhaka Day Tour\r\nGet a comprehensive look at the food, culture and history of Dhaka during this 10-hour city sightseeing excursion. Explore historic sights like Parliament House and Lalbag Fort, and get a glimpse of Dhaka religious landmarks like the Hindu Dhakeswari Temple and Star Mosque. You’ll also get to sample local cuisine during an included lunch and make an afternoon stop at a Dhaka street food market.\r\n\r\n Total Tourist : 10-12 people.\r\nTour Cost:\r\n❒ 799 / – BDT (per person)  \r\n \r\nTravel plans:\r\n❒ From morning to 8:00  am we will start our journey for old dhaka\r\n❒ Arrive at 09:30 o’clock. In between we take breakfast\r\n❒First we Start from  Dhakeswari Temple, than we visit Sakhari Bazaar, Tara Mosque, Ahsan Manjil Sadarghat launch Terminal.\r\n❒ 2:30 pm lunch time and take some rest. After lunch, We will go to visit amazing Lalbagh Fort\r\n❒ There will be some light snacks arrangements in the evening.\r\n❒ At 06:00pm we back to our place.\r\nPrice includes\r\n• Transportation between the program\r\n• Meals (Breakfast, Lunch & Snacks)\r\n• All entry fee\r\n\r\nContact:\r\nCell: 01401234764\r\nE-Mail: arohi.contact@gmail.com \r\nWebsite: www.arohi.xyz', 'purandhaka.jpg', 799, NULL, '2020-02-13 01:18:37', '2020-02-13 01:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_packages`
--

CREATE TABLE `holiday_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_day` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `included_services` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Excluded_services` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Acommodation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holiday_packages`
--

INSERT INTO `holiday_packages` (`id`, `package_name`, `country`, `city`, `total_day`, `valid_from`, `valid_to`, `person`, `description`, `tour_details`, `included_services`, `Excluded_services`, `Acommodation`, `image`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(3, 'BARISAL', 'BANGLADESH', 'BARISAL', '2 Days & 2 Nights', '02/21/2020', '02/23/2020', 10, 'Tour duration: 2 day 2 nights\r\nVisiting Place: Durga sagar, Guthia Mosque, Guava Market. \r\n\r\nTotal Cost:\r\nPer person: 4999/=\r\nPer person (Couple): 5500/=', 'Day 1: Start from Dhaka to Barisal by launch at 9:00 pm. Enjoying launch journey and feel the night view of the river.  Overnight journey.\r\n\r\nDay 2:  Arrive Barisal  at 07.00 am. Check in to the hotel.Then we shall visit  Guava Market.. Lunch at 02.00 pm than  we shall visit in Durga Sagar and Guthia Mosque,back to hotel at 08.30 pm. Dinner at 9.30 pm. Overnight at Barisal.\r\n\r\nDay 3: Breakfast within 7.30 am, Then come back to Dhaka by launch.', '1.	All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary\r\n2.	AC / Non ac Transport / Ship / Local Transport / Boat / Toller\r\n3.	All sightseeing, toll, tax and entry fees as per mentioned itinerary\r\n4.	Experienced Guide\r\n5.	All meals', 'All personal expenses', '3 star hotel', 'barisal.jpg', 4999, NULL, '2020-02-03 18:31:08', '2020-02-03 18:31:08'),
(4, 'Bandarban tour Package', 'BANGLADESH', 'Bandarban', '2 Day 3 Nights', NULL, NULL, 15, 'Tour duration: 2 day 3 nights\r\nVisiting Place: Nilachol, chimbuk pahar, Shoila Propat, sorno mondir, Meghla\r\nTotal Cost:\r\nPer person: 4999/=\r\nPer person (Couple): 5500/=\r\nGroup Sight: Start with 2', 'Day 1: Start from Dhaka to Bandarban at 11:00 pm. Overnight journey.\r\n\r\nDay 2:  Arrive Bandarban at 07.00 am. Check in to the hotel.Then we shall visit Meghla & Nilachal,  Shorno mandir . Lunch at 02.00 pm than back to hotel at 06.00 pm. Dinner at 8.00 pm. Overnight at Bandarban.\r\n\r\n\r\nDay 3: Breakfast within 7.30 am. Then we shall start for shoila propat and chimbuk pahar. Lunch  at 01.30pm. Free time up to 04.00pm. At 04.00 pm start for Bandarban & arrive at 06.00pm. Evening free for Shopping. Dinner at 9.30 pm. After Dinner Start for Dhaka', '1.	 All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary\r\n2.	AC / Non ac Transport / Ship / Local Transport / Boat \r\n3.	All sightseeing, toll, tax and entry fees as per mentioned itinerary\r\n4.	Experienced Guide\r\n5.	All meals', 'All Personal Expenses', '3/4 star hotel', 'bandarban tour 22.jpg', 4999, NULL, '2020-02-16 17:23:49', '2020-02-16 17:23:49'),
(5, 'Chattogram visit', 'BANGLADESH', 'Chattogram', '2 Days & 2 Nights', NULL, NULL, 12, 'Duration: 2 Days 3 Night\r\nPrice \r\nPer person: 4999/=\r\nExploring Place:\r\n	World war (2nd) Cemetery\r\n	Foy’s Lake\r\n	Ethnological Museum\r\n	Court Building Museum\r\n	Patenga Beach', 'Day 1: start night journey for Chittagong bus /train from Dhaka. Overnight journey.\r\n\r\nDay 2: Arrived at Chittagong in the early morning. Then check in hotel. After a little refreshment tour to foyez lake.  After lunch tour to potenga beach and enjoy sun set in there.  After sun set return to hotel. Overnight in Chittagong.\r\n\r\nDay 3: After taking breakfast tour to world war cemetery, ethnological museum, court building museum. Then return to hotel take lunch, I n the evening back to Dhaka.', '•	Transportation between the program\r\n•	Meals (Breakfast, Lunch & Snacks)\r\n•	Services of the guide of the program\r\n•	Museum tickets', 'All kinds of Personal expenses', '3/4 star hotel', 'chattogram.jpg', 4999, NULL, '2020-02-16 17:36:53', '2020-02-16 17:36:53'),
(11, 'Cox’s Bazar', 'BANGLADESH', 'Cox\'s Bazar', '2 Days 3 Nights', NULL, NULL, 12, 'Tour Duration: 3 Night 2 Days\r\n\r\nVisited Place: Inani beach, himchhari Falls, Sugondha Beach, Laboni Beach, Lockal Market\r\nTour Cost: \r\nPer Person: 6500/=\r\nPer person (Couple): 7000/=', 'Dhaka- cox’s Bazar- Dhaka \r\nDay 1: Leave Dhaka for Cox\'s Bazar by reserved car/coach - Overnight journey\r\n\r\nDay 2: Reached Cox\'s Bazar at 08 am. Breakfast and short beach tour. After lunch, start journey to Inani Beach, Himchhari Falls and enjoy the last Sunset of this year. Back to coxs bazar sea beach. Enjoy the  night environment of the beach, Overnight at Cox\'s Bazar.\r\n\r\n\r\nDay 3: Enjoy the first sun rise in 2020, after breakfast start journey laboni and sugondha beach. Take lunch and visit beach market. Back to cox’s bazaar in evening than take dinner. Back to Dhaka by Night coach.', '1.	All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary\r\n2.	AC / Non ac Transport / Ship / Local Transport / Boat / Toller\r\n3.	All sightseeing, toll, tax and entry fees as per mentioned itinerary\r\n4.	Experienced Guide\r\n5.	All meals', 'All personal Expenses', '3/4 star hotel', 'cox\'s bazar.jpg', 6500, NULL, '2020-02-16 18:53:58', '2020-02-16 18:53:58'),
(12, 'Sreemangal', 'BANGLADESH', 'Sreemangal', '2 Days & 2 Nights', NULL, NULL, 12, '2 days 2 Night \r\n\r\nVisiting Place:  Madhabkundo Waterfall, Madhabpur Lake, Lawachara National Park and Khasia village\r\n\r\nPackage Price : 4500', 'Night-1:\r\nOvernight journey by bus/ train. \r\n\r\nDay-1 :\r\nEarly Morning reached at Sreemangal and Check in Hotel. After  having breakfast  travel to Madhabpur Lake, Lawachara National Park, khaisia Vilage. In between we take a Lunch. Back to hotel and Night stay at Hotel.\r\n\r\nDay-2 :\r\nIn the morning Journey start from hotel  for  sightseeing to Madhabkundo Waterfall . Breakfast on the way in local restaurant .Back to the hotel and in Night couch come back to Dhaka.', '•	Overnight accommodation\r\n•	Hotel pickup and drop-off in Dhaka\r\n•	National Park fees\r\n•	Breakfast, lunch, dinner', 'All personal Expenses', '3/4 star hotel', 'sreemangal.jpg', 4500, NULL, '2020-02-16 18:59:55', '2020-02-16 18:59:55'),
(13, 'Kuakata', 'BANGLADESH', 'Kuakata', '4 Night 3 Days', NULL, NULL, 12, '4 Night 3 Days in Kuakata \r\n\r\nPackage Price: 7000\r\n\r\nVisiting Place: Lanch Journey, patuakhali, kuakata sea beach, Rakhain Tribe Village, \r\n                             Fatra Mangrove Forest, Gangamoti Resurve forest', 'Day 01: Start from Dhaka by Lanch to Patuakhali in the evening.\r\n\r\nDay 02: Arrival Patuakhali in the morning and from there by Microbus to Kuakata. Hotel check-in and refresh. Go to beach to enjoy sea. After lunch go to Rakhain Tribe village to see their lifestyle. Back to beach and enjoy sunset.\r\n\r\nDay 03: Enjoy fabulous beauty of sunrise from the beach in early morning. Go to Fatra Mangrove forest. Watch the beauty of sunset from beach. This is the only sea beach in Bangladesh where you can enjoy sunrise and sunset from the same beach.\r\n\r\nDay 04: Enjoy sunrise from the beach. After breakfast visit Gangamoti Resurve Forest. After lunch take a short rest and then go to Jelepara (fishermen\'s village) to watch their lifestyle. In the afternoon start for Patuakhali by Microbus and at Night start for Dhaka', '1.	Dhaka – Kuakata - Dhaka  Bus/lanch ticket\r\n2.	All meals \r\n3.	Mineral water for drinking during the trip.\r\n4.	An accompanied Guide during the trip', '1.	Personal expenses \r\n2.	Items of personal nature and items not mentioned above.', '3/4 star hotel', 'kuakata.jpg', 7000, NULL, '2020-02-16 19:22:13', '2020-02-16 19:22:13'),
(14, 'Sylhet', 'BANGLADESH', 'Sylhet', '3 Days 4 Night', NULL, NULL, 12, '3 Days 4 Night in Sylhet\r\nVisiting Place: Ratargul – Bisanakandi – Jaflong –Dargah Shariff \r\n\r\nPackage Price: BDT. 4,599 Per Person', 'Night-1:\r\nOvernight journey by bus/ train. \r\nDay-1 :\r\nEarly Morning reached at Sylhet and Check in Hotel. After  having breakfast  travel to Jaflong for sightseeing. LAfter Lunch  rest at hotel . 4.00 visit to Dargah Sariff that near to Hotel. Night stay at Hotel.\r\nDay-2 :\r\n6.30 Journey start from hotel  for  sightseeing to Ratargul and Bisanakandi. Breakfast on the way in local restaurant .Back to the hotel and Night stay at Hotel.\r\nDay-3:\r\nFree time for you own. Enjoy Sylhet.  Night stay at Hotel\r\nDay- 4: \r\nFree time for you own. Checkout from hotel. Journey start from Sylhet to Dhaka By Train/ Non AC Bus. Reach Dhaka at night.', '1. Dhaka - Sylhet - Dhaka Non Ac Bus\r\n2.Hotel Accommodation \r\n3. Mini Bus for sightseeing\r\n4. Experienced Guide facilities\r\n5. Daily Breakfast', 'All personal expenses', '3/4 star hotel', 'sylhet.jpg', 4599, NULL, '2020-02-16 19:25:24', '2020-02-16 19:25:24'),
(15, 'Saint Martin', 'BANGLADESH', 'Saint Martin', '2 Days 3 Nights', NULL, NULL, 12, '02 Days & 03 Nights\r\n\r\nPer Person Cost:  8,500/- BDT\r\n\r\nVisiting Place : Saint Martin,teknaf, Narikelzinjira, Chera Dhip, Naf River.', 'Night 01: \r\n•	Meet & greetings at bus stand at 10:00pm\r\n•	Start for St.Martin at 10:30pm by bus\r\n \r\nDay 01  Teknaf – St. Martin:\r\n•	Arrive Teknaf at 08:00am, take breakfast at Parjatan restaurant\r\n•	Start for St. Martin by Keari Sindbad / Kutubdia Ship at 09:00am\r\n•	Arrive St. Martin at 12:00pm & check in to hotel\r\n•	Visit Narikelzinjira & enjoy sunset there & back to hotel\r\n\r\nNight 02: \r\n•	Overnight stay at hotel\r\n \r\nDay 02:\r\n•	Wake up early and take breakfast\r\n•	After taking breakfast departure for Cheradhip\r\n•	Enjoy the cheradhip and back to hotel\r\n \r\nNight 03: \r\n•	Back to hotel, check out from hotel\r\n•	Transfer to vessel way to Teknaf\r\n•	Overnight Journey\r\n•	Arrive Dhaka early morning, back to sweet home and end the tour.', '•	Dhaka – Teknaf- Dhaka by  bus.\r\n•	Return Keari Sindbad or Kutubdia ship tickets.\r\n•	Sightseeing to Cheradip by country boat.\r\n•	Accommodation.\r\n•	Breakfast at hotel\r\n•	Take care by local experienced guide during the trip.', 'All personal Expenses', '3/4 star hotel', 'tourlkjnlj.jpg', 8500, NULL, '2020-02-16 19:28:17', '2020-02-16 19:28:17'),
(16, 'Sundarban', 'BANGLADESH', 'Sundarban', '3 Days/4 Nights', NULL, NULL, 12, 'Sundarban Package (3 Days/4 Nights)\r\n\r\nVisiting Place: Rupsha Ghat,  Mongla, kochikhali, Herbaria, Tambulbunia, Katka, Tiger Point, jamtola beach, Hiron point, Alor kol, Crocodile Project, Dublar Chor,\r\nPrice: \r\nPer person: 12000/=\r\nCouple Per person: 14000/=', 'Night- 1:\r\nJourney start from Dhaka at 9 pm by Non Ac bus.\r\nDay 1:\r\nWelcome to our Sundarban Adventure Cruise,in the morning we shall start our journey from Rupsha Ghat at Khulna. After completion of passenger boarding we shall start cruising to the south. In a couple of hours we\'ll reach Mongla area which is known as the 2nd Sea Port of Bangladesh. After that the ship will resume her voyage and arrive at Kochikhali.In our way to kochikhali we will visit Herbaria.\r\nNight 2:\r\nAt night the ship will remain anchored in Kochikhali forest station. Overnight stay on vessel.\r\nDay 2:\r\nShortly after sunrise we will invite you to explore the narrow creeks to board a wooden row boat, allowing a close look to the unique mangrove fauna & flora and also visit Office area. After the boat trip we\'ll go back to ship for breakfast. Our next destination will be watch tower & kotka jamtola beach. We\'ll be heading towards Katka with the morning High Tide. After finishing launch we will visit Kotka Office area, watch tower to enjoy its beauty. We\'ll sail out from Katka with the evening High Tide to have a BBQ party on board. Vessel will drop anchor at Tambulbunia at around midnight.\r\n\r\nNight 3:\r\nNight stay at Tambu lbunia.\r\n\r\n\r\n\r\nDay 3:\r\nAt last morning we\'ll go out for boat trip in nearby canal at Tambulbunia We’ll start our return journey to Khulna at High Tide after Boat trip in Tambulbunia. On the way to Khulna we\'ll visit Herbaria forest station and will arrive Khulna at evening.\r\nNight- 4:\r\nAfter Dinner Journey start from From Khulna to Dhaka.', '1.	Dhaka – Khula - Dhaka Non AC Bus ticket\r\n2.	Cruise inside the Forest.\r\n3.	Accommodation on our cruiser on twin sharing basis\r\n4.	All meals from day-1 to day-3.\r\n5.	All activities inside the forest as per itinerary.\r\n6.	Small country boat to make trips inside small canals/creeks.\r\n7.	Mineral water for drinking during the trip.\r\n8.	Dinner on the last night.\r\n9.	Forest fees, permission.\r\n10.	Armed forest guard from the forest department\r\n11.	An accompanied Guide during the trip.', '1.	Drinks both hard and soft.\r\n2.	Items of personal nature and items not mentioned above.\r\n3.	Fees for the video & still cameras of the guests.', '3/4 star hotel', 'sundarban.jpg', 12000, NULL, '2020-02-16 19:31:05', '2020-02-16 19:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` double(8,2) NOT NULL DEFAULT 5.00,
  `price_range` int(11) NOT NULL,
  `star` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `title`, `Location`, `description`, `address`, `image`, `review`, `price_range`, `star`, `created_at`, `updated_at`) VALUES
(13, 'HOTEL AGRABAD', 'CHATTOGRAM', 'Featuring an all year outdoor swimming pool, Aqua Blu, the 4-star Hotel Agrabad also boasts a well-equipped gym and a bar with live band performances. Agrabad Thai Spa offers sauna, spa bath, foot massage, head, scalp and full body massage.\r\n\r\nAir-conditioned rooms are equipped with a flat-screen TV, minibar and personal safe. En suite bathrooms come with a shower.\r\n\r\nHotel Agrabad is a 10-minute walk from downtown Chittagong and 5 km from the Main Sea Port. Shah Amanat International Airport is 20 km away.', 'Sabder Ali Road Agrabad Commercial Area, Chattogram City 4000 Bangladesh', 'Exterior.jpg', 5.00, 8415, '4', '2019-12-13 22:34:16', '2020-01-01 05:04:15'),
(14, 'HOTEL RADISSION BLU', 'CHATTOGRAM', 'Featuring a fitness centre, Radisson Blu Chittagong Bay View offers accommodation in Chittagong. Guests can enjoy the on-site multi-cuisine restaurant. Free WiFi is available throughout the property.\r\n\r\nRooms come with a flat-screen satellite TV and a seating area for your convenience. All rooms have views of the mountains or city. Every room is equipped with a private bathroom fitted with a shower.\r\n\r\nYou will find a 24-hour front desk and concierge desk at the property. Free parking is offered.', 'SS Khaled Road Lalkhan Bazar, Chattogram, Bangladesh, 4000 Chattogram, Bangladesh', '7gff.jpg', 5.00, 11484, '5', '2019-12-13 22:53:21', '2020-01-01 05:05:19'),
(15, 'HOTEL THE AVENUE', 'CHATTOGRAM', 'THE AVENUE HOTEL & SUITES is located in Chittagong. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi. Private parking can be arranged at an extra charge.\r\n\r\nAt the hotel, each room is equipped with air conditioning and a private bathroom.\r\n\r\nGuests at THE AVENUE HOTEL & SUITES can enjoy a buffet breakfast.', 'Ispahani Moor, Lalkhan Bazar, Chattogram 4150', 'images33.jpg', 5.00, 4345, '3', '2019-12-14 00:01:28', '2020-01-01 05:07:02'),
(16, 'MERIDIAN HOTEL & RESTAURANT', 'CHATTOGRAM', 'Meridian Hotel & Restaurant offers air-conditioned accommodation in Chittagong. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi. The accommodation features a shared lounge, an ATM and currency exchange for guests.\r\n\r\nAt the hotel, the rooms are fitted with a desk, a flat-screen TV and a private bathroom. At Meridian Hotel & Restaurant each room is fitted with a seating area.\r\n\r\nA continental breakfast is available each morning at the accommodation.', '1367 CDA Avenue, 4000 Chattogram, Bangladesh', '33333.jpg', 5.00, 3255, '3', '2019-12-14 00:39:49', '2020-01-01 05:07:52'),
(17, 'HOTEL ASIAN INTERNATIONAL', 'CHATTOGRAM', 'Asian SR Hotel is 100 m from Chittagong’s main bus stand (BRTC) and Chittagong’s main railway station. The hotel houses a restaurant and offers 24-hour room service.\r\n\r\nLocated in the heart of the city centre, the hotel is a 25-minute drive from the Shah Amanat International Airport.\r\n\r\nFitted with a small seating area rooms feature satellite TV and a wardrobe. The attached bathroom comes with hot and cold water supply.\r\n\r\nFree internet access is available in the business centre and in select rooms. Staff at the 24-hour front desk can assist with luggage storage, same-day laundry service and currency exchange services. Other facilities include meeting rooms and a tour desk.\r\n\r\nOpen from breakfast through dinner, Asian SR’s restaurant serves Indian dishes, along with Thai, Chinese and European favourites.', '291 Station Road, 4000 Chattogram, Bangladesh', '132899447 (1).jpg', 5.00, 990, '2', '2019-12-14 01:13:00', '2020-01-01 05:08:55'),
(18, 'HOTEL ALANKAR INTERNATIONAL', 'CHATTOGRAM', 'Located in the heart of the city centre, the hotel is a 25-minute drive from the Shah Amanat International Airport.\r\n\r\nFitted with a small seating area rooms feature satellite TV and a wardrobe. The attached bathroom comes with hot and cold water supply.\r\n\r\nFree internet access is available in the business centre and in select rooms. Staff at the 24-hour front desk can assist with luggage storage, same-day laundry service and currency exchange services. Other facilities include meeting rooms and a tour desk.', '291 Station Road, 4000 Chattogram, Bangladesh', '85700480.jpg', 5.00, 550, '2', '2019-12-14 01:50:38', '2020-01-01 05:10:10'),
(19, 'HOTEL HAQUE TOWER INTERNATIONAL (RESIDENTIAL)', 'CHATTOGRAM', 'In the heart of Chittagong, finding its place in the middle of Chittagong Airport and Chittagong Railway Station, we welcome you for a comfortable stay.', 'Hoque Tower, Chowmoni, Agrabad, Chattogram 4100', 'Hotel Haque International.jpg', 5.00, 770, '3', '2019-12-14 02:23:22', '2020-01-01 05:11:54'),
(20, 'LAND MARK HOTEL & RESTAURANT', 'CHATTOGRAM', 'LANDMARK Hotel & Restaurant offers accommodation in Chittagong. Guests can enjoy the on-site restaurant. Free WiFi is provided and free private parking is available on site. A flat-screen TV with cable channels, as well as an iPod docking station and a laptop are offered. Certain units include a seating area to relax in after a busy day. Some rooms have views of the pool or garden. Rooms are fitted with a private bathroom fitted with a bath. For your comfort, you will find slippers and free toiletries. There is free shuttle service, a 24-hour front desk and hairdresser\'s at the property.', 'Agrabad, 3072 Sheikh Mujib Rd, Chattogram 4100', '4-980x500.jpg', 5.00, 2300, '3', '2019-12-14 03:19:48', '2020-01-01 05:17:57'),
(21, 'HOTEL ROYAL BEACH', 'CHATTOGRAM', 'Hotel Royal Beach is situated in Saima Centre at Patenga of Chittagong.\r\n\r\nThe hotel offers executive and deluxe rooms some of which are air conditioned. The rooms are furnished comfortably with clean beds, side table, satellite television, closet, dressing table and an extra seating arrangement. The attached bathrooms are spacious and clean. They come with modern facilities and running water. The hotel houses a restaurant that serves local and international cuisine. Private dining can be availed at any time by the 24 hour room service.The hotel features laundry and dry cleaning services, room service and daily newspaper. The electricity runs round the clock with the help of a generator. The premises are strictly guarded by security personnel and parking space is also available for guests.\r\n\r\nPatenga Sea Beach is located at the confluence of the Karnaphuli river. The beach is 14 kilometers away from the city and has many markets surrounding it. Guests can take souvenirs and buy gifts such as Burmese items, oyster shell products and jewellery.', '2nd Floor, Saima Center, Kamal Ataturk Avenue, Potenga sea beach more, Chattogram', 'q.jpg', 5.00, 1056, '3', '2019-12-14 03:33:07', '2020-01-01 05:19:35'),
(22, 'HOTEL SUPER PRINCE', 'CHATTOGRAM', 'Hotel Prince is offering accommodation in Chittagong. Private parking can be arranged at an extra charge.\r\n\r\nAll guest rooms in the hotel are fitted with a flat-screen TV and free toiletries.\r\n\r\nStaff at Hotel Prince are available to provide information at the 24-hour front desk.', 'A.K Khan Moor, 4th Floor, Bishowroad, Dhaka - Chattogram Highway, Akborshah, Chattogram', 'information_items_property_15959389.jpg', 5.00, 450, '3', '2019-12-14 03:50:45', '2020-01-01 05:21:27'),
(23, 'HOTEL PARADISE (NEW) RESIDENTIAL', 'CHATTOGRAM', 'Hotel Paradise (New) Residential is situated in Omor goni plaza,Beside sanmar ocean city,East nasirabad, C.D.A Avenue,chittagong (208.22 km) 4000 Chittagong.The rooms are furnished comfortably with clean beds, side table, satellite television, closet, dressing table and an extra seating arrangement. The attached bathrooms are spacious and clean. They come with modern facilities and running water.The electricity runs round the clock with the help of a generator. The premises are strictly guarded by security.', 'Omor goni plaza,Beside sanmar ocean city,East nasirabad, C.D.A Avenue,Chattogram (208.22 km) 4000 Chattogram', '41.jpg', 5.00, 1080, '2', '2019-12-15 01:54:12', '2020-01-01 05:23:30'),
(25, 'HOTEL LORD\'S INN PVT. LTD', 'CHATTOGRAM', 'Featuring a fitness centre, Hotel Lord\'s Inn is located in Chittagong. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi. There is free private parking and the property provides paid airport shuttle service.\r\n\r\nAll units in the hotel are equipped with a flat-screen TV. At Hotel Lord\'s Inn each room includes air conditioning and a private bathroom.\r\n\r\nA continental breakfast is available daily at the accommodation.', 'Hosna Kalam Coplex, Chattogram, Bangladesh., 4000 Chattogram, Bangladesh', '25.jpg', 5.00, 3080, '3', '2019-12-15 02:28:48', '2020-01-01 05:24:20'),
(26, 'HOTEL OCEAN PARADISE', 'COX\'S BAZAR', 'Ocean Paradise Hotel & Resorts offers impeccable service and all the essential amenities to invigorate travelers. Guests of the hotel can enjoy on-site features like 24-hour room service, free Wi-Fi in all rooms, facilities for disabled guests, Wi-Fi in public areas, valet parking.\r\n\r\nExperience high quality room facilities during your stay here. Some rooms include television LCD/plasma screen, internet access – wireless (complimentary), non smoking rooms, air conditioning, desk, provided to help guests recharge after a long day. Whether you\'re a fitness enthusiast or are just looking for a way to unwind after a hard day, you will be entertained by top-class recreational facilities such as hot tub, fitness center, sauna, outdoor pool, indoor pool. Whatever your reason for visiting Cox\'s Bazar, the Ocean Paradise Hotel & Resorts is the perfect venue for an exhilarating and exciting break away.', '28-29 Hotel Motel Zone, Kolatoli Road, Cox\'s Bazar, Cox\'s Bazar, Bangladesh', 'ry786.jpg', 5.00, 6050, '5', '2019-12-15 03:09:03', '2020-01-01 05:36:41'),
(27, 'HOTEL D\'OCEANIA', 'COX\'S BAZAR', 'To enjoy a heaven touch with overlooking the bay of bangle is an dream touch of life. Only 300 meters away from the bustling heart of Cox\'s Bazar standy beach and sitting in the laps of hills. Hotel D\'Oceania Offers deluxe accommodation with 80 well decorated rooms. The panoramic views of the ocean, the majestic hills and the nature beauty of the heaven of tourism are all wonderfully complemented by Bangladeshi hospitality. Local sightseeing and visiting to the surrounding coastal area can be organized by our personal travel desk. We have also a restaurant which serves many kinds of mouthwatering delicious foods, It also serve various of delectable dished with an authentic formula. Honey mooners will get romance with the elegance, transquility and privacy in our hotel.', 'Dolphin Mor, Cox\'s Bazar Marine Dr, Cox\'s Bazar 4700', '74547ggyuiyuiyuiy.jpg', 5.00, 1375, '3', '2019-12-16 23:31:18', '2020-01-01 05:35:48'),
(28, 'DYNAMIC SH RESORT', 'COX\'S BAZAR', 'Dynamic SH Resort is an excellent choice for travelers visiting Cox\'s Bazar, offering many helpful amenities designed to enhance your stay. Dynamic SH Resort offers guests an array of room amenities including a flat screen TV, and getting online is possible, as free wifi is available. The small hotel offers a 24 hour front desk, room service, and shops, to make your visit even more pleasant. The property also features an on-site restaurant. While visiting Cox\'s Bazar, you may want to try some shrimp at one of the nearby restaurants, such as Poushee Restaurant. Enjoy your stay in Cox\'s Bazar.', 'Kolatoli Cirlce, Dolfin moor, Cox\'s Bazar 4700 Bangladesh', '456tujyudtyuyuty.jpg', 5.00, 825, '3', '2019-12-16 23:55:25', '2020-01-01 05:35:06'),
(29, 'HOTEL COASTAL PEACE', 'COX\'S BAZAR', 'Whether you are at Hotel Coastal Peace for business or leisure, all 60 rooms offer everything you need to ensure a comfortable and pleasant stay. Our rooms are specious and perfect for night\'s sleep. It\'s magnificant and uniquely located along wiht the world\'s longest sandy beach in Cox\'s Bazar and 5 minitues drive from the Airport. The comforts and charms of the architectural magnanimity complement the natural beauty and wonder of the Tourist destination of Cox\'s Bazar. It\'s an oasis which reflects contemporary style of living. We are committed to provide the guest with world class hospitality within affordable price.', 'House - 6, Block - B Kolatoli Road', '25521537.jpg', 5.00, 1925, '4', '2019-12-17 00:21:48', '2020-01-01 05:34:01'),
(30, 'PRAASAD PARADISE', 'COX\'S BAZAR', 'So many travelers make Praasad Paradise their lodge of choice when visiting Cox\'s Bazar because of their easy access to the beach. Praasad Paradise is a beach front hotel resort providing an ideal mix of value, comfort and convenience, it offers a budget friendly setting with an array of amenities designed for travelers like you. As your “home away from home,” the tower and lodge rooms offer a flat screen TV, air conditioning, and a seating area, and getting online is easy, with free wifi available. Guests have access to a 24 hour front desk, room service, and shops while staying at Praasad Paradise. In addition, Praasad Paradise Hotel offers a pool and four on-site restaurant, which will help make your Cox\'s Bazar trip additionally gratifying. And, as an added convenience, there is free parking available to guests. While you’re here, be sure to check out their own botanical garden made up of 35 different species of trees. At Praasad Paradise, your comfort and satisfaction come first, and they look forward to welcoming you to Cox\'s Bazar.', 'Hotel- Motel Zone, Plot 9 New Beach Rd, Cox\'s Bazar 4700', 'et.jpg', 5.00, 5566, '4', '2019-12-17 00:34:12', '2020-01-01 05:33:21'),
(31, 'HOTEL AUSTER ECHO', 'COX\'S BAZAR', 'Hotel Auster echo is offering accommodation in Cox\'s Bazar. Boasting a 24-hour front desk, this property also provides guests with a restaurant. The hotel also offers free WiFi and free private parking.', 'Plot 2, Block C, (Infront of Marcentile Bank), Cox\'s Bazar, Cox\'s Bazar, Bangladesh, 4700', '8779yh.jpg', 5.00, 2200, '4', '2019-12-17 02:19:12', '2020-01-01 05:32:31'),
(32, 'HOTEL THE COX\'S BEACH RESORT', 'COX\'S BAZAR', 'The Cox Beach Resort is a 3-star property set in Cox\'s Bazar, facing the beach. This 3-star hotel offers an ATM and ticket service. The accommodation offers a 24-hour front desk, airport transfers, room service and free WiFi.\r\n\r\nAt the hotel, every room includes a terrace.\r\n\r\nGuests at The Cox Beach Resort can enjoy an Asian breakfast.', 'Plot 15, Block A, Kolatoli Main Road, Cox\'s Bazar', 'images (6).jpg', 5.00, 2805, '4', '2019-12-17 02:44:37', '2020-01-01 05:32:03'),
(33, 'HOTEL COX\'S HILTON LTD.', 'COX\'S BAZAR', 'Cox\'s Hilton Ltd, located in the Cox\'s Bazar area, is a popular choice for travelers. From here, guests can make the most of all that the lively city has to offer. With its convenient location, the property offers easy access to the city\'s must-see destinations.\r\n\r\nCox\'s Hilton Ltd offers many facilities to enrich your stay in Cox\'s Bazar. This property offers numerous on-site facilities to satisfy even the most discerning guest.\r\n\r\nAll guest accommodations feature thoughtful amenities to ensure an unparalleled sense of comfort. The property\'s host of recreational offerings ensures you have plenty to do during your stay. Whatever your purpose of visit, Cox\'s Hilton Ltd is an excellent choice for your stay in Cox\'s Bazar.', 'Block- B, Plot- 25, Kolatoli Road, Sugondha Point, 4700', 'download.jpg', 5.00, 2090, '4', '2019-12-17 03:33:57', '2020-01-01 05:31:26'),
(34, 'SAINT MARTIN RESORT', 'COX\'S BAZAR', 'Offering free WiFi, Saint Martin Resort is set in Cox\'s Bazar. The accommodation offers a 24-hour front desk, room service and organising tours for guests.', 'Plot No.- 10, Block-A, Kalatali Road, 4700', 'sfdg.jpg', 5.00, 1320, '4', '2019-12-17 03:52:21', '2020-01-01 05:30:52'),
(36, 'HOTEL WHITE BEACH', 'COX\'S BAZAR', 'Located in Cox\'s Bazar, Hotel White Beach features a shared lounge, a garden and a terrace. Among the facilities at this property are a 24-hour front desk and room service, along with free WiFi throughout the property. Private parking can be arranged at an extra charge.\r\n\r\nAll units at the hotel are equipped with a seating area, a flat-screen TV with satellite channels and a private bathroom with free toiletries and a shower. All guest rooms include a desk.', 'Block A, Plot 17, Kolatali Main Road, 4700 Cox\'s Bazar, Bangladesh', '176820709.jpg', 5.00, 2805, '3', '2019-12-18 22:17:34', '2020-01-01 05:30:22'),
(37, 'HOTEL SILVER BAY', 'COX\'S BAZAR', 'Hotel Silver Bay is located in Cox\'s Bazar. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi throughout the property. Private parking can be arranged at an extra charge.', 'Plot # 01, Block # B, Kalatali Main Road, (Sugandha Point), 4700 Cox\'s Bazar, Bangladesh', 'gj4545vgjghk.jpg', 5.00, 3960, '3', '2019-12-18 23:09:01', '2020-01-01 05:29:51'),
(38, 'HOTEL SEA SHINE', 'COX\'S BAZAR', 'Hotel Sea Shine provides accommodation in Cox\'s Bazar. The property features free private parking and free WiFi.\r\n\r\nAt the hotel, rooms have a balcony with a city view. The rooms in Hotel Sea Shine are fitted with a TV and free toiletries.\r\n\r\nThe accommodation can conveniently provide information at the reception to help guests to get around the area.', 'Dolphin moor, Kolatali circle,, 4700 Cox\'s Bazar, Bangladesh', 'tt787ukuy.jpg', 5.00, 2200, '3', '2019-12-18 23:21:47', '2020-01-01 05:29:17'),
(39, 'HOTEL HILL VIEW', 'BANDARBAN', 'Hotel Hill View is offering accommodation in Bāndarban. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi. Private parking can be arranged at an extra charge.\r\n\r\nThe units at the hotel come with a seating area. At Hotel Hill View all rooms are fitted with a TV, a private bathroom, and a balcony with a city view.', 'Bus Station Road, 4600 Bāndarban, Bangladesh', '4.jpg', 5.00, 1500, '4', '2019-12-20 22:32:38', '2020-01-01 05:28:46'),
(40, 'HOTEL THREE STAR', 'BANDARBAN', 'Hotel 3 star is situated at Bandarban sadar upazilla in Bandarban. Hotel 3 star’s rooms are Flat system. Tourist can rent the whole flat/floor. Total number of Flat System Non AC room is 10 and 8 persons can stay. There are available AC rooms and 8 persons can stay per flat. There is also a conference room and 50 persons can stay together. Hotel 3 star is best for family. Hotel 3 star authority is able to handle extra facilities like spots visiting, transportation and manage food for the traveler.', 'Bandarban,Bazar Durga Mondir, Road', '179603619.jpg', 5.00, 400, '3', '2019-12-21 04:12:43', '2020-01-01 05:28:01'),
(41, 'HOTEL RIVER VIEW', 'BANDARBAN', 'Hotel River View Bandarban is spectacularly designed and added with traditional hospitality of courteous, attractive and personalized service and is conveniently located in the heart of the city Bandarban, Chittagong. It offers magnificent facilities and distinctive amenities, such as air-conditioned rooms including, royal suites, Deluxe single, Royal single, Luxury Twin, and Roof Top Restaurant.\r\nHotel River View Bandarban has may well-furnished rooms in operation right now having a Spacious having an informal coffee shop cum Restaurant, a Business Center, boat club, picnic spot and a mini conference hall. Rooms having well furnished, running Hot and cold water, TV in every room, room to room call service, 24 hrs room service, freeze, mini bar, for keen security 12 cc Camera in all over the hotel, 400 K. W. generator & other amenities available in any of deluxe type hotel in and around the city.', 'Bir Bikram Rd, Bandarban 4600', '89b46a7e6e2f83975352fb17b8b1f683.jpg', 5.00, 1870, '4', '2019-12-21 04:57:02', '2020-01-01 05:27:12'),
(42, 'GREEN PEAK RESORTS', 'BANDARBAN', 'Greenpeak Resorts Bandarban is a luxurious and peaceful resort located in Recha, 1/2 km ahead of Meghla. The luscious hills invite you to relax in comfort and style. The resort offers serenity and wilderness together with a friendly, welcoming and relaxing atmosphere. With a multi-cuisine restaurant,modern amenities and a group of trained staff we are here to make sure you have an amazing experience.', 'Meghla (Opposite to TTC), Chittagong - Bandarban Hwy', 'Apollo-Grn-Pk_124 (1).jpg', 5.00, 3300, '4', '2019-12-22 04:54:43', '2020-01-01 05:26:42'),
(43, 'HILL PALACE RESORT', 'BANDARBAN', 'When visiting Bandarban, you\'ll feel right at home at Hill Palace Resort as it offers quality accommodation and great service. From here, guests can make the most of all that the lively city has to offer. With its convenient location, the property offers easy access to the city\'s must-see destinations.\r\n\r\nOffering guests superior services and a broad range of amenities, Hill Palace Resort is committed to ensuring that your stay is as comfortable as possible. The property offers access to a vast array of services, including 24-hour room service, 24-hour front desk, room service.\r\n\r\nGuests can choose from 6 rooms, all of which exude an atmosphere of total peace and harmony. The property\'s host of recreational offerings ensures you have plenty to do during your stay. When you are looking for comfortable and convenient accommodation in Bandarban, make Hill Palace Resort your home away from home.', 'Chittagong - Bandarban Highway, Bandarban, Bandarban, Bangladesh', 'cxfh.jpg', 5.00, 1870, '2', '2019-12-22 05:08:45', '2020-01-01 05:25:55'),
(44, 'HOTEL FOUR STAR', 'BANDARBAN', 'Hotel Four Star is situated at Bandarban Sadar in Bandarban. The location of Hotel Four Star is very near to Shoilo Propat. Traveler can go there by rickshaw. Though the rate of room of this hotel is little bit expensive but the hospitality of this hotel is simply nice. There is single bed, double bed, triple bed, 4 bed and couple bed facilities in this hotel.', 'Near DC Office, VIP Road, Bandarban.', 'hotel-nice-international.jpg', 5.00, 800, '4', '2019-12-22 05:37:50', '2020-01-01 05:25:24'),
(45, 'HOTEL HILTON', 'BANDARBAN', 'Hotel Hilton Bandarban is a luxurious and peaceful Hotel located in Officers club. We take special pride in the accommodations we provide to our guests, and they include: • Hot shower with bathtub • LED TV with 40+ channels • All rooms with A/C • Multi cuisine Restaurant • Extensive verandas with breathtaking views', 'Officers Club, Islampur Rd, Bandarban 4600', 'dr.jpg', 5.00, 1408, '4', '2019-12-22 05:50:26', '2020-01-01 05:24:57'),
(54, 'HOTEL GREEN HILL', 'BANDARBAN', 'There is single bed, double bed, triple bed facilities in this hotel. Total number of rooms in this hotel is 18 and more than 30 people can stay at Greenhill hotel. If the Traveler or Visitor seek for reasonable hotel in Bandarban then Hotel Green hill will be one of the best choice. Hotel Green hill is very cheap hotel in Bandarban. Checkout from this hotel at 12pm. Hotel Authority can able to manage guide for visiting tourist spot in Bandarban for the travelers.', 'Press Club Bhavan, 2nd Floor, Near Sonali Bank Main Road, Bandarban 4600', 'hotel-green-land.jpg', 5.00, 352, '4', '2019-12-29 02:58:10', '2019-12-29 04:41:19'),
(55, 'HOTEL HILL CITY', 'BANDARBAN', 'Featuring an outdoor pool, Black Hills Luxury Suites in Hill City provides accommodation with free WiFi and free private parking for guests who drive.', 'Traffic Moor, Bandarban', '1231922133Hotel Purabi (Res.jpg', 5.00, 495, '2', '2019-12-29 03:19:12', '2019-12-29 04:41:09'),
(56, 'HOTEL HILL QUEEN', 'BANDARBAN', 'Hotel Hill Queen is an excellent choice for travelers visiting Bandarban, offering many helpful amenities designed to enhance your stay. Rooms at Hotel Hill Queen offer a flat screen TV. During your stay, take advantage of some of the amenities offered, including a 24 hour front desk, room service, and shops. When you\'re feeling hungry, you can check out Rupashi Bangla Restaurant (0.2 mi), which is within walking distance of Hotel Hill Queen. Best of all, Hotel Hill Queen makes it easy to experience many great Bandarban attractions like Nilachal (0.2 mi) and Buddha Dhatu Jadi (0.2 mi), which are a short distance away. Enjoy your stay in Bandarban', 'Sadar Road, Bandarban 0361 Bangladesh', 'gdfdy.jpg', 5.00, 1760, '4', '2019-12-29 03:41:56', '2019-12-29 03:53:14'),
(57, 'HOLIDAY INN RESORT', 'BANDARBAN', 'Holiday Inn Resort is situated at Bandarban. The hotel has a beautiful scenery and is near Meghla Park Lake. Free WiFi access is provided.The rooms have a rustic design and feature balconies that overlook the lake. Each room is fitted with an air-conditioner, a flat-screen TV, a fan, and a writing desk. There is an en-suite bathroom with tiled walls and a shower.', 'Holiday Inn Resort, Meghla, Bandarban, Chittagong, Bangladesh', 'IMG20180504143810-1.jpg', 5.00, 2970, '4', '2019-12-29 04:47:47', '2019-12-29 04:47:47'),
(58, 'SKY VISION', 'CUMILLA', 'Hotel Sky Vision offers air-conditioned rooms in Asrafpur. This 3-star hotel offers a 24-hour front desk, an ATM and free WiFi. There is a restaurant. The rooms in the hotel are fitted with a flat-screen TV with satellite channels. The rooms are equipped with a private bathroom with a bath and free toiletries. Hotel Sky Vision offers 3-star accommodation with a hot tub.\r\n\r\nWhen you plan a journey to Bangladesh, remember that accommodation is very important. Hotel Sky Vision is located in saiba trade centre and it is a nice place to stay. Find out more about accommodation such as: room availability, facilities, or customer reviews.', 'Saiba Trade Centre, Cumilla 3500 Bangladesh', 'NKO.jpg', 5.00, 1800, '3', '2019-12-29 05:09:36', '2019-12-30 05:46:31'),
(59, 'RED ROOF INN', 'CUMILLA', '‘Red Roof Inn’ represents a symbiotic meld. Our meals are centered on a narrative—we gather with purpose and express the joys, the sorrows and the love that brings together.\r\n\r\nOur menu will be culturally affixed to Bangla food exclusively. As the largest and only fine dining restaurant in the state focused on these food groups, ambiance plays an integral role in the creation of ‘Red Roof Inn’. With intended seating on the main floor designed for families, with the walls draped with historic pieces that allow your mind to abscond.\r\n\r\n‘Red Roof Inn’ is a reassertion, a reaffirmation and a reincarnation of some of the most sacred moments that individuals share with one another, it’s a place that moves people from you and them and transforms them into ‘Red Roof Inn”.', 'Dhaka - Cumilla - Chattogram Bypass Road, Cumilla 3500', 'images (3).jpg', 5.00, 2475, '3', '2019-12-29 05:14:40', '2019-12-30 05:10:46'),
(60, 'MIAMI LEISURE SPOT', 'CUMILLA', 'Miami Leisure Spot is one of the popular Bengali/Bangladeshi Restaurant located in N1, Kalakachua, Burichang, Comilla ,Comilla listed under.', 'N1, Kalakachua, Burichang, Cumilla', 'images (2).jpg', 5.00, 1320, '3', '2019-12-29 05:20:16', '2019-12-30 05:08:35'),
(61, 'HOTEL VICTORY', 'CUMILLA', 'Hotel in Comilla with 24-hour business center and 24-hour front desk\r\nA 24-hour business center, a 24-hour front desk, and free self parking are available at this hotel. WiFi in public areas is free. All 40 rooms boast private pools and fireplaces, while conveniences include dining areas and sitting areas. Guests will also find free WiFi.\r\nHotel Victory Abashik Comilla Cumilla offers 40 shared accommodations, which are accessible via exterior corridors and feature private pools and fireplaces. Accommodations offer separate dining areas. Guests can surf the web using the complimentary wireless Internet access.\r\nPublic areas are equipped with complimentary wired and wireless Internet access. This hotel offers access to a 24-hour business center. 40 meeting rooms are available. Complimentary self parking is available on site.', 'Cumilla Victoria Government College', 'watermark.jpg', 5.00, 2475, '3', '2019-12-29 05:24:13', '2019-12-30 05:09:47'),
(62, 'HOTEL LAKE WOOD RESIDENCY', 'DHAKA', 'Having travelled for several months now, the staff at Lakewood were by far the most helpful and generous of anywhere else I’ve travelled in Asia. The hotel is under renovation at the moment, but I found the simplicity of the rooms and the accomodations to be exactly what I want in a hotel. There was ample hot water, good wifi, and a very good restaurant upstairs with a great view over Dhaka city. I could not have been happier with my stay in Dhaka because of my experience at this hotel. When I come back I will definitely stay here again. If you’ve travelled through south Asia at all you will understand the difference between what is and isn’t worth the money. Having the quietness of this horel is definitely worth it in a city that is busy beyond belief.', 'Road 130 House 20 Gulshan 1, Dhaka City 1212 Bangladesh', 'fg.jpg', 5.00, 3300, '4', '2019-12-29 05:31:17', '2019-12-30 05:50:37'),
(63, 'HOTEL LA VINCI LTD', 'DHAKA', 'Offering a massage parlour and a fitness centre, Best Western La Vinci Hotel is located in Dhaka. It features a rooftop bar and banquet space. Free Wi-Fi access is available.\r\n\r\nThe Bashundhara Shopping Mall is 500 m and the Bangladesh National Parliament Building is 1 km. The Local Bus Station is 500 m and Dhaka Railway Station is 1 km. The Shahjalal International Airport is 12 km.\r\n\r\nRooms here will provide you with a flat-screen TV, air conditioning and a balcony. There is also an electric kettle. Featuring a shower, private bathrooms also come with a hairdryer and free toiletries. Extras include a minibar, a seating area and cable channels. All rooms offer city view.\r\n\r\nAt Best Western La Vinci Hotel you will find a 24-hour front desk and a bar. Other facilities offered include meeting facilities, a tour desk and luggage storage. Car rental and currency exchange can be arranged.\r\n\r\nThe in-house restaurant, La Villa serves Indian, Chinese and Italian cuisines. Lobby is a coffee shop. Room service is available.', '54 Kawran Bazar Rd, Dhaka 1215', 'RGH.jpg', 5.00, 7480, '3', '2019-12-29 05:40:33', '2019-12-29 05:40:33'),
(64, 'HOTEL TROPICAL DAISY', 'DHAKA', 'Tropical Daisy is a 3-star hotel offering modern guestrooms with a private bathroom. 200 m from Banani 11 Shopping District, the hotel has a 24-hour reception and 2 dining options.\r\n\r\nBangabandhu International Conference Centre is 4 km away while National Parliament is 6 km from the hotel. Both Hazrat Shah Jalal International Airport and the Airport Railway Station are 7 km away. The nearest bus station – Gulshan bus stand is a 2-minute walk from Tropical Daisy.\r\n\r\nThe air-conditioned rooms are equipped with a flat-screen satellite TV, desk and seating area. Private bathroom includes a shower and free toiletries.\r\n\r\nLaundry, ironing and shuttle services are available at an extra fee. Guests who drive park for free.\r\n\r\nEnjoy authentic Bangladeshi meal at Garden of Eve restaurant. Tropical Daisy Guest Restaurant serves Indian cuisine including local Bangladeshi food.', 'House-31/B, Road-35/A, Gulshan-2, 1212 Dhaka, Bangladesh', 'hjgjh.jpg', 5.00, 4950, '4', '2019-12-29 05:46:10', '2019-12-29 05:49:07'),
(65, 'HOTEL LAKE CASTLE', 'DHAKA', 'Located just 500 m from the Gulshan Lake, Hotel Lake Castle features a 24-hour front desk and a fitness centre. Free WiFi access is available.\r\n\r\nEach room here will provide you with a TV, air conditioning and a minibar. There is also an electric kettle. The private bathroom offers free toiletries. Extras include a seating area and cable channels.\r\n\r\nAt Hotel Lake Castle you will find a garden and a terrace. The property offers free parking.\r\n\r\nIt is 5 km from Jamuna Future Park, 6.9 km from National Parliament House and 8.6 km from Dhaka University. The Gulshan 2 Bus Station is just 200 m away, Banani Railway Station is 1 km and the Shah Jalal International Airport is 8 km away.\r\n\r\nThe in-house restaurant serves multi-cuisine delights. Room service can be requested for in-room dining comforts.', 'House # 1A, Road 68/A, Gulshan 2, 1212 Dhaka, Bangladesh', 'DSRG.jpg', 5.00, 7392, '4', '2019-12-29 05:54:40', '2019-12-29 05:54:40'),
(66, 'HOTEL ALI PLAZA', 'SYLHET', 'Set in Sylhet, Hotel Ali Plaza offers 3-star accommodation with a shared lounge, a garden and a terrace. Featuring a restaurant, the 3-star hotel has air-conditioned rooms with a private bathroom. The accommodation offers a 24-hour front desk and room service for guests.\r\n\r\nThe units in the hotel are equipped with a flat-screen TV.\r\n\r\nGuests at Hotel Ali Plaza can enjoy an Asian breakfast.', 'Humayun Rashid Chottor, Kodomtoly, 3111 Sylhet, Bangladesh', 'F.jpg', 5.00, 1100, '3', '2019-12-29 23:34:34', '2019-12-29 23:35:30'),
(67, 'HOTEL NEW GREEN GARDEN', 'SYLHET', 'Hotel New Green Garden is a world class business hotel located in the bank of the river Surma, Upashahor, Sylhet The Hotel is a walking distance from most of the foreign missions like British Visa processing Center, 30 Minutes drive from Osmani International airport, 10 Minutes drive from Hajrat Shahjalal (R) Majar and very closed to Garden City Shopping Complex.', 'V.I.P Road, Taltola Rd, Sylhet 3100', '67588769.jpg', 5.00, 275, '2', '2019-12-29 23:51:00', '2019-12-29 23:51:00'),
(68, 'HOTEL DHAKA PALACE', 'SYLHET', 'A good & best Hotel Dhaka Palace in 2nd Floor, Dulal Complex, Fenchugonj Road, Humayun Rashid Chattar, Kadamtoli, Sylhet 3100. Customers must be very happy to stay here.', '2nd Floor, Dulal Complex, Fenchugonj Road, Humayun Rashid Chattar, Kadamtoli, Sylhet 3100', 'hj.jpg', 5.00, 440, '2', '2019-12-30 02:33:07', '2019-12-30 02:33:07'),
(69, 'HOTEL ABU HUMZA RESIDENTIAL', 'SYLHET', 'A well known hotel in Bus terminal Road, Near Rail Station. Bharthokhola,stlhet, Sylhet, 3100 is Hotel Abu Humza Residential. Friendly environment & perfect place to spent your valuable time.', 'Bus terminal Road, Near Rail Station. Bharthokhola,stlhet Sylhet, 3100', 'GH.jpg', 5.00, 385, '3', '2019-12-30 02:56:36', '2019-12-30 02:56:36'),
(72, 'BISMILLAH HOTEL & RESTAURANT', 'SYLHET', 'Bismillah Hotel & Restaurent is a well known hotel in Kadomtali, Sylhet 3100. Reasonable price for all.', 'Kadomtali, Sylhet 3100', 'iougih656476.jpg', 5.00, 495, '2', '2019-12-30 03:31:50', '2020-01-02 03:54:20'),
(73, 'HOTEL AL-SAFA', 'SYLHET', 'Hotel Al-Safa is a well known hotel in Sylhet. Reasonable price for all.', 'Sylhet', 'kfui.jpg', 5.00, 220, '2', '2019-12-30 04:56:08', '2020-01-07 13:40:35'),
(74, 'HOTEL CANARY PARK', 'DHAKA', 'Hotel Bengal Canary Park has a restaurant, fitness centre, a shared lounge and garden in Dhaka. Among the facilities at this property are room service and a concierge service, along with free WiFi throughout the property. The accommodation features a 24-hour front desk, a shared kitchen and currency exchange for guests.\r\n\r\nAll rooms are fitted with air conditioning, a flat-screen TV with cable channels, a fridge, a kettle, a shower, a hairdryer and a desk. At the hotel the rooms include a wardrobe and a private bathroom.\r\n\r\nGuests at Hotel Bengal Canary Park can enjoy a continental or a buffet breakfast.\r\n\r\nPopular points of interest near the accommodation include High Commission of India in Dhaka, Consulate of Singapore and BRAC University.', 'Hs-8, Rd-16A, Gulshan 1, 1212 Dhaka, Bangladesh', 'CJHGHU444444444488888888888888888877777777777777777.jpg', 5.00, 7780, '4', '2020-01-01 00:40:49', '2020-01-01 00:40:49'),
(75, 'HOTEL BILASH', 'SYLHET', 'This is a well known hotel in Sylhet. Reasonable price for all. All services are good.', 'Telihaor Rd, Sylhet 3100', 'rtutyutytutyiyo.jpg', 5.00, 440, '2', '2020-01-02 04:09:22', '2020-01-02 04:18:34'),
(76, 'HOTEL HOLY INN', 'SYLHET', 'Holy Inn is located in Sylhet. With a restaurant, the 3-star hotel has air-conditioned rooms with free WiFi, each with a private bathroom. There is free private parking and the property provides paid airport shuttle service.\r\nAt the hotel each room has a desk and a flat-screen TV.\r\nA continental breakfast is available daily at Holy Inn.\r\nThe reception at the accommodation can provide tips on the area.', 'Hazrat Shahjalal Rd, Sylhet', 'hfghjfgjfgjfgjjfgjhfghjfgjfgh.jpg', 5.00, 2118, '4', '2020-01-02 04:40:25', '2020-01-02 04:40:25'),
(77, 'HOTEL MOHSIN PLAZA RESIDENTIAL', 'SREEMANGAL', 'Hotel Mohsin Plaza is a magnificent new generation business class hotel located at the heart of Sreemangal Town – a hub of tea gardens in Bangladesh. It’s just a 5-minute walk from the railway station and important bus stops.', 'College Road, Sreemangal,Moulvibazar ,Bangladesh', 'TFFFFFFFFFFFFFFFYYYYYYYYYYYFFFFFFFFF.jpg', 5.00, 468, '4', '2020-01-02 05:00:23', '2020-01-07 13:20:25'),
(78, 'HOTEL SULTAN RESTAURANT & GUEST HOUSE', 'SREEMANGAL', 'Sultan Restaurant & Guest House is located in Sreemangal. Among the facilities of this property are a restaurant, a 24-hour front desk and a shared kitchen, along with free WiFi. The property has room service, a shared lounge and currency exchange for guests. All rooms at the hotel come with a seating area, a flat-screen TV with satellite channels and a private bathroom with free toiletries and a shower. Sultan Restaurant & Guest House provides some rooms with city views, and the rooms come with a terrace. The rooms feature a desk. An Asian breakfast is available every morning at the accommodation. The area is popular for cycling, and bike rental and car rental are available at Sultan Restaurant & Guest House. The hotel also provides a business center and free private parking.', 'Station Road, Sreemangal, Sreemangal Upazila', 'Capturejgjgj6464564.jpg', 5.00, 1430, '4', '2020-01-02 05:18:49', '2020-01-02 05:18:49'),
(79, 'GREEN VIEW REST HOUSE', 'SREEMANGAL', 'Finding an ideal budget friendly guest house in Sreemangal does not have to be difficult. Welcome to Green View Rest House, a nice option for travelers like you. Rooms at Green View Rest House provide air conditioning. While staying at Green View Rest House, you can find some great restaurants within walking distance of the guest house including Kutum Bari (0.2 mi) and Shoshur Bari Restaurant (0.6 mi). Green View Rest House puts the best of Sreemangal at your fingertips, making your stay both relaxing and enjoyable.', 'Green View Rest house Motigonj Tower, Sagardighee Road, Sreemangal 3210', 'AF1QipN4HpyboRwoa96G9ayJKH-kOr99_c5OrviIO96z=s385-k-no.jpg', 5.00, 440, '2', '2020-01-02 05:34:26', '2020-01-02 05:34:26'),
(80, 'HOTEL SKYPARK', 'SREEMANGAL', 'Offering a restaurant, Skypark Hotel is located in Estosadok Ski Resort, 200 m from Alpika-2 ski lift. Rosa Khutor ski resort is 2.5 km away. Free WiFi access is available.\r\nAll rooms are decorated in bright colours and feature a TV. The bathrooms come with free toiletries.\r\nBreakfast is served daily at the on-site restaurant.\r\nAt Skypark Hotel you will find free shuttle service, barbecue facilities and a terrace. Other facilities offered at the property include a shared lounge, luggage storage and ski storage.\r\nStrela ski lift is 2 km away, and Sanki sliding centre is 700 m from Skypark Hotel. Krasnaya Polyana Train Station is within a 5-minute drive, and Sochi International Airport is 57 km away.\r\nCouples particularly like the location — they rated it 8.0 for a two-person trip.', 'Chowmohana, Sreemangal, Moulvibazar., 3210 Sreemangal, Bangladesh', 'AF1QipOXCeJrMSe-5y9BMFfDhmY-LEx5vjvyBudiR6xa=s384-k-no.jpg', 5.00, 1403, '3', '2020-01-02 05:48:31', '2020-01-02 05:48:31'),
(81, 'HOTEL MERINA', 'SREEMANGAL', 'Hotel Merina was created to offer the maximum comfort to its clients. The rooms are spacious, furnished and decorated in a modern style which allows the perfect use of space. We invite you to enjoy the services we offer.Hotel Merina has become a legend in its own right, offering guests an escape from the hustle and bustle of everyday life through luxurious accommodations, legendary service, and year-round recreation.', 'Fahim Plaza, Habiganj Road, Sreemangal, Moulovibazar', 'AF1QipMq3mkrSnBJzndU74cS0hQLg74p3Ev8DsM2AFxt=s596-k-no.jpg', 5.00, 440, '3', '2020-01-06 14:59:15', '2020-01-06 14:59:15'),
(82, 'HOTEL ISHIQI AMOS', 'SREEMANGAL', 'Hotel Ishaqi Amos in Sreemangal has 3-star accommodations with a terrace. This 3-star hotel offers an ATM and ticket service. The property has a 24-hour front desk, airport transportation, room service and free WiFi. At the hotel rooms include a desk and a private bathroom. The area is popular for cycling, and bike rental and car rental are available at Hotel Ishaqi Amos.', 'Al Modina Complex (Chowmuhana), Moulvibazar Road,, Sreemangal Upazila, Sreemangal Upazila, Bangladesh, 3210', 'Capture478874321363546547777777777777777777777777.jpg', 5.00, 748, '2', '2020-01-06 15:18:57', '2020-01-06 15:18:57'),
(83, 'HOTEL TOWER INN', 'SREEMANGAL', 'Located in Āsidun, Tower Inn provides 2 accommodation with private balconies. Among the facilities at this property are a 24-hour front desk and room service, along with free WiFi throughout the property. The hotel features family rooms.\r\nAll units at the hotel are equipped with a seating area, a flat-screen TV with satellite channels and a private bathroom with free toiletries and a shower. Guest rooms at Tower Inn include air conditioning and a desk.\r\nThe area is popular for cycling, and bike hire and car hire are available at the accommodation.', 'sreemangal, sylhet, Sreemangal 3210', 'd39a2178_z.jpg', 5.00, 550, '3', '2020-01-06 15:36:20', '2020-01-06 15:36:20'),
(84, 'HOTEL CHARU', 'BARISAL', 'Overall super clean, well maintained and friendly staff. Rooftop restaurant is awesome. Rooms are adequately equipped has both AC and non-AC rooms. Price in 2019 was about Tk. 2500 for AC and Tk. 1000 for non-AC rooms respectively. A little bit bargaining at reception is accepted. Very convenient location.', 'Band Road, Barisal City 8200 Bangladesh', 'njdjfjshvfhjs.PNG', 5.00, 1320, '3', '2020-01-09 12:43:50', '2020-01-09 12:43:50'),
(85, 'HOTEL RODELA INTERNATIONAL', 'BARISAL', 'Hotel Rodela International offers accommodation in Barisāl. Free WiFi and room service are offered.\r\nAll guest rooms in the hotel are fitted with a flat-screen TV. At Hotel Rodela International the rooms are equipped with a private bathroom with a bath.', 'Barisal , Barisal District, Barisal Division, Bangladesh', 'Captureffggg 7878 dfdgggg.PNG', 5.00, 594, '3', '2020-01-09 13:31:45', '2020-01-09 13:31:45'),
(86, 'HOTEL SEA PALACE', 'BARISAL', 'Hotel Sea Palace is an excellent choice for travellers visiting, offering a family-friendly environment alongside many helpful amenities designed to enhance your stay. Hotel Sea Palace is a great destination for tourists. Rooms at Hotel Sea Palace provide air conditioning.', 'Barisal, Bangladesh', 'Capture556688gu utu uyio oj.jpg', 5.00, 440, '2', '2020-01-09 13:55:34', '2020-01-09 13:55:34'),
(87, 'HOTEL CITY PLAZA', 'BARISAL', 'Oldest hotel in the Barishal city. This hotel has a very nice accommodation facilities and service providers. Best hotel as a low budget.\r\nRoom interior and furniture as usual quality.\r\nAir condition service good but only electricity time.\r\nWash room as usual with shower, basin and high commode.', 'Barisal, Bangladesh', 'Capturghggyg huhh.PNG', 5.00, 275, '2', '2020-01-09 14:09:10', '2020-01-09 14:09:10'),
(88, 'HOTEL PURNIMA', 'BARISAL', 'Hotel Purnima is an excellent choice for travellers visiting, offering a family-friendly environment alongside many helpful amenities designed to enhance your stay. Rooms at Sagarika Hotel provide air conditioning.', 'Barisal, Bangladesh', 'zdf.jpg', 5.00, 220, '2', '2020-01-09 14:26:46', '2020-01-09 14:26:46'),
(89, 'HOTEL MULTI PLAZA', 'BARISAL', 'Hotel Multi Plaza offers accommodation in Barisāl. Free WiFi and room service are offered.\r\nAll guest rooms in the hotel are fitted with a flat-screen TV. At Hotel Multi Plaza the rooms are equipped with a private bathroom with a bath.', 'Barisal, Bangladesh', '52hk.jpg', 5.00, 275, '2', '2020-01-09 14:46:12', '2020-01-09 14:46:12'),
(90, 'HOTEL NOKKHOTRO PALACE', 'BARISAL', 'Oldest hotel in the Barishal city. This hotel has a very nice accommodation facilities and service providers. Best hotel as a low budget.\r\nRoom interior and furniture as usual quality.\r\nAir condition service good but only electricity time.\r\nWash room as usual with shower, basin and high commode.', 'Katpotti Rd, Barisal', 'Hotel Haque International.jpg', 5.00, 495, '2', '2020-01-09 14:56:44', '2020-01-09 14:56:44'),
(91, 'HOTEL ONE INTERNATIONAL', 'BARISAL', 'Barisal division has become a latest tourism place in Bangladesh. Everyday many of people are coming to visit the historical places of Barisal. To arrange these visitor’s accommodation facilities there some hotels and resorts has established. Hotel One International is one of these hotels offers international quality hospitality services.\r\n\r\nHotel One International is situated at Mou. Enayetur Rahman road, Chawkbazar at Barisal. People enjoy their holidays with family, colleagues and friends. Hotel One International is a place of wonderful and mind blowing environment.\r\n\r\nGuest services are newspaper, 24 hrs. front desk facilities, express safe deposit boxes, non-smoking rooms, laundry service, concierge service and medical service. For entertainment in every room a LED TV is placed with satellite channels. All rooms are specious and decorated with latest fixtures and fittings.', 'Barisal, Bangladesh', 'retterg.PNG', 5.00, 660, '3', '2020-01-09 15:32:03', '2020-01-09 15:32:03'),
(92, 'HOTEL FAIR STAR', 'BARISAL', 'Oldest hotel in the Barishal city. This hotel has a very nice accommodation facilities and service providers. Best hotel as a low budget.\r\nRoom interior and furniture as usual quality.\r\nAir condition service good but only electricity time.\r\nWash room as usual with shower, basin and high commode.', 'Phalpatty, Mow. Anayetur Rahman Sarak, Barisal, Bangladesh', '179603616.jpg', 5.00, 350, '2', '2020-01-09 15:45:18', '2020-01-09 15:45:18'),
(93, 'HOTEL TAJ KUAKATA', 'KUAKATA', 'This is a small and cost efficient hotels which is not too far from the sea beach. Unluckily they don\'t provide any kinds of food, and not even water. Luckily those things can be bought from the stores adjacent to this hotel.', 'Sea Beach Road, Kuakata 8652', 'gtrgggg.jpg', 5.00, 1320, '2', '2020-01-12 11:11:13', '2020-01-12 11:11:13'),
(94, 'HOTEL KUAKATA INN', 'KUAKATA', 'Off a bustling commercial road, this functional budget hotel is a 3-minute walk from both the nearest bus stop and Kuakata Sea Beach along the Bay of Bengal. It\'s a 3-minute walk from the Kuakata Buddhist Temple.\r\nAccommodations range from relaxed rooms, some with bay views and/or air-conditioning, to 1-bedroom suites with living spaces and balconies. The 2-bedroom suites add dining areas. Internet access and room service are available.\r\nBreakfast is complimentary. Amenities include a simple restaurant and 2 BBQ areas. Parking is available.', 'Kuakata Porjotan Area, Kuakata, Potuakhali Road In front of Parjatan Holiday Homes, Latachapli 8652 Bangladesh', 'gbfbsgbb.jpg', 5.00, 2338, '4', '2020-01-12 11:21:25', '2020-01-12 11:21:25'),
(95, 'HOTEL GRAVER INN INTERNATIONAL', 'KUAKATA', 'An 8-minute walk from Kuakata Sea Beach, this relaxed hotel among trees is 7 minutes on foot from Kuakata Bus Station and 14 minutes\' walk from Ilish Park.\r\nStraightforward rooms come with flat-screen TVs, minifridges and free Wi-Fi. Room service is available 24/7.\r\nBreakfast is complimentary. Other amenities include a restaurant serving international dishes, as well as a gym, a playroom and secured parking.', 'Sabirul Way, East Side, Kuakata 8652', 'outsidelook.jpg', 5.00, 2640, '5', '2020-01-12 11:35:36', '2020-01-12 11:35:36'),
(96, 'HOTEL SAND BEACH (SKY PALACE)', 'KUAKATA', 'Featuring free WiFi and an outdoor pool, Sand Beach Hotel offers accommodations in Kotu. The hotel has a spa center and a private beach area, and guests can enjoy a meal at the restaurant. Free private parking is available on site. Each room at this hotel is air conditioned and has a flat-screen TV with satellite channels. Some units feature a seating area for your convenience. Views of the sea, pool or garden are featured in certain rooms. The rooms include a private bathroom. For your comfort, you will find bath robes and free toiletries. There is a 24-hour front desk, hairdresser\'s, and gift shop at the property. Bike hire and car hire are available at this hotel and the area is popular for golfing and horse riding. The nearest airport is Banjul Airport, 8.7 mi from the property.', 'Kuakata Parjatan Area,, Latachapli', 'CapturehhsfhCapturesyryrtCapture.jpg', 5.00, 2723, '3', '2020-01-12 11:44:28', '2020-01-12 11:44:28');
INSERT INTO `hotels` (`id`, `title`, `Location`, `description`, `address`, `image`, `review`, `price_range`, `star`, `created_at`, `updated_at`) VALUES
(97, 'HOTEL AL-HERA', 'KUAKATA', 'Now-a-day Kuakata has become attracting tourist place in Bangladesh. Kuakata known as “Sagar Kannya” means that daughter of the sea locally. It is an exceptional picturesque beauty tourist spot on the southernmost angle of Bangladesh. People come here to enjoy the beautiful sun set and test the delicious seafood.\r\n\r\nAt Kuakata a place of outstanding amalgamation of the charming natural beauty, blue sky, sandy beach, huge area of water of the Bay and evergreen forest in actually striking.\r\n\r\nKuakata is located in Patuakhali district at Latachapli union under Kalapara Police Station about 30 km in distance end to end and 6 km in width. It is 70 km away from Patuakhali district headquarters and from Dhaka it is about 320 km.\r\n\r\nTo offer guests modern facilities are arranged by several hotels at Kuakata. Hotel Al Hera is one of them. For Accommodation Hotel Al Hera is a pleasant hotel in Kuakata. Within 2 floors there are 12 rooms are arranged with modern amenities.', 'Kuakata P/A, Kuakata, Kolapara, Patuakhali, Bangladesh', '111111111111111111111111111111222222222222222333333333333333.jpg', 5.00, 2805, '3', '2020-01-12 11:56:57', '2020-01-12 11:56:57'),
(98, 'HOTEL SHOIKOT', 'KUAKATA', 'Kuakata Hotel Shoikot features accommodation in Kuākāta. Boasting family rooms, this property also provides guests with a terrace. Private parking can be arranged at an extra charge.\r\nAll rooms at the hotel are fitted with a seating area, a flat-screen TV with satellite channels and a private bathroom with a hairdryer and a shower. The units have a wardrobe.\r\nSpeaking English and Hindi, staff are always on hand to help at the 24-hour front desk.', 'Kuakata P/A, Kolapara, Patuakhali, Bangladesh.', 'ddg.jpg', 5.00, 1650, '3', '2020-01-12 12:10:20', '2020-01-12 12:10:20'),
(99, 'BISWAS SEA PALACE', 'KUAKATA', 'Biswas Sea Palace is one of the best places in Kuakata for accommodation. Distance from hotel to sea beach is about 100 meter. Visitor can move every tourist place in Kuakata from that hotel. There are AC and Non AC room services are available in Biswas Sea Palace. Every rooms has attached bath room and balcony. Checkout from that hotel is 12:00 pm and 24 hours service. Biswas sea palace is management by Biswas Builders Ltd.', 'Biswas Sea Palace, Kuakata P/A, Kolapara, Patuakhali, Bangladesh.', '4345.jpg', 5.00, 1584, '3', '2020-01-12 12:18:44', '2020-01-12 12:18:44'),
(100, 'SOUTH BEACH HOTEL', 'KUAKATA', 'Wonderful resort in Kuakata with the luxurious arrangement. It has a wide path and all types of facility. Villas are really enjoyable for the family. Dining and food are quite good.\r\nAll staffs are well mannered.', 'Kuakata', '4545.jpg', 5.00, 2475, '3', '2020-01-12 12:29:15', '2020-01-12 12:29:15'),
(101, 'HOTEL SEA-BEACH INN', 'KUAKATA', 'Wonderful resort in Kuakata with the luxurious arrangement. It has a wide path and all types of facility. Villas are really enjoyable for the family. Dining and food are quite good.\r\nAll staffs are well mannered.', 'Kuakata', 'Capture x tybv6 tu btu byut yut btuyytry rtyu.jpg', 5.00, 1485, '3', '2020-01-12 12:41:44', '2020-01-12 12:41:44'),
(102, 'SIX SEASONS HOTEL', 'DHAKA', 'This is a relatively new hotel, having been open for just a few months. So there are some teething troubles, but the management and staff are clearly working hard to fix things and the level of customer orientation is very high indeed. They have clearly been well-trained and present a very good image for the new hotel. It is disappointing they are having problems completing the gym and the pool because there is nothing to do in the hotel otherwise. Currently there is no business centre facility either which is a little inconvenient. But the staff are very willing to assist with printing and arranging DHL for example. The rooms are excellent and of a high international standard. The overall look of the place is very good. Like all places in Bangladesh the small details are sometimes overlooked (eg. ensuring that the place is regularly sprayed so the mosquitoes are killed off; replacing the horrible instant coffee with fresh (at these prices instant coffee is not acceptable); some of the decoration up close could be better finished; ensuring seat cushions are kept clean etc). but this may be because of the newness of the place. I\'m very happy staying here - it is friendly without being in your face; staff are pleasant and very professional. Every request I have made, every small problem I have needed fixed, has been attended to quickly and to my satisfaction.', 'House No 19, Road No 96, Gulshan 2, Dhaka 1212', '44680112.jpg', 5.00, 14360, '4', '2020-01-29 00:47:57', '2020-01-29 00:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_details`
--

CREATE TABLE `hotel_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `room_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_details`
--

INSERT INTO `hotel_details` (`id`, `hotel_id`, `room_category`, `person`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(10, 13, 'Executive Deluxe', '1', '1 Large Double Bed', 'Executive Deluxe.jpg', 8415, '2019-12-13 22:36:25', '2019-12-13 22:36:25'),
(11, 13, 'Executive Deluxe Twin', '2', '2 Single Bed', 'Executive Deluxe Twin.jpg', 10285, '2019-12-13 22:38:25', '2019-12-13 22:38:25'),
(12, 13, 'Premier', '2', '1 Large Double Bed', 'Premier.jpg', 9350, '2019-12-13 22:39:22', '2019-12-13 22:39:22'),
(13, 13, 'Junior Suite', '3', '1 Extra Large Bed', 'Junior Suite.jpg', 15895, '2019-12-13 22:42:30', '2019-12-14 22:46:21'),
(15, 13, 'Royal Suite', '2', '1 Large Bed', 'Royal Suite.jpg', 37400, '2019-12-13 22:46:49', '2019-12-13 22:46:49'),
(16, 14, 'Superior King', '3', '1 Large Double Bed', '1tgh.jpg', 11484, '2019-12-13 22:57:43', '2020-01-01 01:41:47'),
(17, 14, 'Superior Twin', '2', '2 Single Bed', '1tgh.jpg', 12632, '2019-12-13 23:07:31', '2020-01-01 01:42:18'),
(18, 14, 'Business Class', '3', '1 Extra Large Bed', '3t.jpg', 16269, '2019-12-13 23:08:46', '2019-12-31 23:08:38'),
(19, 14, 'Junior Suite', '3', '1 Extra Large Double Bed', 'images (7).jpg', 25839, '2019-12-13 23:23:15', '2019-12-13 23:23:15'),
(20, 14, 'Executive Suite', '1', '1 Large Bed', '1tgh.jpg', 35409, '2019-12-13 23:28:23', '2019-12-31 23:09:47'),
(21, 14, 'Royal Suite', '2', '1 Large Bed', 'Capturefddtytyhhhhhhhhhhhhhhhhh.jpg', 191400, '2019-12-13 23:41:11', '2020-01-01 03:23:14'),
(22, 14, 'Presidential Suite', '3', '1 Extra Large Bed', 'Capturehvgjhg7464635.jpg', 287100, '2019-12-13 23:42:16', '2020-01-01 03:21:56'),
(23, 15, 'Deluxe', '1', '1 Large Bed', 'deluxe the avenue.jpg', 4345, '2019-12-14 00:02:44', '2020-01-01 04:03:59'),
(24, 15, 'Deluxe Twin', '2', '2 Single Bed', 'deluxe twin the avenue.PNG', 5049, '2019-12-14 00:04:31', '2020-01-01 04:04:29'),
(25, 15, 'Super Deluxe', '1', '1 Large Bed', 'super deluxe the avenue.jpg', 5214, '2019-12-14 00:06:03', '2020-01-01 04:09:09'),
(26, 15, 'Super Deluxe Twin', '2', '2 Single Bed', 'super deluxe twin the avenue.jpg', 5819, '2019-12-14 00:07:23', '2020-01-01 04:09:35'),
(27, 15, 'Executive Suite', '2', '1 Large Bed', 'executive suite the avenue.PNG', 7821, '2019-12-14 00:08:10', '2020-01-01 04:10:05'),
(28, 15, 'Luxury Suite', '2', '1 Large Bed', 'Luxury suite the avenue.PNG', 9124, '2019-12-14 00:08:57', '2020-01-01 04:10:44'),
(29, 16, 'Standard Single', '1', '1 Single Bed', 'y.jpg', 3255, '2019-12-14 00:41:56', '2020-01-01 01:00:37'),
(30, 16, 'Executive Deluxe Twin', '2', '2 Single Bed', '118428087.jpg', 3907, '2019-12-14 00:53:18', '2019-12-14 00:53:18'),
(31, 16, 'Superior King', '2', '1 Deluxe Double Bed', 'a.jpg', 4232, '2019-12-14 00:55:01', '2020-01-01 01:01:15'),
(32, 16, 'Premier', '2', '1 Large Bed', 'c.jpg', 4558, '2019-12-14 01:01:09', '2020-01-01 01:01:41'),
(33, 17, 'Single Non AC', '1', '1 Single Bed', 'zdf.jpg', 990, '2019-12-14 01:17:44', '2020-01-01 01:02:51'),
(34, 17, 'Single AC', '1', '1 Single Bed', 'zdf.jpg', 1485, '2019-12-14 01:26:12', '2020-01-01 01:06:04'),
(35, 17, 'Double Non AC', '2', '1 Large Bed', '77128124.jpg', 1122, '2019-12-14 01:28:00', '2019-12-15 01:40:19'),
(36, 17, 'Double AC', '2', '1 Large Bed', '77128124.jpg', 1683, '2019-12-14 01:30:44', '2019-12-15 01:40:42'),
(37, 17, 'Triple Non AC', '3', '3 Single Bed', '77128027.jpg', 1402, '2019-12-14 01:32:22', '2019-12-14 01:32:22'),
(38, 17, 'Triple AC', '3', '3 Single Bed', '77128027.jpg', 1870, '2019-12-14 01:33:31', '2019-12-14 01:33:31'),
(39, 18, 'Single Non AC', '1', '1 Single', '85700480.jpg', 550, '2019-12-14 01:51:57', '2019-12-14 01:51:57'),
(40, 18, 'Couple Non AC', '2', '1 Large Bed', '85700480.jpg', 1100, '2019-12-14 01:53:19', '2019-12-14 01:53:19'),
(41, 18, 'Couple AC', '2', '1 Large Bed', '85700480.jpg', 1320, '2019-12-14 01:54:20', '2019-12-14 01:54:20'),
(42, 18, 'Deluxe Double', '4', '4 Single Bed', 'zd.jpg', 1870, '2019-12-14 02:06:35', '2020-01-01 01:07:57'),
(43, 19, 'Single Non AC', '1', '1 Single Bed', 'img-20190923-214407-largejpg.jpg', 770, '2019-12-14 02:26:04', '2019-12-14 02:26:04'),
(44, 19, 'Single AC', '1', '1 Single Bed', 'img-20190923-214407-largejpg.jpg', 1430, '2019-12-14 02:27:10', '2019-12-14 02:27:10'),
(45, 19, 'Double Non AC', '2', '2 Single Bed', '168741636.jpg', 990, '2019-12-14 02:30:00', '2019-12-14 02:30:00'),
(46, 19, 'Double AC', '2', '2 Single Bed', '168741636.jpg', 1430, '2019-12-14 02:33:55', '2020-01-01 04:15:47'),
(47, 20, 'Deluxe Single', '1', '1 Large Bed', '15_photo_29612.jpg', 2300, '2019-12-14 03:21:45', '2019-12-14 03:21:45'),
(48, 20, 'Deluxe Double', '2', '2 Single Bed', '15_photo_29612.jpg', 3400, '2019-12-14 03:22:54', '2019-12-14 03:22:54'),
(49, 20, 'Super Deluxe 3 Bed', '3', '3 Single Bed', '3-980x500.jpg', 4000, '2019-12-14 03:24:35', '2019-12-14 03:24:35'),
(50, 20, 'Land Mark Suite', '2', '1 Large Bed', '15_photo_29612.jpg', 4500, '2019-12-14 03:26:23', '2019-12-14 03:26:23'),
(51, 20, 'Single', '1', 'Extra Bed', '15_photo_29612.jpg', 700, '2019-12-14 03:28:16', '2019-12-14 03:28:16'),
(52, 21, 'Regular Couple Bed Non AC', '2', '1 Large Bed', '22060r000000gx7b7ECFB_C_500_500.jpg', 1056, '2019-12-14 03:36:30', '2019-12-14 03:36:30'),
(53, 21, 'Executive Non AC', '1', '1 Large Bed', '22060r000000gx7b7ECFB_C_500_500.jpg', 1320, '2019-12-14 03:37:28', '2019-12-14 03:37:28'),
(54, 21, 'Executive AC', '1', '1 Large Bed', '22060r000000gx7b7ECFB_C_500_500.jpg', 1760, '2019-12-14 03:38:26', '2019-12-14 03:38:26'),
(55, 21, 'Family Twin Non AC', '3', '2 Large Bed', '22060r000000gx7b7ECFB_C_500_500.jpg', 2200, '2019-12-14 03:39:22', '2020-01-01 01:12:22'),
(56, 21, 'Family Twin AC', '3', '2 Large Bed', '22060r000000gx7b7ECFB_C_500_500.jpg', 2640, '2019-12-14 03:40:07', '2020-01-01 01:12:54'),
(57, 22, 'Single Non AC', '1', '1 Single Bed', 'information_items_property_15959389.jpg', 450, '2019-12-14 03:52:53', '2019-12-14 03:52:53'),
(58, 22, 'Double Non AC', '2', '2 Single Bed', '132898013.jpg', 900, '2019-12-14 03:54:35', '2020-01-01 01:15:21'),
(59, 22, 'Standard Double AC', '2', '2 Large Bed', 'DSC_0626-1-600x380.jpg', 1800, '2019-12-14 03:55:58', '2019-12-14 22:08:58'),
(60, 22, 'Couple AC', '2', '2 Large Bed', 'information_items_property_15959389.jpg', 1350, '2019-12-14 03:56:46', '2019-12-15 01:39:03'),
(62, 23, 'Single Non AC', '1', '1 Single Bed', '41.jpg', 1080, '2019-12-15 01:55:25', '2020-01-01 01:17:17'),
(63, 23, 'Double Non AC', '2', '1 Large Bed', '420_images0_1563442743.jpeg', 1440, '2019-12-15 01:56:24', '2019-12-15 01:56:24'),
(64, 23, 'Double AC', '2', '1 Large Bed', '420_images0_1563442743.jpg', 1500, '2019-12-15 01:58:08', '2019-12-15 01:58:08'),
(65, 23, 'Standard Double AC', '2', '1 Large Bed', '420_images0_1563442743.jpg', 1800, '2019-12-15 01:58:51', '2019-12-15 01:58:51'),
(66, 25, 'Executive', '1', '1 Large Bed', 'Suite room 2.JPG', 3080, '2019-12-15 02:32:14', '2020-01-01 05:43:07'),
(67, 25, 'Executive Deluxe', '1', '1 Large Bed', 'DELUXE SUPER.JPG', 3630, '2019-12-15 02:34:19', '2020-01-01 05:43:38'),
(68, 25, 'Executive Twin', '2', '2 Single Bed', 'Deluxe Twin.JPG', 4400, '2019-12-15 02:35:05', '2020-01-01 05:44:17'),
(69, 25, 'Deluxe Super', '1', '1 Large Bed', 'DELUXE SUPER.JPG', 4180, '2019-12-15 02:40:06', '2020-01-01 05:45:21'),
(70, 25, 'Deluxe Twin', '2', '1 Double Bed', 'Deluxe Twin.JPG', 4950, '2019-12-15 02:58:35', '2020-01-01 05:46:01'),
(71, 25, 'Suite', '2', '1 Double Bed', 'Suite room 2.JPG', 6600, '2019-12-15 02:59:37', '2020-01-01 05:46:33'),
(76, 26, 'Deluxe Without Balcony', '1', '1 Large Bed', 'images.jpg', 6050, '2019-12-15 03:14:53', '2019-12-15 03:14:53'),
(77, 26, 'Deluxe With Balcony', '1', '1 Large Bed', 'images.jpg', 6600, '2019-12-15 03:15:44', '2019-12-15 03:15:44'),
(78, 26, 'Superior Deluxe Mountain View', '2', '1 Double Bed', 'images (5).jpg', 6600, '2019-12-15 03:16:56', '2019-12-15 03:16:56'),
(79, 26, 'Superior Deluxe Sea View With Balcony', '2', '1 Double Bed', 'images (5).jpg', 7920, '2019-12-15 03:17:52', '2019-12-15 03:17:52'),
(80, 26, 'Premier Deluxe Mountain View', '2', '1 Double Bed', 'images (1).jpg', 7260, '2019-12-15 03:19:40', '2019-12-15 03:19:40'),
(81, 26, 'Premier Deluxe Sea View With Balcony', '2', '1 Double Bed', 'images (1).jpg', 9240, '2019-12-15 03:23:24', '2019-12-15 03:23:24'),
(82, 26, 'Executive Premier Deluxe Sea View With Balcony', '2', '1 Double Bed', 'images (5).jpg', 9900, '2019-12-15 03:26:03', '2019-12-15 03:26:03'),
(83, 26, 'Junior Suite With/Without Balcony', '2', '2 Single Bed', '463238_13061816340013344217-2.jpg', 9900, '2019-12-15 03:27:25', '2019-12-15 03:27:25'),
(84, 26, 'Executive Suite Mountain View', '2', '1 Double Bed', 'images.jpg', 10560, '2019-12-15 03:30:08', '2019-12-15 03:30:08'),
(85, 26, 'Executive Suite Sea View', '2', '1 Double Bed', 'images.jpg', 12210, '2019-12-15 03:35:11', '2019-12-15 03:35:11'),
(86, 26, 'Executive Suite Sea View With Balcony', '2', '1 Double Bed', 'images.jpg', 13200, '2019-12-15 03:36:03', '2019-12-15 03:36:03'),
(87, 26, 'Honeymoon Suite Sea View With Balcony', '2', '1 Double Bed', 'images (4).jpg', 15840, '2019-12-15 03:39:05', '2019-12-15 03:39:05'),
(88, 26, 'Creative Studio', '2', '1 Extra Large Bed', 'images (1).jpg', 23100, '2019-12-16 23:26:37', '2019-12-16 23:26:37'),
(89, 26, 'President Suite', '2', '1 Large Bed', 'images.jpg', 52800, '2019-12-16 23:27:22', '2019-12-16 23:27:22'),
(90, 27, 'Couple Non AC', '2', '1  Double Bed', '125242859.jpg', 1375, '2019-12-16 23:43:09', '2019-12-16 23:43:09'),
(91, 27, 'Couple AC', '2', '1 Double Bed', '125242859.jpg', 1650, '2019-12-16 23:46:10', '2019-12-16 23:46:10'),
(92, 27, 'Double Non AC', '4', '2 Double Bed', 'images (6).jpg', 1650, '2019-12-16 23:50:04', '2019-12-16 23:50:04'),
(93, 27, 'Double AC', '2', '1 Double Bed', '125245248.jpg', 1925, '2019-12-16 23:50:43', '2019-12-16 23:50:43'),
(94, 27, 'Connecting Non AC', '4', '2 Double Bed', 'images (6).jpg', 3300, '2019-12-16 23:51:27', '2019-12-16 23:51:27'),
(95, 27, 'Connecting AC', '4', '2 Double Bed', 'images (6).jpg', 3850, '2019-12-16 23:52:02', '2019-12-16 23:52:02'),
(96, 28, 'Single Non AC', '1', '1 Large Bed', 'images (2).jpg', 825, '2019-12-16 23:58:17', '2019-12-16 23:58:17'),
(97, 28, 'Single AC', '1', '1 Large Bed', 'images (2).jpg', 990, '2019-12-16 23:58:56', '2019-12-16 23:58:56'),
(98, 28, 'Double Non AC', '2', '2 Large Bed', 'images (1).jpg', 1100, '2019-12-17 00:00:14', '2019-12-17 00:01:35'),
(99, 28, 'Double AC', '2', '2 Large Bed', 'images (1).jpg', 1375, '2019-12-17 00:01:02', '2019-12-17 00:01:02'),
(100, 29, 'Standard Couple Room', '2', '1 Large Bed', '25521507.jpg', 1925, '2019-12-17 00:26:05', '2019-12-17 00:26:05'),
(101, 29, 'Standard Twin Room', '3', '2 Large Bed', 'images.jpg', 1925, '2019-12-17 00:27:07', '2019-12-17 00:27:07'),
(102, 29, 'Deluxe', '2', '1 Large Bed', 'images (1).jpg', 2156, '2019-12-17 00:28:09', '2019-12-17 00:28:09'),
(103, 29, 'Superior Deluxe Room', '2', '1 Large Bed', '124783765.jpg', 2310, '2019-12-17 00:28:53', '2019-12-17 00:28:53'),
(104, 30, 'Deluxe Twin', '2', '2 Single Bed', '97630833.jpg', 5566, '2019-12-17 01:50:51', '2019-12-17 01:50:51'),
(105, 30, 'Deluxe Triple Bed', '3', '2 Double Bed', '97630833.jpg', 6457, '2019-12-17 01:56:50', '2019-12-17 01:56:50'),
(106, 30, 'Super Deluxe Twin', '2', '2 Single Bed', '97630833.jpg', 6679, '2019-12-17 01:58:04', '2019-12-17 01:58:04'),
(107, 30, 'Super Deluxe Triple Bed', '3', '2 Double Bed', '97630833.jpg', 7570, '2019-12-17 02:03:00', '2019-12-17 02:03:00'),
(108, 30, 'Royal Deluxe', '4', '2 Double Bed', '97630833.jpg', 12245, '2019-12-17 02:04:00', '2019-12-17 02:04:00'),
(109, 30, 'Cottage Top Floor-1', '2', '1 Large Bed', 'images (3).jpg', 6122, '2019-12-17 02:06:41', '2019-12-17 02:06:41'),
(110, 30, 'Cottage Top Floor-2', '2', '1 Large Bed', 'images (3).jpg', 6122, '2019-12-17 02:07:23', '2019-12-17 02:07:23'),
(111, 30, 'Cottage Ground Floor-3', '3', '2 Large Bed', 'images (4).jpg', 5232, '2019-12-17 02:08:04', '2019-12-17 02:08:04'),
(112, 30, 'Cottage Ground Floor-4', '3', '2 Large Bed', 'images (4).jpg', 4787, '2019-12-17 02:08:56', '2019-12-17 02:08:56'),
(113, 30, 'Cottage Full (4 Room)', '6', '4 Large Bed', '97630743.jpg', 22264, '2019-12-17 02:10:23', '2019-12-17 02:10:23'),
(114, 30, 'Extra Bed', '1', '1 Single Bed', '97630833.jpg', 1000, '2019-12-17 02:11:40', '2019-12-17 02:11:40'),
(115, 31, 'Echo Suite Sea View AC', '2', '1 Large Bed', 'maxresdefault.jpg', 6160, '2019-12-17 02:22:30', '2019-12-17 02:22:30'),
(116, 31, 'Suite Sea View AC', '2', '1 Large Bed', 'maxresdefault.jpg', 5280, '2019-12-17 02:23:18', '2019-12-17 02:23:18'),
(117, 31, 'Connecting Room Non AC', '4', '2 Double Bed', 'images.jpg', 4400, '2019-12-17 02:24:21', '2019-12-17 02:24:21'),
(118, 31, 'Standard Quadruple Room', '4', '2 Double Bed', 'images.jpg', 3520, '2019-12-17 02:26:09', '2019-12-17 02:26:09'),
(119, 31, 'Deluxe Double Room', '2', '1 Large Bed', 'images (1).jpg', 3080, '2019-12-17 02:28:08', '2019-12-17 02:28:08'),
(120, 31, 'Standard Triple Room', '3', '3 Single Bed', 'images (5).jpg', 3080, '2019-12-17 02:30:29', '2019-12-17 02:30:29'),
(121, 31, 'Standard Triple Room', '3', '3 Single Bed', 'images (5).jpg', 2640, '2019-12-17 02:31:33', '2019-12-17 02:31:33'),
(122, 31, 'Couple Bed Sea View AC', '2', '1 Large Bed', 'images (1).jpg', 3080, '2019-12-17 02:32:33', '2019-12-17 02:32:33'),
(123, 31, 'Couple Bed Sea View Non AC', '2', '1 Large Bed', 'images (1).jpg', 2640, '2019-12-17 02:33:19', '2019-12-17 02:33:19'),
(124, 31, 'Couple Bed Hill View AC', '2', '1 Large Bed', 'images (1).jpg', 2640, '2019-12-17 02:33:59', '2019-12-17 02:33:59'),
(125, 31, 'Couple Bed Hill View Non AC', '2', '1 Large Bed', 'images (1).jpg', 2200, '2019-12-17 02:34:52', '2019-12-17 02:34:52'),
(126, 32, 'Deluxe Sea view', '2', '1 Extra-Large Double Bed', 'images (2).jpg', 4207, '2019-12-17 02:47:18', '2019-12-17 02:47:18'),
(127, 32, 'Deluxe Hill view', '2', '1 Extra-Large Bed', 'images (1).jpg', 3740, '2019-12-17 02:49:03', '2019-12-17 02:49:03'),
(128, 32, 'Deluxe Twin', '2', '2 Single Bed', 'images (2).jpg', 3740, '2019-12-17 02:51:46', '2019-12-17 02:51:46'),
(129, 32, 'Deluxe Triple', '3', '2 Single Bed & 1 Double Bed', 'images (1).jpg', 4675, '2019-12-17 02:57:28', '2019-12-17 02:57:28'),
(130, 32, 'Deluxe Four bed', '4', '2 Double Bed', 'images (1).jpg', 5610, '2019-12-17 03:26:43', '2019-12-17 03:26:43'),
(131, 32, 'Non Ac couple', '2', '1 Large Bed', 'images (1).jpg', 2805, '2019-12-17 03:27:26', '2019-12-17 03:27:26'),
(132, 32, 'Non Ac Triple', '3', '1 Single Bed & 1 Double Bed', 'images (2).jpg', 3272, '2019-12-17 03:28:52', '2019-12-17 03:28:52'),
(133, 32, 'Non AC Four bed', '4', '2 Double Bed', 'images (1).jpg', 3740, '2019-12-17 03:29:32', '2019-12-17 03:29:32'),
(134, 33, 'Normal Double AC', '2', '1 Large Bed', 'download (1).jpg', 2200, '2019-12-17 03:35:09', '2019-12-17 03:35:09'),
(135, 33, 'Standard Double AC', '2', '1 Large Bed', 'download (1).jpg', 2860, '2019-12-17 03:35:51', '2019-12-17 03:35:51'),
(136, 33, 'Premium Couple AC', '2', '1 Large Bed', 'download (1).jpg', 2090, '2019-12-17 03:36:33', '2019-12-17 03:36:33'),
(137, 33, '3 Bed AC', '3', '3 Single Bed', 'download (1).jpg', 2475, '2019-12-17 03:37:28', '2019-12-17 03:37:28'),
(138, 34, 'Normal Couple AC', '2', '1 Double Bed', 'images (1).jpg', 1760, '2019-12-17 03:55:06', '2019-12-17 03:55:06'),
(139, 34, 'Normal Couple Non AC', '2', '1 Double Bed', 'images (1).jpg', 1320, '2019-12-17 03:55:57', '2019-12-17 03:55:57'),
(140, 34, 'Standard 3 AC', '3', '1 Large Bed & 1 Single Bed', 'images (2).jpg', 1980, '2019-12-17 03:59:06', '2019-12-17 03:59:06'),
(141, 34, 'Standard 3 Non AC', '3', '1 Large Bed & 1 Single Bed', 'images (3).jpg', 1540, '2019-12-17 04:00:13', '2019-12-17 04:00:13'),
(142, 34, 'Premium 4 AC', '4', '2 Double Bed', 'images.jpg', 2200, '2019-12-17 04:00:59', '2019-12-17 04:00:59'),
(143, 34, 'Premium 4 Non AC', '4', '2 Double Bed', 'images (3).jpg', 1760, '2019-12-17 04:01:46', '2019-12-17 04:01:46'),
(145, 36, 'Couple AC', '2', '1 Large Bed', '6171727_18112216490069864709.jpg', 3272, '2019-12-18 22:35:35', '2019-12-18 22:35:35'),
(146, 36, 'Couple Non AC', '2', '1 Large Bed', '6171727_18112216490069864709.jpg', 2805, '2019-12-18 22:43:25', '2019-12-18 22:43:25'),
(147, 36, 'Standard Double AC', '3', '1 Large Double Bed', '6171727_18112216490069864709.jpg', 3927, '2019-12-18 22:53:34', '2019-12-18 22:53:34'),
(148, 36, 'Standard Double Non AC', '3', '1 Large Double Bed', '6171727_18112216490069864709.jpg', 3272, '2019-12-18 22:54:44', '2019-12-18 22:54:44'),
(149, 36, 'Deluxe Quadruple Room', '4', '2 Large Double Bed', '106750307.jpg', 3553, '2019-12-18 22:56:40', '2019-12-18 22:56:40'),
(150, 36, 'Deluxe Quadruple Room Non AC', '4', '2 Large Double Bed', '106750307.jpg', 2805, '2019-12-18 22:57:58', '2019-12-18 22:57:58'),
(151, 36, 'Deluxe Family Room', '6', '1 Single Bed & 2 Large Double Bed', '106750307.jpg', 7012, '2019-12-18 22:59:56', '2019-12-18 22:59:56'),
(152, 37, 'Executive Couple Sea View with Balcony AC', '2', '1 Large Double Bed', 'images (1).jpg', 3960, '2019-12-18 23:11:08', '2019-12-18 23:11:08'),
(153, 37, 'Executive Twin Sea View with Balcony', '2', '2 Single Bed', 'images (3).jpg', 4950, '2019-12-18 23:12:10', '2019-12-18 23:12:10'),
(154, 37, 'Executive Triple Sea View with Balcony', '3', '2 Double Bed', 'images (1).jpg', 5445, '2019-12-18 23:13:38', '2019-12-18 23:13:38'),
(155, 37, 'Premium Suite 4 Bed Sea View with Balcony', '4', '2 Large Double Bed', 'images (3).jpg', 7425, '2019-12-18 23:14:54', '2019-12-18 23:14:54'),
(156, 37, 'Connecting Room', '4', '2 Double Bed', 'images (2).jpg', 6930, '2019-12-18 23:15:54', '2019-12-18 23:15:54'),
(157, 37, 'Honeymoon Suite', '2', '1 Large Double Bed', 'images (2).jpg', 5940, '2019-12-18 23:16:59', '2019-12-18 23:16:59'),
(158, 38, 'Couple Non AC', '2', '1 Double Bed', 'images.jpg', 2200, '2019-12-18 23:23:12', '2019-12-18 23:23:12'),
(159, 38, 'Couple AC', '2', '1 Double Bed', 'images.jpg', 3080, '2019-12-18 23:23:51', '2019-12-18 23:23:51'),
(160, 38, 'Economy Quadruple Room', '4', '2 Double Bed', 'images (1).jpg', 3960, '2019-12-18 23:25:42', '2019-12-18 23:25:42'),
(161, 38, 'Deluxe Quadruple Room', '4', '2 Double Bed', 'images (1).jpg', 4400, '2019-12-18 23:26:53', '2019-12-18 23:26:53'),
(162, 39, 'Family Deluxe Non AC', '4', '2 Double Bed', 'images (1).jpg', 2500, '2019-12-20 22:43:40', '2019-12-20 22:43:40'),
(163, 39, 'Family Deluxe AC', '4', '2 Double Bed', 'images (1).jpg', 4000, '2019-12-21 03:52:11', '2019-12-21 03:52:11'),
(164, 39, 'Family Standard Non AC', '3', '1 Extra Large Bed', '100189282.jpg', 2200, '2019-12-21 03:54:14', '2019-12-21 03:54:14'),
(165, 39, 'Family Standard AC', '3', '1 Extra Large Bed', '100189282.jpg', 3500, '2019-12-21 03:55:15', '2019-12-21 03:55:15'),
(166, 39, 'Executive Non AC', '2', '1 Double Bed', '100189282.jpg', 2200, '2019-12-21 03:56:17', '2019-12-21 03:56:17'),
(167, 39, 'Executive AC', '2', '1 Double Bed', '100189282.jpg', 3500, '2019-12-21 03:57:12', '2019-12-21 03:57:12'),
(168, 39, 'Deluxe Non AC', '1', '1 Large Bed', '100189282.jpg', 1800, '2019-12-21 03:59:19', '2019-12-21 04:02:05'),
(169, 39, 'Deluxe AC', '1', '1 Large Bed', '100189282.jpg', 2600, '2019-12-21 04:00:30', '2019-12-21 04:00:30'),
(170, 39, 'Standard Non AC', '2', '1 Double Bed', 'images (1).jpg', 1500, '2019-12-21 04:03:19', '2019-12-21 04:03:19'),
(171, 40, 'Superior King AC', '5', '1 Single Bed 2 Double Bed', '179603616.jpg', 3000, '2019-12-21 04:16:20', '2019-12-21 04:16:20'),
(172, 40, 'Deluxe Twin Non AC', '4', '2 Double Bed', '179603619.jpg', 1600, '2019-12-21 04:19:49', '2019-12-21 04:19:49'),
(173, 40, 'Superior King Non AC', '3', '1 Double Bed 1 Single Bed', 'images.jpg', 1200, '2019-12-21 04:32:47', '2019-12-21 04:32:47'),
(174, 40, 'Superior King AC', '3', '1 Double Bed & 1 Single Bed', 'images.jpg', 2500, '2019-12-21 04:39:52', '2019-12-21 04:39:52'),
(175, 40, 'Couple AC', '2', '1 Double Bed', 'hotel-3-star-bed-room.jpg', 1500, '2019-12-21 04:45:11', '2019-12-21 04:45:11'),
(176, 41, 'Dormitory Non AC', '2', '1 Double Bed', '201185_2.jpg', 1870, '2019-12-21 05:01:27', '2019-12-21 05:01:27'),
(177, 41, 'Standard AC', '2', '1 Double Bed', '201185_2.jpg', 2431, '2019-12-21 05:14:55', '2019-12-21 05:14:55'),
(178, 41, 'Deluxe AC', '3', '1 Double Bed & 1 Single Bed', 'images (2).jpg', 3366, '2019-12-21 05:22:35', '2019-12-21 05:22:35'),
(179, 41, 'Super Deluxe AC', '3', '1 Double Bed & 1 Single Bed', 'images (2).jpg', 4675, '2019-12-21 05:23:46', '2019-12-21 05:23:46'),
(180, 42, 'Standard AC', '2', '1 Double Bed', 'fd4e8437515872df924ce1a0b8786738.jpg', 3300, '2019-12-22 04:57:02', '2019-12-22 04:57:02'),
(181, 42, 'Executive AC', '3', '1 Large Double Bed', '1193068_18110113130069260736.jpg', 4400, '2019-12-22 04:58:25', '2019-12-22 04:58:25'),
(182, 42, 'Premium AC', '3', '1 Large Double Bed', '1193068_18110113130069260736.jpg', 5500, '2019-12-22 05:00:22', '2019-12-22 05:00:22'),
(183, 43, 'Couple Non AC', '2', '1 Double Bed', '141391107.jpg', 1870, '2019-12-22 05:11:07', '2019-12-22 05:11:07'),
(184, 43, 'Couple AC', '2', '1 Double Bed', '141391107.jpg', 2337, '2019-12-22 05:12:16', '2019-12-22 05:12:16'),
(185, 44, '4 Bed Non AC', '4', '4 Single Bed', 'caption.jpg', 1500, '2019-12-22 05:42:31', '2019-12-22 05:42:31'),
(186, 44, '4 Bed AC', '4', '4 Single Bed', 'caption.jpg', 3000, '2019-12-22 05:43:20', '2019-12-22 05:43:20'),
(187, 44, 'Couple Non AC', '2', '1 Double Bed', 'hotel-nice-international.jpg', 800, '2019-12-22 05:44:23', '2019-12-22 05:44:23'),
(188, 44, 'Couple AC', '2', '1 Double Bed', 'hotel-nice-international.jpg', 1500, '2019-12-22 05:45:02', '2019-12-22 05:45:02'),
(189, 45, 'Couple Room Non AC', '2', '1 Double Bed', '222860046.jpg', 1760, '2019-12-22 22:26:51', '2019-12-22 22:26:51'),
(190, 45, 'Couple Room AC', '2', '1 Double Bed', '222860046.jpg', 2750, '2019-12-22 22:29:30', '2019-12-22 22:29:30'),
(191, 45, 'Couple+Single Room Non AC', '3', '1 Double Bed & 1 Single Bed', 'Hotel Green Land (1).jpg', 2420, '2019-12-22 22:31:59', '2019-12-22 22:31:59'),
(192, 45, 'Couple+Single Room AC', '3', '1 Double Bed & 1 Single Bed', 'Hotel Green Land (1).jpg', 3520, '2019-12-22 22:33:14', '2019-12-22 22:33:14'),
(193, 45, 'Twin Room Non AC', '2', '2 Single Bed', 'two-single-room-of-Hotel-Hill-ton.jpg', 1760, '2019-12-22 22:34:48', '2019-12-22 22:34:48'),
(194, 45, 'Double Bed Non AC', '4', '2 Double Bed', 'images.jpg', 2750, '2019-12-22 22:36:24', '2019-12-22 22:36:24'),
(195, 45, 'Double Bed AC', '4', '2 Double Bed', 'images.jpg', 3850, '2019-12-22 22:38:06', '2019-12-22 22:38:06'),
(196, 45, 'Connecting Room AC', '6', '3 Couple Bed', '222860046.jpg', 4950, '2019-12-23 00:11:58', '2019-12-23 00:11:58'),
(197, 45, 'Executive Deluxe Non AC', '4', '1 Double Bed & 2 Single Bed', 'images.jpg', 3300, '2019-12-23 00:15:07', '2019-12-23 00:15:07'),
(198, 45, 'Executive Deluxe AC', '4', '1 Double Bed & 2 Single Bed', 'images.jpg', 4400, '2019-12-23 00:17:39', '2019-12-23 00:17:39'),
(201, 45, 'Connecting Room Non AC', '6', '3 Double Bed', 'Hotel Green Land (1).jpg', 3850, '2019-12-29 02:48:39', '2019-12-29 02:48:39'),
(202, 54, 'Normal Couple Non AC', '2', '1 Couple Bed', '100189486 (1).jpg', 352, '2019-12-29 02:59:38', '2019-12-29 02:59:38'),
(203, 54, 'Standard Couple Non AC', '2', '1 Couple Bed', '100189486 (1).jpg', 704, '2019-12-29 03:00:28', '2019-12-29 03:00:28'),
(204, 54, 'Standard Connecting Room Non AC', '3', '3 Single Bed', 'hotel-green-land.jpg', 1056, '2019-12-29 03:03:51', '2019-12-29 03:03:51'),
(205, 54, 'Normal Connecting Room Non AC', '3', '3 Single Bed', '100189486 (1).jpg', 880, '2019-12-29 03:04:46', '2019-12-29 03:04:46'),
(206, 55, 'Normal AC', '2', '2 Single Bed', 'images (1).jpg', 1980, '2019-12-29 03:20:21', '2019-12-29 03:47:54'),
(207, 55, 'Normal Non AC', '2', '2 Single Bed', 'images (1).jpg', 770, '2019-12-29 03:21:03', '2019-12-29 03:48:29'),
(208, 55, 'Normal Single Non AC', '1', '1 Single Room', '1231922133Hotel Purabi (Res.jpg', 385, '2019-12-29 03:23:26', '2019-12-29 03:23:26'),
(209, 55, 'Standard Non AC', '3', '3 Single Bed', '1173423035Hotel Purabi (Res.jpg', 1485, '2019-12-29 03:25:52', '2019-12-29 03:25:52'),
(210, 55, 'Standard  Non AC', '4', '4 Single Bed', '1173423035Hotel Purabi (Res.jpg', 1980, '2019-12-29 03:27:52', '2019-12-29 03:27:52'),
(211, 56, 'Normal AC', '2', '2 Single Bed', 'jghugj.jpg', 1760, '2019-12-29 03:42:50', '2019-12-29 03:54:50'),
(212, 56, 'Standard AC', '3', '3 Single Bed', 'jghugj.jpg', 2750, '2019-12-29 03:43:34', '2019-12-29 03:55:30'),
(213, 56, 'Standard Double AC', '2', '1 Double Bed', 'utyuj.jpg', 3850, '2019-12-29 03:44:38', '2019-12-29 03:55:47'),
(214, 56, 'Standard Non AC', '3', '3 Single Bed', 'jghugj.jpg', 1760, '2019-12-29 03:45:42', '2019-12-29 03:56:17'),
(215, 57, 'Chandrima', '4', '2 Couple Beds', 'images.jpg', 5940, '2019-12-29 04:52:41', '2019-12-29 04:52:41'),
(216, 57, 'Aurjuntala(VIP)', '3', '1 Couple Bed & 1 Single Bed', 'images.jpg', 6930, '2019-12-29 04:54:46', '2019-12-29 04:54:46'),
(217, 57, 'Aurjuntala(VIP)', '3', '1 Couple Bed & 1 Single Bed', 'images.jpg', 6930, '2019-12-29 04:55:34', '2019-12-29 04:55:34'),
(218, 57, 'Aurjuntala', '2', '2 Single Beds', 'c67cf74f9ee37de74bc1f2634bed75c8.jpg', 2970, '2019-12-29 04:57:25', '2019-12-29 04:57:25'),
(219, 57, 'Aurjuntala', '2', '2 Single Beds', '73d3805e054799277f63827b40dce50b.jpg', 2970, '2019-12-29 04:58:09', '2019-12-29 04:58:09'),
(220, 57, 'Aurjuntala', '2', '2 Single Beds', 'c67cf74f9ee37de74bc1f2634bed75c8.jpg', 2970, '2019-12-29 04:58:48', '2019-12-29 04:58:48'),
(221, 57, 'Aurjuntala', '2', '2 Single Beds', '73d3805e054799277f63827b40dce50b.jpg', 2970, '2019-12-29 04:59:24', '2019-12-29 04:59:24'),
(222, 57, 'Lack Lovers', '2', '1 Couple Bed', 'images (1).jpg', 2970, '2019-12-29 05:00:08', '2019-12-29 05:00:08'),
(223, 57, 'Lack Lovers', '2', '1 Couple Bed', 'OPOJIH.jpg', 2970, '2019-12-29 05:00:49', '2019-12-29 05:00:49'),
(224, 57, 'Kewkradong', '2', '1 Couple Bed', 'images (1).jpg', 2970, '2019-12-29 05:01:28', '2019-12-29 05:01:28'),
(225, 57, 'Kewkradong', '2', '1 Couple Bed', 'images (1).jpg', 2970, '2019-12-29 05:03:12', '2019-12-29 05:03:12'),
(226, 57, 'Kewkradong', '2', '1 Couple Bed', 'OPOJIH.jpg', 2970, '2019-12-29 05:03:56', '2019-12-29 05:03:56'),
(227, 57, 'Chimbuk', '3', '1 Couple Bed & 1 Single Bed', 'images.jpg', 3465, '2019-12-29 05:04:50', '2019-12-29 05:04:50'),
(228, 57, 'Chimbuk', '3', '1 Couple Bed & 1 Single Bed', 'images.jpg', 3465, '2019-12-29 05:05:36', '2019-12-29 05:05:36'),
(229, 58, 'Standard Single AC', '1', '1 Single Bed', '130725898.jpg', 1800, '2019-12-29 05:10:38', '2019-12-29 05:10:38'),
(230, 58, 'Standard Double AC', '2', '1 Double Bed', 'JKD.jpg', 2250, '2019-12-29 05:11:15', '2019-12-29 05:11:15'),
(231, 58, 'Premium Single', '1', '1 Large Bed', '130726142.jpg', 3000, '2019-12-29 05:11:50', '2019-12-29 05:11:50'),
(232, 59, 'Couple AC', '2', '1 Double Bed', 'images (1).jpg', 2475, '2019-12-29 05:15:24', '2019-12-29 05:15:24'),
(233, 59, 'Standard Double AC', '2', '1 Double Bed', 'images (1).jpg', 2772, '2019-12-29 05:16:05', '2019-12-29 05:16:05'),
(234, 59, 'Premium Double AC', '2', '1 Double Bed', 'images (1).jpg', 4455, '2019-12-29 05:16:47', '2019-12-29 05:16:47'),
(235, 60, 'Single AC', '1', '1 Single Bed', 'images.jpg', 1320, '2019-12-29 05:20:57', '2019-12-29 05:20:57'),
(236, 60, 'Double AC', '2', '1 Double Bed', '152713611.jpg', 2750, '2019-12-29 05:21:33', '2019-12-29 05:21:33'),
(237, 61, 'Normal Double AC', '2', '1 Double Bed', 'BEDROOM.jpg', 2475, '2019-12-29 05:25:03', '2019-12-29 05:25:03'),
(238, 61, 'Standard Double AC', '2', '1 Double Bed', 'BEDROOM.jpg', 3960, '2019-12-29 05:25:56', '2019-12-29 05:25:56'),
(239, 61, 'Premium Double AC', '2', '1 Double Bed', 'BEDROOM.jpg', 4950, '2019-12-29 05:27:20', '2019-12-29 05:27:20'),
(240, 61, 'Family Room AC', '6', '2 Double Beds & 2 Single Beds', 'BEDROOM.jpg', 5940, '2019-12-29 05:28:28', '2019-12-29 05:28:28'),
(241, 62, 'Executive Single', '1', '1 Single Bed', 'images (5).jpg', 3300, '2019-12-29 05:32:11', '2019-12-29 05:32:11'),
(242, 62, 'Lake View Deluxe Single', '1', '1 Large Bed', 'images (6).jpg', 3850, '2019-12-29 05:32:51', '2019-12-29 05:32:51'),
(243, 62, 'Lake View Executive Deluxe Double', '2', '1 Double Bed', 'images (3).jpg', 4950, '2019-12-29 05:33:32', '2019-12-29 05:33:32'),
(244, 62, 'Lake View Deluxe Double', '2', '1 Double Bed', 'images (2).jpg', 5500, '2019-12-29 05:34:09', '2019-12-29 05:34:09'),
(245, 62, 'Deluxe Double', '2', '1 Double Bed', 'images (6).jpg', 4400, '2019-12-29 05:34:46', '2019-12-29 05:34:46'),
(246, 62, 'Lake View Superior Deluxe', '2', '1 Extra Large Bed', 'images (5).jpg', 8030, '2019-12-29 05:35:28', '2019-12-29 05:35:28'),
(247, 63, 'Executive Deluxe Room', '2', '1 Large Bed', 'SXF.jpg', 7480, '2019-12-29 05:41:23', '2019-12-29 05:41:23'),
(248, 63, 'Executive Deluxe Room', '2', '2 Single Beds', '117085385.jpg', 8415, '2019-12-29 05:42:46', '2019-12-29 05:42:46'),
(249, 63, 'La Vinci Suite', '2', '1 Large Bed', 'SXF.jpg', 10285, '2019-12-29 05:43:36', '2019-12-29 05:43:36'),
(250, 64, 'Deluxe Queen', '2', '1 Couple Bed', '166677596.jpg', 4950, '2019-12-29 05:46:57', '2019-12-29 05:46:57'),
(251, 64, 'Luxury Queen with Lake View & Balcony', '2', '1 Couple Bed', '193396744.jpg', 5610, '2019-12-29 05:47:34', '2019-12-29 05:47:57'),
(252, 64, '2 Twins with Lake View & Balcony', '2', '2 Single Beds', '215106231.jpg', 6270, '2019-12-29 05:50:06', '2019-12-29 05:50:06'),
(253, 64, '3 Twin Suite', '3', '3 Single Beds', '454418330bf8c3ad1a4506721dc88ec3.jpg', 7150, '2019-12-29 05:50:52', '2019-12-29 05:50:52'),
(254, 64, 'Executive One Bed Room Queen Suite', '2', '1 Large Double Bed', 'et.jpg', 8250, '2019-12-29 05:51:38', '2019-12-29 05:51:38'),
(255, 65, 'Deluxe Single (With wide space balcony)', '1', '1 Single Bed', 'sadsad.jpg', 7392, '2019-12-29 05:55:26', '2019-12-29 05:55:26'),
(256, 65, 'Deluxe Twin (With wide space balcony)', '2', '2 Single Beds', 'lake-view-deluxe.jpg', 8316, '2019-12-29 05:55:59', '2019-12-29 05:55:59'),
(257, 65, 'Deluxe Lake View (Big window)', '2', '1 Double Bed', 'hotel-sarina-dhaka.jpg', 8778, '2019-12-29 05:57:09', '2019-12-29 05:57:09'),
(258, 65, 'Executive Deluxe (With wide space balcony)', '2', '1 Double Bed', 'lake-view-deluxe.jpg', 9240, '2019-12-29 05:58:41', '2019-12-29 05:58:41'),
(259, 65, 'Lake View Suite (Big window)', '2', '1 Large Double Bed', 'sadsad.jpg', 11088, '2019-12-29 05:59:21', '2019-12-29 05:59:21'),
(260, 66, 'Single Deluxe', '1', '1 Large Bed', '203636921.jpg', 3300, '2019-12-29 23:37:32', '2019-12-29 23:37:32'),
(261, 66, 'Couple Deluxe', '2', '1 Double Bed', 'TTTTTTTTTTTTTTTTTTT.jpg', 3850, '2019-12-29 23:39:04', '2019-12-29 23:39:04'),
(262, 66, 'Twin Deluxe', '2', '2 Single Beds', '199654311.jpg', 4400, '2019-12-29 23:39:41', '2019-12-29 23:39:41'),
(263, 66, 'Family Suit', '3', '1 Double Bed & 1 Single Bed', '203636019.jpg', 4950, '2019-12-29 23:42:21', '2019-12-29 23:42:21'),
(264, 66, 'Triple Deluxe', '3', '3 Single Beds', '199654311.jpg', 4950, '2019-12-29 23:43:01', '2019-12-29 23:43:01'),
(265, 66, 'Extra Bed', '1', '1 Single Bed', '203636921.jpg', 1100, '2019-12-29 23:43:55', '2019-12-29 23:43:55'),
(266, 67, 'Single Non AC', '1', '1 Single Bed', '67588769.jpg', 275, '2019-12-29 23:51:49', '2019-12-29 23:51:49'),
(267, 67, 'Double Non AC', '2', '1 Double Bed', 't u.jpg', 550, '2019-12-29 23:52:29', '2019-12-29 23:55:57'),
(268, 67, 'Double AC', '2', '2 Double Bed', 'tru.jpg', 1650, '2019-12-29 23:53:41', '2019-12-29 23:56:13'),
(269, 68, 'Single Non AC', '1', '1 Single Bed', 'fh.jpg', 440, '2019-12-30 02:34:18', '2019-12-30 02:34:18'),
(270, 68, 'Single AC', '1', '1 Single Bed', 't.jpg', 880, '2019-12-30 02:34:59', '2019-12-30 02:34:59'),
(271, 68, 'Couple Non AC', '2', '1 Double Bed', 't.jpg', 880, '2019-12-30 02:35:40', '2019-12-30 02:35:40'),
(272, 68, 'Couple AC', '2', '1 Double Bed', 't.jpg', 1100, '2019-12-30 02:36:33', '2019-12-30 02:36:33'),
(273, 68, 'Connecting Room Non AC', '4', '2 Double Bed', 'fh.jpg', 1320, '2019-12-30 02:44:20', '2019-12-30 02:44:20'),
(274, 68, 'Connecting Room AC', '4', '2 Double Bed', 'fh.jpg', 2420, '2019-12-30 02:45:46', '2019-12-30 02:45:46'),
(275, 68, 'Executive Non AC', '3', '1 Double Bed & 1 Single Bed', 'fh.jpg', 990, '2019-12-30 02:47:59', '2019-12-30 02:47:59'),
(276, 69, 'Single AC', '1', '1 Single Bed', 'TDI.jpg', 880, '2019-12-30 02:57:27', '2019-12-30 02:57:27'),
(277, 69, 'Double AC', '2', '1 Double Bed', '44HUJ.jpg', 1210, '2019-12-30 02:58:12', '2019-12-30 02:58:12'),
(278, 69, 'Single Non AC', '1', '1 Single Bed', 'TDI.jpg', 385, '2019-12-30 02:59:11', '2019-12-30 02:59:11'),
(279, 69, 'Double Non AC', '2', '1 Double Bed', 'TU75.jpg', 715, '2019-12-30 03:00:23', '2019-12-30 03:00:23'),
(280, 69, 'Connecting Room Non AC', '3', '2 Double Beds', 'F25.jpg', 935, '2019-12-30 03:02:00', '2019-12-30 03:02:00'),
(281, 69, 'Connecting Room Non AC', '4', '2 Double Beds', '475.jpg', 1210, '2019-12-30 03:03:20', '2019-12-30 03:03:20'),
(285, 72, 'Connecting Room Non AC', '4', '2 Double Beds', 'hth55.jpg', 880, '2019-12-30 03:33:46', '2020-01-02 03:55:13'),
(286, 72, 'Twin Non AC', '3', '1 Double Bed & 1 Single Bed', 'hth55.jpg', 770, '2019-12-30 03:35:10', '2020-01-02 03:56:38'),
(287, 72, 'Double Non AC', '2', '1 Double Bed', 'iougih656476.jpg', 660, '2019-12-30 03:35:49', '2020-01-02 03:57:07'),
(288, 72, 'Single Non AC', '1', '1 Single Bed', 'iougih656476.jpg', 495, '2019-12-30 03:36:32', '2020-01-02 03:57:40'),
(289, 72, 'Double AC', '2', '1 Double Bed', 'iougih656476.jpg', 1210, '2019-12-30 03:37:07', '2020-01-02 04:00:02'),
(290, 72, 'Single AC', '1', '1 Single Bed', 'iougih656476.jpg', 880, '2019-12-30 03:37:42', '2020-01-02 04:00:24'),
(292, 72, 'Double Non AC', '1', '1 Double Bed', 'iougih656476.jpg', 440, '2019-12-30 03:44:11', '2020-01-02 04:01:05'),
(293, 72, 'Twin Non AC', '3', '1 Double Bed & 1 Single Bed', 'hgfkjghggkhjg.jpg', 660, '2019-12-30 03:45:04', '2020-01-02 04:03:04'),
(294, 73, 'Single Non AC', '1', '1 Single Bed', 'Capture 3.jpg', 220, '2019-12-30 05:00:07', '2019-12-30 05:00:07'),
(295, 73, 'Double Non AC', '2', '1 Double Bed', 'Capture 4.jpg', 440, '2019-12-30 05:00:43', '2019-12-30 05:00:43'),
(296, 73, 'Twin Non AC', '3', '1 Double Bed & 1 Single Bed', 'Capture 2.jpg', 660, '2019-12-30 05:01:35', '2019-12-30 05:01:35'),
(297, 74, 'Canary Deluxe Single', '1', '1 Large Bed', '8j5787676yh888888888888888888888888888888888888888888888888.jpg', 7780, '2020-01-01 00:42:34', '2020-01-01 00:42:34'),
(298, 74, 'Ex. Deluxe Kitchenette', '2', '1 Double Bed', '45555555555555748888888989999999999999.jpg', 8377, '2020-01-01 00:44:17', '2020-01-01 00:44:17'),
(299, 74, 'Canary Premium Single', '1', '1 Large Bed', '8j5787676yh888888888888888888888888888888888888888888888888.jpg', 8377, '2020-01-01 00:45:05', '2020-01-01 00:45:05'),
(300, 74, 'Canary Premium Twin', '3', '1 Double Bed & 1 Single Bed', 'hh4h45h45hg54gh54gh54hg45hg45hg45.jpg', 8975, '2020-01-01 00:47:17', '2020-01-01 00:47:17'),
(301, 74, 'Canary Park Suite', '2', '1 Double Bed', 'rhtkjjuk54555555555555555555555555555555.jpg', 15557, '2020-01-01 00:48:04', '2020-01-01 00:48:04'),
(302, 75, 'Single Non AC', '1', '1 Single Bed', 'Capture 3hgrthtyuty.jpg', 440, '2020-01-02 04:12:46', '2020-01-02 04:19:05'),
(303, 75, 'Couple Non AC', '2', '1 Double Bed', 'Capture 3hgrthtyuty.jpg', 770, '2020-01-02 04:20:25', '2020-01-02 04:20:25'),
(304, 75, 'Deluxe Non AC', '3', '1 Double Bed & 1 Single Bed', 'Capture 2323558655623.jpg', 990, '2020-01-02 04:22:16', '2020-01-02 04:22:16'),
(305, 75, 'Executive Non AC', '4', '2 Double Beds', 'Capture 2323558655623.jpg', 1210, '2020-01-02 04:23:48', '2020-01-02 04:23:48'),
(306, 75, 'Standard AC', '2', '2 Single Beds', 'Capture 2323558655623.jpg', 1650, '2020-01-02 04:25:13', '2020-01-02 04:25:13'),
(307, 75, 'Executive AC', '4', '2 Double Beds', 'Capture 2323558655623.jpg', 2200, '2020-01-02 04:27:17', '2020-01-02 04:27:17'),
(308, 76, 'Standard Double Room', '2', '1 Double Bed', '161452934.jpg', 2118, '2020-01-02 04:42:29', '2020-01-02 04:42:29'),
(309, 76, 'Standard Twin Room', '2', '2 Single Bed', '161453012.jpg', 2118, '2020-01-02 04:44:00', '2020-01-02 04:44:00'),
(310, 76, 'Deluxe Double Room', '2', '1 Double Bed', 'superior-double-JHGUYG5445.jpg', 2310, '2020-01-02 04:45:27', '2020-01-06 15:50:29'),
(311, 76, 'Deluxe Twin Room', '3', '1 Double Bed & 1 Single Bed', 'deluxe-twin-646546546+.jpg', 2407, '2020-01-02 04:46:59', '2020-01-06 15:51:23'),
(312, 76, 'Superior Twin Room', '3', '1 Double Bed & 1 Single Bed', '161453012.jpg', 2599, '2020-01-02 04:48:00', '2020-01-02 04:48:00'),
(313, 76, 'Superior Double Room', '2', '1 Large Double Bed', 'deluxe-double-5854HGJU6586+.jpg', 2888, '2020-01-02 04:48:44', '2020-01-06 15:52:29'),
(314, 76, 'Deluxe Family Room', '4', '2 Double Beds', 'superior-twin-7FHGJHI.jpg', 4813, '2020-01-02 04:49:27', '2020-01-06 15:53:06'),
(315, 77, 'Platinum Suite', '2', '1 Double Bed', 'PLATINUM SUITE-HAFFFFFFFFFFFFFF.jpg', 3273, '2020-01-02 05:04:11', '2020-01-06 15:43:15'),
(316, 77, 'platinum', '2', '1 Double Bed', 'PLATINUM-HDJGHJBF.jpg', 2805, '2020-01-02 05:07:05', '2020-01-06 15:43:38'),
(317, 77, 'Diamond', '4', '2 Double Beds', 'DIAMOND-ZJDFV867HHJ.jpg', 2805, '2020-01-02 05:09:12', '2020-01-06 15:44:00'),
(318, 77, 'Gold', '3', '1 Large Double Bed', 'GOLD-76857675658765746576HGGB.jpg', 1870, '2020-01-02 05:10:22', '2020-01-06 15:44:23'),
(319, 77, 'Deluxe Family Room', '4', '2 Double Beds', 'DELUXE FAMILY-456DCGHJFHJGVKHJ6456.jpg', 2338, '2020-01-02 05:11:21', '2020-01-06 15:44:53'),
(320, 77, 'Deluxe', '2', '1 Double Bed', 'DELUXE-4667464FHYFHJ4654654.jpg', 1403, '2020-01-02 05:12:11', '2020-01-06 15:45:21'),
(321, 77, 'Normal Couple', '2', '1 Double Bed', 'NORMAL COUPLE-DDDDDDDDDDDD.jpg', 748, '2020-01-02 05:13:01', '2020-01-06 15:45:57'),
(322, 77, 'Normal Single', '1', '1 Single Bed', 'DELUXE-4667464FHYFHJ4654654.jpg', 468, '2020-01-02 05:13:42', '2020-01-06 15:46:51'),
(323, 78, 'VIP AC Couple', '2', '1 Double Bed', 'Capture1 56797565555555555555555555555555555.jpg', 2750, '2020-01-02 05:21:00', '2020-01-02 05:21:00'),
(324, 78, 'Deluxe Ac', '3', '1 Double Bed & 1 Single Bed', 'Captureeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.jpg', 1980, '2020-01-02 05:22:04', '2020-01-02 05:22:04'),
(325, 78, 'Executive Non Ac', '4', '2 Double Beds', 'Capturef g g g g g g g g g g g.jpg', 1870, '2020-01-02 05:23:16', '2020-01-02 05:23:16'),
(326, 78, 'Family Room Non Ac', '4', '2 Double Beds', 'Capturesf fb  ggh  ghh.jpg', 1980, '2020-01-02 05:24:00', '2020-01-02 05:24:00'),
(327, 78, 'Double AC', '2', '1 Double Bed', 'Capturej d 445bc5 556465.jpg', 1650, '2020-01-02 05:24:43', '2020-01-02 05:24:43'),
(328, 78, 'Single AC', '1', '1 Single Bed', 'Captureygf 886 58769 56568 547.jpg', 1430, '2020-01-02 05:25:23', '2020-01-02 05:25:23'),
(329, 79, 'Single AC', '1', '1 Single Bed', 'AF1QipNbgIjZ_3o4lO_1HM2RjWu1hA09pPL8COxm_Fo0=s596-k-no.jpg', 1100, '2020-01-02 05:35:23', '2020-01-02 05:35:23'),
(330, 79, 'Couple AC', '2', '1 Double Bed', 'AF1QipNScc2_JhwLQD3WjcfNvMz9rJgpsd_RgRlVgLuR=s596-k-no.jpg', 1430, '2020-01-02 05:36:11', '2020-01-02 05:36:11'),
(331, 79, 'Family Room AC', '4', '2 Double Bed', 'AF1QipOti99zSMymuopAKoLmUiiXCQphLGE-yIOKVzoa=s341-k-no.jpg', 1870, '2020-01-02 05:37:27', '2020-01-02 05:37:27'),
(332, 79, 'A Category AC', '3', '1 Double Bed & 1 Single Bed', 'AF1QipNXYIlWKQejKMb0Pctre6fGGcQPe6zGdPfIq2ay=s341-k-no.jpg', 1980, '2020-01-02 05:38:28', '2020-01-02 05:38:28'),
(333, 79, 'Executive AC', '4', '2 Double Beds', 'AF1QipPqyQyH1n5QqzkGgqODh5dnj4DzX13a9LPAbxIR=s341-k-no.jpg', 2420, '2020-01-02 05:39:51', '2020-01-02 05:39:51'),
(334, 79, 'Single', '1', '1 Single Bed', 'AF1QipN4HpyboRwoa96G9ayJKH-kOr99_c5OrviIO96z=s385-k-no.jpg', 440, '2020-01-02 05:40:41', '2020-01-02 05:40:41'),
(335, 79, 'Couple', '1', '1 Double Bed', 'AF1QipNbgIjZ_3o4lO_1HM2RjWu1hA09pPL8COxm_Fo0=s596-k-no.jpg', 880, '2020-01-02 05:41:20', '2020-01-02 05:41:20'),
(336, 79, 'Executive Suite', '3', '3 Single Beds', 'AF1QipPkAviVrr0I6SItF3Ha6yN-u9jNAbP_IlzOgEAD=s397-k-no.jpg', 1320, '2020-01-02 05:42:33', '2020-01-02 05:42:33'),
(337, 79, 'Executive Deluxe Suite', '5', '2 Double Bed & 1 Single Bed', 'AF1QipNOxud0Nn1-RwOnSO-p5lcjXEYt4Y4MQOGCdVYH=s397-k-no.jpg', 1760, '2020-01-02 05:44:12', '2020-01-02 05:44:12'),
(338, 80, 'Family Suite large', '4', '2 Double Beds', 'AF1QipMxeAU1Wy6Ve14OMtXdGAepM6QYIIeWPrLWXmpn=s384-k-no.jpg', 4675, '2020-01-02 05:49:56', '2020-01-02 05:49:56'),
(339, 80, 'Family Suite small', '3', '1 Double Bed & 1 Single Bed', 'Ul647CJcHwKZ1winby0h1RM1-fmGGt5-eRq9ZpzQOl_OMYhuaDUCI4Mz5YXaoFNBBy4_oawkrJSoyHIxvDtlWZUEItckhR2J035ZytiMuXGCrFuBkD2z4sLrsUKNDqxD.jpg', 3740, '2020-01-02 05:51:16', '2020-01-02 05:51:16'),
(340, 80, 'Tripple bed', '3', '3 Single Beds', 'AF1QipOXCeJrMSe-5y9BMFfDhmY-LEx5vjvyBudiR6xa=s384-k-no.jpg', 2805, '2020-01-02 05:52:46', '2020-01-02 05:52:46'),
(341, 80, 'Single 2 part', '2', '2 Single Beds', 'Ul647CJcHwKZ1winby0h1RM1-fmGGt5-eRq9ZpzQOl_OMYhuaDUCI4Mz5YXaoFNBBy4_oawkrJSoyHIxvDtlWZUEItckhR2J035ZytiMuXGCrFuBkD2z4sLrsUKNDqxD.jpg', 2431, '2020-01-02 05:54:25', '2020-01-02 05:54:25'),
(342, 80, 'Premium Couple Room', '2', '1 Double Bed', 'Ul5cFgPVxU5pz9N2qaBQGfnnd2Ok8Vzjw7-AQuD9pqxwthTLK9pklbtK3BNOgKMh3OdZtkI-wXzZGqS2JYcBZssFbUpbJ26rKBH_bq4806ltHW0GXVgF5OIENG8hlR3i.jpg', 2338, '2020-01-02 05:55:49', '2020-01-02 05:55:49'),
(343, 80, 'Standard Couple', '2', '1 Double Bed', 'Ul5cFgPVxU5pz9N2qaBQGfnnd2Ok8Vzjw7-AQuD9pqxwthTLK9pklbtK3BNOgKMh3OdZtkI-wXzZGqS2JYcBZssFbUpbJ26rKBH_bq4806ltHW0GXVgF5OIENG8hlR3i.jpg', 2057, '2020-01-02 05:56:33', '2020-01-02 05:56:33'),
(344, 80, 'Executive Suite', '3', '3 Single Beds', 'Ul647CJcHwKZ1winby0h1RM1-fmGGt5-eRq9ZpzQOl_OMYhuaDUCI4Mz5YXaoFNBBy4_oawkrJSoyHIxvDtlWZUEItckhR2J035ZytiMuXGCrFuBkD2z4sLrsUKNDqxD.jpg', 1870, '2020-01-02 05:57:42', '2020-01-02 05:57:42'),
(345, 80, 'Couple AC', '2', '1 Double Bed', 'Ul5cFgPVxU5pz0nLvNLJq0QhgTslttyUIqy5ikCOMDWY9vD8Gnw-7XJbaUzLC69kOkZXE0DtZ5rYIYhzba4LjMrcV3ftC56oSuLtjUh8QN3aBFJffML5z4bFdy7qw6fi.jpg', 1403, '2020-01-02 05:58:43', '2020-01-02 05:58:43'),
(346, 81, 'Family Executive AC', '5', '2 Double Beds & 1 Single Bed', 'AF1QipPo2elJGED-OZ3T88X0XvhogtUFAGX2TUSWUhkN=s385-k-no.jpg', 3520, '2020-01-06 15:00:52', '2020-01-06 15:00:52'),
(347, 81, 'Family Deluxe AC', '5', '2 Double Beds & 1 Single Bed', 'AF1QipMi9Squpl3rj2rgC875t-TSkhhMA1zu9gbNrItg=s385-k-no.jpg', 2640, '2020-01-06 15:04:20', '2020-01-06 15:04:20'),
(348, 81, 'Couple Deluxe AC', '2', '1 Couple Bed', 'AF1QipPfFDstip0u55bSlb39kYrLLGx2FMfC9BhKeVBr=s455-k-no.jpg', 1320, '2020-01-06 15:05:15', '2020-01-06 15:05:15'),
(349, 81, 'Family AC', '4', '2 Double Beds', 'AF1QipPbjA2FJsZyeU6gKt6TV7nzSTSo7XUdsOdsL6UX=s455-k-no.jpg', 2640, '2020-01-06 15:06:41', '2020-01-06 15:06:41'),
(350, 81, 'Single Deluxe', '1', '1 Large Bed', 'AF1QipPfFDstip0u55bSlb39kYrLLGx2FMfC9BhKeVBr=s455-k-no.jpg', 440, '2020-01-06 15:07:39', '2020-01-06 15:07:39'),
(351, 81, 'Couple Deluxe', '2', '1 Double Bed', 'AF1QipMfv0TuDPZvqYF-qxSryHYGIXjj_etNgmVnAdfI=s385-k-no.jpg', 880, '2020-01-06 15:09:07', '2020-01-06 15:09:07'),
(352, 81, 'Twin Deluxe', '4', '2 Double Beds', 'AF1QipNKR0GgWJu3CVg2wfRKQTCnCqrBfFOeiTSWZgpR=s455-k-no.jpg', 880, '2020-01-06 15:10:13', '2020-01-06 15:10:13'),
(353, 82, 'Couple AC', '2', '1 Double Bed', 'Capture55555555555555555555555555555555555.jpg', 1405, '2020-01-06 15:20:41', '2020-01-06 15:20:41'),
(354, 82, 'Family Executive AC', '5', '2 Double Bed', 'Capture999999999999999999999999999999.jpg', 1870, '2020-01-06 15:22:23', '2020-01-06 15:22:23'),
(355, 82, 'Family AC', '4', '2 Double Beds', 'Capture999999999999999999999999999999.jpg', 2338, '2020-01-06 15:27:05', '2020-01-06 15:27:05'),
(356, 82, 'Single Non AC', '1', '1 Single Bed', 'Capture4654654654555555555555555555.jpg', 748, '2020-01-06 15:28:49', '2020-01-06 15:28:49'),
(357, 82, 'Double Non AC', '2', '1 Double Bed', 'Capture55555555555555555555555555555555555.jpg', 1122, '2020-01-06 15:29:56', '2020-01-06 15:29:56'),
(358, 82, 'Family Non AC', '4', '2 Double Bed', 'Capture999999999999999999999999999999.jpg', 1403, '2020-01-06 15:30:55', '2020-01-06 15:30:55'),
(359, 82, 'Family Non AC', '2', '1 Double Bed', 'Capture55555555555555555555555555555555555.jpg', 1870, '2020-01-06 15:32:11', '2020-01-06 15:32:11'),
(360, 83, 'Single Room AC', '1', '1 Single Room', 'AF1QipNSr467pzH86tDqIGhn3dHbwv3vThV0hRLjrW7_=s341-k-no.jpg', 1210, '2020-01-06 15:37:38', '2020-01-06 15:37:38'),
(361, 83, 'Double Room AC', '2', '1 Double Bed', 'AF1QipOo_J-CnZqZf8unIO6RH6SW_0tp55SltE6Ds6yN=s341-k-no.jpg', 1980, '2020-01-06 15:38:36', '2020-01-06 15:38:36'),
(362, 83, 'Single Non AC', '1', '1 Single Bed', 'AF1QipNSr467pzH86tDqIGhn3dHbwv3vThV0hRLjrW7_=s341-k-no.jpg', 550, '2020-01-06 15:39:42', '2020-01-06 15:39:42'),
(363, 83, 'Double Non AC', '2', '2 Double Bed', 'AF1QipPUWxPLDk71tNG4-GzgB81TAVooiDxq8tHTaHdk=s397-k-no.jpg', 1320, '2020-01-06 15:40:51', '2020-01-06 15:40:51'),
(364, 84, 'Family Room AC', '4', '2 Double Beds', 'mmmmmmmmmmmmmmmmmmmmmmmm.PNG', 4455, '2020-01-09 12:45:26', '2020-01-09 12:45:26'),
(365, 84, 'Couple Room AC', '2', '1 Double Bed', 'Capturentyuini.PNG', 3520, '2020-01-09 13:25:49', '2020-01-09 13:25:49'),
(366, 84, 'Single Non AC', '1', '1 Single Bed', 'tttttttttttttttiufiiiiiiiiiiiii.PNG', 1320, '2020-01-09 13:26:34', '2020-01-09 13:26:34'),
(367, 85, 'Family Room Non AC', '4', '2 Double Beds', 'Capture656hgjgyufytufgjkjkhui.PNG', 3465, '2020-01-09 13:34:03', '2020-01-09 13:34:03'),
(368, 85, 'Single Non AC', '1', '1 Single Bed', 'vhgjghgg rrssssssssssssssssssytttttttttttttt.PNG', 594, '2020-01-09 13:35:44', '2020-01-09 13:35:44'),
(369, 85, 'Double Non AC', '2', '2 Single Beds', 'gguuoihpuyughjgbj.PNG', 1188, '2020-01-09 13:36:44', '2020-01-09 13:36:44'),
(370, 85, 'Single AC', '1', '1 Single Bed', 'Capturelklklklklklklklklklklklklklklkg.PNG', 1188, '2020-01-09 13:37:32', '2020-01-09 13:37:32'),
(371, 85, 'Double AC', '2', '2 Single Beds', 'bjhjhgb34636565656.PNG', 1782, '2020-01-09 13:42:40', '2020-01-09 13:42:40'),
(372, 86, 'Family Room Non AC', '4', '2 Double Beds', 'Capturebb h h hf f d dd.PNG', 770, '2020-01-09 14:02:41', '2020-01-09 14:02:41'),
(373, 86, 'Double Non AC', '2', '1 Double Bed', 'Capture21132jhhhhhh.PNG', 550, '2020-01-09 14:03:27', '2020-01-09 14:03:27'),
(374, 86, 'Single Non AC', '1', '1 Single Bed', 'hgauydya8687674c.PNG', 440, '2020-01-09 14:04:03', '2020-01-09 14:04:03'),
(375, 87, 'Family Room Non AC', '3', '1 Extra Large Bed', 'Capture00000000000000000000.PNG', 880, '2020-01-09 14:14:52', '2020-01-09 14:14:52'),
(376, 87, 'Double Non AC', '2', '1 Double Bed', 'Capture6574444.PNG', 550, '2020-01-09 14:18:18', '2020-01-09 14:18:18'),
(377, 87, 'Single Non AC', '1', '1 Single Bed', 'Capture556gcgshvgh.PNG', 275, '2020-01-09 14:20:10', '2020-01-09 14:20:10'),
(378, 88, 'Double Non AC', '2', '1 Double Bed', '77128124.jpg', 550, '2020-01-09 14:27:36', '2020-01-09 14:27:36'),
(379, 88, 'Single Non AC', '1', '1 Single Bed', 'zdf.jpg', 220, '2020-01-09 14:28:12', '2020-01-09 14:28:12'),
(380, 89, 'Family Room Non AC', '4', '2 Double Beds', 'Capture2222222222222222222.jpg', 660, '2020-01-09 14:48:06', '2020-01-09 14:48:06'),
(381, 89, 'Family Room Non AC', '3', '1 Extra Large Bed', 'Capture55555555555555555555555555555555555.jpg', 550, '2020-01-09 14:49:34', '2020-01-09 14:49:34'),
(382, 89, 'Double Non AC', '2', '1 Double Bed', 'Capture999999999999999999999999999999.jpg', 385, '2020-01-09 14:50:22', '2020-01-09 14:50:22'),
(383, 89, 'Single Non AC', '1', '1 Single Bed', 'Capture4654654654555555555555555555.jpg', 275, '2020-01-09 14:51:35', '2020-01-09 14:51:35'),
(384, 90, 'Twin Bed Room', '2', '2 Single Bed', '168741636.jpg', 990, '2020-01-09 15:07:22', '2020-01-09 15:07:22'),
(385, 90, 'Couple Room Non AC', '2', '1 Double Bed', 'img-20190923-214407-largejpg.jpg', 825, '2020-01-09 15:22:36', '2020-01-09 15:22:36'),
(386, 90, 'Single Room', '1', '1 Single Bed', 'img-20190923-214407-largejpg.jpg', 495, '2020-01-09 15:24:48', '2020-01-09 15:24:48'),
(387, 90, 'Couple Room AC', '2', '1 Double Bed', 'img-20190923-214407-largejpg.jpg', 1210, '2020-01-09 15:25:41', '2020-01-09 15:25:41'),
(388, 91, 'Couple Room Non AC', '2', '1 Double Bed', 'Hotel-One-International-4.jpg', 660, '2020-01-09 15:33:21', '2020-01-09 15:33:21'),
(389, 91, 'Couple Room AC', '2', '1 Double Bed', 'Hotel-One-International-4.jpg', 1100, '2020-01-09 15:34:09', '2020-01-09 15:34:09'),
(390, 91, 'Family Room AC', '4', '2 Single Bed & 1 Double Bed', 'Hotel-One-International-5.jpg', 1650, '2020-01-09 15:35:23', '2020-01-09 15:35:23'),
(391, 91, 'Double Room Non AC', '2', '2 Single Beds', 'Hotel-One-International-1.jpg', 770, '2020-01-09 15:36:05', '2020-01-09 15:36:05'),
(392, 91, 'Double Room AC', '2', '2 Single Beds', 'Hotel-One-International-1.jpg', 1320, '2020-01-09 15:36:47', '2020-01-09 15:36:47'),
(393, 91, 'Executive Room', '2', '1 Double Bed', 'Hotel-One-International-4.jpg', 1650, '2020-01-09 15:37:25', '2020-01-09 15:37:25'),
(394, 92, 'Family Room AC', '4', '2 Double Beds', '179603619.jpg', 2475, '2020-01-09 15:46:56', '2020-01-09 15:46:56'),
(395, 92, 'Family Room Non AC', '4', '2 Double Beds', '179603619.jpg', 990, '2020-01-09 15:47:46', '2020-01-09 15:47:46'),
(396, 92, 'Single Room AC', '1', '1 Single Bed', 'hotel-3-star-bed-room.jpg', 1485, '2020-01-09 15:48:37', '2020-01-09 15:48:37'),
(397, 92, 'Single Room Non AC', '1', '1 Single Bed', 'hotel-3-star-bed-room.jpg', 350, '2020-01-09 15:49:28', '2020-01-09 15:49:28'),
(398, 92, 'Double Room AC', '2', '2 Single Beds', 'xv b.jpg', 1980, '2020-01-09 15:52:56', '2020-01-09 15:52:56'),
(399, 92, 'Double Room Non AC', '2', '2 Single Beds', '179603616.jpg', 700, '2020-01-09 15:53:49', '2020-01-09 15:53:49'),
(400, 93, 'Twin Room AC', '2', '2 Single Beds', 'Captureh rygttter.jpg', 3465, '2020-01-12 11:12:52', '2020-01-12 11:12:52'),
(401, 93, 'Couple Room Non AC', '2', '1 Double Bed', 'Captureh             cbbbbbb.jpg', 1980, '2020-01-12 11:13:45', '2020-01-12 11:13:45'),
(402, 93, 'Royal Suite Room', '2', '2 Large Beds', 'Captureh rygttter.jpg', 5940, '2020-01-12 11:15:05', '2020-01-12 11:15:05'),
(403, 93, 'Family Room AC', '3', '1 Large Bed', 'Captureh h h h sh kjk.jpg', 2970, '2020-01-12 11:15:51', '2020-01-12 11:15:51'),
(404, 93, 'Deluxe Room AC', '2', '1 Double Bed', 'Captn hgh hhhhhhh ure.jpg', 2772, '2020-01-12 11:16:35', '2020-01-12 11:16:35'),
(405, 93, 'Family Room Non AC', '3', '1 Large Bed', 'Captureh h h h sh kjk.jpg', 2475, '2020-01-12 11:17:25', '2020-01-12 11:17:25');
INSERT INTO `hotel_details` (`id`, `hotel_id`, `room_category`, `person`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(406, 94, 'Deluxe Double Room AC', '2', '1 Double Beds', 'Captureaaaaaaaaaaaaaaaqqqqqqqqqqqqqqqqeeeeeeeeeeeeeee.jpg', 3273, '2020-01-12 11:22:53', '2020-01-12 11:24:40'),
(407, 94, 'Deluxe Twin Room AC', '2', '2 Single Beds', 'Captureetgyyt hhhhhhhhhhhhhhhhhh.jpg', 3740, '2020-01-12 11:23:50', '2020-01-12 11:23:50'),
(408, 94, 'Deluxe Family Room AC', '3', '1 Double Bed', 'Capture cgh ghfn hjyutrty vgthn.jpg', 4208, '2020-01-12 11:26:43', '2020-01-12 11:26:43'),
(409, 94, 'Deluxe Executive Room AC', '3', '2 Double Bed', 'Captureetgyyt hhhhhhhhhhhhhhhhhh.jpg', 4208, '2020-01-12 11:29:29', '2020-01-12 11:29:29'),
(410, 94, 'Economy Double Room', '2', '1 Double Bed', 'Captureaaaaaaaaaaaaaaaqqqqqqqqqqqqqqqqeeeeeeeeeeeeeee.jpg', 2338, '2020-01-12 11:30:25', '2020-01-12 11:30:25'),
(411, 94, 'Economy Twin Room', '2', '2 Single Bed', 'Capturee  erert tttttttttteeeeeeeeyt.jpg', 2805, '2020-01-12 11:31:10', '2020-01-12 11:31:10'),
(412, 94, 'Economy Family Room', '3', '1 Large Bed', 'Captureaaaaaaaaaaaaaaaqqqqqqqqqqqqqqqqeeeeeeeeeeeeeee.jpg', 3273, '2020-01-12 11:31:55', '2020-01-12 11:31:55'),
(413, 94, 'Economy Executive Room', '3', '1 Double Bed & 1 Single Bed', 'Capturee  erert tttttttttteeeeeeeeyt.jpg', 3273, '2020-01-12 11:33:04', '2020-01-12 11:33:04'),
(414, 95, 'Royal Deluxe', '2', '1 Double Bed', 'royal-deluxe-600x427.jpg', 4950, '2020-01-12 11:36:35', '2020-01-12 11:36:35'),
(415, 95, 'Executive Twin', '2', '2 Single Beds', 'executive twin-2-600x427.jpg', 4290, '2020-01-12 11:37:27', '2020-01-12 11:37:27'),
(416, 95, 'Permium Twin', '2', '2 Single Bed', 'premium-twin-600x427.jpg', 3960, '2020-01-12 11:38:31', '2020-01-12 11:38:31'),
(417, 95, 'Super Deluxe', '2', '1 Double Bed', 'super-deluxe1-600x427.jpg', 3300, '2020-01-12 11:39:17', '2020-01-12 11:39:17'),
(418, 95, 'Deluxe', '2', '1 Double Bed', 'deluxe1-600x427.jpg', 2640, '2020-01-12 11:39:55', '2020-01-12 11:39:55'),
(419, 96, 'VIP - 02', '6', '3 Double Beds', 'CapturehhsfhCapturesyryrtCapture.jpg', 9405, '2020-01-12 11:45:37', '2020-01-12 11:45:37'),
(420, 96, 'Family Bed', '3', '1 Large Bed', 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff.jpg', 3663, '2020-01-12 11:46:57', '2020-01-12 11:46:57'),
(421, 96, 'Executive Room', '3', '3 Single Beds', 'CapturehhsfhCapturesyryrtCapture.jpg', 3663, '2020-01-12 11:47:52', '2020-01-12 11:47:52'),
(422, 96, 'Twin Bed Room', '2', '2 Single Bed', 'CapturehhsfhCapturesyryrtCapture.jpg', 3218, '2020-01-12 11:48:35', '2020-01-12 11:48:35'),
(423, 96, 'Couple Room', '2', '1 Double Bed', 'Capturethhhs hfhfghdh yhtyyyyyyyyyyyyyyyyr.jpg', 2723, '2020-01-12 11:49:18', '2020-01-12 11:49:18'),
(424, 97, 'Suite Premium', '2', '1 Double Bed', 'Capturefddddddddsbbbbbbbbbbbbbbvc bvbnc gfd.jpg', 7480, '2020-01-12 11:58:00', '2020-01-12 11:58:00'),
(425, 97, 'Suite Only', '1', '1 Double Bed', 'srhjhdjsetwar.jpg', 5610, '2020-01-12 11:59:35', '2020-01-12 11:59:35'),
(426, 97, 'Couple', '2', '1 Double Bed', 'Capturefddddddddsbbbbbbbbbbbbbbvc bvbnc gfd.jpg', 2805, '2020-01-12 12:01:08', '2020-01-12 12:01:08'),
(427, 97, 'Family Room', '3', '1 Double Bed', 'dj.jpg', 3273, '2020-01-12 12:02:11', '2020-01-12 12:02:11'),
(428, 98, 'Couple Room Non AC', '2', '1 Double Bed', 'ghh.jpg', 1650, '2020-01-12 12:11:16', '2020-01-12 12:11:16'),
(429, 98, 'Couple Room AC', '2', '1 Double Bed', 'Capturereg.jpg', 1870, '2020-01-12 12:12:20', '2020-01-12 12:12:20'),
(430, 98, 'Family Room', '4', '2 Double Bed', 'Capturefhhhhhhhhhh.jpg', 2750, '2020-01-12 12:13:03', '2020-01-12 12:13:03'),
(431, 99, 'Standard Double Non AC', '2', '1 Double Bed', 'AF1QipNScc2_JhwLQD3WjcfNvMz9rJgpsd_RgRlVgLuR=s596-k-no.jpg', 2079, '2020-01-12 12:19:54', '2020-01-12 12:19:54'),
(432, 99, 'Double Non AC', '2', '1 Double Bed', 'AF1QipNbgIjZ_3o4lO_1HM2RjWu1hA09pPL8COxm_Fo0=s596-k-no.jpg', 1584, '2020-01-12 12:20:35', '2020-01-12 12:20:35'),
(433, 100, 'Regular Room', '3', '1 Double Bed & 1 Single Bed', 'Capture4543434bllllllllllllllllllllllll.jpg', 2475, '2020-01-12 12:30:25', '2020-01-12 12:30:25'),
(434, 100, 'Deluxe Room', '4', '2 Double Beds', 'Captureyru54.jpg', 2970, '2020-01-12 12:32:02', '2020-01-12 12:32:02'),
(435, 100, 'Super Deluxe', '4', '2 Double Beds', 'Capturehgkjb56465 5665.jpg', 3465, '2020-01-12 12:33:25', '2020-01-12 12:33:25'),
(436, 100, 'Executive Twin', '2', '2 Single Beds', 'Capture1263786bjfzfd.jpg', 4455, '2020-01-12 12:34:35', '2020-01-12 12:34:35'),
(437, 100, 'Royal Suite', '5', '1 Large Bed & 1 Double Bed', '633333333334ygfvyyyyyyyhg bjhnu.jpg', 6930, '2020-01-12 12:35:31', '2020-01-12 12:35:31'),
(438, 101, 'Double Room', '2', '1 Double Bed', 'Capture524354554 jhgb jb 87878.jpg', 3465, '2020-01-12 12:43:07', '2020-01-12 12:43:07'),
(439, 101, 'Couple Room', '2', '1 Double Bed', 'Captureeeeeeeettttttrrrrrrrrryuuuuussssss.jpg', 2475, '2020-01-12 12:44:30', '2020-01-12 12:44:30'),
(440, 101, 'Single Room', '1', '1 Single Bed', 'Capturtyuggghre.jpg', 1485, '2020-01-12 12:45:48', '2020-01-12 12:45:48'),
(441, 101, 'Family Room', '5', '2 Double Beds', 'Cappppppppppppppppppppppture.jpg', 3465, '2020-01-12 12:47:20', '2020-01-12 12:47:20'),
(442, 102, 'Gold Deluxe', '2', '1 Large Double Bed', 'sixseasonshotel-gold-deluxe.jpg', 14360, '2020-01-29 00:50:04', '2020-01-29 00:50:04'),
(443, 102, 'Diamond Deluxe', '2', '1 Large Double Bed', 'sixseasonshotel-diamond-deluxe-1.jpg', 16155, '2020-01-29 00:52:24', '2020-01-29 00:52:24'),
(444, 102, 'Junior Suite', '2', '1 Double Bed', 'sixseasonshotel-junior-suite.jpg', 22737, '2020-01-29 00:53:26', '2020-01-29 00:53:26'),
(445, 102, 'Royal Suite', '2', '1 Double Bed', 'sixseasonshotel-royal-suite.jpg', 23933, '2020-01-29 00:54:18', '2020-01-29 00:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_11_30_041115_create_hotels_table', 2),
(5, '2019_11_30_163319_create_hotel_details_table', 3),
(8, '2019_12_06_201405_create_orders_table', 4),
(10, '2019_12_09_075616_create_airs_table', 5),
(11, '2019_12_09_203546_create_admins_table', 6),
(12, '2019_12_30_154046_create_pick__drops_table', 7),
(14, '2019_12_30_203246_create_pick_drop_orders_table', 8),
(17, '2020_01_18_100147_create_holiday_packages_table', 9),
(18, '2020_01_18_100206_create_daytrips_table', 9),
(20, '2020_01_26_054207_create_resort_details_table', 10),
(21, '2020_01_26_060756_create_resorts_table', 11),
(22, '2020_02_14_153809_create_b2bs_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_room` int(11) NOT NULL,
  `check_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_out` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `votar_id` bigint(20) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pick_drop_orders`
--

CREATE TABLE `pick_drop_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_car` int(11) NOT NULL,
  `booking_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `votar_id` bigint(20) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pick_drop_orders`
--

INSERT INTO `pick_drop_orders` (`id`, `location`, `from`, `to`, `user_id`, `name`, `total_car`, `booking_date`, `number`, `votar_id`, `address`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Cox\'s Bazar', 'Cox\'s Bazar Airport', 'Laboni Sea Beach', 1, 'rrrrrrr', 44, '12/03/2019', 333333333, 33333, 'fffffffffffff', 1000, '2019-12-30 14:35:51', '2019-12-30 14:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `pick__drops`
--

CREATE TABLE `pick__drops` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pick__drops`
--

INSERT INTO `pick__drops` (`id`, `location`, `from`, `to`, `description`, `person`, `price`, `created_at`, `updated_at`) VALUES
(1, 'DHAKA', 'DHANMONDI', 'AIRPORT', 'COROLLA PRIVATE CAR', '4', 2000, '2020-01-14 14:33:08', '2020-01-14 14:33:08'),
(2, 'DHAKA', 'Dhaka Inter city', 'Hazrat Shahjalal International Airport', 'Hiace', '11', 3000, '2020-01-14 15:00:55', '2020-01-14 15:00:55'),
(3, 'DHAKA', 'Dhaka City', 'Comilla city', 'Private Car', '4', 3500, '2020-01-14 15:03:43', '2020-01-14 15:03:43'),
(4, 'DHAKA', 'Dhaka City', 'Comilla city', 'Hiace', '11', 4000, '2020-01-14 15:05:38', '2020-01-14 15:05:38'),
(5, 'DHAKA', 'Dhaka City', 'Chattogram City', 'Private Car', '4', 8000, '2020-01-14 15:08:12', '2020-01-14 15:08:12'),
(6, 'DHAKA', 'Dhaka City', 'Chattogram City', 'Hiace', '11', 10000, '2020-01-14 15:09:05', '2020-01-14 15:09:05'),
(7, 'DHAKA', 'Dhaka City', 'Sylhet City', 'Private Car', '4', 6000, '2020-01-14 15:10:37', '2020-01-14 15:10:37'),
(8, 'DHAKA', 'Dhaka City', 'Sylhet City', 'Hiace', '11', 7000, '2020-01-14 15:11:08', '2020-01-14 15:11:08'),
(9, 'CHATTOGRAM', 'Chattogram Inter City', 'Shah Amanat International Airport', 'Private Car', '4', 2500, '2020-01-14 15:16:19', '2020-01-14 15:16:19'),
(10, 'CHATTOGRAM', 'Chattogram Inter City', 'Shah Amanat International Airport', 'Hiace', '4', 3000, '2020-01-14 15:17:45', '2020-01-14 15:17:45'),
(11, 'CHATTOGRAM', 'Chattogram City', 'Dhaka', 'Private Car', '4', 8000, '2020-01-14 15:19:47', '2020-01-14 15:19:47'),
(12, 'CHATTOGRAM', 'Chattogram City', 'Dhaka', 'Hiace', '11', 10000, '2020-01-14 15:20:53', '2020-01-14 15:20:53'),
(13, 'CHATTOGRAM', 'Chattogram City', 'Cox\'s Bazar', 'Private car', '4', 6000, '2020-01-14 15:28:44', '2020-01-14 15:28:44'),
(14, 'CHATTOGRAM', 'Chattogram City', 'Cox\'s Bazar', 'Hiace', '11', 9500, '2020-01-14 15:30:22', '2020-01-14 15:30:22'),
(15, 'CUMILLA', 'Cumilla', 'Inter City', 'Private Car', '4', 2000, '2020-01-14 16:20:33', '2020-01-14 16:20:33'),
(16, 'CUMILLA', 'Cumilla', 'Inter City', 'Hi-ace', '11', 2500, '2020-01-14 16:21:24', '2020-01-14 16:21:24'),
(17, 'CUMILLA', 'Cumilla', 'Dhaka', 'Private Car', '4', 3500, '2020-01-14 16:22:09', '2020-01-14 16:22:09'),
(18, 'CUMILLA', 'Cumilla', 'Dhaka', 'Hi-ace', '11', 4000, '2020-01-14 16:22:40', '2020-01-14 16:22:40'),
(19, 'SYLHET', 'Sylhet', 'Bishnakandi, Ratargul', 'CNG', '4', 1500, '2020-01-14 16:25:06', '2020-01-14 16:25:06'),
(20, 'SYLHET', 'Sylhet', 'Bishnakandi, Ratargul, sadapathor', 'CNG', '4', 2000, '2020-01-14 16:25:44', '2020-01-14 16:25:44'),
(21, 'SYLHET', 'Sylhet', 'Jaflong', 'CNG', '4', 2500, '2020-01-14 16:26:19', '2020-01-14 16:26:19'),
(22, 'BARISAL', 'Barisal', 'Airport/ Inter City', 'Private Car', '4', 1500, '2020-01-14 16:42:38', '2020-01-14 16:42:38'),
(23, 'BARISAL', 'Barisal', 'Airport/ Inter City', 'Hi-ace', '11', 2000, '2020-01-14 16:43:15', '2020-01-14 16:43:15'),
(24, 'BARISAL', 'Barisal', 'Kuakata', 'Private Car', '4', 5000, '2020-01-14 16:44:53', '2020-01-14 16:44:53'),
(25, 'BARISAL', 'Barisal', 'Kuakata', 'Hi-ace', '11', 7000, '2020-01-14 16:45:23', '2020-01-14 16:45:23'),
(26, 'BARISAL', 'Barisal', 'Tourist Spot', 'Private Car', '4', 2000, '2020-01-14 16:46:24', '2020-01-14 16:46:24'),
(27, 'BARISAL', 'Barisal', 'Tourist Spot', 'Hi-ace', '11', 2500, '2020-01-14 16:46:50', '2020-01-14 16:46:50'),
(28, 'BANDARBAN', 'Bandarban', 'Nilachol, Meghla, Sorno Mondir, Soylo Propat', 'Chader Gari', '15', 3000, '2020-01-14 16:48:54', '2020-01-14 16:48:54'),
(29, 'BANDARBAN', 'Bandarban', 'Nilgiri, Chimbuk Pahar,Soylo Propat', 'Chader Gari', '15', 4000, '2020-01-14 16:49:42', '2020-01-14 16:49:42'),
(30, 'BANDARBAN', 'Bandarban', 'Ruma Bazar', 'Chader Gari', '15', 4000, '2020-01-14 16:50:42', '2020-01-14 16:50:42'),
(31, 'BANDARBAN', 'Bandarban', 'Thanchi', 'Chader Gari', '15', 6000, '2020-01-14 16:51:14', '2020-01-14 16:51:14'),
(32, 'BANDARBAN', 'Bandarban', 'Boli Para, Nil Diganto', 'Chader Gari', '15', 5000, '2020-01-14 16:52:01', '2020-01-14 16:52:01'),
(33, 'SREEMANGAL', 'Sreemangal', 'Ham Ham Jhorna', 'Chader Gari', '15', 4000, '2020-01-14 16:53:09', '2020-01-14 16:53:09'),
(34, 'SREEMANGAL', 'Sreemangal', 'Madhabpur Lake, Lawachhara National Park, Tea Garden', 'Chader Gari', '15', 2500, '2020-01-14 16:54:12', '2020-01-14 16:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `resorts`
--

CREATE TABLE `resorts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` double(8,2) NOT NULL DEFAULT 5.00,
  `price_range` int(11) NOT NULL,
  `star` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resorts`
--

INSERT INTO `resorts` (`id`, `title`, `Location`, `description`, `address`, `image`, `review`, `price_range`, `star`, `created_at`, `updated_at`) VALUES
(1, 'r', 'r', 'r', 'r', 'back1.jpg', 5.00, 4, '4', '2020-01-26 00:10:45', '2020-01-26 00:10:45'),
(2, 'yooooo', 'r', 'r', 'r', 'cover5.jpg', 5.00, 544, '5', '2020-01-26 02:08:02', '2020-01-26 02:08:02'),
(3, 'La Riveria Resort & Park', 'DHAKA', 'La Riveria Resort is located at the bank of Shitalakshya River just 5 minutes drive from Kancon Bridge, Purbachol. We are designed to provide a unique riverside experience to the Dhaka people. Book your riverside experience with premium resort service near Dhaka!', 'Beside Kanchon Bridge, Purbachal, Dhaka', '84553878_510659306122545_2827728956411609088_o.jpg', 5.00, 5150, '3', '2020-01-28 00:21:52', '2020-01-28 00:21:52'),
(4, 'la Riviera Resort & Park', 'DHAKA', 'La Riveria Resort is located at the bank of Shitalakshya River just 5 minutes drive from Kancon Bridge, Purbachol. We are designed to provide a unique riverside experience to the Dhaka people. Book your riverside experience with premium resort service near Dhaka!', 'Near Kanchan Bridge, Purbachal, Dhaka', '84553878_510659306122545_2827728956411609088_o.jpg', 5.00, 5150, '3', '2020-01-28 00:26:31', '2020-01-28 00:26:31'),
(5, 'Jol O Jongoler Kabbo', 'DHAKA', 'Jol O Jongoler Kabbo is a Green Resort in Pubail, Gazipur. It is not like other traditional resort or day-out centre with artificial structure or colourful monuments.\r\nHere nature speaks!. If you wish to feel as if you are at your Grandpa’s house in some village, Jol O Jongoler Kabbo is fit for you. A group of villagers work here. They are ready to welcome you with Sharbats, Pithas, Local Foods, Chatnis etc. on locally arranged mats for relaxing in bamboo-built sheds.', 'Pilot Bari, Demurpara, Pubail, Joydevpur-Pubail Road, Gazipur-7800, Bangladesh', 'JOJK_Slider_002.jpg', 5.00, 2000, '3', '2020-01-28 00:33:01', '2020-01-28 00:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `resort_details`
--

CREATE TABLE `resort_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `resort_id` int(10) UNSIGNED NOT NULL,
  `package_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resort_details`
--

INSERT INTO `resort_details` (`id`, `resort_id`, `package_category`, `person`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 't', '5', 't', 'back1.jpg', 5, '2020-01-26 00:39:23', '2020-01-26 00:39:23'),
(2, 1, 'rr', '4', 'rr', 'comsetics.jpg', 2, '2020-01-26 01:44:20', '2020-01-26 01:44:20'),
(3, 2, 'y', '5', 'y', 'website design-01.jpg', 5, '2020-01-26 02:08:52', '2020-01-26 02:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tashriful Islam', 't@gmail.com', NULL, '$2y$10$FvjCzQSDK5gHp8WUVzNY5Op4wN71K3rCjoVaYp7lpdfgUl1qaVNq2', 'XLZjQMqKeD28RutMwLT6MTdg1cb5ZMrXa0z1BkkexAkWswHF9gAjhVRVFu1T', '2019-12-06 09:27:55', '2019-12-06 09:27:55'),
(2, 'ZUBAER KAYES', 'kayeszubaer@gmail.com', NULL, '$2y$10$oJqxeB1hp9jdEgeIBo7yNOVHR5cm.aZBboWCoQHsagOoY.a3QG4BK', NULL, '2019-12-30 21:13:53', '2019-12-30 21:13:53'),
(3, 'Imam Hossain', 'imam.moon11@gmail.com', NULL, '$2y$10$r6Ndl125dpfQhKjN2AES9eOMmlEKfo6sItkJZABfbYCcjw2nUCfzW', NULL, '2019-12-31 04:02:00', '2019-12-31 04:02:00'),
(4, 'Naznin', 'nazninkhan784@gmail.com', NULL, '$2y$10$nyPD0TDkKO08hKg6eDCMJexqIPuHDqI9cYXhqB4NFm.tTvHvpV1fK', NULL, '2020-01-01 00:50:48', '2020-01-01 00:50:48'),
(5, 'uy', 'r@gmail.com', NULL, '$2y$10$.xMhMfS8btWn7Ec6PrnFSeP/XqJkz.UF1CRvIl3MBfHvnkE6dgx.y', NULL, '2020-01-01 03:02:33', '2020-01-01 03:02:33'),
(6, 'Tashriful Islam khan niloy', 'tr@gmail.com', NULL, '$2y$10$uEbHk.oAN/coFJ31fKR2YOPB2Ns6mTv/5.yRHI49Jop65bXift8Ua', NULL, '2020-01-01 04:22:13', '2020-01-01 04:22:13'),
(7, 'Miss Casper Brekke', 'cdomingueza@hotmail.com', NULL, '$2y$10$/oprkXzxdb8zRfE84a64hOyy3cQV9ZNlhJJCZnwbFrixt86YgnBtm', NULL, '2020-06-11 21:21:18', '2020-06-11 21:21:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `airs`
--
ALTER TABLE `airs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b2bs`
--
ALTER TABLE `b2bs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `b2bs_email_unique` (`email`),
  ADD UNIQUE KEY `b2bs_username_unique` (`username`);

--
-- Indexes for table `daytrips`
--
ALTER TABLE `daytrips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday_packages`
--
ALTER TABLE `holiday_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_details`
--
ALTER TABLE `hotel_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pick_drop_orders`
--
ALTER TABLE `pick_drop_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pick__drops`
--
ALTER TABLE `pick__drops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resorts`
--
ALTER TABLE `resorts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resort_details`
--
ALTER TABLE `resort_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `airs`
--
ALTER TABLE `airs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `b2bs`
--
ALTER TABLE `b2bs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daytrips`
--
ALTER TABLE `daytrips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `holiday_packages`
--
ALTER TABLE `holiday_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `hotel_details`
--
ALTER TABLE `hotel_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pick_drop_orders`
--
ALTER TABLE `pick_drop_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pick__drops`
--
ALTER TABLE `pick__drops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `resorts`
--
ALTER TABLE `resorts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resort_details`
--
ALTER TABLE `resort_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
