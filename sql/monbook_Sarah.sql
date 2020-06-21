-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 21, 2020 at 12:10 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `monbook_Sarah`
--

-- --------------------------------------------------------

--
-- Table structure for table `accueil`
--

CREATE TABLE `accueil` (
  `id_accueil` int(11) NOT NULL,
  `iduu` varchar(100) NOT NULL,
  `valeur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accueil`
--

INSERT INTO `accueil` (`id_accueil`, `iduu`, `valeur`) VALUES
(1, 'titre', 'Bienvenue '),
(2, 'Texte', 'Ce portfolio présente les projets que j\'ai réalisé depuis le commencement de ma formation de Développeuse Web avec les Descodeuses en Février 2020.  ');

-- --------------------------------------------------------

--
-- Table structure for table `administrateur`
--

CREATE TABLE `administrateur` (
  `id_admin` int(11) NOT NULL,
  `identifiant` varchar(100) NOT NULL,
  `mot_de_passe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administrateur`
--

INSERT INTO `administrateur` (`id_admin`, `identifiant`, `mot_de_passe`) VALUES
(7, 'admin', '$2a$07$usesomesillystringforegFOeQOp8RK/V8Yn0LZIZwSlh5IkndD.'),
(8, 'sarah', '$2a$07$usesomesillystringforelfVDt2YaI.gDBbh2gJLKlEeshetOwiG');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `github` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `linkedin`, `github`, `tel`, `email`) VALUES
(1, 'https://www.linkedin.com/in/sarah-rubio-ba765b1a8/', 'https://github.com/SarahRubio', '06.15.92.73.57', 'sarahrubio.pro@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `projets`
--

CREATE TABLE `projets` (
  `id_projet` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `pitch` text NOT NULL,
  `annee` year(4) NOT NULL,
  `client` varchar(100) NOT NULL,
  `lien` varchar(300) NOT NULL,
  `ordre` int(11) NOT NULL,
  `online` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projets`
--

INSERT INTO `projets` (`id_projet`, `nom`, `pitch`, `annee`, `client`, `lien`, `ordre`, `online`) VALUES
(1, 'Marina Messager', 'Ersatz de portfolio d\'artiste imaginaire.\r\nC\'est le premier site que j\'ai réalisé au cours de la formation de développement Web des Descodeuses. ', 2020, 'Descodeuses', '', 5, 1),
(2, 'Ada Hôtel', 'Site web d\'un hôtel végétal imaginaire, c\'est le deuxième site web que j\'ai réalisé au cours de la formation de Développement Web des Descodeuses.', 2020, 'Descodeuses', '', 7, 1),
(3, 'Fizzbuzz!', 'Un jeu de calcul en javascript pour faire fonctionner ses méninges.', 2020, 'Descodeuses', 'https://github.com/SarahRubio/Fizzbuzz', 6, 1),
(4, 'Codevores', 'Plateforme web imaginaire pour les développeuses Freelances. \r\nSite réalisé à l\'occasion de l\'évaluation mensuelle de la formation de développeuse web des Descodeuses. ', 2020, 'Descodeuses', 'https://github.com/SarahRubio/Codevores', 2, 1),
(5, 'Clément Salzedo', 'Portfolio d\'un réalisateur.', 2020, 'Clément Salzedo', 'https://sarahrubio.github.io/Clement_Salzedo/', 1, 1),
(6, 'Naïve Museum', 'Site web d\'un petit musée imaginaire. \r\nRéalisé dans le cadre de la formation Php dispensée par Nicolas Hennette. ', 2020, 'Descodeuses', 'https://github.com/SarahRubio/naive_museum', 3, 1),
(7, 'Sarahospital', 'Page web d\'un hôpital féminin dépassé.', 2020, 'Descodeuses', '', 4, 1),
(8, 'Mon nouveau blog', 'Dressage de Python avec Django à l\'occasion d\'un atelier DjangoGirls Paris. ', 2020, 'DjangoGirls', 'https://github.com/SarahRubio/mon-nouveau-blog', 8, 0),
(9, 'Playing all the time', 'Bricodage en Css3 animation.', 2020, 'Green Sand records', '', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `projet_techno`
--

CREATE TABLE `projet_techno` (
  `projet_id` int(11) NOT NULL,
  `techno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projet_techno`
--

INSERT INTO `projet_techno` (`projet_id`, `techno_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 7),
(4, 1),
(4, 2),
(4, 7),
(5, 1),
(5, 2),
(5, 7),
(5, 4),
(6, 1),
(6, 2),
(6, 4),
(7, 2),
(6, 8),
(7, 1),
(8, 4),
(9, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `technologie`
--

CREATE TABLE `technologie` (
  `id_techno` int(11) NOT NULL,
  `tech_nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `technologie`
--

INSERT INTO `technologie` (`id_techno`, `tech_nom`) VALUES
(1, 'HTML5'),
(2, 'CSS3'),
(4, 'PHP'),
(5, 'Python'),
(6, 'Django'),
(7, 'Javascript'),
(8, 'MySQL'),
(12, 'Wordpress'),
(13, 'NodeJs'),
(15, 'VueJs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accueil`
--
ALTER TABLE `accueil`
  ADD PRIMARY KEY (`id_accueil`) USING BTREE,
  ADD KEY `iduu` (`iduu`);

--
-- Indexes for table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id_projet`);

--
-- Indexes for table `technologie`
--
ALTER TABLE `technologie`
  ADD PRIMARY KEY (`id_techno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accueil`
--
ALTER TABLE `accueil`
  MODIFY `id_accueil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `id_projet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `technologie`
--
ALTER TABLE `technologie`
  MODIFY `id_techno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
