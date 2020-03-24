-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 24 mars 2020 à 16:00
-- Version du serveur :  10.1.40-MariaDB
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(160) NOT NULL,
  `contenu` text NOT NULL,
  `image` varchar(160) NOT NULL,
  `datePublication` datetime NOT NULL,
  `categorie` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `image`, `datePublication`, `categorie`) VALUES
(22, 'recettes pour pâtes italiennes', 'un kilo de pates\r\nun kilo de paracetamol\r\nun peu de tomate', 'assets/img/photo1.jpg', '2020-03-13 10:44:45', 'cuisine'),
(23, 'modif titre', 'pause tout de suite', 'assets/img/photo1.jpg', '2020-03-13 11:00:30', 'pause'),
(24, 'bientot le dejeuner', 'salade olives et pates', 'assets/img/photo1.jpg', '2020-03-13 11:34:48', 'cuisine'),
(25, 'bientot le premier tour', 'dimanche apporter votre stylo', 'assets/img/photo1.jpg', '2020-03-13 11:36:16', 'politique'),
(26, 'mars attack modif', 'sortie dans les salles 3D', 'assets/img/photo1.jpg', '2020-03-13 11:45:08', 'cinema'),
(27, 'modif titre', 'modif contenu', 'assets/img/photo2.jpg', '2020-03-16 10:28:01', 'modif'),
(28, 'bientôt le dejeuner', 'quel menu ?\r\nmanger des légumes tous les jours\r\n(5fruits et légumes)', 'assets/img/photo1.jpg', '2020-03-16 11:46:36', 'manger');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(160) NOT NULL,
  `email` varchar(160) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
