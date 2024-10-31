-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2024 at 06:41 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'Thời sự', 'thoi-su', 0),
(2, 'Thế giới', 'the-gioi\r\n', 0),
(3, 'Thể thao', 'the-thao', 0),
(4, 'Công nghệ', 'cong-nghe', 0),
(5, 'Giải trí', 'giai-tri', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int NOT NULL,
  `featured` int NOT NULL,
  `views` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `author` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Thủ tướng Phạm Minh Chính gặp Tổng Bí thư, Chủ tịch nước Tập Cận Bình tại Nga', 'Trong khuôn khổ hội nghị các Nhà lãnh đạo nhóm BRICS mở rộng tổ chức tại Kazan (Liên bang Nga), Thủ tướng Phạm Minh Chính đã có cuộc gặp Tổng Bí thư, Chủ tịch nước Trung Quốc Tập Cận Bình.', 'ại cuộc gặp, Thủ tướng Phạm Minh Chính trân trọng chuyển lời thăm hỏi chân thành của lãnh đạo Đảng, Nhà nước tới Tổng Bí thư, Chủ tịch nước Tập Cận Bình và các lãnh đạo chủ chốt Trung Quốc.\r\n\r\nThủ tướng Phạm Minh Chính gặp Tổng Bí thư, Chủ tịch nước Tập Cận Bình tại Nga-\r\n \r\n<img src =\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/10/24/4c8561b2-9dc6-4569-af9e-3bfc7e36ef81-1729747764516476438675.jpg\">\r\n\r\nThủ tướng Phạm Minh Chính và Tổng Bí thư, Chủ tịch nước Trung Quốc Tập Cận Bình tại cuộc gặp\r\n\r\nẢNH: BỘ NGOẠI GIAO\r\n\r\nThủ tướng chúc mừng những thành tựu to lớn, mang ý nghĩa lịch sử trong công cuộc xây dựng đất nước 75 năm qua của Đảng, Nhà nước, nhân dân Trung Quốc. Thủ tướng khẳng định Việt Nam luôn coi phát triển quan hệ với Trung Quốc là chủ trương nhất quán, yêu cầu khách quan, lựa chọn chiến lược, ưu tiên hàng đầu trong đường lối đối ngoại của Việt Nam.\r\n\r\nNgười đứng đầu Chính phủ hoan nghênh những đóng góp nổi bật của Trung Quốc trong cơ chế BRICS, bày tỏ sẵn sàng phối hợp tích cực với các quốc gia thành viên BRICS thúc đẩy hơn nữa vai trò của các nước đang phát triển trong xử lý các vấn đề hòa bình và phát triển toàn cầu.\r\n\r\nVề quan hệ song phương Việt Nam - Trung Quốc, Thủ tướng Phạm Minh Chính đánh giá cao quan hệ hai Đảng, hai nước thời gian qua không ngừng được củng cố và phát triển, bước sang giai đoạn phát triển mới với mục tiêu xây dựng Cộng đồng chia sẻ tương lai Việt Nam - Trung Quốc có ý nghĩa chiến lược theo định hướng \"6 hơn\".\r\n\r\nThủ tướng đề nghị hai bên tiếp tục tăng cường trao đổi, tiếp xúc cấp cao; thúc đẩy hợp tác thực chất trên các lĩnh vực đi vào chiều sâu, trong đó có kết nối giao thông, nhất là ưu tiên đẩy nhanh triển khai 3 tuyến đường sắt khổ tiêu chuẩn kết nối Việt Nam với Trung Quốc (Lào Cai - Hà Nội - Hải Phòng, Lạng Sơn - Hà Nội, Móng Cái - Hạ Long - Hải Phòng) nhằm thúc đẩy kết nối hai nền kinh tế.\r\n\r\nĐồng thời, phối hợp tổ chức tốt các hoạt động kỷ niệm 75 năm thiết lập quan hệ ngoại giao hai nước và Năm Giao lưu nhân văn Việt - Trung 2025.\r\n\r\nTổng Bí thư, Chủ tịch nước Trung Quốc Tập Cận Bình gửi lời cảm ơn và thăm hỏi chân thành tới Tổng Bí thư Tô Lâm và các lãnh đạo chủ chốt Việt Nam; chúc mừng ông Lương Cường vừa được bầu giữ chức Chủ tịch nước; chúc mừng những thành tựu Việt Nam đã đạt được trên tất cả các mặt, nhất là kinh tế - xã hội.\r\n\r\nÔng cũng bày tỏ vui mừng trước xu thế phát triển, ngày càng thực chất, hiệu quả của quan hệ Trung - Việt; nhấn mạnh trong bất cứ hoàn cảnh nào cũng cần thúc đẩy quan hệ theo tinh thần \"4 tốt\" và những nhận thức chung cấp cao đã đạt được.\r\n\r\nTrung Quốc sẵn sàng cùng Việt Nam duy trì trao đổi chiến lược, thúc đẩy làm sâu sắc hơn nữa hợp tác thực chất, đưa quan hệ Đối tác hợp tác chiến lược toàn diện, Cộng đồng chia sẻ tương lai Trung - Việt có ý nghĩa chiến lược không ngừng đi vào chiều sâu.\r\n\r\nĐể thúc đẩy kết nối giữa hai nền kinh tế, Tổng Bí thư, Chủ tịch nước Trung Quốc Tập Cận Bình cho biết sẽ chỉ đạo các cơ quan liên quan Trung Quốc thúc đẩy kết nối giao thông Trung - Việt.', 'thoisu.jpg', 1, 1, 0, '2024-10-23 17:00:00', '2024-10-24 08:30:09', 1),
(2, 'Bộ trưởng Phần Lan và kinh nghiệm đạt mục tiêu phát thải ròng bằng 0', 'Từ ngày 21-23.10, Bộ trưởng Ngoại thương và Phát triển Phần Lan Ville Tavio dẫn đầu phái đoàn cấp cao thăm chính thức Việt Nam để chia sẻ kinh nghiệm của nước này trong lĩnh vực phát triển bền vững và đạt mục tiêu phát thải r', '<img src =\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/10/24/phan-lan-1729755141141704596109.jpg\">\r\n\r\nChuyến thăm của Bộ trưởng Ville Tavio tập trung vào trung tâm kinh tế của Việt Nam là TP.HCM, trong đó có lịch trình tham gia Diễn đàn và Triển lãm Kinh tế Xanh 2024 (GEFE 2024). Đây là sự kiện được tổ chức hai năm một lần tập trung vào quá trình chuyển đổi xanh và các mô hình kinh tế bền vững.\r\n\r\nTại GEFE 2024, Bộ trưởng Tavio giới thiệu những bí quyết thành công của Phần Lan, cũng như những tiềm năng mà quốc gia này có thể đóng góp trong các lĩnh vực chủ chốt của nền kinh tế Việt Nam.\r\n\r\nMột số lĩnh vực nổi bật bao gồm xây dựng và sản xuất bền vững, năng lượng tái tạo, nền kinh tế tuần hoàn và chuyển đổi số.\r\n\r\nTrao đổi với Thanh Niên, Bộ trưởng Tavio cho hay Phần Lan đặt mục tiêu đến năm 2035 đạt được trung hòa carbon, thuộc hàng tham vọng nhất thế giới khí hậu là năm 2035, tham vọng nhất thế giới.\r\n\r\n\"Thế nhưng, Phần Lan thậm chí đã có thành phố đạt được mục tiêu này nhanh hơn ngưỡng trên. Đó là Lahti (cách Helsinki khoảng 1 giờ tàu lửa theo hướng bắc-NV)\", bộ trưởng cho biết.\r\n\r\nTheo ông, bí quyết của Phần Lan nhằm đạt đến các mục tiêu khí hậu là vừa giữ nguyên năng lực cạnh tranh của các công ty, vừa thực hiện theo cách thức tốt hơn cho mọi người.\r\n<img src =\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/10/24/phan-lan1-17297554678252112430702.jpg\">\r\n\r\n\"Trong lúc chúng tôi thực thi các chính sách thân thiện môi trường, quy mô đô thị ngày càng được mở rộng hơn, và vì thế càng cần có không khí và môi trường sạch. Điều này vô cùng quan trọng cho Phần Lan lẫn Việt Nam, đất nước với môi trường thiên nhiên phong phú và đang theo đuổi mục tiêu phát triển bền vững\", bộ trưởng nhấn mạnh.\r\nPhần Lan sẵn sàng chia sẻ và nâng tầm hợp tác trong 3 lĩnh vực then chốt, bao gồm năng lượng điện, quản lý rác thải và quản lý nước. Bộ trưởng Tavio cho hay Phần Lan và Việt Nam đang thảo luận các dự án đầy hứa hẹn trong những lĩnh vực này.\r\n\r\n\"Sự tăng trưởng ấn tượng của TP.HCM thật sự đáng ghi nhận và tôi đánh giá cao những nỗ lực của thành phố trong việc thúc đẩy quá trình phát triển đạt được thành tựu như vậy\", Bộ trưởng Tavio cho biết. Ông khẳng định Phần Lan cam kết hỗ trợ quá trình chuyển đổi của thành phố thành một trung tâm kết nối thông minh, bền vững trong khu vực, đồng thời tăng cường quan hệ thương mại trên các lĩnh vực mà Phần Lan có thế mạnh.\r\n\r\nBộ trưởng Tavio và đoàn doanh nghiệp cũng đến thăm các dự án quan trọng trong địa bàn thành phố bao gồm Cảng Sài Gòn và Khu Công nghệ cao thành phố Hồ Chí Minh. Bộ trưởng cũng tham gia bữa trưa cùng các em học sinh tại Trường quốc tế Việt Nam - Phần Lan (VFIS), ông cũng là \"Đại sứ bữa ăn học đường của Phần Lan\".', 'thegioi1.jpg\r\nthegioi2.jpg', 2, 1, 0, '2024-10-22 17:00:00', '2024-10-24 07:51:36', 2),
(3, 'Phép thử Hoàng Đức của thầy Kim có \'vô nghiệm\' như thời HLV Troussier?', 'HLV Kim Sang-sik tiếp tục thử nghiệm Hoàng Đức ở vai trò tiền đạo, nhưng triển vọng thành công chưa rõ ràng.\r\n\r\nHoàng Đức lại đá tiền đạo', 'Từ khi còn đá ở đội trẻ Thể Công Viettel, lên đội tuyển U.19, U.22 Việt Nam, bước lên sân chơi V-League rồi khoác áo đội tuyển quốc gia, Nguyễn Hoàng Đức đã bước qua nhiều vị trí: tiền vệ trung tâm, tiền đạo lùi, tiền vệ cánh, thậm chí... trung vệ.\r\n\r\nTuy nhiên, ngôi sao sinh năm 1998 đã định hình năng lực trong vai trò tiền vệ trung tâm. Trong màu áo đội tuyển Việt Nam, Hoàng Đức bắt đầu tìm được chỗ đứng vào tháng 6.2021, trong 3 trận cuối ở vòng loại thứ hai World Cup 2022. 4 năm qua, Hoàng Đức là tiền vệ ổn định bậc nhất trong vai trò cầm trịch lối chơi và phát triển bóng.\r\n\r\n<img src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/9/9/duc-1-17258691401411503144598.jpg\">\r\n\r\nSong, Hoàng Đức có một khoảng lặng dưới thời HLV Philippe Troussier. Nhà cầm quân người Pháp thử nghiệm anh trong vai trò tiền đạo lạ lẫm. Thực tế, Hoàng Đức từng chơi tiền đạo lùi ở Thể Công Viettel, được các HLV như Thạch Bảo Khanh, Trương Việt Hoàng tạo điều kiện tiếp cận vòng cấm thường xuyên hơn. Nhưng đó là khi Thể Công Viettel có một trung phong với thể hình tốt để làm tường, che chắn yểm trợ cho Hoàng Đức ở tuyến trên.\r\n\r\nCòn ở đội tuyển Việt Nam, Hoàng Đức đã thất bại trong phép thử tiền đạo của HLV Troussier. Cầu thủ 26 tuổi không giỏi chơi ở thế quay lưng với khung thành. Hoàng Đức có thể che chắn bóng, nhưng lại không mạnh ở các pha xoay bóng qua người. Anh cũng không nổi bật ở tốc độ, sức rướn, cùng kỹ năng dứt điểm chỉ ở mức \"đủ dùng\". Hoàng Đức không chơi tốt trong các trận đá tiền đạo, sau đó mất dần chỗ đứng. Anh chỉ trở lại tuyến giữa trong những trận cuối của HLV người Pháp, nhưng đã quá muộn.\r\n\r\nKhi HLV Kim Sang-sik tiếp quản ghế nóng, ông đã trả lại Hoàng Đức về lại tuyến giữa. Anh chơi 2 trận gặp Philippines và Iraq trong vai trò cầm nhịp và điều tiết lối chơi. Dù vậy trong các trận giao hữu gần nhất, Hoàng Đức lại đá tiền đạo.\r\n\r\n<img src=\"https://images2.thanhnien.vn/528068263637045248/2024/10/24/duc-17297514090101110425425.jpg\">\r\n\r\nCùng vị trí, nhưng vai trò của tân binh đội Ninh Bình đã thay đổi. Về lý thuyết, tiền vệ 26 tuổi đá cao nhất trên hàng công. Nhưng trên thực tế, Hoàng Đức liên tục \"giật lùi\" về tuyến giữa để hỗ trợ triển khai bóng. Mỗi khi lùi về, Hoàng Đức sẽ kéo theo một cầu thủ đối phương, mở ra khoảng trống phía sau để đồng đội xâm nhập. Ở trận gặp Ấn Độ, Hoàng Đức được bố trí chơi tự do, di chuyển linh hoạt giữa hàng tiền vệ và hàng công để tìm khoảng trống kiến tạo, dứt điểm.\r\n\r\nNhưng, hiệu quả đóng góp lối chơi của Hoàng Đức ở vai trò mới vẫn chưa rõ rànng.\r\n\r\nHLV Kim Sang-sik sẽ điều chỉnh?\r\nHLV Kim Sang-sik chỉ có trong tay một trung phong thuần túy, đó là Nguyễn Tiến Linh. Những cầu thủ trước đây cũng đá trunng phong giống Tiến Linh như Nguyễn Công Phượng, Hà Đức Chinh đều đã sa sút, không còn hiện diện ở đội tuyển Việt Nam.\r\n\r\nHàng công rất mỏng khiến ông Kim phải có phương án B, trong bối cảnh Tiến Linh chỉ mới bình phục chấn thương lưng. Với lực lượng đang có, Hoàng Đức dù chưa phải phương án tốt nhất, nhưng anh là cái tên... khả dĩ nhất có thể chơi trên đỉnh tuyến tấn công nhờ thể hình và tư duy chiến thuật. HLV Kim Sang-sik không còn ai có thể đảm nhiệm vị trí này.\r\n\r\nNhững mũi tấn công như Bùi Vĩ Hào, Nguyễn Văn Toàn có sở trường dạt biên, còn Phạm Tuấn Hải vốn là tiền đạo lùi. Đây là những cầu thủ mạnh về xâm nhập khoảng trống, hơn là trở thành tiền đạo mục tiêu để làm tường, mở ra khoảng trống cho đồng đội.\r\n\r\n<img src=\"https://images2.thanhnien.vn/528068263637045248/2023/11/16/van-toan-1700153273392497060282.jpg\">\r\n\r\nTình trạng này của đội tuyển Việt Nam đến từ việc phần lớn các đội V-League \"khoán\" suất trung phong cho cầu thủ ngoại, còn nội binh phải dạt biên hoặc đá lùi. \r\n\r\nChỉ có Bình Dương của Tiến Linh là đội duy nhất xây dựng hàng công toàn nội binh. Khi tiền đạo nội không có đất dụng võ, chuyện HLV cấp đội tuyển khó tìm người tài là tất yếu.\r\n\r\nTuy nhiên, khi hàng tiền vệ đội tuyển Việt Nam cũng đang rất mỏng với thực tế \"thừa lượng, thiếu chất\", Hoàng Đức có thể sẽ được trả về đúng vị trí. Còn với vai trò trung phong, có thể ông Kim sẽ trông đợi ở Nguyễn Xuân Son, hoặc đặt ván cược vào Công Phượng để tìm người sát cánh với Tiến Linh.\r\n', 'thethao1.jpg\r\nthethao2.jpg\r\nthethao3.jpg', 3, 1, 0, '2024-10-23 17:00:00', '2024-10-24 07:50:36', 3),
(4, 'Xuất hiện công cụ giúp bỏ qua hạn chế phần cứng của Windows 11', 'Flyby11 là công cụ cho phép người dùng cài đặt Windows 11 trên những máy tính không đáp ứng các tiêu chí phần cứng chính thức của Microsoft.', 'Theo Neowin, Flyby11 là công cụ được phát triển bởi Belim, nhà sáng tạo của nhiều công cụ tùy chỉnh Windows, có thể bỏ qua các kiểm tra khả năng tương thích của Windows 11. Điều này được thực hiện bằng cách tận dụng một tính năng trong quy trình cài đặt Windows Server nhằm cho phép người dùng nâng cấp mà không cần phải đáp ứng các yêu cầu phần cứng thông thường.\r\n\r\nXuất hiện công cụ giúp bỏ qua hạn chế phần cứng của Windows 11- Ảnh 1.\r\nGiao diện cài đặt Windows 11 của Flyby11\r\n\r\n<img src=\"https://images2.thanhnien.vn/528068263637045248/2024/10/24/2-17297427487171941203849.jpg\">\r\n\r\n \r\nFlyby11 cung cấp hai phương pháp để tránh các yêu cầu hệ thống: phương pháp đầu tiên sử dụng quy trình cài đặt Windows Server, trong khi phương pháp thứ hai áp dụng một tinh chỉnh registry tương tự như trong các phiên bản gần đây của Rufus.\r\n\r\nMột số hạn chế với Windows 11 vẫn tồn tại\r\n\r\nMặc dù Flyby11 mang lại khả năng cài đặt Windows 11 cho nhiều loại phần cứng nhưng người dùng cần lưu ý rằng công cụ này vẫn đang trong giai đoạn đầu phát triển và chỉ mới phát hành trên GitHub vào ngày 19.10. Hơn nữa, Flyby11 có thể bị Microsoft Defender đánh dấu là đáng ngờ. Ngoài ra các CPU quá cũ không hỗ trợ SSE4.2 và PopCnt vẫn không tương thích để cài đặt ngay cả khi sử dụng công cụ này.\r\n\r\nPhản hồi từ cộng đồng công nghệ về Flyby11 cũng khá thận trọng. Mặc dù người dùng đánh giá cao tính đơn giản của công cụ nhưng một số vẫn ưa chuộng phương pháp dựa trên Rufus.\r\n\r\n\r\nĐược biết, yêu cầu phần cứng nghiêm ngặt của Microsoft cho Windows 11 đã gây tranh cãi kể từ khi hệ điều hành này ra mắt. Các yêu cầu bao gồm bộ xử lý 1 GHz với ít nhất hai lõi, tối thiểu RAM 4 GB, dung lượng lưu trữ 64 GB và màn hình có độ phân giải tối thiểu 720p. Ngoài ra có một số yêu cầu về CPU đã khiến nhiều máy tính không thể nâng cấp chính thức, dẫn đến việc người dùng tìm đến các giải pháp bên thứ ba để qua mặt công cụ kiểm tra tương thích của hệ điều hành này.\r\n', 'congnghe.jpg', 4, 1, 0, '2024-10-24 08:09:14', '2024-10-24 08:09:14', 4),
(5, 'Quyền Linh phấn khích khi chàng kỹ sư chinh phục nữ biên tập viên xinh xắn', 'Chàng kỹ sư cơ điện tử tham gia \'Bạn muốn hẹn hò\' tìm bạn gái, được Quyền Linh mai mối cho nữ biên tập viên xuất bản sách. Cặp đôi vừa gặp đã nói chuyện ăn ý, nhanh chóng bấm nút hẹn hò khiến hai MC vui mừng.', 'Quyền Linh vui mừng khi \"đẩy thuyền\" thành công cho cặp trai tài gái sắc\r\n\r\n<img src=\"https://images2.thanhnien.vn/528068263637045248/2024/10/24/edit-quyen-linh-1729738423873335286862.png\">\r\n\r\nChương trình Bạn muốn hẹn hò lên sóng tập 1.049, Quyền Linh và Ngọc Lan mai mối cho hai khách mời trẻ đi tìm tình yêu. Đàng trai là Bùi Nhật Hưng (29 tuổi), hiện đang làm kỹ sư cơ điện tử, đồng thời kinh doanh lâm sản và nguyên liệu đốt tại Nha Trang (Khánh Hòa).\r\n\r\nTrò chuyện với hai MC, Nhật Hưng tự giới thiệu là người hòa đồng, siêng năng, sống hướng ngoại và có sở thích đi du lịch. Anh đã trải qua ba mối tình, mỗi mối tình kéo dài từ vài tháng đến vài năm. Mối tình dài nhất của anh kết thúc do người yêu quyết định định cư ở nước ngoài. Với mong muốn tìm được một người bạn gái để kết hôn, Nhật Hưng tự tin cho biết anh đã chuẩn bị sẵn sàng khi có nhà và ô tô riêng.\r\n\r\nQuyền Linh phấn khích khi chàng kỹ sư chinh phục nữ biên tập viên xinh xắn- Ảnh 2.\r\nNhật Hưng khiến hai MC trầm trồ khi tiết lộ đã có nhà, xe ở tuổi 29\r\n\r\n<img src=\"https://images2.thanhnien.vn/528068263637045248/2024/10/24/anh-man-hinh-2024-10-24-luc-093444-1729738397069191302598.png\">\r\n\r\nGhép đôi với Nhật Hưng là nữ biên tập viên xuất bản sách Trần Lê Nhất Tú (27 tuổi). Cô gây ấn tượng với vẻ ngoài xinh đẹp cùng khả năng giao tiếp tự tin. Nhất Tú cũng đã trải qua ba mối tình từ thời học sinh đến khi đi làm. Mối tình gần đây nhất kéo dài 3 năm, nhưng cũng tan vỡ vì bạn trai có định hướng đi nước ngoài, trong khi Nhất Tú lại mong muốn xây dựng cuộc sống tại Việt Nam.\r\n\r\nKhi được Quyền Linh hỏi về hình mẫu bạn trai, Nhất Tú chia sẻ cô thích người đàn ông chín chắn, trưởng thành, ấm áp, bao dung, ổn định về tài chính để cùng nhau vun đắp và xây dựng gia đình hạnh phúc. Cô khẳng định bản thân không ngại phải về quê, điều quan trọng là người đàn ông đó có xứng đáng để cô đi theo hay không.\r\n\r\nNghe những tiêu chí mà Nhất Tú đưa ra, Nhật Hưng tỏ ra khá tự tin và cho biết anh có thể đáp ứng được 90% yêu cầu. Anh cũng bày tỏ mong muốn tìm kiếm bạn gái hiền lành, dễ thương và biết quan tâm đến người thân, có sở thích kinh doanh để cùng nhau phát triển.\r\n\r\nQuyền Linh phấn khích khi chàng kỹ sư chinh phục nữ biên tập viên xinh xắn- Ảnh 3.\r\nNhất Tú gây ấn tượng bởi sự tự tin, duyên dáng\r\n\r\n<img src=\"https://images2.thanhnien.vn/528068263637045248/2024/10/24/anh-man-hinh-2024-10-24-luc-092732-1729738397121164020959.png\">\r\n\r\nVừa mở rào gặp gỡ, Nhật Hưng lập tức chia sẻ rằng Nhất Tú đáp ứng đến 90% tiêu chí mà anh mong muốn. Chàng kỹ sư liền hỏi về dự định tương lai, đặc biệt là việc cô có ngại chuyển về Nha Trang và sống chung với gia đình chồng. Đáp lại, nữ biên tập viên chia sẻ: \"Nếu em gặp được người cảm thấy ưng ý, hài lòng thì em sẽ theo. Em rất cởi mở với việc làm dâu. Em luôn tâm niệm rằng có mẹ mới có anh bây giờ, có người đàn ông để em dựa dẫm. Vì vậy, em sẽ yêu thương mẹ anh và không ngại việc làm dâu\".\r\n\r\n\r\nNhất Tú cũng chia sẻ thêm về quan điểm trong hôn nhân, cô là người phụ nữ truyền thống, thích chăm sóc gia đình. Cô mong muốn người đàn ông sẽ là trụ cột gia đình, còn người vợ có thể lùi lại để vun vén, chăm sóc chồng con. Cảm mến cô gái xinh xắn, Nhật Hưng nắm tay và bày tỏ tình cảm: \"Anh hy vọng em sẽ bấm nút để cho nhau cơ hội tìm hiểu thêm\".\r\n\r\nQuyền Linh phấn khích khi chàng kỹ sư chinh phục nữ biên tập viên xinh xắn- Ảnh 4.\r\nHai MC đánh giá đây là cặp đôi dễ thương, hy vọng cả hai sẽ sớm có cái kết đẹp\r\n\r\n<img src = \"https://images2.thanhnien.vn/528068263637045248/2024/10/24/quyen-linh-2-17297383969971478632466.png\">\r\n\r\nĐến giây phút quyết định, sau 3 tiếng đếm của MC, cặp đôi cùng bấm nút hẹn hò, xác nhận chính thức tìm hiểu nhau. Khoảnh khắc màn hình trái tim sáng đèn, cả trường quay vui mừng, vỗ tay chúc mừng.', 'giaitri1.jpg\r\ngiaitri2.jpg\r\ngiaitri3.jpg\r\ngiaitri4.jpg', 5, 1, 0, '2024-10-24 08:14:43', '2024-10-24 08:14:43', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Nguyên Văn A'),
(2, 'Trần Thị B'),
(3, 'Lê Văn C'),
(4, 'Phạm Minh D'),
(5, 'Hoàng Thu H');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
