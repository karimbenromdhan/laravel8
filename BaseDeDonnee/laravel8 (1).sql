-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 10 mai 2022 à 12:07
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel8`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caracteristiques` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marque` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtestock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixAchat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixVente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixSolde` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageartpetitf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageartgrandf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorieID` bigint(20) UNSIGNED NOT NULL,
  `scategorieID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `caracteristiques`, `designation`, `marque`, `reference`, `qtestock`, `prixAchat`, `prixVente`, `prixSolde`, `imageartpetitf`, `imageartgrandf`, `categorieID`, `scategorieID`, `created_at`, `updated_at`) VALUES
(1, 'tv plasma', 'TV', 'Crystal', 'cr123', '10', '1000', '1300', '1200', '../storage/images/crystal1.jpg', '[\"../storage/images/crystal1.jpg\",\"../storage/images/crystal1.jpg\"]', 1, 1, '2022-03-08 09:01:28', '2022-03-08 09:01:28'),
(2, 'tv plasma', 'TV', 'candor', 'cc556olololo', '15', '900', '1100', '1050', '../storage/images/crystal1.jpg', '[\"../storage/images/crystal1.jpg\",\"../storage/images/crystal1.jpg\"]', 1, 1, '2022-03-08 09:03:38', '2022-05-10 06:38:09'),
(5, 'lm$', '^lm$', 'lm$', 'lm$', '1', '1', '1', '1', '../storage/images/A12.jpg', '[\"../storage/images/about1.jpg\"]', 5, 7, '2022-05-10 06:24:31', '2022-05-10 06:24:31');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomcategorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagecategorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nomcategorie`, `imagecategorie`, `created_at`, `updated_at`) VALUES
(1, 'Electo', 'categories/electronique.jpg', '2022-03-08 07:12:35', '2022-03-08 07:13:24'),
(2, 'Superette', 'categories/superette.jpg', '2022-03-08 07:12:35', '2022-03-08 07:13:24'),
(3, 'jardin', 'categories/jardin.jpg', '2022-03-08 07:12:35', '2022-03-08 07:13:24'),
(4, 'santer & beauter', 'categories/santeBeaute.jpg', '2022-03-08 07:12:35', '2022-03-08 07:13:24'),
(5, 'informatique', 'categories/informatique.jpg', '2022-03-08 07:12:35', '2022-03-08 07:13:24'),
(11, 'hhhd', 'categories/superette.jpg', '2022-04-05 06:20:17', '2022-04-05 06:42:09'),
(12, 'rrrrraa', 'categories/mode.jpg', '2022-04-05 06:33:43', '2022-04-05 06:33:51');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `npr`, `adresse`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Dasia Schmitt', '828 McDermott Ways Suite 775\nRoycemouth, MA 06095-4709', 'raleigh.roberts@example.com', NULL, NULL),
(2, 'sikarim', 'rte teniour km 1.5', 'sikarim@gmail.com', '2022-03-01 09:19:08', '2022-03-01 09:19:08');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_03_01_084607_create_clients_table', 1),
(17, '2022_03_01_093348_create_contacts_table', 1),
(18, '2022_03_08_075032_create_categories_table', 2),
(19, '2022_03_08_081436_create_scategories_table', 3),
(20, '2022_03_08_091939_create_articles_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `scategories`
--

CREATE TABLE `scategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomscategorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagescat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorieID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `scategories`
--

INSERT INTO `scategories` (`id`, `nomscategorie`, `imagescat`, `categorieID`, `created_at`, `updated_at`) VALUES
(1, 'ondileur', 'scategories/IPAD.jpg', 1, '2022-03-08 07:46:47', '2022-03-08 07:47:41'),
(2, 'tv', 'scategories/Smarttv3.png', 1, '2022-03-08 07:46:47', '2022-03-08 07:13:24'),
(3, 'conserve', 'scategories/Aliments-En-Conserve-M.png', 2, '2022-03-08 07:12:35', '2022-03-08 07:13:24'),
(4, 'Telecommande', 'scategories/Telecommande.jpg', 1, '2022-03-08 07:12:35', '2022-03-08 07:13:24'),
(7, 'tita', 'scategories/Mode-enfant.png', 5, '2022-04-05 07:32:33', '2022-04-05 07:32:33');

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'karim', 'karim@gmail.com', NULL, '$2y$10$w73EE8ZuiDMXW0CMhzKlZuKJAzezjg.yhGMRl7IXhyZ1H/JlphYxa', NULL, '2022-03-29 06:21:06', '2022-03-29 06:21:06'),
(2, 'karim2020', 'karim2020@karim2020.com', NULL, '$2y$10$kcfxAmT6i/DJBXT7ULffFO5/lNxULB0b0x/3LJSdUC1qxWsHzzVmK', NULL, '2022-05-10 06:48:51', '2022-05-10 06:48:51'),
(3, 'karim2022@karim2022.com', 'karim2022@karim2022.com', NULL, '$2y$10$N6rqdRx/qfnOTWAm//wEPOkvjt74PbxEv9a368dbr/ww1Av7agl1q', NULL, '2022-05-10 07:33:12', '2022-05-10 07:33:12'),
(4, 'karim2023@karim2023.com', 'karim2023@karim2023.com', NULL, '$2y$10$.zUId1EqTQkPKT0oXFCNXO/ZKjTn3b9R4.zFEE2/1vw4HTvLiZ6sK', NULL, '2022-05-10 07:51:47', '2022-05-10 07:51:47');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categorieid_foreign` (`categorieID`),
  ADD KEY `articles_scategorieid_foreign` (`scategorieID`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `scategories`
--
ALTER TABLE `scategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scategories_categorieid_foreign` (`categorieID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `scategories`
--
ALTER TABLE `scategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_categorieid_foreign` FOREIGN KEY (`categorieID`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_scategorieid_foreign` FOREIGN KEY (`scategorieID`) REFERENCES `scategories` (`id`);

--
-- Contraintes pour la table `scategories`
--
ALTER TABLE `scategories`
  ADD CONSTRAINT `scategories_categorieid_foreign` FOREIGN KEY (`categorieID`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
