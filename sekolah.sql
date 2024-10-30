-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 07:44 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
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
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, '10 RPL 1', 'Rekayasa Perangkat Lunak', '2024-10-12 21:21:00', '2024-10-14 19:11:59'),
(2, '10 RPL 2', 'Rekayasa Perangkat Lunak', '2024-10-12 21:21:13', '2024-10-14 19:12:13'),
(3, '10 TJKT', 'Teknik Jaringan Komputer dan Telekomunikasi', '2024-10-12 21:21:33', '2024-10-14 19:12:36'),
(4, '10 DKV 1', 'Desain Komunikasi dan Visual', '2024-10-12 21:21:44', '2024-10-14 19:12:51'),
(5, '10 DKV 2', 'Desain Komunikasi dan Visual', '2024-10-12 21:21:54', '2024-10-14 19:12:59'),
(6, '10 AKL 1', 'Akuntansi dan Keuangan Lembaga', '2024-10-12 21:42:07', '2024-10-14 19:13:13'),
(7, '10 AKL 2', 'Akuntansi dan Keuangan Lembaga', '2024-10-12 22:43:07', '2024-10-14 19:13:21'),
(8, '10 AKL 3', 'Akuntansi dan Keuangan Lembaga', '2024-10-12 22:43:24', '2024-10-14 19:13:28'),
(9, '10 AKL 4', 'Akuntansi dan Keuangan Lembaga', '2024-10-13 06:34:16', '2024-10-15 22:27:22'),
(11, '10 PM 1', 'Pemasaran', '2024-10-14 19:28:14', '2024-10-15 22:27:30'),
(12, '10 PM 2', 'Pemasaran', '2024-10-14 19:36:09', '2024-10-15 22:27:54'),
(13, '10 MPLB 1', 'Manajemen Perkantoran dan Layanan Bisnis', '2024-10-14 19:36:24', '2024-10-15 22:28:04'),
(14, '10 MPLB 2', 'Manajemen Perkantoran dan Layanan Bisnis', '2024-10-14 19:36:38', '2024-10-15 22:28:14'),
(15, '10 MPLB 3', 'Manajemen Perkantoran dan Layanan Bisnis', '2024-10-15 22:28:36', '2024-10-15 22:28:36'),
(16, '10 MPLB 4', 'Manajemen Perkantoran dan Layanan Bisnis', '2024-10-15 22:28:57', '2024-10-15 22:28:57'),
(17, '11 RPL 1', 'Rekayasa Perangkat Lunak', '2024-10-15 22:29:25', '2024-10-15 22:29:25'),
(18, '11 RPL 2', 'Rekayasa Perangkat Lunak', '2024-10-15 22:29:34', '2024-10-15 22:29:34'),
(19, '11 TJKT', 'Teknik Jaringan Komputer dan Telekomunikasi', '2024-10-15 22:30:23', '2024-10-15 22:30:23'),
(20, '11 DKV 1', 'Desain Komunikasi dan Visual', '2024-10-15 22:30:40', '2024-10-15 22:30:40'),
(21, '11 DKV 2', 'Desain Komunikasi dan Visual', '2024-10-15 22:30:49', '2024-10-15 22:30:49'),
(22, '11 AK 1', 'Akuntansi', '2024-10-15 22:31:42', '2024-10-15 22:31:42'),
(23, '11 AK 2', 'Akuntansi', '2024-10-15 22:31:54', '2024-10-15 22:31:54'),
(24, '11 AK 3', 'Akuntansi', '2024-10-15 22:32:30', '2024-10-15 22:35:52'),
(25, '11 MP 1', 'Manajemen Perkantoran', '2024-10-15 22:32:40', '2024-10-15 22:36:03'),
(26, '11 MP 2', 'Manajemen Perkantoran', '2024-10-15 22:33:05', '2024-10-15 22:36:12'),
(27, '11 MP 3', 'Manajemen Perkantoran', '2024-10-15 22:33:38', '2024-10-15 22:36:30'),
(28, '11 MLog', 'Manajemen Logistik', '2024-10-15 22:33:55', '2024-10-15 22:37:16'),
(29, '11 BR 1', 'Bisnis Ritail', '2024-10-15 22:34:09', '2024-10-15 22:37:24'),
(30, '11 BR 2', 'Bisnis Ritail', '2024-10-15 22:34:30', '2024-10-15 22:37:32'),
(31, '11 BR 3', 'Bisnis Ritail', '2024-10-15 22:37:46', '2024-10-15 22:37:46'),
(32, '12 RPL 1', 'Rekayasa Perangkat Lunak', '2024-10-15 22:38:05', '2024-10-15 22:38:05'),
(33, '12 RPL 2', 'Rekayasa Perangkat Lunak', '2024-10-15 22:38:27', '2024-10-15 22:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `kenaikans`
--

CREATE TABLE `kenaikans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_asal` bigint(20) UNSIGNED NOT NULL,
  `kelas_tujuan` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_08_000147_create_permission_tables', 2),
(11, '2024_10_08_004443_create_kelas_table', 3),
(12, '2024_10_13_034930_create_role_user_table', 3),
(13, '2024_10_13_041509_create_siswas_table', 4),
(14, '2024_10_13_041509_create_siswa_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view siswa', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21'),
(2, 'create siswa', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21'),
(3, 'update siswa', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21'),
(4, 'view kelas', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21'),
(5, 'update kelas', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21'),
(6, 'view kenaikan', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21'),
(7, 'create kenaikan', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21'),
(8, 'update kenaikan', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'kurikulum', 'web', '2024-10-07 17:15:21', '2024-10-07 17:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` enum('Aktif','Keluar','Mutasi') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `nama`, `gender`, `tanggal_lahir`, `alamat`, `no_telepon`, `tanggal_masuk`, `status`, `id_kelas`, `created_at`, `updated_at`) VALUES
(1, 'ANAZRI ERIYANI', 'P', '2008-01-01', 'Jl. Raya No. 1', '08123456789', '2024-07-15', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(2, 'ANDINI ROHAYANI', 'P', '2008-01-02', 'Jl. Raya No. 2', '08123456790', '2024-07-16', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(3, 'AYU AFSARI WARDINI', 'P', '2008-01-03', 'Jl. Raya No. 3', '08123456789', '2024-07-17', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(4, 'BUDI IMAM PRASETYO', 'L', '2008-01-04', 'Jl. Raya No. 4', '08123456790', '2024-07-18', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(5, 'DANNISH PRADYA UTAMA', 'L', '2008-01-05', 'Jl. Raya No. 5', '08123456789', '2024-07-19', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(6, 'DAVA ARDIANSYAH HIDAYAT', 'L', '2008-01-06', 'Jl. Raya No. 6', '08123456790', '2024-07-20', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(7, 'FAHAL MALIK', 'L', '2008-01-07', 'Jl. Raya No. 7', '08123456789', '2024-07-21', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(8, 'GULTOM, JULIUS', 'L', '2008-01-08', 'Jl. Raya No. 8', '08123456790', '2024-07-22', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(9, 'HAANUN SYAUQONI AL-FATIR', 'L', '2008-01-09', 'Jl. Raya No. 9', '08123456789', '2024-07-23', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(10, 'HAFID AL JABBAAR', 'L', '2008-01-10', 'Jl. Raya No. 10', '08123456790', '2024-07-24', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(11, 'HARIZ MAY RAYHAN', 'L', '2008-01-11', 'Jl. Raya No. 11', '08123456789', '2024-07-25', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(12, 'HASBAN FARDANI', 'L', '2008-01-12', 'Jl. Raya No. 12', '08123456790', '2024-07-26', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(13, 'IRMA NAILA JUWITA', 'P', '2008-01-13', 'Jl. Raya No. 13', '08123456789', '2024-07-27', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(14, 'KHANSA NABILAH', 'P', '2008-01-14', 'Jl. Raya No. 14', '08123456790', '2024-07-28', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(15, 'MEISYA AULIA RIVANTY', 'P', '2008-01-15', 'Jl. Raya No. 15', '08123456789', '2024-07-29', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(16, 'MUHAMMAD AFDHAL ADZIKRI', 'L', '2008-01-16', 'Jl. Raya No. 16', '08123456790', '2024-07-30', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(17, 'MUHAMMAD FARREL FERDINAND', 'L', '2008-01-17', 'Jl. Raya No. 17', '08123456789', '2024-07-31', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(18, 'NABIL ASYKAROE', 'L', '2008-01-18', 'Jl. Raya No. 18', '08123456790', '2024-08-01', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(19, 'NUR LUTHFIYAH', 'P', '2008-01-19', 'Jl. Raya No. 19', '08123456789', '2024-08-02', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(20, 'OKTAPIANI RAMADHANI', 'P', '2008-01-20', 'Jl. Raya No. 20', '08123456790', '2024-08-03', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(21, 'RAFI CAHYADI', 'L', '2008-01-21', 'Jl. Raya No. 21', '08123456789', '2024-08-04', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(22, 'RAMA TAUFIK AZKIA', 'L', '2008-01-22', 'Jl. Raya No. 22', '08123456790', '2024-08-05', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(23, 'RASYAD ATHA ZAHRAN', 'L', '2008-01-23', 'Jl. Raya No. 23', '08123456789', '2024-08-06', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(24, 'REYGA MARZA RAMADHAN', 'L', '2008-01-24', 'Jl. Raya No. 24', '08123456790', '2024-08-07', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(25, 'RIDWAN MAULANA', 'L', '2008-01-25', 'Jl. Raya No. 25', '08123456789', '2024-08-08', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(26, 'RIFA RADWA PRASETYA', 'L', '2008-01-26', 'Jl. Raya No. 26', '08123456790', '2024-08-09', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(27, 'SAFA SALSABILA', 'P', '2008-01-27', 'Jl. Raya No. 27', '08123456789', '2024-08-10', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(28, 'SALWA AZZAHRA PUTRI', 'P', '2008-01-28', 'Jl. Raya No. 28', '08123456790', '2024-08-11', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(29, 'SAMMUEL NISJA TEL', 'L', '2008-01-29', 'Jl. Raya No. 29', '08123456789', '2024-08-12', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(30, 'SATRIA GALAM PRATAMA', 'L', '2008-01-30', 'Jl. Raya No. 30', '08123456790', '2024-08-13', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(31, 'SHAUQI JULIAN RIKHSAN', 'L', '2008-01-31', 'Jl. Raya No. 31', '08123456789', '2024-08-14', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(32, 'SHELOMITA MADAVI', 'P', '2008-02-01', 'Jl. Raya No. 32', '08123456790', '2024-08-15', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(33, 'SILFI NUR AINI', 'P', '2008-02-02', 'Jl. Raya No. 33', '08123456789', '2024-08-16', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(34, 'WULANDARI NUR WINDAYANTI', 'P', '2008-02-03', 'Jl. Raya No. 34', '08123456790', '2024-08-17', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20'),
(35, 'YUDI FATIR FATUROHMAN', 'L', '2008-02-04', 'Jl. Raya No. 35', '08123456789', '2024-08-18', 'Aktif', 32, '2024-10-15 22:42:20', '2024-10-15 22:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yudi Subekti', 'yudi.subekti.skom@gmail.com', NULL, '$2y$12$pKKl.2NIRK5mW9B7snEjeOXJdvijyN0Nlw67n6ngmYjdD/pfNEj5y', NULL, '2024-10-07 18:56:28', '2024-10-07 18:56:28'),
(2, 'Rafka Arsha Fathan', 'rafkaarshafathan@gmail.com', NULL, '$2y$12$AIonqF0fFFufqHt42yP7Du/TP2/JajPn2pTmw7q/igYkXtElZ1lJK', NULL, '2024-10-12 22:48:06', '2024-10-12 22:48:06');

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
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kenaikans`
--
ALTER TABLE `kenaikans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id_kelas_foreign` (`id_kelas`);

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
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kenaikans`
--
ALTER TABLE `kenaikans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswa_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
