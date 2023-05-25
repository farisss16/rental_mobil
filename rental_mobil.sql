-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2023 pada 22.55
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `username`, `alamat`, `gender`, `no_telepon`, `no_ktp`, `password`, `role_id`) VALUES
(4, 'Joko Santoso', 'joko', 'Jl. Satu Pekanbaru', 'laki-laki', '0653246512', '215654532767', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(5, 'Darmawan', 'darmawan', 'Jl. Dua Pekanbaru', 'laki-laki', '07617623', '1423477324723', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(6, 'Andi', 'andi', 'Jakarta', 'laki-laki', '0217687634', '12747657463', '827ccb0eea8a706c4c34a16891f84e7b', 2),
(7, 'Arif', 'admin', 'Pekanbaru', 'laki-laki', '065423624', '1764578345', '21232f297a57a5a743894a0e4a801fc3', 1),
(8, 'Bayu', 'bayu', 'Jl. Nangka Pekanbaru', 'laki-laki', '07612233', '14000756764735', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(9, 'Toni', 'toni', 'Bandung', 'laki-laki', '0835653243', '1753453265435', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(10, 'admin', 'admin', 'alamat admin', 'laki-laki', '08123456789', '9876543210', '21232f297a57a5a743894a0e4a801fc3', 2),
(12, 'faris', 'donfaris', 'Jakarta', 'laki-laki', '0812549659', '1213456879', '827ccb0eea8a706c4c34a16891f84e7b', 2),
(13, 'razky', 'razky12', 'depok', 'laki-laki', '0812549659', '1213456879', '827ccb0eea8a706c4c34a16891f84e7b', 2),
(15, 'admin', 'admin1', 'Jakarta', 'laki-laki', '083865482214', '1213456879', 'e00cf25ad42683b3df678c61f42c6bda', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `kode_tipe` varchar(120) NOT NULL,
  `merek` varchar(120) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `sopir` int(11) NOT NULL,
  `mp3_player` int(11) NOT NULL,
  `central_lock` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `kode_tipe`, `merek`, `no_plat`, `warna`, `tahun`, `status`, `harga`, `denda`, `ac`, `sopir`, `mp3_player`, `central_lock`, `gambar`) VALUES
(13, 'MNV', 'Toyota Avanza', 'B 2245 DAM', 'Hitam', '2015', '1', 350000, 25000, 1, 0, 0, 1, 'avanza-hitam.jpg'),
(14, 'MNV', 'Toyota Avanza', 'B 1123 DUD', 'Putih', '2016', '1', 350000, 25000, 1, 0, 1, 1, 'avanza-putih.jpg'),
(15, 'SDN', 'Mazda RX 7', 'DK 599 DON', 'Grey', '2002', '1', 800000, 300000, 1, 0, 1, 1, 'rx7.jpg'),
(16, 'SDN', 'Supra MK5', 'DK 999 DON', 'Grey', '2023', '1', 800000, 400000, 1, 0, 1, 1, 'supramk5.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rental`
--

CREATE TABLE `rental` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_rental` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(120) NOT NULL,
  `denda` varchar(120) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe`
--

CREATE TABLE `tipe` (
  `id_tipe` int(11) NOT NULL,
  `kode_tipe` varchar(120) NOT NULL,
  `nama_tipe` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tipe`
--

INSERT INTO `tipe` (`id_tipe`, `kode_tipe`, `nama_tipe`) VALUES
(1, 'SDN', 'Sedan'),
(3, 'MNV', 'Mini Van');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_rental` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(120) NOT NULL,
  `denda` int(11) NOT NULL,
  `total_denda` varchar(120) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_rental`, `id_customer`, `id_mobil`, `tgl_rental`, `tgl_kembali`, `harga`, `denda`, `total_denda`, `tgl_pengembalian`, `status_pengembalian`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(3, 6, 9, '2021-01-15', '2021-01-16', '450000', 30000, '120000', '2021-01-20', 'Belum Kembali', 'Belum Selesai', '', 0),
(4, 6, 6, '2021-01-15', '2021-01-18', '400000', 30000, '60000', '2021-01-20', 'Kembali', 'Selesai', 'tugas.png', 1),
(5, 8, 10, '2021-01-18', '2021-01-19', '400000', 100000, '100000', '2021-01-20', 'Belum Kembali', 'Belum Selesai', '', 0),
(6, 6, 11, '2021-01-28', '2021-01-30', '300000', 25000, '25000', '2021-01-31', 'Kembali', 'Selesai', 'tugas2.png', 1),
(7, 9, 13, '2021-01-30', '2021-02-01', '350000', 25000, '25000', '2021-02-02', 'Kembali', 'Selesai', 'tugas2.png', 1),
(8, 11, 6, '2023-04-01', '2023-04-03', '400000', 30000, '0', '2023-04-03', 'Kembali', 'Selesai', 'blue_card.jpg', 1),
(9, 12, 14, '2023-03-31', '2023-04-03', '350000', 25000, '0', '2023-04-03', 'Kembali', 'Selesai', 'blue_card1.jpg', 1),
(10, 13, 14, '2023-03-31', '2023-04-03', '350000', 25000, '0', '2023-04-03', 'Kembali', 'Selesai', 'blue_card2.jpg', 1),
(11, 12, 6, '2023-04-03', '2023-04-13', '400000', 30000, '0', '0000-00-00', 'Belum Kembali', 'Belum Selesai', '', 0),
(12, 12, 15, '2023-05-07', '2023-05-10', '800000', 300000, '0', '2023-05-10', 'Kembali', 'Selesai', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indeks untuk tabel `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_rental`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `rental`
--
ALTER TABLE `rental`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
