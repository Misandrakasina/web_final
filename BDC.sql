-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 21 oct. 2025 à 20:28
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `BDC`
--

-- --------------------------------------------------------

--
-- Structure de la table `deficit`
--

CREATE TABLE `deficit` (
  `id` int(11) NOT NULL,
  `FE` varchar(50) DEFAULT NULL,
  `FI` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dons`
--

CREATE TABLE `dons` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `lfr2024` decimal(10,1) DEFAULT NULL,
  `lf2025` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dons`
--

INSERT INTO `dons` (`id`, `nom`, `lfr2024`, `lf2025`) VALUES
(1, 'Courants', 0.3, 31.0),
(2, 'Capital', 1086.0, 2445.6);

-- --------------------------------------------------------

--
-- Structure de la table `douane`
--

CREATE TABLE `douane` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `lfr2024` decimal(10,1) DEFAULT NULL,
  `lf2025` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `douane`
--

INSERT INTO `douane` (`id`, `nom`, `lfr2024`, `lf2025`) VALUES
(1, 'Droit de douane', 847.5, 1010.7),
(2, 'TVA à importation', 1768.3, 2148.3),
(3, 'Taxe sur les produits pétroliers', 308.0, 326.0),
(4, 'TVA sur les produits pétroliers', 842.8, 879.0),
(5, 'Droit de navigation', 1.2, 1.9),
(6, 'Autres', 0.2, 0.1);

-- --------------------------------------------------------

--
-- Structure de la table `fiscale`
--

CREATE TABLE `fiscale` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `lfr2024` decimal(10,1) DEFAULT NULL,
  `lf2025` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fiscale`
--

INSERT INTO `fiscale` (`id`, `nom`, `lfr2024`, `lf2025`) VALUES
(1, 'Impôt sur les revenus', 1179.0, 1411.4),
(2, 'Impôt sur les revenus Salariaux et Assimilés', 848.2, 889.9),
(3, 'Impôt sur les revenus des Capitaux Mobiliers', 78.2, 93.7),
(4, 'Impôt sur les plus-values Immobilières', 14.0, 18.3),
(5, 'Impôt Synthétique', 132.3, 164.7),
(6, 'Droit d’Enregistrement', 49.0, 62.8),
(7, 'Taxe sur la Valeur Ajoutée (y compris Taxe sur les transactions Mobiles)', 1400.2, 1742.2),
(8, 'Impôt sur les marchés Publics', 148.7, 250.0),
(9, 'Droit d’Accise (y compris Taxe environnementale)', 754.1, 955.4),
(10, 'Taxes sur les Assurances', 17.2, 20.6),
(11, 'Droit de Timbres', 14.1, 16.8),
(12, 'Autres', 1.5, 2.7);

-- --------------------------------------------------------

--
-- Structure de la table `institution`
--

CREATE TABLE `institution` (
  `id` int(11) NOT NULL,
  `nom` varchar(150) DEFAULT NULL,
  `lfr2024` decimal(10,1) DEFAULT NULL,
  `lf2025` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `institution`
--

INSERT INTO `institution` (`id`, `nom`, `lfr2024`, `lf2025`) VALUES
(1, 'Présidence de la République', 177.1, 224.7),
(2, 'Sénat', 22.1, 21.3),
(3, 'Assemblée Nationale', 87.4, 85.9),
(4, 'Haute Cour Constitutionnelle', 11.9, 9.3),
(5, 'Primature', 278.3, 339.9),
(6, 'Conseil du Fampihavanana Malagasy', 6.7, 6.3),
(7, 'Commission Électorale Nationale Indépendante', 113.3, 16.4),
(8, 'Ministère de la Défense Nationale', 557.0, 543.2),
(9, 'Ministère des Affaires Étrangères', 99.2, 104.7),
(10, 'Ministère de la Justice', 199.6, 219.8),
(11, 'Ministère de l’Intérieur', 150.2, 134.7),
(12, 'Ministère de Économie et des Finances', 2848.0, 2332.7),
(13, 'Ministère de la Sécurite Publique', 228.3, 229.2),
(14, 'Ministère de l’Industrialisation et du Commerce', 113.2, 119.6),
(15, 'Ministère de la Décentralisation et de l’Aménagement du Territoire', 356.8, 568.1),
(16, 'Ministère du Travail, de l’Emploi et de la Fonction Publique', 31.8, 33.7),
(17, 'Ministère du Tourisme et de l’Artisanat', 19.2, 43.9),
(18, 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique', 284.2, 285.6),
(19, 'Ministère de l’Environnement et du Développement Durable', 94.4, 188.8),
(20, 'Ministère de l’Éducation Nationale', 1532.8, 1562.0),
(21, 'Ministère des Transports et de la Météorologie', 63.9, 216.3),
(22, 'Ministère de la Santé Publique', 716.6, 921.0),
(23, 'Ministère de la Communication et de la Culture', 38.4, 32.1),
(24, 'Ministère des Travaux Publics', 1217.3, 2327.5),
(25, 'Ministère des Mines et des Ressources Strategiques', 18.3, 18.1),
(26, 'Ministère de l’Énergie et des Hydrocarbures', 407.9, 1332.0),
(27, 'Ministère de l’Eau, de l’Assainissement et de l’Hygiène', 306.1, 600.2),
(28, 'Ministère de l’Agriculture et de l’Élevage', 469.8, 795.5),
(29, 'Ministère de la Pêche et de l’Économie Bleue', 29.9, 28.8),
(30, 'Ministère de l’Enseignement Technique et de la Formation Professionnelle', 103.7, 94.8),
(31, 'Ministère de l’Artisanat et des Métiers', 2.5, 0.0),
(32, 'Ministère du Développement Numérique, des Postes et des Télécommunications', 8.4, 8.8),
(33, 'Ministère de la Population et des Solidarités', 99.1, 193.4),
(34, 'Ministère de la Jeunesse et des Sports', 40.5, 58.1),
(35, 'Secretariat d’État en charge des Nouvelles Villes et de l’Habitat', 247.1, 138.8),
(36, 'Ministère délégué chargé de la Gendarmerie', 414.8, 446.4),
(37, 'Secrétariat d’État en charge de la Souveraineté Alimentaire', 0.0, 127.3),
(38, 'Haut Conseil pour la Défense de la Démocratie et de l’État de Droit (HCDDED)', 2.1, 2.0),
(39, 'Commission Nationale Indépendante des Droits de l’Homme (CNIDH)', 2.1, 2.0),
(40, 'Haute Cour de Justice', 3.7, 3.5);

-- --------------------------------------------------------

--
-- Structure de la table `Nfiscale`
--

CREATE TABLE `Nfiscale` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `lfr2024` decimal(10,1) DEFAULT NULL,
  `lf2025` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Nfiscale`
--

INSERT INTO `Nfiscale` (`id`, `nom`, `lfr2024`, `lf2025`) VALUES
(1, 'Dividendes', 89.5, 120.2),
(2, 'Productions immobilières financières', 0.5, 2.1),
(3, 'Redevance de pêche', 10.0, 15.0),
(4, 'Redevance minières', 84.9, 331.2),
(5, 'Autres redevance', 9.7, 10.0),
(6, 'Produits des activités et autres', 11.1, 8.1),
(7, 'Autres', 140.1, 5.2);

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE `rubrique` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `lfr2024` decimal(10,1) DEFAULT NULL,
  `lf2025` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rubrique`
--

INSERT INTO `rubrique` (`id`, `nom`, `lfr2024`, `lf2025`) VALUES
(1, 'Intérêts de la dette', 672.0, 756.5),
(2, 'Dépenses courantes de solde', 3814.5, 3846.4),
(3, 'Dépenses courantes hors solde', 3069.0, 2304.3),
(4, 'Indemnités', 244.8, 244.8),
(5, 'Biens/Services', 573.2, 504.7),
(6, 'Transferts et subventions', 2251.0, 1554.8),
(7, 'Dépenses d’investissement', 4836.8, 8537.2),
(8, 'PIP sur financement interne', 1262.5, 2377.3),
(9, 'PIP sur financement externe', 3574.3, 6159.9),
(10, 'Autres opérations nettes du trésor', 390.2, 860.6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `deficit`
--
ALTER TABLE `deficit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dons`
--
ALTER TABLE `dons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `douane`
--
ALTER TABLE `douane`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fiscale`
--
ALTER TABLE `fiscale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Nfiscale`
--
ALTER TABLE `Nfiscale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rubrique`
--
ALTER TABLE `rubrique`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `deficit`
--
ALTER TABLE `deficit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dons`
--
ALTER TABLE `dons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `douane`
--
ALTER TABLE `douane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `fiscale`
--
ALTER TABLE `fiscale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `institution`
--
ALTER TABLE `institution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `Nfiscale`
--
ALTER TABLE `Nfiscale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `rubrique`
--
ALTER TABLE `rubrique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
