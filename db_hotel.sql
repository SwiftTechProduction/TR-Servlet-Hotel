-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2016 at 06:16 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `jena_g1t0_reif`
--

CREATE TABLE `jena_g1t0_reif` (
  `Subj` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Prop` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Obj` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `GraphID` int(11) DEFAULT NULL,
  `Stmt` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `HasType` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jena_g1t1_stmt`
--

CREATE TABLE `jena_g1t1_stmt` (
  `Subj` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Prop` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Obj` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `GraphID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jena_g1t1_stmt`
--

INSERT INTO `jena_g1t1_stmt` (`Subj`, `Prop`, `Obj`, `GraphID`) VALUES
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/kodeKamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/namaKamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/lantaiKamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/tipeKamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/harga:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/namaKamar:', 'Lv:0::as:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/tipeKamar:', 'Lv:0::as:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/harga:', 'Lv:0::1:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/lantaiKamar:', 'Lv:0::1212:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/tipeKamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/harga:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/kodeKamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/namaKamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/lantaiKamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/tipeKamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/harga:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/namaKamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/lantaiKamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/kode_kamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/nama_kamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/lantai_kamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/tipe_kamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/lantai_kamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/tipe_kamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/kode_kamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/nama_kamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/lantai_kamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/tipe_kamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/lantaiKamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/21:', 'Uv::http://www.hotel.com/kamar/tipeKamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/12:', 'Uv::http://www.hotel.com/kamar/tipeKamar:', 'Lv:0::1221:', 1),
('Uv::http://www.hotel.com/kamar/saas:', 'Uv::http://www.hotel.com/kamar/kodeKamar:', 'Lv:0::saas:', 1),
('Uv::http://www.hotel.com/kamar/saas:', 'Uv::http://www.hotel.com/kamar/namaKamar:', 'Lv:0::sa:', 1),
('Uv::http://www.hotel.com/kamar/saas:', 'Uv::http://www.hotel.com/kamar/lantaiKamar:', 'Lv:0::12:', 1),
('Uv::http://www.hotel.com/kamar/saas:', 'Uv::http://www.hotel.com/kamar/tipeKamar:', 'Lv:0::21:', 1),
('Uv::http://www.hotel.com/kamar/saas:', 'Uv::http://www.hotel.com/kamar/harga:', 'Lv:0::12:', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jena_graph`
--

CREATE TABLE `jena_graph` (
  `ID` int(11) NOT NULL,
  `Name` tinyblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jena_graph`
--

INSERT INTO `jena_graph` (`ID`, `Name`) VALUES
(1, 0x44454641554c54);

-- --------------------------------------------------------

--
-- Table structure for table `jena_long_lit`
--

CREATE TABLE `jena_long_lit` (
  `ID` int(11) NOT NULL,
  `Head` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `ChkSum` bigint(20) DEFAULT NULL,
  `Tail` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jena_long_uri`
--

CREATE TABLE `jena_long_uri` (
  `ID` int(11) NOT NULL,
  `Head` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `ChkSum` bigint(20) DEFAULT NULL,
  `Tail` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jena_prefix`
--

CREATE TABLE `jena_prefix` (
  `ID` int(11) NOT NULL,
  `Head` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `ChkSum` bigint(20) DEFAULT NULL,
  `Tail` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jena_sys_stmt`
--

CREATE TABLE `jena_sys_stmt` (
  `Subj` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Prop` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Obj` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `GraphID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jena_sys_stmt`
--

INSERT INTO `jena_sys_stmt` (`Subj`, `Prop`, `Obj`, `GraphID`) VALUES
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#EngineType:', 'Lv:0::MySQL:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#DriverVersion:', 'Lv:0::2.0alpha:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#LayoutVersion:', 'Lv:0::2.0:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#FormatDate:', 'Lv:0::20161027T232947Z:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#LongObjectLength:', 'Lv:0::100:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#IndexKeyLength:', 'Lv:0::100:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#IsTransactionDb:', 'Lv:0::true:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#DoCompressURI:', 'Lv:0::false:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#CompressURILength:', 'Lv:0::100:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#TableNamePrefix:', 'Lv:0::jena_:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff7:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphName:', 'Lv:0::JENA_DEFAULT_GRAPH_PROPERTIES:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff7:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphType:', 'Lv:0::generic:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff7:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphId:', 'Lv:0::0:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphName:', 'Lv:0::DEFAULT:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphType:', 'Lv:0::generic:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphId:', 'Lv:0::1:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#StmtTable:', 'Lv:0::jena_g1t1_stmt:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#ReifTable:', 'Lv:0::jena_g1t0_reif:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff8:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#Graph:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff5:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#PSetName:', 'Lv:0::192_168_1_15c7d1b06_158086a3f27__7ff4:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff5:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#PSetType:', 'Lv:0::com.hp.hpl.jena.db.impl.PSet_ReifStore_RDB:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff5:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#PSetTable:', 'Lv:0::jena_g1t0_reif:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff3:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#LSetName:', 'Lv:0::LSET_DEFAULT_REIFIER:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff3:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#LSetType:', 'Lv:0::com.hp.hpl.jena.db.impl.SpecializedGraphReifier_RDB:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff3:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#LSetPSet:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff5:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphLSet:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff3:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff2:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#PSetName:', 'Lv:0::192_168_1_15c7d1b06_158086a3f27__7ff1:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff2:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#PSetType:', 'Lv:0::com.hp.hpl.jena.db.impl.PSet_TripleStore_RDB:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff2:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#PSetTable:', 'Lv:0::jena_g1t1_stmt:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff0:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#LSetName:', 'Lv:0::LSET_DEFAULT:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff0:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#LSetType:', 'Lv:0::com.hp.hpl.jena.db.impl.SpecializedGraph_TripleStore_RDB:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff0:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#LSetPSet:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff2:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphLSet:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff0:', 0),
('Uv::http://jena.hpl.hp.com/2003/04/DB#192_168_1_15c7d1b06_158086a3f27__7ff6:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#GraphPrefix:', 'Bv::-568f6064:1583cd2949a:-7f8c:', 0),
('Bv::-568f6064:1583cd2949a:-7f8c:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#PrefixURI:', 'Lv:0::http://www.hotel.com/kamar/:', 0),
('Bv::-568f6064:1583cd2949a:-7f8c:', 'Uv::http://jena.hpl.hp.com/2003/04/DB#PrefixValue:', 'Lv:0::tb_kamar:', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking`
--

CREATE TABLE `tb_booking` (
  `id` int(255) NOT NULL,
  `kode_kamar` varchar(50) NOT NULL,
  `nama_kamar` varchar(50) NOT NULL,
  `kode_pelanggan` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_booking`
--

INSERT INTO `tb_booking` (`id`, `kode_kamar`, `nama_kamar`, `kode_pelanggan`, `nama`, `harga`, `check_in`, `check_out`) VALUES
(1, 'A121', 'Bagong', '1', 'Lukas', 15000000, '2016-11-02 00:00:00', '2016-11-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kamar`
--

CREATE TABLE `tb_kamar` (
  `id` varchar(50) NOT NULL,
  `kode_kamar` varchar(50) NOT NULL,
  `nama_kamar` varchar(50) NOT NULL,
  `lantai_kamar` varchar(50) NOT NULL,
  `tipe_kamar` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kamar`
--

INSERT INTO `tb_kamar` (`id`, `kode_kamar`, `nama_kamar`, `lantai_kamar`, `tipe_kamar`, `harga`) VALUES
('1', '12', '.213214', '1221', '03', '0'),
('2', '2', '2', '2', '2', '2'),
('assa', 'sasa', 'sa', 'sa', 'sa', 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `kode_pelanggan` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`kode_pelanggan`, `nama`, `alamat`, `no_telepon`, `email`, `password`) VALUES
('1', 'Lukas', 'Jalan', '1230', 'email@email.com', 'asasas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jena_g1t0_reif`
--
ALTER TABLE `jena_g1t0_reif`
  ADD UNIQUE KEY `jena_g1t0_reifXSTMT` (`Stmt`,`HasType`),
  ADD KEY `jena_g1t0_reifXSP` (`Subj`,`Prop`),
  ADD KEY `jena_g1t0_reifXO` (`Obj`);

--
-- Indexes for table `jena_g1t1_stmt`
--
ALTER TABLE `jena_g1t1_stmt`
  ADD KEY `jena_g1t1_stmtXSP` (`Subj`,`Prop`),
  ADD KEY `jena_g1t1_stmtXO` (`Obj`);

--
-- Indexes for table `jena_graph`
--
ALTER TABLE `jena_graph`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jena_long_lit`
--
ALTER TABLE `jena_long_lit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `jena_XLIT` (`Head`,`ChkSum`);

--
-- Indexes for table `jena_long_uri`
--
ALTER TABLE `jena_long_uri`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `jena_XURI` (`Head`,`ChkSum`);

--
-- Indexes for table `jena_prefix`
--
ALTER TABLE `jena_prefix`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `jena_XBND` (`Head`,`ChkSum`);

--
-- Indexes for table `jena_sys_stmt`
--
ALTER TABLE `jena_sys_stmt`
  ADD KEY `jena_XSP` (`Subj`,`Prop`),
  ADD KEY `jena_XO` (`Obj`);

--
-- Indexes for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jena_graph`
--
ALTER TABLE `jena_graph`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jena_long_lit`
--
ALTER TABLE `jena_long_lit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jena_long_uri`
--
ALTER TABLE `jena_long_uri`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jena_prefix`
--
ALTER TABLE `jena_prefix`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_booking`
--
ALTER TABLE `tb_booking`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
