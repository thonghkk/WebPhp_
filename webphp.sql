-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2019 at 04:18 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Thai Van Duc', 'Da Nang', 'ongcunonc249@gmail.com', '202cb962ac59075b964b07152d234b70', '0394253841', 1, 1, NULL, '2019-12-20 13:01:15', '2019-12-20 13:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `home` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `home`, `status`, `created_at`, `updated_at`) VALUES
(1, '??o', 'ao', NULL, NULL, 1, 1, '2019-12-20 13:07:20', '2019-12-20 13:07:20'),
(2, 'Qu???n', 'quan', NULL, NULL, 1, 1, '2019-12-20 13:07:21', '2019-12-20 13:07:21'),
(3, 'Gi??y', 'giay', NULL, NULL, 1, 1, '2019-12-20 13:07:22', '2019-12-20 13:07:22'),
(4, 'T??i', 'tui', NULL, NULL, 1, 1, '2019-11-13 07:34:42', '2019-11-13 07:34:42'),
(5, 'V??y', 'vay', NULL, NULL, 1, 1, '2019-11-13 07:34:43', '2019-11-13 07:34:43'),
(6, 'Ph??? ki???n kh??c', 'phu-kien-khac', NULL, NULL, 1, 1, '2019-11-13 07:34:43', '2019-11-13 07:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `content`) VALUES
(1, 'Th??nh', '1123123@gmail.com', 'chan 					\r\n            				'),
(2, 'Tu???n', 'tuan160498@gmail.com', 'WEb b??n h??ng ch???t l?????ng qu??             				'),
(3, 'name', 'ngochuan199@gmail.com', '          lkkk  				');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 3, 32, 3, 855000, NULL, NULL),
(2, 3, 0, 2, 0, NULL, NULL),
(3, 3, 34, 14, 899999, NULL, NULL),
(4, 3, 39, 1, 599999, NULL, NULL),
(5, 3, 38, 1, 475000, NULL, NULL),
(6, 3, 36, 1, 599999, NULL, NULL),
(7, 4, 34, 1, 899999, NULL, NULL),
(8, 4, 33, 1, 480000, NULL, NULL),
(9, 4, 32, 2, 855000, NULL, NULL),
(10, 5, 39, 1, 599999, NULL, NULL),
(11, 6, 59, 1, 475000, '2019-12-20 23:00:42', '2019-12-20 23:00:42'),
(12, 7, 59, 1, 475000, '2019-12-20 23:03:13', '2019-12-20 23:03:13'),
(13, 8, 56, 1, 1235000, '2019-12-20 23:10:07', '2019-12-20 23:10:07'),
(14, 9, 69, 1, 319200, '2019-12-20 23:10:27', '2019-12-20 23:10:27'),
(15, 10, 59, 1, 475000, '2019-12-25 03:54:49', '2019-12-25 03:54:49'),
(16, 11, 56, 1, 1235000, '2019-12-25 03:55:03', '2019-12-25 03:55:03'),
(17, 12, 48, 1, 380000, '2019-12-25 03:55:30', '2019-12-25 03:55:30'),
(18, 13, 69, 1, 319200, '2019-12-25 03:56:06', '2019-12-25 03:56:06'),
(19, 14, 49, 1, 405000, '2019-12-25 03:58:09', '2019-12-25 03:58:09'),
(20, 15, 65, 1, 147500, '2019-12-25 03:58:35', '2019-12-25 03:58:35'),
(21, 16, 75, 1, 470250, '2019-12-25 07:24:17', '2019-12-25 07:24:17'),
(22, 16, 50, 1, 475000, '2019-12-25 07:24:17', '2019-12-25 07:24:17'),
(23, 17, 48, 1, 380000, '2019-12-25 07:25:03', '2019-12-25 07:25:03'),
(24, 18, 49, 1, 405000, '2019-12-25 07:26:06', '2019-12-25 07:26:06'),
(25, 19, 50, 2, 475000, '2019-12-25 10:33:54', '2019-12-25 10:33:54'),
(26, 20, 69, 1, 319200, '2019-12-25 11:36:02', '2019-12-25 11:36:02'),
(27, 21, 75, 1, 445500, '2019-12-25 11:37:46', '2019-12-25 11:37:46'),
(28, 22, 75, 1, 445500, '2019-12-25 11:39:17', '2019-12-25 11:39:17'),
(29, 23, 75, 19, 445500, '2019-12-25 11:39:57', '2019-12-25 11:39:57'),
(30, 24, 75, 1, 445500, '2019-12-25 11:40:24', '2019-12-25 11:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thunbar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `pay` int(11) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thunbar`, `category_id`, `content`, `number`, `head`, `view`, `hot`, `pay`, `status`, `created_at`, `updated_at`) VALUES
(48, 'A??O S?? MI TH?? TR????NG C???? BE??', 'ao-so-mi-tho-trang-co-be', 400000, 5, '12.13-555x710.jpg', 1, '??O S?? MI N??? ?????P 2019 KI???U C??NG S??? H??N QU???C\r\nA??o s?? mi th?? tr????ng c???? be?? 2 tu??i tr??????c ng????c', 199, 0, 0, 0, 1, 1, '2019-12-25 04:14:02', '2019-12-20 20:48:21'),
(49, 'A??O REN HOA TR????NG DA??I TAY TH????T N?? C????', 'ao-ren-hoa-trang-dai-tay-that-no-co', 450000, 10, '8.11-1-555x710.jpg', 1, '??O S?? MI N??? ?????P 2019 KI???U C??NG S??? H??N QU???C\r\nA??o ren hoa tr????ng da??i tay th????t n?? c????\r\n\r\nFree size cho Vo??ng 1 d??????i 92cm', 99, 0, 0, 0, 1, 1, '2019-12-25 04:14:01', '2019-12-20 20:51:18'),
(50, '??O S?? MI S???C K??? D???C D??NG D??I', 'ao-so-mi-soc-ke-doc-dang-dai', 500000, 5, '11.9-555x710.jpg', 1, '??O S?? MI N??? ?????P 2019 KI???U C??NG S??? H??N QU???C\r\n??o s?? mi s???c k??? d???c d??ng d??i HQ d???o ph??? c?? t??nh', 147, 0, 0, 0, 2, 1, '2019-12-25 11:32:04', '2019-12-20 20:54:20'),
(51, '??O S?? MI CHIFFON TH??U C??Y D???A C??? VEST B???', 'ao-so-mi-chiffon-theu-cay-dua-co-vest-be', 400000, 10, '10.3-555x710.jpg', 1, '??O S?? MI N??? ?????P 2019 KI???U C??NG S??? H??N QU???C\r\n??o s?? mi chiffon th??u c??y d???a c??? vest b???', 180, 0, 0, 0, 0, 1, '2019-12-20 20:58:27', '2019-12-20 20:58:27'),
(54, 'A??O KHOA??C DA?? SO??C V????N X????NG CA??', 'ao-khoac-da-soc-van-xuong-ca', 1700000, 5, '25.2-555x710.jpg', 1, 'SHOP ??O KHO??C N??? ??? ???? N???NG - ??O KHO??C PHAO N??? KI???U H??N QU???C\r\nA??o khoa??c da?? so??c v????n x????ng ca?? c???? 2 ve 2 tu??i HQ', 45, 0, 0, 0, 0, 1, '2019-12-20 21:07:11', '2019-12-20 21:07:11'),
(55, 'A??O KHOA??C DA?? HA??N QU????C TH??N DA??I DA??Y', 'ao-khoac-da-han-quoc-than-dai-day', 1800000, 5, '21.5-555x643.jpg', 1, 'SHOP ??O KHO??C N??? ??? ???? N???NG - ??O KHO??C PHAO N??? KI???U H??N QU???C\r\nA??o khoa??c da?? Ha??n Qu????c th??n da??i da??y c???? be??', 35, 0, 0, 0, 0, 1, '2019-12-20 21:10:37', '2019-12-20 21:10:37'),
(56, 'A??O KHOA??C DA?? SO??C KE?? C???? BE?? LO??T L??NG THO??', 'ao-khoac-da-soc-ke-co-be-lot-long-tho', 1300000, 5, '13.15.jpg', 1, 'SHOP ??O KHO??C N??? ??? ???? N???NG - ??O KHO??C PHAO N??? KI???U H??N QU???C\r\nA??o khoa??c da?? so??c ke?? c???? be?? lo??t l??ng tho?? mi??n ????m a??p\r\n\r\nForm a??o r????ng size S,M t????ng ??????ng size M,L nh????ng sa??n ph????m kha??c', 48, 0, 0, 0, 2, 1, '2019-12-25 04:14:04', '2019-12-20 21:12:58'),
(57, 'CH??N VA??Y LEN D????T KIM DA??I XE?? SAU 2 TU??I', 'chan-vay-len-det-kim-dai-xe-sau-2-tui', 500000, 5, '13.3-555x710.jpg', 5, 'Ch??n va??y len d????t kim da??i xe?? sau 2 tu??i', 300, 0, 0, 0, 0, 1, '2019-12-20 21:14:58', '2019-12-20 21:14:58'),
(58, 'CH??N V??Y DENIM CH??? A EO CAO', 'chan-vay-denim-chu-a-eo-cao', 400000, 0, '15.5-2-555x710.jpg', 5, 'Ch??n v??y denim ch??? A eo cao, x??? b??n\r\n\r\nSize M : Eo 70cm ??? M??ng 88cm ??? D??i 62cm\r\nSize L : Eo 74cm ??? M??ng 90cm ??? D??i 63cm\r\n\r\nShip COD to??n qu???c t??? 3-4 ng??y sau khi ho??n t???t ?????t h??ng\r\nFree ship khi mua t??? 2 s???n ph???m', 20, 0, 0, 0, 0, 1, '2019-12-20 21:18:41', '2019-12-20 21:18:41'),
(59, 'A??O LEN D????T KIM DA??NG THU??NG VA??T SO LE', 'ao-len-det-kim-dang-thung-vat-so-le', 500000, 5, '2.1-555x710.jpg', 1, 'A??o len d????t kim da??ng thu??ng va??t so le c???? lo?? cao\r\nShip COD to??n qu???c t??? 3-4 ng??y sau khi ho??n t???t ?????t h??ng', 197, 0, 0, 0, 3, 1, '2019-12-25 04:14:08', '2019-12-20 21:20:29'),
(61, 'Qu???n ??u nam Aristino ATR01808', 'quan-au-nam-aristino-atr01808', 1000000, 5, 'img_6759_ecbdb963860347bbbe44d1c983700aa0_large.jpg', 2, 'Qu???n ??u nam Aristino ATR01808\r\nM?? s???n ph???m: ATR01808-1\r\nTr???ng th??i: C??n h??ng', 100, 0, 0, 0, 0, 1, '2019-12-20 21:28:36', '2019-12-20 21:28:36'),
(62, 'QU???N T??Y NAZAFU ????? M???N QT1133', 'quan-tay-nazafu-do-man-qt1133', 550000, 10, 'quan-tay-xanh-den-1132-10608-slide-products-5c36eab4d21c5.jpg', 2, 'QU???N T??Y NAZAFU ????? M???N QT1133\r\nShip COD to??n qu???c', 50, 0, 0, 0, 0, 1, '2019-12-20 21:31:35', '2019-12-20 21:31:35'),
(63, 'QU???N T??Y NAZAFU X??M MU???I TI??U QT1131', 'quan-tay-nazafu-xam-muoi-tieu-qt1131', 550000, 10, 'quan-tay-xam-muoi-tieu-1131-10606-slide-products-5c36e9ef6458b.jpg', 2, 'QU???N T??Y NAZAFU X??M MU???I TI??U QT1131\r\nC??N H??NG\r\nShip COD to??n qu???c', 60, 0, 0, 0, 0, 1, '2019-12-20 21:33:08', '2019-12-20 21:33:08'),
(64, 'QU???N T??Y NAZAFU TR???NG QT1103', 'quan-tay-nazafu-trang-qt1103', 480000, 5, 'quan-tay-trang-kem-1103-10599-slide-products-5c36e65c8bc97.jpg', 2, 'QU???N T??Y NAZAFU TR???NG QT1103\r\nC??n H??ng \r\nShip COD to??n qu???c', 49, 0, 0, 0, 0, 1, '2019-12-20 21:35:09', '2019-12-20 21:35:09'),
(65, ' GI??Y TH??? THAO TR???NG', ' GI??Y TH??? THAO TR???NG', 295000, 50, 'giay-the-thao-trang-g212-10616-slide-products-5c414108e6313.jpg', 3, 'GI??Y TH??? THAO TR???NG G212\r\nTr???ng l?????ng S/P: 500 Gram\r\n\r\nDanh m???c: Gi??y Th??? Thao', 99, 0, 0, 0, 1, 1, '2019-12-25 04:14:00', '2019-12-20 21:43:07'),
(67, 'S???C G??T N?? VI???N NU 3107', 'suc-got-no-vien-nu-3107', 250000, 10, 'changeshop (1).jpg', 3, 'S???C G??T N?? VI???N NU 3107\r\nCh???t li???u: DA L???N\r\nM??u s???c: M??U KEM, M??U ??EN', 50, 0, 0, 0, 0, 1, '2019-12-20 21:49:34', '2019-12-20 21:49:34'),
(68, ' S???C G??T TR??N NU 3116', ' S???C G??T TR??N NU 3116', 270000, 10, 'changeshop (2).jpg', 3, 'S???C G??T TR??N M???I V??? NU 3116\r\nCh???t li???u: DA T???NG H???P\r\nM??u s???c: M??U V??NG, M??U ??EN, M??U KEM', 50, 0, 0, 0, 0, 1, '2019-12-20 21:52:37', '2019-12-20 21:52:09'),
(69, 'T??i ??eo ch??o mini v????ng mi???n Micherr', 'tui-deo-cheo-mini-vuong-mien-micherr', 399000, 20, 'XLBz7jdY.jpg', 4, 'T??i ??eo ch??o mini Micherr style ??u M??? v???a c??? ??i???n, qu?? ph??i v???a hi???n ?????i, thanh l???ch; m???t t??i g???n v????ng mi???n h???p kim cao c???p; r???t thu???n ti???n s??? d???ng khi ra ngo??i, d???o ch??i, shopping hay t???i c??ng s???...', 57, 0, 0, 0, 3, 1, '2019-12-25 11:36:08', '2019-12-20 21:56:54'),
(70, 'T??i crossbody quai x??ch Kamicy', 'tui-crossbody-quai-xich-kamicy', 1049000, 24, 'mjCx1mo2.jpg', 4, 'T??i crossbody quai x??ch Kamicy, phong c??ch ??u M???, thi???t k??? nh??? g???n, tr??? trung, c?? th??? c???m tay, ??eo ch??o; th??ch h???p s??? d???ng khi ??i l??m, ??i ch??i, d???o ph???...', 20, 0, 0, 0, 0, 1, '2019-12-20 21:59:12', '2019-12-20 21:59:12'),
(71, 'T??i x??ch n??? DooDoo Style ??u M???', 'tui-xach-nu-doodoo-style-au-my', 900000, 20, 'Sp8YTk7q.jpg', 4, 'T??i x??ch n??? DooDoo Style ??u M???, thi???t k??? ????n gi???n m?? thanh l???ch, tinh t???; dung l?????ng t??i l???n, t??nh ???ng d???ng cao; mang ?????n v??? ?????p cao qu??, sang tr???ng v?? quy???n r?? c???a ph??i ?????p d?? xu???t hi???n ??? b???t c??? n??i ????u', 34, 0, 0, 0, 0, 1, '2019-12-20 22:01:14', '2019-12-20 22:01:14'),
(72, 'X??NG ??AN QUAI ??AN CAO G??T', 'xang-dan-quai-dan-cao-got', 590000, 10, '1-182.jpg', 3, 'X??NG ??AN QUAI ??AN CAO G??T\r\nM??: G001\r\nDANH M???C: GI??Y D??P', 25, 0, 0, 0, 0, 1, '2019-12-20 22:04:41', '2019-12-20 22:04:41'),
(73, '?????M ??M H??N QU???C NG???C N?? L???CH VAI QUY???N R??', 'dam-om-han-quoc-nguc-no-lech-vai-quyen-ru', 650000, 0, '11.2-555x710.jpg', 6, '?????m ??m H??n Qu???c ng???c n?? l???ch vai quy???n r??\r\nSize M : Vai 35 ??? Ng???c 84 ??? Eo 70 ??? D??i 96\r\nSize L : Vai 36 ??? Ng???c 88 ??? Eo 74 ???  D??i 97', 20, 0, 0, 0, 0, 1, '2019-12-20 22:08:11', '2019-12-20 22:08:11'),
(75, '   KH??N QUA??NG C???? DA?? LEN CAO C????P', '   KH??N QUA??NG C???? DA?? LEN CAO C????P', 495000, 10, '3.7-555x710.jpg', 6, 'KH??N QUA??NG C???? DA?? LEN CAO C????P\r\nDANH M???C: ??O LEN THU ????NG', -1, 0, 0, 0, 5, 1, '2019-12-25 11:40:27', '2019-12-20 22:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `users_id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(10, 498750, 7, '', 1, '2019-12-25 03:54:49', '2019-12-25 04:14:08'),
(11, 1296750, 7, '', 1, '2019-12-25 03:55:03', '2019-12-25 04:14:04'),
(12, 399000, 12, '', 1, '2019-12-25 03:55:30', '2019-12-25 04:14:02'),
(13, 335160, 14, '', 1, '2019-12-25 03:56:06', '2019-12-25 04:14:01'),
(14, 425250, 15, '', 1, '2019-12-25 03:58:09', '2019-12-25 04:14:01'),
(15, 154875, 11, '', 1, '2019-12-25 03:58:35', '2019-12-25 04:14:00'),
(16, 992513, 12, '', 1, '2019-12-25 07:24:17', '2019-12-25 07:26:35'),
(19, 997500, 7, '', 1, '2019-12-25 10:33:54', '2019-12-25 11:32:04'),
(20, 335160, 7, '', 1, '2019-12-25 11:36:02', '2019-12-25 11:36:08'),
(21, 467775, 7, '', 1, '2019-12-25 11:37:46', '2019-12-25 11:37:53'),
(22, 467775, 7, '', 1, '2019-12-25 11:39:17', '2019-12-25 11:39:21'),
(23, 8887725, 7, '', 1, '2019-12-25 11:39:57', '2019-12-25 11:40:06'),
(24, 467775, 7, '', 1, '2019-12-25 11:40:24', '2019-12-25 11:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `avatar`, `status`, `token`, `created_at`, `updated_at`) VALUES
(7, 'Thai Van Duc', 'chuppyychuppyy@gmail.com', '202cb962ac59075b964b07152d234b70', '0394253841', 'da nang', NULL, 1, NULL, '2019-12-20 12:53:18', '2019-12-20 12:53:18'),
(11, 'Vo Ngoc Huan', 'ngochuan1999@gmail.com', '202cb962ac59075b964b07152d234b70', '0392539253', 'Binh Dinh', NULL, 1, NULL, '2019-12-25 03:48:04', '2019-12-25 03:48:04'),
(12, 'Cao Thanh Duy', 'duycao4774@gmail.com', '202cb962ac59075b964b07152d234b70', '0336054774', 'KomTom', NULL, 1, NULL, '2019-12-25 03:49:19', '2019-12-25 03:49:19'),
(14, 'Dang Nguyen Huynh', 'devilzz1999@gmaiil.com', '202cb962ac59075b964b07152d234b70', '0965272988', 'Quang Nam', NULL, 1, NULL, '2019-12-25 03:52:07', '2019-12-25 03:52:07'),
(15, 'Chu Duc Viet', 'ducviet1607@gmail.com', '202cb962ac59075b964b07152d234b70', '0364292255', 'DakLak', NULL, 1, NULL, '2019-12-25 03:57:45', '2019-12-25 03:57:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
