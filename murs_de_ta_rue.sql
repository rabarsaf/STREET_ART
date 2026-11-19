-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 19 nov. 2026 à 10:06
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



DROP TABLE IF EXISTS `t_artiste`;
CREATE TABLE IF NOT EXISTS `t_artiste` (
  `ART_IdArtiste` int NOT NULL,
  `ART_NomArtiste` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ART_NomReel` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ART_AnneeNaissance` int DEFAULT NULL,
  `ART_DateNaissance` date DEFAULT NULL,
  `ART_DateDeces` date DEFAULT NULL,
  `ART_VilleNaissance` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAY_IdPays` int NOT NULL,
  `ART_ActifDepuis` int DEFAULT NULL,
  `ART_Biographie` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ART_IdArtiste`),
  UNIQUE KEY `uq_artiste_nom` (`ART_NomArtiste`),
  KEY `idx_artiste_pays` (`PAY_IdPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `t_artiste` (`ART_IdArtiste`, `ART_NomArtiste`, `ART_NomReel`, `ART_AnneeNaissance`, `ART_DateNaissance`, `ART_DateDeces`, `ART_VilleNaissance`, `PAY_IdPays`, `ART_ActifDepuis`, `ART_Biographie`) VALUES
(1, 'Banksy', NULL, 1974, NULL, NULL, 'Bristol', 3, 1990, 'Artiste anonyme de Bristol. Passé du lettrage au pochoir, influencé par Blek le Rat. Rats, policiers et soldats détournés pour critiquer l\'autorité.'),
(2, 'Blek le Rat', 'Xavier Prou', 1951, NULL, NULL, 'Paris', 1, 1981, 'Pionnier français du pochoir à Paris. Personnages grandeur nature, rats et détournements d\'œuvres classiques. A influencé Banksy.'),
(3, 'Jef Aérosol', 'Jean-François Perroy', 1957, '1957-01-15', NULL, 'Nantes', 1, 1982, 'Pochoiriste français, ancien professeur d\'anglais. Portraits en noir, blanc et rouge inspirés de l\'esthétique rock.'),
(4, 'Miss.Tic', NULL, 1956, '1956-02-20', '2022-05-22', 'Paris', 1, 1985, 'Figure du pochoir parisien. Une femme récurrente accompagnée d\'un jeu de mots ou d\'une épigramme. Décédée en 2022.'),
(5, 'Invader', NULL, NULL, NULL, NULL, NULL, 1, 1998, 'Artiste français anonyme, apparaît masqué en public. Mosaïques de monstres de Space Invaders posées dans les villes du monde (projet « Invasion »).'),
(6, 'JR', NULL, 1983, NULL, NULL, 'Paris', 1, 2001, 'Photographe et colleur d\'affiches géantes. Portraits d\'habitants collés sur les façades, avec une dimension humanitaire.'),
(7, 'C215', 'Christian Guémy', 1973, NULL, NULL, 'Bondy', 1, 2005, 'Pochoiriste français de portraits sur murs, boîtes aux lettres et objets. Soutien aux Ukrainiens depuis 2022.'),
(8, 'Shepard Fairey', 'Frank Shepard Fairey', 1970, '1970-02-15', NULL, 'Charleston', 2, 1989, 'Né à Charleston (Caroline du Sud). Autocollants, pochoirs, affiches et fresques, esthétique inspirée de l\'affiche de propagande. « Obey Giant » et « Hope ».'),
(9, 'Swoon', 'Caledonia Dance Curry', 1977, NULL, NULL, 'New London', 2, 1999, 'Collages de portraits gravés puis installations participatives. Honore des personnes invisibilisées et soutient des communautés en crise.'),
(10, 'Ernest Pignon-Ernest', NULL, 1942, NULL, NULL, 'Nice', 1, 1966, 'Pionnier français du collage : silhouettes grandeur nature collées dans la ville dès les années 1970, en lien avec les lieux et leur histoire.'),
(11, 'Keith Haring', NULL, 1958, '1958-05-04', '1990-02-16', 'Reading', 2, 1980, 'Dessins à la craie dans le métro de New York (1980-1985), puis fresques dans le monde. Messages sociaux, art accessible à tous, sensibilisation au sida.'),
(12, 'Cornbread', 'Darryl McCray', 1953, NULL, NULL, 'Philadelphie', 2, 1967, 'Considéré comme l\'un des premiers writers. Écrit son nom dans Philadelphie dès la fin des années 1960. Recruté en 1984 pour lutter contre le tag chez les jeunes.'),
(13, 'TAKI 183', 'Demetrios (nom de famille inconnu)', NULL, NULL, NULL, 'New York', 2, 1970, 'Coursier new-yorkais (né en 1953 ou 1954). Son tag, révélé par le New York Times en 1971, a déclenché une vague d\'imitateurs.'),
(14, 'Dondi White', 'Donald Joseph White', 1961, '1961-04-07', '1998-10-02', 'New York', 2, 1976, 'Writer new-yorkais des rames de métro (crew The Odd Partners), passé du métro à la toile. Son style est appelé « Dondism ».'),
(15, 'Bando', NULL, NULL, NULL, NULL, NULL, 1, 1983, 'Pionnier du graffiti français. Commence à taguer dans le métro de Paris vers 1983.');

-- --------------------------------------------------------

--
-- Structure de la table `t_artiste_forme`
--

DROP TABLE IF EXISTS `t_artiste_forme`;
CREATE TABLE IF NOT EXISTS `t_artiste_forme` (
  `ART_IdArtiste` int NOT NULL,
  `FOR_IdForme` int NOT NULL,
  PRIMARY KEY (`ART_IdArtiste`,`FOR_IdForme`),
  KEY `idx_af_forme` (`FOR_IdForme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_artiste_forme`
--

INSERT INTO `t_artiste_forme` (`ART_IdArtiste`, `FOR_IdForme`) VALUES
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(7, 2),
(8, 2),
(3, 3),
(7, 3),
(8, 3),
(11, 3),
(6, 4),
(8, 4),
(9, 4),
(10, 4),
(5, 5),
(1, 6),
(9, 6),
(8, 7),
(11, 8);

--theme

DROP TABLE IF EXISTS `t_artiste_theme`;
CREATE TABLE IF NOT EXISTS `t_artiste_theme` (
  `ART_IdArtiste` int NOT NULL,
  `THE_IdTheme` int NOT NULL,
  PRIMARY KEY (`ART_IdArtiste`,`THE_IdTheme`),
  KEY `idx_at_theme` (`THE_IdTheme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_artiste_theme`
--

INSERT INTO `t_artiste_theme` (`ART_IdArtiste`, `THE_IdTheme`) VALUES
(1, 1),
(8, 1),
(1, 2),
(2, 2),
(8, 2),
(1, 3),
(4, 3),
(6, 4),
(8, 4),
(9, 4),
(10, 4),
(2, 5),
(10, 5),
(2, 6),
(3, 6),
(6, 6),
(7, 6),
(9, 6),
(10, 6),
(4, 7),
(9, 7),
(5, 8),
(3, 9),
(4, 9),
(11, 10),
(5, 11),
(8, 12),
(1, 13),
(6, 13),
(7, 13),
(8, 13),
(11, 13),
(6, 14),
(7, 14),
(9, 14),
(11, 14),
(12, 14),
(12, 15),
(13, 15),
(14, 15),
(15, 15),
(11, 16);

-- --------------------------------------------------------

--
-- Structure de la table `t_forme`
--

DROP TABLE IF EXISTS `t_forme`;
CREATE TABLE IF NOT EXISTS `t_forme` (
  `FOR_IdForme` int NOT NULL,
  `FOR_Nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FOR_Description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FOR_IdForme`),
  UNIQUE KEY `uq_forme_nom` (`FOR_Nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_forme`
--

INSERT INTO `t_forme` (`FOR_IdForme`, `FOR_Nom`, `FOR_Description`) VALUES
(1, 'Graffiti', 'Tags et lettrages à la bombe, nés à Philadelphie et New York à la fin des années 1960'),
(2, 'Pochoir', 'Motif découpé reproductible à l\'infini, posé à la bombe'),
(3, 'Fresque', 'Peinture murale de grande taille, souvent une commande légale'),
(4, 'Collage', 'Affiches et portraits collés sur les murs (wheatpaste)'),
(5, 'Mosaïque', 'Motifs en carreaux de céramique fixés sur les façades'),
(6, 'Installation', 'Création en volume ou immersive dans l\'espace public ou un lieu d\'exposition'),
(7, 'Autocollant', 'Stickers diffusés en grand nombre dans l\'espace urbain'),
(8, 'Dessin', 'Dessin au trait, par exemple à la craie sur les panneaux du métro');

-- --------------------------------------------------------

--
-- Structure de la table `t_oeuvre`
--

DROP TABLE IF EXISTS `t_oeuvre`;
CREATE TABLE IF NOT EXISTS `t_oeuvre` (
  `OEU_IdOeuvre` int NOT NULL,
  `OEU_Titre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ART_IdArtiste` int NOT NULL,
  `FOR_IdForme` int DEFAULT NULL,
  `OEU_DatePublication` date NOT NULL,
  `OEU_PrecisionDate` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OEU_Lieu` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OEU_Description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`OEU_IdOeuvre`),
  KEY `idx_oeuvre_artiste` (`ART_IdArtiste`),
  KEY `idx_oeuvre_forme` (`FOR_IdForme`),
  KEY `idx_oeuvre_date` (`OEU_DatePublication`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_oeuvre`
--

INSERT INTO `t_oeuvre` (`OEU_IdOeuvre`, `OEU_Titre`, `ART_IdArtiste`, `FOR_IdForme`, `OEU_DatePublication`, `OEU_PrecisionDate`, `OEU_Lieu`, `OEU_Description`) VALUES
(1, 'Rats (premiers pochoirs)', 2, 2, '1981-01-01', 'annee', 'Paris', 'Premiers pochoirs de rats, symbole de la liberté dans la ville.'),
(2, 'L\'homme qui passait à travers les murs', 2, 2, '1991-01-01', 'annee', 'Paris', 'Silhouette grandeur nature.'),
(3, 'Chuuuut !', 3, 2, '2011-01-01', 'annee', 'Square Igor-Stravinsky, Paris', 'Pochoir monumental.'),
(4, 'Dans nos jardins secrets le désir se crée', 4, 2, '2015-01-01', 'annee', 'Paris', 'Femme et épigramme.'),
(5, 'Premières mosaïques Space Invader', 5, 5, '1998-01-01', 'annee', 'Paris', 'Début de l\'Invasion.'),
(6, 'Girl with Balloon', 1, 2, '2002-01-01', 'annee', 'Londres', 'Fillette lâchant un ballon rouge.'),
(7, 'Exit Through the Gift Shop', 1, NULL, '2010-01-01', 'annee', NULL, 'Film documentaire, nommé aux Oscars. Réflexion sur l\'art et le marché.'),
(8, 'Dismaland', 1, 6, '2015-08-21', 'jour', 'Weston-super-Mare', 'Parc d\'attractions détourné.'),
(9, 'Portrait d\'une génération', 6, 4, '2004-01-01', 'annee', 'Clichy-Montfermeil', 'Portraits géants d\'habitants de banlieue.'),
(10, 'Women Are Heroes', 6, 4, '2008-01-01', 'annee', 'Monde entier', 'Portraits de femmes collés sur des façades.'),
(11, 'Inside Out Project', 6, 4, '2011-01-01', 'annee', 'Monde entier', 'Projet participatif de portraits en affiches.'),
(12, 'Pyramide du Louvre', 6, 4, '2016-01-01', 'annee', 'Paris', 'Collage géant sur la pyramide du Louvre.'),
(13, 'Portraits en Ukraine', 7, 2, '2022-01-01', 'annee', 'Ukraine', 'Portraits réalisés pendant la guerre.'),
(14, 'Andre the Giant Has a Posse', 8, 7, '1989-01-01', 'annee', 'Providence', 'Premier autocollant, réalisé pendant ses études au RISD.'),
(15, 'Obey Giant', 8, 7, '1996-01-01', 'annee', NULL, 'Version « icône » du visage avec le mot OBEY.'),
(16, 'Hope', 8, 4, '2008-01-01', 'annee', 'États-Unis', 'Portrait de Barack Obama pour la campagne présidentielle.'),
(17, 'Peace Elephant', 8, 3, '2011-01-01', 'annee', 'West Hollywood', 'Fresque à la bibliothèque de West Hollywood.'),
(18, 'Liberté, Égalité, Fraternité', 8, 3, '2016-01-01', 'annee', 'Paris', 'Hommage aux victimes des attentats de novembre 2015.'),
(19, 'Santa\'s Ghetto (mur de Bethléem)', 9, 4, '2007-01-01', 'annee', 'Bethléem', 'Œuvre sur le mur de séparation en Cisjordanie.'),
(20, 'Swimming Cities of Switchback Sea', 9, 6, '2008-01-01', 'annee', NULL, 'Radeau-sculpture navigant.'),
(21, 'Konbit Shelter', 9, 6, '2010-01-01', 'annee', 'Haïti', 'Projet de reconstruction communautaire, à partir de 2010.'),
(22, 'Submerged Motherlands', 9, 6, '2014-01-01', 'annee', 'Brooklyn Museum, New York', 'Installation immersive.'),
(23, 'Braddock Tiles', 9, 6, '2015-01-01', 'annee', 'Braddock (Pennsylvanie)', 'Projet de 2015 à 2018.'),
(24, 'La Commune de Paris', 10, 4, '1971-01-01', 'annee', 'Paris', 'Série de silhouettes pour le centenaire de la Commune.'),
(25, 'Les Expulsés', 10, 4, '1977-01-01', 'annee', 'Paris', 'Silhouettes de mal-logés collées dans la ville.'),
(26, 'Naples', 10, 4, '1988-01-01', 'annee', 'Naples', 'Collages dans les rues de la ville.'),
(27, 'Maurice Audin', 10, 4, '2003-01-01', 'annee', 'Alger', 'Hommage au mathématicien disparu en 1957.'),
(28, 'Subway drawings', 11, 8, '1980-01-01', 'annee', 'Métro de New York', 'Dessins à la craie sur panneaux publicitaires noirs (1980-1985).'),
(29, 'Crack is Wack', 11, 3, '1986-01-01', 'annee', 'FDR Drive, New York', 'Fresque contre le crack.'),
(30, 'Fresque de l\'hôpital Necker-Enfants malades', 11, 3, '1987-01-01', 'annee', 'Paris', 'Fresque pour les enfants hospitalisés.'),
(31, 'Cornbread Loves Cynthia', 12, 1, '1967-01-01', 'annee', 'Nord de Philadelphie', 'Message écrit pour séduire Cynthia Custuss.'),
(32, 'Tag de l\'éléphant Konna', 12, 1, '1971-01-01', 'annee', 'Zoo de Philadelphie', 'Coup médiatique après une fausse annonce de sa mort.'),
(33, 'TAKI 183 révélé par le New York Times', 13, 1, '1971-07-21', 'jour', 'New York', 'Article « Taki 183 Spawns Pen Pals » qui lance la vague de tags.'),
(34, 'Children of the Grave', 14, 1, '1978-01-01', 'annee', 'Métro de New York', 'Première œuvre d\'une série (1978-1980).'),
(35, 'Premiers tags dans le métro parisien', 15, 1, '1983-01-01', 'annee', 'Métro de Paris', 'Début du graffiti français.');

-- --------------------------------------------------------

--
-- Structure de la table `t_oeuvre_theme`
--

DROP TABLE IF EXISTS `t_oeuvre_theme`;
CREATE TABLE IF NOT EXISTS `t_oeuvre_theme` (
  `OEU_IdOeuvre` int NOT NULL,
  `THE_IdTheme` int NOT NULL,
  PRIMARY KEY (`OEU_IdOeuvre`,`THE_IdTheme`),
  KEY `idx_ot_theme` (`THE_IdTheme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_oeuvre_theme`
--

INSERT INTO `t_oeuvre_theme` (`OEU_IdOeuvre`, `THE_IdTheme`) VALUES
(8, 1),
(16, 1),
(24, 1),
(25, 1),
(29, 1),
(1, 2),
(14, 2),
(15, 2),
(7, 3),
(8, 3),
(14, 3),
(10, 4),
(19, 4),
(21, 4),
(25, 4),
(27, 4),
(18, 5),
(22, 5),
(24, 5),
(26, 5),
(27, 5),
(3, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(16, 6),
(26, 6),
(4, 7),
(10, 7),
(5, 8),
(2, 9),
(3, 9),
(4, 9),
(6, 9),
(9, 11),
(23, 11),
(28, 11),
(7, 12),
(8, 12),
(15, 12),
(13, 13),
(17, 13),
(18, 13),
(19, 13),
(9, 14),
(11, 14),
(13, 14),
(20, 14),
(21, 14),
(22, 14),
(23, 14),
(28, 14),
(29, 14),
(30, 14),
(31, 15),
(32, 15),
(33, 15),
(34, 15),
(35, 15),
(6, 16),
(30, 16);

-- --------------------------------------------------------

--
-- Structure de la table `t_pays`
--

DROP TABLE IF EXISTS `t_pays`;
CREATE TABLE IF NOT EXISTS `t_pays` (
  `PAY_IdPays` int NOT NULL,
  `PAY_Nom` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`PAY_IdPays`),
  UNIQUE KEY `uq_pays_nom` (`PAY_Nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_pays`
--

INSERT INTO `t_pays` (`PAY_IdPays`, `PAY_Nom`) VALUES
(2, 'États-Unis'),
(1, 'France'),
(3, 'Royaume-Uni');

-- --------------------------------------------------------

--
-- Structure de la table `t_theme`
--

DROP TABLE IF EXISTS `t_theme`;
CREATE TABLE IF NOT EXISTS `t_theme` (
  `THE_IdTheme` int NOT NULL,
  `THE_Nom` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `THE_Description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`THE_IdTheme`),
  UNIQUE KEY `uq_theme_nom` (`THE_Nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_theme`
--

INSERT INTO `t_theme` (`THE_IdTheme`, `THE_Nom`, `THE_Description`) VALUES
(1, 'Critique sociale et politique', 'Dénonciation des injustices, du pouvoir et de la société'),
(2, 'Contestation de l\'autorité', 'Détournement des symboles du pouvoir, de la police, de la propagande'),
(3, 'Humour et satire', 'Ironie, humour noir, détournement'),
(4, 'Droits humains', 'Dignité, migrations, minorités, mal-logés'),
(5, 'Mémoire et histoire', 'Hommage à des événements ou des personnes du passé'),
(6, 'Portrait et identité', 'Visages, figures célèbres ou anonymes'),
(7, 'Condition des femmes', 'Liberté, stéréotypes, féminicides'),
(8, 'Jeux vidéo et culture pop', 'Références aux jeux vidéo, à la musique, au cinéma'),
(9, 'Poésie urbaine', 'Mots, jeux de mots, images poétiques dans la rue'),
(10, 'Santé et lutte contre le sida', 'Prévention, addictions, sensibilisation'),
(11, 'Espace public et gentrification', 'Rapport à la ville, au quartier et à ses habitants'),
(12, 'Commerce et publicité', 'Marchandisation de l\'art, récupération par les marques'),
(13, 'Guerre et paix', 'Conflits, paix, hommage aux victimes'),
(14, 'Communauté et solidarité', 'Projets participatifs, entraide, reconstruction'),
(15, 'Signature et lettrage', 'Tag, nom du writer, compétition de visibilité'),
(16, 'Enfance', 'Enfants, innocence, ateliers et œuvres pour la jeunesse');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_artiste`
--
ALTER TABLE `t_artiste`
  ADD CONSTRAINT `fk_artiste_pays` FOREIGN KEY (`PAY_IdPays`) REFERENCES `t_pays` (`PAY_IdPays`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_artiste_forme`
--
ALTER TABLE `t_artiste_forme`
  ADD CONSTRAINT `fk_af_artiste` FOREIGN KEY (`ART_IdArtiste`) REFERENCES `t_artiste` (`ART_IdArtiste`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_af_forme` FOREIGN KEY (`FOR_IdForme`) REFERENCES `t_forme` (`FOR_IdForme`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_artiste_theme`
--
ALTER TABLE `t_artiste_theme`
  ADD CONSTRAINT `fk_at_artiste` FOREIGN KEY (`ART_IdArtiste`) REFERENCES `t_artiste` (`ART_IdArtiste`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_at_theme` FOREIGN KEY (`THE_IdTheme`) REFERENCES `t_theme` (`THE_IdTheme`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_oeuvre`
--
ALTER TABLE `t_oeuvre`
  ADD CONSTRAINT `fk_oeuvre_artiste` FOREIGN KEY (`ART_IdArtiste`) REFERENCES `t_artiste` (`ART_IdArtiste`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_oeuvre_forme` FOREIGN KEY (`FOR_IdForme`) REFERENCES `t_forme` (`FOR_IdForme`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_oeuvre_theme`
--
ALTER TABLE `t_oeuvre_theme`
  ADD CONSTRAINT `fk_ot_oeuvre` FOREIGN KEY (`OEU_IdOeuvre`) REFERENCES `t_oeuvre` (`OEU_IdOeuvre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ot_theme` FOREIGN KEY (`THE_IdTheme`) REFERENCES `t_theme` (`THE_IdTheme`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

