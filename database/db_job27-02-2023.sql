-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 fév. 2023 à 12:24
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_job`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230206131511', '2023-02-06 14:16:14', 554);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `url`, `alt`) VALUES
(1, 'https://cdn.pixabay.com/photo/2015/10/30/10/03/gold-1013618_960_720.jpg', 'job de reve');

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `type`, `company`, `description`, `expires_at`, `email`, `image_id`) VALUES
(1, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-06 15:34:50', 'haykel@gmail.com', NULL),
(2, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-06 15:35:01', 'haykel@gmail.com', NULL),
(3, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-06 15:35:02', 'haykel@gmail.com', NULL),
(4, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-06 15:35:03', 'haykel@gmail.com', NULL),
(5, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-06 15:35:04', 'haykel@gmail.com', NULL),
(6, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-06 15:35:04', 'haykel@gmail.com', NULL),
(7, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-06 15:35:05', 'haykel@gmail.com', NULL),
(8, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-20 13:11:12', 'haykel@gmail.com', NULL),
(9, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-20 13:19:49', 'haykel@gmail.com', NULL),
(10, 'Architect', 'offshoreBox', 'Genie logiciel', '2023-02-20 13:21:36', 'haykel@gmail.com', NULL),
(11, 'Architect', 'offshoreBox', 'data science', '2023-02-20 13:31:24', 'djo.messaoud96@gmail.com', NULL),
(12, 'Architect', 'offshoreBox', 'data science', '2023-02-20 13:50:44', 'djo.messaoud96@gmail.com', NULL),
(13, 'Architect', 'offshoreBox', 'data science', '2023-02-20 14:20:42', 'djo.messaoud96@gmail.com', NULL),
(14, 'Architect', 'offshoreBox', 'data science', '2023-02-20 14:20:46', 'djo.messaoud96@gmail.com', NULL),
(15, 'Architect', 'offshoreBox', 'data science', '2023-02-20 15:08:18', 'djo.messaoud96@gmail.com', NULL),
(16, 'Architect', 'offshoreBox', 'data science', '2023-02-20 15:33:30', 'djo.messaoud96@gmail.com', NULL),
(17, 'Architect', 'offshoreBox', 'data science', '2023-02-20 15:38:54', 'djo.messaoud96@gmail.com', NULL),
(18, 'Architect', 'offshoreBox', 'data science', '2023-02-20 15:42:04', 'djo.messaoud96@gmail.com', NULL),
(19, 'Architect', 'offshoreBox', 'data science', '2023-02-20 15:44:57', 'djo.messaoud96@gmail.com', NULL),
(20, 'Architect', 'offshoreBox', 'data science', '2023-02-20 15:45:24', 'djo.messaoud96@gmail.com', NULL),
(21, 'Architect', 'offshoreBox', 'data science', '2023-02-20 15:47:26', 'djo.messaoud96@gmail.com', 1);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FBD8E0F83DA5256D` (`image_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F83DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
