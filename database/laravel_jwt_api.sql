-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Des 2022 pada 01.52
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_jwt_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lionel Messi', 'messi@gmail.com', NULL, '$2y$10$x.UE6nDz7UXda6z8qnig0eMJkSi2hD6lS3uUo1bmron2IxD4eTPDK', NULL, '2022-12-03 06:44:04', '2022-12-03 06:44:04'),
(4, 'C. Ronaldo', 'ronaldo@gmail.com', NULL, '$2y$10$shr2CkQZRTV.J1ewf2B1YeOqLj0dFReLjEgH6eXAPquAj.XSf6emC', NULL, '2022-12-03 17:14:29', '2022-12-03 17:14:29'),
(5, 'K. Benzema', 'benzema@gmail.com', NULL, '$2y$10$.nJTbnPEWBRU5YCz.JINRenYH8zALp65jFTIhvwjtbE6NYnNbE5ki', NULL, '2022-12-03 17:34:15', '2022-12-03 17:34:15'),
(6, 'M. Salah', 'salah@gmail.com', NULL, '$2y$10$zsInRs.dFsm.oJCvJ4AKlezdo4MsQDa9Xud5WTC4NPWbg8HBvjZ/K', NULL, '2022-12-03 17:34:33', '2022-12-03 17:34:33'),
(7, 'N. Kante', 'kante@gmail.com', NULL, '$2y$10$60Ze188jbmKjsIAnIib87uOc8/hN2m8R4.fIExDLy3GIas1oznukG', NULL, '2022-12-03 17:34:54', '2022-12-03 17:34:54'),
(8, 'Ansu Fati', 'fati@gmail.com', NULL, '$2y$10$gXgM3ph2e/9fuo4ryKyn8enxhQngyMYUDvugVXAurSaanAavEDm/.', NULL, '2022-12-03 17:35:17', '2022-12-03 17:35:17'),
(9, 'O. Dembele', 'dembele@gmail.com', NULL, '$2y$10$s62y5MPHPZuuyZrhmrTJgeZvI2jKxKw1Kminj.ZACRW3GcRPjdRpu', NULL, '2022-12-03 17:35:37', '2022-12-03 17:35:37'),
(10, 'L. Martinez', 'lautaro@gmail.com', NULL, '$2y$10$urevLM3ppnzQS/HP87GEGePdW8tGELA4kPGWsYVU0xUuhSm..Z9Gq', NULL, '2022-12-03 17:36:10', '2022-12-03 17:36:10'),
(11, 'Gavi', 'gavi@gmail.com', NULL, '$2y$10$dTLj1sSWQkTptXXkcl6/QuB05taByd7qDXKaOuyJYsKXO81qgegua', NULL, '2022-12-03 17:36:31', '2022-12-03 17:36:31'),
(12, 'Pedri', 'pedri@gmail.com', NULL, '$2y$10$qSvetiObc65VoI8qJdTgdepyDOUWJtqJcPsEmjtz.9tEn.UMw3tEi', NULL, '2022-12-03 17:36:43', '2022-12-03 17:36:43'),
(13, 'E. Halland', 'halland@gmail.com', NULL, '$2y$10$nh3dhglHr0a9.w4608L5jeOVGDxfBBnkiUZ5IRPrlz03zGjqcMmZ6', NULL, '2022-12-03 17:37:07', '2022-12-03 17:37:07'),
(14, 'P. Foden', 'foden@gmail.com', NULL, '$2y$10$HcYQ9jAMjf8E1oiTT8YqBedhbMPyTsQg1kLdvVH5grC9BzxOWxz82', NULL, '2022-12-03 17:37:26', '2022-12-03 17:37:26'),
(15, 'J. Alba', 'alba@gmail.com', NULL, '$2y$10$Yk5MC8wZ2zVGLNtG6YBEWevoimi4dorMZh4602GcqzlGrkmaZwpYa', NULL, '2022-12-03 17:37:57', '2022-12-03 17:37:57'),
(16, 'J. Alvarez', 'alvarez@gmail.com', NULL, '$2y$10$gfxGQLJmzZvls1PJOGsC2ubv2YbHiI0g0PgKSJzZKStb8AFdBOkwS', NULL, '2022-12-03 17:39:02', '2022-12-03 17:39:02'),
(17, 'De Paul', 'paul@gmail.com', NULL, '$2y$10$srca55qupMBmjyo8w/7bK.a7eJm05pZPk2a/4AFN.8axF7/q.ZqGW', NULL, '2022-12-03 17:39:25', '2022-12-03 17:39:25'),
(18, 'Neymar Jr', 'neymar@gmail.com', NULL, '$2y$10$bp/VbHhBNwXfIrKotiqRMOUqL3KBl85GszDgM.twPNDGoHxHfCHMS', NULL, '2022-12-03 17:39:46', '2022-12-03 17:39:46'),
(19, 'K. Mbapee', 'mbapee@gmail.com', NULL, '$2y$10$nIaKIJOH1mxtBS1pNvL/duTOr4Ds79VSUlujeQriQZfyJxfX.JRxu', NULL, '2022-12-03 17:40:01', '2022-12-03 17:40:01'),
(20, 'Pulisic', 'pulisic@gmail.com', NULL, '$2y$10$duT1yZ1ULB28rbD9Vvczaur.Pfs6.E8Ruvv0N6gtZMp3dfYWVfbai', NULL, '2022-12-03 17:41:00', '2022-12-03 17:41:00'),
(21, 'Son', 'son@gmail.com', NULL, '$2y$10$OMb591iBd4NS5k8xsdua7OvQPymX/mbBMzGS2PQwFzQsqX/t7TSHG', NULL, '2022-12-03 17:41:35', '2022-12-03 17:41:35'),
(22, 'H. Kane', 'kane@gmail.com', NULL, '$2y$10$zgdN.fjjetux1kf/F160x.4OebNiqAZQZ5vhmc.u8e9C9Kuo30CbC', NULL, '2022-12-03 17:41:46', '2022-12-03 17:41:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
