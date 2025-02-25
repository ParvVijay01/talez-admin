-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2023 at 10:44 AM
-- Server version: 10.6.13-MariaDB
-- PHP Version: 8.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
set sql_require_primary_key = off;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_hexacom_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`) VALUES
(11, 'admin', 'panel', '0xxxxxxxxxxxx', 'admin@admin.com', NULL, '$2a$12$tjNvgqKdKHG4VzRR/I7.Ke6Hetnc3d6LlhJV9hGSaksnjMT8fV4fy', 'PrQOHsqM288esPgXqLOfF7sbBeH7uyb2LRHaeTVS53qvGr4EC3a7PQ7DMp2j', NULL, '2023-06-22 16:41:36', 'f7e4i4iEcKPaY1aqps1mRw:APA91bGjzNE9v3gZPIYgnfLEnDfvVDr2ojxy2DeyGg-LBPwHdaVG1d2tAxrpR6Ooa37jOuugGeP3GS2NFKMGTsXewHvX8cwrsa_ysr3LcdqLL670ASQOR3V6NU1Mk-XvQyhKSr_6ihdd');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2021-01-02 12:10:03', '2021-01-02 12:10:03'),
(2, 'Shape', '2021-01-02 12:10:49', '2021-01-02 12:10:49'),
(3, 'Weight', '2021-01-02 16:41:53', '2021-01-02 16:41:53'),
(4, 'Color', '2021-03-11 11:32:22', '2021-03-11 11:32:22'),
(5, 'Tipos', '2021-03-23 02:12:52', '2021-03-23 02:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `product_id`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'shoe', '2021-03-13-604c89e04767a.png', 2, 0, '2021-03-11 11:32:06', '2023-06-22 12:34:42', NULL),
(3, 'Casual Sports Shoes', '2021-03-11-604a188328abd.png', 19, 0, '2021-03-11 13:17:55', '2023-06-22 12:34:42', NULL),
(7, 'Banner 1', '2023-06-22-649419e3c72cd.png', 7, 1, '2023-06-22 15:39:53', '2023-06-22 15:52:35', NULL),
(8, 'Banner 2', '2023-06-22-6494170038d7c.png', NULL, 1, '2023-06-22 15:40:16', '2023-06-22 15:40:16', 27),
(9, 'Banner 3', '2023-06-22-6494171289053.png', 22, 1, '2023-06-22 15:40:34', '2023-06-22 15:40:34', NULL),
(10, 'Banner 4', '2023-06-22-649417ce72e73.png', NULL, 1, '2023-06-22 15:43:42', '2023-06-22 15:43:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coverage` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `restaurant_id`, `name`, `email`, `password`, `latitude`, `longitude`, `address`, `status`, `created_at`, `updated_at`, `coverage`, `remember_token`, `image`, `phone`) VALUES
(1, NULL, 'Main Branch', 'mainb@mainb.com', '$2y$10$S1EK4VV.uje5arb2xmlrLeVWVVfCV9O14rLN8Ncpz2.t1ywV2k/NK', '23.7807777', '90.3492345', '1', 1, '2021-02-24 09:45:49', '2021-03-14 06:22:25', 40075, NULL, NULL, NULL),
(10, NULL, 'DC store', 'mhrhabib73@gmail.com', '$2y$10$EJtKTltBwBSswPextqEWDuFgMKRg733CdQ2RKaGdicEKcem9Tx/Gq', '23.7662', '90.3589', 'Limited 2 mohammodpur', 1, '2021-03-21 10:59:59', '2021-03-23 02:52:31', 40075, NULL, NULL, NULL),
(11, NULL, 'Farmgate', 'farmgate@gmail.com', '$2y$10$TN/ahWbuYTICHkdAHAnbFOm/7sLzdHA4/Ul0MTEJZxuRjFaHkIs6q', '23.7584406', '90.3879827', 'Farmgate, Dhaka', 1, '2021-10-13 04:15:25', '2021-10-13 04:15:25', 40075, NULL, NULL, NULL),
(12, NULL, 'Dakshinkhan', 'dakshinkhan@gmailcom', '$2y$10$EmfNZSmqMW2hLJMB3qU7nuba1.LtgQ.YUrvC9xP6cvBDI9.uNiJ/a', '23.859581', '90.4122446', 'Dhaka', 1, '2021-10-13 04:22:38', '2021-10-13 04:22:38', 40075, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'self_pickup', '1', '2021-01-06 05:55:51', '2021-01-06 05:55:51'),
(3, 'restaurant_name', 'Hexacom', NULL, NULL),
(4, 'currency', 'USD', NULL, NULL),
(5, 'logo', '2022-03-14-622f25624a5b2.png', NULL, NULL),
(6, 'mail_config', '{\"status\":1,\"name\":\"Hexacom\",\"host\":\"mail.sixamtech.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"demo@sixamtech.com\",\"email_id\":\"demo@sixamtech.com\",\"encryption\":\"tls\",\"password\":\"6am0258\"}', NULL, '2023-06-22 16:25:58'),
(7, 'delivery_charge', '10', NULL, NULL),
(8, 'ssl_commerz_payment', '{\"status\":\"1\",\"store_id\":\"custo5cc042f7abf4c\",\"store_password\":\"custo5cc042f7abf4c@ssl\"}', NULL, '2021-01-21 14:47:38'),
(9, 'paypal', '{\"status\":\"1\",\"paypal_client_id\":\"AabIbRZ97J0GHt0xf_DJj3u1dp6MU9boJGwnRY7OZ6fqBJVsrxd7PaBqqi6OGTYe2e4N4dWkYOkFSNtM\",\"paypal_secret\":\"EIeb5GszxCqanj964p4HYBQ5HMx6TwUGedqY6zdfJqlV-TQMF-cgIP2kZP6d_ZgbS3qjiVJxQH1X6wPt\"}', NULL, '2021-03-01 11:43:35'),
(10, 'stripe', '{\"status\":\"1\",\"api_key\":\"sk_test_4eC39HqLyjWDarjtT1zdp7dc\",\"published_key\":\"pk_test_TYooMQauvdEDq54NiTphI7jx\"}', NULL, NULL),
(11, 'phone', '+123000000000', NULL, NULL),
(13, 'footer_text', 'copyright © 2022, Hexacom', NULL, NULL),
(14, 'address', 'House-00, Road-00, City', NULL, NULL),
(15, 'email_address', 'support@6amtech.com', NULL, NULL),
(16, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2021-02-11 18:39:36'),
(17, 'email_verification', '0', NULL, NULL),
(18, 'digital_payment', '{\"status\":\"1\"}', '2021-01-30 19:38:54', '2021-01-30 19:38:58'),
(19, 'terms_and_conditions', '<p>This is a test Teams &amp; Conditions<br />\r\n<br />\r\nThese terms of use (the &quot;Terms of Use&quot;) govern your use of our website emarket.6amtech.com(the &quot;Website&quot;) and our &quot;emarket&quot; application for mobile and handheld devices (the &quot;App&quot;). The Website and the App are jointly referred to as the &quot;Platform&quot;. Please read these Terms of Use carefully before you use the services. If you do not agree to these Terms of Use, you may not use the services on the Platform, and we request you to uninstall the App. By installing, downloading and/or even merely using the Platform, you shall be contracting with emarket and you provide your acceptance to the Terms of Use and other emarket policies (including but not limited to the Cancellation &amp; Refund Policy, Privacy Policy etc.) as posted on the Platform from time to time, which takes effect on the date on which you download, install or use the Services, and create a legally binding arrangement to abide by the same. The Platforms will be used by (i) natural persons who have reached 18 years of age and (ii) corporate legal entities, e.g companies. Where applicable, these Terms shall be subject to country-specific provisions as set out herein.</p>\r\n\r\n<h3>USE OF PLATFORM AND SERVICES</h3>\r\n\r\n<p>All commercial/contractual terms are offered by and agreed to between Buyers and Merchants alone. The commercial/contractual terms include without limitation to price, taxes, shipping costs, payment methods, payment terms, date, period and mode of delivery, warranties related to products and services and after sales services related to products and services. emarket does not have any kind of control or does not determine or advise or in any way involve itself in the offering or acceptance of such commercial/contractual terms between the Buyers and Merchants. emarket may, however, offer support services to Merchants in respect to order fulfilment, payment collection, call centre, and other services, pursuant to independent contracts executed by it with the Merchants. eFood is not responsible for any non-performance or breach of any contract entered into between Buyers and Merchants on the Platform. eFood cannot and does not guarantee that the concerned Buyers and/or Merchants shall perform any transaction concluded on the Platform. eFood is not responsible for unsatisfactory services or non-performance of services or damages or delays as a result of products which are out of stock, unavailable or back ordered.</p>\r\n\r\n<p>emarket&nbsp;is operating an e-commerce platform and assumes and operates the role of facilitator, and does not at any point of time during any transaction between Buyer and Merchant on the Platform come into or take possession of any of the products or services offered by Merchant. At no time shall StackFood hold any right, title or interest over the products nor shall StackFood have any obligations or liabilities in respect of such contract entered into between Buyer and Merchant. You agree and acknowledge that we shall not be responsible for:</p>\r\n\r\n<ul>\r\n	<li>The goods provided by the shops or restaurants including, but not limited, serving of food orders suiting your requirements and needs;</li>\r\n	<li>The Merchant&quot;s goods not being up to your expectations or leading to any loss, harm or damage to you;</li>\r\n	<li>The availability or unavailability of certain items on the menu;</li>\r\n	<li>The Merchant serving the incorrect orders.</li>\r\n</ul>\r\n\r\n<p>The details of the menu and price list available on the Platform are based on the information provided by the Merchants and we shall not be responsible for any change or cancellation or unavailability. All Menu &amp; Food Images used on our platforms are only representative and shall/might not match with the actual Menu/Food Ordered, emarket shall not be responsible or Liable for any discrepancies or variations on this aspect.</p>\r\n\r\n<h3>Personal Information that you provide</h3>\r\n\r\n<p>If you want to use our service, you must create an account on our Site. To establish your account, we will ask for personally identifiable information that can be used to contact or identify you, which may include your name, phone number, and e-mail address. We may also collect demographic information about you, such as your zip code, and allow you to submit additional information that will be part of your profile. Other than basic information that we need to establish your account, it will be up to you to decide how much information to share as part of your profile. We encourage you to think carefully about the information that you share and we recommend that you guard your identity and your sensitive information. Of course, you can review and revise your profile at any time.</p>\r\n\r\n<p>You understand that delivery periods quoted to you at the time of confirming the order is an approximate estimate and may vary. We shall not be responsible for any delay in the delivery of your order due to the delay at seller/merchant end for order processing or any other unavoidable circumstances.</p>\r\n\r\n<p>Your order shall be only delivered to the address designated by you at the time of placing the order on the Platform. We reserve the right to cancel the order, in our sole discretion, in the event of any change to the place of delivery and you shall not be entitled to any refund for the same. Delivery in the event of change of the delivery location shall be at our sole discretion and reserve the right to charge with additional delivery fee if required.</p>\r\n\r\n<p>You shall undertake to provide adequate directions, information and authorizations to accept delivery. In the event of any failure to accept delivery, failure to deliver within the estimated time due to your failure to provide appropriate instructions, or authorizations, then such goods shall be deemed to have been delivered to you and all risk and responsibility in relation to such goods shall pass to you and you shall not be entitled to any refund for the same. Our decision in relation to this shall be final and binding. You understand that our liability ends once your order has been delivered to you.</p>\r\n\r\n<p>You might be required to provide your credit or debit card details to the approved payment gateways while making the payment. In this regard, you agree to provide correct and accurate credit/ debit card details to the approved payment gateways for availing the Services. You shall not use the credit/ debit card which is not lawfully owned by you, i.e. in any transaction, you must use your own credit/ debit card. The information provided by you shall not be utilized or shared with any third party unless required in relation to fraud verifications or by law, regulation or court order. You shall be solely responsible for the security and confidentiality of your credit/ debit card details. We expressly disclaim all liabilities that may arise as a consequence of any unauthorized use of your credit/ debit card. You agree that the Services shall be provided by us only during the working hours of the relevant Merchants.</p>\r\n\r\n<h3>ACTIVITIES PROHIBITED ON THE PLATFORM</h3>\r\n\r\n<p>The following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. StackFood reserves the right to investigate and take appropriate legal action/s against anyone who, in StackFood sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:</p>\r\n\r\n<ul>\r\n	<li>Using the Websites for any purpose in violation of laws or regulations;</li>\r\n	<li>Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;</li>\r\n	<li>Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by StackFood in its sole discretion or pursuant to local community standards;</li>\r\n	<li>Posting Content that constitutes cyber-bullying, as determined by StackFood in its sole discretion;</li>\r\n	<li>Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;</li>\r\n	<li>Posting telephone numbers, street addresses, or last names of any person;</li>\r\n	<li>Posting URLs to external websites or any form of HTML or programming code;</li>\r\n	<li>Posting anything that may be &quot;spam,&quot; as determined by StackFood in its sole discretion;</li>\r\n	<li>Impersonating another person when posting Content;</li>\r\n	<li>Harvesting or otherwise collecting information about others, including email addresses, without their consent;</li>\r\n	<li>Allowing any other person or entity to use your identification for posting or viewing comments;</li>\r\n	<li>Harassing, threatening, stalking, or abusing any person;</li>\r\n	<li>Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of StackFood , exposes eFood or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or</li>\r\n	<li>Encouraging other people to engage in any prohibited activities as described herein.</li>\r\n</ul>\r\n\r\n<p>StackFood&nbsp;reserves the right but is not obligated to do any or all of the following:</p>\r\n\r\n<ul>\r\n	<li>Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;</li>\r\n	<li>Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;</li>\r\n	<li>Terminate a user&#39;s access to the Websites upon any breach of these Terms of Use;</li>\r\n	<li>Monitor, edit, or disclose any Content on the Websites; and</li>\r\n	<li>Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.</li>\r\n</ul>\r\n\r\n<h3>AMENDMENTS</h3>\r\n\r\n<p>StackFood&nbsp;reserves the right to change or modify these Terms (including our policies which are incorporated into these Terms) at any time by posting changes on the Platform. You are strongly recommended to read these Terms regularly. You will be deemed to have agreed to the amended Terms by your continued use of the Platforms following the date on which the amended Terms are posted.</p>\r\n\r\n<h3>PAYMENT</h3>\r\n\r\n<p>StackFood&nbsp;reserves the right to offer additional payment methods and/or remove existing payment methods at any time in its sole discretion. If you choose to pay using an online payment method, the payment shall be processed by our third party payment service provider(s). With your consent, your credit card / payment information will be stored with our third party payment service provider(s) for future orders. StackFood does not store your credit card or payment information. You must ensure that you have sufficient funds on your credit and debit card to fulfil payment of an Order. Insofar as required, StackFood takes responsibility for payments made on our Platforms including refunds, chargebacks, cancellations and dispute resolution, provided if reasonable and justifiable and in accordance with these Terms.</p>\r\n\r\n<h3>CANCELLATION</h3>\r\n\r\n<p>StackFood&nbsp;can cancel any order anytime due to the foods/products unavailability, out of coverage area and any other unavoidable circumstances.</p>', NULL, '2022-03-14 06:57:13'),
(20, 'fcm_topic', '', NULL, NULL),
(21, 'fcm_project_id', '3f34f34', NULL, NULL),
(22, 'push_notification_key', 'AAAAI0t6wG4:APA91bHwgwVOZQODKQB6GA4ZTMrNaUw0j5cxwhoF_jTxmJaxKRvyGgtticYcmD2gcT63uzw4Kr9RrHa2It2pNHP6Dl28vQFuvUc2tWy-FNJQz6_n5xR3ufy-k8B63WAtEbr9mX9rklgg', NULL, NULL),
(24, 'order_pending_message', '{\"status\":1,\"message\":\"Your order has been placed successfully.\"}', NULL, NULL),
(25, 'order_processing_message', '{\"status\":1,\"message\":\"Your order is going to the cook\"}', NULL, NULL),
(26, 'out_for_delivery_message', '{\"status\":0,\"message\":\"Order out for delivery.\"}', NULL, NULL),
(27, 'order_delivered_message', '{\"status\":1,\"message\":\"delivered\"}', NULL, NULL),
(28, 'delivery_boy_assign_message', '{\"status\":1,\"message\":\"boy assigned\"}', NULL, NULL),
(29, 'delivery_boy_start_message', '{\"status\":1,\"message\":\"start delivery\"}', NULL, NULL),
(30, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":\"boy delivered\"}', NULL, NULL),
(32, 'order_confirmation_msg', '{\"status\":1,\"message\":\"Your order has been confirmed.\"}', NULL, NULL),
(33, 'razor_pay', '{\"status\":\"1\",\"razor_key\":\"rzp_test_Vio27YvAonerHa\",\"razor_secret\":\"92BIuLdPAkDYx7Bbc9IzqSES\"}', '2021-02-14 10:15:12', '2021-02-14 12:36:37'),
(34, 'location_coverage', '{\"status\":1,\"longitude\":\"91.410747\",\"latitude\":\"22.986282\",\"coverage\":\"20\"}', NULL, NULL),
(35, 'minimum_order_value', '50', NULL, NULL),
(36, 'point_per_currency', NULL, NULL, NULL),
(37, 'language', '[\"en\",\"ar\"]', NULL, NULL),
(38, 'time_zone', 'Asia/Dhaka', NULL, NULL),
(39, 'internal_point', '{\"status\":\"1\"}', NULL, '2021-11-21 19:01:25'),
(40, 'senang_pay', '{\"status\":\"1\",\"secret_key\":\"3480-592\",\"merchant_id\":\"195161898510584\"}', NULL, NULL),
(41, 'paystack', '{\"status\":\"1\",\"publicKey\":\"pk_test_984c15fc89e28647c149e49654c69475ef565eaf\",\"secretKey\":\"sk_test_77556985d455a0fd326da6662273ad1c3eb8f097\",\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":\"showrov2185@gmail.com\"}', NULL, NULL),
(42, 'privacy_policy', '<h2>This is a Demo Privacy Policy</h2>\r\n\r\n<p>This policy explains how Hexacom website and related applications (the &ldquo;Site&rdquo;, &ldquo;we&rdquo; or &ldquo;us&rdquo;) collects, uses, shares and protects the personal information that we collect through this site or different channels. Hexacom has established the site to link up the users who need foods or grocery items to be shipped or delivered by the riders from the affiliated restaurants or shops to the desired location. This policy also applies to any mobile applications that we develop for use with our services on the Site, and references to this &ldquo;Site&rdquo;, &ldquo;we&rdquo; or &ldquo;us&rdquo; is intended to also include these mobile applications. Please read below to learn more about our information policies. By using this Site, you agree to these policies.</p>\r\n\r\n<h2>How the Information is collected</h2>\r\n\r\n<h3>Information provided by web browser</h3>\r\n\r\n<p>You have to provide us with personal information like your name, contact no, mailing address and email id, our app will also fetch your location information in order to give you the best service. Like many other websites, we may record information that your web browser routinely shares, such as your browser type, browser language, software and hardware attributes, the date and time of your visit, the web page from which you came, your Internet Protocol address and the geographic location associated with that address, the pages on this Site that you visit and the time you spent on those pages. This will generally be anonymous data that we collect on an aggregate basis.</p>\r\n\r\n<h3>Personal Information that you provide</h3>\r\n\r\n<p>If you want to use our service, you must create an account on our Site. To establish your account, we will ask for personally identifiable information that can be used to contact or identify you, which may include your name, phone number, and e-mail address. We may also collect demographic information about you, such as your zip code, and allow you to submit additional information that will be part of your profile. Other than basic information that we need to establish your account, it will be up to you to decide how much information to share as part of your profile. We encourage you to think carefully about the information that you share and we recommend that you guard your identity and your sensitive information. Of course, you can review and revise your profile at any time.</p>\r\n\r\n<h3>Payment Information</h3>\r\n\r\n<p>To make the payment online for availing our services, you have to provide the bank account, mobile financial service (MFS), debit card, credit card information to the Hexacom platform.</p>\r\n\r\n<h2>How the Information is collected</h2>\r\n\r\n<h3>Session and Persistent Cookies</h3>\r\n\r\n<p>Cookies are small text files that are placed on your computer by websites that you visit. They are widely used in order to make websites work, or work more efficiently, as well as to provide information to the owners of the site. As is commonly done on websites, we may use cookies and similar technology to keep track of our users and the services they have elected. We use both &ldquo;session&rdquo; and &ldquo;persistent&rdquo; cookies. Session cookies are deleted after you leave our website and when you close your browser. We use data collected with session cookies to enable certain features on our Site, to help us understand how users interact with our Site, and to monitor at an aggregate level Site usage and web traffic routing. We may allow business partners who provide services to our Site to place cookies on your computer that assist us in analyzing usage data. We do not allow these business partners to collect your personal information from our website except as may be necessary for the services that they provide.</p>\r\n\r\n<h3>Web Beacons</h3>\r\n\r\n<p>We may also use web beacons or similar technology to help us track the effectiveness of our communications.</p>\r\n\r\n<h3>Advertising Cookies</h3>\r\n\r\n<p>We may use third parties, such as Google, to serve ads about our website over the internet. These third parties may use cookies to identify ads that may be relevant to your interest (for example, based on your recent visit to our website), to limit the number of times that you see an ad, and to measure the effectiveness of the ads.</p>\r\n\r\n<h3>Google Analytics</h3>\r\n\r\n<p>We may also use Google Analytics or a similar service to gather statistical information about the visitors to this Site and how they use the Site. This, also, is done on an anonymous basis. We will not try to associate anonymous data with your personally identifiable data. If you would like to learn more about Google Analytics, please click here.</p>', NULL, '2022-07-31 06:14:33'),
(43, 'about_us', '<p>Lorem <strong>ipsum </strong>dolor sit amet, <em><strong>consectetur </strong></em>adipiscing elit. <em>Cras </em>dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, <a href=\"http://google.com\">suscipit </a>metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.</p>\r\n\r\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.</p>\r\n\r\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.</p>\r\n\r\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.</p>\r\n\r\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.</p>\r\n\r\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.</p>\r\n\r\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.</p>\r\n\r\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.</p>\r\n\r\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.</p>\r\n\r\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.</p>\r\n\r\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.</p>\r\n\r\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.</p>\r\n\r\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.</p>\r\n\r\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.</p>\r\n\r\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.</p>\r\n\r\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.</p>\r\n\r\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.</p>', NULL, '2022-03-14 06:59:50'),
(44, 'phone_verification', '0', NULL, NULL),
(45, 'msg91_sms', '{\"status\":0,\"template_id\":null,\"authkey\":null}', NULL, NULL),
(46, '2factor_sms', '{\"status\":\"0\",\"api_key\":null}', NULL, NULL),
(47, 'nexmo_sms', '{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":null}', NULL, NULL),
(48, 'twilio_sms', '{\"status\":0,\"sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', NULL, NULL),
(49, 'currency_symbol_position', 'right', NULL, NULL),
(50, 'maintenance_mode', '0', NULL, NULL),
(54, 'pagination_limit', '50', NULL, NULL),
(55, 'map_api_key', 'AIzaSyC0RWOWDiPKltQrwHZOEvi_Jjz7Sok5zqE', NULL, NULL),
(56, 'delivery_management', '{\"status\":\"1\",\"min_shipping_charge\":\"10\",\"shipping_per_km\":\"2\"}', NULL, NULL),
(57, 'bkash', '{\"status\":\"1\",\"api_key\":null,\"api_secret\":null,\"username\":null,\"password\":null}', NULL, NULL),
(58, 'paymob', '{\"status\":\"1\",\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', NULL, NULL),
(59, 'mercadopago', '{\"status\":\"1\",\"public_key\":null,\"access_token\":null}', NULL, NULL),
(60, 'flutterwave', '{\"status\":\"1\",\"public_key\":null,\"secret_key\":null,\"hash\":null}', NULL, NULL),
(61, 'play_store_config', '{\"status\":\"1\",\"link\":\"https:\\/\\/drive.google.com\\/file\\/d\\/1fLpvnQAe3_8sJGO5zZhFP7EUqfLrEEG2\\/view?usp=sharing\",\"min_version\":\"2\"}', NULL, NULL),
(62, 'app_store_config', '{\"status\":\"1\",\"link\":\"https:\\/\\/drive.google.com\\/file\\/d\\/1hsv_KffDsKAHtFaHFXTACYEiBsJaaRce\\/view?usp=sharing\",\"min_version\":\"2\"}', NULL, NULL),
(63, 'recaptcha', '{\"status\":1,\"site_key\":\"6LfMARoeAAAAAAITvA-le6X9IElSWX6CncicwEfY\",\"secret_key\":\"6LfMARoeAAAAAPGKiJpsD-TsFk-2nqoqUNSyntW4\"}', '2023-06-22 16:27:19', '2023-06-22 16:27:19'),
(64, 'firebase_message_config', '{\"apiKey\":\"AIzaSyBRobgZqIC-dFsr05MzxUQXxQITjKpnDH0\",\"authDomain\":\"emarket-e420c.firebaseapp.com\",\"projectId\":\"emarket-e420c\",\"storageBucket\":\"emarket-e420c.appspot.com\",\"messagingSenderId\":\"151590191214\",\"appId\":\"1:151590191214:web:4e7582ed290b4f60a5667f\"}', '2022-03-12 21:06:04', '2022-03-12 21:06:04'),
(65, 'country', 'BD', NULL, NULL),
(66, 'return_page', '{\"status\":1,\"content\":\"<h1><strong>This is demo return policy<\\/strong><\\/h1>\\r\\n\\r\\n<p>Lorem <strong>ipsum <\\/strong>dolor sit amet, <em><strong>consectetur <\\/strong><\\/em>adipiscing elit. <em>Cras <\\/em>dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\"}', '2022-07-31 06:17:56', '2022-07-31 06:17:56');
INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(67, 'refund_page', '{\"status\":1,\"content\":\"<h1><strong>This is demo refund policy<\\/strong><\\/h1>\\r\\n\\r\\n<p>Lorem <strong>ipsum <\\/strong>dolor sit amet, <em><strong>consectetur <\\/strong><\\/em>adipiscing elit. <em>Cras <\\/em>dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\"}', '2022-07-31 06:18:08', '2022-07-31 06:18:08'),
(68, 'cancellation_page', '{\"status\":1,\"content\":\"<h1><strong>This is demo cancellation policy<\\/strong><\\/h1>\\r\\n\\r\\n<p>Lorem <strong>ipsum <\\/strong>dolor sit amet, <em><strong>consectetur <\\/strong><\\/em>adipiscing elit. <em>Cras <\\/em>dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.<\\/p>\\r\\n\\r\\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.<\\/p>\\r\\n\\r\\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.<\\/p>\\r\\n\\r\\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.<\\/p>\\r\\n\\r\\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.<\\/p>\"}', '2022-07-31 06:18:16', '2022-07-31 06:18:16'),
(69, 'dm_self_registration', '1', NULL, NULL),
(70, 'maximum_otp_hit', '5', NULL, NULL),
(71, 'otp_resend_time', '60', NULL, NULL),
(72, 'temporary_block_time', '120', NULL, NULL),
(73, 'maximum_login_hit', '5', NULL, NULL),
(74, 'temporary_login_block_time', '120', NULL, NULL),
(75, 'cookies', '{\"status\":\"1\",\"text\":\"Allow Cookies for this site. Privacy policy demo text. Update your privacy policy.\"}', NULL, NULL),
(76, 'fav_icon', '2023-06-22-6493e922cdd90.png', NULL, NULL),
(77, 'map_api_server_key', 'AIzaSyDQGotUdJu4BwcqiYQ17HEfUcVFlAcR6NU', NULL, NULL),
(78, 'google_social_login', '1', NULL, NULL),
(79, 'facebook_social_login', '0', NULL, NULL),
(80, 'whatsapp', '{\"status\":\"0\",\"number\":\"\"}', NULL, NULL),
(81, 'telegram', '{\"status\":\"0\",\"user_name\":\"\"}', NULL, NULL),
(82, 'messenger', '{\"status\":\"0\",\"user_name\":\"\"}', NULL, NULL),
(83, 'customer_notify_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'def.png',
  `banner_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `image`, `banner_image`) VALUES
(1, 'Men\'s fashion', 0, 0, 1, '2021-03-11 09:13:00', '2023-06-22 12:57:05', '2021-03-11-6049df1be53f6.png', '2023-06-22-6493f0c1d6a06.png'),
(2, 'Footwear', 0, 0, 1, '2021-03-11 09:13:17', '2023-06-22 12:56:33', '2021-03-11-6049df2dd0361.png', '2023-06-22-6493f0a183c1c.png'),
(3, 'Accessories', 0, 0, 1, '2021-03-11 09:14:01', '2023-06-22 12:55:28', '2023-06-22-6493eaf895cc9.png', '2023-06-22-6493f06001f29.png'),
(4, 'Electronics', 0, 0, 1, '2021-03-11 09:14:41', '2023-06-22 12:55:07', '2021-03-11-6049df81cd2d1.png', '2023-06-22-6493f04b427a2.png'),
(5, 'Mobile phones', 0, 0, 1, '2021-03-11 09:15:11', '2023-06-22 12:54:42', '2021-03-13-604c885a36466.png', '2023-06-22-6493f032611a2.png'),
(6, 'Pants', 1, 1, 1, '2021-03-11 09:27:30', '2021-03-11 09:27:30', 'def.png', NULL),
(7, 'T-shirts', 1, 1, 1, '2021-03-11 09:27:42', '2021-03-11 09:27:42', 'def.png', NULL),
(8, 'Full sleeve shirts', 1, 1, 1, '2021-03-11 09:27:57', '2021-03-11 09:27:57', 'def.png', NULL),
(9, 'Half sleeve shirts', 1, 1, 1, '2021-03-11 09:28:09', '2023-06-22 13:00:16', 'def.png', NULL),
(10, 'Polo t-shirts', 1, 1, 1, '2021-03-11 09:28:24', '2021-03-11 09:28:24', 'def.png', NULL),
(11, 'Sneakers', 2, 1, 1, '2021-03-11 09:28:43', '2021-03-11 09:28:43', 'def.png', NULL),
(12, 'Sleepers', 2, 1, 1, '2021-03-11 09:29:20', '2023-06-22 13:02:02', 'def.png', NULL),
(13, 'Camera', 3, 1, 1, '2021-03-11 09:29:37', '2021-03-11 09:29:37', 'def.png', NULL),
(14, 'Apple', 5, 1, 1, '2021-03-11 09:29:50', '2021-03-11 09:29:50', 'def.png', NULL),
(15, 'Yamsung', 5, 1, 1, '2021-03-11 09:29:58', '2023-06-22 13:03:54', 'def.png', NULL),
(16, 'Ouija', 5, 1, 1, '2021-03-11 11:01:01', '2023-06-22 13:05:31', 'def.png', NULL),
(17, 'Women Fashion', 0, 0, 1, '2021-03-11 11:33:01', '2023-06-22 13:12:28', '2023-06-22-6493f45cbd107.png', '2023-06-22-6493f0189c744.png'),
(19, 'Saree', 17, 1, 1, '2021-03-11 11:43:58', '2023-06-22 13:05:55', 'def.png', NULL),
(20, 'Watches & Accessories', 0, 0, 1, '2021-03-11 11:52:50', '2023-06-22 12:53:45', '2023-06-22-6493eff9891e7.png', '2023-06-22-6493eff989652.png'),
(24, 'Men\'s Watch', 20, 1, 1, '2021-03-11 11:54:55', '2021-03-11 11:54:55', 'def.png', NULL),
(26, 'Women\'s Watch', 20, 1, 1, '2021-03-11 11:55:07', '2021-03-11 11:55:07', 'def.png', NULL),
(27, 'TV & Home Appliances', 0, 0, 1, '2021-03-11 12:08:16', '2023-06-22 12:51:54', '2021-03-11-604a082fe3e4f.png', '2023-06-22-6493ef8a83c44.png'),
(28, 'Television(TV)', 27, 1, 1, '2021-03-11 12:09:17', '2021-03-11 12:09:17', 'def.png', NULL),
(29, 'Doll', 0, 0, 1, '2021-03-21 10:51:45', '2023-06-22 12:51:22', '2021-03-21-605725410e7c8.png', '2023-06-22-6493ef6a458cb.png'),
(30, 'baby doll', 29, 1, 1, '2021-03-21 10:52:13', '2021-03-21 10:52:13', 'def.png', NULL),
(31, 'Medical supplies', 0, 0, 1, '2021-03-23 00:01:40', '2023-06-22 12:49:03', '2023-06-22-6493eedf01b60.png', '2023-06-22-6493eedf01f58.png'),
(32, 'Surgical consumables', 31, 1, 1, '2021-03-23 00:02:40', '2021-03-23 00:02:40', 'def.png', NULL),
(33, 'Boys', 0, 0, 1, '2021-10-13 04:17:13', '2023-06-22 12:50:48', '2023-06-22-6493ef486641e.png', '2023-06-22-6493ef486697a.png'),
(34, 'shirt', 33, 1, 1, '2021-10-13 04:17:26', '2021-10-13 04:17:26', 'def.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `is_reply` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_id`, `message`, `reply`, `created_at`, `updated_at`, `checked`, `image`, `attachment`, `is_reply`) VALUES
(1, 2, 'Hi', NULL, '2021-03-13 10:16:08', '2023-06-22 15:54:41', 1, NULL, NULL, 0),
(2, 1, 'Hi', NULL, '2021-03-14 09:29:25', '2022-03-12 20:41:29', 1, NULL, NULL, 0),
(3, 2, 'Hello there', NULL, '2021-03-21 11:01:30', '2023-06-22 15:54:41', 1, NULL, NULL, 0),
(4, 2, NULL, 'how are you', '2021-03-21 11:01:54', '2023-06-22 15:54:41', 1, NULL, NULL, 0),
(5, 2, NULL, 'all good?', '2021-03-21 11:02:03', '2023-06-22 15:54:41', 1, NULL, NULL, 0),
(6, 2, 'I\'m quite well what about you?', NULL, '2021-03-21 11:02:28', '2023-06-22 15:54:41', 1, NULL, NULL, 0),
(7, 5, 'Hi', NULL, '2021-03-22 10:46:30', '2022-03-12 20:41:33', 1, NULL, NULL, 0),
(8, 6, 'Hi', NULL, '2021-03-22 19:23:31', '2022-03-12 20:41:32', 1, NULL, NULL, 0),
(9, 6, NULL, 'hi', '2021-03-22 19:31:12', '2022-03-12 20:41:32', 1, NULL, NULL, 0),
(10, 9, 'Hello', NULL, '2021-03-22 22:02:45', '2023-06-22 16:41:41', 1, NULL, NULL, 0),
(11, 9, 'kdkd', NULL, '2021-03-22 22:03:22', '2023-06-22 16:41:41', 1, NULL, NULL, 0),
(12, 9, NULL, 'hello', '2021-03-22 22:03:37', '2023-06-22 16:41:41', 1, NULL, NULL, 0),
(13, 9, 'Mns', NULL, '2021-03-22 22:04:39', '2023-06-22 16:41:41', 1, NULL, NULL, 0),
(14, 9, NULL, 'xcfhdfgh', '2021-06-12 18:41:35', '2023-06-22 16:41:41', 1, NULL, NULL, 0),
(15, 9, NULL, 'fgdfgsfgjsfgj', '2021-06-12 18:41:39', '2023-06-22 16:41:41', 1, NULL, NULL, 0),
(16, 6, NULL, 'Helloooo', '2021-06-12 18:41:55', '2022-03-12 20:41:32', 1, NULL, NULL, 0),
(17, 6, NULL, 'ghsrhd', '2021-06-12 18:42:11', '2022-03-12 20:41:32', 1, NULL, NULL, 0),
(18, 1, NULL, 'He there!', '2021-06-12 18:42:39', '2022-03-12 20:41:29', 1, NULL, NULL, 0),
(19, 1, NULL, 'jmk,fhgjfhjlf', '2021-06-12 18:45:21', '2022-03-12 20:41:29', 1, NULL, NULL, 0),
(20, 9, NULL, 'hjkhjlhl', '2021-06-12 18:45:40', '2023-06-22 16:41:41', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_type` varchar(255) NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `start_date`, `expire_date`, `min_purchase`, `max_discount`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`, `coupon_type`, `limit`) VALUES
(1, 'New Bangla year', '340070', '2021-03-21', '2021-03-28', 150.00, 50.00, 50.00, 'amount', 0, '2021-03-13 10:29:45', '2023-06-22 12:37:21', 'default', 12),
(2, 'Coupon 1', '4pm8bcr2by', '2023-06-22', '2050-09-22', 100.00, 5000.00, 23.00, 'percent', 1, '2023-06-22 12:37:58', '2023-06-22 12:37:58', 'default', 100),
(3, 'Coupon 2', 'cw69dal2wl', '2023-06-22', '2060-09-30', 100.00, 0.00, 50.00, 'amount', 1, '2023-06-22 12:38:31', '2023-06-22 12:38:31', 'first_order', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 1.00, NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', 1.00, NULL, NULL),
(3, 'Euro', 'EUR', '€', 1.00, NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', 'د.إ.‏', 1.00, NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '؋', 1.00, NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', 1.00, NULL, NULL),
(7, 'Armenian Dram', 'AMD', '֏', 1.00, NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', 1.00, NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', 1.00, NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '₼', 1.00, NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', 1.00, NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1.00, NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', 'лв.', 1.00, NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', 1.00, NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', 1.00, NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', 1.00, NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', 1.00, NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', 1.00, NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', 1.00, NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', 1.00, NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', 1.00, NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', 1.00, NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', 1.00, NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', 1.00, NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '¥', 1.00, NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', 1.00, NULL, NULL),
(27, 'Costa Rican Colón', 'CRC', '₡', 1.00, NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', 1.00, NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', 1.00, NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', 1.00, NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', 1.00, NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', 1.00, NULL, NULL),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', 1.00, NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', 1.00, NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E£‏', 1.00, NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', 1.00, NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', 1.00, NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '£', 1.00, NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', 1.00, NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH¢', 1.00, NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', 1.00, NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', 1.00, NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', 1.00, NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', 1.00, NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', 1.00, NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', 1.00, NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', 1.00, NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '₪', 1.00, NULL, NULL),
(49, 'Indian Rupee', 'INR', '₹', 1.00, NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', 'ع.د', 1.00, NULL, NULL),
(51, 'Iranian Rial', 'IRR', '﷼', 1.00, NULL, NULL),
(52, 'Icelandic Króna', 'ISK', 'kr', 1.00, NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', 1.00, NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', 'د.ا‏', 1.00, NULL, NULL),
(55, 'Japanese Yen', 'JPY', '¥', 1.00, NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', 1.00, NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '៛', 1.00, NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', 1.00, NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', 1.00, NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', 1.00, NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '₸.', 1.00, NULL, NULL),
(62, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 1.00, NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', 1.00, NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', 1.00, NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', 1.00, NULL, NULL),
(66, 'Libyan Dinar', 'LYD', 'د.ل.‏', 1.00, NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', 'د.م.‏', 1.00, NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', 1.00, NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', 1.00, NULL, NULL),
(70, 'Macedonian Denar', 'MKD', 'Ден', 1.00, NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', 1.00, NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', 1.00, NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', 1.00, NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', 1.00, NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', 1.00, NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', 1.00, NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', 1.00, NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '₦', 1.00, NULL, NULL),
(79, 'Nicaraguan Córdoba', 'NIO', 'C$', 1.00, NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', 1.00, NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', 1.00, NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', 1.00, NULL, NULL),
(83, 'Omani Rial', 'OMR', 'ر.ع.‏', 1.00, NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', 1.00, NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', 1.00, NULL, NULL),
(86, 'Philippine Peso', 'PHP', '₱', 1.00, NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', 1.00, NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'zł', 1.00, NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '₲', 1.00, NULL, NULL),
(90, 'Qatari Rial', 'QAR', 'ر.ق.‏', 1.00, NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', 1.00, NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', 1.00, NULL, NULL),
(93, 'Russian Ruble', 'RUB', '₽.', 1.00, NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', 1.00, NULL, NULL),
(95, 'Saudi Riyal', 'SAR', 'ر.س.‏', 1.00, NULL, NULL),
(96, 'Sudanese Pound', 'SDG', 'ج.س.', 1.00, NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', 1.00, NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', 1.00, NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', 1.00, NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS‏', 1.00, NULL, NULL),
(101, 'Thai Baht', 'THB', '฿', 1.00, NULL, NULL),
(102, 'Tunisian Dinar', 'TND', 'د.ت‏', 1.00, NULL, NULL),
(103, 'Tongan Paʻanga', 'TOP', 'T$', 1.00, NULL, NULL),
(104, 'Turkish Lira', 'TRY', '₺', 1.00, NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', 1.00, NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', 1.00, NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', 1.00, NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '₴', 1.00, NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', 1.00, NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', 1.00, NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', 1.00, NULL, NULL),
(112, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', 1.00, NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '₫', 1.00, NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', 1.00, NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', 1.00, NULL, NULL),
(116, 'Yemeni Rial', 'YER', '﷼‏', 1.00, NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', 1.00, NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', 1.00, NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) NOT NULL,
  `contact_person_number` varchar(20) NOT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `road` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `contact_person_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `floor`, `house`, `road`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`, `user_id`, `contact_person_name`) VALUES
(1, 'Home', '01879762951', NULL, NULL, NULL, 'Chor Chandia Feni District BD', '22.821619530702538', '91.38563085347414', '2021-03-11 11:04:11', '2021-03-11 11:04:11', 1, 'Ashek'),
(2, 'Home', '01774050226', NULL, NULL, NULL, '44/1 Dhaka District BD', '23.760978715826155', '90.35624530166388', '2021-03-11 11:47:41', '2021-03-11 11:47:41', 2, 'Habib'),
(3, 'Workplace', '818185484', NULL, NULL, NULL, 'Lucky Kunjo Feni District BD', '23.0202392190485', '91.39745336025953', '2021-03-14 09:27:38', '2021-03-14 09:27:38', 1, 'Ashek'),
(4, 'Home', '01747413273', NULL, NULL, NULL, 'Basilla Road Dhaka District BD', '23.73587668578216', '90.34123063087463', '2021-03-15 04:02:19', '2021-03-15 04:02:19', 4, 'Nipon'),
(5, 'Workplace', '014752398', NULL, NULL, NULL, '44/1, Dhaka District, BD', '23.760948643914308', '90.35622585564852', '2021-03-21 02:21:29', '2021-03-21 02:21:29', 2, 'Karim'),
(6, 'Home', '156249', NULL, NULL, NULL, '44/1, Dhaka District, BD', '23.760945268495195', '90.35622920840979', '2021-03-21 11:12:47', '2021-03-21 11:12:47', 2, 'John'),
(7, 'Home', '0175848878757', NULL, NULL, NULL, 'Raisa Dhaka District BD', '23.781786198760212', '90.36123387515545', '2021-03-22 10:45:42', '2021-03-22 10:45:42', 5, 'Kabir'),
(8, 'Home', '0000080880', NULL, NULL, NULL, '20 mumbai', '-0.026588401734213275', '-0.1316273957490921', '2021-03-22 19:19:45', '2021-03-22 19:19:45', 6, 'Test'),
(9, 'Home', '8299184564', NULL, NULL, NULL, 'Autopista Nagua-Samaná Nagua DO', '19.252333248188158', '-69.777861982584', '2021-03-22 21:49:05', '2021-03-22 21:49:05', 9, 'Pedro Pereyra'),
(10, 'Home', '0241839409', NULL, NULL, NULL, '30 Accra Metropolis GH', '5.5747365', '-0.1518782', '2021-03-23 00:14:32', '2021-03-23 00:14:32', 10, 'Mills'),
(11, 'Home', '0241839409', NULL, NULL, NULL, '30 Accra Metropolis GH', '5.574817553861141', '-0.15149082988500595', '2021-03-23 00:15:36', '2021-03-23 00:15:36', 10, 'Radius'),
(12, 'Home', '01673138206', NULL, NULL, NULL, 'Flat#602, Dhaka District, BD', '23.74346402646044', '90.40899898856878', '2021-06-12 17:51:28', '2021-06-12 17:51:28', 12, 'Sabrina'),
(13, 'Home', '01673138206', NULL, NULL, NULL, 'Flat#602, Dhaka District, BD', '23.743463719562946', '90.40898993611336', '2021-06-12 18:11:42', '2021-06-12 18:11:42', 12, 'Sabrina'),
(14, 'Home', '+880162434326', NULL, NULL, NULL, '1no Dhaka District BD', '23.756220516492704', '90.39354845881462', '2021-10-13 04:20:40', '2021-10-13 04:20:40', 16, 'Pili 123'),
(15, 'Home', '+8801975758279', NULL, NULL, NULL, 'Aainusbag Road Dhaka District BD', '23.858117317293253', '90.42263232171535', '2021-10-13 04:23:29', '2021-10-13 04:23:29', 15, 'Abdul Aziz Sarker'),
(16, 'Home', '+8801705227358', NULL, NULL, NULL, 'Unnamed Road Kurigram District BD', '25.660269421012902', '89.60706375539303', '2021-11-17 03:07:56', '2021-11-17 03:07:56', 17, 'J R'),
(17, 'Home', '+8801677696277', NULL, NULL, NULL, 'Road Number 14/1 Dhaka District BD', '23.772531952864966', '90.4055855423212', '2021-11-17 03:15:08', '2021-11-17 03:15:08', 18, 'Mehedi Hasan'),
(18, 'Home', '+8801621720045', '2B', '2221', '10', 'R9W8+FC Dhaka, Bangladesh', '23.846154900000005', '90.36610989999998', '2023-06-22 13:20:44', '2023-06-22 13:20:44', 22, 'Test Customer');

-- --------------------------------------------------------

--
-- Table structure for table `dc_conversations`
--

CREATE TABLE `dc_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `application_status` varchar(255) NOT NULL DEFAULT 'approved' COMMENT 'pending, approved, denied',
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `f_name`, `l_name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `created_at`, `updated_at`, `auth_token`, `fcm_token`, `branch_id`, `application_status`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`) VALUES
(3, 'Test Delivery', 'Man', '+8801747413273', 'demo@demo.com', '1010101010', 'nid', '[\"2021-03-15-604f1adb2f626.png\"]', '2021-03-15-604f1adb04ef0.png', '$2y$10$MbuCJ87wos2yC9oh9YiWDuqI6FIxeqlLJTNARA3WpOO3qHaIvZMGi', '2021-03-15 08:29:15', '2021-11-17 02:02:54', 'Yju3YFachUY5hFqj3WTrBAqYEqz3mXdT8PRSfGSp1mOzZTYHgpT9gFaGznevhDagPE5607sBetJoK4kaoW7CLTDPpuju8nrBYoXEppyKFkr8ErDOnJQhFkby', 'ciZoaRHVQg6MvNR_BHOX65:APA91bGmAHfrpRtfQYOtTL7U1YWwpirf2ZnoKbM7P2cJYkJ4G2IEZWWbKDp5lDsQb_eWuRpdiGNb6FxYIyOfPQ9GX7jWuKg5w0b4egHDWnPSlnRi6mqW8UWoYqdl0iqbuA601ZI40Gq9', 0, 'approved', 0, 0, NULL),
(4, 'Ashek', 'Elahe', '01879762951', 'Ashek@gmail.com', '7t67r65798y', 'passport', '[\"2021-03-20-60563258eea24.png\"]', '2021-03-20-60563258acaea.png', '$2y$10$uaN2H.8UjnJnseW/vZwGGumM/2KNwD2D.vrRwVdQ0irnOhfplO3hi', '2021-03-20 17:35:21', '2021-03-20 18:35:10', 'NtJAz1vdpLLgh1TWfyJSjyNoRmezF4fCCND1pCcp5JcjW20aj7kWS9Q1bLMOkIa2INp4ZIioLsaS2lT3ckNRVzhYHIMj7W8VKG2zrAoEvJCZl31wb4wgoSYt', 'dy-0viorSLGUF8dn5KJbdT:APA91bGrTvmUIDBXed-csAJGyJAzTBZuv_LUNyobawHv22j_TBCiT8s_bko_J1mGGL1Oz0hUMZNakdtnzMkliEUS6N_pXHLf5tPW5EUeXEs5iLEQ0M_5bCRL4gs2RknOXzUkjRXBlc6t', 0, 'approved', 0, 0, NULL),
(5, 'Habibur', 'Rahman', '01774050226', 'mhrhabib73@gmail.com', '12345678666', 'nid', '[]', '2021-03-21-605720242856d.png', '$2y$10$uz/Mk645mwyH3OZw8LE2k./5SDa2vVTiiUqPx/glN/bptwggfMLry', '2021-03-21 10:29:56', '2021-03-21 12:44:32', 'hleagVS91xtUnQJ236d3DWGLRNXtQ3oZ3Oxz34xifTf1YCO9OUwCZMWVLWoRwEMT0k0HlQv9WQGgpdiiA1xwOGlK6tOo9x7o1BERGl4vv0QFtZRGU9TewQ4O', 'ciSw9loxQ9auvc-ymGiGbX:APA91bF_HuoqxA6nYV2Aenz0zebGAM9f0QkQ8T1LEVPRiGa0hMMbCp8JnmtWyEG5OPoWQMXaaXKY5royl3VVm2_cuXMNlMrHl-UAfV2JZe64IRS1TsLgccrjVUfY8_Myhhf9xrzRAMwu', 0, 'approved', 0, 0, NULL),
(6, 'parvej', '123', '01712251697', 'parvej@gmail.com', '12345678', 'passport', '[\"2021-10-13-6166f846d9ce6.png\"]', '2021-10-13-6166f846d9081.png', '$2y$10$MdMwgXJB1UhU7pJWePptueIDM/vEXkPaoFkNYhHbe.cn3fM9Z7tJ2', '2021-10-13 04:16:22', '2021-10-13 04:16:22', NULL, NULL, 11, 'approved', 0, 0, NULL),
(7, 'Rakib', 'Hasan', '01236598457', 'rakib@gmail.com', '12354', 'restaurant_id', '[\"2021-10-13-6166f921126a3.png\"]', '2021-10-13-6166f92111b49.png', '$2y$10$70NExda9BrLdT3sup5l/pO2X6O9F8GqS/U81NE3OcGia/ZaRyCI/.', '2021-10-13 04:20:01', '2021-10-13 04:23:06', 'j54hVFqQdBPfVL4Sxl5OGoa6NZ4f41qL91iV66jO2hfBW7CgYsIVZxkdsyYw7mnBJAxQ2sPT8CbY2hWNAXcLtp8vRMXzQZCQq90lNujjTIOGfWkx5Uljv7Dt', 'd8XD1LD8R-KbqxPMdEV0aM:APA91bGJNDLBXDUAEkAB9Cndv_cvi5ITcAGhROCTdOJHgihhL1oZhnUeaSFCdzPQ1FQ0fNcZMf9ah_Yad_2rl9Vk3-V07uH5PDywmfsuSWXyQX99k_TzMyZEEpE6mdqKZMsg47tBz6Yg', 0, 'approved', 0, 0, NULL),
(8, 'Test', 'DM', '+8801122334455', 'testdm@gmail.com', 'rtgv', 'passport', '[\"2023-06-22-6493f61477e04.png\",\"2023-06-22-6493f6147bb72.png\"]', '2023-06-22-6493f6147619b.png', '$2y$10$s9sUZi3hGLFN2F.6iPjuAOWznktw6lIxuq.RGMKfs/dkDlwZXR2Jm', '2023-06-22 13:19:48', '2023-06-22 15:57:58', '3ytALSK2RB8XUBWutuI2azv0rkWOUaPHEB1cbZVef9aP2nuYW6vMioR1u6v58lgwN4geua1dtmwKQbBZQsQ0Ztkn93VKXnBDoRlg2T56XFUVWF4XU7xwkQxy', 'f5iRpfqmQbid5qXGO_Qs0N:APA91bFurIL6YQgaOAhIt5vLaa1LDNF_xw8MB0Zh2ZMJmNiMr1qSywSuF-1K6Ds7Dz13XD9NKh1yf0l7Hf-FAOIdKMbkBNat7Woq_5r1rBJJeoNBAe7SbtG9ooJp9DtoIpu9RP6GB-UT', 0, 'approved', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d_m_reviews`
--

INSERT INTO `d_m_reviews` (`id`, `delivery_man_id`, `user_id`, `order_id`, `comment`, `attachment`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 100008, 'He was on time every time.', '[]', 5, '2021-03-13 12:03:17', '2021-03-13 12:03:17'),
(2, 8, 22, 100047, 'This is a demo product review   “I recently purchased a product from [Store Name], and I couldn’t be happier with my online shopping experience. Their website was user-friendly, making it easy to find the perfect item. The checkout process was smooth, and I received my order promptly. The [product] arrived in excellent condition, exactly as described on their website. I’m thrilled with the quality and will definitely shop at [Store Name] again in the future. Highly recommended!”', '[]', 4, '2023-06-22 13:23:33', '2023-06-22 13:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(26, '2016_06_01_000004_create_oauth_clients_table', 17),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(68, '2021_03_07_065637_change_product_image_clumn_type', 42),
(69, '2021_03_11_061437_add_unit_column_to_products', 43),
(70, '2021_03_11_070016_add_unit_to_order_details', 44),
(71, '2021_04_04_153448_add_column_to_product_table', 45),
(72, '2021_04_05_071507_add_stock_info_in_order_details', 45),
(73, '2021_04_07_145217_update_product_price_column', 45),
(74, '2021_05_03_160034_add_callback_to_order', 46),
(75, '2021_05_27_103505_create_product_translations_table', 46),
(76, '2021_06_17_054551_create_soft_credentials_table', 47),
(77, '2021_07_26_170256_change_price_col_type', 47),
(78, '2021_08_29_133037_create_phone_verifications_table', 47),
(79, '2021_09_04_082220_rename_email_col', 47),
(80, '2021_10_12_113110_add_temporary_token_to_users_table', 48),
(81, '2021_11_07_221832_add_extra_discount_to_order_table', 49),
(82, '2022_03_02_231748_create_newsletters_table', 50),
(83, '2022_03_02_233934_create_social_media_table', 50),
(84, '2022_03_04_175420_create_messages_table', 50),
(85, '2022_03_04_180725_create_dc_conversations_table', 50),
(86, '2022_03_04_191158_add_is_reply_to_conversations_table', 50),
(87, '2022_03_04_195150_add_fcm_token_to_admin_table', 50),
(88, '2022_03_04_215030_add_delivery_address_in_order_table', 50),
(89, '2022_03_04_222417_add_image_to_branch_table', 50),
(90, '2022_03_08_220222_change_category_name_type_size', 50),
(91, '2022_03_08_222114_change_attribute_name_column_type_change', 50),
(92, '2022_03_14_060021_add_cover_image_to_category_table', 51),
(93, '2023_04_12_153350_add_phone_column_in_branches_table', 52),
(94, '2023_05_09_113051_add_multiple_column_in_customer_addresses', 52),
(95, '2023_06_05_152745_add_multiple_column_in_deliveryman', 52),
(96, '2023_06_05_185615_add_multiple_column_for_login_wrong_attempt_in_users', 52),
(97, '2023_06_06_103457_add_multiple_column_for_block_time_in_password_resets', 52),
(98, '2023_06_06_113225_add_multiple_column_for_wrong__o_t_p_attempt_block_in_phone_verifications', 52),
(99, '2023_06_06_113313_add_multiple_column_for_wrong__o_t_p_attempt_block_in_email_verifications', 52),
(100, '2023_06_13_085626_change_column_type_and_length_in_notifications', 52),
(101, '2023_06_14_163915_add_login_medium_in_users', 52);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'abc@gmail.com', '2023-06-22 12:40:59', '2023-06-22 12:40:59'),
(2, 'xyz@gmail.com', '2023-06-22 12:41:09', '2023-06-22 12:41:09'),
(3, 'customer@customer.com', '2023-06-22 12:41:22', '2023-06-22 12:41:22'),
(4, 'testcustomer@gmail.com', '2023-06-22 14:32:35', '2023-06-22 14:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Demo install', 'demo products are available for sale', '2021-03-13-604ce7ca7dfec.png', 1, '2021-03-13 16:26:50', '2021-03-13 16:26:50'),
(2, 'biggest sale of the week', '20% discount on all products', '2021-03-21-605728513906f.png', 1, '2021-03-21 11:04:49', '2021-03-21 11:04:49'),
(4, 'New Notification', 'Demo Notification', '2023-06-22-6493ecb61e2bc.png', 1, '2023-06-22 12:39:50', '2023-06-22 12:39:50'),
(5, 'Discount Sell', 'Up to 50% discount', '2023-06-22-6493ecd24be16.png', 1, '2023-06-22 12:40:18', '2023-06-22 12:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01a12949f80517fb631ca6c45a3d7500aedcd2c2ee4f6674fc4f763794cce191cc57aa2ac790bed6', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-20 08:24:06', '2021-03-20 08:24:06', '2022-03-20 08:24:06'),
('026c5e8225cd0f27150428f7f34e7db7495cc977396af4fe1b5ac4b51d14ce0d72ff804267913504', 10, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-23 00:12:35', '2021-03-23 00:12:35', '2022-03-23 00:12:35'),
('0b9075b465918f193c2d7b9e8a36b6c719658dbae5e8a0585bc70d91fcdef9caba0235aca032d05d', 12, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-12 18:10:31', '2021-06-12 18:10:31', '2022-06-12 18:10:31'),
('0f356f3f319b0a9f1a3de69121756147a9a35aced10698b78ce3e11af55a51c7b4403331aaf9f6fa', 2, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-21 11:21:14', '2021-03-21 11:21:14', '2022-03-21 11:21:14'),
('1cb3a8f1e32f97b9557b7cb9d3530869a3b91ad36fb43612f257a260daf31965ae71bccd667eba58', 4, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-14 11:43:17', '2021-03-14 11:43:17', '2022-03-14 11:43:17'),
('244c4080af4813322c2487ca1110d28c52c1736b93a00d65884e21d2cdeb546cd1afc8ca8c1ac889', 10, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 22:54:33', '2021-03-22 22:54:33', '2022-03-22 22:54:33'),
('2a0637a7b267891a70edf3055afdf87a4169b11dd98d737da647e331fa7c189c80bee1e1e940b359', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-12 18:27:41', '2021-06-12 18:27:41', '2022-06-12 18:27:41'),
('2b04e706573133a9fdf9311d016d1665686b463b65b9619c096cd9015c5661227a47affc7d7c671a', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-20 09:51:07', '2021-03-20 09:51:07', '2022-03-20 09:51:07'),
('3653bc79d1459c8b804fefe0afb6cef083f25b1e24e74bfc900acc7941c7a0dbf995da29096f60f1', 17, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-11-17 03:02:42', '2021-11-17 03:02:42', '2022-11-17 03:02:42'),
('41c1cdc5181f6a56908c88c08bb30e2f0bf9c13de900995c092193076814c1938221084af6134b6f', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-11 11:03:01', '2021-03-11 11:03:01', '2022-03-11 11:03:01'),
('429566b77a8091d6a7ae216775e89fa0d969720befb9e6a7ac86468febe7da7b579476c1166fd02d', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 17:45:17', '2021-03-22 17:45:17', '2022-03-22 17:45:17'),
('44346fb3ede87b15f39e521cc6e0456ea6511cee81b54d0e079380ae083d2ce7fe5affcc36afd453', 5, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 10:44:42', '2021-03-22 10:44:42', '2022-03-22 10:44:42'),
('46b20396ce1708fc7d29f662d12eed63391efb26d5eaaf50cb1b40055c922e859e9a24745f24b55c', 11, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-28 15:28:06', '2021-03-28 15:28:06', '2022-03-28 15:28:06'),
('4955cd3ad02d7724e0273e19a6ee686a45b4c4315eca37dd484150c762cdd3c7a5c8621040cad36c', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-18 14:33:02', '2021-03-18 14:33:02', '2022-03-18 14:33:02'),
('4b525fb73129723c762ee9ba8c771d014b395db65d379bc202b1b78f73151d1da97d3a6b298e42ae', 3, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-11 11:58:57', '2021-03-11 11:58:57', '2022-03-11 11:58:57'),
('51b2cf2d168e728dd829563b06956fca7e7c1dbad630ced6dd33b1a5dd459dfee177478b4e8e6aa2', 19, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-31 06:03:15', '2022-07-31 06:03:15', '2023-07-31 12:03:15'),
('5367b4659d347df15c3369f108234279ec0fc16acbdc29788a70ff83d375d90203c215e11d775043', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-04-18 17:54:38', '2021-04-18 17:54:38', '2022-04-18 17:54:38'),
('562c6412c0543c57e126d560a383944aa6c413a3bf830f261d9bd2abfdd5debe6653ced02cc88676', 20, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-31 06:23:07', '2022-07-31 06:23:07', '2023-07-31 12:23:07'),
('5637bad740bd29c68b80991d5549357ad3c4c68b705c4eb5e34bc92f60394ccbf2eba905eeba15f5', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-04-18 17:39:31', '2021-04-18 17:39:31', '2022-04-18 17:39:31'),
('5df7509171c2910ae9c245651cafa7af67ac69165204e811117ca51c5d53e4c811ba6a7609dfcd6d', 2, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-11 11:39:20', '2021-03-11 11:39:20', '2022-03-11 11:39:20'),
('759f192e0fab58fd3235ef216111a04d0afaa928c5673d62bc965d9b03f1250ed6d499689d0eb3ee', 22, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-06-22 13:20:15', '2023-06-22 13:20:15', '2024-06-22 13:20:15'),
('7626c0f4820c5a78e5bac292e24194dc07a4af6a1795ae3485f7927e2c2d87b3807fb9f6f1d5151a', 21, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-06-22 12:28:03', '2023-06-22 12:28:03', '2024-06-22 12:28:03'),
('7b2eeade305282c688101289afa620b3fe21b9070d28778c21359f848a2c3a7ee26d141609c49fe4', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 17:41:57', '2021-03-22 17:41:57', '2022-03-22 17:41:57'),
('7bc53f72e1bc60ac868cc9cb3da23462e2d53325cd95ac1d9726183f551133f8f19357f5a4ab1c5c', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-20 08:22:20', '2021-03-20 08:22:20', '2022-03-20 08:22:20'),
('7f2be6438654e6aed7bc80db9c9fc42b453f7f7ee2b2e402c9ac4e4c3b4f1f4b5b15722956bc28d5', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-18 13:10:54', '2021-03-18 13:10:54', '2022-03-18 13:10:54'),
('859762ba742d05622e8fd610400d06aa592f2dd81584d20f88964b4cba7b6e5be113463547d0b952', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-12 18:06:38', '2021-06-12 18:06:38', '2022-06-12 18:06:38'),
('85b0cda4e7ec88573dba80bce1654120e15ba85b8bc392f7b3abd7dd3cdbf9b42200b2acbfd48c51', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-13 08:38:38', '2021-03-13 08:38:38', '2022-03-13 08:38:38'),
('91655e4b6799de33e3273e9b1689d563b1fb191c3fa28bb8d2793beb00da3abc306ee526154e07ea', 7, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 20:50:26', '2021-03-22 20:50:26', '2022-03-22 20:50:26'),
('9577a268ded78c2d79cff000420c917097e051546a267863baf4a47a0db57981a744800f545b34fc', 20, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-31 06:09:59', '2022-07-31 06:09:59', '2023-07-31 12:09:59'),
('9b2b9fa137595a4bdfffa1c9ab7b4506bd63f6a84217f7dd1c26ac540e619b1e33d379b23e4ea31c', 14, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-12 18:20:36', '2021-06-12 18:20:36', '2022-06-12 18:20:36'),
('9b6cdb15eb03345f87576d21760eb69898702860340bb0b3cbe1946e20a3f4010c2a04ade0451100', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-20 09:59:08', '2021-03-20 09:59:08', '2022-03-20 09:59:08'),
('a46b83a9a1f388bf15cf2f7e29e2a6525b1c57d53f70d3df389a8f1c768473b5376310b2f99c58e5', 20, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-31 06:08:15', '2022-07-31 06:08:15', '2023-07-31 12:08:15'),
('a5c881ee3b55e50e84b147831a0f39638d0540ae25e8bffb48054f278cfda5c13d1b93da32e9d34b', 9, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 21:46:51', '2021-03-22 21:46:51', '2022-03-22 21:46:51'),
('a8b70b8ed4e1a56c859b064e4470d315b2bf316df1bfb9474e05e3f13f19532de9c06054e8348b3e', 6, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 19:17:48', '2021-03-22 19:17:48', '2022-03-22 19:17:48'),
('a9c0106b86a06f3617ad2a16e487bba29645e763172551aec1cfd419860300148f03045b553aede7', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-10-13 04:20:05', '2021-10-13 04:20:05', '2022-10-13 04:20:05'),
('abd610d4912a50e0def3e756b3c2687813f4b21ec4450fa055cb959587ed693e5a01d43e9bbbeb37', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-13 16:22:06', '2021-03-13 16:22:06', '2022-03-13 16:22:06'),
('aeae2539b124401f26472a9d72b831a7087aa65d167820c84be45ebc272465b79a78f5be3aab7d14', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-14 09:25:26', '2021-03-14 09:25:26', '2022-03-14 09:25:26'),
('b020cab1992b8641a7fc0a6031aca60378e2e177d03707cd9e1a1356dfcd27738879ac159d266e1c', 12, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-12 17:50:48', '2021-06-12 17:50:48', '2022-06-12 17:50:48'),
('ba33b6d383181aec922f94ef95e3e9527c3835aad3de29e3a28ddc0d69e2172c031d6387879d7714', 20, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-31 06:26:51', '2022-07-31 06:26:51', '2023-07-31 12:26:51'),
('c0bbcf5b14ad2f2dfc424abbc72e79ee5536d4dbb670dcaf72c8e8b639780a41529e3b5321c4a7d1', 23, 3, 'AuthToken', '[]', 0, '2023-06-22 13:06:52', '2023-06-22 13:06:52', '2024-06-22 13:06:52'),
('c7916c0447d4c440a7afc2d094d0e0dc0f28eb40cc63e84de30aa34dc30a5aac8e3381e4622c450f', 19, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-31 06:08:57', '2022-07-31 06:08:57', '2023-07-31 12:08:57'),
('c99c11190e3b34fc8370336691ce3d6d81dbef89ea9c8f72cc7b2b8daa0dec02c9e0f9bfabfb7403', 18, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-11-17 03:14:13', '2021-11-17 03:14:13', '2022-11-17 03:14:13'),
('ca7e1c05ff51d449684de5a59689d2e94b215a057d17b78921c5ee0bb99826ce82c0041bd72ec91c', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 17:32:27', '2021-03-22 17:32:27', '2022-03-22 17:32:27'),
('cd1d76d87957f0481105f176813ce43f6aa71c02601a085aab6f1e28a87063f3468287172c1b9afa', 22, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-06-22 15:59:00', '2023-06-22 15:59:00', '2024-06-22 15:59:00'),
('cd27c3181b417963552146e37e3d676fc72c0b7d25b52703252a6d85395a84d2b9937282df930f6a', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-20 10:11:13', '2021-03-20 10:11:13', '2022-03-20 10:11:13'),
('d3795be7a58fd4ba6831d7d43fbdaa1630f1f34f250f3b16208e567a14546701c0da8fbc96f98dd6', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-13 16:27:03', '2021-03-13 16:27:03', '2022-03-13 16:27:03'),
('d39fcf4d536c95ad65ff8a42b68d02cf75737230dd2e51c35ecc68dc087f6b77338eea489311bb9a', 13, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-12 18:20:32', '2021-06-12 18:20:32', '2022-06-12 18:20:32'),
('d57d18fdc148fe22154ef23db91e0d2367379287a011a81d21b09f10e2cbd0bcee3742e1b238e29c', 2, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-20 16:04:26', '2021-03-20 16:04:26', '2022-03-20 16:04:26'),
('d775f8ca5a72cd237c0ca423fdef72bd28ef801ad6df3f0395f6777a809b5053325aebf03959b129', 8, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-22 21:43:03', '2021-03-22 21:43:03', '2022-03-22 21:43:03'),
('da3960d0e93327477e67e17c9e31afa7c744cd6445ded9c80ebdfdd8512ee5f45ff83e480350d713', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-20 08:15:44', '2021-03-20 08:15:44', '2022-03-20 08:15:44'),
('df8dba9416b0171278146954a45264a4bcdef2a48dc95d9aac44a43b61a492976afb64a0214e27c9', 22, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-06-22 12:30:40', '2023-06-22 12:30:40', '2024-06-22 12:30:40'),
('dfeef2fe532b50d0464f82af5cad62e8fdb52951db1178d5b77cb929979ae6c8894f4821685187e3', 4, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-21 14:03:35', '2021-03-21 14:03:35', '2022-03-21 14:03:35'),
('e94e79083da68b530295fc2d1788da9c194d9bff9859f8de49b13b027cf066fa7996c8a66da2bbe7', 21, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-06-22 12:28:04', '2023-06-22 12:28:04', '2024-06-22 12:28:04'),
('eaa917396cfdac7a03c05bacb7040fcf355d6c8bd1e86976b2ee5c9da3c2c4a97cebcb3ff41b477e', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-10-13 04:18:27', '2021-10-13 04:18:27', '2022-10-13 04:18:27'),
('f46655232a4767c49957894ef1ddb787e041e8a9cae89748d29de31c4b91855552f3377dc6696fc1', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-03-20 08:27:41', '2021-03-20 08:27:41', '2022-03-20 08:27:41'),
('f474ea6fc366598d8e4487c182e2f829a53948d293597a2e5b622b50c24f63f000e3ebbee63fb881', 22, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-06-22 12:30:40', '2023-06-22 12:30:40', '2024-06-22 12:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'z5ky1aF18fNgAczYo0W2MdglqUxpyt0KsKdmbRIt', NULL, 'http://localhost', 1, 0, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, NULL, 'Laravel Password Grant Client', 'clk5DEe0ANVDYwD79OUYBkLcZ6CLSykUvULubUuk', 'users', 'http://localhost', 0, 1, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(3, NULL, 'Hexacom Personal Access Client', 'Qc996TTX9FXnYlDkiW6scsBgkbNNKpiVqRBnAoZS', NULL, 'http://localhost', 1, 0, 0, '2023-06-22 12:10:53', '2023-06-22 12:10:53'),
(4, NULL, 'Hexacom Password Grant Client', 'BckrhlTC1jHTxYfjOmeB7jJxeoaCOAE3JQrK8zqN', 'users', 'http://localhost', 0, 1, 0, '2023-06-22 12:10:53', '2023-06-22 12:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, 3, '2023-06-22 12:10:53', '2023-06-22 12:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_title` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_reference` varchar(30) DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `order_note` text DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) NOT NULL DEFAULT 'delivery',
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `callback` varchar(255) DEFAULT NULL,
  `extra_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `delivery_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `created_at`, `updated_at`, `checked`, `delivery_man_id`, `delivery_charge`, `order_note`, `coupon_code`, `order_type`, `branch_id`, `callback`, `extra_discount`, `delivery_address`) VALUES
(100001, 1, 22577.60, 0.00, NULL, 'paid', 'failed', 0.00, 'ssl_commerz_payment', 'ubumpK-618', 1, '2021-03-11 11:25:59', '2021-06-12 17:58:18', 1, NULL, 100.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100002, 2, 219.30, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-11 11:47:50', '2021-03-11 12:16:40', 1, NULL, 100.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100003, 2, 3460.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'ssl_commerz_payment', 'RQ2VjX-942', 2, '2021-03-11 12:43:13', '2021-03-11 12:46:16', 1, NULL, 100.00, NULL, NULL, 'delivery', 9, NULL, 0.00, NULL),
(100004, 2, 45100.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-11 12:46:53', '2021-03-13 09:54:44', 1, 1, 100.00, NULL, NULL, 'delivery', 9, NULL, 0.00, NULL),
(100005, 2, 590.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 0, '2021-03-11 12:59:21', '2021-03-11 13:01:01', 1, NULL, 100.00, NULL, NULL, 'self_pickup', 1, NULL, 0.00, NULL),
(100006, 2, 890.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 0, '2021-03-11 14:34:01', '2021-03-13 09:52:50', 1, NULL, 100.00, NULL, NULL, 'self_pickup', 9, NULL, 0.00, NULL),
(100007, 2, 11100.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-13 09:47:22', '2021-03-13 09:51:46', 1, 1, 100.00, NULL, NULL, 'delivery', 9, NULL, 0.00, NULL),
(100008, 2, 222.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-13 10:20:26', '2021-03-13 10:25:56', 1, 1, 100.00, NULL, NULL, 'delivery', 9, NULL, 0.00, NULL),
(100009, 2, 13450.00, 50.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', 'II9bQA-798', 0, '2021-03-13 12:00:49', '2021-03-13 13:07:24', 1, NULL, 100.00, NULL, '340070', 'self_pickup', 9, NULL, 0.00, NULL),
(100010, 1, 1390.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 3, '2021-03-14 09:28:05', '2021-03-14 10:12:28', 1, 2, 100.00, NULL, NULL, 'delivery', 7, NULL, 0.00, NULL),
(100011, 4, 3504.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 0, '2021-03-14 11:43:43', '2021-03-14 16:59:27', 1, NULL, 100.00, NULL, NULL, 'self_pickup', 8, NULL, 0.00, NULL),
(100012, 4, 119.40, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 0, '2021-03-14 11:44:59', '2021-03-14 16:59:27', 1, NULL, 100.00, NULL, NULL, 'self_pickup', 1, NULL, 0.00, NULL),
(100013, 2, 151.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-14 18:06:55', '2021-03-21 10:38:25', 1, 5, 100.00, NULL, NULL, 'delivery', 9, NULL, 0.00, NULL),
(100014, 4, 129.40, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 4, '2021-03-15 04:02:26', '2021-03-22 20:05:41', 1, 3, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100015, 1, 13510.00, 0.00, NULL, 'unpaid', 'processing', 0.00, NULL, NULL, 3, '2021-03-20 09:42:44', '2021-03-20 18:36:27', 1, 4, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100016, 2, 13510.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-20 16:05:43', '2021-03-21 10:35:58', 1, 5, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100017, 2, 3320.00, 50.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 5, '2021-03-21 11:06:47', '2021-03-21 11:07:52', 1, 5, 10.00, NULL, '340070', 'delivery', 1, NULL, 0.00, NULL),
(100018, 2, 2346.00, 0.00, NULL, 'unpaid', 'pending', 0.00, NULL, NULL, 2, '2021-03-21 11:10:02', '2021-03-21 11:10:20', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100019, 2, 1260.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-21 11:11:39', '2021-03-21 11:12:01', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100020, 2, 27720.10, 0.00, NULL, 'unpaid', 'out_for_delivery', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-21 11:12:55', '2021-03-22 22:03:27', 1, 3, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100021, 2, 1309.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 2, '2021-03-21 11:15:52', '2021-03-21 11:16:02', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100022, 2, 44961.00, 50.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 5, '2021-03-21 11:23:30', '2021-06-12 15:24:25', 1, 4, 10.00, NULL, '340070', 'delivery', 10, NULL, 0.00, NULL),
(100023, 2, 6931.60, 0.00, NULL, 'unpaid', 'out_for_delivery', 0.00, 'cash_on_delivery', NULL, 5, '2021-03-21 11:35:27', '2021-03-21 12:45:53', 1, 5, 10.00, NULL, NULL, 'delivery', 10, NULL, 0.00, NULL),
(100024, 5, 3904.00, 0.00, NULL, 'unpaid', 'confirmed', 0.00, 'cash_on_delivery', NULL, 7, '2021-03-22 10:45:52', '2021-03-22 19:28:08', 1, NULL, 10.00, NULL, NULL, 'delivery', 10, NULL, 0.00, NULL),
(100025, 6, 1204.40, 0.00, NULL, 'unpaid', 'delivered', 0.00, 'cash_on_delivery', 'sgV6Xd-998', 8, '2021-03-22 19:19:57', '2021-03-22 19:46:48', 1, 3, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100026, 6, 110.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', 'jz5N0S-879', 8, '2021-03-22 19:41:40', '2021-03-23 00:29:23', 1, 5, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100027, 7, 34718.10, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 0, '2021-03-22 20:53:55', '2021-03-22 20:54:16', 1, NULL, 10.00, NULL, NULL, 'self_pickup', 1, NULL, 0.00, NULL),
(100028, 9, 4910.60, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 0, '2021-03-22 21:53:30', '2021-03-22 21:55:50', 1, NULL, 10.00, NULL, NULL, 'self_pickup', 1, NULL, 0.00, NULL),
(100029, 10, 41220.10, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 10, '2021-03-23 00:15:48', '2021-03-23 00:22:32', 1, 3, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100030, 9, 1766.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 9, '2021-03-23 02:21:20', '2021-03-23 02:24:31', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100031, 1, 15846.00, 0.00, NULL, 'paid', 'confirmed', 0.00, 'razor_pay', 'pay_H0TUvt1SThClj0', 3, '2021-04-18 17:58:46', '2021-04-18 17:59:39', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100032, 12, 60.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 12, '2021-06-12 17:51:35', '2021-06-12 17:53:04', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100033, 12, 160.00, 0.00, NULL, 'unpaid', 'pending', 0.00, NULL, NULL, 12, '2021-06-12 17:52:30', '2021-06-12 17:53:04', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100034, 12, 27720.10, 0.00, NULL, 'unpaid', 'canceled', 0.00, NULL, NULL, 12, '2021-06-12 17:53:09', '2021-06-12 18:15:18', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100035, 12, 129.40, 0.00, NULL, 'paid', 'confirmed', 0.00, 'ssl_commerz_payment', '1QHR27-665', 12, '2021-06-12 18:10:47', '2021-06-12 18:16:24', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100036, 12, 132.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 13, '2021-06-12 18:13:51', '2021-06-12 18:16:24', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100037, 12, 1310.00, 0.00, NULL, 'paid', 'confirmed', 0.00, 'stripe', 'OtGx3v-852', 13, '2021-06-12 18:14:36', '2021-06-12 18:16:24', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100038, 12, 9354.00, 0.00, NULL, 'unpaid', 'pending', 0.00, NULL, NULL, 13, '2021-06-12 18:16:07', '2021-06-12 18:16:24', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100039, 16, 27010.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 14, '2021-10-13 04:20:45', '2021-10-13 04:20:50', 1, NULL, 10.00, NULL, NULL, 'delivery', 11, NULL, 0.00, NULL),
(100040, 16, 1250.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 0, '2021-10-13 04:21:18', '2021-10-13 04:21:24', 1, NULL, 10.00, NULL, NULL, 'self_pickup', 11, NULL, 0.00, NULL),
(100041, 15, 13510.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 15, '2021-10-13 04:23:34', '2021-10-13 04:23:36', 1, NULL, 10.00, NULL, NULL, 'delivery', 12, NULL, 0.00, NULL),
(100042, 17, 807.05, 0.00, NULL, 'unpaid', 'pending', 0.00, NULL, NULL, 16, '2021-11-17 03:08:05', '2021-11-17 03:13:58', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100043, 3, 7036.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash', NULL, NULL, '2021-11-17 03:13:07', '2021-11-17 03:13:07', 1, NULL, 0.00, NULL, NULL, 'pos', 12, NULL, 4.00, NULL),
(100044, 17, 3337.75, 0.00, NULL, 'unpaid', 'failed', 0.00, 'paystack', 'DZ5zFS7QbWxrYMJIRqm3C1Jp5', 16, '2021-11-17 03:13:09', '2021-11-17 03:13:58', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100045, 18, 1267.19, 0.00, NULL, 'unpaid', 'pending', 0.00, NULL, NULL, 17, '2021-11-17 03:15:14', '2021-11-22 19:00:21', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, 0.00, NULL),
(100046, NULL, 5300.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash', NULL, NULL, '2022-07-31 06:29:11', '2022-07-31 06:29:11', 1, NULL, 0.00, NULL, NULL, 'pos', 1, NULL, 0.00, NULL),
(100047, 22, 1153.51, 0.00, NULL, 'unpaid', 'delivered', 24.68, 'cash_on_delivery', NULL, 18, '2023-06-22 13:20:52', '2023-06-22 13:21:16', 1, 8, 18.23, NULL, NULL, 'delivery', 1, NULL, 0.00, '{\"id\":18,\"address_type\":\"Home\",\"contact_person_number\":\"+8801621720045\",\"floor\":\"2B\",\"house\":\"2221\",\"road\":\"10\",\"address\":\"R9W8+FC Dhaka, Bangladesh\",\"latitude\":\"23.846154900000005\",\"longitude\":\"90.36610989999998\",\"created_at\":\"2023-06-22T07:20:44.000000Z\",\"updated_at\":\"2023-06-22T07:20:44.000000Z\",\"user_id\":22,\"contact_person_name\":\"Test Customer\"}'),
(100048, 22, 1816.95, 537.28, NULL, 'paid', 'delivered', 46.00, 'stripe', '0knh8V-45', 18, '2023-06-22 13:22:02', '2023-06-22 13:23:19', 1, NULL, 18.23, 'New Note', '4pm8bcr2by', 'delivery', 1, 'https://hexacom-fun.web.app/order-successful/100048', 0.00, '{\"id\":18,\"address_type\":\"Home\",\"contact_person_number\":\"+8801621720045\",\"floor\":\"2B\",\"house\":\"2221\",\"road\":\"10\",\"address\":\"R9W8+FC Dhaka, Bangladesh\",\"latitude\":\"23.846154900000005\",\"longitude\":\"90.36610989999998\",\"created_at\":\"2023-06-22T07:20:44.000000Z\",\"updated_at\":\"2023-06-22T07:20:44.000000Z\",\"user_id\":22,\"contact_person_name\":\"Test Customer\"}'),
(100049, 22, 568.23, 0.00, NULL, 'unpaid', 'delivered', 0.00, 'cash_on_delivery', NULL, 18, '2023-06-22 15:59:43', '2023-06-22 16:00:57', 1, 8, 18.23, NULL, NULL, 'delivery', 1, NULL, 0.00, '{\"id\":18,\"address_type\":\"Home\",\"contact_person_number\":\"+8801621720045\",\"floor\":\"2B\",\"house\":\"2221\",\"road\":\"10\",\"address\":\"R9W8+FC Dhaka, Bangladesh\",\"latitude\":\"23.846154900000005\",\"longitude\":\"90.36610989999998\",\"created_at\":\"2023-06-22T07:20:44.000000Z\",\"updated_at\":\"2023-06-22T07:20:44.000000Z\",\"user_id\":22,\"contact_person_name\":\"Test Customer\"}');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) DEFAULT NULL,
  `end_location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `product_details` text DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `discount_on_product` decimal(8,2) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `tax_amount` decimal(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `unit` varchar(255) NOT NULL DEFAULT 'pc',
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `price`, `product_details`, `variation`, `discount_on_product`, `discount_type`, `quantity`, `tax_amount`, `created_at`, `updated_at`, `variant`, `unit`, `is_stock_decreased`) VALUES
(1, 3, 100001, 120.00, '{\"id\":3,\"name\":\"Grey sneakers\",\"description\":null,\"image\":\"[\\\"2021-03-11-6049e64d86976.png\\\"]\",\"price\":120,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-11T09:43:41.000000Z\",\"updated_at\":\"2021-03-11T09:43:41.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1},{\\\"id\\\":\\\"11\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":3,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 3.00, 'discount_on_product', 4, 2.40, '2021-03-11 11:25:59', '2021-03-11 11:25:59', 'null', 'pc', 1),
(2, 1, 100001, 11000.00, '{\"id\":1,\"name\":\"IPhone 11\",\"description\":\"The phone is the best phone in the world as they say.\",\"image\":\"[\\\"2021-03-11-6049e599dc063.png\\\"]\",\"price\":11000,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T09:40:41.000000Z\",\"updated_at\":\"2021-03-11T09:40:41.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"5\\\",\\\"position\\\":1},{\\\"id\\\":\\\"14\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 0.00, 'discount_on_product', 2, 0.00, '2021-03-11 11:25:59', '2021-03-11 11:25:59', 'null', 'pc', 1),
(3, 10, 100002, 130.00, '{\"id\":10,\"name\":\"Red T-shirt\",\"description\":null,\"image\":\"[\\\"2021-03-11-604a030050ceb.png\\\",\\\"2021-03-11-604a030079fd0.png\\\"]\",\"price\":130,\"variations\":\"[]\",\"tax\":1,\"status\":1,\"created_at\":\"2021-03-11T11:46:08.000000Z\",\"updated_at\":\"2021-03-11T11:46:08.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"7\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":12,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 12.00, 'discount_on_product', 1, 1.30, '2021-03-11 11:47:50', '2021-03-11 11:47:50', 'null', 'pc', 1),
(4, 9, 100003, 1680.00, '{\"id\":9,\"name\":\"Philips\",\"description\":\"Product details of Philips BT1210\\/15 Professional Beard Trimmer Series 1000 for Men\\r\\n1-Year International Seller Warranty\\r\\nDurable consistent performance with DuraPower\\r\\nStainless Steel Blades for long-lasting sharpness\\r\\nDuraPower technology for a longer-lasting battery life\\r\\nUp to 30 minutes of cordless use after 8 hours charging\\r\\nUSB charging for convenient use\\r\\nChoose 5mm long beard, short 3-day stubble, or zero trim look\\r\\nLight on the device indicates when the battery is charging\\r\\nSkin-friendly blades for smooth skin\\r\\nThe travel lock prevents the trimmer from accidentally starting\\r\\nDetachable head for easy cleaning\\r\\nErgonomic design for easier handling\\r\\nworldwide voltage, no oil needed\",\"image\":\"[\\\"2021-03-11-604a02cf1bc26.png\\\"]\",\"price\":1680,\"variations\":\"[{\\\"type\\\":\\\"GreyColor\\\",\\\"price\\\":1680}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:45:19.000000Z\",\"updated_at\":\"2021-03-11T11:45:19.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Grey Color\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"GreyColor\",\"price\":1680}]', 0.00, 'discount_on_product', 2, 0.00, '2021-03-11 12:43:13', '2021-03-11 12:43:13', 'null', 'pc', 1),
(5, 12, 100004, 45000.00, '{\"id\":12,\"name\":\"DSLR Camera\",\"description\":null,\"image\":\"[\\\"2021-03-11-604a043dd0c65.png\\\",\\\"2021-03-11-604a043dd967c.png\\\"]\",\"price\":45000,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:51:25.000000Z\",\"updated_at\":\"2021-03-11T11:51:25.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-11 12:46:53', '2021-03-11 12:46:53', 'null', 'pc', 1),
(6, 16, 100005, 590.00, '{\"id\":16,\"name\":\"Luxury Fashion Brand Watch Women\'s Rhinestone Women\'s Wristwatch\",\"description\":\"Product details of Luxury Fashion Brand Watch Women\'s Rhinestone Women\'s Wristwatch\\r\\nMovement: quartz movement\\r\\nWater Resistance Depth: Not Water Resistant\\r\\nStyle: luxurious, modern and informal\\r\\nBand Material Type: stainless steel\\r\\nDial Diameter: 21mm\\r\\nModel Number: ladies watch\\r\\nStrap Length: 17.4 cm\\r\\nCase Thickness: 7mm\\r\\nStrap Width: 1mm\\r\\nCase Shape: Round\\r\\nBrand Name:Star Watch\",\"image\":\"[\\\"2021-03-11-604a1173582d6.png\\\"]\",\"price\":590,\"variations\":\"[{\\\"type\\\":\\\"Golden\\\",\\\"price\\\":590}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T12:47:47.000000Z\",\"updated_at\":\"2021-03-11T12:47:47.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"20\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Golden\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Golden\",\"price\":590}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-11 12:59:21', '2021-03-11 12:59:21', 'null', 'pc', 1),
(7, 22, 100006, 890.00, '{\"id\":22,\"name\":\"YUFENG 3388 tripod dslr camera mobile Professional tripod stand\",\"description\":\"Product details of YUFENG 3388 tripod dslr camera mobile Professional tripod stand\\r\\n\\u2714 raditional aluminum alloy base uses an alloy frame that enhances vibration and weight reduction compared to aluminum alloys.\\r\\n\\u2714 new lever-type locking and styling features make it easy and quick to remove and fold the tripod. The Yuteng VCT 3388 is a versatile and versatile design for cameras, home camcorders or even compact, portable, easy-to-use smarphones.\\r\\n\\u2714 Level tester:This tripod equiped with level tester, which can detect and adjust the horizontal position of it. When the ground is not level, you can recognize it immediately and adjust the tripod leg to keep level.\\r\\n\\u2714 With a maximum height of 1250cm and a tripod, it\'s easy to adjust the tripod\'s height to take pictures in multiple modes such as macro, panorama or portrai\\r\\n\\u2714 Not only does it help to take pictures easily, reducing blurring caused by camera shake, the Yuteng 3388 camera foot also gives you flexibility to crea\",\"image\":\"[\\\"2021-03-11-604a1a5964714.png\\\"]\",\"price\":890,\"variations\":\"[{\\\"type\\\":\\\"White\\\",\\\"price\\\":890},{\\\"type\\\":\\\"Black\\\",\\\"price\\\":890}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:25:45.000000Z\",\"updated_at\":\"2021-03-11T13:25:45.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"White\\\",\\\"Black\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Black\",\"price\":890}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-11 14:34:01', '2021-03-11 14:34:01', 'null', 'pc', 1),
(8, 1, 100007, 11000.00, '{\"id\":1,\"name\":\"Smart phone\",\"description\":\"<p>The phone is the best phone in the world as they say.<\\/p>\",\"image\":\"[\\\"2021-03-13-604c87983997c.png\\\",\\\"2021-03-13-604c87985b674.png\\\"]\",\"price\":11000,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T09:40:41.000000Z\",\"updated_at\":\"2021-03-13T09:36:24.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"5\\\",\\\"position\\\":1},{\\\"id\\\":\\\"14\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-13 09:47:22', '2021-03-13 09:47:22', 'null', 'pc', 1),
(9, 17, 100008, 122.00, '{\"id\":17,\"name\":\"uisi earphones\",\"description\":null,\"image\":\"[\\\"2021-03-11-604a119b325e0.png\\\",\\\"2021-03-11-604a119b415b6.png\\\"]\",\"price\":122,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T12:48:27.000000Z\",\"updated_at\":\"2021-03-11T12:48:27.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-13 10:20:26', '2021-03-13 10:20:26', 'null', 'pc', 1),
(10, 23, 100009, 13500.00, '{\"id\":23,\"name\":\"Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK\",\"description\":\"Product details of Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK\\r\\nModel Samsung T35\\r\\nSeries Professional\\r\\nPower Consumption 0.3W (Off Mode), 0.5W (DPMS)\\r\\nOperating Temperature 10 degree C- 40 degree C\\r\\nOperating System Compatibility Windows 10\\r\\nPart No F22T350FHW\\/LF22T350FHCXXK\\r\\nAccessories Power Cable Length: 1.5 m, HDMI Cable: Yes\\r\\nDisplay Size (Inch) 22\\r\\nShape Flat\\r\\nDisplay Type FHD LED\\r\\nPanel Type IPS\\r\\nDisplay Resolution 1920x1080 (WxH) FHD\\r\\nAspect Ratio 16:9\\r\\nBrightness (cd\\/m2) 250cd\\/m2\\r\\nContrast Ratio (TCR\\/DCR) 1000:1 (Typical)\\r\\nRefresh Rate (Hz) 75Hz\\r\\nAdaptive-Sync Technology Yes (AMD)\\r\\nBit Depth \\/ Color Support 16.7 million\\r\\nResponse Time (ms) 5ms\\r\\nHorizontal Viewing Angle 178 Degree\",\"image\":\"[\\\"2021-03-11-604a1b379c33c.png\\\"]\",\"price\":13500,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":13500}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:29:27.000000Z\",\"updated_at\":\"2021-03-11T13:29:27.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Black\",\"price\":13500}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-13 12:00:49', '2021-03-13 12:00:49', 'null', 'pc', 1),
(11, 21, 100010, 1290.00, '{\"id\":21,\"name\":\"i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone\",\"description\":\"Product details of i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone\\r\\nDrive: 15mm\\r\\nImpedance: 32 OHM\\r\\nBluetooth version: Bluetooth v4.1+EDR\\r\\nBluetooth frequency: 2.4GHz\\r\\nPower level: CLASS II, output power: 30mW\\r\\nBluetooth Distance: obstacle free 10 meters\\r\\nDrive: 15mm\\r\\nImpedance: 32 OHM\\r\\nBluetooth version: Bluetooth v4.1+EDR\\r\\nBluetooth frequency: 2.4GHz\\r\\nPower level: CLASS II, output power: 30mW\\r\\n\\r\\nBluetooth Distance: obstacle free 10 meters\",\"image\":\"[\\\"2021-03-11-604a197ece275.png\\\"]\",\"price\":1290,\"variations\":\"[{\\\"type\\\":\\\"White\\\",\\\"price\\\":1290}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:22:06.000000Z\",\"updated_at\":\"2021-03-11T13:22:06.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"White\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"White\",\"price\":1290}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-14 09:28:05', '2021-03-14 09:28:05', 'null', 'pc', 1),
(12, 6, 100011, 2200.00, '{\"id\":6,\"name\":\"Silk Saree\",\"description\":null,\"image\":\"[\\\"2021-03-11-604a007788f01.png\\\",\\\"2021-03-11-604a0077a51cc.png\\\",\\\"2021-03-11-604a0077c6d57.png\\\"]\",\"price\":2300,\"variations\":\"[{\\\"type\\\":\\\"white\\\",\\\"price\\\":2200},{\\\"type\\\":\\\"blue\\\",\\\"price\\\":2300}]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-11T11:35:19.000000Z\",\"updated_at\":\"2021-03-11T11:35:19.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"17\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"white\\\",\\\"blue\\\"]}]\",\"discount\":30,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"white\",\"price\":2200}]', 30.00, 'discount_on_product', 1, 44.00, '2021-03-14 11:43:43', '2021-03-14 11:43:43', 'null', 'pc', 1),
(13, 21, 100011, 1290.00, '{\"id\":21,\"name\":\"i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone\",\"description\":\"Product details of i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone\\r\\nDrive: 15mm\\r\\nImpedance: 32 OHM\\r\\nBluetooth version: Bluetooth v4.1+EDR\\r\\nBluetooth frequency: 2.4GHz\\r\\nPower level: CLASS II, output power: 30mW\\r\\nBluetooth Distance: obstacle free 10 meters\\r\\nDrive: 15mm\\r\\nImpedance: 32 OHM\\r\\nBluetooth version: Bluetooth v4.1+EDR\\r\\nBluetooth frequency: 2.4GHz\\r\\nPower level: CLASS II, output power: 30mW\\r\\n\\r\\nBluetooth Distance: obstacle free 10 meters\",\"image\":\"[\\\"2021-03-11-604a197ece275.png\\\"]\",\"price\":1290,\"variations\":\"[{\\\"type\\\":\\\"White\\\",\\\"price\\\":1290}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:22:06.000000Z\",\"updated_at\":\"2021-03-11T13:22:06.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"White\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"White\",\"price\":1290}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-14 11:43:43', '2021-03-14 11:43:43', 'null', 'pc', 1),
(14, 3, 100012, 120.00, '{\"id\":3,\"name\":\"Grey sneakers\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2021-03-13-604c951078cbc.png\\\",\\\"2021-03-13-604c9510b8fbd.png\\\"]\",\"price\":120,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-11T09:43:41.000000Z\",\"updated_at\":\"2021-03-13T10:33:52.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1},{\\\"id\\\":\\\"11\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":3,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 3.00, 'discount_on_product', 1, 2.40, '2021-03-14 11:44:59', '2021-03-14 11:44:59', 'null', 'pc', 1),
(15, 13, 100013, 1.00, '{\"id\":13,\"name\":\"Black Analog Watch For Men\",\"description\":\"Product details of Black Analog Watch For Men\\r\\nThe watch has edgy and affordable design. Crafted from a rich quality material, this watch for men is light in weight and long lasting too. You can show it off with your casual & formal attires to grab compliments from everyone around. Being easily Affordable to make it sit right on your wrist, it can add a physical dimension to your Style. There\\u2019s a way to spruce up your casual outfit, and that\'s to jazz it up with this classy men\'s watch. This watch is specially designed for men who believe in a trendy and fashionable life. This watch is highly used for any occasion & highly recommendable to young people\",\"image\":\"[\\\"2021-03-11-604a05bf9d5f5.png\\\"]\",\"price\":290,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":1}]\",\"tax\":1,\"status\":1,\"created_at\":\"2021-03-11T11:57:51.000000Z\",\"updated_at\":\"2021-03-11T12:01:03.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"20\\\",\\\"position\\\":1},{\\\"id\\\":\\\"24\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":1,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Black\",\"price\":1}]', 0.01, 'discount_on_product', 51, 0.01, '2021-03-14 18:06:55', '2021-03-14 18:06:55', 'null', 'pc', 1),
(16, 3, 100014, 120.00, '{\"id\":3,\"name\":\"Grey sneakers\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2021-03-13-604c951078cbc.png\\\",\\\"2021-03-13-604c9510b8fbd.png\\\"]\",\"price\":120,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-11T09:43:41.000000Z\",\"updated_at\":\"2021-03-13T10:33:52.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1},{\\\"id\\\":\\\"11\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":3,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 3.00, 'discount_on_product', 1, 2.40, '2021-03-15 04:02:26', '2021-03-15 04:02:26', 'null', 'pc', 1),
(17, 23, 100015, 13500.00, '{\"id\":23,\"name\":\"Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK\",\"description\":\"<p><strong>Product details of Samsung T35<\\/strong> <\\/p><p>22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK Model Samsung T35 Series Professional Power Consumption 0.3W (Off Mode), 0.5W (DPMS) Operating Temperature 10 degree C- 40 degree C Operating System Compatibility Windows 10 Part No F22T350FHW\\/LF22T350FHCXXK Accessories Power Cable Length: 1.5 m, HDMI Cable: Yes Display Size (Inch) 22 Shape Flat Display Type FHD LED Panel Type IPS Display Resolution 1920x1080 (WxH) FHD Aspect Ratio 16:9 Brightness (cd\\/m2) 250cd\\/m2 Contrast Ratio (TCR\\/DCR) 1000:1 (Typical) Refresh Rate (Hz) 75Hz Adaptive-Sync Technology Yes (AMD) Bit Depth \\/ Color Support 16.7 million Response Time (ms) 5ms Horizontal Viewing Angle 178 Degree<\\/p>\",\"image\":\"[\\\"2021-03-11-604a1b379c33c.png\\\"]\",\"price\":13500,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":13500}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:29:27.000000Z\",\"updated_at\":\"2021-03-13T16:47:42.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Black\",\"price\":13500}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-20 09:42:44', '2021-03-20 09:42:44', 'null', 'pc', 1),
(18, 23, 100016, 13500.00, '{\"id\":23,\"name\":\"Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK\",\"description\":\"<p><strong>Product details of Samsung T35<\\/strong> <\\/p><p>22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK Model Samsung T35 Series Professional Power Consumption 0.3W (Off Mode), 0.5W (DPMS) Operating Temperature 10 degree C- 40 degree C Operating System Compatibility Windows 10 Part No F22T350FHW\\/LF22T350FHCXXK Accessories Power Cable Length: 1.5 m, HDMI Cable: Yes Display Size (Inch) 22 Shape Flat Display Type FHD LED Panel Type IPS Display Resolution 1920x1080 (WxH) FHD Aspect Ratio 16:9 Brightness (cd\\/m2) 250cd\\/m2 Contrast Ratio (TCR\\/DCR) 1000:1 (Typical) Refresh Rate (Hz) 75Hz Adaptive-Sync Technology Yes (AMD) Bit Depth \\/ Color Support 16.7 million Response Time (ms) 5ms Horizontal Viewing Angle 178 Degree<\\/p>\",\"image\":\"[\\\"2021-03-11-604a1b379c33c.png\\\"]\",\"price\":13500,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":13500}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:29:27.000000Z\",\"updated_at\":\"2021-03-13T16:47:42.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Black\",\"price\":13500}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-20 16:05:43', '2021-03-20 16:05:43', 'null', 'pc', 1),
(19, 9, 100017, 1680.00, '{\"id\":9,\"name\":\"Philips\",\"description\":\"<p>Product details of Philips BT1210\\/15 Professional Beard Trimmer Series 1000 for Men 1-Year International Seller Warranty Durable consistent performance with DuraPower Stainless Steel Blades for long-lasting sharpness DuraPower technology for a longer-lasting battery life Up to 30 minutes of cordless use after 8 hours charging USB charging for convenient use Choose 5mm long beard, short 3-day stubble, or zero trim look Light on the device indicates when the battery is charging Skin-friendly blades for smooth skin The travel lock prevents the trimmer from accidentally starting Detachable head for easy cleaning Ergonomic design for easier handling worldwide voltage, no oil needed<\\/p>\",\"image\":\"[\\\"2021-03-13-604c8e16a3347.png\\\"]\",\"price\":1680,\"variations\":\"[{\\\"type\\\":\\\"GreyColor\\\",\\\"price\\\":1680}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:45:19.000000Z\",\"updated_at\":\"2021-03-13T10:04:06.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Grey Color\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"GreyColor\",\"price\":1680}]', 0.00, 'discount_on_product', 2, 0.00, '2021-03-21 11:06:47', '2021-03-21 11:06:47', 'null', 'pc', 1),
(20, 25, 100018, 2300.00, '{\"id\":25,\"name\":\"barbie doll\",\"description\":\"<p><strong>The doll is one in a million. this doll will touch your heart<\\/strong><\\/p>\",\"image\":\"[\\\"2021-03-21-60572669e889d.png\\\"]\",\"price\":2300,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T10:54:50.000000Z\",\"updated_at\":\"2021-03-21T10:56:41.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"29\\\",\\\"position\\\":1},{\\\"id\\\":\\\"30\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":10,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 10.00, 'discount_on_product', 1, 46.00, '2021-03-21 11:10:02', '2021-03-21 11:10:02', 'null', 'pc', 1),
(21, 20, 100019, 1250.00, '{\"id\":20,\"name\":\"Panasonic Automatic Heavy Weight Dry Iron\",\"description\":\"Product details of Panasonic Automatic Heavy Weight Dry Iron\\r\\nPressing Power Heavy Dry Iron\\r\\nNon-Stick Coating Sole Plate\\r\\nDeluxe Metal Cover\\r\\nBig Thermostatic Pilot Lamp\\r\\nHeat-Resistant Cotton Cord\\r\\nEasy Operation 6 Temperature Settings\\r\\nBig Metal Temperature Setting Guide\\r\\nWeight 2 to 2.5 KG\\r\\nProduct Origin China\",\"image\":\"[\\\"2021-03-11-604a190a851c8.png\\\"]\",\"price\":1250,\"variations\":\"[{\\\"type\\\":\\\"White\\\",\\\"price\\\":1250}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:20:10.000000Z\",\"updated_at\":\"2021-03-11T13:20:10.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"White\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"White\",\"price\":1250}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-21 11:11:39', '2021-03-21 11:11:39', 'null', 'pc', 1),
(22, 5, 100020, 27990.00, '{\"id\":5,\"name\":\"Sera Laptop\",\"description\":\"<p>Product details of OPPO F15 Smartphone 6.4inches - 8GB RAM - 128GB ROM - 48MP Camera NO RETURN applicable if the seal is broken Operating System: ColorOS 6.1.2, based on Android 9 Processor: MTK P70 GPU: MTK MT6771V GPU: ARM Mali G72 MP3 900MHz Battery: 4000mAh (TYP) , 3900mAh (MIN) RAM: 8GB Storage: 128GB VOOC Flash Charge: VOOC 3.0 Display Size: 16.2cm(6.4\'\') Touchscreen:Multi-touch, Capacitive Screen Resolution: 2400 by 1080 pixels at 408 ppi Colors: 16 million colors,Screen Ratio: 90.7% Camera Sensor: 48MP &amp; 8MP &amp; 2MP &amp; 2MP Front Sensor: 16-megapixel Aperture: Front F2.0 Rear: Main f\\/1.79; Wide Angle f\\/2.25; Portrait &amp; Mono f\\/2.4 Rear: Main 1\\/2.25\', 0.8um Secondary Wide Angle 1\\/4\', 1.12um 2M 1\\/5\', 1.75um Video Front Camera: 1080P\\/720P@30fps Video Rear Camera: 1080P @30fps, 720P@30fps Frequencies: GSM: 850\\/900\\/1800\\/1900MHz WCDMA: Bands 1\\/5\\/8 FDD-LTE: Bands 1\\/3\\/5\\/8 TD-LTE: Bands 38\\/40\\/41 SIM Card Type: Nano-SIM \\/ Nano-USIM GPS: Built-in GPS; supports A-GPS, Beidou, Glonass Bluetooth: 4.2 OTG: Supported NFC: No Magnetic Induction Sensor,Light Sensor,Proximity Sensor,G-Sensor\\/Acceleration Sensor Gyroscope,Pedometer Height: 160.2mm Width: 73.3mm Thickness: 7.9mm Weight: Approx. 172g<\\/p>\",\"image\":\"[\\\"2021-03-13-604c958c75834.png\\\",\\\"2021-03-13-604c958c8a4fd.png\\\"]\",\"price\":27990,\"variations\":\"[{\\\"type\\\":\\\"6.4\\\",\\\"price\\\":27990}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:04:54.000000Z\",\"updated_at\":\"2021-03-13T10:35:56.000000Z\",\"attributes\":\"[\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"5\\\",\\\"position\\\":1},{\\\"id\\\":\\\"16\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"6.4\\\"]}]\",\"discount\":1,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"6.4\",\"price\":27990}]', 279.90, 'discount_on_product', 1, 0.00, '2021-03-21 11:12:55', '2021-03-21 11:12:55', 'null', 'pc', 1),
(23, 14, 100021, 1299.00, '{\"id\":14,\"name\":\"Stainless Steel mens watch Black\",\"description\":\"<p>Product details of Stainless Steel mens watch Black Style: Fashion &amp; Casual Movement: QUARTZ Clasp Type: Folding Clasp with Safety Water Resistance Depth: No waterproof Case Material: Stainless Steel Band Length: 40cm Case Thickness: 10mm Band Width: 20mm Case Shape: Round Item Type: Quartz WristwatchesBand Material Type: Stainless Steel Feature: Shock Resistant Dial Diameter: 40mm Dial Window Material Type: Glass<\\/p>\",\"image\":\"[\\\"2021-03-11-604a07360dcf0.png\\\",\\\"2021-03-11-604a07361fd92.png\\\"]\",\"price\":1299,\"variations\":\"[{\\\"type\\\":\\\"white\\\",\\\"price\\\":1299}]\",\"tax\":1,\"status\":1,\"created_at\":\"2021-03-11T12:04:06.000000Z\",\"updated_at\":\"2021-03-13T10:07:36.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"20\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"white\\\"]}]\",\"discount\":1,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"white\",\"price\":1299}]', 12.99, 'discount_on_product', 1, 12.99, '2021-03-21 11:15:52', '2021-03-21 11:15:52', 'null', 'pc', 1),
(24, 13, 100022, 1.00, '{\"id\":13,\"name\":\"Black Analog Watch For Men\",\"description\":\"Product details of Black Analog Watch For Men\\r\\nThe watch has edgy and affordable design. Crafted from a rich quality material, this watch for men is light in weight and long lasting too. You can show it off with your casual & formal attires to grab compliments from everyone around. Being easily Affordable to make it sit right on your wrist, it can add a physical dimension to your Style. There\\u2019s a way to spruce up your casual outfit, and that\'s to jazz it up with this classy men\'s watch. This watch is specially designed for men who believe in a trendy and fashionable life. This watch is highly used for any occasion & highly recommendable to young people\",\"image\":\"[\\\"2021-03-11-604a05bf9d5f5.png\\\"]\",\"price\":290,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":1}]\",\"tax\":1,\"status\":1,\"created_at\":\"2021-03-11T11:57:51.000000Z\",\"updated_at\":\"2021-03-11T12:01:03.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"20\\\",\\\"position\\\":1},{\\\"id\\\":\\\"24\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":1,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Black\",\"price\":1}]', 0.01, 'discount_on_product', 1, 0.01, '2021-03-21 11:23:30', '2021-03-21 11:23:30', 'null', 'pc', 1),
(25, 12, 100022, 45000.00, '{\"id\":12,\"name\":\"DSLR Camera\",\"description\":null,\"image\":\"[\\\"2021-03-11-604a043dd0c65.png\\\",\\\"2021-03-11-604a043dd967c.png\\\"]\",\"price\":45000,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:51:25.000000Z\",\"updated_at\":\"2021-03-11T11:51:25.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-21 11:23:30', '2021-03-21 11:23:30', 'null', 'pc', 1),
(26, 26, 100023, 1200.00, '{\"id\":26,\"name\":\"women leggings\",\"description\":\"<p>Women leggings are cool to wear in the summer<\\/p>\",\"image\":\"[\\\"2021-03-21-60572f3c3030e.png\\\",\\\"2021-03-21-60572f3c47987.png\\\",\\\"2021-03-21-60572f3c5de46.png\\\"]\",\"price\":1230,\"variations\":\"[{\\\"type\\\":\\\"black-32\\\",\\\"price\\\":1200},{\\\"type\\\":\\\"black-28\\\",\\\"price\\\":1100},{\\\"type\\\":\\\"blue-32\\\",\\\"price\\\":1220},{\\\"type\\\":\\\"blue-28\\\",\\\"price\\\":1120}]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T11:34:20.000000Z\",\"updated_at\":\"2021-03-21T11:34:20.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"17\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"black\\\",\\\"blue\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"32\\\",\\\"28\\\"]}]\",\"discount\":50,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"black-32\",\"price\":1200}]', 50.00, 'discount_on_product', 2, 24.00, '2021-03-21 11:35:27', '2021-03-21 11:35:27', 'null', 'pc', 1),
(27, 26, 100023, 1120.00, '{\"id\":26,\"name\":\"women leggings\",\"description\":\"<p>Women leggings are cool to wear in the summer<\\/p>\",\"image\":\"[\\\"2021-03-21-60572f3c3030e.png\\\",\\\"2021-03-21-60572f3c47987.png\\\",\\\"2021-03-21-60572f3c5de46.png\\\"]\",\"price\":1230,\"variations\":\"[{\\\"type\\\":\\\"black-32\\\",\\\"price\\\":1200},{\\\"type\\\":\\\"black-28\\\",\\\"price\\\":1100},{\\\"type\\\":\\\"blue-32\\\",\\\"price\\\":1220},{\\\"type\\\":\\\"blue-28\\\",\\\"price\\\":1120}]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T11:34:20.000000Z\",\"updated_at\":\"2021-03-21T11:34:20.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"17\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"black\\\",\\\"blue\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"32\\\",\\\"28\\\"]}]\",\"discount\":50,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"blue-28\",\"price\":1120}]', 50.00, 'discount_on_product', 2, 22.40, '2021-03-21 11:35:27', '2021-03-21 11:35:27', 'null', 'pc', 1),
(28, 26, 100023, 1220.00, '{\"id\":26,\"name\":\"women leggings\",\"description\":\"<p>Women leggings are cool to wear in the summer<\\/p>\",\"image\":\"[\\\"2021-03-21-60572f3c3030e.png\\\",\\\"2021-03-21-60572f3c47987.png\\\",\\\"2021-03-21-60572f3c5de46.png\\\"]\",\"price\":1230,\"variations\":\"[{\\\"type\\\":\\\"black-32\\\",\\\"price\\\":1200},{\\\"type\\\":\\\"black-28\\\",\\\"price\\\":1100},{\\\"type\\\":\\\"blue-32\\\",\\\"price\\\":1220},{\\\"type\\\":\\\"blue-28\\\",\\\"price\\\":1120}]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T11:34:20.000000Z\",\"updated_at\":\"2021-03-21T11:34:20.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"17\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"black\\\",\\\"blue\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"32\\\",\\\"28\\\"]}]\",\"discount\":50,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"blue-32\",\"price\":1220}]', 50.00, 'discount_on_product', 2, 24.40, '2021-03-21 11:35:27', '2021-03-21 11:35:27', 'null', 'pc', 1),
(29, 6, 100024, 2200.00, '{\"id\":6,\"name\":\"Silk Saree\",\"description\":null,\"image\":\"[\\\"2021-03-11-604a007788f01.png\\\",\\\"2021-03-11-604a0077a51cc.png\\\",\\\"2021-03-11-604a0077c6d57.png\\\"]\",\"price\":2300,\"variations\":\"[{\\\"type\\\":\\\"white\\\",\\\"price\\\":2200},{\\\"type\\\":\\\"blue\\\",\\\"price\\\":2300}]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-11T11:35:19.000000Z\",\"updated_at\":\"2021-03-11T11:35:19.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"17\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"white\\\",\\\"blue\\\"]}]\",\"discount\":30,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"white\",\"price\":2200}]', 30.00, 'discount_on_product', 1, 44.00, '2021-03-22 10:45:52', '2021-03-22 10:45:52', 'null', 'pc', 1),
(30, 9, 100024, 1680.00, '{\"id\":9,\"name\":\"Philips\",\"description\":\"<p>Product details of Philips BT1210\\/15 Professional Beard Trimmer Series 1000 for Men 1-Year International Seller Warranty Durable consistent performance with DuraPower Stainless Steel Blades for long-lasting sharpness DuraPower technology for a longer-lasting battery life Up to 30 minutes of cordless use after 8 hours charging USB charging for convenient use Choose 5mm long beard, short 3-day stubble, or zero trim look Light on the device indicates when the battery is charging Skin-friendly blades for smooth skin The travel lock prevents the trimmer from accidentally starting Detachable head for easy cleaning Ergonomic design for easier handling worldwide voltage, no oil needed<\\/p>\",\"image\":\"[\\\"2021-03-13-604c8e16a3347.png\\\"]\",\"price\":1680,\"variations\":\"[{\\\"type\\\":\\\"GreyColor\\\",\\\"price\\\":1680}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:45:19.000000Z\",\"updated_at\":\"2021-03-13T10:04:06.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Grey Color\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"GreyColor\",\"price\":1680}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-22 10:45:52', '2021-03-22 10:45:52', 'null', 'pc', 1),
(31, 26, 100025, 1220.00, '{\"id\":26,\"name\":\"women leggings\",\"description\":\"<p>Women leggings are cool to wear in the summer<\\/p>\",\"image\":\"[\\\"2021-03-21-60572f3c3030e.png\\\",\\\"2021-03-21-60572f3c47987.png\\\",\\\"2021-03-21-60572f3c5de46.png\\\"]\",\"price\":1230,\"variations\":\"[{\\\"type\\\":\\\"black-32\\\",\\\"price\\\":1200},{\\\"type\\\":\\\"black-28\\\",\\\"price\\\":1100},{\\\"type\\\":\\\"blue-32\\\",\\\"price\\\":1220},{\\\"type\\\":\\\"blue-28\\\",\\\"price\\\":1120}]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T11:34:20.000000Z\",\"updated_at\":\"2021-03-21T11:34:20.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"17\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"black\\\",\\\"blue\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"32\\\",\\\"28\\\"]}]\",\"discount\":50,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"blue-32\",\"price\":1220}]', 50.00, 'discount_on_product', 1, 24.40, '2021-03-22 19:19:57', '2021-03-22 19:19:57', 'null', 'pc', 1),
(32, 27, 100026, 300.00, '{\"id\":27,\"name\":\"Checked Shirt\",\"description\":\"<p>High Quality <\\/p>\",\"image\":\"[\\\"2021-03-22-6058f2a46423a.png\\\"]\",\"price\":300,\"variations\":\"[{\\\"type\\\":\\\"Red-XL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Red-L\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Red-XXL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Blue-XL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Blue-L\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Blue-XXL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Black-XL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Black-L\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Black-XXL\\\",\\\"price\\\":300}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-22T19:40:20.000000Z\",\"updated_at\":\"2021-03-22T19:40:20.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\"Blue\\\",\\\"Black\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"XL\\\",\\\"L\\\",\\\"XXL\\\"]}]\",\"discount\":250,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Blue-XXL\",\"price\":300}]', 250.00, 'discount_on_product', 2, 0.00, '2021-03-22 19:41:40', '2021-03-22 19:41:40', 'null', 'pc', 1),
(33, 5, 100027, 27990.00, '{\"id\":5,\"name\":\"Sera Laptop\",\"description\":\"<p>Product details of OPPO F15 Smartphone 6.4inches - 8GB RAM - 128GB ROM - 48MP Camera NO RETURN applicable if the seal is broken Operating System: ColorOS 6.1.2, based on Android 9 Processor: MTK P70 GPU: MTK MT6771V GPU: ARM Mali G72 MP3 900MHz Battery: 4000mAh (TYP) , 3900mAh (MIN) RAM: 8GB Storage: 128GB VOOC Flash Charge: VOOC 3.0 Display Size: 16.2cm(6.4\'\') Touchscreen:Multi-touch, Capacitive Screen Resolution: 2400 by 1080 pixels at 408 ppi Colors: 16 million colors,Screen Ratio: 90.7% Camera Sensor: 48MP &amp; 8MP &amp; 2MP &amp; 2MP Front Sensor: 16-megapixel Aperture: Front F2.0 Rear: Main f\\/1.79; Wide Angle f\\/2.25; Portrait &amp; Mono f\\/2.4 Rear: Main 1\\/2.25\', 0.8um Secondary Wide Angle 1\\/4\', 1.12um 2M 1\\/5\', 1.75um Video Front Camera: 1080P\\/720P@30fps Video Rear Camera: 1080P @30fps, 720P@30fps Frequencies: GSM: 850\\/900\\/1800\\/1900MHz WCDMA: Bands 1\\/5\\/8 FDD-LTE: Bands 1\\/3\\/5\\/8 TD-LTE: Bands 38\\/40\\/41 SIM Card Type: Nano-SIM \\/ Nano-USIM GPS: Built-in GPS; supports A-GPS, Beidou, Glonass Bluetooth: 4.2 OTG: Supported NFC: No Magnetic Induction Sensor,Light Sensor,Proximity Sensor,G-Sensor\\/Acceleration Sensor Gyroscope,Pedometer Height: 160.2mm Width: 73.3mm Thickness: 7.9mm Weight: Approx. 172g<\\/p>\",\"image\":\"[\\\"2021-03-13-604c958c75834.png\\\",\\\"2021-03-13-604c958c8a4fd.png\\\"]\",\"price\":27990,\"variations\":\"[{\\\"type\\\":\\\"6.4\\\",\\\"price\\\":27990}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:04:54.000000Z\",\"updated_at\":\"2021-03-13T10:35:56.000000Z\",\"attributes\":\"[\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"5\\\",\\\"position\\\":1},{\\\"id\\\":\\\"16\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"6.4\\\"]}]\",\"discount\":1,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"6.4\",\"price\":27990}]', 279.90, 'discount_on_product', 1, 0.00, '2021-03-22 20:53:55', '2021-03-22 20:53:55', 'null', 'pc', 1),
(34, 25, 100027, 2300.00, '{\"id\":25,\"name\":\"barbie doll\",\"description\":\"<p><strong>The doll is one in a million. this doll will touch your heart<\\/strong><\\/p>\",\"image\":\"[\\\"2021-03-21-60572669e889d.png\\\"]\",\"price\":2300,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T10:54:50.000000Z\",\"updated_at\":\"2021-03-21T10:56:41.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"29\\\",\\\"position\\\":1},{\\\"id\\\":\\\"30\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":10,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 10.00, 'discount_on_product', 3, 46.00, '2021-03-22 20:53:55', '2021-03-22 20:53:55', 'null', 'pc', 1),
(35, 10, 100028, 130.00, '{\"id\":10,\"name\":\"Red T-shirt\",\"description\":null,\"image\":\"[\\\"2021-03-11-604a030050ceb.png\\\",\\\"2021-03-11-604a030079fd0.png\\\"]\",\"price\":130,\"variations\":\"[]\",\"tax\":1,\"status\":1,\"created_at\":\"2021-03-11T11:46:08.000000Z\",\"updated_at\":\"2021-03-11T11:46:08.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"7\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":12,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 12.00, 'discount_on_product', 2, 1.30, '2021-03-22 21:53:30', '2021-03-22 21:53:30', 'null', 'pc', 1),
(36, 25, 100028, 2300.00, '{\"id\":25,\"name\":\"barbie doll\",\"description\":\"<p><strong>The doll is one in a million. this doll will touch your heart<\\/strong><\\/p>\",\"image\":\"[\\\"2021-03-21-60572669e889d.png\\\"]\",\"price\":2300,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T10:54:50.000000Z\",\"updated_at\":\"2021-03-21T10:56:41.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"29\\\",\\\"position\\\":1},{\\\"id\\\":\\\"30\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":10,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 10.00, 'discount_on_product', 2, 46.00, '2021-03-22 21:53:30', '2021-03-22 21:53:30', 'null', 'pc', 1),
(37, 5, 100029, 27990.00, '{\"id\":5,\"name\":\"Sera Laptop\",\"description\":\"<p>Product details of OPPO F15 Smartphone 6.4inches - 8GB RAM - 128GB ROM - 48MP Camera NO RETURN applicable if the seal is broken Operating System: ColorOS 6.1.2, based on Android 9 Processor: MTK P70 GPU: MTK MT6771V GPU: ARM Mali G72 MP3 900MHz Battery: 4000mAh (TYP) , 3900mAh (MIN) RAM: 8GB Storage: 128GB VOOC Flash Charge: VOOC 3.0 Display Size: 16.2cm(6.4\'\') Touchscreen:Multi-touch, Capacitive Screen Resolution: 2400 by 1080 pixels at 408 ppi Colors: 16 million colors,Screen Ratio: 90.7% Camera Sensor: 48MP &amp; 8MP &amp; 2MP &amp; 2MP Front Sensor: 16-megapixel Aperture: Front F2.0 Rear: Main f\\/1.79; Wide Angle f\\/2.25; Portrait &amp; Mono f\\/2.4 Rear: Main 1\\/2.25\', 0.8um Secondary Wide Angle 1\\/4\', 1.12um 2M 1\\/5\', 1.75um Video Front Camera: 1080P\\/720P@30fps Video Rear Camera: 1080P @30fps, 720P@30fps Frequencies: GSM: 850\\/900\\/1800\\/1900MHz WCDMA: Bands 1\\/5\\/8 FDD-LTE: Bands 1\\/3\\/5\\/8 TD-LTE: Bands 38\\/40\\/41 SIM Card Type: Nano-SIM \\/ Nano-USIM GPS: Built-in GPS; supports A-GPS, Beidou, Glonass Bluetooth: 4.2 OTG: Supported NFC: No Magnetic Induction Sensor,Light Sensor,Proximity Sensor,G-Sensor\\/Acceleration Sensor Gyroscope,Pedometer Height: 160.2mm Width: 73.3mm Thickness: 7.9mm Weight: Approx. 172g<\\/p>\",\"image\":\"[\\\"2021-03-13-604c958c75834.png\\\",\\\"2021-03-13-604c958c8a4fd.png\\\"]\",\"price\":27990,\"variations\":\"[{\\\"type\\\":\\\"6.4\\\",\\\"price\\\":27990}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:04:54.000000Z\",\"updated_at\":\"2021-03-13T10:35:56.000000Z\",\"attributes\":\"[\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"5\\\",\\\"position\\\":1},{\\\"id\\\":\\\"16\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"6.4\\\"]}]\",\"discount\":1,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"6.4\",\"price\":27990}]', 279.90, 'discount_on_product', 1, 0.00, '2021-03-23 00:15:48', '2021-03-23 00:15:48', 'null', 'pc', 1),
(38, 23, 100029, 13500.00, '{\"id\":23,\"name\":\"Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK\",\"description\":\"<p><strong>Product details of Samsung T35<\\/strong> <\\/p><p>22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK Model Samsung T35 Series Professional Power Consumption 0.3W (Off Mode), 0.5W (DPMS) Operating Temperature 10 degree C- 40 degree C Operating System Compatibility Windows 10 Part No F22T350FHW\\/LF22T350FHCXXK Accessories Power Cable Length: 1.5 m, HDMI Cable: Yes Display Size (Inch) 22 Shape Flat Display Type FHD LED Panel Type IPS Display Resolution 1920x1080 (WxH) FHD Aspect Ratio 16:9 Brightness (cd\\/m2) 250cd\\/m2 Contrast Ratio (TCR\\/DCR) 1000:1 (Typical) Refresh Rate (Hz) 75Hz Adaptive-Sync Technology Yes (AMD) Bit Depth \\/ Color Support 16.7 million Response Time (ms) 5ms Horizontal Viewing Angle 178 Degree<\\/p>\",\"image\":\"[\\\"2021-03-11-604a1b379c33c.png\\\"]\",\"price\":13500,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":13500}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:29:27.000000Z\",\"updated_at\":\"2021-03-13T16:47:42.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Black\",\"price\":13500}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-23 00:15:48', '2021-03-23 00:15:48', 'null', 'pc', 1),
(39, 17, 100030, 122.00, '{\"id\":17,\"name\":\"uisi earphones\",\"description\":null,\"image\":\"[\\\"2021-03-11-604a119b325e0.png\\\",\\\"2021-03-11-604a119b415b6.png\\\"]\",\"price\":122,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T12:48:27.000000Z\",\"updated_at\":\"2021-03-11T12:48:27.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":null,\"price\":null}]', 0.00, 'discount_on_product', 3, 0.00, '2021-03-23 02:21:20', '2021-03-23 02:21:20', 'null', 'pc', 1),
(40, 27, 100030, 300.00, '{\"id\":27,\"name\":\"Checked Shirt\",\"description\":\"<p>High Quality <\\/p>\",\"image\":\"[\\\"2021-03-22-6058f2a46423a.png\\\"]\",\"price\":300,\"variations\":\"[{\\\"type\\\":\\\"Red-XL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Red-L\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Red-XXL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Blue-XL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Blue-L\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Blue-XXL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Black-XL\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Black-L\\\",\\\"price\\\":300},{\\\"type\\\":\\\"Black-XXL\\\",\\\"price\\\":300}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-22T19:40:20.000000Z\",\"updated_at\":\"2021-03-22T22:34:58.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\"Blue\\\",\\\"Black\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"XL\\\",\\\"L\\\",\\\"XXL\\\"]}]\",\"discount\":250,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"Blue-XL\",\"price\":300}]', 250.00, 'discount_on_product', 2, 0.00, '2021-03-23 02:21:20', '2021-03-23 02:21:20', 'null', 'pc', 1);
INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `price`, `product_details`, `variation`, `discount_on_product`, `discount_type`, `quantity`, `tax_amount`, `created_at`, `updated_at`, `variant`, `unit`, `is_stock_decreased`) VALUES
(41, 21, 100030, 1290.00, '{\"id\":21,\"name\":\"i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone\",\"description\":\"Product details of i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone\\r\\nDrive: 15mm\\r\\nImpedance: 32 OHM\\r\\nBluetooth version: Bluetooth v4.1+EDR\\r\\nBluetooth frequency: 2.4GHz\\r\\nPower level: CLASS II, output power: 30mW\\r\\nBluetooth Distance: obstacle free 10 meters\\r\\nDrive: 15mm\\r\\nImpedance: 32 OHM\\r\\nBluetooth version: Bluetooth v4.1+EDR\\r\\nBluetooth frequency: 2.4GHz\\r\\nPower level: CLASS II, output power: 30mW\\r\\n\\r\\nBluetooth Distance: obstacle free 10 meters\",\"image\":\"[\\\"2021-03-11-604a197ece275.png\\\"]\",\"price\":1290,\"variations\":\"[{\\\"type\\\":\\\"White\\\",\\\"price\\\":1290}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:22:06.000000Z\",\"updated_at\":\"2021-03-11T13:22:06.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"White\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\"}', '[{\"type\":\"White\",\"price\":1290}]', 0.00, 'discount_on_product', 1, 0.00, '2021-03-23 02:21:20', '2021-03-23 02:21:20', 'null', 'pc', 1),
(42, 25, 100031, 2300.00, '{\"id\":25,\"name\":\"barbie doll\",\"description\":\"<p><strong>The doll is one in a million. this doll will touch your heart<\\/strong><\\/p>\",\"image\":\"[\\\"2021-03-21-60572669e889d.png\\\"]\",\"price\":2300,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T10:54:50.000000Z\",\"updated_at\":\"2021-04-18T17:52:11.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"29\\\",\\\"position\\\":1},{\\\"id\\\":\\\"30\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":10,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100}', '[{\"type\":null,\"price\":null,\"stock\":null}]', 10.00, 'discount_on_product', 1, 46.00, '2021-04-18 17:58:46', '2021-04-18 17:58:46', 'null', 'pc', 1),
(43, 23, 100031, 13500.00, '{\"id\":23,\"name\":\"Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK\",\"description\":\"<p><strong>Product details of Samsung T35<\\/strong><\\/p><p>22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK Model Samsung T35 Series Professional Power Consumption 0.3W (Off Mode), 0.5W (DPMS) Operating Temperature 10 degree C- 40 degree C Operating System Compatibility Windows 10 Part No F22T350FHW\\/LF22T350FHCXXK Accessories Power Cable Length: 1.5 m, HDMI Cable: Yes Display Size (Inch) 22 Shape Flat Display Type FHD LED Panel Type IPS Display Resolution 1920x1080 (WxH) FHD Aspect Ratio 16:9 Brightness (cd\\/m2) 250cd\\/m2 Contrast Ratio (TCR\\/DCR) 1000:1 (Typical) Refresh Rate (Hz) 75Hz Adaptive-Sync Technology Yes (AMD) Bit Depth \\/ Color Support 16.7 million Response Time (ms) 5ms Horizontal Viewing Angle 178 Degree<\\/p>\",\"image\":\"[\\\"2021-03-11-604a1b379c33c.png\\\"]\",\"price\":13500,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":13500,\\\"stock\\\":100}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:29:27.000000Z\",\"updated_at\":\"2021-04-18T17:52:30.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100}', '[{\"type\":\"Black\",\"price\":13500,\"stock\":100}]', 0.00, 'discount_on_product', 1, 0.00, '2021-04-18 17:58:46', '2021-04-18 17:58:46', 'null', 'pc', 1),
(44, 27, 100032, 300.00, '{\"id\":27,\"name\":\"Checked Shirt\",\"description\":\"<p>High Quality<\\/p>\",\"image\":\"[\\\"2021-03-22-6058f2a46423a.png\\\"]\",\"price\":300,\"variations\":\"[{\\\"type\\\":\\\"Red-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XXL\\\",\\\"price\\\":300,\\\"stock\\\":12}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-22T19:40:20.000000Z\",\"updated_at\":\"2021-04-18T17:51:21.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\" Blue\\\",\\\" Black\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"XL\\\",\\\" L\\\",\\\" XXL\\\"]}]\",\"discount\":250,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100,\"translations\":[]}', '[{\"type\":\"Red-XL\",\"price\":300,\"stock\":11}]', 250.00, 'discount_on_product', 1, 0.00, '2021-06-12 17:51:35', '2021-06-12 17:51:58', 'null', 'pc', 0),
(45, 27, 100033, 300.00, '{\"id\":27,\"name\":\"Checked Shirt\",\"description\":\"<p>High Quality<\\/p>\",\"image\":\"[\\\"2021-03-22-6058f2a46423a.png\\\"]\",\"price\":300,\"variations\":\"[{\\\"type\\\":\\\"Red-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XXL\\\",\\\"price\\\":300,\\\"stock\\\":12}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-22T19:40:20.000000Z\",\"updated_at\":\"2021-06-12T17:51:58.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\" Blue\\\",\\\" Black\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"XL\\\",\\\" L\\\",\\\" XXL\\\"]}]\",\"discount\":250,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100,\"translations\":[]}', '[{\"type\":\"Blue-XL\",\"price\":300,\"stock\":11}]', 250.00, 'discount_on_product', 1, 0.00, '2021-06-12 17:52:30', '2021-06-12 17:52:30', 'null', 'pc', 1),
(46, 27, 100033, 300.00, '{\"id\":27,\"name\":\"Checked Shirt\",\"description\":\"<p>High Quality<\\/p>\",\"image\":\"[\\\"2021-03-22-6058f2a46423a.png\\\"]\",\"price\":300,\"variations\":\"[{\\\"type\\\":\\\"Red-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XL\\\",\\\"price\\\":300,\\\"stock\\\":10},{\\\"type\\\":\\\"Blue-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XXL\\\",\\\"price\\\":300,\\\"stock\\\":12}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-22T19:40:20.000000Z\",\"updated_at\":\"2021-06-12T17:52:30.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\" Blue\\\",\\\" Black\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"XL\\\",\\\" L\\\",\\\" XXL\\\"]}]\",\"discount\":250,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":99,\"translations\":[]}', '[{\"type\":\"Black-XXL\",\"price\":300,\"stock\":12}]', 250.00, 'discount_on_product', 1, 0.00, '2021-06-12 17:52:31', '2021-06-12 17:52:31', 'null', 'pc', 1),
(47, 27, 100033, 300.00, '{\"id\":27,\"name\":\"Checked Shirt\",\"description\":\"<p>High Quality<\\/p>\",\"image\":\"[\\\"2021-03-22-6058f2a46423a.png\\\"]\",\"price\":300,\"variations\":\"[{\\\"type\\\":\\\"Red-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XL\\\",\\\"price\\\":300,\\\"stock\\\":10},{\\\"type\\\":\\\"Blue-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-22T19:40:20.000000Z\",\"updated_at\":\"2021-06-12T17:52:31.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\" Blue\\\",\\\" Black\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"XL\\\",\\\" L\\\",\\\" XXL\\\"]}]\",\"discount\":250,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":98,\"translations\":[]}', '[{\"type\":\"Red-L\",\"price\":300,\"stock\":11}]', 250.00, 'discount_on_product', 1, 0.00, '2021-06-12 17:52:31', '2021-06-12 17:52:31', 'null', 'pc', 1),
(48, 5, 100034, 27990.00, '{\"id\":5,\"name\":\"Sera Laptop\",\"description\":\"<p>Product details of OPPO F15 Smartphone 6.4inches - 8GB RAM - 128GB ROM - 48MP Camera NO RETURN applicable if the seal is broken Operating System: ColorOS 6.1.2, based on Android 9 Processor: MTK P70 GPU: MTK MT6771V GPU: ARM Mali G72 MP3 900MHz Battery: 4000mAh (TYP) , 3900mAh (MIN) RAM: 8GB Storage: 128GB VOOC Flash Charge: VOOC 3.0 Display Size: 16.2cm(6.4\'\') Touchscreen:Multi-touch, Capacitive Screen Resolution: 2400 by 1080 pixels at 408 ppi Colors: 16 million colors,Screen Ratio: 90.7% Camera Sensor: 48MP &amp; 8MP &amp; 2MP &amp; 2MP Front Sensor: 16-megapixel Aperture: Front F2.0 Rear: Main f\\/1.79; Wide Angle f\\/2.25; Portrait &amp; Mono f\\/2.4 Rear: Main 1\\/2.25\', 0.8um Secondary Wide Angle 1\\/4\', 1.12um 2M 1\\/5\', 1.75um Video Front Camera: 1080P\\/720P@30fps Video Rear Camera: 1080P @30fps, 720P@30fps Frequencies: GSM: 850\\/900\\/1800\\/1900MHz WCDMA: Bands 1\\/5\\/8 FDD-LTE: Bands 1\\/3\\/5\\/8 TD-LTE: Bands 38\\/40\\/41 SIM Card Type: Nano-SIM \\/ Nano-USIM GPS: Built-in GPS; supports A-GPS, Beidou, Glonass Bluetooth: 4.2 OTG: Supported NFC: No Magnetic Induction Sensor,Light Sensor,Proximity Sensor,G-Sensor\\/Acceleration Sensor Gyroscope,Pedometer Height: 160.2mm Width: 73.3mm Thickness: 7.9mm Weight: Approx. 172g<\\/p>\",\"image\":\"[\\\"2021-03-13-604c958c75834.png\\\",\\\"2021-03-13-604c958c8a4fd.png\\\"]\",\"price\":27990,\"variations\":\"[{\\\"type\\\":\\\"6.4\\\",\\\"price\\\":27990,\\\"stock\\\":1000}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T11:04:54.000000Z\",\"updated_at\":\"2021-04-18T17:55:39.000000Z\",\"attributes\":\"[\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"5\\\",\\\"position\\\":1},{\\\"id\\\":\\\"16\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"6.4\\\"]}]\",\"discount\":1,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":1000,\"translations\":[]}', '[{\"type\":\"6.4\",\"price\":27990,\"stock\":1000}]', 279.90, 'discount_on_product', 1, 0.00, '2021-06-12 17:53:09', '2021-06-12 18:15:18', 'null', 'pc', 0),
(49, 3, 100035, 120.00, '{\"id\":3,\"name\":\"Grey sneakers\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2021-03-13-604c951078cbc.png\\\",\\\"2021-03-13-604c9510b8fbd.png\\\"]\",\"price\":120,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-11T09:43:41.000000Z\",\"updated_at\":\"2021-04-18T17:54:19.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1},{\\\"id\\\":\\\"11\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":3,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":1000,\"translations\":[]}', '[{\"type\":null,\"price\":null,\"stock\":null}]', 3.00, 'discount_on_product', 1, 2.40, '2021-06-12 18:10:47', '2021-06-12 18:10:47', 'null', 'pc', 1),
(50, 17, 100036, 122.00, '{\"id\":17,\"name\":\"uisi earphones\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2021-03-11-604a119b325e0.png\\\",\\\"2021-03-11-604a119b415b6.png\\\"]\",\"price\":122,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T12:48:27.000000Z\",\"updated_at\":\"2021-04-18T17:54:22.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100,\"translations\":[]}', '[{\"type\":null,\"price\":null,\"stock\":null}]', 0.00, 'discount_on_product', 1, 0.00, '2021-06-12 18:13:51', '2021-06-12 18:13:51', 'null', 'pc', 1),
(51, 20, 100037, 1250.00, '{\"id\":20,\"name\":\"Panasonic Automatic Heavy Weight Dry Iron\",\"description\":\"<p>Product details of Panasonic Automatic Heavy Weight Dry Iron Pressing Power Heavy Dry Iron Non-Stick Coating Sole Plate Deluxe Metal Cover Big Thermostatic Pilot Lamp Heat-Resistant Cotton Cord Easy Operation 6 Temperature Settings Big Metal Temperature Setting Guide Weight 2 to 2.5 KG Product Origin China<\\/p>\",\"image\":\"[\\\"2021-03-11-604a190a851c8.png\\\"]\",\"price\":1250,\"variations\":\"[{\\\"type\\\":\\\"White\\\",\\\"price\\\":1250,\\\"stock\\\":100}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:20:10.000000Z\",\"updated_at\":\"2021-04-18T17:53:23.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"White\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100,\"translations\":[]}', '[{\"type\":\"White\",\"price\":1250,\"stock\":100}]', 0.00, 'discount_on_product', 1, 0.00, '2021-06-12 18:14:36', '2021-06-12 18:14:36', 'null', 'pc', 1),
(52, 27, 100037, 300.00, '{\"id\":27,\"name\":\"Checked Shirt\",\"description\":\"<p>High Quality<\\/p>\",\"image\":\"[\\\"2021-03-22-6058f2a46423a.png\\\"]\",\"price\":300,\"variations\":\"[{\\\"type\\\":\\\"Red-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-L\\\",\\\"price\\\":300,\\\"stock\\\":10},{\\\"type\\\":\\\"Red-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XL\\\",\\\"price\\\":300,\\\"stock\\\":10},{\\\"type\\\":\\\"Blue-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-L\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-22T19:40:20.000000Z\",\"updated_at\":\"2021-06-12T17:52:31.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\" Blue\\\",\\\" Black\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"XL\\\",\\\" L\\\",\\\" XXL\\\"]}]\",\"discount\":250,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":97,\"translations\":[]}', '[{\"type\":\"Red-XL\",\"price\":300,\"stock\":11}]', 250.00, 'discount_on_product', 1, 0.00, '2021-06-12 18:14:36', '2021-06-12 18:14:36', 'null', 'pc', 1),
(53, 25, 100038, 2300.00, '{\"id\":25,\"name\":\"barbie doll\",\"description\":\"<p><strong>The doll is one in a million. this doll will touch your heart<\\/strong><\\/p>\",\"image\":\"[\\\"2021-03-21-60572669e889d.png\\\"]\",\"price\":2300,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T10:54:50.000000Z\",\"updated_at\":\"2021-04-18T17:58:46.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"29\\\",\\\"position\\\":1},{\\\"id\\\":\\\"30\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":10,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":99,\"translations\":[]}', '[{\"type\":null,\"price\":null,\"stock\":null}]', 10.00, 'discount_on_product', 4, 46.00, '2021-06-12 18:16:07', '2021-06-12 18:16:07', 'null', 'pc', 1),
(54, 23, 100039, 13500.00, '{\"id\":23,\"name\":\"Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK\",\"description\":\"<p><strong>Product details of Samsung T35<\\/strong><\\/p><p>22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK Model Samsung T35 Series Professional Power Consumption 0.3W (Off Mode), 0.5W (DPMS) Operating Temperature 10 degree C- 40 degree C Operating System Compatibility Windows 10 Part No F22T350FHW\\/LF22T350FHCXXK Accessories Power Cable Length: 1.5 m, HDMI Cable: Yes Display Size (Inch) 22 Shape Flat Display Type FHD LED Panel Type IPS Display Resolution 1920x1080 (WxH) FHD Aspect Ratio 16:9 Brightness (cd\\/m2) 250cd\\/m2 Contrast Ratio (TCR\\/DCR) 1000:1 (Typical) Refresh Rate (Hz) 75Hz Adaptive-Sync Technology Yes (AMD) Bit Depth \\/ Color Support 16.7 million Response Time (ms) 5ms Horizontal Viewing Angle 178 Degree<\\/p>\",\"image\":\"[\\\"2021-03-11-604a1b379c33c.png\\\"]\",\"price\":13500,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":13500,\\\"stock\\\":99}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-12T00:29:27.000000Z\",\"updated_at\":\"2021-04-19T04:58:46.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":99,\"translations\":[]}', '[{\"type\":\"Black\",\"price\":13500,\"stock\":99}]', 0.00, 'discount_on_product', 2, 0.00, '2021-10-13 04:20:45', '2021-10-13 04:20:45', 'null', 'pc', 1),
(55, 20, 100040, 1250.00, '{\"id\":20,\"name\":\"Panasonic Automatic Heavy Weight Dry Iron\",\"description\":\"<p>Product details of Panasonic Automatic Heavy Weight Dry Iron Pressing Power Heavy Dry Iron Non-Stick Coating Sole Plate Deluxe Metal Cover Big Thermostatic Pilot Lamp Heat-Resistant Cotton Cord Easy Operation 6 Temperature Settings Big Metal Temperature Setting Guide Weight 2 to 2.5 KG Product Origin China<\\/p>\",\"image\":\"[\\\"2021-03-11-604a190a851c8.png\\\"]\",\"price\":1250,\"variations\":\"[{\\\"type\\\":\\\"White\\\",\\\"price\\\":1250,\\\"stock\\\":99}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-12T00:20:10.000000Z\",\"updated_at\":\"2021-06-13T05:14:36.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"White\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":99,\"translations\":[]}', '[{\"type\":\"White\",\"price\":1250,\"stock\":99}]', 0.00, 'discount_on_product', 1, 0.00, '2021-10-13 04:21:18', '2021-10-13 04:21:18', 'null', 'pc', 1),
(56, 23, 100041, 13500.00, '{\"id\":23,\"name\":\"Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK\",\"description\":\"<p><strong>Product details of Samsung T35<\\/strong><\\/p><p>22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW\\/LF22T350FHCXXK Model Samsung T35 Series Professional Power Consumption 0.3W (Off Mode), 0.5W (DPMS) Operating Temperature 10 degree C- 40 degree C Operating System Compatibility Windows 10 Part No F22T350FHW\\/LF22T350FHCXXK Accessories Power Cable Length: 1.5 m, HDMI Cable: Yes Display Size (Inch) 22 Shape Flat Display Type FHD LED Panel Type IPS Display Resolution 1920x1080 (WxH) FHD Aspect Ratio 16:9 Brightness (cd\\/m2) 250cd\\/m2 Contrast Ratio (TCR\\/DCR) 1000:1 (Typical) Refresh Rate (Hz) 75Hz Adaptive-Sync Technology Yes (AMD) Bit Depth \\/ Color Support 16.7 million Response Time (ms) 5ms Horizontal Viewing Angle 178 Degree<\\/p>\",\"image\":\"[\\\"2021-03-11-604a1b379c33c.png\\\"]\",\"price\":13500,\"variations\":\"[{\\\"type\\\":\\\"Black\\\",\\\"price\\\":13500,\\\"stock\\\":97}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-12T00:29:27.000000Z\",\"updated_at\":\"2021-10-13T15:20:45.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":97,\"translations\":[]}', '[{\"type\":\"Black\",\"price\":13500,\"stock\":99}]', 0.00, 'discount_on_product', 1, 0.00, '2021-10-13 04:23:34', '2021-10-13 04:23:34', 'null', 'pc', 1),
(57, 10, 100042, 130.00, '{\"id\":10,\"name\":\"Red T-shirt\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2021-03-11-604a030050ceb.png\\\",\\\"2021-03-11-604a030079fd0.png\\\"]\",\"price\":130,\"variations\":\"[]\",\"tax\":1,\"status\":1,\"created_at\":\"2021-03-11T22:46:08.000000Z\",\"updated_at\":\"2021-04-19T04:56:40.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"7\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":12,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100,\"translations\":[]}', '[{\"type\":null,\"price\":null,\"stock\":null}]', 12.00, 'discount_on_product', 1, 1.30, '2021-11-17 03:08:05', '2021-11-17 03:08:05', 'null', 'pc', 1),
(58, 21, 100043, 1290.00, '{\"id\":21,\"name\":\"i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone\",\"description\":\"<p>Product details of i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone Drive: 15mm Impedance: 32 OHM Bluetooth version: Bluetooth v4.1+EDR Bluetooth frequency: 2.4GHz Power level: CLASS II, output power: 30mW Bluetooth Distance: obstacle free 10 meters Drive: 15mm Impedance: 32 OHM Bluetooth version: Bluetooth v4.1+EDR Bluetooth frequency: 2.4GHz Power level: CLASS II, output power: 30mW Bluetooth Distance: obstacle free 10 meters<\\/p>\",\"image\":[\"2021-03-11-604a197ece275.png\"],\"price\":1290,\"variations\":[{\"type\":\"White\",\"price\":1290,\"stock\":100}],\"tax\":0,\"status\":1,\"created_at\":\"2021-03-12T00:22:06.000000Z\",\"updated_at\":\"2021-11-17T14:13:07.000000Z\",\"attributes\":[\"4\"],\"category_ids\":[{\"id\":\"4\",\"position\":1}],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"White\"]}],\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":95,\"translations\":[]}', '[{\"Color\":\"White\"}]', 0.00, 'discount_on_product', 5, 0.00, '2021-11-17 03:13:07', '2021-11-17 03:13:07', '\"White\"', 'pc', 1),
(59, 16, 100043, 590.00, '{\"id\":16,\"name\":\"Luxury Fashion Brand Watch Women\'s Rhinestone Women\'s Wristwatch\",\"description\":\"<p>Product details of Luxury Fashion Brand Watch Women\'s Rhinestone Women\'s Wristwatch Movement: quartz movement Water Resistance Depth: Not Water Resistant Style: luxurious, modern and informal Band Material Type: stainless steel Dial Diameter: 21mm Model Number: ladies watch Strap Length: 17.4 cm Case Thickness: 7mm Strap Width: 1mm Case Shape: Round Brand Name:Star Watch<\\/p>\",\"image\":[\"2021-03-11-604a1173582d6.png\"],\"price\":590,\"variations\":[{\"type\":\"Golden\",\"price\":590,\"stock\":100}],\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T23:47:47.000000Z\",\"updated_at\":\"2021-11-17T14:13:07.000000Z\",\"attributes\":[\"4\"],\"category_ids\":[{\"id\":\"20\",\"position\":1},{\"id\":\"26\",\"position\":2}],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"Golden\"]}],\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":99,\"translations\":[]}', '[{\"Color\":\"Golden\"}]', 0.00, 'discount_on_product', 1, 0.00, '2021-11-17 03:13:07', '2021-11-17 03:13:07', '\"Golden\"', 'pc', 1),
(60, 19, 100044, 2650.00, '{\"id\":19,\"name\":\"Casual Lightweight Lace Up Sports Athletic Shoes Sneaker For Men\",\"description\":\"<p>Product details of Casual Lightweight Lace Up Sports Athletic Shoes Sneaker For Men 1:Breathable cloth fabric upper offers superior comfort, stretchy soft and durability.2:Elastic sole provides the user with the enough buffer between feet and ground, reducing the harm to knees.3:Lace-up closure, easy to wear and take off.<\\/p>\",\"image\":\"[\\\"2021-03-11-604a185012451.png\\\"]\",\"price\":2650,\"variations\":\"[{\\\"type\\\":\\\"39-44\\\",\\\"price\\\":2650,\\\"stock\\\":100}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-12T00:17:04.000000Z\",\"updated_at\":\"2021-04-19T04:53:41.000000Z\",\"attributes\":\"[\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"39-44\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100,\"translations\":[]}', '[{\"type\":\"39-44\",\"price\":2650,\"stock\":100}]', 0.00, 'discount_on_product', 1, 0.00, '2021-11-17 03:13:09', '2021-11-17 03:13:09', 'null', 'pc', 1),
(61, 20, 100045, 1250.00, '{\"id\":20,\"name\":\"Panasonic Automatic Heavy Weight Dry Iron\",\"description\":\"<p>Product details of Panasonic Automatic Heavy Weight Dry Iron Pressing Power Heavy Dry Iron Non-Stick Coating Sole Plate Deluxe Metal Cover Big Thermostatic Pilot Lamp Heat-Resistant Cotton Cord Easy Operation 6 Temperature Settings Big Metal Temperature Setting Guide Weight 2 to 2.5 KG Product Origin China<\\/p>\",\"image\":\"[\\\"2021-03-11-604a190a851c8.png\\\"]\",\"price\":1250,\"variations\":\"[{\\\"type\\\":\\\"White\\\",\\\"price\\\":1250,\\\"stock\\\":98}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-12T00:20:10.000000Z\",\"updated_at\":\"2021-10-13T15:21:18.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"White\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":98,\"translations\":[]}', '[{\"type\":\"White\",\"price\":1250,\"stock\":98}]', 0.00, 'discount_on_product', 1, 0.00, '2021-11-17 03:15:14', '2021-11-17 03:15:14', 'null', 'pc', 1),
(62, 19, 100046, 2650.00, '{\"id\":19,\"name\":\"Casual Lightweight Lace Up Sports Athletic Shoes Sneaker For Men\",\"description\":\"<p>Product details of Casual Lightweight Lace Up Sports Athletic Shoes Sneaker For Men 1:Breathable cloth fabric upper offers superior comfort, stretchy soft and durability.2:Elastic sole provides the user with the enough buffer between feet and ground, reducing the harm to knees.3:Lace-up closure, easy to wear and take off.<\\/p>\",\"image\":[\"2021-03-11-604a185012451.png\"],\"price\":2650,\"variations\":[{\"type\":\"39-44\",\"price\":2650,\"stock\":99}],\"tax\":0,\"status\":1,\"created_at\":\"2021-03-11T13:17:04.000000Z\",\"updated_at\":\"2022-07-31T06:29:11.000000Z\",\"attributes\":[\"1\"],\"category_ids\":[{\"id\":\"1\",\"position\":1}],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"39-44\"]}],\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":97,\"translations\":[]}', '{\"Size\":\"39-44\"}', 0.00, 'discount_on_product', 2, 0.00, '2022-07-31 06:29:11', '2022-07-31 06:29:11', '\"39-44\"', 'pc', 1),
(63, 8, 100047, 1234.00, '{\"id\":8,\"name\":\"Men\'s jacket\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2021-03-11-604a022f8c511.png\\\",\\\"2021-03-11-604a022fa2ce2.png\\\",\\\"2021-03-11-604a022fc1cd2.png\\\",\\\"2021-03-11-604a022fd5e78.png\\\"]\",\"price\":1234,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-11T05:42:40.000000Z\",\"updated_at\":\"2021-04-18T11:57:24.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":10,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100,\"translations\":[]}', '[{\"type\":null,\"price\":null,\"stock\":null}]', 123.40, 'discount_on_product', 1, 24.68, '2023-06-22 13:20:52', '2023-06-22 13:20:52', 'null', 'pc', 1),
(64, 25, 100048, 2300.00, '{\"id\":25,\"name\":\"15 IN 1 Makeup Combo Set With Full Makeup Coverage set\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2023-06-22-6493f367bc58c.png\\\",\\\"2023-06-22-6493f367bdbe8.png\\\",\\\"2023-06-22-6493f367bddf8.png\\\"]\",\"price\":2300,\"variations\":\"[]\",\"tax\":2,\"status\":1,\"created_at\":\"2021-03-21T04:54:50.000000Z\",\"updated_at\":\"2023-06-22T07:09:36.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"17\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":10,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":95,\"translations\":[]}', '[{\"type\":null,\"price\":null,\"stock\":null}]', 10.00, 'discount_on_product', 1, 46.00, '2023-06-22 13:22:02', '2023-06-22 13:22:02', 'null', 'pc', 1),
(65, 27, 100049, 600.00, '{\"id\":27,\"name\":\"Plain Half Sleeve T-shirt for Men\",\"description\":\"<p>Plain Half Sleeve T-shirt for Men<\\/p><ul><li>Type: t-shirt<\\/li><li>Material: Synthetic &amp; Cotton<\\/li><li>For Men<\\/li><li>Best quality product<\\/li><li>Clothing Length: Regular<\\/li><\\/ul><p><br><\\/p>\",\"image\":\"[\\\"2023-06-22-6493ed179b3b7.png\\\",\\\"2023-06-22-6493ed179c721.png\\\"]\",\"price\":300,\"variations\":\"[{\\\"type\\\":\\\"Red-XL\\\",\\\"price\\\":250,\\\"stock\\\":100},{\\\"type\\\":\\\"Red-L\\\",\\\"price\\\":300,\\\"stock\\\":100},{\\\"type\\\":\\\"Red-XXL\\\",\\\"price\\\":300,\\\"stock\\\":11},{\\\"type\\\":\\\"Red-M\\\",\\\"price\\\":400,\\\"stock\\\":10},{\\\"type\\\":\\\"Blue-XL\\\",\\\"price\\\":500,\\\"stock\\\":10},{\\\"type\\\":\\\"Blue-L\\\",\\\"price\\\":600,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-XXL\\\",\\\"price\\\":700,\\\"stock\\\":11},{\\\"type\\\":\\\"Blue-M\\\",\\\"price\\\":800,\\\"stock\\\":100},{\\\"type\\\":\\\"Black-XL\\\",\\\"price\\\":900,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-L\\\",\\\"price\\\":400,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-XXL\\\",\\\"price\\\":600,\\\"stock\\\":11},{\\\"type\\\":\\\"Black-M\\\",\\\"price\\\":500,\\\"stock\\\":100}]\",\"tax\":0,\"status\":1,\"created_at\":\"2021-03-22T13:40:20.000000Z\",\"updated_at\":\"2023-06-22T07:16:46.000000Z\",\"attributes\":\"[\\\"4\\\",\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\" Blue\\\",\\\" Black\\\"]},{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"XL\\\",\\\" L\\\",\\\" XXL\\\",\\\" M\\\"]}]\",\"discount\":50,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":486,\"translations\":[]}', '[{\"type\":\"Black-XXL\",\"price\":600,\"stock\":11}]', 50.00, 'discount_on_product', 1, 0.00, '2023-06-22 15:59:43', '2023-06-22 15:59:43', 'null', 'pc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email_or_phone` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `variations` text DEFAULT NULL,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) NOT NULL DEFAULT 'percent',
  `tax_type` varchar(20) NOT NULL DEFAULT 'percent',
  `unit` varchar(255) NOT NULL DEFAULT 'pc',
  `total_stock` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `variations`, `tax`, `status`, `created_at`, `updated_at`, `attributes`, `category_ids`, `choice_options`, `discount`, `discount_type`, `tax_type`, `unit`, `total_stock`) VALUES
(1, 'Smart phone', '<p>The phone is the best phone in the world as they say.</p>', '[\"2023-06-22-6493ee2068e9e.png\",\"2023-06-22-6493ee206902b.png\"]', 11000, '[]', 0.00, 1, '2021-03-11 09:40:41', '2023-06-22 12:46:17', '[]', '[{\"id\":\"5\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '[]', 0.00, 'percent', 'percent', 'pc', 1000),
(2, 'LM Washable and Light-Weight Men\'s Shoe', '<p>About this item</p><ul><li>SMALL BUT MIGHTY - If it takes an earthquake or siren to wake you up, this classically designed clock is exactly what you are looking for. The 3-level adjustable shaker is perfect for heavy sleeper or those with hearing loss. You also have the option to combine the vibration with the built-in alarm sound (buzzer, bird or music</li></ul><p><br></p>', '[\"2023-06-22-6493eec03d46e.png\",\"2023-06-22-6493eec03e847.png\",\"2023-06-22-6493eec03e9b8.png\"]', 500, '[{\"type\":\"40\",\"price\":490,\"stock\":350},{\"type\":\"44\",\"price\":500,\"stock\":350},{\"type\":\"42\",\"price\":494.82,\"stock\":300}]', 0.00, 1, '2021-03-11 09:42:41', '2023-06-22 12:50:44', '[\"1\"]', '[{\"id\":\"2\",\"position\":1}]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"40\",\" 44\",\" 42\"]}]', 0.00, 'percent', 'percent', 'pc', 1000),
(3, 'Grey sneakers', '<p><br></p>', '[\"2021-03-13-604c951078cbc.png\",\"2021-03-13-604c9510b8fbd.png\"]', 120, '[]', 2.00, 1, '2021-03-11 09:43:41', '2021-06-12 18:10:47', '[]', '[{\"id\":\"2\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '[]', 3.00, 'amount', 'percent', 'pc', 999),
(4, 'Kemei KM-329 Professional Electric Hair Straightener Ceramic Anti-Static', '<p>Product details of Kemei KM-329 Professional Electric Hair Straightener Ceramic Anti-Static New Specifications:Portable, make secondary hairstyle everyday.Quickly heat up and make hair straight or curly within 1 minute.Electronic ceramic coated for smooth and shiny hair.Heater with fast heat up and ultra fast heat recovery.There are 4 adjustable temperature: 160°C, 180°C, 200°C, 220°C.This new hair straightener can quickly heat up and make your hair straight within 1 minute.Using the hair straightener ladies can make different hair style, so ladies are beautiful everyday. It is portable with its wireless charging design. Item Name: Hair Straightener Material: ABS Power: 40W-59W Voltage: 220V Frequency: 50Hz Temperature: 160°C-220°C Applicable Hair: Dry &amp; Wet Usage: Hair Straightener, Curler Power Source: Electric Plug Type: EU Plug Features: Professional, Rapid Heating, Temperature Adjustable, Portable Item Size: 25cm x 7cm/9.84\" x 2.76\" (Approx.)</p>', '[\"2023-06-22-6493f0b75c565.png\",\"2023-06-22-6493f0b75dbab.png\",\"2023-06-22-6493f0b75dd22.png\"]', 1250, '[{\"type\":\"0.400\",\"price\":1250,\"stock\":1000}]', 0.00, 1, '2021-03-11 10:54:15', '2023-06-22 12:57:12', '[\"3\"]', '[{\"id\":\"1\",\"position\":1}]', '[{\"name\":\"choice_3\",\"title\":\"Weight\",\"options\":[\"0.400\"]}]', 0.00, 'percent', 'percent', 'kg', 1000),
(5, 'Waltro Prelude S41 Two in One (Detachable) Laptop, Intel N4', '<p>Product details of OPPO F15 Smartphone 6.4inches - 8GB RAM - 128GB ROM - 48MP Camera NO RETURN applicable if the seal is broken Operating System: ColorOS 6.1.2, based on Android 9 Processor: MTK P70 GPU: MTK MT6771V GPU: ARM Mali G72 MP3 900MHz Battery: 4000mAh (TYP) , 3900mAh (MIN) RAM: 8GB Storage: 128GB VOOC Flash Charge: VOOC 3.0 Display Size: 16.2cm(6.4\'\') Touchscreen:Multi-touch, Capacitive Screen Resolution: 2400 by 1080 pixels at 408 ppi Colors: 16 million colors,Screen Ratio: 90.7% Camera Sensor: 48MP &amp; 8MP &amp; 2MP &amp; 2MP Front Sensor: 16-megapixel Aperture: Front F2.0 Rear: Main f/1.79; Wide Angle f/2.25; Portrait &amp; Mono f/2.4 Rear: Main 1/2.25\', 0.8um Secondary Wide Angle 1/4\', 1.12um 2M 1/5\', 1.75um Video Front Camera: 1080P/720P@30fps Video Rear Camera: 1080P @30fps, 720P@30fps Frequencies: GSM: 850/900/1800/1900MHz WCDMA: Bands 1/5/8 FDD-LTE: Bands 1/3/5/8 TD-LTE: Bands 38/40/41 SIM Card Type: Nano-SIM / Nano-USIM GPS: Built-in GPS; supports A-GPS, Beidou, Glonass Bluetooth: 4.2 OTG: Supported NFC: No Magnetic Induction Sensor,Light Sensor,Proximity Sensor,G-Sensor/Acceleration Sensor Gyroscope,Pedometer Height: 160.2mm Width: 73.3mm Thickness: 7.9mm Weight: Approx. 172g</p>', '[\"2023-06-22-6493f01bafb16.png\",\"2023-06-22-6493f01bb11b7.png\",\"2023-06-22-6493f01bb1399.png\"]', 27990, '[{\"type\":\"6.4\",\"price\":27990,\"stock\":1000}]', 0.00, 1, '2021-03-11 11:04:54', '2023-06-22 12:55:34', '[\"1\"]', '[{\"id\":\"5\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"6.4\"]}]', 1.00, 'percent', 'percent', 'pc', 1000),
(6, 'Enos 658 Hair Dryer for Women-Multicolor', '<p><br></p>', '[\"2023-06-22-6493f4b34fd9c.png\",\"2023-06-22-6493f4b351730.png\"]', 2300, '[{\"type\":\"white\",\"price\":2200,\"stock\":500},{\"type\":\"blue\",\"price\":2300,\"stock\":500}]', 2.00, 0, '2021-03-11 11:35:19', '2023-06-22 13:18:46', '[\"4\"]', '[{\"id\":\"17\",\"position\":1}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"white\",\" blue\"]}]', 30.00, 'amount', 'percent', 'pc', 1000),
(7, 'Ladies bag', '<p><br></p>', '[\"2023-06-22-6493f2572b21d.png\",\"2023-06-22-6493f2572d12f.png\"]', 120, '[]', 0.00, 1, '2021-03-11 11:36:51', '2023-06-22 13:04:18', '[]', '[{\"id\":\"17\",\"position\":1}]', '[]', 0.00, 'percent', 'percent', 'pc', 1000),
(8, 'Men\'s jacket', '<p><br></p>', '[\"2021-03-11-604a022f8c511.png\",\"2021-03-11-604a022fa2ce2.png\",\"2021-03-11-604a022fc1cd2.png\",\"2021-03-11-604a022fd5e78.png\"]', 1234, '[]', 2.00, 1, '2021-03-11 11:42:40', '2023-06-22 13:20:52', '[]', '[{\"id\":\"1\",\"position\":1}]', '[]', 10.00, 'percent', 'percent', 'pc', 99),
(9, 'Philips', '<p>Product details of Philips BT1210/15 Professional Beard Trimmer Series 1000 for Men 1-Year International Seller Warranty Durable consistent performance with DuraPower Stainless Steel Blades for long-lasting sharpness DuraPower technology for a longer-lasting battery life Up to 30 minutes of cordless use after 8 hours charging USB charging for convenient use Choose 5mm long beard, short 3-day stubble, or zero trim look Light on the device indicates when the battery is charging Skin-friendly blades for smooth skin The travel lock prevents the trimmer from accidentally starting Detachable head for easy cleaning Ergonomic design for easier handling worldwide voltage, no oil needed</p>', '[\"2021-03-13-604c8e16a3347.png\"]', 1680, '[{\"type\":\"GreyColor\",\"price\":1680,\"stock\":100}]', 0.00, 1, '2021-03-11 11:45:19', '2021-04-18 17:57:04', '[\"4\"]', '[{\"id\":\"1\",\"position\":1}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"Grey Color\"]}]', 0.00, 'percent', 'percent', 'pc', 100),
(10, 'Red T-shirt', '<p><br></p>', '[\"2021-03-11-604a030050ceb.png\",\"2021-03-11-604a030079fd0.png\"]', 130, '[]', 1.00, 1, '2021-03-11 11:46:08', '2021-11-17 03:08:05', '[]', '[{\"id\":\"1\",\"position\":1},{\"id\":\"7\",\"position\":2}]', '[]', 12.00, 'amount', 'percent', 'pc', 99),
(11, 'Half Sleeve Men\'s T-Shirt - Black', '<p>Product details of Half Sleeve Men\'s T-Shirt - Black Product Type: T-shirt Color: Black Main Material: Cotton Gender: Men Sleeve: Half Sleeve</p>', '[\"2021-03-11-604a03b70c8e6.png\",\"2021-03-11-604a03b71e760.png\"]', 250, '[]', 0.00, 1, '2021-03-11 11:49:11', '2021-04-18 17:56:24', '[]', '[{\"id\":\"1\",\"position\":1},{\"id\":\"7\",\"position\":2}]', '[]', 0.00, 'percent', 'percent', 'pc', 100),
(12, 'DSLR Camera', '<p><br></p>', '[\"2021-03-11-604a043dd0c65.png\",\"2021-03-11-604a043dd967c.png\"]', 45000, '[]', 0.00, 1, '2021-03-11 11:51:25', '2021-04-18 17:56:07', '[]', '[{\"id\":\"4\",\"position\":1}]', '[]', 0.00, 'percent', 'percent', 'pc', 100),
(13, 'Black Analog Watch For Men', '<p>Product details of Black Analog Watch For Men The watch has edgy and affordable design. Crafted from a rich quality material, this watch for men is light in weight and long lasting too. You can show it off with your casual &amp; formal attires to grab compliments from everyone around. Being easily Affordable to make it sit right on your wrist, it can add a physical dimension to your Style. There’s a way to spruce up your casual outfit, and that\'s to jazz it up with this classy men\'s watch. This watch is specially designed for men who believe in a trendy and fashionable life. This watch is highly used for any occasion &amp; highly recommendable to young people</p>', '[\"2021-03-11-604a05bf9d5f5.png\"]', 290, '[{\"type\":\"Black\",\"price\":1000,\"stock\":100}]', 1.00, 1, '2021-03-11 11:57:51', '2023-06-22 15:42:47', '[\"4\"]', '[{\"id\":\"20\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"Black\"]}]', 1.00, 'percent', 'percent', 'pc', 100),
(14, 'Stainless Steel mens watch Black', '<p>Product details of Stainless Steel mens watch Black Style: Fashion &amp; Casual Movement: QUARTZ Clasp Type: Folding Clasp with Safety Water Resistance Depth: No waterproof Case Material: Stainless Steel Band Length: 40cm Case Thickness: 10mm Band Width: 20mm Case Shape: Round Item Type: Quartz WristwatchesBand Material Type: Stainless Steel Feature: Shock Resistant Dial Diameter: 40mm Dial Window Material Type: Glass</p>', '[\"2021-03-11-604a07360dcf0.png\",\"2021-03-11-604a07361fd92.png\"]', 1299, '[{\"type\":\"white\",\"price\":1299,\"stock\":100}]', 1.00, 1, '2021-03-11 12:04:06', '2021-04-18 17:55:30', '[\"4\"]', '[{\"id\":\"20\",\"position\":1}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"white\"]}]', 1.00, 'percent', 'percent', 'pc', 100),
(15, '65 Class Q60R QLED Smart 4K UHD TV (2019)', '<p>Product details of 65 Class Q60R QLED Smart 4K UHD TV (2019) Best TV in terms of price quality Basic QLED without One Connect and other unnecessary chips Smart 4Q HDR image quality Apple AirPlay 2 and iTunes TV - no longer need AppleTV 4K Resolution - 3840x2160 (4x Full HD) Total Audio Power (RMS) 20W Refresh Rate 120Hz Native / 240Hz Clear Motion Rate Power Consumption 205W NTSC TV System PAL-M PAL-N ISDB-TB Dimensions without base (WxHxD) mm 1456.1 x 836.6 x 59.2 Consumption Classification (ENCE Seal) A Base Weight (kg): 26 Dimensions with base (WxHxD) mm 1456.1 x 917.0 x 322.8 Voltage / Voltage bivolt Package Contents - Samsung 65Q60 TV - Single Remote Control - TM1950C - Base - Batteries (for remote control) - Power cord - Manual Hole Pattern for Vesa Wall Mount Notes 1. In order to enjoy the maximum quality of your TV, you need to receive Widescreen format digital signal reception via the integrated converter. 2. According to Law No. 11.291 / 06, we inform you that the use of equipment above 85 decibels may impair hearing. 3. Due to ABNT standards and CONMETRO Resolutions No. 13 of 2006, No. 2 of 2007 and No. 8 of 2009, manufacturers are changing the sockets to the new standard. To use this product, you will need an adapter or replacement of the old outlet. We are not responsible for this change. 4. Part of the connections is rear. To place the TV in a bracket on a wall or panel, check with the bracket manufacturer for compatibility and the space required to connect the cables. 5. Content / access to Smart TV is limited and varies by vendor. For the feature to work, the TV must be connected to the Internet network via network cable or Wi-Fi system. We are not responsible for the configuration. * Items sold separately Send feedback History Saved</p>', '[\"2021-03-11-604a0993451f2.png\"]', 89000, '[{\"type\":\"Black\",\"price\":369000,\"stock\":100}]', 10.00, 1, '2021-03-11 12:14:11', '2021-04-18 17:55:08', '[\"4\"]', '[{\"id\":\"27\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"Black\"]}]', 2.00, 'percent', 'percent', 'pc', 100),
(16, 'Luxury Fashion Brand Watch Women\'s Rhinestone Women\'s Wristwatch', '<p>Product details of Luxury Fashion Brand Watch Women\'s Rhinestone Women\'s Wristwatch Movement: quartz movement Water Resistance Depth: Not Water Resistant Style: luxurious, modern and informal Band Material Type: stainless steel Dial Diameter: 21mm Model Number: ladies watch Strap Length: 17.4 cm Case Thickness: 7mm Strap Width: 1mm Case Shape: Round Brand Name:Star Watch</p>', '[\"2021-03-11-604a1173582d6.png\"]', 590, '[{\"type\":\"Golden\",\"price\":590,\"stock\":100}]', 0.00, 1, '2021-03-11 12:47:47', '2021-11-17 03:13:07', '[\"4\"]', '[{\"id\":\"20\",\"position\":1},{\"id\":\"26\",\"position\":2}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"Golden\"]}]', 0.00, 'percent', 'percent', 'pc', 99),
(17, 'uisi earphones', '<p><br></p>', '[\"2021-03-11-604a119b325e0.png\",\"2021-03-11-604a119b415b6.png\",\"2023-06-22-6493f152c5d9a.png\"]', 122, '[]', 0.00, 1, '2021-03-11 12:48:27', '2023-06-22 12:59:30', '[]', '[{\"id\":\"3\",\"position\":1}]', '[]', 0.00, 'percent', 'percent', 'pc', 99),
(18, 'NAVIFORCE NF5001 Blue PU Leather Sub-Dial Chronograph Watch For Women - Blue & RoseGold', '<p><br></p>', '[\"2021-03-11-604a11d8d7801.png\",\"2023-06-22-6493f12697a2a.png\",\"2023-06-22-6493f12699c68.png\"]', 890, '[{\"type\":\"Blue&RoseGold\",\"price\":500,\"stock\":100}]', 0.00, 1, '2021-03-11 12:49:28', '2023-06-22 15:42:05', '[\"4\"]', '[{\"id\":\"20\",\"position\":1},{\"id\":\"26\",\"position\":2}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"Blue & RoseGold\"]}]', 0.00, 'percent', 'percent', 'pc', 100),
(19, 'Casual Lightweight Lace Up Sports Athletic Shoes Sneaker For Men', '<p>Product details of Casual Lightweight Lace Up Sports Athletic Shoes Sneaker For Men 1:Breathable cloth fabric upper offers superior comfort, stretchy soft and durability.2:Elastic sole provides the user with the enough buffer between feet and ground, reducing the harm to knees.3:Lace-up closure, easy to wear and take off.</p>', '[\"2021-03-11-604a185012451.png\"]', 2650, '[{\"type\":\"39-44\",\"price\":2650,\"stock\":99}]', 0.00, 1, '2021-03-11 13:17:04', '2022-07-31 06:29:11', '[\"1\"]', '[{\"id\":\"1\",\"position\":1}]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"39-44\"]}]', 0.00, 'percent', 'percent', 'pc', 97),
(20, 'Panasonic Automatic Heavy Weight Dry Iron', '<p>Product details of Panasonic Automatic Heavy Weight Dry Iron Pressing Power Heavy Dry Iron Non-Stick Coating Sole Plate Deluxe Metal Cover Big Thermostatic Pilot Lamp Heat-Resistant Cotton Cord Easy Operation 6 Temperature Settings Big Metal Temperature Setting Guide Weight 2 to 2.5 KG Product Origin China</p>', '[\"2023-06-22-6493f1e2da883.png\",\"2023-06-22-6493f1e2dbd97.png\"]', 1250, '[{\"type\":\"White\",\"price\":1250,\"stock\":97}]', 0.00, 1, '2021-03-11 13:20:10', '2023-06-22 13:02:19', '[\"4\"]', '[{\"id\":\"3\",\"position\":1}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"White\"]}]', 0.00, 'percent', 'percent', 'pc', 97),
(21, 'i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone', '<p>Product details of i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone Drive: 15mm Impedance: 32 OHM Bluetooth version: Bluetooth v4.1+EDR Bluetooth frequency: 2.4GHz Power level: CLASS II, output power: 30mW Bluetooth Distance: obstacle free 10 meters Drive: 15mm Impedance: 32 OHM Bluetooth version: Bluetooth v4.1+EDR Bluetooth frequency: 2.4GHz Power level: CLASS II, output power: 30mW Bluetooth Distance: obstacle free 10 meters</p>', '[\"2023-06-22-6493f1ae62045.png\",\"2023-06-22-6493f1ae646f3.png\"]', 1290, '[{\"type\":\"White\",\"price\":1290,\"stock\":100}]', 0.00, 1, '2021-03-11 13:22:06', '2023-06-22 13:10:58', '[\"4\"]', '[{\"id\":\"4\",\"position\":1}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"White\"]}]', 5.00, 'percent', 'percent', 'pc', 100),
(22, 'YUFENG 3388 tripod dslr camera mobile Professional tripod stand', '<p>Product details of YUFENG 3388 tripod dslr camera mobile Professional tripod stand ✔ raditional aluminum alloy base uses an alloy frame that enhances vibration and weight reduction compared to aluminum alloys. ✔ new lever-type locking and styling features make it easy and quick to remove and fold the tripod. The Yuteng VCT 3388 is a versatile and versatile design for cameras, home camcorders or even compact, portable, easy-to-use smarphones. ✔ Level tester:This tripod equiped with level tester, which can detect and adjust the horizontal position of it. When the ground is not level, you can recognize it immediately and adjust the tripod leg to keep level. ✔ With a maximum height of 1250cm and a tripod, it\'s easy to adjust the tripod\'s height to take pictures in multiple modes such as macro, panorama or portrai ✔ Not only does it help to take pictures easily, reducing blurring caused by camera shake, the Yuteng 3388 camera foot also gives you flexibility to crea</p>', '[\"2021-03-11-604a1a5964714.png\"]', 890, '[{\"type\":\"White\",\"price\":890,\"stock\":50},{\"type\":\"Black\",\"price\":890,\"stock\":50}]', 0.00, 1, '2021-03-11 13:25:45', '2021-04-18 17:52:53', '[\"4\"]', '[{\"id\":\"4\",\"position\":1}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"White\",\" Black\"]}]', 0.00, 'percent', 'percent', 'pc', 100),
(23, 'Samsung T35 22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW/LF22T350FHCXXK', '<p><strong>Product details of Samsung T35</strong></p><p>22 Inch FHD (1920x1080) IPS LED Flat Professional Monitor with Borderless Design (HDMI, VGA) F22T350FHW/LF22T350FHCXXK Model Samsung T35 Series Professional Power Consumption 0.3W (Off Mode), 0.5W (DPMS) Operating Temperature 10 degree C- 40 degree C Operating System Compatibility Windows 10 Part No F22T350FHW/LF22T350FHCXXK Accessories Power Cable Length: 1.5 m, HDMI Cable: Yes Display Size (Inch) 22 Shape Flat Display Type FHD LED Panel Type IPS Display Resolution 1920x1080 (WxH) FHD Aspect Ratio 16:9 Brightness (cd/m2) 250cd/m2 Contrast Ratio (TCR/DCR) 1000:1 (Typical) Refresh Rate (Hz) 75Hz Adaptive-Sync Technology Yes (AMD) Bit Depth / Color Support 16.7 million Response Time (ms) 5ms Horizontal Viewing Angle 178 Degree</p>', '[\"2021-03-11-604a1b379c33c.png\",\"2023-06-22-6493f103341cb.png\"]', 13500, '[{\"type\":\"Black\",\"price\":13500,\"stock\":96}]', 0.00, 1, '2021-03-11 13:29:27', '2023-06-22 12:58:11', '[\"4\"]', '[{\"id\":\"4\",\"position\":1}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"Black\"]}]', 0.00, 'percent', 'percent', 'pc', 96),
(25, '15 IN 1 Makeup Combo Set With Full Makeup Coverage set', '<p><br></p>', '[\"2023-06-22-6493f367bc58c.png\",\"2023-06-22-6493f367bdbe8.png\",\"2023-06-22-6493f367bddf8.png\"]', 2300, '[]', 2.00, 1, '2021-03-21 10:54:50', '2023-06-22 13:22:02', '[]', '[{\"id\":\"17\",\"position\":1}]', '[]', 10.00, 'amount', 'percent', 'pc', 94),
(26, 'women leggings', '<p>Women leggings are cool to wear in the summer</p>', '[\"2021-03-21-60572f3c3030e.png\",\"2021-03-21-60572f3c47987.png\",\"2021-03-21-60572f3c5de46.png\"]', 1230, '[{\"type\":\"black-32\",\"price\":1200,\"stock\":25},{\"type\":\"black-28\",\"price\":1100,\"stock\":25},{\"type\":\"blue-32\",\"price\":1220,\"stock\":25},{\"type\":\"blue-28\",\"price\":1120,\"stock\":25}]', 2.00, 0, '2021-03-21 11:34:20', '2021-06-12 18:22:18', '[\"4\",\"1\"]', '[{\"id\":\"17\",\"position\":1}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"black\",\" blue\"]},{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"32\",\" 28\"]}]', 50.00, 'amount', 'percent', 'pc', 100),
(27, 'Plain Half Sleeve T-shirt for Men', '<p>Plain Half Sleeve T-shirt for Men</p><ul><li>Type: t-shirt</li><li>Material: Synthetic &amp; Cotton</li><li>For Men</li><li>Best quality product</li><li>Clothing Length: Regular</li></ul><p><br></p>', '[\"2023-06-22-6493ed179b3b7.png\",\"2023-06-22-6493ed179c721.png\"]', 300, '[{\"type\":\"Red-XL\",\"price\":250,\"stock\":100},{\"type\":\"Red-L\",\"price\":300,\"stock\":100},{\"type\":\"Red-XXL\",\"price\":300,\"stock\":11},{\"type\":\"Red-M\",\"price\":400,\"stock\":10},{\"type\":\"Blue-XL\",\"price\":500,\"stock\":10},{\"type\":\"Blue-L\",\"price\":600,\"stock\":11},{\"type\":\"Blue-XXL\",\"price\":700,\"stock\":11},{\"type\":\"Blue-M\",\"price\":800,\"stock\":100},{\"type\":\"Black-XL\",\"price\":900,\"stock\":11},{\"type\":\"Black-L\",\"price\":400,\"stock\":11},{\"type\":\"Black-XXL\",\"price\":600,\"stock\":10},{\"type\":\"Black-M\",\"price\":500,\"stock\":100}]', 0.00, 1, '2021-03-22 19:40:20', '2023-06-22 15:59:43', '[\"4\",\"1\"]', '[{\"id\":\"1\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[{\"name\":\"choice_4\",\"title\":\"Color\",\"options\":[\"Red\",\" Blue\",\" Black\"]},{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"XL\",\" L\",\" XXL\",\" M\"]}]', 50.00, 'amount', 'percent', 'pc', 485),
(28, 'Premium Quality Women\'s High Heels', '<p>Product details of New Fashionable Box Balance Heel Shoes for Women</p><ul><li>Quality will be good as the picture</li><li>High quality synthetic comfortable sole</li><li>Superior material featured a soft feel and is comfortable to wear</li><li>It is flexible and anti-slip out sole, perfect for daily wear.</li></ul><p><br></p><p>Specifications of New Fashionable Box Balance Heel Shoes for Women</p><ul><li>Brand</li><li>No Brand</li><li>SKU</li><li>199447422_BD-1146709543</li><li>Shoe Closure Type</li><li>Hook and Loop</li><li>Style</li><li>Party</li><li>Main Material</li><li>Synthetic Leather</li></ul><p><br></p>', '[\"2023-06-22-6493ec56b3df4.png\",\"2023-06-22-6493ec56b71be.png\",\"2023-06-22-6493ec56b73ac.png\"]', 699.98, '[]', 0.00, 1, '2021-10-13 04:18:44', '2023-06-22 12:38:47', '[]', '[{\"id\":\"33\",\"position\":1},{\"id\":\"34\",\"position\":2}]', '[]', 10.00, 'percent', 'percent', 'kg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `attachment`, `rating`, `created_at`, `updated_at`, `order_id`) VALUES
(1, 17, 2, 'Good product 👍', '[]', 5, '2021-03-13 12:02:54', '2021-03-13 12:02:54', 100008),
(2, 8, 22, 'This is a demo product review   “I recently purchased a product from [Store Name], and I couldn’t be happier with my online shopping experience. Their website was user-friendly, making it easy to find the perfect item. The checkout process was smooth, and I received my order promptly. The [product] arrived in excellent condition, exactly as described on their website. I’m thrilled with the quality and will definitely shop at [Store Name] again in the future. Highly recommended!”', '[]', 5, '2023-06-22 13:23:45', '2023-06-22 13:23:45', 100047),
(3, 25, 22, 'This is a demo product review   “I recently purchased a product from [Store Name], and I couldn’t be happier with my online shopping experience. Their website was user-friendly, making it easy to find the perfect item. The checkout process was smooth, and I received my order promptly. The [product] arrived in excellent condition, exactly as described on their website. I’m thrilled with the quality and will definitely shop at [Store Name] again in the future. Highly recommended!”', '[]', 5, '2023-06-22 13:24:12', '2023-06-22 13:24:12', 100048);

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `name`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'instagram', 'https://www.instagram.com/', 1, NULL, NULL),
(2, 'facebook', 'https://www.facebook.com/', 1, NULL, NULL),
(3, 'twitter', 'https://www.twitter.com/', 1, NULL, NULL),
(4, 'linkedin', 'https://www.linkedin.com/', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`) VALUES
(1, 'App\\Model\\Product', 25, 'ar', 'name', 'دمية باربي'),
(2, 'App\\Model\\Product', 25, 'ar', 'description', '<p>الدمية واحدة في المليون. هذه الدمية سوف تلمس قلبك</p>'),
(3, 'App\\Model\\Product', 1, 'ar', 'name', 'هاتف ذكي'),
(4, 'App\\Model\\Product', 1, 'ar', 'description', '<p>الهاتف هو أفضل هاتف في العالم كما يقولون.</p>'),
(5, 'App\\Model\\Product', 23, 'ar', 'name', 'Samsung T35 22 بوصة FHD (1920x1080) IPS LED شاشة احترافية مسطحة بتصميم بلا حدود (HDMI ، VGA) F22T350FHW / LF22T350FHCXXK'),
(6, 'App\\Model\\Product', 23, 'ar', 'description', '<p>تفاصيل منتج Samsung T35</p><p><br></p><p>22 بوصة FHD (1920x1080) IPS LED شاشة احترافية مسطحة بتصميم بلا حدود (HDMI ، VGA) F22T350FHW / LF22T350FHCXXK موديل Samsung T35 Series Professional استهلاك الطاقة 0.3 وات (وضع الإيقاف) ، 0.5 وات (DPMS) درجة حرارة التشغيل 10 درجة مئوية - 40 درجة مئوية التوافق مع نظام التشغيل Windows 10 الجزء رقم F22T350FHW / LF22T350FHCXXK الملحقات طول كابل الطاقة: 1.5 متر ، كابل HDMI: نعم حجم الشاشة (بوصة) 22 شكل شاشة مسطحة نوع شاشة LED FHD نوع شاشة IPS دقة العرض 1920x1080 (WxH) نسبة العرض إلى الارتفاع FHD 16: 9 (شمعة / متر مربع) 250 شمعة / متر مربع نسبة التباين (TCR / DCR) 1000: 1 (نموذجي) معدل التحديث (هرتز) 75 هرتز تقنية Adaptive-Sync نعم (AMD) عمق البت / دعم الألوان 16.7 مليون زمن الاستجابة (مللي ثانية) 5 مللي ثانية عرض أفقي زاوية 178 درجة</p>'),
(7, 'App\\Model\\Product', 22, 'ar', 'name', 'YUFENG 3388 ترايبود dslr كاميرا المحمول المهنية حامل ترايبود'),
(8, 'App\\Model\\Product', 22, 'ar', 'description', '<p>تفاصيل المنتج لكاميرا YUFENG 3388 dslr حامل ثلاثي القوائم احترافي ، تستخدم قاعدة سبائك الألومنيوم المشعة إطارًا من السبائك يعزز الاهتزاز ويقلل الوزن مقارنةً بسبائك الألومنيوم. ✔ تجعل ميزات القفل والتصميم الجديدة من نوع الرافعة من السهل والسريع إزالة وطي الحامل ثلاثي القوائم. يعد Yuteng VCT 3388 تصميمًا متعدد الاستخدامات ومتعدد الاستخدامات للكاميرات وكاميرات الفيديو المنزلية أو حتى الهواتف الذكية المدمجة والمحمولة وسهلة الاستخدام. ✔ جهاز اختبار المستوى: تم تجهيز هذا الحامل ثلاثي القوائم بجهاز اختبار المستوى ، والذي يمكنه اكتشاف وضبط الوضع الأفقي له. عندما لا تكون الأرض مستوية ، يمكنك التعرف عليها على الفور وضبط ساق الحامل ثلاثي القوائم للحفاظ على المستوى. مع أقصى ارتفاع يبلغ 1250 سم وحامل ثلاثي القوائم ، من السهل ضبط ارتفاع الحامل ثلاثي القوائم لالتقاط صور في أوضاع متعددة مثل الماكرو أو البانوراما أو البورتري لا يساعد فقط في التقاط الصور بسهولة ، مما يقلل من الضبابية الناتجة عن اهتزاز الكاميرا ، يمنحك قدم الكاميرا Yuteng 3388 المرونة في الإنشاء</p>'),
(9, 'App\\Model\\Product', 2, 'ar', 'name', 'حذاء رسمي'),
(10, 'App\\Model\\Product', 2, 'ar', 'description', '<pre class=\"ql-syntax ql-align-right ql-direction-rtl\" spellcheck=\"false\">صغيرة ولكنها قوية - إذا تطلب الأمر زلزالًا أو صفارة إنذار لإيقاظك ، فهذه الساعة المصممة بشكل كلاسيكي هي بالضبط ما تبحث عنه. الهزاز القابل للضبط ذو 3 مستويات مثالي لمن يعانون من النوم الثقيل أو الذين يعانون من ضعف السمع. لديك أيضًا خيار الجمع بين الاهتزاز وصوت التنبيه المدمج (الجرس أو الطيور أو الموسيقى\r\n</pre>'),
(11, 'App\\Model\\Product', 3, 'ar', 'name', 'حذاء رياضي رمادي'),
(12, 'App\\Model\\Product', 3, 'ar', 'description', '<p><br></p>'),
(13, 'App\\Model\\Product', 4, 'ar', 'name', 'Kemei KM-329 مكواة فرد الشعر الكهربائية سيراميك مضادة للكهرباء الساكنة'),
(14, 'App\\Model\\Product', 4, 'ar', 'description', '<p><br></p><p><span style=\"color: rgb(32, 33, 36); background-color: rgb(248, 249, 250);\">تفاصيل المنتج من Kemei KM-329 مكواة فرد الشعر الكهربائية سيراميك مقاومة للكهرباء الساكنة المواصفات الجديدة: قابل للحمل ، اجعل تسريحة شعر ثانوية كل يوم. يسخن بسرعة ويجعل الشعر مفرودًا أو مجعدًا في غضون دقيقة واحدة. مطلي بالسيراميك الإلكتروني لشعر ناعم ولامع. يسخن واستعادة الحرارة بسرعة فائقة. هناك 4 درجات حرارة قابلة للتعديل: 160 درجة مئوية ، 180 درجة مئوية ، 200 درجة مئوية ، 220 درجة مئوية ، يمكن لمكواة فرد الشعر الجديدة تسخين الشعر بسرعة وتجعل شعرك مفرودًا في غضون دقيقة واحدة. يمكن للسيدات فرد الشعر أن يصنعن تصفيفة شعر مختلفة ، لذلك فإن السيدات جميلات كل يوم. إنه محمول بتصميم الشحن اللاسلكي. اسم العنصر: مادة فرد الشعر: ABS الطاقة: 40W-59W الجهد: 220 فولت التردد: 50 هرتز درجة الحرارة: 160 درجة مئوية -220 درجة مئوية الشعر المطبق: الاستخدام الجاف والرطب: مكواة فرد الشعر ، جهاز تجعيد الشعر مصدر الطاقة: نوع القابس الكهربائي: ميزات قابس الاتحاد الأوروبي : احترافي ، تسخين سريع ، قابل للتعديل درجة الحرارة ، محمول الحجم: 25 سم × 7 سم / 9.84 بوصة × 2.76 بوصة </span></p>'),
(15, 'App\\Model\\Product', 5, 'ar', 'name', 'كمبيوتر محمول والترو بريلود S41 اثنان في واحد (قابل للفصل) ، Intel N4'),
(16, 'App\\Model\\Product', 5, 'ar', 'description', '<p>تفاصيل المنتج لهاتف OPPO F15 الذكي بحجم 6.4 بوصة - ذاكرة وصول عشوائي (RAM) سعة 8 جيجا بايت - ذاكرة وصول عشوائي (ROM) سعة 128 جيجا بايت - كاميرا بدقة 48 ميجابكسل لا يمكن إرجاعها في حالة كسر الختم.نظام التشغيل: ColorOS 6.1.2 ، بناءً على معالج Android 9: وحدة معالجة الرسومات MTK P70: MTK MT6771V GPU: ARM Mali G72 بطارية MP3 900MHz: 4000mAh (TYP) ، 3900mAh (MIN) RAM: 8GB التخزين: 128GB VOOC Flash Charge: VOOC 3.0 حجم الشاشة: 16.2 سم (6.4 بوصة) شاشة تعمل باللمس: اللمس المتعدد ، دقة الشاشة بالسعة: 2400 × 1080 بكسل عند 408 نقطة في البوصة الألوان: 16 مليون لون ، نسبة الشاشة: 90.7٪ مستشعر الكاميرا: 48 ميجابكسل و 8 ميجابكسل و 2 ميجابكسل و 2 ميجابكسل المستشعر الأمامي: فتحة 16 ميجابكسل: أمامي F2.0 خلفي: رئيسي f / 1.79 ؛ زاوية عريضة f / 2.25 ؛ Portrait &amp; Mono f / 2.4 الخلفية: رئيسي 1 / 2.25 \'، 0.8um ثانوي زاوية عريضة 1/4\' ، 1.12um 2M 1/5 \'، 1.75um كاميرا أمامية للفيديو: 1080P / 720P @ 30fps كاميرا خلفية فيديو: 1080P @ 30fps الترددات 720P @ 30fps: GSM: 850/900/1800 / 1900MHz WCDMA: النطاقات 1/5/8 FDD-LTE: النطاقات 1/3/5/8 TD-LTE: النطاقات 38/40/41 نوع بطاقة SIM: نانو -SIM / Nano-USIM GPS: GPS مدمج ؛ يدعم A-GPS و Beidou و Glonass Bluetooth: 4.2 OTG: NFC المدعوم: لا يوجد مستشعر الحث المغناطيسي ، مستشعر الضوء ، مستشعر القرب ، مستشعر G-Sensor / مستشعر التسارع ، ارتفاع عداد الخطى: 160.2 ملم العرض: 73.3 ملم السماكة: 7.9 ملم الوزن: تقريبا. 172 جرام</p>'),
(17, 'App\\Model\\Product', 20, 'ar', 'name', 'مكواة جافة أوتوماتيكية ثقيلة الوزن من باناسونيك'),
(18, 'App\\Model\\Product', 20, 'ar', 'description', '<p>تفاصيل المنتج عن مكواة باناسونيك الأوتوماتيكية ذات الوزن الثقيل بالضغط بقوة مكواة جافة ثقيلة طلاء غير لاصق لوح وحيد غطاء معدني فاخر مصباح تجريبي ثرموستاتي كبير سلك قطني مقاوم للحرارة سهل التشغيل 6 إعدادات لدرجة الحرارة دليل ضبط درجة حرارة المعدن الكبير الوزن من 2 إلى 2.5 كجم منشأ المنتج الصين</p>'),
(19, 'App\\Model\\Product', 6, 'ar', 'name', 'ساري الحرير'),
(20, 'App\\Model\\Product', 6, 'ar', 'description', '<p><br></p>'),
(21, 'App\\Model\\Product', 19, 'ar', 'name', 'حذاء رياضي كاجوال خفيف الوزن برباط علوي للرجال'),
(22, 'App\\Model\\Product', 19, 'ar', 'description', '<p>تفاصيل المنتج من حذاء رياضي كاجوال خفيف الوزن برباط علوي رياضي للرجال 1: الجزء العلوي من القماش المسامي يوفر راحة فائقة ونعومة مرنة ومتانة 2: يوفر النعل المرن للمستخدم مساحة كافية بين القدمين والأرض ، مما يقلل من ضرر الركبتين. 3: إغلاق برباط ، سهل الارتداء والخلع.</p>'),
(23, 'App\\Model\\Product', 7, 'ar', 'name', 'حقيبة نسائية'),
(24, 'App\\Model\\Product', 7, 'ar', 'description', '<p><br></p>'),
(25, 'App\\Model\\Product', 18, 'ar', 'name', 'ساعة كرونوغراف جلد بي يو بميناء فرعي للنساء من نافيفورس NF5001 - ازرق وذهبي وردي'),
(26, 'App\\Model\\Product', 18, 'ar', 'description', '<p><br></p>'),
(27, 'App\\Model\\Product', 8, 'ar', 'name', 'جاكيت رجالي'),
(28, 'App\\Model\\Product', 8, 'ar', 'description', '<p><br></p>'),
(29, 'App\\Model\\Product', 17, 'ar', 'name', 'سماعات'),
(30, 'App\\Model\\Product', 17, 'ar', 'description', '<p><br></p>'),
(31, 'App\\Model\\Product', 9, 'ar', 'name', 'فيليبس'),
(32, 'App\\Model\\Product', 9, 'ar', 'description', '<p>تفاصيل المنتج من Philips BT1210 / 15 Professional Beard Trimmer Series 1000 للرجال ضمان دولي لمدة عام واحد من البائع أداء متين ومتسق مع شفرات DuraPower المصنوعة من الفولاذ المقاوم للصدأ لحدة تدوم طويلاً تقنية DuraPower لعمر بطارية أطول عمرًا يصل إلى 30 دقيقة من الاستخدام اللاسلكي بعد 8 ساعات شحن USB للاستخدام المريح اختر لحية طويلة بطول 5 مم أو لحية قصيرة لمدة 3 أيام أو مظهر بدون تشذيب يشير الضوء الموجود على الجهاز إلى وقت شحن البطارية شفرات صديقة للبشرة للحصول على بشرة ناعمة يمنع قفل السفر أداة التشذيب من بدء التشغيل العرضي للانفصال رأس للتنظيف السهل تصميم مريح لسهولة التعامل مع الجهد الكهربائي في جميع أنحاء العالم ، دون الحاجة إلى الزيت</p>'),
(33, 'App\\Model\\Product', 16, 'ar', 'name', 'أزياء العلامة التجارية الفاخرة ووتش المرأة ساعة اليد النسائية حجر الراين'),
(34, 'App\\Model\\Product', 16, 'ar', 'description', '<p>تفاصيل منتج ساعة اليد النسائية الفاخرة من حجر الراين الحركة: حركة كوارتز مقاومة الماء العمق: غير مقاومة للماء النمط: فاخر وحديث وغير رسمي حزام نوع المادة: الفولاذ المقاوم للصدأ قطر القرص: 21 ملم رقم الموديل: ساعة نسائية طول الشريط: 17.4 سم الهيكل السماكة: 7 ملم عرض الشريط: 1 ملم شكل الهيكل: دائري اسم العلامة التجارية: ستار ووتش</p>'),
(35, 'App\\Model\\Product', 10, 'ar', 'name', 'تي شيرت أحمر'),
(36, 'App\\Model\\Product', 10, 'ar', 'description', '<p><br></p>'),
(37, 'App\\Model\\Product', 11, 'ar', 'name', 'تي شيرت رجالي نصف كم - أسود'),
(38, 'App\\Model\\Product', 11, 'ar', 'description', '<p>Product details of Half Sleeve Men\'s T-Shirt - Black Product Type: T-shirt Color: Black Main Material: Cotton Gender: Men Sleeve: Half Sleeve</p>'),
(39, 'App\\Model\\Product', 15, 'ar', 'name', 'ر المباعة بشكل من'),
(40, 'App\\Model\\Product', 15, 'ar', 'description', '<p>تفاصيل المنتج 65 Class Q60R QLED Smart 4K UHD TV (2019) أفضل تلفزيون من حيث جودة السعر الأساسية QLED بدون One Connect وغيرها من الرقائق غير الضرورية جودة صورة Smart 4Q HDR Apple AirPlay 2 و iTunes TV - لم تعد بحاجة إلى دقة AppleTV 4K - 3840x2160 (4x Full HD) إجمالي طاقة الصوت (RMS) معدل التحديث 20 واط 120 هرتز الأصلي / 240 هرتز معدل الحركة الواضح استهلاك الطاقة 205 واط نظام التلفزيون NTSC PAL-M PAL-N ISDB-TB الأبعاد بدون القاعدة (العرض × الارتفاع × العمق) مم 1456.1 × 836.6 × 59.2 تصنيف الاستهلاك (ختم ENCE) الوزن الأساسي (كجم): 26 الأبعاد مع القاعدة (العرض × الارتفاع × العمق) مم 1456.1 × 917.0 × 322.8 مجزأ / جهد مزدوج محتويات العبوة - تلفزيون Samsung 65Q60 - وحدة تحكم عن بعد واحدة - TM1950C - قاعدة - بطاريات (للتحكم عن بعد) سلك الطاقة - نمط الفتحة اليدوية لـ Vesa Wall Mount Notes 1. من أجل الاستمتاع بأقصى جودة للتلفزيون الخاص بك ، تحتاج إلى استقبال إشارة رقمية بتنسيق شاشة عريضة عبر المحول المدمج. 2. وفقًا للقانون رقم 11.291 / 06 ، نعلمك أن استخدام معدات أعلى من 85 ديسيبل قد يضعف السمع. 3. نظرًا لمعايير ABNT وقرارات CONMETRO رقم 13 لعام 2006 ورقم 2 لعام 2007 ورقم 8 لعام 2009 ، يقوم المصنعون بتغيير المقابس إلى المعيار الجديد. لاستخدام هذا المنتج ، ستحتاج إلى محول أو استبدال المنفذ القديم. نحن لسنا مسؤولين عن هذا التغيير. 4. جزء من الوصلات خلفي. لوضع التلفزيون في حامل على الحائط أو اللوحة ، تحقق مع الشركة المصنعة للحامل من التوافق والمساحة المطلوبة لتوصيل الكابلات. 5. المحتوى / الوصول إلى التلفزيون الذكي محدود ويختلف حسب البائع. لكي تعمل الميزة ، يجب توصيل التلفزيون بشبكة الإنترنت عبر كبل الشبكة أو نظام Wi-Fi. نحن لسنا مسؤولين عن التكوين. * العناصر المباعة بشكل منفصل إرسال الملاحظات المحفوظة</p>'),
(41, 'App\\Model\\Product', 12, 'ar', 'name', 'كاميرا DSLR'),
(42, 'App\\Model\\Product', 12, 'ar', 'description', '<p><br></p>'),
(43, 'App\\Model\\Product', 13, 'ar', 'name', 'ساعة أنالوج باللون الأسود للرجال'),
(44, 'App\\Model\\Product', 13, 'ar', 'description', '<p>تفاصيل المنتج من Black Analog Watch For Men تتميز الساعة بتصميم منفعل وبأسعار معقولة. مصنوعة من مادة عالية الجودة ، هذه الساعة للرجال خفيفة الوزن وتدوم طويلاً أيضًا. يمكنك التباهي به بملابسك الرسمية وغير الرسمية للحصول على الإطراء من الجميع. نظرًا لكونه ميسور التكلفة بسهولة لجعله يجلس مباشرة على معصمك ، فإنه يمكن أن يضيف بعدًا ماديًا إلى أسلوبك. هناك طريقة لإضفاء مظهر أنيق على مظهرك غير الرسمي ، وذلك لإضفاء لمسة جمالية على هذه الساعة الرجالية الأنيقة. تم تصميم هذه الساعة خصيصًا للرجال الذين يؤمنون بحياة عصرية وعصرية. هذه الساعة مستخدمة بكثرة في أي مناسبة وينصح بها الشباب بشدة</p>'),
(45, 'App\\Model\\Product', 14, 'ar', 'name', 'ساعة رجالي من الستانلس ستيل باللون الأسود'),
(46, 'App\\Model\\Product', 14, 'ar', 'description', '<p>تفاصيل المنتج لساعة رجالي من الفولاذ المقاوم للصدأ الأسود النمط: الموضة والحركة غير الرسمية: نوع المشبك QUARTZ: مشبك قابل للطي مع عمق مقاومة الماء الآمن: لا يوجد مادة مقاومة للماء: الفولاذ المقاوم للصدأ طول السوار: 40 سم سماكة الهيكل: 10 ملم عرض السوار: 20 ملم شكل الهيكل: دائري نوع العنصر: ساعات المعصم كوارتز نوع مادة الشريط: الفولاذ المقاوم للصدأ الميزة: مقاومة الصدمات قطر قرص الساعة: 40 ملم نوع مادة النافذة: زجاج</p>'),
(47, 'App\\Model\\Category', 31, 'ar', 'name', 'الإمدادات الطبية'),
(48, 'App\\Model\\Category', 29, 'ar', 'name', 'لعبة'),
(49, 'App\\Model\\Category', 27, 'ar', 'name', 'تلفزيون وأجهزة منزلية'),
(50, 'App\\Model\\Category', 20, 'ar', 'name', 'الساعات والاكسسوارات'),
(51, 'App\\Model\\Category', 17, 'ar', 'name', 'أزياء نسائية'),
(52, 'App\\Model\\Category', 5, 'ar', 'name', 'الهواتف المحمولة'),
(53, 'App\\Model\\Category', 4, 'ar', 'name', 'إلكترونيات'),
(54, 'App\\Model\\Product', 27, 'ar', 'name', 'Checked Shirt'),
(55, 'App\\Model\\Product', 27, 'ar', 'description', '<p>High Quality</p>'),
(56, 'App\\Model\\Category', 2, 'ar', 'name', 'الأحذية'),
(57, 'App\\Model\\Category', 1, 'ar', 'name', 'أزياء رجالية'),
(58, 'App\\Model\\Category', 3, 'ar', 'name', 'مستلزمات'),
(59, 'App\\Model\\Category', 32, 'ar', 'name', 'المواد الاستهلاكية الجراحية'),
(60, 'App\\Model\\Category', 30, 'ar', 'name', 'دمية طفل'),
(61, 'App\\Model\\Category', 28, 'ar', 'name', 'تلفزيون (تلفزيون)'),
(62, 'App\\Model\\Product', 28, 'ar', 'description', '<p><br></p>'),
(63, 'App\\Model\\Product', 28, 'ar', 'name', 'Kurti'),
(64, 'App\\Model\\Attribute', 4, 'ar', 'name', 'لون'),
(65, 'App\\Model\\Attribute', 2, 'ar', 'name', 'شكل'),
(66, 'App\\Model\\Attribute', 1, 'ar', 'name', 'مقاس'),
(67, 'App\\Model\\Attribute', 5, 'ar', 'name', 'تيبوس'),
(68, 'App\\Model\\Attribute', 3, 'ar', 'name', 'وزن'),
(69, 'App\\Model\\Category', 33, 'ar', 'name', 'أولاد'),
(70, 'App\\Model\\Category', 34, 'ar', 'name', 'قميص'),
(71, 'App\\Model\\Category', 6, 'ar', 'name', 'بنطال'),
(72, 'App\\Model\\Category', 7, 'ar', 'name', 'قمصان'),
(73, 'App\\Model\\Category', 8, 'ar', 'name', 'قمصان كاملة الأكمام'),
(74, 'App\\Model\\Category', 9, 'ar', 'name', 'قمصان نصف كم'),
(75, 'App\\Model\\Category', 10, 'ar', 'name', 'قمصان بولو'),
(76, 'App\\Model\\Product', 21, 'ar', 'name', 'i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone'),
(77, 'App\\Model\\Product', 21, 'ar', 'description', '<p>Product details of i7s TWS Mini Wireless Bluetooth Earphone Stereo Earbud Headset With Charging Box Mic For iPhone Android All Smart Phone Drive: 15mm Impedance: 32 OHM Bluetooth version: Bluetooth v4.1+EDR Bluetooth frequency: 2.4GHz Power level: CLASS II, output power: 30mW Bluetooth Distance: obstacle free 10 meters Drive: 15mm Impedance: 32 OHM Bluetooth version: Bluetooth v4.1+EDR Bluetooth frequency: 2.4GHz Power level: CLASS II, output power: 30mW Bluetooth Distance: obstacle free 10 meters</p>'),
(78, 'App\\Model\\Category', 11, 'ar', 'name', 'أحذية رياضية'),
(79, 'App\\Model\\Category', 12, 'ar', 'name', 'ينامون'),
(80, 'App\\Model\\Category', 13, 'ar', 'name', 'آلة تصوير'),
(81, 'App\\Model\\Category', 14, 'ar', 'name', 'تفاحة'),
(82, 'App\\Model\\Category', 15, 'ar', 'name', 'يامسونغ'),
(83, 'App\\Model\\Category', 16, 'ar', 'name', 'ويجا'),
(84, 'App\\Model\\Category', 19, 'ar', 'name', 'ساري'),
(85, 'App\\Model\\Category', 24, 'ar', 'name', 'ساعة رجالية'),
(86, 'App\\Model\\Category', 26, 'ar', 'name', 'ساعة نسائية');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `cm_firebase_token` varchar(255) DEFAULT NULL,
  `temporary_token` varchar(255) DEFAULT NULL,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `login_medium` varchar(255) NOT NULL DEFAULT 'general'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verification_token`, `phone`, `cm_firebase_token`, `temporary_token`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `login_medium`) VALUES
(1, 'Ashek', 'Elahe', 'ashek@gmail.com', '2021-03-14-604dd75f4996c.png', 0, NULL, '$2y$10$XIgAc02VTNM6xoGJOEqEwuDsxcFTJ.IDwDsT0nHCqt3clmnhZK0se', NULL, '2021-03-11 11:03:01', '2021-03-14 09:29:03', NULL, '01879762951', 'eWqKlKymSc6T4Pp6VcB4DJ:APA91bFdEER03OcomLLOtfJ9yUGlgkeW80vZGfS2ZC-5iiCoWZ9mf7WXKH6igK4s3v7D23tKx2FTd-D5-ZDlGMNQbJG9lulwoNEflCub_6rchIUlCTsX-LSGeGu0D9QUQc9QIZ9Ck0qA', NULL, 0, 0, NULL, 'general'),
(2, 'Habib', 'Rahman', 'mhrhabib39@gmail.com', '2021-03-11-604a0a5080df7.png', 0, NULL, '$2y$10$CGgHAZC0DQCSeJGWlZxvP.k/l8LZqWjFjapDQH6GvPULwTzQR9xpi', NULL, '2021-03-11 11:39:20', '2021-03-11 12:17:20', NULL, '01774050226', 'ejvYGJZeSOKuMf8lRb5jhW:APA91bEAFif7FZPchOecbOrpsVGF2tilg1H8Hm9_cFJEhVfJBhX9q3lQKSN-vX2nGk3Ni4kT5UGStKg4ST3i_u2s5qG5g-S1p8y3omTMRwVPzLkXwNJlIDHHsrn6TP-qkbi2N0c22WJZ', NULL, 0, 0, NULL, 'general'),
(3, 'Istiak', 'Ahammed', 'mdjisan940@gmail.com', NULL, 0, NULL, '$2y$10$2E.9HJ3zS9.JqZuFz7c5E.gLSnraj3ZSvqukplG7RTPc5zrk58leS', NULL, '2021-03-11 11:58:57', '2021-03-11 11:58:57', NULL, '01601259940', 'cAJmAEiWSo-VgPcFqfUtV2:APA91bFidI6rwUrZSS6Bgovyw4RiRxFF5MD33B2hst4je5pdWis5AsomBQ9aVFeOo8JZdB42HIjEixQrvVjWjFPxNCHBG9ichToQ3YHc6R8g3nchLtRJx9-Xz4KbEJKEKG0RvV5inKhV', NULL, 0, 0, NULL, 'general'),
(4, 'Nipon', 'Roy', 'nipon34.bd@gmail.com', NULL, 0, NULL, '$2y$10$Qo5kHY6bIyaaMNzb/QI8Se/KnWphhofhcyJcM6OBnsIKXsc6iBnoy', NULL, '2021-03-14 11:43:17', '2021-03-14 11:43:17', NULL, '01747413273', 'ecPtKONyQr6PmJaM4exyge:APA91bHg8Colcu9yAIuYpRIgA4FyxZraAW17aKQ2QK2hlc1kBnUHkJ_0mgKX_oNtiXON9xYVn4AoVaAdPiayWoOJdfZOFXQa6xniEhcTP1x-66_bVsutQhBS88tjSiAXVzdiD8V6CTp5', NULL, 0, 0, NULL, 'general'),
(5, 'Kabir', 'Hossen', 'kabir@gmail.com', NULL, 0, NULL, '$2y$10$BUn7s3ny6YJjUf/77dRneObjutCy0FNpd7G19pSJMw7yHGAj5Wn9q', NULL, '2021-03-22 10:44:41', '2021-03-22 10:44:41', NULL, '01787816047', 'eYN8FaazTnyXj2kye2_0Ut:APA91bGZ_hXGUZ0eTRNxYuHZPzLz46wCXSMOYgqBZrE0XMMDIk0cdrI4-VeY9dRtm0GOK4hBbKRTUrOdLW3bwoiMc2iUxw_Yir95rb_Rkjx2_cLcVkoQNLEWeI7DEjVOIS8XrR6l_sKJ', NULL, 0, 0, NULL, 'general'),
(6, 'Test', 'User2', 'tbkkpvcffrpuwcgmut@niwghx.com', NULL, 0, NULL, '$2y$10$TUXtwCBcw1NwRXxLtwfYr.VbfYoUaCXcjFeTdvybJ6dlFl0CuziVu', NULL, '2021-03-22 19:17:48', '2021-03-22 19:17:48', NULL, '+8809999999999', 'f8yAKfbwQZeepc5EJCX2UV:APA91bEfIDhnucbuvH_mGux6cVQIopy-3a4BYmBJ0JQbAu5hSUh3DiSrYq-SismTeL_6NExELrzN0x-N_nBphvH5GxwpozWG6YNS8Vm3LcKYYTYLGPd7TbLGj8hbX-t9Ys5H7XaNf87e', NULL, 0, 0, NULL, 'general'),
(7, 'Adf', 'Err', 'demo11@demo.com', NULL, 0, NULL, '$2y$10$JdCHveT0EJc4g50iqj5IL.g1hZ5gm7rojuVxMjd7Bs0.yGh.2vp8i', NULL, '2021-03-22 20:50:26', '2021-03-22 20:50:26', NULL, '556', 'dKMjQGxjSwirrafPZGImb9:APA91bE6SDfTlwaWKEorh0edCywgHsyUMfOnLzaJeVfpM5bfTDnAu8AM35Z_75OHz1uqZHoSS_evIqxHbcD01iiwk38eaqrPZTSi7lgC90Wh28DIiWK9gJcw6f5ihdmZo7S3HlCGmURz', NULL, 0, 0, NULL, 'general'),
(8, 'jong', 'lee', '7124796@naver.com', NULL, 0, NULL, '$2y$10$ZsFNFSeRwNd4qRcqRS8p3e704ZLxhCIOl.PUjoHtQ/n.dHxb8E0CK', NULL, '2021-03-22 21:43:03', '2021-03-22 21:43:03', NULL, '+821072254796', 'f9e-Go7kSmKgFgQt8WHBz2:APA91bF-9XWhEG3swHQxQBjzSJr8sCYPl9yidD7G-95Yc5Iy7wgaTXL3VHRpOthztnEeBfdYNuDvT7nk942De1F_sp-ylDOjESbR5Fdw997uhBpXpm9QP_JVTLmqVSHI3pk_sBKwsTg0', NULL, 0, 0, NULL, 'general'),
(9, 'Pedro', 'Pereyra', 'pmbmusicstudio@gmail.com', NULL, 0, NULL, '$2y$10$DqHGJyT7GcoHNK/V1cJSm.0zg.YZwKhofJCDGsg98sy7h43fDArdi', NULL, '2021-03-22 21:46:51', '2021-03-22 21:46:51', NULL, '8299184564', 'e67CVLmzQJu5WPKhzF-wAF:APA91bHJlZQR4rjYNOk_W_gp4nxPqOztYvHZyVAeQRLdKpoobR1amZI1Xu65PKlxyzLEPo0wu0pDOHC8i-c5ScAf1p-n3eP8MSpkg5QPtJVUe4CsqmFuYpOm-y3LRLVQ4lbc8dvD5r1O', NULL, 0, 0, NULL, 'general'),
(10, 'Maged', 'Dsd', 'demo@gmail.com', NULL, 0, NULL, '$2y$10$jjC41cAzia27eMOzRZyWGurib8rTFP9H/3dhhcNZiJ1kHTodDaYbW', NULL, '2021-03-22 22:54:33', '2021-03-22 22:54:33', NULL, '010000', 'cz6tmoAdTDSg663m5NDAAu:APA91bFTzIddOSIZWmb5mFm5o7JdYqQkaRhiq_AxTdmrf_GuKjO651vz2cnOvRZbIRq20YGx4J-nD-9bZ1N2GkvWC9GcZYLoNPmdd9X-dnC9DMFrFAzFnc3QrZ7EJASniWfHgx-D4usO', NULL, 0, 0, NULL, 'general'),
(11, 'Manish', 'Sharma', 'gudvansh@gmail.com', NULL, 0, NULL, '$2y$10$/pkgl.njg7a353tPIQjDjuc7QVbSher8ZjtVJOKdjVUuPizODHnUe', NULL, '2021-03-28 15:28:06', '2021-03-28 15:28:06', NULL, '7827054641', 'fAQ3bDTzRAO_zy_7VLBcR9:APA91bHJ76_6uluN9EZ2UuCfQwGtGyDrlHMAzeVAyz5tYyqEebIJIw0Y-HU28zQp1iYFf3nhIEf1JLFH8GNeYSnzfs1K3LMV6a7pzDN58UC2M5u5khazOcwflGxe-WO96rbXaUifHm4g', NULL, 0, 0, NULL, 'general'),
(12, 'Sabrina', 'Proma', 'sabrina77proma@gmail.com', NULL, 0, NULL, '$2y$10$gMo2t2w91VujJdVfXx4y.Om3ailQODG9sIx8Aublxo1bhkcOvx2wC', NULL, '2021-06-12 17:50:48', '2021-06-12 17:50:48', NULL, '01673138206', 'cRKN-AFOR9eqgZPz-PMZjg:APA91bFy8jNovzIysgJqJgrjwOvznv4n0cYPPt8tD7dN5U83oy5AOkkgmeKEoBvCMUHyJ-HKRuG5p2Qf8o0l95w9_9fnvjCF1NxgT2fMbI48FrYqIOwA-bBmonEdh6qbhnbKIoGrPyvQ', NULL, 0, 0, NULL, 'general'),
(13, 'Sultan', 'Mahamud', 'sunnysultan1640@gmail.com', NULL, 0, NULL, '$2y$10$5WOkAPpdOjPUr.gFFQYXpe7dSwVT8/U9X1yrk28hyZJySx9s4d40m', NULL, '2021-06-12 18:20:32', '2021-06-12 18:20:32', NULL, '0171122334566', NULL, NULL, 0, 0, NULL, 'general'),
(14, 'abc', 'doe', 'showrov2185@gmail.com', NULL, 0, NULL, '$2y$10$iX2Vj7ZT7/K98mtjF.eQf.JBnLI3aS/WnhXsscod6Ll4TIQogK3GO', NULL, '2021-06-12 18:20:36', '2021-06-12 18:20:36', NULL, '000000', NULL, NULL, 0, 0, NULL, 'general'),
(15, 'Abdul Aziz', 'Sarker', 'azizsarkerarc@gmail.com', NULL, 0, NULL, '$2y$10$B0oq./t2DkITkzoST053Xe1O6gqJteeMwW2V3h3TPcu2fdYzxn0ga', NULL, '2021-10-13 04:18:27', '2021-10-13 04:18:27', NULL, '+8801975758279', 'dhDV2p8qSWmzGSB2qi9LeT:APA91bH-WrbZXDV8KLvDiXpbk2zklL2UvyRz9NyrhxtXKD0KbE4KuXnlhabb0_JCR2Eiqv19ro8xtUl526aUMUwODVRzqUkwzBH-2miuXYCV0k0krqzLAvBxh7fCHGz_C5EWhOwFEXmY', NULL, 0, 0, NULL, 'general'),
(16, 'Pili', '124', 'pili@gmail.com', '2021-10-13-6166f9f9e6a55.png', 0, NULL, '$2y$10$r/OxcCjiEQEapUFCcCU5peXlS/Swjn9S5KmwBnt5gimSNHfqojq2G', NULL, '2021-10-13 04:20:05', '2021-10-13 04:23:37', NULL, '+880162434326', 'cO1kYEL9QYWq1Bmcyhslun:APA91bEathX3OxxsTrymSccmP5veswUypd55dqjDmGLL5TCJ9T867uI8NaxD6piDN9-hLTJxbknH8CPW1Qcv7C9QqY2v3gm7rOqHppwX4ym6B_vgyxpCKw0IaPtgTUdMUfJojKOLaXQU', NULL, 0, 0, NULL, 'general'),
(17, 'J', 'R', 'a@gmail.com', NULL, 0, NULL, '$2y$10$M7FqIv59EPC8YpmbMz5yx.2MZfol7Z1jLV1698siNCJpH55.0u2jq', NULL, '2021-11-17 03:02:42', '2021-11-17 03:02:42', NULL, '+8801705227358', 'cz8TkQewTfK6lfcN4wE64v:APA91bGInTtAeh-I8tkWEdvq5drTx2t55g3UDR_aZwIXlz2HJHCDc9KHpOtesb-GaZlqAemQMKu2sXI473v5LrRn7-6gTE922cWE2swYubeckqbbRLpSEtSG418rDFG0q9mn-wWUgnAF', NULL, 0, 0, NULL, 'general'),
(18, 'Mehedi', 'Hasan', 'hah@gmail.com', NULL, 0, NULL, '$2y$10$WFX.NHbhFj3.FzNXZgV7sOsXhtZ9b0HsKq2RGyCklscJ3Bccpq5dq', NULL, '2021-11-17 03:14:13', '2021-11-17 03:14:13', NULL, '+8801677696277', 'c5eGgdIiSvmWecbcPiWmOg:APA91bGg3AkPfM0yLZHpTgT_TzkvwsaC8tUUjc_lAnM1uTj0dzIMomQ8QWAzRHbwPjGnf9ibg4gzAwzBX2gyiDUq_71STRFBo7fr1hZimE6ZUbL9HaMS7wfPjlB1EuzqROUqcUlhLKOW', NULL, 0, 0, NULL, 'general'),
(19, 'Md Mobarak', 'Ali', 'dev@test.com', NULL, 0, NULL, '$2y$10$AqGX4qJnuqGDCGP7/cH3FOJ97hRRNhMajxa8cB3sPlItjXLsGAB9O', NULL, '2022-07-31 06:03:15', '2022-07-31 06:09:31', NULL, '+8801641757712', NULL, 'tAifn3MEn9A1Dj7rcuB4fQCNzVJzzcZUPIeSA1cK', 0, 0, NULL, 'general'),
(20, 'Shariful', 'Islam', 'imdshariful171@gmail.com', NULL, 0, NULL, '$2y$10$OovzWhpwHJWy5swQozO4leJLmlnBsT5oJFq7GZ.bgpn3OjDp.mP3y', NULL, '2022-07-31 06:08:15', '2022-07-31 06:26:51', NULL, '+8801632466063', NULL, 'gMl4YARCEBYTpUEpBtWZlR5GI9qO1bKPNdiYzfR6', 0, 0, NULL, 'general'),
(21, 'Test', 'Customer', 'testcustomer@gmail.com', NULL, 0, NULL, '$2y$10$LIwPcd1qxcJZ72GW9NfHAu0Yl8KfrKSTkLIDiWswxTPaGiCmKqgmm', NULL, '2023-06-22 12:28:03', '2023-06-22 12:28:04', NULL, '+8801122334455', 'ernbxzQeSn23lxhCtMK1VL:APA91bFctYoOGmQXraa0sbEdAxCu6iwiJpeqrob6eYEQ2LTEywNBJHfDafJR0-5eDIoIdOYb9I0var1j-RAHens7I5dbZj12HI7MkI5ykhnV74wZ4vYcfpsu6wmrLxjHHzjL-GKzs1Xg', '9fjA93uPb9emsn0yOm0LuS24RvuiasUn2tPcjjxl', 0, 0, NULL, 'general'),
(22, 'Test', 'Customer', 'customer@customer.com', '2023-06-22-64941aa70d882.png', 0, NULL, '$2y$10$i5PBa2aCnDXtqjhBTHL9TOVcVYRu8HPXRlTFkTUv60wHPHNvtz/KK', NULL, '2023-06-22 12:30:40', '2023-06-22 15:59:00', NULL, '+8801621720045', 'dS8MDF3TIZ76_vIahz9zNM:APA91bFUo6yRPKXmRN-qKMU8WoZ_iGFjjulH94C2p8UjIannwI5qova59qHggBb406QdqAhzmnOjlYHYTWDUWW8p9p7hZUw-C4m22NnL2TZ7vCqBJlRnm3ry-_mtqpVq6Out7BnmiTQP', '9LyA42GxBRtHXoKR3DP3ai3MhSmy0R5WL6PuFWXO', 0, 0, NULL, 'general'),
(23, 'Mobarak', 'Ali', 'mobarak.6amtech@gmail.com', 'def.png', 0, NULL, '$2y$10$BPnInWqP5F5dKKlGxj21OufRinL1Ca6mL.OpL6B4lEa0qdUCRI7Om', NULL, '2023-06-22 13:06:52', '2023-06-22 13:06:52', NULL, NULL, 'f8V83CNu8kCXhrLaFadjmU:APA91bGNwSb7EpBNlA23wwc15kZhKunKx0SVq6cm1KjVM8RhGjmDch4P7S603l5uSdYj3b4WyaQCs6TuBLvRWT12FW7ClEo9NjqD0S4UZ9z7zmVu4w_GXvcpoPE2Y_2v0aVYrQUQ-l6L', NULL, 0, 0, NULL, 'google');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '2021-03-11 12:11:11', '2021-03-11 12:11:11'),
(2, 2, 15, '2021-03-11 12:33:53', '2021-03-11 12:33:53'),
(3, 2, 14, '2021-03-11 12:33:59', '2021-03-11 12:33:59'),
(4, 2, 13, '2021-03-11 12:34:02', '2021-03-11 12:34:02'),
(5, 2, 12, '2021-03-11 12:34:06', '2021-03-11 12:34:06'),
(6, 2, 9, '2021-03-11 12:41:11', '2021-03-11 12:41:11'),
(18, 3, 13, '2021-03-11 17:00:17', '2021-03-11 17:00:17'),
(20, 1, 4, '2021-03-13 08:39:12', '2021-03-13 08:39:12'),
(21, 1, 2, '2021-03-13 08:39:46', '2021-03-13 08:39:46'),
(22, 2, 20, '2021-03-13 10:09:27', '2021-03-13 10:09:27'),
(25, 2, 5, '2021-03-13 12:00:03', '2021-03-13 12:00:03'),
(26, 4, 3, '2021-03-15 04:01:22', '2021-03-15 04:01:22'),
(28, 5, 3, '2021-03-22 11:05:04', '2021-03-22 11:05:04'),
(29, 5, 5, '2021-03-22 11:05:40', '2021-03-22 11:05:40'),
(30, 5, 26, '2021-03-22 11:06:44', '2021-03-22 11:06:44'),
(31, 5, 20, '2021-03-22 11:08:28', '2021-03-22 11:08:28'),
(32, 7, 5, '2021-03-22 20:50:43', '2021-03-22 20:50:43'),
(35, 8, 5, '2021-03-22 21:46:35', '2021-03-22 21:46:35'),
(36, 9, 5, '2021-03-22 21:57:34', '2021-03-22 21:57:34'),
(39, 1, 26, '2021-04-18 18:00:17', '2021-04-18 18:00:17'),
(40, 12, 3, '2021-06-12 18:15:31', '2021-06-12 18:15:31'),
(41, 12, 19, '2021-06-12 18:15:49', '2021-06-12 18:15:49'),
(42, 16, 25, '2021-10-13 04:22:19', '2021-10-13 04:22:19'),
(43, 17, 10, '2021-11-17 03:07:33', '2021-11-17 03:07:33');

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
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_conversations`
--
ALTER TABLE `dc_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email_or_phone`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dc_conversations`
--
ALTER TABLE `dc_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100050;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
