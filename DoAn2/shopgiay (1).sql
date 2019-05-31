-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 12:12 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopgiay`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `level` tinyint(4) DEFAULT '1',
  `avatar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `created_at`, `update_at`) VALUES
(1, 'Admin', '228 duong so 6', 'nhdlklk@gmail.com', '202cb962ac59075b964b07152d234b70', '09010201', 1, 2, NULL, NULL, '2019-05-20 18:33:48'),
(3, 'Phạm Phước Đặng Toàn', 'abc', 'phamphuocdangtoan@gmail.com', '5e4997230bf822b3240823547bd1effd', '0906821098', 1, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `created_up` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `home`, `status`, `created_up`, `update_at`) VALUES
(13, 'Converse', 'converse', NULL, NULL, 0, 1, '2019-05-21 04:25:30', '2019-05-21 05:54:05'),
(14, 'Vans', 'vans', NULL, NULL, 0, 1, '2019-05-21 05:27:35', '2019-05-21 05:54:06'),
(15, 'Palladium', 'palladium', NULL, NULL, 0, 1, '2019-05-21 05:55:10', '2019-05-21 05:55:10'),
(16, 'Adidas', 'adidas', NULL, NULL, 0, 1, '2019-05-21 06:28:37', '2019-05-21 06:28:37'),
(17, 'Nike', 'nike', NULL, NULL, 0, 1, '2019-05-21 07:46:00', '2019-05-21 07:46:00'),
(18, 'Bitis', 'bitis', NULL, NULL, 0, 1, '2019-05-21 08:15:20', '2019-05-21 08:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT '0',
  `thunbar` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text,
  `number` int(11) DEFAULT '0',
  `head` int(11) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `hot` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thunbar`, `category_id`, `content`, `number`, `head`, `view`, `hot`, `created_at`, `updated_at`) VALUES
(21, 'Chuck Taylor All Star Classic', 'chuck-taylor-all-star-classic', 1200000, 0, 'SKU1J794.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Xám\r\nThiết kế Classic cùng tone màu xám thanh lịch, tươi trẻ dễ mix đồ sẽ là một item không thể thiếu giúp phong cách của bạn trở nên nổi bật và thu hút hơn. Sử dụng chất liệu Canvas mềm nhẹ với đế giày cao su bền chắc mang đến cho bạn sự di chuyển vô cùng êm ái, thoải mái\r\n', 100, 0, 0, 0, NULL, NULL),
(22, 'Chuck Taylor All Star Classic', 'chuck-taylor-all-star-classic', 1350000, 10, 'SKU121185.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Kem\r\nMàu kem tinh tế, nhã nhặn với thiết kế Classic mang đến sự mới lạ cho dòng giày Converse cổ cao. Đây chính là sự lựa chọn an toàn ngoài 2 màu trắng - đen cơ bản, đặc biệt là với những fans Converse chưa tự tin về việc sử dụng giày trắng của mình.\r\n', 10, 0, 0, 0, NULL, NULL),
(23, 'Chuck Taylor All Star Classic', 'chuck-taylor-all-star-classic', 1250000, 0, 'SKU126196.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Xanh Navy\r\nMàu xanh Navy trẻ trung, năng động khá giống với Jean nhưng chất vải nhẹ và bền hơn. Với thiết kế Classic cổ thấp này, bạn hoàn toàn có thể kết hợp nhiều phong cách từ thanh lịch đến bụi bặm mà hoàn toàn không sợ bị lệch tông.\r\n', 20, 0, 0, 0, NULL, NULL),
(24, 'Chuck Taylor All Star Classic', 'chuck-taylor-all-star-classic', 1350000, 0, 'SKU127441.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Đỏ\r\nThiết kế Classic cổ cao cá tính với tone màu đỏ rực rỡ, nổi bật. Sở hữu item này bạn hoàn toàn có thể chiếm được spotlight ở mọi lúc, mọi nơi. Đặc biệt khi kết hợp với những outfit quen thuộc vẫn tạo được điểm nhấn cho phong cách của bạn.\r\n', 15, 0, 0, 0, NULL, NULL),
(25, 'Chuck Taylor All Star Classic (Grey)', 'chuck-taylor-all-star-classic-grey', 1100000, 0, 'SKU161423.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Mouse\r\nChuck Taylor All Star Seasonal Color sử dụng chất liệu vải Canvas với kiểu dáng cổ điển kết hợp cùng với tông màu Pastel không chỉ đem đến sự thanh lịch, sang trọng mà còn tạo cảm giác thoải mái, nhẹ nhàng khi di chuyển. Lớp lót đệm Smart Foam kết hợp cùng đế cao su có độ dẻo và khả năng co giãn cao giúp bảo vệ đôi chân bạn.\r\n', 40, 0, 0, 0, NULL, '2019-05-21 08:32:15'),
(26, 'Converse Chuck Taylor All Star Limo Leather', 'converse-chuck-taylor-all-star-limo-leather', 1350000, 0, 'SKU163338C.png', 13, 'Chất liệu: Da\r\nMàu sắc: Xanh Navy\r\nToàn bộ thân giày được làm từ chất liệu da cao cấp cùng tone Xanh Navy mang lại một sự mới mẻ, cá tính trong thiết kế. Điểm nhấn của sản phẩm chính là dây giày được biến tấu theo dạng tròn với các họa tiết chấm đen có tone màu nhạt hơn. Sản phẩm chắc chắn mang đến cho bạn một phong cách cực cuốn hút, mạnh mẽ.\r\n', 10, 0, 0, 0, NULL, NULL),
(27, 'Chuck Taylor All Star Madison', 'chuck-taylor-all-star-madison', 1200000, 10, 'SKU563446C.png', 13, 'Chất liệu: Cotton\r\nMàu sắc: Xanh\r\nVới tone xanh ngọc mướt mắt, nhẹ nhàng và đầy nữ tính, sở hữu một đôi giày với gam màu này bạn không cần lo về việc đôi giày sẽ trở nên lỗi thời. Điểm nhấn trên đôi giày chính là dây giày và những khoen tròn xỏ dây có màu đậm hơn so với thân giày. Hai đường chỉ chạy ngang thân giày, giúp form giày có được vẻ mềm mại hơn cho các bạn nữ.\r\n', 20, 0, 0, 0, NULL, NULL),
(28, 'Chuck Taylor All Star Dainty(Màu Be)', 'chuck-taylor-all-star-daintymau-be', 1200000, 0, 'SKU563478C.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Màu be\r\nNhẹ nhàng nữ tính với tone màu be đơn sắc cùng đế giày mỏng nhẹ được phủ bóng nổi bật. Chất vải Canvas ôm gọn chân, thoải mái giúp bạn có thể tự tin diện đồ với mọi phong cách.\r\n', 5, 0, 0, 0, NULL, '2019-05-21 09:19:56'),
(29, 'Converse Chuck Taylor All Star Frayed Lines', 'converse-chuck-taylor-all-star-frayed-lines', 1300000, 20, 'SKU564342C.png', 13, 'Chất liệu: Textile\r\nMàu sắc: Trắng\r\nGiữ nguyên kiểu dáng của dòng Chuck Taylor All Star truyền thống với thiết kế All-White cùng chất liệu vải Textile mềm nhẹ. Mọi lo lắng về việc mix&match sẽ được item này "cân hết" giúp bạn có được phong cách cực chuẩn.\r\n', 17, 0, 0, 0, NULL, NULL),
(30, 'Converse Chuck Taylor All Star Limo Leather', 'converse-chuck-taylor-all-star-limo-leather', 1700000, 0, 'SKU163339C.png', 13, 'Chất liệu: Da\r\nMàu sắc: Đen\r\nMạnh mẽ - Bí ẩn - Cá tính là những từ dành cho thiết kế mới mẻ, độc đáo này. Toàn bộ thân giày được làm từ chất liệu da cao cấp có độ bền bỉ, giúp bạn dễ dàng vệ sinh. Điểm nhấn của sản phẩm là phần dây giày được thiết kế theo dạng tròn có màu vàng nổi bật trên nền đen.', 10, 0, 0, 0, NULL, NULL),
(31, 'Chuck Taylor One Star Player (Rêu)', 'chuck-taylor-one-star-player-reu', 1300000, 20, 'SKU151342.png', 13, 'Chất liệu: Textile\r\nMàu sắc: Xanh Rêu/Đen\r\nVới chất liệu vải Canvas cùng hai ngôi sao đặc trưng của dòng Cons - Onestar bên hai phần thân giày, kiểu dáng cổ điển tạo nét sang trọng cho sản phẩm.\r\n\r\n', 10, 0, 0, 0, NULL, '2019-05-21 08:32:48'),
(32, 'Chuck Taylor One Star Pinstripe', 'chuck-taylor-one-star-pinstripe', 1700000, 0, 'SKU159722.png', 13, 'Chất liệu: Da\r\nMàu sắc: Xanh/Trắng\r\nChất liệu da cao cấp cùng thiết kế đặc trưng với hai ngôi sao bên thân giày của dòng One Star.\r\n', 10, 0, 0, 0, NULL, NULL),
(33, 'Chuck Taylor One Star Dark Star Vintage Suede', 'chuck-taylor-one-star-dark-star-vintage-suede', 1800000, 10, 'SKU163245.png', 13, 'Chất liệu: Da\r\nMàu sắc: Vàng\r\nMàu vàng cá tính, lạ mắt kết hợp với chất liệu da lộn cao cấp mang đến sản phẩm vô cùng nổi bật, độc đáo. Điểm nhấn ở đôi giày chính là ngôi sao đen ở hai bên thân giày cùng dây giày được cách điệu bằng các câu slogan cực cá tính.\r\n', 20, 0, 0, 0, NULL, NULL),
(34, 'Converse El Distrito', 'converse-el-distrito', 1200000, 10, 'SKU563429V.png', 13, 'Chất liệu: Textile\r\nMàu sắc: Đỏ hồng\r\nVới tone đỏ hồng nổi bật và thân giày Converse El Distrito được làm từ chất vải dệt Textile tỉ mỉ trên từng đường kim mũi chỉ, không những đảm bảo tính thời trang mà còn đảm bảo sự êm ái cho người mang. Đặc biệt, chi tiết đường viền quanh đế giày không còn là màu đen truyền thống mà thay vào đó là màu nude giúp đôi giày trở nên nhẹ nhàng, nữ tính hơn.\r\n', 10, 0, 0, 0, NULL, NULL),
(35, 'Chuck Taylor One Star Sunbaked', 'chuck-taylor-one-star-sunbaked', 1600000, 0, 'SKU564154V.png', 13, 'Chất liệu: Cotton\r\nMàu sắc: Trắng\r\nKiểu dáng CONS One-Star với thiết kế All-White để bạn dễ dàng tận dụng với mọi outfit nhưng vẫn giữ được cá tính thời trang nổi bật. Chất liệu Cotton mềm mại, thoáng khí kết hợp với đệm lót chất lượng cao để bạn thoải mái dù di chuyển ở bất kì đâu. Đế giày trắng ngà nổi bật đồng bộ với dây giày Ombre giúp bạn có được sản phẩm thanh lịch nhưng vẫn không kém phần phong cách.\r\n', 12, 0, 0, 0, NULL, NULL),
(36, 'Chuck Taylor All Star II Sheen Mesh', 'chuck-taylor-all-star-ii-sheen-mesh', 1700000, 0, 'SKU55427.png', 13, 'Chất liệu: Textile\r\nMàu sắc: ULTRA RED/WHITE/WHITE\r\nSự cải tiến vượt trội so với "hậu duệ" Chuck Taylor All Star, giá thành hợp lý, chất liệu cao cấp dạng lưới phối đơn giản, kiểu dáng thiết kế đẹp, dễ mix đồ là các đặc điểm để khiến mẫu giày này luôn được các bạn trẻ yêu mến dù bạn là học sinh hay giới văn phòng vẫn luôn đúng "style".\r\n', 25, 0, 0, 0, NULL, '2019-05-21 08:32:56'),
(37, 'Chuck Taylor All Star II (Blue)', 'chuck-taylor-all-star-ii-blue', 1600000, 50, 'SKU150146.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Xanh\r\nMàu xanh lạ mắt đồng bộ từ thân giày cho đến dây giày và các khoen xỏ dây giày cho bạn một thiết kế khá nổi bật và đẹp mắt. Chất liệu vải Canvas mềm nhẹ với đế giày cao su trắng nổi bật, đặc biệt là lót giày Lunarlon Nike cho bạn những bước đi nhẹ nhàng, êm ái nhất. Logo Chuck Taylor All Star trắng - xanh được thêu ở má trong thân giày mang đến một sản phẩm hoàn hảo về màu sắc và thiết kế.\r\n', 10, 0, 0, 0, NULL, '2019-05-21 08:33:27'),
(38, 'Chuck Taylor All Star II Shield Canvas', 'chuck-taylor-all-star-ii-shield-canvas', 1120000, 0, 'SKU153533.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Đen, Xanh\r\nVới tiêu chí chống thấm cho mùa mưa, giữ ấm cho mùa đông, ngoài việc sử dụng chất liệu mới, trong phần thiết kế, Converse cũng có một số cải tiến nhất định. Phần nút giày hai bên hông trong được giản lược, đưa khả năng chống nước lên đến tối đa. Đệm lưỡi giày có kết cấu tam giác chống trượt cùng lớp lót bằng da lộn siêu mềm, góp phần giữ ấm đồng thời đảm bảo sự thoải mái khi mang.\r\n', 5, 0, 0, 0, NULL, NULL),
(39, 'Chuck Taylor All Star II Open Knit', 'chuck-taylor-all-star-ii-open-knit', 1700000, 0, 'SKU155730.png', 13, 'Chất liệu: Textile\r\nMàu sắc: TRUE INDIGO/FRESH CYAN/WHITE\r\nChuck Taylor All Star II Open Knit sử dụng chất liệu vải đan với mật độ thưa, tạo nên những ô hở nhỏ giúp bạn mang đến cảm giác thông thoáng hơn, kiểu thiết kế độc và lạ giúp bạn kết hợp được nhiều phong cách thời trang khác nhau và trở lên năng động và cá tính.\r\n', 10, 0, 0, 0, NULL, NULL),
(40, 'Chuck Taylor All Star Ox x Nike Flyknit Multi', 'chuck-taylor-all-star-ox-x-nike-flyknit-multi', 2000000, 0, 'SKU157593.png', 13, 'Chất liệu: Flyknit\r\nMàu sắc: Đỏ\r\nVới chất liệu Flyknit từ Nike, công nghệ này sử dụng các loại sợi đặc biệt được đan một cách khoa học tạo nên một miếng vật liệu liền mạch mềm như len nhưng rất chắc chắn và đàn hồi tốt tạo nên một thân giày nhẹ và ôm sát bàn chân giống như một đôi vớ. Các sợi Flyknit đàn hồi co giãn theo chuyển động của bàn chân giúp tối ưu sự linh hoạt và thanh thoát khi vận động.\r\n', 10, 0, 0, 0, NULL, '2019-05-21 05:19:09'),
(41, 'Chuck Taylor All Star 70 Mono Leather (White)', 'chuck-taylor-all-star-70-mono-leather-white', 1900000, 0, 'SKU155453.png', 13, 'Chất liệu: Da\r\nMàu sắc: Trắng\r\n	Đế giày được làm cao hơn, phần cao su được phủ một lớp được phối màu đồng bộ với sản phẩm o điểm nhấn riêng cho dòng 1970s Mono, chất liệu da cao cấp nên dễ dàng vệ sinh sản phẩm. tạo sự khác biệt riêng cho bạn.\r\n', 10, 0, 0, 0, NULL, '2019-05-21 08:34:23'),
(42, 'Chuck Taylor All Star 1970s Vintage Canvas', 'chuck-taylor-all-star-1970s-vintage-canvas', 1400000, 20, 'SKU157545.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Xanh Nhạt\r\nĐế giày được làm cao hơn, phần cao su được phủ một lớp bóng tạo điểm nhấn riêng cho dòng 1970s, cùng với chất vải dày Canvas khiến cho dòng giày Chuck TayLor All Star 1970s được các bạn trẻ yêu mến và tìm kiếm.\r\n', 5, 0, 0, 0, NULL, NULL),
(43, 'Chuck Taylor All Star 1970s Goretex', 'chuck-taylor-all-star-1970s-goretex', 2100000, 0, 'SKU162347.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Đen\r\nChất liệu vải Goretex tổng hợp giúp chống thấm nước, chống mài mòn cao, phần thân giày được cách điệu với các dòng chữ "GORETEX" cùng tông màu đen cá tính\r\n', 4, 0, 0, 0, NULL, NULL),
(44, 'Chuck Taylor All Star 1970s Vintage Canvas M', 'chuck-taylor-all-star-1970s-vintage-canvas-m', 1500000, 0, 'SKU162367.png', 13, 'Chất liệu: Canvas\r\nMàu sắc: Xanh\r\nGam màu xanh Teal (xanh mòng két) nổi bật và lạ mắt với thiết kế cổ điển của dòng Chuck 70s cổ thấp. Cùng điểm nhấn là dây giày họa tiết đen trắng đem đến cho người mang một phong cách độc đáo, khác biệt.\r\n', 4, 0, 0, 0, NULL, '2019-05-21 08:35:00'),
(45, 'Chuck Taylor All Star 70 Reptile Leather', 'chuck-taylor-all-star-70-reptile-leather', 2000000, 0, 'SKU559894.png', 13, 'Chất liệu: Leather\r\nMàu sắc: Light Twine/Light Twine/Egret\r\nĐế giày được làm cao hơn, phần cao su được phủ một lớp bóng tạo điểm nhấn riêng cho dòng 1970s, chất liệu da cao cấp nên dễ dàng vệ sinh. Sản phẩm được tặng kèm vớ Converse chính hãng và miễn phí vận chuyển toàn quốc.\r\n', 15, 0, 0, 0, NULL, NULL),
(46, 'Vans Old Skool', 'vans-old-skool', 1650000, 10, 'SKUVN000D3HNVY.png', 14, 'Chất liệu: Canvas\r\nMàu sắc: Xanh\r\nGiữ nguyên thiết kế của Vans Old Skool với sự kết hợp của chất liệu vải Canvas màu xanh ở phần thân giày và da lộn đen ở phần mũi giày, đế giày. Sự phối hợp giữa 3 tone màu xanh - đen - trắng chắc chắn sẽ mang đến cho bạn sự độc đáo mới lạ hơn khi mix&match với các outfit\r\n', 20, 0, 0, 0, NULL, '2019-05-21 05:30:16'),
(47, 'Vans Sk8-Hi', 'vans-sk8-hi', 1850000, 10, 'SKUVN000D5IB8C.png', 14, 'Chất liệu: Canvas\r\nMàu sắc: Đen\r\nVans SK8 với thiết kế cổ cao qua mắt cá chân và giữ lại chi tiết lượn sóng đặc trưng 2 bên thân giày. Sử dụng kết hợp cả 2 chất liệu Canvas và da lộn mềm mại giúp form giày ôm chân hơn. Sản phẩm dành cho phong cách đường phố cực kỳ cá tính, thời thượng\r\n\r\n', 30, 0, 0, 0, NULL, NULL),
(48, 'Vans Authentic', 'vans-authentic', 1350000, 0, 'SKUVN000EE3RED.png', 14, 'Chất liệu: Textile\r\nMàu sắc: Đỏ\r\nNổi bật hơn với tone đỏ rực rỡ cùng thiết kế Authentic cổ điển. Quy luật bù trừ được áp dụng hoàn hảo trên thiết kế này bởi thân giày đỏ được điểm xuyết bằng khoen xỏ dây - dây giày màu trắng và đế giày trắng lại có viền đỏ xung quanh. Sở hữu sản phẩm này, những sự kết hợp outfit tưởng chừng như đơn giản lại càng nổi bật hơn\r\n\r\n', 10, 0, 0, 0, NULL, NULL),
(49, 'Vans Classic Era', 'vans-classic-era', 1350000, 0, 'SKUVN000EWZBLK.png', 14, 'Chất liệu: Textile\r\nMàu sắc: Đen\r\nMặc dù thiết kế còn khá giống với Vans Authentic nhưng điểm duy nhất và mới nhất có ở dòng Era chính là miếng lót đệm bao quanh cổ giày giúp bạn di chuyển, hoạt động được êm ái hơn. Nếu bạn là người đề cao sự thoải mái khi mang giày thì đây là một phiên bản bạn nên sở hữu.\r\n\r\n', 10, 0, 0, 0, NULL, NULL),
(50, 'Vans Classic Slip On', 'vans-classic-slip-on', 1350000, 10, 'SKUVN000EYEBKA.png', 14, 'Chất liệu: Textile\r\nMàu sắc: Đen\r\nPhiên bản fulll đen dành cho những ai chưa tự tin sử dụng giày trắng nhưng vẫn đảm bảo sự cá tính, thời trang khi kết hợp nhiều phong cách. Điểm nhấn nổi bật trên đôi giày duy nhất thuộc về logo Vans đỏ phía sau gót giày nhưng bạn vẫn có thể yên tâm về độ sành điệu của sản phẩm nhé!\r\n\r\n', 20, 0, 0, 0, NULL, NULL),
(51, 'Vans Covert Kyle Walker Pro', 'vans-covert-kyle-walker-pro', 2400000, 0, 'SKUVN0A2XSGVFP.png', 14, 'Chất liệu: Da/Vải\r\nMàu sắc: Xám\r\nKiểu dáng Old Skool kinh điển với tone màu xám trung tính, thanh lịch. Sản phẩm là sự kết hợp của những công nghệ tốt nhất nhà Vans như đệm lót UltraCush HD, cấu trúc mặt đế Wafflecup, lót cao su gia cố DURACAP cùng chất liệu cao su cao cấp ở đế giày cho bạn sự đàn hồi, êm ái khi di chuyển. Sở hữu item này bạn không chỉ được trải nghiệm chất lượng sản phẩm tốt nhất mà còn có được phong cách thời thượng nhất.\r\n', 5, 0, 0, 0, NULL, NULL),
(52, 'Vans Old Skool Suede/Pop', 'vans-old-skool-suedepop', 1850000, 0, 'SKUVN0A3D29RXK.png', 14, 'Chất liệu: Da\r\nMàu sắc: Đỏ\r\nTone màu đỏ nổi bật cùng chất liệu da, thiết kế quai dán khác biệt so với các dòng Old Skool mang đến cảm giác \r\n\r\n', 2, 0, 0, 0, NULL, NULL),
(53, 'Vans Old Skool OTW Repeat', 'vans-old-skool-otw-repeat', 1700000, 25, 'SKUVN0A3DZ3RXL.png', 14, 'Chất liệu: Canvas/Suade\r\nMàu sắc: Tím/Trắng\r\nXu hướng màu tím sang nhưng không sến đang được các fashionista lăng xê nay được ứng dụng vào thiết kế Vans Old Skool với sự cách điệu độc đáo và lạ mắt từ họa tiết chữ "Vans Off The Wall" trên thân giày. Chất liệu vải lộn cao cấp và vải Canvas mềm mại giúp đôi giày trở nên thời trang và cá tính hơn.\r\n', 40, 0, 0, 0, NULL, NULL),
(54, 'Vans Old Skool Gum Bumper', 'vans-old-skool-gum-bumper', 1700000, 0, 'SKUVN0A38G1UK1.png', 14, 'Chất liệu: Canvas/Suade\r\nMàu sắc: Đỏ/Trắng\r\nGiữ nguyên kiểu dáng huyền thoại Vans Old Skool với lượn sóng trắng hai bên thân giày nổi bật trên nền đỏ. Đặc biệt là màu nâu đặc trưng của chất liệu Gum bao bọc lấy mũi đế giày giúp đôi giày trở nên lạ mắt hơn. Chất vải Canvas mềm, nhẹ kết hợp chất liệu Suade mang đến cho bạn sản phẩm chất lượng từ trong ra ngoài.\r\n', 25, 0, 0, 0, NULL, NULL),
(55, 'Vans UA Old Skool OTW Sidewall', 'vans-ua-old-skool-otw-sidewall', 1750000, 0, 'SKUVN0A38G1VRH.png', 14, 'Chất liệu: Da lộn/Canvas\r\nMàu sắc: Đen - đỏ\r\nThiết kế Vans Old Skool quen thuộc với đường lượn sóng trắng nổi trên nền đỏ hai bên thân giày. Đặc biệt, biến tấu của họa tiết chữ OFF THE WALL ở đế giày mang đến cho bạn một item lạ mắt, độc đáo. Bạn hoàn toàn có thể kết hợp mọi outfit nhưng vẫn đảm bảo một phong cách nổi bật ở bất cứ đâu.\r\n\r\n', 10, 0, 0, 0, NULL, NULL),
(56, 'Blanc Hi', 'blanc-hi', 1600000, 0, 'SKU72886-606.png', 15, 'Chất liệu: Textile\r\nMàu sắc: Đỏ\r\nVới kiến thức về chất liệu trong công nghiệp chế tạo bánh xe máy bay, đã tạo nên những chiếc đế bền bỉ, kết hợp với cách thiết kế độc đáo, dễ dàng phối đồ với nhiều loại trang phục, đáp ứng mọi yêu cầu từ các bạn trẻ\r\n\r\n', 10, 0, 0, 0, NULL, '2019-05-21 08:09:24'),
(57, ' Blanc Hi', 'blanc-hi', 1600000, 10, 'SKU72886-679.png', 15, 'Chất liệu: Textile\r\nMàu sắc: Hồng\r\nThiết kế với tone hồng thu hút giúp bạn dễ dàng phối với nhiều loại trang phục. Logo phần lưỡi gà được may gia công tỉ mỉ. Chất liệu vải Textile dày dặn bền bỉ tạo cảm giác thoải mái, dễ chịu cho người mang.\r\n', 10, 0, 0, 0, NULL, '2019-05-21 08:09:41'),
(58, ' Blanc Hi Leather Boots', 'blanc-hi-leather-boots', 2100000, 0, 'SKU72901-606.png', 15, 'Chất liệu: Da\r\nMàu sắc: Đỏ\r\nVới kiến thức về chất liệu trong công nghiệp chế tạo bánh xe máy bay, đã tạo nên những chiếc đế bền bỉ, kết hợp với cách thiết kế độc đáo, dễ dàng phối hợp nhiều loại trang phục, giá bán lại hợp lý, đáp ứng mọi yêu cầu từ các bạn trẻ.\r\n', 10, 0, 0, 0, NULL, '2019-05-21 08:09:50'),
(59, ' Monochrome', 'monochrome', 1700000, 15, 'SKU73089-427.png', 15, 'Chất liệu: Textile\r\nMàu sắc: Xanh\r\nVới kiến thức về chất liệu trong công nghiệp chế tạo bánh xe máy bay, đã tạo nên những chiếc đế bền bỉ, kết hợp với cách thiết kế độc đáo, dễ dàng phối đồ với nhiều loại trang phục, đáp ứng mọi yêu cầu từ các bạn trẻ.\r\n\r\n', 10, 0, 0, 0, NULL, '2019-05-21 08:10:01'),
(60, ' Monochrome Baggy', 'monochrome-baggy', 1800000, 10, 'SKU73116-423.png', 15, 'Chất liệu: Textile\r\nMàu sắc: Xanh\r\nVới kiến thức về chất liệu trong công nghiệp chế tạo bánh xe máy bay, đã tạo nên những chiếc đế bền bỉ, kết hợp với cách thiết kế độc đáo, dễ dàng phối hợp nhiều loại trang phục, giá bán lại hợp lý, đáp ứng mọi yêu cầu từ các bạn trẻ.\r\n\r\n', 10, 0, 0, 0, NULL, '2019-05-21 08:10:10'),
(61, ' Pampa Hi Leather', 'pampa-hi-leather', 2600000, 0, 'SKU72355-100.png', 15, 'Chất liệu: Da\r\nMàu sắc: Trắng\r\nVới kiến thức về chất liệu trong công nghiệp chế tạo bánh xe máy bay, đã tạo nên những chiếc đế bền bỉ, kết hợp với cách thiết kế độc đáo, dễ dàng phối hợp nhiều loại trang phục, giá bán lại hợp lý, đáp ứng mọi yêu cầu từ các bạn trẻ\r\n\r\n', 5, 0, 0, 0, NULL, '2019-05-21 08:10:17'),
(62, ' Pallabrouse Baggy', 'pallabrouse-baggy', 2200000, 0, 'SKU92478-066.png', 15, 'Chất liệu: Canvas\r\nMàu sắc: Xám\r\nĐược phối với tone màu đen cá tính cùng kiểu dáng cao cổ và các khoen xỏ kim loại với màu đồng giúp đôi giày có thêm điểm nhấn\r\n\r\n', 5, 0, 0, 0, NULL, '2019-05-21 08:10:25'),
(63, ' Baggy Lite Hi', 'baggy-lite-hi', 1190000, 0, 'SKU93401-172.png', 15, 'Chất liệu: Vải Canvas\r\nMàu sắc: Trắng\r\nVới kiến thức về chất liệu trong công nghiệp chế tạo bánh xe máy bay, đã tạo nên những chiếc đế bền bỉ, kết hợp với cách thiết kế độc đáo, dễ dàng phối hợp nhiều loại trang phục, giá bán lại hợp lý, đáp ứng mọi yêu cầu từ các bạn trẻ.\r\n\r\n', 5, 0, 0, 0, NULL, '2019-05-21 08:10:36'),
(64, ' Hi Organic', 'hi-organic', 2000000, 0, 'SKU96199-647-M.png', 15, 'Chất liệu: Cotton Organic\r\nMàu sắc: Hồng\r\nKiểu dáng Pampa Hi cổ điển, đậm chất streetstyle nay được sản xuất với chất liệu sinh học, tự nhiên, không chỉ giúp bạn có được item thời trang, cá tính mà còn có thể bảo vệ môi trường. Tone màu hồng đậm chất nữ tính, trẻ trung với thiết kế độc đáo mới lạ ở đế giày giúp bạn nổi bật mọi lúc mọi nơi.\r\n', 2, 0, 0, 0, NULL, '2019-05-21 08:10:44'),
(65, ' Pampalicious Starlight Blue', 'pampalicious-starlight-blue', 1900000, 0, 'SKU96205-422-M.png', 15, 'Chất liệu: Canvas\r\nMàu sắc: Xanh\r\nMàu xanh Pastel dịu mắt cho những cô nàng yêu thích sự dễ thương, nền nã trong phong cách thời trang. Chất liệu vải Canvas bền chắc với phần đế giày và một vài chi tiết được thiết kế trong suốt đồng bộ với thân giày chính là điểnm nhấn. Diện item này với mọi outfit bạn sẽ trở nên cực kỳ thời trang, sành điệu.\r\n', 15, 0, 0, 0, NULL, '2019-05-21 08:10:51'),
(66, 'Palladium Pampa Lite Cuff WaterProof', 'palladium-pampa-lite-cuff-waterproof', 3000000, 0, 'SKU76259-339-M.png', 15, 'Chất liệu: Polyester\r\nMàu sắc: Xanh rêu\r\nThiết kế chống nước cao cấp với chất liệu Polyester giúp bạn có thể diện giày ở mọi lúc, mọi nơi, mọi thời điểm. Tone màu xanh rêu mạnh mẽ, tạo sự nổi bật khi kết hợp outfit với phần lưỡi gà cao hơn để bạn có được sự thoải mái khi di chuyển. Đế giày với nhiều khe rãnh và trọng lượng nhẹ, chống trơn trượt, bạn hoàn toàn có thể yên tâm khi mang giày này vào mùa mưa ở bất kì địa hình nào.', 10, 0, 0, 0, NULL, NULL),
(67, 'Palladium Pampa Lite Cuff WaterProof', 'palladium-pampa-lite-cuff-waterproof', 3000000, 0, 'SKU76259-056-M.png', 15, 'Chất liệu: Polyester\r\nMàu sắc: Xám Trắng\r\nThiết kế chống nước cao cấp với chất liệu Polyester giúp bạn có thể diện giày ở mọi lúc, mọi nơi, mọi thời điểm. Tone màu xám trắng trung tính dễ kết hợp outfit với phần lưỡi gà cao hơn để bạn có được sự thoải mái khi di chuyển. Đế giày với nhiều khe rãnh và trọng lượng nhẹ, chống trơn trượt, bạn hoàn toàn có thể yên tâm khi mang giày này vào mùa mưa ở bất kì địa hình nào.', 5, 0, 0, 0, NULL, NULL),
(68, ' A.Bounce Beyond “Triple Black”', 'abounce-beyond-triple-black', 3000000, 0, 'SKUB76046.png', 16, 'Thiết kế dành cho những vận động viên thể thao giỏi nhất, Đôi giày này hỗ trợ các chuyển động đa chiều với đệm linh hoạt và nền tảng rộng, ổn định ở ngón chân và gót chân. Thân trên thiết kế liền mạch dạng lưới co giãn và phù hợp với dáng chân. Đế giữa Bounce mang đến sự thoải mái và linh hoạt. Đế ngoài cao su continental™ đặc biệt chống chịu điều kiện ẩm ướt và khô', 50, 0, 0, 0, NULL, '2019-05-21 06:36:02'),
(69, ' Adidas   NMD R1 “Thunder”', 'adidas-nmd-r1-thunder', 4000000, 0, 'SKUF99713.png', 16, 'Tiến bộ, cao cấp, tiên phong. NMD pha trộn di sản adidas thuần khiết với các vật liệu hiện đại, tiên tiến để tạo ra một cái nhìn hoàn toán mới lạ trên đường phố. Đôi giày nam này có phần trên bằng vải dệt kim với lớp phủ bằng da cao cấp. Công nghệ boost™ mang lại sự thoải mái và năng động cả ngày.', 10, 0, 0, 0, NULL, '2019-05-21 06:36:37'),
(70, ' Adidas  NMD R1 PK “Sesame”', 'adidas-nmd-r1-pk-sesame', 3500000, 0, 'SKUAQ0899.png', 16, 'Ảnh hưởng từ các thiết kế mang phong cách Nhật, những đôi giày nam này được đan theo phong cách Sashiko trên thân giày adidas Primeknit. Thiết kế đầy cảm hứng này được hỗ trợ bởi công nghệ boost™, tạo nguồn năng lượng và sự thoải mái trong mỗi bước chân.', 10, 0, 0, 0, NULL, '2019-05-21 06:36:47'),
(71, 'Adidas NMD R1 “Night Cargo”', 'adidas-nmd-r1-night-cargo', 4000000, 0, 'SKUB3762.png', 16, 'Tiến bộ, cao cấp, tiên phong. NMD pha trộn di sản adidas thuần khiết với các vật liệu hiện đại, tiên tiến để tạo ra một cái nhìn hoàn toán mới lạ trên đường phố. Đôi giày nam này có phần trên bằng vải dệt kim với lớp phủ bằng da cao cấp. Công nghệ boost™ mang lại sự thoải mái và năng động cả ngày.', 10, 0, 0, 0, NULL, NULL),
(72, 'Adidas Ultraboost Uncaged “Carbon Black”', 'adidas-ultraboost-uncaged-carbon-black', 4500000, 0, 'SKUDA9164.png', 16, 'Đôi giày chạy bộ này có thiết kế đơn giản để mang lại cho bạn cảm giác tự do và không bị hạn chế. Thân giày được đan bằng vải primeknit hỗ trợ và ôm sát chân. Đế giữa linh hoạt và đế ngoài hỗ trợ mang đến một chuyến đi suôn sẻ và thoải mái.', 10, 0, 0, 0, NULL, NULL),
(73, 'Adidas UltraBoost 19 “Panda”', 'adidas-ultraboost-19-panda', 5000000, 10, 'SKUB37707.png', 16, 'Đôi giày chạy này kết hợp sự thoải mái và hiệu năng cao cho cảm giác chạy tuyệt vời hơn bao giờ hết. Thân giày Primeknit có tính co giãn cao, thoáng khí, ôm khuôn chân khi bạn đang chạy. Đế giữa boost™ tăng cường và đế ngoài STRETCHWEB linh hoạt giúp bước chân linh hoạt và tràn đầy năng lượng.', 2, 0, 0, 0, NULL, NULL),
(74, 'Adidas NMD_CS1 Primeknit “Core Black”', 'adidas-nmdcs1-primeknit-core-black', 4800000, 10, 'SKUAQ0948.png', 16, 'Ảnh hưởng từ các thiết kế mang phong cách Nhật, những đôi giày nam này được đan theo phong cách Sashiko trên thân giày adidas Primeknit. Thiết kế đầy cảm hứng này được hỗ trợ bởi công nghệ boost™, tạo nguồn năng lượng và sự thoải mái trong mỗi bước chân.', 2, 0, 0, 0, NULL, NULL),
(75, 'Adidas NMD R1 “Semi Solar Yellow”', 'adidas-nmd-r1-semi-solar-yellow', 3500000, 25, 'SKUD96626.png', 16, 'ĐÔI SNEAKERS VƯỢT TRỘI CÙNG THIẾT KẾ THEO PHONG CÁCH NHẬT BẢN.\r\nẢnh hưởng từ các thiết kế mang phong cách Nhật, những đôi giày nam này được đan theo phong cách Sashiko trên thân giày adidas Primeknit. Thiết kế đầy cảm hứng này được hỗ trợ bởi công nghệ boost™, tạo nguồn năng lượng và sự thoải mái trong mỗi bước chân.', 10, 0, 0, 0, NULL, NULL),
(76, 'Adidas Continental 80 “Off White”', 'adidas-continental-80-off-white', 32000000, 25, 'SKUB41680.png', 16, 'ĐÔI GIÀY DA MANG PHONG CÁCH THẬP NIÊN 80\r\nĐôi giày đế thấp này được lấy cảm hứng từ giày thể thao đầu những năm 1980. Chúng được làm bằng da nguyên hạt siêu mềm. Một dải hai tông màu tinh tế ở bên thân giày và logo gần dây buộc mang đến một phong cách cổ điển. Đế cao su đặc biệt cho cảm giác cực kỳ linh hoạt, thoải mái.', 25, 0, 0, 0, NULL, NULL),
(77, 'Adidas AlphaBounce Beyond “Legend Ink”', 'adidas-alphabounce-beyond-legend-ink', 3000000, 15, 'SKUAQ0574.png', 16, 'ĐÔI GIÀY CHẠY TIÊU CHUẨN THÁCH THỨC THỜI TIẾT\r\nThiết kế dành cho những vận động viên thể thao giỏi nhất, Đôi giày này hỗ trợ các chuyển động đa chiều với đệm linh hoạt và nền tảng rộng, ổn định ở ngón chân và gót chân. Thân trên thiết kế liền mạch dạng lưới co giãn và phù hợp với dáng chân. Đế giữa Bounce mang đến sự thoải mái và linh hoạt. Đế ngoài cao su continental™ đặc biệt chống chịu điều kiện ẩm ướt và khô', 10, 0, 0, 0, NULL, NULL),
(78, 'Nike Epic React Flyknit Black White', 'nike-epic-react-flyknit-black-white', 3500000, 20, 'SKU943311-001.png', 17, 'Flyknit Origins\r\nCông nghệ Nike Flyknit giúp đôi giày đi bộ vừa vặn như 1 đôi tất. Nike bắt tay vào một nhiệm vụ 4 năm với các đội ngũ lập trình viên, kỹ sư và nhà thiết kế để tạo ra công nghệ cần thiết để làm cho phần thân giày đan bằng các đặc tính tĩnh cho cấu trúc và độ bền. Kết quả là một thân giày đan ôm sát khuôn chân và hầu như liền mạch . Độ chính xác chưa từng thấy tối đa hóa hiệu suất trong khi giảm vật liệu thừa và may truyền thống trung bình 60%. Đôi giày mang đến cảm giác thoải mái kéo dài. Đệm Foam React nhẹ, bền nhưng mềm mại, mang lại cảm giác “Instant Go” giúp cho việc vận hành trở nên thú vị hơn. Bọt phản ứng của Nike cực kỳ êm, bạn càng thêm năng lượng vào bước chạy của mình, bạn càng nhận được nhiều năng lượng hơn. Nike Flyknit ôm chân của bạn, cho một cảm giác ấm áp, liền mạch từ gót chân đến ngón chân, khả năng thoáng khí đáng kinh ngạc và một thiết kế đặc trưng không thể nhầm lẫn.', 20, 0, 0, 0, NULL, NULL),
(79, 'Nike Air Max 95 SE white/white', 'nike-air-max-95-se-whitewhite', 1200000, 0, 'SKU922173-101.png', 17, 'NIKE AIR MAX ORIGINS\r\nĐế chân không mang tính cách mạng của Nike đã được thêm vào giày Nike từ cuối những năm 70. Năm 1987, Nike Air Max 1 ra mắt với không khí có thể nhìn thấy ở gót chân, cho người đi không chỉ cảm giác thoải mái mà đột nhiên họ có thể nhìn thấy nó. Kể từ đó, giày Nike Air Max thế hệ mới đã trở thành một hiện tượng với các vận động viên và người sưu tập bằng cách cung cấp sự kết hợp màu sắc nổi bật và đáng tin cậy, trọng lượng nhẹ.', 50, 0, 0, 0, NULL, NULL),
(80, 'Air Force 1', 'air-force-1', 5000000, 0, 'air force1.png', 17, ' Đây là một đôi mang tính cách mạng trong thế giới sneakers, khi mà các nhà thiết kế kết hợp \r\nvới các nhà khoa học cho ra các mẫu giày có công nghệ. ', 20, 0, 0, 0, NULL, NULL),
(81, '  Biti''sHunter Marvel Captain (MCU)', 'bitishunter-marvel-captain-mcu', 859000, 0, 'DSMH00911XNH39.png', 18, 'Chưa có mô tả cho sản phẩm này', 100, 0, 0, 0, NULL, '2019-05-21 08:27:58'),
(82, '  Biti''s Hunter Core Retro Essential Pack', 'bitis-hunter-core-retro-essential-pack', 680000, 0, 'DSMH00800KEM41.png', 18, 'Chưa có mô tả cho sản phẩm này', 100, 0, 0, 0, NULL, '2019-05-21 08:27:15'),
(83, ' Biti''s Hunter X Retro Essential Pack', 'bitis-hunter-x-retro-essential-pack', 899000, 5, 'DSUH00800TRG39.png', 18, 'Chưa có mô tả cho sản phẩm này ', 100, 0, 0, 0, NULL, '2019-05-21 08:27:23'),
(84, ' Biti''s Hunter X Retro Essential Pack', 'bitis-hunter-x-retro-essential-pack', 899000, 0, 'DSUH00800DEN39.png', 18, 'Chưa có mô tả sản phẩm này', 100, 0, 0, 0, NULL, '2019-05-21 08:27:32'),
(85, 'Biti''s Hunter X Mistletoe  (Rêu)', 'bitis-hunter-x-mistletoe-reu', 899000, 0, 'DSUH00400REU39.png', 18, 'Chưa có mô tả sản phẩm này', 100, 0, 0, 0, NULL, '2019-05-21 08:26:34'),
(86, 'Biti''s Hunter X Midnight Passion(Cam)', 'bitis-hunter-x-midnight-passioncam', 899000, 0, 'DSUH00400CAM39.png', 18, 'Chưa có mô tả về sản phẩm này', 100, 0, 0, 0, NULL, '2019-05-21 08:30:17'),
(87, 'Biti''s Hunter X Midnight Passion(Đỏ)', 'bitis-hunter-x-midnight-passiondo', 899000, 0, 'DSUH00400DOO39.png', 18, 'Chưa có mô tả về sản phẩm này', 100, 0, 0, 0, NULL, NULL),
(88, ' Biti''s Hunter Latte DSMH00600KEM (Kem)', 'bitis-hunter-latte-dsmh00600kem-kem', 680000, 10, 'dsmh00600kem__2__small.jpg', 18, 'Chưa có mô tả sản phẩm này', 50, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
`id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `token`, `created_at`, `update_at`) VALUES
(6, 'Nguyễn Hoàng Duy', 'nhdlklk@yahoo.com.vn', '1', '123 abc xyz', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, NULL, NULL, '2019-05-20 18:33:38'),
(12, 'Toàn', 'phamphuocdangtoan@gmail.com', '0906821098', 'abc', 'a0c6f1403b504a04a72d065ea65f5f80', NULL, 1, NULL, NULL, NULL);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
 ADD PRIMARY KEY (`id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
