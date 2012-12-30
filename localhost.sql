-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Gazda: localhost
-- Timp de generare: 30 Dec 2012 la 19:17
-- Versiune server: 5.5.24-log
-- Versiune PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza de date: `dealer_auto`
--
CREATE DATABASE `dealer_auto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dealer_auto`;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `dimensions`
--

CREATE TABLE IF NOT EXISTS `dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `lenght` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_id` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `engines`
--

CREATE TABLE IF NOT EXISTS `engines` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `displacement` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `cilinders` int(11) NOT NULL,
  `bore` float NOT NULL,
  `stroke` float NOT NULL,
  `horse_power` int(11) NOT NULL,
  `cuplu` int(11) NOT NULL,
  `full_tank_capacity` int(11) NOT NULL,
  `compression_ ratio` varchar(6) NOT NULL,
  `fuel_type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `extra_options`
--

CREATE TABLE IF NOT EXISTS `extra_options` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `extra_options_values`
--

CREATE TABLE IF NOT EXISTS `extra_options_values` (
  `id` int(11) NOT NULL,
  `extra_option_id` int(11) NOT NULL,
  `value` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `extra_option_id` (`extra_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `marci`
--

CREATE TABLE IF NOT EXISTS `marci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nume` (`nume`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `modele`
--

CREATE TABLE IF NOT EXISTS `modele` (
  `id` int(11) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Salvarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'vlad', '9ce8fc2418edfa0e3ee89a0ba1e85217');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
