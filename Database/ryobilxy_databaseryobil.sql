-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2021 at 10:44 AM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ryobilxy_databaseryobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kurirs`
--

CREATE TABLE `kurirs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenisKurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaLayananKurir` double(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kurirs`
--

INSERT INTO `kurirs` (`id`, `jenisKurir`, `hargaLayananKurir`, `created_at`, `updated_at`) VALUES
(1, 'JNE Cepat', 10000.00, '2021-12-02 12:04:08', '2021-12-08 04:32:17'),
(5, 'NinjaRanger', 5000.00, '2021-12-03 03:33:20', '2021-12-03 03:33:20'),
(8, 'Teleportasi', 2000.00, '2021-12-05 13:03:14', '2021-12-05 13:03:14'),
(15, 'Gerobag', 10000.00, '2021-12-07 13:25:21', '2021-12-07 13:25:21'),
(17, 'Sepeda', 5000.00, '2021-12-08 04:32:02', '2021-12-08 04:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(18, '2016_06_01_000004_create_oauth_clients_table', 1),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2021_11_25_091830_create_pesanans_table', 1),
(23, '2021_11_25_092056_create_kurirs_table', 1),
(24, '2021_11_25_092114_create_pakets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('019ebd3af96cb4a7efa8695af5ea19e05886b6d1bd6f4e16c096397875399cd008d8900e390a451c', 2, 1, 'Authentication Token', '[]', 0, '2021-12-03 02:18:51', '2021-12-03 02:18:51', '2022-12-03 09:18:51'),
('01ea1ad2f7a4805a80b894c393abff9993b7523f265b0156740b4731e499e70bae6071606f9f2c51', 2, 1, 'Authentication Token', '[]', 0, '2021-12-07 13:24:37', '2021-12-07 13:24:37', '2022-12-07 20:24:37'),
('05c0d64695e342781e2773d9b9bd12474fa858c0b7e4e1c1194027e12caaa2d568dcbdc713890961', 2, 1, 'Authentication Token', '[]', 0, '2021-12-05 12:55:36', '2021-12-05 12:55:36', '2022-12-05 19:55:36'),
('06118d99563598b78ff4256301e6ec70a0d2cc545b8e424c804418f3193ab69d5f2cff565ff6db11', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:08:47', '2021-12-02 13:08:47', '2022-12-02 20:08:47'),
('064a7f2bb1d8b09e63bb517f9fda330565d6695406821bd9ff6161b3cb81e6172a3f4b09e00adb83', 1, 1, 'Authentication Token', '[]', 0, '2021-12-03 06:41:49', '2021-12-03 06:41:49', '2022-12-03 13:41:49'),
('0f74b516b7ea93f6a3ba364319f4634691fe3252ebda3840aba060a5eb749e1fa5194876d2ec673a', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:33:52', '2021-12-02 12:33:52', '2022-12-02 19:33:52'),
('0fbdcd0c2a8fabd8b0fca2258bc0777175606b974b82558b8f3f6a5f1b165918be7569c84b33ed01', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:11:12', '2021-12-02 13:11:12', '2022-12-02 20:11:12'),
('106820e0cdc6a7790e2da44f3f9e8bbe97b5eb03ca1823b9decdcead4a271eaabbac417921ee74e0', 1, 1, 'Authentication Token', '[]', 0, '2021-12-05 12:46:41', '2021-12-05 12:46:41', '2022-12-05 19:46:41'),
('10fbc6a957e48f63c83b5e628ae9be552fefc1f47457c853093dc7f377cfa90a2cf3c68834047b68', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:54:04', '2021-12-02 13:54:04', '2022-12-02 20:54:04'),
('139fe36899d753a018493a75e207ea4939f3dffd6162aa34b1379f01c391ae72d64c01493d41185e', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:23:09', '2021-12-02 13:23:09', '2022-12-02 20:23:09'),
('14d08ecdb78503e352ee6f299d72df588abfcabba4bd46806fbefa5ab95e9d16e4fa6c8661e532a0', 2, 1, 'Authentication Token', '[]', 0, '2021-12-05 18:39:58', '2021-12-05 18:39:58', '2022-12-06 01:39:58'),
('16318ae2a7fd3c5871084098655ced0612c4d42995ac054a1762b3e182d30282b29175c4ccda6ab9', 17, 1, 'Authentication Token', '[]', 0, '2021-12-06 11:50:17', '2021-12-06 11:50:17', '2022-12-06 18:50:17'),
('208bc88d7aab09ce02edd9883cd8659e9fd5d34b6cac2298480f8a9ab5f4b0a0e58b4d318937ccc5', 1, 1, 'Authentication Token', '[]', 0, '2021-12-03 02:12:06', '2021-12-03 02:12:06', '2022-12-03 09:12:06'),
('2bf1649742ee7c6992d802aaaa057b69b874e3981bfd0db9416f3bd784030618aaf1b207ec379233', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:36:48', '2021-12-02 13:36:48', '2022-12-02 20:36:48'),
('2d5f1d734fd293022f473e6e7d826476d745caf0a4234e3c284bff35fe305972349b8f726ec6bc6c', 2, 1, 'Authentication Token', '[]', 0, '2021-12-05 18:32:36', '2021-12-05 18:32:36', '2022-12-06 01:32:36'),
('2de8980b6951a47201a99901ab323d63e016e54eb76b63b6a1f106feb0b331405b0354218059aa6e', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:39:03', '2021-12-02 13:39:03', '2022-12-02 20:39:03'),
('2f0bc34ac608ce24b556fc0c7b0cddb35f58e0865325b70f635e0cf08ba123c73f2845d1e028850c', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:35:29', '2021-12-02 12:35:29', '2022-12-02 19:35:29'),
('319350e6eef11c53c0a6dc86aaf9380bf772a5dc63424e4c5e957df611d8c894fe492f6c3a12bd13', 7, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:09:09', '2021-12-05 13:09:09', '2022-12-05 20:09:09'),
('33535b48055a149d112620ddf9277b90c7cb1324ac30a652f0abe72f5bda0a54887fe10f0bdddf1f', 1, 1, 'Authentication Token', '[]', 0, '2021-12-03 06:12:50', '2021-12-03 06:12:50', '2022-12-03 13:12:50'),
('377175d0b253f62bd556cffb98c98567473fa9a28c4927ed7085100a43a3d9b083ca09fc9f877008', 6, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:14:26', '2021-12-05 13:14:26', '2022-12-05 20:14:26'),
('426d0598de267509f6281ebc58985a8a423011a43a42cd862a9ab0196ed532bf3c7b11a2c768b199', 2, 1, 'Authentication Token', '[]', 0, '2021-12-08 01:59:27', '2021-12-08 01:59:27', '2022-12-08 08:59:27'),
('46d710e97a4c85347616c80d38794c60db6e6e2214cfb7de5d9d6e26ff74c2e8af0fa70dc6996818', 22, 1, 'Authentication Token', '[]', 0, '2021-12-08 04:34:49', '2021-12-08 04:34:49', '2022-12-08 11:34:49'),
('48d8e4dc44bbc1afb80ea3584a2bf4f7bbf3859aac650c0f7fa1a5b2a846e787427b15bc230c1951', 22, 1, 'Authentication Token', '[]', 0, '2021-12-08 04:28:36', '2021-12-08 04:28:36', '2022-12-08 11:28:36'),
('49416758b36b7624c30e767ad137e139e9e3c18bcfe81e853a1726714b851e7a2e13faa80a21d22d', 13, 1, 'Authentication Token', '[]', 0, '2021-12-07 13:15:01', '2021-12-07 13:15:01', '2022-12-07 20:15:01'),
('4a04c86d68b31cb1660e979d42258cb94602b96af188aeb2b0b226eb3760c3b373290bec3aff9465', 4, 1, 'Authentication Token', '[]', 0, '2021-12-05 12:50:36', '2021-12-05 12:50:36', '2022-12-05 19:50:36'),
('4fba9df3dcb35b45dffec00288038fb28bd793cf3fc3da4f86d7a9e7b2b53c0da0ae85f6321e29ab', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:56:51', '2021-12-02 13:56:51', '2022-12-02 20:56:51'),
('501e3270631669bef5c5681a8d18561c5180676ab7ca2c88e8716fcb45a2f5746da6aa4ec0a97cbb', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:23:37', '2021-12-02 13:23:37', '2022-12-02 20:23:37'),
('51ea7567e8dfb076fda2455162aabe53b741ed40185289fe91959bae4dcd706ae5c823588680862d', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:12:34', '2021-12-02 13:12:34', '2022-12-02 20:12:34'),
('527a2ebd347fffe7d132542c96dcfeaf2971a0437ca3f68ff90f8b87f13204f4653a05c7cb2a44f7', 2, 1, 'Authentication Token', '[]', 0, '2021-12-05 18:37:16', '2021-12-05 18:37:16', '2022-12-06 01:37:16'),
('5bbc450b034798ed42d89e0f14420f3174b70f442d04b3168fe551d017bd165044052a542ea8f88d', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:33:03', '2021-12-02 13:33:03', '2022-12-02 20:33:03'),
('5fa46958949ada80b51ecee651faa1f63fd2274cbd73c18912ce8321b963a732b28c48c733369162', 21, 1, 'Authentication Token', '[]', 0, '2021-12-08 01:49:26', '2021-12-08 01:49:26', '2022-12-08 08:49:26'),
('6074add1b7195a9efc673128bb964b8fdc16d7c25f11f8e3497e082b3967ae17f5c25b067f083b92', 2, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:02:23', '2021-12-05 13:02:23', '2022-12-05 20:02:23'),
('66f384def30d334070421289d552e81bc2a34537945b3ccac469c3e015450f7a18de91d09e8a13ff', 11, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:31:43', '2021-12-05 13:31:43', '2022-12-05 20:31:43'),
('673f21c0d52a8d04a81446c70739c473dcb2fdc35ea45d873233ade75883645c817efa54f3d1f1a8', 2, 1, 'Authentication Token', '[]', 0, '2021-12-03 06:36:00', '2021-12-03 06:36:00', '2022-12-03 13:36:00'),
('67fb9b02875e3bface41cc4479335c404672afe5892cc16546e4d87735215b7e13fbbbecc46f6916', 2, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:06:10', '2021-12-05 13:06:10', '2022-12-05 20:06:10'),
('6898691a4abdca98c9d2b5eebce36bdd4d533652a74598eba7efd74dbc6017f72b4b0adb01951c28', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:06:20', '2021-12-02 13:06:20', '2022-12-02 20:06:20'),
('699f8e47dc21a6f8e96c7af6f73a3d054e9214d9d33edf9ff2b7e6b1397da1fcb4a6b845dcba2cda', 21, 1, 'Authentication Token', '[]', 0, '2021-12-08 02:00:45', '2021-12-08 02:00:45', '2022-12-08 09:00:45'),
('6b2035d249a7001d5e7b3e750f3d1480beaa816870ceac66f800c4f67ff8daf6f60e10c920f41459', 6, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:07:20', '2021-12-05 13:07:20', '2022-12-05 20:07:20'),
('73f4e850931af2a2b1634a80d2870c0c232491c0b7035aff572d4152a09fadf510679fd36b909071', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:13:40', '2021-12-02 13:13:40', '2022-12-02 20:13:40'),
('745ca6a8567809f7bee97eb1e8a89b2dc6a8c4fa577fb2cb5669d56477f564071055ed7a12c4711b', 2, 1, 'Authentication Token', '[]', 0, '2021-12-03 03:49:17', '2021-12-03 03:49:17', '2022-12-03 10:49:17'),
('7b9d0f1b511cc9240c4c6b0e6ad238f1fe778c08a7eab556b05c4241a77ae85cdfda41b89974585b', 20, 1, 'Authentication Token', '[]', 0, '2021-12-08 01:48:41', '2021-12-08 01:48:41', '2022-12-08 08:48:41'),
('7de28445e5f827acda734905adc14b643f15c5284dd669c802dab2531e0ae671e32e67214e90389a', 20, 1, 'Authentication Token', '[]', 0, '2021-12-07 13:21:11', '2021-12-07 13:21:11', '2022-12-07 20:21:11'),
('7f1c883d72f11fa05248d3b93331cbaaf3250124394c871b61974b6a7d14a0b4be3895d18381fa3c', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:22:22', '2021-12-02 12:22:22', '2022-12-02 19:22:22'),
('816cd0cb9a22ba55f529045212944f3fae5319ade1f0ac80710e05c73cbb0de91d65f4d4e4150450', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 01:54:13', '2021-12-07 01:54:13', '2022-12-07 08:54:13'),
('831f6b67849244631cddf814e11b89835feb7211b23373d5e509a6dc4cc966a00166f19121068d30', 2, 1, 'Authentication Token', '[]', 0, '2021-12-05 18:40:55', '2021-12-05 18:40:55', '2022-12-06 01:40:55'),
('83e5c4ac56e2aacdc0966490a139b74679b1f5a9b9fe7c7b29662ec146269572867e16d56e9f2ad7', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:26:27', '2021-12-02 12:26:27', '2022-12-02 19:26:27'),
('866a98ddca84f3ea53ad4a21dd29f5be53384c5fbe588ee601962a0fc84c64c68fd648cac62408f5', 9, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:12:21', '2021-12-05 13:12:21', '2022-12-05 20:12:21'),
('877cfca2da651f1043e2701c0280eada2c3828b9e9185878da9e8a05e5cb316d7adb2a0161a60949', 1, 1, 'Authentication Token', '[]', 0, '2021-12-03 06:36:15', '2021-12-03 06:36:15', '2022-12-03 13:36:15'),
('87d5964b8842f4014a90264fce7f0f4f517c49dd0675f8ca909c46c002cdc495d3426077e5defac7', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:36:25', '2021-12-02 13:36:25', '2022-12-02 20:36:25'),
('8843253f250209bf4f6cc4712881affe25a6890d04b63fe45d23a42357e6f82c5675248669b7124a', 4, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:01:02', '2021-12-05 13:01:02', '2022-12-05 20:01:02'),
('91459d071985b72f3a68c8b39a22f68c7c48fbad98df1de0dc8eddae287364f4bf95e9aeb858d442', 19, 1, 'Authentication Token', '[]', 0, '2021-12-06 11:45:33', '2021-12-06 11:45:33', '2022-12-06 18:45:33'),
('95b73ae8704cfe6e6363c55ba157c19862408efdd79cb8667ba1cbdc600e950cfc3447d7a8be9916', 1, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:03:24', '2021-12-05 13:03:24', '2022-12-05 20:03:24'),
('a16361c882f7992b6fa86dcd9a821e50cf776df85cb5b35cb5a06627d3bedc60ccdcc60ff2aa3497', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:03:02', '2021-12-02 12:03:02', '2022-12-02 19:03:02'),
('a2ed90db208c0c81f01c3348fc478066a25efcc0d4abcb1bab454c0e696e23e6d1f4a25e4bd0f72d', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 13:27:06', '2021-12-07 13:27:06', '2022-12-07 20:27:06'),
('a3f991256953cbca93a2f94c81731a1b8c02ad39ee82fb71b817e48d8a26e0374f81003c1c4362d3', 18, 1, 'Authentication Token', '[]', 0, '2021-12-06 11:42:15', '2021-12-06 11:42:15', '2022-12-06 18:42:15'),
('a5ed948616b90124f8af73f429ddd07366e5523562eb09c1cc7604af08adc0ce9703523791b1cbb7', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:55:41', '2021-12-02 13:55:41', '2022-12-02 20:55:41'),
('a6df5e3cf26a2bccb0bcccd34ec9291db4e31c30cc5d4934493c270d519f3d43851f4e35f35d0013', 1, 1, 'Authentication Token', '[]', 0, '2021-12-03 07:09:16', '2021-12-03 07:09:16', '2022-12-03 14:09:16'),
('aa15e15f62da0530f2e053e3ee10dee03ce72597360395e0da0618d18da7fb4bf952e55feea63521', 7, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:10:03', '2021-12-05 13:10:03', '2022-12-05 20:10:03'),
('af4aa9810cb62cfe4935899121188e66b0b7afb97a990450c5f67ef40735ae063645626e413346de', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:51:53', '2021-12-02 13:51:53', '2022-12-02 20:51:53'),
('b57d019bdcb29cb5625e3976a6e81d7466f43b4ebbbf173e7745baa08a6612e875c48dd4d37fca06', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 02:46:23', '2021-12-07 02:46:23', '2022-12-07 09:46:23'),
('b586001178409530136087e60ad4058fd501cff92b966dffd7eed6739af02966ecf3e86ca76bef43', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:34:46', '2021-12-02 12:34:46', '2022-12-02 19:34:46'),
('bb1badbd8b1dde874766808ed4b4854427b305e24a1a44b26d681c4a0dca16e80cf503bdb0bb6897', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:39:20', '2021-12-02 13:39:20', '2022-12-02 20:39:20'),
('bbca935621c2956636342ca273ee7e6f1fdf74e7bce144f9da85d5c10e8867f0bf6393f649bf7595', 5, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:04:15', '2021-12-05 13:04:15', '2022-12-05 20:04:15'),
('c886a4dd532673191808206d0f5f81476dd9efcba688c5a8da86086345f875f6929a7e2597cbf493', 17, 1, 'Authentication Token', '[]', 0, '2021-12-06 11:49:41', '2021-12-06 11:49:41', '2022-12-06 18:49:41'),
('cc2c68f891259d1f9d59b0c53b7740c2f1051da232bffeed39d8a19d43e711b52c45ac7df6125ec1', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:37:46', '2021-12-02 13:37:46', '2022-12-02 20:37:46'),
('cdd76e17e1150fd5acb4a8db0e9cb4686178aa1d0a34e4c3f973699cb3ae2a4e6bb187e98950d413', 13, 1, 'Authentication Token', '[]', 0, '2021-12-05 18:30:15', '2021-12-05 18:30:15', '2022-12-06 01:30:15'),
('d49e9ef8f6e07b1dd7d5680dfac40c78f76d58f99792b08ddadf9fa23a449d007cd06094b5e3f6d5', 2, 1, 'Authentication Token', '[]', 0, '2021-12-03 07:08:22', '2021-12-03 07:08:22', '2022-12-03 14:08:22'),
('d4dab89e41f1f368980fdde369a202978730dea577357e46ff52418ded5b74257eaff28dbbd91fe5', 2, 1, 'Authentication Token', '[]', 0, '2021-12-08 04:31:38', '2021-12-08 04:31:38', '2022-12-08 11:31:38'),
('d9daadab565a4efe9e814ca9b2d733354b2a811cdfd0ea141e8d7ab32beeb584d707e54df3bf3dc3', 1, 1, 'Authentication Token', '[]', 0, '2021-12-05 13:44:24', '2021-12-05 13:44:24', '2022-12-05 20:44:24'),
('dc570d80fa6e441336fe3d1eabee6b74412d57c126c53d330eaa5b0af460190e30cfde8e8b65f633', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:03:20', '2021-12-02 12:03:20', '2022-12-02 19:03:20'),
('dcdaf556072ed6ad63a544eb93b029fde4878d4ae03d0032d47552f5424df30ff67398f98314b10e', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:04:14', '2021-12-02 13:04:14', '2022-12-02 20:04:14'),
('e3395fe9fe94cc9d7adc3cf75d31d2d605bedbd4f11fe37f2e47cd34f3f51552463b97e9a7fb2d8b', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:37:32', '2021-12-02 13:37:32', '2022-12-02 20:37:32'),
('f25639963459aa5f44a8aa7639583c2763095e22d8df8052832e3ca64ad50a59d63dd6cee3dee3c0', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:54:54', '2021-12-02 13:54:54', '2022-12-02 20:54:54'),
('f33da02160a09360de0f1aaa6113b45abfa337689300b394ccfd6a856eb0006803e84d5c9b9cf6a7', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 01:53:30', '2021-12-07 01:53:30', '2022-12-07 08:53:30'),
('f7b64c2ac3ae6246174ce44abbed8d99f54edea577561d6f6ae0b6e74c52505ad7b2e6f0141c7909', 1, 1, 'Authentication Token', '[]', 0, '2021-12-05 14:11:04', '2021-12-05 14:11:04', '2022-12-05 21:11:04'),
('f89b17c8afa70c64bc7b0a74a4f3e153a2dc5eb433c8d762de076671124cf7e85d710369975e430a', 20, 1, 'Authentication Token', '[]', 0, '2021-12-08 01:37:33', '2021-12-08 01:37:33', '2022-12-08 08:37:33'),
('fda903fca5bb7883f98e284b2858f0eb4e44c806a4cfe949dc63e7a804bc6dae2c69ba1a7fd8f4e7', 1, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:32:49', '2021-12-02 13:32:49', '2022-12-02 20:32:49'),
('feb2cd4fa700ac447e023e0f7a52448fff6b64941efe9b5074a1a1b33df21040a29e25759918de83', 2, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:06:33', '2021-12-02 13:06:33', '2022-12-02 20:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'cQrjkyLnC9Z2tJMK9xbvIpuWzePjdaQnCR9ZbU6M', NULL, 'http://localhost', 1, 0, 0, '2021-12-02 12:02:56', '2021-12-02 12:02:56'),
(2, NULL, 'Laravel Password Grant Client', 'K5tXFZH1CPKwLK59yQHXwmWJhr9ZRj7RxI1j0X7d', 'users', 'http://localhost', 0, 1, 0, '2021-12-02 12:02:56', '2021-12-02 12:02:56');

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
(1, 1, '2021-12-02 12:02:56', '2021-12-02 12:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenisPaket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaLayananPaket` double(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakets`
--

INSERT INTO `pakets` (`id`, `jenisPaket`, `hargaLayananPaket`, `created_at`, `updated_at`) VALUES
(8, 'Hemat', 1000.00, '2021-12-03 04:21:13', '2021-12-07 13:25:38'),
(9, 'Aman, Tentram, dan Damai', 50000.00, '2021-12-03 04:21:28', '2021-12-03 04:21:28'),
(11, 'Kirim Pedalaman Lebih Dalma', 35000.00, '2021-12-03 04:22:00', '2021-12-08 04:32:55'),
(16, 'Hemat Sekali', 50000.00, '2021-12-08 04:32:45', '2021-12-08 04:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `pengirim_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengirim_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengirim_nomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerima_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerima_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerima_nomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisKurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisPaket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `userid`, `pengirim_nama`, `pengirim_alamat`, `pengirim_nomor`, `penerima_nama`, `penerima_alamat`, `penerima_nomor`, `jenisKurir`, `jenisPaket`, `created_at`, `updated_at`) VALUES
(3, 1, 'Yoma', 'Jl Yoma 12', '092817392833', 'Ryobil', 'Ryobil paw', '098273822222', 'NinjaRanger', 'Instant', '2021-12-03 07:06:27', '2021-12-03 07:06:27'),
(5, 7, 'Andreas', 'Jalan', '081234567890', 'Juanito', 'Jalan', '081234567890', 'SiLambat', 'Aman, Tentram, dan Damai', '2021-12-05 13:11:14', '2021-12-05 13:11:14'),
(6, 7, 'Raditya', 'Jalan', '081234567890', 'Gesha', 'Jalan', '081234567890', 'NinjaRanger', 'Aman, Tentram, dan Damai', '2021-12-05 13:11:35', '2021-12-05 13:11:35'),
(7, 11, 'vicky', 'sulawesi', '123456789012', 'valerian', 'kendari', '542212312311', 'SiLambat', 'Hemat', '2021-12-05 13:34:00', '2021-12-05 13:34:22'),
(8, 13, 'aryon', 'amerika', '081201201201', 'billy2', 'indonesia', '082323232323', 'SiLambat', 'Instant', '2021-12-05 18:31:44', '2021-12-05 18:32:06'),
(9, 18, 'asdasd', '123', '081239284591', 'asdasdas', 'asdasd', '081239284591', 'NinjaRanger', 'Aman, Tentram, dan Damai', '2021-12-06 11:43:41', '2021-12-06 11:43:47'),
(10, 17, 'asdasdasd', '12312312312', '081237283811', 'asdasdasdasd', 'asdasdasdas', '081237283811', 'Pejalan Kaki', 'Kirim Pedalaman', '2021-12-06 11:51:05', '2021-12-06 11:51:05'),
(12, 20, 'a', 'A', '081127070612', 'sa', 'fsa', '082137293722', 'Gerobag', 'Aman, Tentram, dan Damai', '2021-12-08 01:38:04', '2021-12-08 01:38:04'),
(14, 22, 'Yotam N', 'Jl Yotam', '082173623655', 'Billy Aryonnnn', 'Jl BIlly Aryons', '098712362763', 'Pejalan Kaki', 'Hemat', '2021-12-08 04:30:12', '2021-12-08 04:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` int(11) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `urlImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `alamat`, `is_verified`, `is_admin`, `urlImage`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yotamniki1@gmail.com', '$2y$10$QElvlDuLUpxPfpioq7VqWuisMA7Eix7WcjhZ7QFWcvvn55aMo0z/.', 'Yotam Niki', 'Jl. Masun', 1, 0, '', NULL, NULL, '2021-12-02 12:01:46', '2021-12-02 12:02:17'),
(2, 'adminRyobil@gmail.com', '$2y$10$raYBMue87QvtT4QRD8evXurIe31P.vEkHrfpQSiT8w4d11OJ2g1pO', 'Admin Ryobil 1', 'Jl Admn bos', 1, 1, '', NULL, NULL, '2021-12-02 13:03:41', '2021-12-02 13:03:41'),
(5, '190710171@students.uajy.ac.id', '$2y$10$PKnYg/VJVXpQF4orrTXnteuTmjLIFBOt08egwPrx1VHkpNkHX73xu', '190710171', 'Jl Atma', 1, 0, '', NULL, NULL, '2021-12-05 13:03:56', '2021-12-05 13:04:12'),
(6, 'ryobilin@gmail.com', '$2y$10$VJcVPd91WoUssZ1xCrRt7.ACtRTAx0JcBB36nDg8XfeWg9Mvz2ybe', 'Admin Ryobil Lainnya', 'Jl Dmin', 1, 1, '', NULL, NULL, '2021-12-05 13:06:54', '2021-12-05 13:06:54'),
(7, 'raditya.aryatama@gmail.com', '$2y$10$ocjzPpNGyjw98AuKcxrOYu296aiohG66HwEvVNdaG9ODPKCPy9hKS', 'Andreas Raditya Aryatama', 'Jl. Kaliurang Km. 5, Gg. Tejomoyo 8, Caturtunggal, Depok', 1, 0, '', NULL, NULL, '2021-12-05 13:08:40', '2021-12-05 13:09:05'),
(8, 'juanitochristian@gmail.com', '$2y$10$C6tJk.VY2NKJI8tvL2UeiuqB1.oWJg6uhk9vtUSpvWF1RopTIiu7q', 'Juanito Christian', 'jogja', 0, 0, '', NULL, NULL, '2021-12-05 13:09:46', '2021-12-05 13:09:46'),
(10, 'juan.makan.mendoan@gmail.com', '$2y$10$V4bVOWt2B2tDx9P5H/CtSuidqe4kRVKIJWaXRo5ahy3NdV66l2BHC', 'Juanito Christian', 'jogja', 0, 0, '', NULL, NULL, '2021-12-05 13:14:23', '2021-12-05 13:14:23'),
(11, 'vickyvalerian27@gmail.com', '$2y$10$82kASUAFlrxO0ryZBE2L1O3AQdFiQBYFfe6WXD7OqaSnRDN5S93MS', 'Vicky Valerian Sende', 'Sulawesi Tenggara', 1, 0, '', NULL, NULL, '2021-12-05 13:31:08', '2021-12-05 13:32:11'),
(12, 'advanterserver1234@gmail.com', '$2y$10$8ODKZ2V/I/KjxvAF.jSWUuX8pKGy9oATe6FwUQr4z6Nc3Unk.QSua', 'biltol', 'riau', 0, 0, '', NULL, NULL, '2021-12-05 16:28:45', '2021-12-05 16:28:45'),
(13, 'billyisaac01@gmail.com', '$2y$10$eEcohN3X3ZllBmxdLUx4fOvwIwh6INEJnmCoR9Zagm/ShGVG3TQ5C', 'Billy Aryon Isaac', 'Jl. Keliling Perum Griya Bunda B 12', 1, 0, '', NULL, NULL, '2021-12-05 16:29:28', '2021-12-05 18:30:09'),
(14, 'franslaurentsius@gmail.com', '$2y$10$RUDZZP5/qpGxFX/3vOwv.ucTBj8fqcNmH1fIGuQ7NcS.Zt9624GJK', 'biltot', 'riau', 0, 0, '', NULL, NULL, '2021-12-05 16:30:14', '2021-12-05 16:30:14'),
(15, 'bobkocheng@gmail.com', '$2y$10$/d1DfD7DP.FhH2w0Cr6UlOtrBxOqUX5qIxaKaq.rnM6t3Q6YEmoGu', 'ry', 'jl ulala', 0, 0, '', NULL, NULL, '2021-12-05 18:34:19', '2021-12-05 18:34:19'),
(16, 'somlidaspu@vusra.com', '$2y$10$M6QhpSquxEUpkGlgx9UhbuUJ16Vc3F/N1eVj.sLaQ7PMEIMrbjtM.', 'test', 'test', 0, 0, '', NULL, NULL, '2021-12-06 11:39:19', '2021-12-06 11:39:19'),
(17, 'riwltix018@tormails.com', '$2y$10$rkj2ohB/ivSYghQkoWp4PeizbSNjELgRgAG2Iv3ETtJrXl3qPcnra', 'test', 'test', 1, 0, '', NULL, NULL, '2021-12-06 11:40:26', '2021-12-06 11:49:23'),
(18, 'gesaary123@gmail.com', '$2y$10$IXkmhpZn1X38TMxExgmvJOKrrTD7hQwRZWe/4Hp6zQ7o5sxYDUnE2', 'test', '123', 1, 0, '', NULL, NULL, '2021-12-06 11:41:32', '2021-12-06 11:42:28'),
(22, 'techno.graph@yahoo.com', '$2y$10$hgzKQUV3Z/kQrZnTzPkCuO6g7SmlCtliuH24HaMdVPL5Ytgoqx3Ru', 'Yotam Niki Rahardja', 'Jl Sendangmuyi', 1, 0, '', NULL, NULL, '2021-12-08 04:27:27', '2021-12-08 04:29:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kurirs`
--
ALTER TABLE `kurirs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kurirs`
--
ALTER TABLE `kurirs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
