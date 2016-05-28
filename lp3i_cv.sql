-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Mei 2016 pada 19.37
-- Versi Server: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lp3i_cv`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wrk_cv`
--

CREATE TABLE IF NOT EXISTS `wrk_cv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` tinyint(4) NOT NULL,
  `id_kategori_cv` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `link` text COLLATE utf8_swedish_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_create` int(11) NOT NULL,
  `user_update` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kategori_cv` (`id_kategori_cv`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `wrk_cv`
--

INSERT INTO `wrk_cv` (`id`, `id_user`, `id_kategori_cv`, `name`, `value`, `link`, `file`, `start_date`, `end_date`, `description`, `create_time`, `update_time`, `user_create`, `user_update`) VALUES
(4, 11, 4, 'Kliring', NULL, 'https://kliring.co.id', '2016/05/27/9nT56OczE4i0zIhVfrGVPe9mbekl-i8B.jpeg', NULL, NULL, 'Website transaksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(5, 11, 1, 'LP3i Depok', NULL, '', '', '2016-06-00', '2016-11-00', 'Masa kuliah di margonda', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(6, 11, 2, 'PT Rajamobil Media', NULL, '', '', '2014-02-00', '2016-05-00', 'Lokasi Kerja', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(7, 11, 3, 'CSS', 8, '', '', NULL, NULL, 'CSS Framework such as bootsrap, foundation, materialize', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(8, 11, 5, 'Ketua Karang Taruna', NULL, '', '', '2015-01-00', '2015-12-00', 'Tingkat Lingkungan', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wrk_kategori_cv`
--

CREATE TABLE IF NOT EXISTS `wrk_kategori_cv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_create` int(11) NOT NULL,
  `user_update` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `wrk_kategori_cv`
--

INSERT INTO `wrk_kategori_cv` (`id`, `name`, `description`, `create_time`, `update_time`, `user_create`, `user_update`) VALUES
(1, 'Pendidikan', 'Kategori cv teerkait pendidikan', '2016-05-26 21:08:42', '2016-05-26 21:08:42', 1, 1),
(2, 'Pengalaman Kerja', 'Kategori terkait pengalaman kerja\r\n', '2016-05-26 21:14:03', '2016-05-26 21:14:03', 1, 1),
(3, 'Kemampuan', 'Kategori terkait kemampuan', '2016-05-26 21:15:19', '2016-05-26 21:15:19', 1, 1),
(4, 'Portofolio', 'Kategori terkait portofolio', '2016-05-26 21:30:55', '2016-05-26 21:30:55', 1, 1),
(5, 'Pengalaman Organisasi', 'Pengalaman Organisasi', '2016-05-27 21:43:05', '2016-05-27 21:43:05', 11, 11),
(6, 'Prestasi', 'Prestasi', '2016-05-27 21:43:33', '2016-05-27 21:43:33', 11, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wrk_user`
--

CREATE TABLE IF NOT EXISTS `wrk_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(20) CHARACTER SET latin1 NOT NULL,
  `nama_belakang` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 NOT NULL,
  `telp` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `hp` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `jenis_kelamin` tinyint(4) NOT NULL,
  `agama` tinyint(4) NOT NULL,
  `pict` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` tinyint(4) NOT NULL,
  `last_login` date NOT NULL,
  `password_hash` varchar(255) CHARACTER SET latin1 NOT NULL,
  `auth_key` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_create` int(11) NOT NULL,
  `user_update` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `wrk_user`
--

INSERT INTO `wrk_user` (`id`, `nama_depan`, `nama_belakang`, `email`, `username`, `alamat`, `telp`, `hp`, `jenis_kelamin`, `agama`, `pict`, `password`, `status`, `last_login`, `password_hash`, `auth_key`, `create_time`, `update_time`, `user_create`, `user_update`) VALUES
(1, 'admin', 'web', 'admin@gmail.com', 'admin@gmail.com', 'jl. Mandor Guweng Rt 04/03', '089898989', '087888111778', 1, 1, '2016/05/26/eC1niLbxJMz7tQFQcIhKcDm5TYJ4ELTr.jpg', '68fba093e9e89a0598b3953f79723682', 10, '0000-00-00', 'safjadhfhkkqwjkladfkls', 'eC6A6_SQee8R4mg7wGYZzjcxIvTHN5yV', '0000-00-00 00:00:00', '2016-05-26 23:18:28', 0, 1),
(11, 'Iwan', 'Susanto', 'member@rajamobil.com', 'member@rajamobil.com', 'Depok', '099898900', '909090909', 1, 1, '2016/05/27/OncviXIxD290UdR5DcEbpqWyZhiN2E07.jpg', '912ec803b2ce49e4a541068d495ab570', 10, '0000-00-00', '', 'Wid5TW3qGOtMXZGx4X-D8QNqJxRvDQwy', '2016-05-26 23:10:41', '2016-05-27 22:34:02', 1, 11);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
