-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2022 pada 16.20
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cash_books`
--

CREATE TABLE `cash_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cash_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cash_in` decimal(15,2) NOT NULL DEFAULT 0.00,
  `cash_out` decimal(15,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Financial', 'financial', NULL, NULL),
(2, 'Trial Run', 'trial-run', NULL, NULL),
(3, 'New Launch', 'new-launch', NULL, NULL),
(4, 'Advice', 'advice', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `city`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Banda Aceh', 'banda-aceh', NULL, NULL),
(2, 'Langsa', 'langsa', NULL, NULL),
(3, 'Lhokseumawe', 'lhokseumawe', NULL, NULL),
(4, 'Meulaboh', 'meulaboh', NULL, NULL),
(5, 'Sabang', 'sabang', NULL, NULL),
(6, 'Subulussalam', 'subulussalam', NULL, NULL),
(7, 'Denpasar', 'denpasar', NULL, NULL),
(8, 'Pangkal Pinang', 'pangkal-pinang', NULL, NULL),
(9, 'Cilegon', 'cilegon', NULL, NULL),
(10, 'Serang', 'serang', NULL, NULL),
(11, 'Tanggerang Selatan', 'tanggerang-selatan', NULL, NULL),
(12, 'Tanggerang', 'tanggerang', NULL, NULL),
(13, 'Bengkulu', 'bengkulu', NULL, NULL),
(14, 'Gorontalo', 'gorontalo', NULL, NULL),
(15, 'Jakarta Barat', 'jakarta-barat', NULL, NULL),
(16, 'Jakarta Pusat', 'jakarta-pusat', NULL, NULL),
(17, 'Jakarta Timur', 'jakarta-timur', NULL, NULL),
(18, 'Jakarta Utara', 'jakarta-utara', NULL, NULL),
(19, 'Sungai Penuh', 'sungai-penuh', NULL, NULL),
(20, 'Jambi', 'jambi', NULL, NULL),
(21, 'Bandung', 'bandung', NULL, NULL),
(22, 'Bekasi', 'bekasi', NULL, NULL),
(23, 'Bogor', 'bogor', NULL, NULL),
(24, 'Cimahi', 'cimahi', NULL, NULL),
(25, 'Cirebon', 'cirebon', NULL, NULL),
(26, 'Depok', 'depok', NULL, NULL),
(27, 'Sukabumi', 'sukabumi', NULL, NULL),
(28, 'Tasikmalaya', 'tasikmalaya', NULL, NULL),
(29, 'Banjar', 'banjar', NULL, NULL),
(30, 'Magelang', 'magelang', NULL, NULL),
(31, 'Perkalongan', 'perkalongan', NULL, NULL),
(32, 'Purwokerto', 'purwokerto', NULL, NULL),
(33, 'Salatiga', 'salatiga', NULL, NULL),
(34, 'Semarang', 'semarang', NULL, NULL),
(35, 'Surakarta', 'surakarta', NULL, NULL),
(36, 'Tegal', 'tegal', NULL, NULL),
(37, 'Batu', 'batu', NULL, NULL),
(38, 'Blitar', 'blitar', NULL, NULL),
(39, 'Kediri', 'kediri', NULL, NULL),
(40, 'Madiun', 'madiun', NULL, NULL),
(41, 'Malang', 'malang', NULL, NULL),
(42, 'Mojokerto', 'mojokerto', NULL, NULL),
(43, 'Pasuruan', 'pasuruan', NULL, NULL),
(44, 'Probolingo', 'probolinggo', NULL, NULL),
(45, 'Surabaya', 'surabaya', NULL, NULL),
(46, 'Pontianak', 'pontianak', NULL, NULL),
(47, 'Singkawang', 'singkawang', NULL, NULL),
(48, 'Banjarbaru', 'banjarbaru', NULL, NULL),
(49, 'Banjarmasin', 'banjarmasin', NULL, NULL),
(50, 'Palangkaraya', 'palangkaraya', NULL, NULL),
(51, 'Balikpapan', 'balikpapan', NULL, NULL),
(52, 'Bontang', 'bontang', NULL, NULL),
(53, 'Samarinda', 'samarinda', NULL, NULL),
(54, 'Tenggarong', 'tenggarong', NULL, NULL),
(55, 'Berau', 'berau', NULL, NULL),
(56, 'Tarakan', 'tarakan', NULL, NULL),
(57, 'Batam', 'batam', NULL, NULL),
(58, 'Tanjung Pinang', 'tanjung-pinang', NULL, NULL),
(59, 'Bandar Lampung', 'bandar-lampung', NULL, NULL),
(60, 'Kota Bumi', 'kota-bumi', NULL, NULL),
(61, 'Liwa', 'liwa', NULL, NULL),
(62, 'Metro', 'metro', NULL, NULL),
(63, 'Ternate', 'ternate', NULL, NULL),
(64, 'Tidore Kepulauan', 'tidore-kepulauan', NULL, NULL),
(65, 'Ambol', 'ambol', NULL, NULL),
(66, 'Tual', 'tual', NULL, NULL),
(67, 'Bima', 'bima', NULL, NULL),
(68, 'Mataram', 'mataram', NULL, NULL),
(69, 'Kupang', 'kupang', NULL, NULL),
(70, 'Sorong', 'sorong', NULL, NULL),
(71, 'Jaya Pura', 'jaya-pura', NULL, NULL),
(72, 'Dumai', 'dumai', NULL, NULL),
(73, 'Pekan Baru', 'pekan-baru', NULL, NULL),
(74, 'Makassar', 'makassar', NULL, NULL),
(75, 'Palopo', 'palopo', NULL, NULL),
(76, 'Parepare', 'pare-pare', NULL, NULL),
(77, 'Palu', 'palu', NULL, NULL),
(78, 'Bau-Bau', 'bau-bau', NULL, NULL),
(79, 'Kendari', 'kendari', NULL, NULL),
(80, 'Bitung', 'bitung', NULL, NULL),
(81, 'Kotamobagu', 'kotamagu', NULL, NULL),
(82, 'Manado', 'manado', NULL, NULL),
(83, 'Tomohon', 'tomohon', NULL, NULL),
(84, 'Bukittinggi', 'bukittinggi', NULL, NULL),
(85, 'Padang', 'padang', NULL, NULL),
(86, 'Padangpanjang', 'padangpanjang', NULL, NULL),
(87, 'Pariaman', 'pariaman', NULL, NULL),
(88, 'Payakumbuh', 'payakumbuh', NULL, NULL),
(89, 'Sawahlunto', 'sawahlunto', NULL, NULL),
(90, 'Solok', 'solok', NULL, NULL),
(91, 'Lubuklinggau', 'lubuklinggau', NULL, NULL),
(92, 'Pagaralam', 'pagaralam', NULL, NULL),
(93, 'palembang', 'palembang', NULL, NULL),
(94, 'Prabumulih', 'prambulih', NULL, NULL),
(95, 'Binjai', 'binjai', NULL, NULL),
(96, 'Medan', 'medan', NULL, NULL),
(97, 'Padang Sidempuan', 'padang-sidempuan', NULL, NULL),
(98, 'Pematangsiantar', 'pemantang-siantar', NULL, NULL),
(99, 'Sibolga', 'sibolga', NULL, NULL),
(100, 'Tanjungbalai', 'tanjungbalai', NULL, NULL),
(101, 'Tebingtinggi', 'tebingtingg', NULL, NULL),
(102, 'Yogyakarta', 'yogyakarta', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `deposit`
--

CREATE TABLE `deposit` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deposit` decimal(15,2) NOT NULL DEFAULT 0.00,
  `from_bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_rekening` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atas_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `design`
