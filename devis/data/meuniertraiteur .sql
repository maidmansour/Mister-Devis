-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Jeu 31 Mai 2012 à 18:01
-- Version du serveur: 5.5.16
-- Version de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `meuniertraiteur`
--

-- --------------------------------------------------------

--
-- Structure de la table `action`
--

CREATE TABLE IF NOT EXISTS `action` (
  `IDACTIONS` int(11) NOT NULL AUTO_INCREMENT,
  `NAMEACTION` varchar(100) DEFAULT NULL,
  `STATUSACTION` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDACTIONS`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `action`
--

INSERT INTO `action` (`IDACTIONS`, `NAMEACTION`, `STATUSACTION`) VALUES
(1, 'view', 1),
(2, 'add', 1),
(3, 'edit', 1),
(4, 'delete', 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `IDCATEGORY` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_IDCATEGORY` int(11) DEFAULT NULL,
  `NAMECATEGORY` varchar(100) DEFAULT NULL,
  `STATUSCATEGORY` tinyint(1) DEFAULT NULL,
  `ISDISCOUNTCATEGORY` tinyint(1) DEFAULT NULL,
  `POSITIONCATEGORY` int(11) DEFAULT NULL,
  `DISCOUNTCATEGORY` decimal(5,2) DEFAULT NULL,
  `TVACATEGORY` decimal(5,2) DEFAULT NULL,
  `DATEUPDATECATEGORY` datetime DEFAULT NULL,
  `DATECREATECATEGORY` datetime DEFAULT NULL,
  PRIMARY KEY (`IDCATEGORY`),
  KEY `FK_CATEGORYHASPARENT` (`CAT_IDCATEGORY`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`IDCATEGORY`, `CAT_IDCATEGORY`, `NAMECATEGORY`, `STATUSCATEGORY`, `ISDISCOUNTCATEGORY`, `POSITIONCATEGORY`, `DISCOUNTCATEGORY`, `TVACATEGORY`, `DATEUPDATECATEGORY`, `DATECREATECATEGORY`) VALUES
(14, NULL, 'Service', 1, 1, 1, 20.00, 20.00, '2012-05-23 00:00:00', '2012-05-23 00:00:00'),
(15, NULL, 'plat', 1, 1, 1, 20.00, 20.00, '2012-05-23 00:00:00', '2012-05-23 00:00:00'),
(16, NULL, 'Nourriture', 1, 1, 1, 20.00, 20.00, '2012-05-23 00:00:00', '2012-05-23 00:00:00'),
(17, 14, 'boisson', 1, 1, 1, 0.00, 0.00, '2012-05-23 00:00:00', '2012-05-23 00:00:00'),
(18, 15, 'serviettes', 1, 1, 1, 20.00, 20.00, '2012-05-23 00:00:00', '2012-05-23 00:00:00'),
(19, NULL, 'entreés', 1, 1, 1, 20.00, 20.00, '2012-05-23 00:00:00', '2012-05-23 00:00:00'),
(20, 15, 'Plat', 1, 1, 1, 20.00, 20.00, '2012-05-23 00:00:00', '2012-05-23 00:00:00'),
(21, NULL, 'ccc', 1, 0, NULL, 0.00, 0.00, NULL, '2012-05-30 10:53:21'),
(22, NULL, 'mon cat', NULL, 0, NULL, 12.00, 19.00, NULL, '2012-05-30 18:08:55');

-- --------------------------------------------------------

--
-- Structure de la table `categorypermission`
--

CREATE TABLE IF NOT EXISTS `categorypermission` (
  `IDCATEGORYPERMISSION` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_IDCATEGORYPERMISSION` int(11) DEFAULT NULL,
  `NAMECATEGORYPERMISSION` varchar(250) NOT NULL,
  `STATUSCATEGORYPERMISSION` tinyint(1) DEFAULT NULL,
  `DATECREATECATEGORYPERMISSION` datetime NOT NULL,
  `DATEUPDATECATEGORYPERMISSION` datetime DEFAULT NULL,
  PRIMARY KEY (`IDCATEGORYPERMISSION`),
  KEY `FK_CATEGORYPERMISSIONSHASPARENT` (`CAT_IDCATEGORYPERMISSION`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `categorypermission`
--

INSERT INTO `categorypermission` (`IDCATEGORYPERMISSION`, `CAT_IDCATEGORYPERMISSION`, `NAMECATEGORYPERMISSION`, `STATUSCATEGORYPERMISSION`, `DATECREATECATEGORYPERMISSION`, `DATEUPDATECATEGORYPERMISSION`) VALUES
(1, NULL, 'DEVIS', 1, '2012-05-31 00:00:00', NULL),
(2, NULL, 'AGENDA', 1, '2012-05-31 00:00:00', NULL),
(3, NULL, 'CONTACTS', NULL, '2012-05-31 00:00:00', NULL),
(4, NULL, 'ENTREPRISES', NULL, '2012-05-31 00:00:00', NULL),
(5, NULL, 'ARTICLES', NULL, '2012-05-31 00:00:00', NULL),
(6, NULL, 'CATALOGUE', NULL, '2012-05-31 00:00:00', NULL),
(7, NULL, 'FORMULES', NULL, '2012-05-31 00:00:00', NULL),
(8, NULL, 'UTILISATEURS', NULL, '2012-05-31 00:00:00', NULL),
(9, NULL, 'CATPERMISSIONS', NULL, '2012-05-31 00:00:00', NULL),
(10, NULL, 'CATEGORIES', NULL, '2012-05-31 00:00:00', NULL),
(11, NULL, 'ACTIONS', NULL, '2012-05-31 00:00:00', NULL),
(12, NULL, 'CLIENTELE', NULL, '2012-05-31 00:00:00', NULL),
(13, NULL, 'USERGROUP', NULL, '2012-05-31 00:00:00', NULL),
(14, NULL, 'PERMISSION', NULL, '2012-05-31 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorypermissionhasaction`
--

CREATE TABLE IF NOT EXISTS `categorypermissionhasaction` (
  `IDACTIONS` int(11) NOT NULL,
  `IDCATEGORYPERMISSION` int(11) NOT NULL,
  PRIMARY KEY (`IDACTIONS`,`IDCATEGORYPERMISSION`),
  KEY `FK_CATEGORYPERMISSIONHASACTION2` (`IDCATEGORYPERMISSION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorypermissionhasaction`
--

INSERT INTO `categorypermissionhasaction` (`IDACTIONS`, `IDCATEGORYPERMISSION`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14);

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `IDCOMPANY` int(11) NOT NULL AUTO_INCREMENT,
  `NOMCOMPANY` varchar(50) DEFAULT NULL,
  `ISADMINCOMPANY` tinyint(1) DEFAULT NULL,
  `HEADERCOMPANY` varchar(150) DEFAULT NULL,
  `IMGURICOMPANY` varchar(50) DEFAULT NULL,
  `STATUSCOMPANY` tinyint(1) DEFAULT NULL,
  `ADDRESSCOMPANY` varchar(250) DEFAULT NULL,
  `CITYCOMPANY` varchar(50) DEFAULT NULL,
  `ZIPCOMPNAY` varchar(10) DEFAULT NULL,
  `COUNTRYCOMPANY` varchar(50) DEFAULT NULL,
  `PHONECOMPANY` varchar(20) DEFAULT NULL,
  `MOBILECOMPANY` varchar(20) DEFAULT NULL,
  `FAXCOMPANY` varchar(20) DEFAULT NULL,
  `SIRETCOMPANY` varchar(30) DEFAULT NULL,
  `RCSCOMPANY` varchar(30) DEFAULT NULL,
  `TVAIFRCOMPANY` varchar(30) DEFAULT NULL,
  `DASCOMPANY` varchar(30) DEFAULT NULL,
  `OTHERINFOCOMPANY` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`IDCOMPANY`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `company`
--

INSERT INTO `company` (`IDCOMPANY`, `NOMCOMPANY`, `ISADMINCOMPANY`, `HEADERCOMPANY`, `IMGURICOMPANY`, `STATUSCOMPANY`, `ADDRESSCOMPANY`, `CITYCOMPANY`, `ZIPCOMPNAY`, `COUNTRYCOMPANY`, `PHONECOMPANY`, `MOBILECOMPANY`, `FAXCOMPANY`, `SIRETCOMPANY`, `RCSCOMPANY`, `TVAIFRCOMPANY`, `DASCOMPANY`, `OTHERINFOCOMPANY`) VALUES
(1, 'webaince', 0, 'Webain SARL', NULL, 0, 'zaerza', NULL, NULL, NULL, 'erza', 'reza', 'erz', 'aerz', 'aer', 'za', 'erza', 're'),
(2, 'webaince', 0, 'Webain SARL', NULL, 0, 'zaerza', NULL, NULL, NULL, 'erza', 'reza', 'erz', 'aerz', 'aer', 'za', 'erza', 're'),
(3, 'azerty', 0, 'ytr', 'ytr', 1, 'uyryt', NULL, NULL, NULL, 'rurt', 'uyr', 'ytr', 'ytr', 'yur', 'yutr', 'yu', 'ryr'),
(4, 'marrakech webiance', 0, 'khgjhg', 'tyyt', 1, 'ytr', NULL, NULL, NULL, 'y', 'rytrtr', 'ytr', 'ytr', 'ytr', 'uy', 'rty', 'ryr');

-- --------------------------------------------------------

--
-- Structure de la table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `IDCONFIGURATION` int(11) NOT NULL,
  `NAMECONFIGURATION` varchar(100) NOT NULL,
  `VALUECONFIGURATION` varchar(250) NOT NULL,
  `DATECREATECONFIGURATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DATEUPDATECONFIGURATION` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ACTIVECONFIGURATION` tinyint(1) NOT NULL,
  PRIMARY KEY (`IDCONFIGURATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `connections`
--

CREATE TABLE IF NOT EXISTS `connections` (
  `IDCONNECTION` int(11) NOT NULL AUTO_INCREMENT,
  `IDUSER` int(11) NOT NULL,
  `DATECONNECTION` datetime NOT NULL,
  `IPCONNECTION` varchar(50) NOT NULL,
  `BROWSERCONNECTION` varchar(100) DEFAULT NULL,
  `REQUESTURICONNECTION` text,
  `OSCONNECTION` varchar(100) DEFAULT NULL,
  `LANGCONNECTION` varchar(50) DEFAULT NULL,
  `REFERRERURICONNECTION` text,
  `GEOIPCOUNTRYCONNECTION` varchar(100) DEFAULT NULL,
  `GEOIPCITYCONNECTION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDCONNECTION`),
  KEY `FK_USERHASCONNECTIONS` (`IDUSER`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `connections`
--

INSERT INTO `connections` (`IDCONNECTION`, `IDUSER`, `DATECONNECTION`, `IPCONNECTION`, `BROWSERCONNECTION`, `REQUESTURICONNECTION`, `OSCONNECTION`, `LANGCONNECTION`, `REFERRERURICONNECTION`, `GEOIPCOUNTRYCONNECTION`, `GEOIPCITYCONNECTION`) VALUES
(1, 3, '2012-05-31 16:04:43', '127.0.0.1', 'logged in', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, '2012-05-31 16:05:48', '127.0.0.1', 'logged in', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, '2012-05-31 17:01:22', '127.0.0.1', 'logged in', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, '2012-05-31 17:20:23', '127.0.0.1', 'logged in', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, '2012-05-31 17:20:42', '127.0.0.1', 'logged in', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, '2012-05-31 17:29:33', '127.0.0.1', 'logged in', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `IDCONTACT` int(11) NOT NULL AUTO_INCREMENT,
  `IDCOMPANY` int(11) DEFAULT NULL,
  `EMAILCONTACT` varchar(50) DEFAULT NULL,
  `STATUSCONTACT` tinyint(1) DEFAULT NULL,
  `FIRSTNAMECONTACT` varchar(100) DEFAULT NULL,
  `LASTNAMECONTACT` varchar(100) DEFAULT NULL,
  `POSTCONTACT` varchar(50) DEFAULT NULL,
  `PHONECONTACT` varchar(20) DEFAULT NULL,
  `MOBILECONTACT` varchar(20) DEFAULT NULL,
  `ADDRESSCONTACT` varchar(250) DEFAULT NULL,
  `CITYCONTACT` varchar(50) DEFAULT NULL,
  `ZIPCONTACT` varchar(10) DEFAULT NULL,
  `COUNTRYCONTACT` varchar(50) DEFAULT NULL,
  `DATECREATECONTACT` datetime DEFAULT NULL,
  `DATEUPDATECONTACT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDCONTACT`),
  KEY `FK_CUSTOMERHASCOMPANY` (`IDCOMPANY`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`IDCONTACT`, `IDCOMPANY`, `EMAILCONTACT`, `STATUSCONTACT`, `FIRSTNAMECONTACT`, `LASTNAMECONTACT`, `POSTCONTACT`, `PHONECONTACT`, `MOBILECONTACT`, `ADDRESSCONTACT`, `CITYCONTACT`, `ZIPCONTACT`, `COUNTRYCONTACT`, `DATECREATECONTACT`, `DATEUPDATECONTACT`) VALUES
(1, 1, '321', NULL, 'abcd', 'efgh', NULL, 'lkj', 'klj', 'lkj', 'lkj', 'lkj', 'lk', '2012-05-28 00:00:00', '2012-05-28 00:00:00'),
(2, 1, 'htdgdrtec', 1, 'prenom', 'mon', NULL, '7412859', '123665478', 'azerty', 'marrakech', '40000', 'maroc', '2012-05-30 18:17:21', NULL),
(3, 3, 'htdgdrtec', 1, 'prenom', 'mon', NULL, '7412859', '123665478', 'azerty', 'marrakech', '40000', 'maroc', '2012-05-30 18:18:10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `customerhasestimate`
--

CREATE TABLE IF NOT EXISTS `customerhasestimate` (
  `IDESTIMATE` int(11) NOT NULL,
  `IDCONTACT` int(11) NOT NULL,
  PRIMARY KEY (`IDESTIMATE`,`IDCONTACT`),
  KEY `FK_CUSTOMERHASESTIMATE2` (`IDCONTACT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `estimate`
--

CREATE TABLE IF NOT EXISTS `estimate` (
  `IDESTIMATE` int(11) NOT NULL AUTO_INCREMENT,
  `IDUSER` int(11) NOT NULL,
  `TITLEESTIMATE` varchar(100) NOT NULL,
  `STATUSESTIMATE` tinyint(1) NOT NULL COMMENT 'Attente, Confirmé ou Soldé ',
  `TYPEESTIMATE` varchar(100) DEFAULT NULL COMMENT 'Devis ou facture',
  `ACCOMPTES1ESTIMATE` int(11) DEFAULT NULL,
  `ACCOMPTES2ESTIMATE` int(11) DEFAULT NULL,
  `ACCOMPTES3ESTIMATE` int(11) DEFAULT NULL,
  `DISCOUNTESTIMATE` decimal(5,2) DEFAULT NULL,
  `OTHERINFOESTIMATE` varchar(300) DEFAULT NULL,
  `DATECREATEESTIMATE` datetime NOT NULL,
  `DATEUPDATEESTIMATE` datetime DEFAULT NULL,
  `ISBILLINGADDRESSSHOWESTIMATE` tinyint(1) NOT NULL,
  `BILLINGADDRESSESTIMATE` varchar(250) DEFAULT NULL,
  `ISDELEVERYADDRESSSHOWESTIMATE` tinyint(1) NOT NULL,
  `DELEVERYADDRESSESTIMATE` varchar(250) DEFAULT NULL,
  `ISCOMPANYHEADERSHOWESTIMATE` tinyint(1) NOT NULL,
  `COMPANYHEADERESTIMATE` varchar(100) DEFAULT NULL,
  `SCHEDULESARRIVETIMEESTIMATE` time DEFAULT NULL,
  `SCHEDULESSTARTTIMEESTIMATE` time DEFAULT NULL,
  `SCHEDULESENDTIMEESTIMATE` time DEFAULT NULL,
  `CONVIVESNUMBERESTIMATE` int(11) NOT NULL,
  `INTERNALNOTEESTIMATE` varchar(300) DEFAULT NULL,
  `DELIVERYDATEESTIMATE` datetime NOT NULL,
  `MODEESTIMATE` varchar(20) NOT NULL COMMENT 'Prestation ou Retrait labo',
  PRIMARY KEY (`IDESTIMATE`),
  KEY `FK_USERHASESTIMATE` (`IDUSER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `estimatecategory`
--

CREATE TABLE IF NOT EXISTS `estimatecategory` (
  `IDESTIMATECATEGORY` int(11) NOT NULL AUTO_INCREMENT,
  `NAMEESTIMATECATEGORY` varchar(250) NOT NULL,
  `POSITIONESTIMATECATEGORY` int(11) DEFAULT NULL,
  `DISCOUNTESTIMATECATEGORY` decimal(5,2) DEFAULT NULL,
  `TVAESTIMATECATEGORY` decimal(5,2) DEFAULT NULL,
  `ISDISCOUNTESTIMATECATEGORY` tinyint(1) DEFAULT NULL,
  `NAMEPARENTESTIMATECATEGORY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDESTIMATECATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `estimatecategoryproduct`
--

CREATE TABLE IF NOT EXISTS `estimatecategoryproduct` (
  `IDESTIMATECATEGORYPRODUCT` int(11) NOT NULL AUTO_INCREMENT,
  `IDESTIMATECATEGORY` int(11) DEFAULT NULL,
  `NAMEESTIMATECATEGORYPRODUCT` varchar(100) DEFAULT NULL,
  `POSITIONESTIMATECATEGORYPRODUCT` int(11) DEFAULT NULL,
  `QUANTITYESTIMATECATEGORYPRODUCT` int(11) DEFAULT NULL,
  `PRICEESTIMATECATEGORYPRODUCT` decimal(11,2) DEFAULT NULL,
  `DISCOUNTESTIMATECATEGORYPRODUCT` decimal(5,2) DEFAULT NULL,
  `TVAESTIMATECATEGORYPRODUCT` decimal(5,2) DEFAULT NULL,
  `TASTEESTIMATECATEGORYPRODUCT` varchar(20) DEFAULT NULL,
  `UNITESTIMATECATEGORYPRODUCT` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDESTIMATECATEGORYPRODUCT`),
  KEY `FK_ESTIMATECATEGORYHASPRODUCT` (`IDESTIMATECATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `estimatehasestimatecategory`
--

CREATE TABLE IF NOT EXISTS `estimatehasestimatecategory` (
  `IDESTIMATECATEGORY` int(11) NOT NULL,
  `IDESTIMATE` int(11) NOT NULL,
  PRIMARY KEY (`IDESTIMATECATEGORY`,`IDESTIMATE`),
  KEY `FK_ESTIMATEHASESTIMATECATEGORY2` (`IDESTIMATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `estimatehasformula`
--

CREATE TABLE IF NOT EXISTS `estimatehasformula` (
  `IDESTIMATE` int(11) NOT NULL,
  `IDFORMULA` int(11) NOT NULL,
  PRIMARY KEY (`IDESTIMATE`,`IDFORMULA`),
  KEY `FK_ESTIMATEHASFORMULA2` (`IDFORMULA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `formula`
--

CREATE TABLE IF NOT EXISTS `formula` (
  `IDFORMULA` int(11) NOT NULL AUTO_INCREMENT,
  `NAMEFORMULA` varchar(100) NOT NULL,
  `STATUSFORMULA` tinyint(1) DEFAULT NULL,
  `DESCRIPTIONFORMULA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDFORMULA`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `formula`
--

INSERT INTO `formula` (`IDFORMULA`, `NAMEFORMULA`, `STATUSFORMULA`, `DESCRIPTIONFORMULA`) VALUES
(1, 'Carpaccio de betteraves aux pommes', NULL, 'Carpaccio de betteraves aux pommes'),
(2, 'Blanquette de veau a l''ancienne', NULL, 'Blanquette de veau à l''ancienne'),
(3, 'Daube de boeuf aux pruneaux', NULL, 'Daube de boeuf aux pruneaux'),
(4, 'Roules de veau aux asperges', NULL, 'Roulés de veau aux asperges'),
(5, 'Risotto aux champignons et epinards', NULL, 'Risotto aux champignons et epinards'),
(6, 'Assiette exotique', NULL, 'Assiette exotique'),
(7, 'Asperges a la creme et au paprika', NULL, 'Asperges à la crème et au paprika'),
(8, 'Rougets en robe de jambon cru', NULL, 'Rougets en robe de jambon cru'),
(9, 'nom', NULL, 'desc'),
(10, 'aaaa', NULL, 'aaa'),
(11, 'nom formule', 1, 'desc');

-- --------------------------------------------------------

--
-- Structure de la table `formulehasproduct`
--

CREATE TABLE IF NOT EXISTS `formulehasproduct` (
  `IDPRODUCT` int(11) NOT NULL,
  `IDFORMULA` int(11) NOT NULL,
  PRIMARY KEY (`IDPRODUCT`,`IDFORMULA`),
  KEY `FK_FORMULEHASPRODUCT2` (`IDFORMULA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `formulehasproduct`
--

INSERT INTO `formulehasproduct` (`IDPRODUCT`, `IDFORMULA`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(15, 1),
(9, 2),
(10, 2),
(11, 2),
(12, 3),
(13, 3),
(14, 3);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `IDPRODUCT` int(11) NOT NULL AUTO_INCREMENT,
  `IDCATEGORY` int(11) DEFAULT NULL,
  `NAMEPRODUCT` varchar(100) NOT NULL,
  `STATUSPRODUCT` tinyint(1) NOT NULL,
  `TASTEPRODUCT` varchar(20) DEFAULT NULL,
  `UNITPRODUCT` varchar(20) DEFAULT NULL,
  `UNITPRICEPRODUCT` decimal(11,2) DEFAULT NULL,
  `TVAPRODUCT` decimal(5,2) DEFAULT NULL,
  `DESCRIPTIONPRODUCT` text,
  `DISCOUNTPRODUCT` decimal(5,2) DEFAULT NULL,
  `QUANTITYPRODUCT` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`IDPRODUCT`),
  KEY `FK_PRODUCTHASCATEGORY` (`IDCATEGORY`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`IDPRODUCT`, `IDCATEGORY`, `NAMEPRODUCT`, `STATUSPRODUCT`, `TASTEPRODUCT`, `UNITPRODUCT`, `UNITPRICEPRODUCT`, `TVAPRODUCT`, `DESCRIPTIONPRODUCT`, `DISCOUNTPRODUCT`, `QUANTITYPRODUCT`) VALUES
(1, 15, 'Pique tomate au beaufort', 1, NULL, 'Unite', 20.00, 0.00, 'Pique tomate au beaufort', 0.00, 40),
(2, 16, 'Tartelette de tapenade et sa creme brulee de courgettes', 1, '1', 'Unite', 20.00, 0.00, 'Pique tomate au beaufort', 0.00, 40),
(3, 15, 'Petit cannele saumon basilic', 1, NULL, 'Unite', 54.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(4, 16, 'Mini profiterolles au chocolat', 1, NULL, 'Unite', 41.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(5, 17, 'Assortiment de mignardises sucrees', 1, NULL, 'Unite', 23.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(6, 17, 'Assortiment de mignardises sucrees', 1, NULL, 'Unite', 24.00, 0.00, 'Pique tomate au beaufort', 0.00, 40),
(7, 15, 'Pique tomate au beaufort', 1, NULL, 'Unite', 45.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(8, 16, 'Petit cannele saumon basilic', 1, NULL, 'Unite', 57.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(9, 20, 'Pique tomate au beaufort', 1, NULL, 'Unite', 25.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(10, 15, 'Mini profiterolles au chocolat', 1, NULL, 'Unite', 11.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(11, 19, 'Petit cannele saumon basilic', 1, NULL, 'Unite', 45.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(12, 16, 'Pique tomate au beaufort', 1, NULL, 'Unite', 14.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(13, 20, 'Tartelette de tapenade et sa creme brulee de courgettes', 1, NULL, 'Unite', 20.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(14, 16, 'Pique tomate au beaufort', 1, NULL, 'Unite', 20.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(15, 20, 'Tartelette de tapenade et sa creme brulee de courgettes', 1, NULL, 'Unite', 54.00, 7.00, 'Pique tomate au beaufort', 30.00, 40),
(16, 14, 'exemple d''article', 1, '0', '0', 29.00, 7.00, 'description', 26.00, 40),
(17, 15, 'exemple d''article', 1, '0', '0', 29.00, 7.00, 'description', 26.00, 40),
(18, 14, '321', 1, 'none', 'UnitÃ©', 145.00, 21.00, 'dfgbs g s', 2.00, 12),
(19, 14, '321', 1, 'none', 'UnitÃ©', 145.00, 21.00, 'dfgbs g s', 2.00, 12),
(20, 14, '321', 1, 'none', 'UnitÃ©', 145.00, 21.00, 'dfgbs g s', 2.00, 12),
(21, 14, '321', 1, 'none', 'UnitÃ©', 145.00, 21.00, 'dfgbs g s', 2.00, 12),
(22, 14, '321', 1, 'none', 'UnitÃ©', 145.00, 21.00, 'dfgbs g s', 2.00, 12),
(23, 14, '321', 1, 'none', 'UnitÃ©', 145.00, 21.00, 'dfgbs g s', 2.00, 12),
(24, 15, 'nom de l''article test', 1, 'SalÃ©', 'UnitÃ©', 22.00, 12.00, 'description du produit', 15.00, 20),
(25, 15, 'nom de l''article test', 1, 'SalÃ©', 'UnitÃ©', 22.00, 12.00, 'description du produit', 15.00, 20);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `IDUSER` int(11) NOT NULL AUTO_INCREMENT,
  `IDGROUP` int(11) NOT NULL,
  `EMAILUSER` varchar(50) NOT NULL,
  `PWDUSER` varchar(200) NOT NULL,
  `STATUSUSER` tinyint(1) DEFAULT NULL,
  `FIRSTNAMEUSER` varchar(100) NOT NULL,
  `LASTNAMEUSER` varchar(100) DEFAULT NULL,
  `ADDRESS1USER` varchar(250) DEFAULT NULL,
  `ADDRESS2USER` varchar(250) DEFAULT NULL,
  `MOBILEUSER` varchar(100) DEFAULT NULL,
  `PHONEUSER` varchar(100) DEFAULT NULL,
  `ZIPUSER` varchar(10) DEFAULT NULL,
  `CITYUSER` char(100) DEFAULT NULL,
  `COUNTRYUSER` char(100) DEFAULT NULL,
  `DATECREATEUSER` datetime DEFAULT NULL,
  `DATEUPDATEUSER` datetime DEFAULT NULL,
  PRIMARY KEY (`IDUSER`),
  KEY `FK_USERGROUPHASUSER` (`IDGROUP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`IDUSER`, `IDGROUP`, `EMAILUSER`, `PWDUSER`, `STATUSUSER`, `FIRSTNAMEUSER`, `LASTNAMEUSER`, `ADDRESS1USER`, `ADDRESS2USER`, `MOBILEUSER`, `PHONEUSER`, `ZIPUSER`, `CITYUSER`, `COUNTRYUSER`, `DATECREATEUSER`, `DATEUPDATEUSER`) VALUES
(1, 1, 'lamari.alaa@gmail.com', '123456', NULL, 'aaaaaaaaaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'nor@gmail.com', '123456', NULL, 'lamari alaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'admin', 'fc9d048ae61beff7c25c26141259973de5dabed731eb315ba1105a0cbb4f2b7a', NULL, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `IDGROUP` int(11) NOT NULL AUTO_INCREMENT,
  `NAMEGROUP` varchar(200) NOT NULL,
  `STATUSGROUP` tinyint(1) DEFAULT NULL,
  `DATECREATEGROUP` datetime NOT NULL,
  `DATEUPDATEGROUP` datetime DEFAULT NULL,
  `ACTIVEGROUP` tinyint(1) NOT NULL,
  PRIMARY KEY (`IDGROUP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `usergroup`
--

INSERT INTO `usergroup` (`IDGROUP`, `NAMEGROUP`, `STATUSGROUP`, `DATECREATEGROUP`, `DATEUPDATEGROUP`, `ACTIVEGROUP`) VALUES
(1, 'admin', 1, '2012-05-31 00:00:00', NULL, 1),
(2, 'user', NULL, '2012-05-31 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `usergrouphascategorypermission`
--

CREATE TABLE IF NOT EXISTS `usergrouphascategorypermission` (
  `IDGROUP` int(11) NOT NULL,
  `IDCATEGORYPERMISSION` int(11) NOT NULL,
  PRIMARY KEY (`IDGROUP`,`IDCATEGORYPERMISSION`),
  KEY `FK_USERGROUPHASCATEGORYPERMISSION2` (`IDCATEGORYPERMISSION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `usergrouphascategorypermission`
--

INSERT INTO `usergrouphascategorypermission` (`IDGROUP`, `IDCATEGORYPERMISSION`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_CATEGORYHASPARENT` FOREIGN KEY (`CAT_IDCATEGORY`) REFERENCES `category` (`IDCATEGORY`);

--
-- Contraintes pour la table `categorypermission`
--
ALTER TABLE `categorypermission`
  ADD CONSTRAINT `FK_CATEGORYPERMISSIONSHASPARENT` FOREIGN KEY (`CAT_IDCATEGORYPERMISSION`) REFERENCES `categorypermission` (`IDCATEGORYPERMISSION`);

--
-- Contraintes pour la table `categorypermissionhasaction`
--
ALTER TABLE `categorypermissionhasaction`
  ADD CONSTRAINT `FK_CATEGORYPERMISSIONHASACTION` FOREIGN KEY (`IDACTIONS`) REFERENCES `action` (`IDACTIONS`),
  ADD CONSTRAINT `FK_CATEGORYPERMISSIONHASACTION2` FOREIGN KEY (`IDCATEGORYPERMISSION`) REFERENCES `categorypermission` (`IDCATEGORYPERMISSION`);

--
-- Contraintes pour la table `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `FK_USERHASCONNECTIONS` FOREIGN KEY (`IDUSER`) REFERENCES `user` (`IDUSER`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_CUSTOMERHASCOMPANY` FOREIGN KEY (`IDCOMPANY`) REFERENCES `company` (`IDCOMPANY`);

--
-- Contraintes pour la table `customerhasestimate`
--
ALTER TABLE `customerhasestimate`
  ADD CONSTRAINT `FK_CUSTOMERHASESTIMATE` FOREIGN KEY (`IDESTIMATE`) REFERENCES `estimate` (`IDESTIMATE`),
  ADD CONSTRAINT `FK_CUSTOMERHASESTIMATE2` FOREIGN KEY (`IDCONTACT`) REFERENCES `contact` (`IDCONTACT`);

--
-- Contraintes pour la table `estimate`
--
ALTER TABLE `estimate`
  ADD CONSTRAINT `FK_USERHASESTIMATE` FOREIGN KEY (`IDUSER`) REFERENCES `user` (`IDUSER`);

--
-- Contraintes pour la table `estimatecategoryproduct`
--
ALTER TABLE `estimatecategoryproduct`
  ADD CONSTRAINT `FK_ESTIMATECATEGORYHASPRODUCT` FOREIGN KEY (`IDESTIMATECATEGORY`) REFERENCES `estimatecategory` (`IDESTIMATECATEGORY`);

--
-- Contraintes pour la table `estimatehasestimatecategory`
--
ALTER TABLE `estimatehasestimatecategory`
  ADD CONSTRAINT `FK_ESTIMATEHASESTIMATECATEGORY` FOREIGN KEY (`IDESTIMATECATEGORY`) REFERENCES `estimatecategory` (`IDESTIMATECATEGORY`),
  ADD CONSTRAINT `FK_ESTIMATEHASESTIMATECATEGORY2` FOREIGN KEY (`IDESTIMATE`) REFERENCES `estimate` (`IDESTIMATE`);

--
-- Contraintes pour la table `estimatehasformula`
--
ALTER TABLE `estimatehasformula`
  ADD CONSTRAINT `FK_ESTIMATEHASFORMULA` FOREIGN KEY (`IDESTIMATE`) REFERENCES `estimate` (`IDESTIMATE`),
  ADD CONSTRAINT `FK_ESTIMATEHASFORMULA2` FOREIGN KEY (`IDFORMULA`) REFERENCES `formula` (`IDFORMULA`);

--
-- Contraintes pour la table `formulehasproduct`
--
ALTER TABLE `formulehasproduct`
  ADD CONSTRAINT `FK_FORMULEHASPRODUCT` FOREIGN KEY (`IDPRODUCT`) REFERENCES `product` (`IDPRODUCT`),
  ADD CONSTRAINT `FK_FORMULEHASPRODUCT2` FOREIGN KEY (`IDFORMULA`) REFERENCES `formula` (`IDFORMULA`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_PRODUCTHASCATEGORY` FOREIGN KEY (`IDCATEGORY`) REFERENCES `category` (`IDCATEGORY`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_USERGROUPHASUSER` FOREIGN KEY (`IDGROUP`) REFERENCES `usergroup` (`IDGROUP`);

--
-- Contraintes pour la table `usergrouphascategorypermission`
--
ALTER TABLE `usergrouphascategorypermission`
  ADD CONSTRAINT `FK_USERGROUPHASCATEGORYPERMISSION` FOREIGN KEY (`IDGROUP`) REFERENCES `usergroup` (`IDGROUP`),
  ADD CONSTRAINT `FK_USERGROUPHASCATEGORYPERMISSION2` FOREIGN KEY (`IDCATEGORYPERMISSION`) REFERENCES `categorypermission` (`IDCATEGORYPERMISSION`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
