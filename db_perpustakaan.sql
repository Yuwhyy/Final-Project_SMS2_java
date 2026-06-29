-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2026 at 09:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `role`) VALUES
(1, 'admin1', 'admin123', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `prodi`, `no_telp`) VALUES
('2510631170055', 'Yuwan Ranu Pratama', 'Informatika', '089501596087'),
('2510631170056', 'Yuwan Ranu Pratama', 'Informatika', '089501596087');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `jenis_buku` varchar(30) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `status` varchar(15) DEFAULT 'Tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `jenis_buku`, `pengarang`, `penerbit`, `status`) VALUES
('B001', 'Laut Bercerita', 'Fiksi & Sastra', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia(KPG)', 'Tersedia'),
('B002', 'To kill a Mockingbird', 'Fiksi & Sastra', 'Harper Lee', 'Qanita (Mizan Group)', 'Tersedia'),
('B003', 'Cantik Itu Luka', 'Fiksi & Sastra', 'Eka Kurniawan', 'Gramedia Pustaka Utama', 'Tersedia'),
('B004', 'The Midnight Library', 'Fiksi & Sastra', 'Matt Haig', 'Gramedia Pustaka Utama', 'Tersedia'),
('B005', 'Sapiens a Graphic History', 'Fiksi & Sastra', 'Yuval Noah Harari', 'Kepustakaan Populer Gramedia(KPG)', 'Tersedia'),
('B006', 'Atomic Habits', 'Pengembangan Diri & Psikologi', 'James Clear', 'Gramedia Pustaka Utama', 'Tersedia'),
('B007', 'Filosofi Teras', 'Pengembangan Diri & Psikologi', 'Henry Manampiring', 'Buku Kompas', 'Tersedia'),
('B008', 'Thinking, Fast and Slow', 'Pengembangan Diri & Psikologi', 'Daniel Kahneman', 'Gramedia Pustaka Utama', 'Tersedia'),
('B009', 'Show Your Work!', 'Pengembangan Diri & Psikologi', 'Austin Kleon', 'Noura Books', 'Tersedia'),
('B010', 'Psychology of Money', 'Pengambangan Diri & Psikologi', 'Morgan Housel', 'Baca(Penerbit Baca', 'Tersedia'),
('B011', 'Cosmos', 'Sains & Teknologi', 'Carl Sagan', 'Kepustakaan Populer Gramedia(KPG)', 'Tersedia'),
('B012', 'Clean Code: A Hand Book of Agile Software Craftmanship', 'Sains \n& Teknologi', 'Robert C. Martin', 'Prentice Hall', 'Tersedia'),
('B013', 'Life 3.0: Being Human in the Age of Artificial Intelligence', 'Sains & Teknologi', 'Max Tegmark', 'Penguin Books', 'Tersedia'),
('B014', 'A Bried History of Time', 'Sains & Teknologi', 'Stephen Hawking', 'Gramedia Pustaka Utama', 'Tersedia'),
('B015', 'Algorithms to Live By', 'Sains & Teknologi', 'Brian Christian & Tom Griffiths', 'Henry Holt and CO.', 'Tersedia'),
('B016', 'Principles: Life and Work', 'Bisnis & Finansial', 'Ray Dalio', 'Gramedia Pustaka Utama', 'Tersedia'),
('B017', 'The Intelligent Investor', 'Bisnis & Finansial', 'Benjamin Graham', 'Gramedia Pustaka Utama', 'Tersedia'),
('B018', 'Zero to One', 'Bisnis & Finansial', 'Peter Thiel & Blake Masters', 'Gramedia Pustaka Utama', 'Tersedia'),
('B019', 'Rich Dad Poor Dad', 'Bisnis & Finansial', 'Robert T. Kiyosaki', 'Gramedia Pustaka Utama', 'Tersedia'),
('B020', 'Blue Ocean Strategy', 'Bisnis & Finansial', 'W. Chan Kim & Renee Mauborgne', 'Serambi Ilmu Semesta', 'Tersedia'),
('B021', 'Senja, Huja & Cerita yang Telah Usai', 'Novel', NULL, NULL, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(11) NOT NULL,
  `id_anggota` varchar(20) NOT NULL,
  `id_buku` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_nyata_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `tgl_nyata_kembali`, `denda`) VALUES
(1, '2510631170055', 'B004', '2026-06-14', '2026-06-21', '2026-06-21', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `peminjaman_ibfk_1` (`id_anggota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