--

CREATE TABLE `design` (
  `id` int(10) UNSIGNED NOT NULL,
  `design` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `design`
--

INSERT INTO `design` (`id`, `design`, `created_at`, `updated_at`) VALUES
(1, 'All New Accord', NULL, NULL),
(2, 'All New CR-V', NULL, NULL),
(3, 'All New Odyssey', NULL, NULL),
(4, 'All New Jazz', NULL, NULL),
(5, 'Brio', NULL, NULL),
(6, 'KIA', NULL, NULL),
(7, 'CR-Z', NULL, NULL),
(8, 'HR-V', NULL, NULL),
(9, 'Mobilio', NULL, NULL),
(10, 'New Freed', NULL, NULL),
(11, 'Ayla', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dimensi`
--

CREATE TABLE `dimensi` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `panjang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lebar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tinggi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jarak_sumbu_roda` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jarak_pijak_depan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jarak_pijak_belakang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jarak_terendah_ke_tanah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `radius_putar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `berat_kosong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `dimensi`
--

INSERT INTO `dimensi` (`id`, `spesifikasi_mobil_baru_id`, `panjang`, `lebar`, `tinggi`, `jarak_sumbu_roda`, `jarak_pijak_depan`, `jarak_pijak_belakang`, `jarak_terendah_ke_tanah`, `radius_putar`, `berat_kosong`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', '', '', '', '', '', '2022-12-06 04:24:33', '2022-12-06 04:24:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feature_interior_exterior`
--

CREATE TABLE `feature_interior_exterior` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `interior_exterior` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feature_interior_texts`
--

CREATE TABLE `feature_interior_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `interior_exterior` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feature_keamanan_kelengkapan`
--

CREATE TABLE `feature_keamanan_kelengkapan` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `keamanan_kelengkapan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `gallery` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_slot`
--

CREATE TABLE `harga_slot` (
  `id` int(10) UNSIGNED NOT NULL,
  `harga_slot` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `harga_slot`
--

INSERT INTO `harga_slot` (`id`, `harga_slot`, `created_at`, `updated_at`) VALUES
(1, '100000.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kaki`
--

CREATE TABLE `kaki` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `tipe_rangka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `suspensi_depan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `suspensi_belakang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rem_depan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rem_belakang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `velg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ukuran_ban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `kaki`
--

INSERT INTO `kaki` (`id`, `spesifikasi_mobil_baru_id`, `tipe_rangka`, `suspensi_depan`, `suspensi_belakang`, `rem_depan`, `rem_belakang`, `velg`, `ukuran_ban`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', '', '', '', '2022-12-06 04:24:33', '2022-12-06 04:24:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keamanan_texts`
--

CREATE TABLE `keamanan_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `keamanan_kelengkapan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `merek`
--

CREATE TABLE `merek` (
  `id` int(10) UNSIGNED NOT NULL,
  `merek` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `merek`
--

INSERT INTO `merek` (`id`, `merek`, `created_at`, `updated_at`) VALUES
(1, 'Honda', NULL, NULL),
(2, 'Daihatsu', NULL, NULL),
(3, 'Mercedes', NULL, NULL),
(4, 'Ford', NULL, NULL),
(5, 'Chevrolet', NULL, NULL),
(6, 'KIA', NULL, NULL),
(7, 'Mazda', NULL, NULL),
(8, 'Mitsubishi', NULL, NULL),
(9, 'Nissan', NULL, NULL),
(10, 'Suzuki', NULL, NULL),
(11, 'Toyota', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesin`
--

CREATE TABLE `mesin` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `jenis_mesin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kapasitas_silinder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `daya_maksimum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `torsi_maksimum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `perbandingan_kompresi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sistem_pembakaran` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bahan_bakar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kapasitas_bahan_bakar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mesin`
--

INSERT INTO `mesin` (`id`, `spesifikasi_mobil_baru_id`, `jenis_mesin`, `kapasitas_silinder`, `daya_maksimum`, `torsi_maksimum`, `perbandingan_kompresi`, `sistem_pembakaran`, `bahan_bakar`, `kapasitas_bahan_bakar`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', '', '', '', '', '2022-12-06 04:24:33', '2022-12-06 04:24:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_17_215512_create_cities_table', 1),
('2016_05_17_222223_create_merek_table', 1),
('2016_05_17_230359_create_tipe_table', 1),
('2016_05_18_190008_create_design_table', 1),
('2016_05_18_200434_create_spesifikasi_mobil_baru_table', 1),
('2016_05_19_015753_create_dimensi_table', 1),
('2016_05_19_021804_create_mesin_table', 1),
('2016_05_19_022620_create_transmisi_table', 1),
('2016_05_19_022934_create_kaki_table', 1),
('2016_05_21_114656_create_feature_interior_exterior_table', 1),
('2016_05_21_173529_create_feature_keamanan_kelengkapan_table', 1),
('2016_05_21_221320_create_galleries_table', 1),
('2016_05_22_073612_create_categories_table', 1),
('2016_05_23_140922_create_posts_table', 1),
('2016_05_24_034625_create_sosial_media_table', 1),
('2016_06_01_111546_create_slot_mobil_baru_table', 1),
('2016_06_03_050955_create_price_mobil_baru_table', 1),
('2016_06_04_101505_create_jobs_table', 1),
('2016_06_04_101604_create_failed_jobs_table', 1),
('2016_06_06_080314_create_harga_slot_table', 1),
('2016_06_07_052656_create_banks_table', 1),
('2016_06_07_055641_create_deposit_table', 1),
('2016_06_07_144346_create_rekening_tujuan_table', 1),
('2016_06_08_121547_create_cash_books_table', 1),
('2016_06_13_202847_create_mobil_bekas_table', 1),
('2016_07_21_152534_create_request_admins_table', 1),
('2016_09_13_182736_create_feature_interior_texts_table', 1),
('2016_09_13_212805_create_keamanan_texts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil_bekas`
--

CREATE TABLE `mobil_bekas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `merek_id` int(10) UNSIGNED NOT NULL,
  `design_id` int(10) UNSIGNED NOT NULL,
  `transmisi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `nego` tinyint(1) NOT NULL DEFAULT 0,
  `sundul_at` datetime NOT NULL,
  `foto1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'mod',
  `viewer` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no-foto.png',
  `post_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `post_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `price_mobil_baru`
--

CREATE TABLE `price_mobil_baru` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `merek_id` int(10) UNSIGNED NOT NULL,
  `design_id` int(10) UNSIGNED NOT NULL,
  `tipe_id` int(10) UNSIGNED NOT NULL,
  `harga` decimal(15,2) NOT NULL,
  `download_brosur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_tujuan`
--

CREATE TABLE `rekening_tujuan` (
  `id` int(10) UNSIGNED NOT NULL,
  `rekening_tujuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `request_admins`
--

CREATE TABLE `request_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8_unicode_ci NOT NULL,
  `berkas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `slot_mobil_baru`
--

CREATE TABLE `slot_mobil_baru` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `merek_id` int(10) UNSIGNED NOT NULL,
  `order_start_at` datetime NOT NULL,
  `order_finish_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `slot_mobil_baru`
--

INSERT INTO `slot_mobil_baru` (`id`, `user_id`, `city_id`, `merek_id`, `order_start_at`, `order_finish_at`, `created_at`, `updated_at`) VALUES
(1, 1, 59, 4, '2022-12-06 11:50:51', '2023-01-06 11:50:51', '2022-12-06 04:50:51', '2022-12-06 04:50:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosial_media`
--

CREATE TABLE `sosial_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sosial_media`
--

INSERT INTO `sosial_media` (`id`, `facebook`, `twitter`, `google`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'https://facebook.com', 'https://twitter.com', 'https://plus.google.com', 'https://linkedin.com', 'https://youtube.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spesifikasi_mobil_baru`
--

CREATE TABLE `spesifikasi_mobil_baru` (
  `id` int(10) UNSIGNED NOT NULL,
  `merek_id` int(10) UNSIGNED NOT NULL,
  `design_id` int(10) UNSIGNED NOT NULL,
  `tipe_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `negara_pembuat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no-foto.png',
  `city_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `spesifikasi_mobil_baru`
--

INSERT INTO `spesifikasi_mobil_baru` (`id`, `merek_id`, `design_id`, `tipe_id`, `slug`, `negara_pembuat`, `foto`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 4, 'ford-all-new-odyssey-tipe-m-mt-or-at', 'Indo', 'TUTAQdtmiSSenmcoZQ8ip1mosmAw6JnXslhOPl5voFJQBE6ovaIfNctFf4Hvd2Tfu1DBXq7YJ3Syh5RWcm5iFL9o4Hs5drhcVKOlAntC.jpg', '1', '2022-12-06 04:24:33', '2022-12-06 04:24:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe`
--

CREATE TABLE `tipe` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tipe`
--

INSERT INTO `tipe` (`id`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 'VTi 2.4L A/T', NULL, NULL),
(2, 'VTiL 2.4L M/T', NULL, NULL),
(3, 'TIPE D MT', NULL, NULL),
(4, 'TIPE M MT/AT', NULL, NULL),
(5, 'TIPE M SPORTY MT/AT', NULL, NULL),
(6, 'TIPE X AIRBAG MT/AT', NULL, NULL),
(7, 'TIPE X ELEGANT MT/AT', NULL, NULL),
(8, 'TIPE X MT/AT', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transmisi`
--

CREATE TABLE `transmisi` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesifikasi_mobil_baru_id` int(10) UNSIGNED NOT NULL,
  `kopling` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipe_transmisi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sistem_kemudi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `transmisi`
--

INSERT INTO `transmisi` (`id`, `spesifikasi_mobil_baru_id`, `kopling`, `tipe_transmisi`, `sistem_kemudi`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '2022-12-06 04:24:33', '2022-12-06 04:24:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no-foto.png',
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `username`, `facebook_id`, `balance`, `foto`, `address`, `phone`, `website`, `user_info`, `role`, `confirmed`, `confirmation_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Otomotif', 'admin@my.tuta', '$2y$10$YzEtiRUyUkcAeq8egoUuIOEMFiKCCIjsMSLzSVD1aFiRl.FuZFVa2', 'adminotomotif', NULL, '0.00', 'no-foto.png', NULL, '082155000851', NULL, NULL, 'admin', 1, NULL, 'juOhEAIHEeB7rCVyhK56lJqSK7dBVdCYsO6Vq1javTOtGOvbXcPWJcKc6QDh', NULL, '2022-12-07 06:17:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cash_books`
--
ALTER TABLE `cash_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_books_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indeks untuk tabel `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposit_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `design`
--
ALTER TABLE `design`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dimensi`
--
ALTER TABLE `dimensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dimensi_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `feature_interior_exterior`
--
ALTER TABLE `feature_interior_exterior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_interior_exterior_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `feature_interior_texts`
--
ALTER TABLE `feature_interior_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_interior_texts_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `feature_keamanan_kelengkapan`
--
ALTER TABLE `feature_keamanan_kelengkapan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_keamanan_kelengkapan_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `harga_slot`
--
ALTER TABLE `harga_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_reserved_at_index` (`queue`,`reserved`,`reserved_at`);

--
-- Indeks untuk tabel `kaki`
--
ALTER TABLE `kaki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kaki_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `keamanan_texts`
--
ALTER TABLE `keamanan_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keamanan_texts_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mesin`
--
ALTER TABLE `mesin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mesin_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `mobil_bekas`
--
ALTER TABLE `mobil_bekas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobil_bekas_user_id_foreign` (`user_id`),
  ADD KEY `mobil_bekas_city_id_foreign` (`city_id`),
  ADD KEY `mobil_bekas_merek_id_foreign` (`merek_id`),
  ADD KEY `mobil_bekas_design_id_foreign` (`design_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_post_slug_unique` (`post_slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `price_mobil_baru`
--
ALTER TABLE `price_mobil_baru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_mobil_baru_city_id_foreign` (`city_id`),
  ADD KEY `price_mobil_baru_merek_id_foreign` (`merek_id`),
  ADD KEY `price_mobil_baru_design_id_foreign` (`design_id`),
  ADD KEY `price_mobil_baru_tipe_id_foreign` (`tipe_id`);

--
-- Indeks untuk tabel `rekening_tujuan`
--
ALTER TABLE `rekening_tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `request_admins`
--
ALTER TABLE `request_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_admins_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `slot_mobil_baru`
--
ALTER TABLE `slot_mobil_baru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slot_mobil_baru_user_id_foreign` (`user_id`),
  ADD KEY `slot_mobil_baru_city_id_foreign` (`city_id`),
  ADD KEY `slot_mobil_baru_merek_id_foreign` (`merek_id`);

--
-- Indeks untuk tabel `sosial_media`
--
ALTER TABLE `sosial_media`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `spesifikasi_mobil_baru`
--
ALTER TABLE `spesifikasi_mobil_baru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spesifikasi_mobil_baru_slug_unique` (`slug`),
  ADD KEY `spesifikasi_mobil_baru_merek_id_foreign` (`merek_id`),
  ADD KEY `spesifikasi_mobil_baru_design_id_foreign` (`design_id`),
  ADD KEY `spesifikasi_mobil_baru_tipe_id_foreign` (`tipe_id`);

--
-- Indeks untuk tabel `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transmisi`
--
ALTER TABLE `transmisi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transmisi_spesifikasi_mobil_baru_id_foreign` (`spesifikasi_mobil_baru_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_facebook_id_unique` (`facebook_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cash_books`
--
ALTER TABLE `cash_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `design`
--
ALTER TABLE `design`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `dimensi`
--
ALTER TABLE `dimensi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feature_interior_exterior`
--
ALTER TABLE `feature_interior_exterior`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feature_interior_texts`
--
ALTER TABLE `feature_interior_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feature_keamanan_kelengkapan`
--
ALTER TABLE `feature_keamanan_kelengkapan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `harga_slot`
--
ALTER TABLE `harga_slot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kaki`
--
ALTER TABLE `kaki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `keamanan_texts`
--
ALTER TABLE `keamanan_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `merek`
--
ALTER TABLE `merek`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mesin`
--
ALTER TABLE `mesin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mobil_bekas`
--
ALTER TABLE `mobil_bekas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `price_mobil_baru`
--
ALTER TABLE `price_mobil_baru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rekening_tujuan`
--
ALTER TABLE `rekening_tujuan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `request_admins`
--
ALTER TABLE `request_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `slot_mobil_baru`
--
ALTER TABLE `slot_mobil_baru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sosial_media`
--
ALTER TABLE `sosial_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `spesifikasi_mobil_baru`
--
ALTER TABLE `spesifikasi_mobil_baru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transmisi`
--
ALTER TABLE `transmisi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cash_books`
--
ALTER TABLE `cash_books`
  ADD CONSTRAINT `cash_books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `deposit`
--
ALTER TABLE `deposit`
  ADD CONSTRAINT `deposit_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dimensi`
--
ALTER TABLE `dimensi`
  ADD CONSTRAINT `dimensi_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feature_interior_exterior`
--
ALTER TABLE `feature_interior_exterior`
  ADD CONSTRAINT `feature_interior_exterior_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feature_interior_texts`
--
ALTER TABLE `feature_interior_texts`
  ADD CONSTRAINT `feature_interior_texts_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feature_keamanan_kelengkapan`
--
ALTER TABLE `feature_keamanan_kelengkapan`
  ADD CONSTRAINT `feature_keamanan_kelengkapan_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kaki`
--
ALTER TABLE `kaki`
  ADD CONSTRAINT `kaki_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `keamanan_texts`
--
ALTER TABLE `keamanan_texts`
  ADD CONSTRAINT `keamanan_texts_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mesin`
--
ALTER TABLE `mesin`
  ADD CONSTRAINT `mesin_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mobil_bekas`
--
ALTER TABLE `mobil_bekas`
  ADD CONSTRAINT `mobil_bekas_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `mobil_bekas_design_id_foreign` FOREIGN KEY (`design_id`) REFERENCES `design` (`id`),
  ADD CONSTRAINT `mobil_bekas_merek_id_foreign` FOREIGN KEY (`merek_id`) REFERENCES `merek` (`id`),
  ADD CONSTRAINT `mobil_bekas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `price_mobil_baru`
--
ALTER TABLE `price_mobil_baru`
  ADD CONSTRAINT `price_mobil_baru_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `price_mobil_baru_design_id_foreign` FOREIGN KEY (`design_id`) REFERENCES `design` (`id`),
  ADD CONSTRAINT `price_mobil_baru_merek_id_foreign` FOREIGN KEY (`merek_id`) REFERENCES `merek` (`id`),
  ADD CONSTRAINT `price_mobil_baru_tipe_id_foreign` FOREIGN KEY (`tipe_id`) REFERENCES `tipe` (`id`);

--
-- Ketidakleluasaan untuk tabel `request_admins`
--
ALTER TABLE `request_admins`
  ADD CONSTRAINT `request_admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `slot_mobil_baru`
--
ALTER TABLE `slot_mobil_baru`
  ADD CONSTRAINT `slot_mobil_baru_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `slot_mobil_baru_merek_id_foreign` FOREIGN KEY (`merek_id`) REFERENCES `merek` (`id`),
  ADD CONSTRAINT `slot_mobil_baru_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `spesifikasi_mobil_baru`
--
ALTER TABLE `spesifikasi_mobil_baru`
  ADD CONSTRAINT `spesifikasi_mobil_baru_design_id_foreign` FOREIGN KEY (`design_id`) REFERENCES `design` (`id`),
  ADD CONSTRAINT `spesifikasi_mobil_baru_merek_id_foreign` FOREIGN KEY (`merek_id`) REFERENCES `merek` (`id`),
  ADD CONSTRAINT `spesifikasi_mobil_baru_tipe_id_foreign` FOREIGN KEY (`tipe_id`) REFERENCES `tipe` (`id`);

--
-- Ketidakleluasaan untuk tabel `transmisi`
--
ALTER TABLE `transmisi`
  ADD CONSTRAINT `transmisi_spesifikasi_mobil_baru_id_foreign` FOREIGN KEY (`spesifikasi_mobil_baru_id`) REFERENCES `spesifikasi_mobil_baru` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
