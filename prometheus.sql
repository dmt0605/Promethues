-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 04:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prometheus`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `au_name` text NOT NULL,
  `au_email` varchar(50) NOT NULL,
  `au_img` varchar(255) NOT NULL,
  `au_description` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `au_name`, `au_email`, `au_img`, `au_description`, `creation_date`, `update_date`) VALUES
(1, 'Emily Brontë', 'contact@emilybronte.com', '', 'Emily Brontë là một tiểu thuyết gia và nhà thơ người Anh, người đã viết một cuốn tiểu thuyết duy nhất, Wuthering Heights (1847), một tác phẩm giàu trí tưởng tượng về niềm đam mê và sự căm ghét lấy bối cảnh ở vùng đồng hoang Yorkshire. Nó đã nhận được những đánh giá khủng khiếp khi xuất bản lần đầu nhưng được coi là một trong những cuốn tiểu thuyết hay nhất bằng tiếng Anh.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(2, 'Jane Austen', 'contact@janeausten.co.uk', '', 'Jane Austen (16 tháng 12 năm 1775 – 18 tháng 7 năm 1817) là một tiểu thuyết gia người Anh chủ yếu được biết đến với sáu cuốn tiểu thuyết, ngầm diễn giải, phê bình và bình luận về tầng lớp quý tộc người Anh đổ bộ vào cuối thế kỷ 18.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(3, 'J. K. Rowling', 'info@jkrowling.com', '', 'J.K. Rowling là tác giả người Anh, người đã tạo ra bộ truyện Harry Potter nổi tiếng và được giới phê bình đánh giá cao (bảy cuốn sách được xuất bản từ năm 1997 đến 2007), kể về một đứa trẻ mồ côi cô đơn phát hiện ra rằng mình thực sự là một phù thủy và đăng ký vào Trường Phù thủy và Pháp sư Hogwarts.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(4, 'Virginia Woolf', 'contact@virginiawwoolf.com', '', 'Adeline Virginia Woolf (25 tháng 1 năm 1882 – 28 tháng 3 năm 1941) là một nhà văn người Anh. Bà được coi là một trong những tác giả theo chủ nghĩa hiện đại quan trọng nhất của thế kỷ 20 và là người tiên phong trong việc sử dụng dòng ý thức như một công cụ tường thuật.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(5, 'Mary Shelley', 'contact@maryshelley.com', '', 'Mary Wollstonecraft Shelley (30 tháng 8 năm 1797 – 1 tháng 2 năm 1851) là một tiểu thuyết gia người Anh, người đã viết tiểu thuyết Gothic Frankenstein; hoặc, The Modern Prometheus (1818), được coi là ví dụ ban đầu của khoa học viễn tưởng.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(6, 'Ernest Hemingway', 'contact@ernesthemingway.com', '', 'Ernest Hemingway (21 tháng 7 năm 1899-02 tháng 7 năm 1961) được coi là một trong những nhà văn có ảnh hưởng nhất của thế kỷ 20. Nổi tiếng với tiểu thuyết và truyện ngắn, ông cũng là một nhà báo và phóng viên chiến trường tài ba. Phong cách văn xuôi đặc trưng của Hemingway—đơn giản và thoải mái—đã ảnh hưởng đến một thế hệ nhà văn.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(7, 'Lev Nikolayevich Tolstoy', 'contact@levtolstoy.com', '', 'Tác giả người Nga Leo Tolstoy được coi là bậc thầy về tiểu thuyết hiện thực và là một trong những tiểu thuyết gia vĩ đại nhất thế giới, đặc biệt được biết đến với Anna Karenina và Chiến tranh và Hòa bình. Dao động giữa chủ nghĩa hoài nghi và chủ nghĩa giáo điều, ông khám phá những cách tiếp cận đa dạng nhất đối với trải nghiệm của con người.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(8, 'Fyodor Dostoevsky', 'contact@fyodordostoevsky.com', '', 'Fyodor Dostoyevsky, (sinh ngày 11 tháng 11 [30 tháng 10, Kiểu Cũ], 1821, Moscow, Nga—mất ngày 9 tháng 2 [28 tháng 1, Kiểu Cũ], 1881, St. Petersburg), tiểu thuyết gia và nhà văn viết truyện ngắn người Nga có tâm lý thâm nhập vào những ngóc ngách đen tối nhất trong trái tim con người, cùng với những khoảnh khắc soi sáng vượt trội của ông, đã có ảnh hưởng to lớn đến tiểu thuyết thế kỷ 20.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(9, 'Mark Twain', 'contact@marktwain.com', '', 'Mark Twain là một nhà hài hước, tiểu thuyết gia và nhà văn du lịch người Mỹ. Ngày nay ông được nhớ đến nhiều nhất với tư cách là tác giả của Những cuộc phiêu lưu của Tom Sawyer (1876) và Những cuộc phiêu lưu của Huckleberry Finn (1885). Twain được nhiều người coi là một trong những nhà văn Mỹ vĩ đại nhất mọi thời đại.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(10, 'James Joyce', 'contact@jamesjoyce.com', '', 'James Joyce được biết đến với việc thử nghiệm sử dụng ngôn ngữ và khám phá các phương pháp văn học mới, bao gồm độc thoại nội tâm, sử dụng mạng lưới phức tạp của các biểu tượng song song và phát minh ra các từ, cách chơi chữ và ám chỉ trong tiểu thuyết của ông, đặc biệt là Ulysses (1922) và Finnegans Wake (1939).', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(11, 'Malcolm Gladwell', 'contact@malcolmgladwell.com', '', 'Nhà báo, tác giả và diễn giả người Canada gốc Anh Malcolm Timothy Gladwell được biết đến với những bài báo và cuốn sách xác định, tiếp cận và giải thích những tác động bất ngờ của nghiên cứu khoa học xã hội. Ngoài công việc viết lách, ông còn là người dẫn chương trình podcast của Lịch sử xét lại.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(12, 'Stephen Hawking', 'contact@stephenhawking.com', '', 'Stephen William Hawking (8 tháng 1 năm 1942 – 14 tháng 3 năm 2018) là một nhà vật lý lý thuyết, nhà vũ trụ học và tác giả người Anh, vào thời điểm ông qua đời, ông là giám đốc nghiên cứu tại Trung tâm Vũ trụ lý thuyết tại Đại học Cambridge.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(13, 'Jean-Paul Sartre', 'contact@jeanpaulsartre.com', '', 'Jean-Paul Sartre là một tiểu thuyết gia, nhà viết kịch và triết gia người Pháp. Là một nhân vật hàng đầu trong triết học Pháp thế kỷ 20, ông là người tiêu biểu cho triết lý tồn tại được gọi là chủ nghĩa hiện sinh. Các tác phẩm đáng chú ý nhất của ông bao gồm Buồn nôn (1938), Hữu thể và Hư vô (1943), và Chủ nghĩa hiện sinh và Chủ nghĩa nhân văn (1946).', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(14, 'Vaclav Smil', 'vsmil@cc.umanitoba.ca', '', 'Vaclav Smil là Giáo sư danh dự xuất sắc tại Đại học Manitoba. Ông là tác giả của 40 cuốn sách, trong đó có cuốn sách bán chạy nhất của New York Times Thế giới thực sự hoạt động như thế nào và Năng lượng và nền văn minh, do MIT Press xuất bản. Năm 2010, ông được tạp chí Chính sách đối ngoại vinh danh là một trong 100 nhà tư tưởng toàn cầu hàng đầu.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(15, 'Michio Kaku', 'contact@machiokaku.com', '', 'Michio Kaku là nhà vật lý lý thuyết tại City College of New York, tác giả có sách bán chạy nhất và là nhà phổ biến khoa học nổi tiếng. Ông là người đồng sáng lập lý thuyết trường dây (một nhánh của lý thuyết dây) và tiếp tục nghiên cứu của Einstein nhằm hợp nhất bốn lực cơ bản của tự nhiên thành một lý thuyết thống nhất.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(16, 'Karl Marx', 'contact@karlmarx.com', '', 'Karl Marx là một nhà tư tưởng nổi bật, viết về các chủ đề liên quan đến kinh tế, kinh tế chính trị và xã hội. Sinh ra ở Đức, Marx dành phần lớn thời gian ở London, nơi ông viết nhiều tác phẩm nổi tiếng, trong đó có Tuyên ngôn Cộng sản và Tư bản (Das Kapital).', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(17, 'Albert Camus', 'contact@albertcamus.com', '', 'Albert Camus (1913–1960) là một nhà báo, biên tập viên và biên tập viên, nhà viết kịch và đạo diễn, tiểu thuyết gia và tác giả truyện ngắn, nhà tiểu luận chính trị và nhà hoạt động – và, mặc dù ông đã nhiều lần phủ nhận điều đó, nhưng ông là một triết gia.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(18, 'Simone de Beauvoir', 'contact@simonedebeauvoir.com', '', 'Simone de Beauvoir là một nhà văn, nhà nữ quyền, nhà lý luận xã hội và triết gia hiện sinh người Pháp. Cô được biết đến nhiều nhất với những ý tưởng đột phá xung quanh chủ nghĩa nữ quyền; cuốn sách của cô, Giới tính thứ hai, được cho là đánh dấu sự khởi đầu của làn sóng nữ quyền thứ hai trên toàn cầu.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(19, 'Hannah Arendt', 'contact@hannaharendt.com', '', 'Hannah Arendt (1906–1975) là một trong những triết gia chính trị có ảnh hưởng nhất thế kỷ XX. Sinh ra trong một gia đình người Đức gốc Do Thái, bà buộc phải rời Đức vào năm 1933 và sống ở Paris trong 8 năm tiếp theo, làm việc cho một số tổ chức tị nạn Do Thái.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(20, 'Rachel Carson', 'contact@rachelcarson.com', '', 'Rachel Carson là một nhà sinh vật học người Mỹ nổi tiếng với các bài viết về ô nhiễm môi trường và lịch sử tự nhiên của biển. Cuốn sách của bà, Silent Spring (1962), đã trở thành một trong những cuốn sách có ảnh hưởng nhất trong phong trào môi trường hiện đại và tạo động lực cho việc kiểm soát chặt chẽ hơn các loại thuốc trừ sâu, trong đó có DDT.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(21, 'Nguyễn Nhật Ánh', 'nguyennhatanh@gmail.com', '', 'Nguyễn Nhật Ánh (sinh ngày 7 tháng 5 năm 1955)[1] là một nam nhà văn người Việt Nam. Được xem là một trong những nhà văn hiện đại xuất sắc nhất Việt Nam hiện nay, ông được biết đến qua nhiều tác phẩm văn học về đề tài tuổi trẻ.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(22, 'Nguyễn Ngọc Tư', 'ngngoctucm@hcm.vn', '', 'Nguyễn Ngọc Tư (sinh năm 1976 tại xã Tân Duyệt, huyện Đầm Dơi, tỉnh Cà Mau) là một nhà văn, thành viên Hội nhà văn Việt Nam. Cô được biết đến với tập truyện mang tên Cánh đồng bất tận. Tập truyện nhận giải thưởng của Hội nhà văn Việt Nam năm 2006 và truyện ngắn cùng tên đã được chuyển thể thành phim điện ảnh năm 2010.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(23, 'Thạch Lam', 'contact@thachlam.com', '', 'Nhà văn Thạch Lam – Một cây bút giàu xúc cảm, ông được biết đến là một trong những nhà văn nổi tiếng của nền văn học hiện đại Việt Nam vào giai đoạn những năm 1930 – 1945.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(24, 'Vũ Trọng Phụng', 'contact@vutrongphung.com', '', 'Vũ Trọng Phụng (1912-1939) là một nhà văn, nhà báo nổi tiếng của Việt Nam vào đầu thế kỷ 20. Tuy thời gian cầm bút rất ngắn ngủi, với tác phẩm đầu tay là truyện ngắn Chống nạng lên đường đăng trên Ngọ báo vào năm 1930, ông đã để lại một kho tác phẩm đáng kinh ngạc: hơn 30 truyện ngắn, 9 tập tiểu thuyết, 9 tập phóng sự, 7 vở kịch, cùng một bản dịch vở kịch từ tiếng Pháp, một số bài viết phê bình, tranh luận văn học và hàng trăm bài báo viết về các vấn đề chính trị, xã hội, văn hóa.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(25, 'Nam Cao', 'contact@namcao.com', '', 'Nam Cao (tên khai sinh là Trần Hữu Tri, 29 tháng 10, năm 1915 hoặc 1917 – 30 tháng 11 năm 1951[1]) là một nhà văn, nhà thơ, nhà báo và cũng là một chiến sĩ, liệt sỹ người Việt Nam. Ông là nhà văn hiện thực lớn (trước Cách mạng Tháng Tám), một nhà báo kháng chiến (sau Cách mạng), một trong những nhà văn tiêu biểu nhất thế kỷ 20. Nam Cao có nhiều đóng góp quan trọng đối với việc hoàn thiện phong cách truyện ngắn và tiểu thuyết Việt Nam ở nửa đầu thế kỷ 20.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(26, 'Đặng Hoàng Giang', 'contact@danghoanggiang.com', '', 'Đặng Hoàng Giang là một người ủng hộ, một nhà nghiên cứu về xã hội dân sự và là một nhà nghiên cứu quản trị. Ông đã thiết kế và tham gia nhiều dự án đổi mới về hiệu suất của chính quyền địa phương , tính minh bạch và trách nhiệm giải trình . Ông viết cho nhiều báo chí và thường xuyên xuất hiện trên truyền hình để bàn về các xu hướng xã hội, tư pháp và phát triển. Là một nhà hoạt động xã hội.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(27, 'Tô Hoài', 'contact@tohoai.com', '', 'Tô Hoài (tên khai sinh: Nguyễn Sen; 27 tháng 9 năm 1920 – 6 tháng 7 năm 2014) là một nhà văn Việt Nam. Một số tác phẩm đề tài thiếu nhi của ông được dịch ra ngoại ngữ. Ông được nhà nước Việt Nam trao tặng Giải thưởng Hồ Chí Minh về Văn học – Nghệ thuật Đợt 1 (1996) cho các tác phẩm: Xóm giếng, Nhà nghèo, O chuột, Dế mèn phiêu lưu ký, Núi Cứu quốc, Truyện Tây Bắc, Mười năm, Xuống làng, Vỡ tỉnh, Tào lường, Họ Giàng ở Phìn Sa, Miền Tây, Vợ chồng A Phủ, Tuổi trẻ Hoàng Văn Thụ.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(28, 'Ngô Tất Tố', 'contact@ngotatto.com', '', 'Ngô Tất Tố (1893[1] – 20 tháng 4 năm 1954) là một nhà văn, nhà báo, nhà Nho học, dịch giả và nhà nghiên cứu có ảnh hưởng lớn ở Việt Nam giai đoạn trước 1954.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(29, 'Nguyễn Du', 'contact@nguyendu.com', '', 'Nguyễn Du là một nhà thơ, nhà văn hóa lớn thời Lê mạt Nguyễn sơ ở Việt Nam. Ông được người Việt kính trọng tôn xưng là Đại thi hào dân tộc và được UNESCO vinh danh là Danh nhân văn hóa thế giới. Tác phẩm Truyện Kiều của ông được xem là một kiệt tác văn học, một trong những thành tựu tiêu biểu nhất trong nền văn học trung đại Việt Nam.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(30, 'Bùi Văn Nam Sơn', 'contact@buivannamson.com', '', 'Bùi Văn Nam Sơn là một triết gia, tác giả và dịch giả nổi tiếng và có uy tín tại Việt Nam. Ông đã dịch và hiệu đính một số tác phẩm triết học và khoa học xã hội đã được xuất bản tại Việt Nam.', '2023-11-17 16:00:40', '2023-11-17 16:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn_10` varchar(13) NOT NULL,
  `isbn_13` varchar(13) NOT NULL,
  `title` varchar(255) NOT NULL,
  `book_description` text NOT NULL,
  `views` int(11) NOT NULL,
  `fm_id` int(11) NOT NULL,
  `au_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn_10`, `isbn_13`, `title`, `book_description`, `views`, `fm_id`, `au_id`, `pub_id`, `creation_date`, `updation_date`) VALUES
(1, '0141439556', '9780141439556', 'Đồi gió hú', 'Giới thiệu về Đồi Gió Hú cuốn tiểu thuyết bắt nguồn từ trang viên Yorkshire trên cánh đồng hoang của câu chuyện. Câu chuyện tập trung vào tình yêu trọn vẹn, nồng nàn nhưng cuối cùng cũng phải chịu số phận giữa Catherine Earnshaw và Heathcliff, cũng như việc niềm đam mê không được giải quyết này cuối cùng đã hủy hoại họ và những người xung quanh như thế nào.', 0, 1, 1, 1, '2023-11-19 02:32:25', '2023-11-19 02:32:25'),
(2, '0141439556', '9780141439556', 'Wuthering Heights', 'Wuthering Heights is the first and only novel by the English author Emily Brontë, initially published in 1847 under her pen name Ellis Bell.', 0, 1, 1, 4, '2023-11-19 02:32:25', '2023-11-19 02:32:25'),
(3, '9780141439518', '9780141439518', 'Kiêu hãnh và định kiến', 'Kiêu hãnh và định kiến là tác phẩm nổi tiếng nhất của nhà văn Anh Jane Austen. Tiểu thuyết được viết từ năm 1796 đến năm 1797 và xuất bản năm 1813. Câu chuyện nói về tình yêu và hôn nhân của tầng lớp quý tộc nhỏ tại Anh vào đầu thế kỷ 19.', 0, 1, 2, 1, '2023-11-19 02:33:03', '2023-11-19 02:33:03'),
(4, '9780141439518', '9780141439518', 'Pride and Prejudice', 'Pride and Prejudice is an 1813 novel of manners by English author Jane Austen. The novel follows the character development of Elizabeth Bennet, the protagonist of the book, who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.', 0, 1, 2, 1, '2023-11-19 02:33:03', '2023-11-19 02:33:03'),
(5, '0141439580', '9780141439587', 'Emma', 'Jane Austen là một tiểu thuyết gia người Anh. Bà nổi tiếng với sáu cuốn tiểu thuyết lấy bối cảnh giới địa chủ trung lưu Anh vào cuối thế kỷ 18. Cốt truyện của Austen thường phản ánh tình cảnh phụ thuộc của người phụ nữ vào hôn nhân như là cứu cánh duy nhất để đảm bảo vị thế xã hội và lợi ích vật chất.', 0, 1, 2, 1, '2023-11-19 02:33:03', '2023-11-19 02:33:03'),
(6, '0141439580', '9780141439587', 'Emma', 'Emma is a novel written by English author Jane Austen. It is set in the fictional country village of Highbury and the surrounding estates of Hartfield, Randalls and Donwell Abbey, and involves the relationships among people from a small number of families.', 0, 1, 2, 1, '2023-11-19 02:33:53', '2023-11-19 02:33:53'),
(7, '0141439661', '9780141439662', 'Sense and Sensibility', 'Sense and Sensibility is the first novel by the English author Jane Austen, published in 1811. It was published anonymously; By A Lady appears on the title page where the author\'s name might have been. It tells the story of the Dashwood sisters, Elinor and Marianne as they come of age.', 0, 1, 2, 1, '2023-11-19 02:33:53', '2023-11-19 02:33:53'),
(8, '0755331494', '9798861522953', 'Thuyết phục', 'Thuyết phục là cuốn tiểu thuyết cuối cùng được hoàn thành bởi tác giả người Anh Jane Austen. Nó được xuất bản vào ngày 20 tháng 12 năm 1817, cùng với Tu viện Northanger, sáu tháng sau khi bà qua đời, mặc dù trang tiêu đề ghi ngày 1818.', 0, 1, 2, 1, '2023-11-19 02:33:53', '2023-11-19 02:33:53'),
(9, '0755331494', '9798861522953', 'Persuasion: Novel', 'Persuasion is the last novel completed by the English author Jane Austen. It was published on 20 December 1817, along with Northanger Abbey, six months after her death, although the title page is dated 1818.', 0, 1, 2, 1, '2023-11-19 02:35:05', '2023-11-19 02:35:05'),
(10, '9781408855652', '9781408855652', 'Harry Potter và Hòn đá Phù thủy', 'Harry Potter và Hòn đá Phù thủy là tiểu thuyết kỳ ảo của văn sĩ người Anh J. K. Rowling. Đây là cuốn đầu trong series tiểu thuyết Harry Potter và là tiểu thuyết đầu tay của J. K. Rowling.', 0, 1, 3, 3, '2023-11-19 02:35:05', '2023-11-19 02:35:05'),
(11, '0747538492', '9781338878936', 'Harry Potter và phòng chứa bí mật', 'Harry Potter và tên tù nhân ngục Azkaban là một quyển tiểu thuyết thuộc thể loại giả tưởng kỳ ảo được viết bởi văn sĩ người Anh J. K. Rowling, đây cũng là tập thứ 3 trong bộ truyện Harry Potter. Quyển sách theo chân Harry Potter, cậu phù thủy nhỏ, trong năm học thứ ba của mình tại Trường Phù thủy và Pháp sư Hogwarts.', 0, 1, 3, 3, '2023-11-19 02:35:05', '2023-11-19 02:35:05'),
(12, '0747542155', '9781338815283', 'Harry Potter Và Tên Tù Nhân Ngục Azkaban', 'Harry Potter và Hòn đá Phù thủy là tiểu thuyết kỳ ảo của văn sĩ người Anh J. K. Rowling. Đây là cuốn đầu trong series tiểu thuyết Harry Potter và là tiểu thuyết đầu tay của J. K. Rowling.', 0, 1, 3, 3, '2023-11-19 02:35:05', '2023-11-19 02:35:05'),
(13, '0439139597', '9780439139595', 'Harry Potter Và Chiếc Cốc Lửa', 'Harry Potter và chiếc cốc lửa là một quyển sách thuộc thể loại giả tưởng kỳ ảo được viết bởi tác giả người Anh J. K. Rowling và đây cũng là phần thứ tư trong bộ tiểu thuyết Harry Potter.', 0, 1, 3, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(14, '9780439358064', '9780439358064', 'Harry Potter Và Hội Phượng Hoàng', 'Harry Potter và hội Phượng hoàng là quyển thứ 5 trong bộ sách Harry Potter của nhà văn J. K. Rowling. Quyển này được đồng loạt xuất bản vào ngày 21 tháng 6 năm 2003 tại Anh, Hoa Kỳ, Canada, Úc và một vài quốc gia khác. Trong ngày đầu tiên xuất bản, nó đã bán được gần 7 triệu cuốn riêng tại Hoa Kỳ và Anh.', 0, 1, 3, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(15, '9781408855652', '9781408855652', 'Harry Potter Và Hoàng Tử Lai', 'Harry Potter và Hoàng tử lai là quyển sách thứ sáu trong bộ sách giả tưởng nổi tiếng Harry Potter của tác giả J.K. Rowling. Cũng như các quyển trước, nó cũng trở thành một trong những bestseller của năm nó xuất bản.', 0, 1, 3, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(16, '0545010225', '9780545010221', 'Harry Potter Và Bảo Bối Tử Thần', 'Harry Potter và Bảo bối Tử thần là cuốn sách thứ bảy và cũng là cuối cùng của bộ tiểu thuyết giả tưởng Harry Potter của nhà văn Anh J.K. Rowling. Nguyên bản tiếng Anh được phát hành đồng thời tại Anh, Hoa Kỳ, Canada và một số nước khác vào ngày 21 tháng 7 năm 2007.', 0, 1, 3, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(17, '9781408855652', '9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 0, 1, 3, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(18, '0747538492', '9781338878936', 'Harry Potter and the Chamber of Secrets', 'The Chamber is flanked with towering pillars entwined with carved wood, and a tall statue of Salazar Slytherin is at the far end. The basilisk rests within the mouth of the statue, possibly symbolising Salazar Slytherin\'s ability to speak Parseltongue. Sometime before 1992, the chamber flooded with water.', 0, 1, 3, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(19, '0747542155', '9781338815283', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.', 0, 1, 3, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(20, '0439139597', '9780439139595', 'Harry Potter and the Goblet of Fire', 'The novels follow Harry Potter, an 11yearold boy who discovers he is the son of famous wizards and will attend Hogwarts School of Witchcraft and Wizardry. Harry learns of an entire society of wizards and witches. He befriends several Hogwarts students and teachers along his journey.', 0, 1, 3, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(21, '9780439358064', '9780439358064', 'Harry Potter and the Order of the Phoenix', 'It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', 0, 1, 3, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(22, '9781408855652', '9781408855652', 'Harry Potter and the HalfBlood Prince', 'owling, J. K. In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.', 0, 1, 3, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(23, '0545010225', '9780545010221', 'Harry Potter and the Deathly Hallows', 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.', 0, 1, 3, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(24, '0143136135', '9780143136132', 'Bà Dalloway', 'Bà Dalloway là một cuốn tiểu thuyết của Virginia Woolf xuất bản vào ngày 14 tháng 5 năm 1925. Nó kể chi tiết một ngày trong cuộc đời của Clarissa Dalloway, một phụ nữ thuộc tầng lớp thượng lưu hư cấu ở Anh sau Thế chiến thứ nhất. Đây là một trong những tiểu thuyết nổi tiếng nhất của Woolf.', 0, 1, 4, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(25, '0143136135', '9780143136132', 'Mrs. Dalloway', 'Dalloway, novel by Virginia Woolf published in 1925. It examines one day in the life of Clarissa Dalloway, an upperclass Londoner married to a member of Parliament. Mrs. Dalloway is essentially plotless; what action there is takes place mainly in the characters consciousness.', 0, 1, 4, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(27, '0143131842', '9780143131847', 'Frankenstein', 'Frankenstein: hay The Modern Prometheus là một cuốn tiểu thuyết năm 1818 được viết bởi tác giả người Anh Mary Shelley. Frankenstein kể câu chuyện về Victor Frankenstein, một nhà khoa học trẻ, người đã tạo ra một sinh vật có trí tuệ trong một thí nghiệm khoa học không chính thống.', 0, 1, 4, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(28, '0143131842', '9780143131847', 'Frankenstein', 'The book tells the story of Victor Frankenstein, a Swiss student of natural science who creates an artificial man from pieces of corpses and brings his creature to life. Though it initially seeks affection, the monster inspires loathing in everyone who meets it.', 0, 1, 4, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(29, '9384225487', '9789384225483', 'Ông già và biển cả', 'Ông già và Biển cả là một tiểu thuyết ngắn được Ernest Hemingway viết ở Cuba năm 1951 và xuất bản năm 1952. Nó là truyện ngắn dạng viễn tưởng cuối cùng được Hemingway viết và được xuất bản khi ông còn sống. Đây cũng là tác phẩm nổi tiếng và là một trong những tác phẩm đỉnh cao trong sự nghiệp sáng tác của nhà văn.', 0, 1, 6, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(30, '9384225487', '9789384225483', 'The Old Man and the Sea', 'The Old Man and the Sea is a 1952 novella written by the American author Ernest Hemingway. Written between December 1950 and February 1951, it tells the story of Santiago, an aging fisherman who catches a giant marlin after a long struggle, but then loses his bounty to sharks.', 0, 1, 6, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(31, '0684803356', '9780684803357', 'Chuông nguyện hồn ai', 'Chuông nguyện hồn ai là tiểu thuyết được xuất bản năm 1940 của nhà văn Mỹ Ernest Miller Hemingway. Cuốn tiểu thuyết viết về Robert Jordan, một người Mỹ thuộc Lữ đoàn quốc tế, tham gia chống Phát xít trong cuộc nội chiến Tây Ban Nha.', 0, 1, 6, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(32, '9384225487', '9780684803357', 'For Whom the Bell Tolls', 'For Whom the Bell Tolls is a novel by Ernest Hemingway published in 1940. It tells the story of Robert Jordan, a young American volunteer attached to a Republican guerrilla unit during the Spanish Civil War. As a dynamiter, he is assigned to blow up a bridge during an attack on the city of Segovia.', 0, 1, 6, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(33, '1400079985', '9780140447934', 'Chiến tranh và hòa bình', 'Chiến tranh và hòa bình là một tiểu thuyết của Lev Nikolayevich Tolstoy, được xuất bản rải rác trong giai đoạn 1865–1869. Tác phẩm được xem là thành tựu văn học xuất sắc nhất của Tolstoy, cũng như một tác phẩm kinh điển của văn học thế giới.', 0, 1, 7, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(34, '1400079985', '9780140447934', 'War and Peace', 'War and Peace is a literary work by Russian author Leo Tolstoy. Set during the Napoleonic Wars, the work mixes fictional narrative with chapters discussing history and philosophy. First published serially beginning in 1865, the work was rewritten and published in its entirety in 1869.', 0, 1, 6, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(35, '0684803356', '9780684803357', 'Anna Karenina', 'Anna Karenina là một tiểu thuyết của nhà văn Nga Lev Nikolayevich Tolstoy, được đăng tải nhiều kỳ trên tờ báo Ruskii Vestnik từ năm 1873 đến năm 1877 trước khi xuất bản thành ấn phẩm hoàn chỉnh. Anna Karenina được xem như là một đỉnh cao của tiểu thuyết hiện thực.', 0, 1, 7, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(36, '0684803356', '9780684803357', 'Anna Karenina', 'Anna Karenina is a novel by the Russian author Leo Tolstoy, first published in book form in 1878. Considered to be one of the greatest works of literature ever written, Tolstoy himself called it his first true novel.', 0, 1, 7, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(37, '0553210351', '9780553210354', 'Cái chết của Ivan Ilyich', 'Cái chết của Ivan Ilyich, xuất bản lần đầu năm 1886, là một tiểu thuyết của Leo Tolstoy, được coi là một trong những kiệt tác của tiểu thuyết cuối cùng của ông, được viết ngay sau khi ông cải đạo vào cuối những năm 1870.', 0, 1, 7, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(38, '0553210351', '9780553210354', 'The Death of Ivan Ilyich', 'The Death of Ivan Ilyich, first published in 1886, is a novella by Leo Tolstoy, considered one of the masterpieces of his late fiction, written shortly after his religious conversion of the late 1870s.', 0, 1, 7, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(39, '0486415872', '9780486415871', 'Tội ác và hình phạt', 'Tội ác và hình phạt là một tiểu thuyết của nhà văn Nga Fyodor Mikhailovich Dostoyevsky. Tiểu thuyết này cùng với Anh em nhà Karamazov là hai tác phẩm nổi tiếng nhất của Dostoevsky. Tạp chí Times đã bình chọn Tội ác và hình phạt là một trong số những cuốn sách vĩ đại nhất mọi thời đại.', 0, 1, 8, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(40, '0486415872', '9780486415871', 'Crime and Punishment', 'Crime and Punishment is a novel by the Russian author Fyodor Dostoevsky. It was first published in the literary journal The Russian Messenger in twelve monthly installments during 1866. It was later published in a single volume.', 0, 1, 8, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(41, '0374528373', '9780374528379', 'Anh em nhà Karamazov', 'Anh em nhà Karamazov là tác phẩm cuối cùng của Fyodor Dostoevsky. Fyodor Dostoevsky thuộc loại thiên tài hiếm hoi mà càng về cuối đời thì sự nghiệp sáng tác càng lên tới đỉnh cao hơn. Anh em nhà Karamazov là tác phẩm vĩ đại nhất của ông.', 0, 2, 8, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(42, '0374528373', '9780374528379', 'The Brothers Karamazov', 'The Brothers Karamazov, also translated as The Karamazov Brothers, is the last novel by Russian author Fyodor Dostoevsky. Dostoevsky spent nearly two years writing The Brothers Karamazov, which was published as a serial in The Russian Messenger from January 1879 to November 1880.', 0, 2, 8, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(43, '0679423141', '9780679734512', 'Ác quỷ', 'Ác quỷ là một cuốn tiểu thuyết của Fyodor Dostoevsky, được xuất bản lần đầu trên tạp chí The Russian Messenger vào năm 1871–72. Nó được coi là một trong bốn kiệt tác được Dostoevsky viết sau khi ông trở về từ cuộc lưu đày ở Siberia, cùng với Tội ác và Trừng phạt, Thằng ngốc và Anh em nhà Karamazov.', 0, 2, 8, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(44, '0679423141', '9780679734512', 'Demons (Dostoevsky novel)', 'Demons is a novel by Fyodor Dostoevsky, first published in the journal The Russian Messenger in 1871–72. It is considered one of the four masterworks written by Dostoevsky after his return from Siberian exile, along with Crime and Punishment, The Idiot, and The Brothers Karamazov.', 0, 2, 8, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(45, '1503215679', '9781503215672', 'Những cuộc phiêu lưu của Tom Sawyer', 'Những cuộc phiêu lưu của Tom Sawyer là một cuốn tiểu thuyết năm 1876 của Mark Twain về một cậu bé lớn lên dọc theo sông Mississippi. Nó lấy bối cảnh vào những năm 1840 tại thị trấn St. Petersburg, dựa trên Hannibal, Missouri, nơi Twain sống khi còn là một cậu bé.', 0, 2, 9, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(46, '1503215679', '9781503215672', 'The Adventures of Tom Sawyer', 'The Adventures of Tom Sawyer is an 1876 novel by Mark Twain about a boy growing up along the Mississippi River. It is set in the 1840s in the town of St. Petersburg, which is based on Hannibal, Missouri, where Twain lived as a boy.', 0, 2, 9, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(47, '0143107321', '9780143107323', 'Những cuộc phiêu lưu của Huckleberry Finn', 'Những cuộc phiêu lưu của Tom Sawyer là một cuốn tiểu thuyết năm 1876 của Mark Twain về một cậu bé lớn lên dọc theo sông Mississippi. Nó lấy bối cảnh vào những năm 1840 tại thị trấn St. Petersburg, dựa trên Hannibal, Missouri, nơi Twain sống khi còn là một cậu bé.', 0, 2, 9, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(48, '0143107321', '9780143107323', 'Adventures of Huckleberry Finn', 'Adventures of Huckleberry Finn is a novel by American author Mark Twain, which was first published in the United Kingdom in December 1884 and in the United States in February 1885.', 0, 2, 9, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(49, '0143107321', '9780679722762', 'Ulysses', 'Ulysses là tiểu thuyết gồm 3 phần của James Joyce xuất bản lần đầu năm 1922. Với ẩn dụ về sử thi Odysseus, thủ pháp dòng ý thức và nội dung được nén chặt bằng những sự kiện miên man trôi theo suy tưởng của các nhân vật diễn ra chỉ trong một ngày 16 tháng 6 năm 1904, tác phẩm được tạp chí Time đánh giá là một trong số những kiệt tác văn chương lớn nhất thế giới thế kỷ 20.', 0, 2, 10, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(50, '0143107321', '9780679722762', 'Ulysses', 'Ulysses is a modernist novel by Irish writer James Joyce. Parts of it were first serialized in the American journal The Little Review from March 1918 to December 1920, and the entire work was published in Paris by Sylvia Beach on 2 February 1922, Joyce\'s fortieth birthday.', 0, 2, 10, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(51, '0140186476', '9780140186475', 'Người Dublin', 'Dubliners là một tuyển tập gồm mười lăm truyện ngắn của James Joyce, được xuất bản lần đầu tiên vào năm 1914. Cuốn sách này mô tả một cách tự nhiên về cuộc sống của tầng lớp trung lưu Ireland trong và xung quanh Dublin trong những năm đầu của thế kỷ 20.', 0, 2, 10, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(52, '0140186476', '9780140186475', 'Người Dublin', 'Dubliners is a collection of fifteen short stories by James Joyce, first published in 1914. It presents a naturalistic depiction of Irish middle class life in and around Dublin in the early years of the 20th century.', 0, 2, 10, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(53, '0141036249', '‎978031601793', 'Những kẻ xuất chúng', 'Những kẻ ngoài lề: Câu chuyện thành công là cuốn sách phi hư cấu do Malcolm Gladwell viết và được Little, Brown and Company xuất bản vào ngày 18 tháng 11 năm 2008. Trong Outlier, Gladwell xem xét các yếu tố góp phần vào mức độ thành công cao.', 0, 2, 11, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(54, '0141036249', '‎978031601793', 'Outliers: The Story of Success', 'Outliers: The Story of Success is the nonfiction book written by Malcolm Gladwell and published by Little, Brown and Company on November 18, 2008. In Outliers, Gladwell examines the factors that contribute to high levels of success.', 0, 2, 11, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(55, '0316346624', '9780316346627', 'Điểm bùng phát', 'Điểm tới hạn: Những điều nhỏ bé có thể tạo nên sự khác biệt lớn như thế nào là cuốn sách đầu tay của Malcolm Gladwell, được Little, Brown xuất bản lần đầu vào năm 2000. Gladwell định nghĩa điểm tới hạn là thời điểm của khối lượng tới hạn, ngưỡng, điểm sôi.', 0, 2, 11, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(56, '0316346624', '9780316346627', 'The Tipping Point: How Little Things Can Make a Big Difference', 'The Tipping Point: How Little Things Can Make a Big Difference is the debut book by Malcolm Gladwell, first published by Little, Brown in 2000. Gladwell defines a tipping point as the moment of critical mass, the threshold, the boiling point.', 0, 2, 11, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(57, '1932407073', '‎978159777611', 'Lý thuyết về tất cả mọi thứ', 'Trong tác phẩm xuất sắc của nhà vật lý Stephen Hawking, Lược sử thời gian, ông đã trình bày cho chúng ta một cái nhìn mới táo bạo về vũ trụ của chúng ta, nó bắt đầu như thế nào và quan điểm cũ của chúng ta về vật lý cũng như các lý thuyết mệt mỏi về sự hình thành vũ trụ không còn phù hợp như thế nào nữa.', 0, 2, 12, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(58, '1932407073', '‎978159777611', 'The illustrated theory of everything: The origin and fate of the universe', 'In physicist Stephen Hawking\'s brilliant opus, A Brief History of Time, he presented us with a bold new look at our universe, how it began, and how our old views of physics and tired theories about the creation of the universe were no longer relevant.', 0, 2, 12, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(59, '0553176986', '9780553380163', 'Lược sử thời gian', 'Điểm tới hạn: Những điều nhỏ bé có thể tạo nên sự khác biệt lớn như thế nào là cuốn sách đầu tay của Malcolm Gladwell, được Little, Brown xuất bản lần đầu vào năm 2000. Gladwell định nghĩa điểm tới hạn là thời điểm của khối lượng tới hạn, ngưỡng, điểm sôi.', 0, 2, 12, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(60, '0553176986', '9780553380163', 'A Brief History of Time', 'A Brief History of Time: From the Big Bang to Black Holes is a book on theoretical cosmology by English physicist Stephen Hawking. It was first published in 1988. Hawking wrote the book for readers who had no prior knowledge of physics.', 0, 2, 12, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(61, '2070257533', '9782070257539', 'Buồn nôn', 'Buồn nôn là một tiểu thuyết triết học của triết gia hiện sinh Jean-Paul Sartre, xuất bản năm 1938. Đây là tiểu thuyết đầu tay của Sartre. Cuốn tiểu thuyết diễn ra ở Bouville, một thị trấn tương tự như Le Havre.', 0, 2, 13, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(62, '2070257533', '9782070257539', 'Nausea', 'Nausea is a philosophical novel by the existentialist philosopher Jean-Paul Sartre, published in 1938. It is Sartre\'s first novel. The novel takes place in \'Bouville\' a town similar to Le Havre.', 0, 2, 13, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(63, '0300115466', '‎978030011546', 'Tồn tại và hư vô', 'L\'Être et le Néant là một tác phẩm lớn, hơn 700 trang sách, của Jean-Paul Sartre, một trong những nhà triết học hàng đầu của Pháp thế kỷ 20, một trong những người sáng lập ra Chủ nghĩa hiện sinh. Lúc L\'Être et le Néant ra đời, chẳng mấy người hiểu nó.', 0, 2, 13, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(64, '0300115466', '‎978030011546', 'Existentialism Is a Humanism', 'Existentialism Is a Humanism is a 1946 work by the philosopher Jean-Paul Sartre, based on a lecture by the same name he gave at Club Maintenant in Paris, on 29 October 1945.', 0, 2, 13, 5, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(65, '0241989698', '9780241989692', 'Những Con Số Biết Nói  71 Câu Chuyện Phơi Bày Sự Thật Về Thế Giới Chúng Ta Đang Sống', 'Chứa đựng những thông tin hấp dẫn và những ví dụ đáng nhớ, Numbers Don\'t Lie tiết lộ cách Hoa Kỳ đang dẫn đầu xu hướng tiêu thụ thịt gà ngày càng tăng trên toàn thế giới, việc tiêm chủng mang lại lợi tức đầu tư tốt nhất và tại sao ô tô điện không tuyệt vời như chúng ta nghĩ.', 0, 2, 14, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(66, '0241989698', '9780241989692', 'Numbers Don\'t Lie: 71 Stories to Help Us Understand the Modern World', 'An essential guide to understanding how numbers reveal the true state of our world–exploring a wide range of topics including energy, the environment, technology, transportation, and food production. Vaclav Smil\'s mission is to make facts matter.', 0, 2, 14, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(67, '0593297067', '‎978059329706', 'How the World Really Works: The Science Behind How We Got Here and Where We\'re Going', 'In How the World Really Works: A Scientist\'s Guide to Our Past, Present and Future, Vaclav Smil explores seven fundamental areas that govern human survival and prosperity, covering topics such as food production, energy and globalisation.', 0, 2, 14, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(68, '0307473333', '9780307473332', 'Vật lý của tương lai', 'Vật lý của tương lai: Khoa học sẽ định hình số phận con người và cuộc sống hàng ngày của chúng ta như thế nào vào năm 2100 là một cuốn sách năm 2011 của nhà vật lý lý thuyết Michio Kaku, tác giả của Hyperspace và Vật lý bất khả thi.', 0, 2, 15, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(69, '0307473333', '9780307473332', 'Vật lý của tương lai', 'Vật lý của tương lai: Khoa học sẽ định hình số phận con người và cuộc sống hàng ngày của chúng ta như thế nào vào năm 2100 là một cuốn sách năm 2011 của nhà vật lý lý thuyết Michio Kaku, tác giả của Hyperspace và Vật lý bất khả thi.', 0, 2, 15, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(70, '0307473333', '9780307473332', 'Physics of the Future', 'Physics of the Future: How Science Will Shape Human Destiny and Our Daily Lives by the Year 2100 is a 2011 book by theoretical physicist Michio Kaku, author of Hyperspace and Physics of the Impossible. In it Kaku speculates about possible future technological development over the next 100 years.', 0, 2, 15, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(72, '0717802418', '9780717802418', 'The Communist Manifesto', 'The Communist Manifesto, originally the Manifesto of the Communist Party, is a political pamphlet written by Karl Marx and Friedrich Engels, commissioned by the Communist League and originally published in London in 1848.', 0, 2, 16, 5, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(73, '0486477487', '9780486477480', 'Capital, Volume I', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0, 2, 16, 5, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(74, '0853150273', '9780853150275', 'Capital, Volume II', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0, 2, 16, 5, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(75, '0679720200', '9780679720201', 'Người xa lạ', 'Người xa lạ là một tiểu thuyết của Albert Camus được viết vào năm 1942. Đây là một tác phẩm lạ thường nói về một người đàn ông bình thường, người mà cuối cùng đã bị tống giam vì tội giết người, và ngồi chờ bị hành hình.', 0, 2, 17, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(76, '0679720200', '9780679720201', 'The Stranger', 'Người xa lạ là một tiểu thuyết của Albert Camus được viết vào năm 1942. Đây là một tác phẩm lạ thường nói về một người đàn ông bình thường, người mà cuối cùng đã bị tống giam vì tội giết người, và ngồi chờ bị hành hình.', 0, 2, 17, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(77, '0525564454', '9780525564454', 'Thần thoại Sisyphus', 'Huyền thoại về Sisyphus là một tiểu luận triết học năm 1942 của Albert Camus. Chịu ảnh hưởng của các triết gia như Søren Kierkegaard, Arthur Schopenhauer và Friedrich Nietzsche, Camus giới thiệu triết lý phi lý của mình.', 0, 2, 17, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(78, '0679720219', '9780679720218', 'Dịch hạch', 'Dịch hạch là một cuốn tiểu thuyết nổi tiếng của Albert Camus xuất bản năm 1947. Một vài nhân vật của Dịch hạch đã xuất hiện trong cuốn sổ tay của Camus viết ở Alger năm 1938. Nhưng hơn cả là ở Oran, Algérie từ cuối năm 1940 đến mùa xuân năm 1942, rồi ở Pháp, Camus đã soạn thảo lại cuốn tiểu thuyết của mình.', 0, 2, 17, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(79, '0679720200', '9780679720201', 'The Stranger', 'The Stranger, also published in English as The Outsider, is a 1942 novella written by French author Albert Camus. The first of Camus\' novels published in his lifetime, the story follows Meursault, an indifferent settler in French Algeria, who, weeks after his mother\'s funeral, kills an unnamed Arab man in Algiers.', 0, 2, 17, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(80, '0525564454', '9780525564454', 'The Myth of Sisyphus', 'The Myth of Sisyphus is a 1942 philosophical essay by Albert Camus. Influenced by philosophers such as Søren Kierkegaard, Arthur Schopenhauer, and Friedrich Nietzsche, Camus introduces his philosophy of the absurd.', 0, 2, 17, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(81, '0679720219', '9780679720218', 'The Plague', 'The Plague is a 1947 absurdist novel by Albert Camus. It tells the story from the point of view of a narrator in the midst of a plague sweeping the French Algerian city of Oran. The narrator remains unknown until the start of the last chapter.', 0, 3, 17, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(82, '030727778X', '9780307277787', 'Giới tính thứ hai', 'Giới tính hạng hai là cuốn sách của nhà triết học hiện sinh người Pháp Simone de Beauvoir, xuất bản năm 1949. Trong cuốn sách, tác giả thảo luận về cách thức phụ nữ bị đối xử trong suốt chiều dài lịch sử. Beauvoir nghiên cứu và viết cuốn sách trong khoảng 14 tháng, từ năm 1946 đến năm 1949.', 0, 3, 18, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(83, '030727778X', '9780307277787', 'The Second Sex', 'The Second Sex is a 1949 book by the French existentialist philosopher Simone de Beauvoir, in which the author discusses the treatment of women in the present society as well as throughout all of history. Beauvoir researched and wrote the book in about 14 months between 1946 and 1949.', 0, 3, 18, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(84, '0140187650', '9780143039884', 'Eichmann ở Jerusalem', 'Eichmann ở Jerusalem: Một phóng sự về Sự Tầm Thường của Cái Ác là cuốn sách xuất bản năm 1963 của nhà lý luận chính trị Hannah Arendt.', 0, 3, 19, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(85, '0140187650', '9780143039884', 'Eichmann in Jerusalem', 'Eichmann in Jerusalem: A Report on the Banality of Evil is a 1963 book by political thinker Hannah Arendt. Arendt, a Jew who fled Germany during Adolf Hitler\'s rise to power, reported on the trial of Adolf Eichmann, one of the major organizers of the Holocaust, for The New Yorker.', 0, 3, 19, 5, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(86, '0156701537', '9780156701532', 'The Origins of Totalitarianism', 'The Origins of Totalitarianism, published in 1951, was Hannah Arendt\'s first major work, wherein she describes and analyzes Nazism and Stalinism as the major totalitarian political movements of the first half of the 20th century.', 0, 3, 19, 5, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(87, '8087888952', '9788087888957', 'On Violence', 'An analysis of the nature, causes, and significance of violence in the second half of the twentieth century. Arendt also reexamines the relationship between war, politics, violence, and power.', 0, 3, 19, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(88, '0618249060', '9780618249060', 'Mùa xuân vắng lặng', 'Mùa xuân vắng lặng là một cuốn sách về đề tài khoa học môi trường của Rachel Carson. Tác phẩm được xuất bản vào ngày 27 tháng 9 năm 1962 và ghi lại những tác động xấu đến môi trường do sử dụng bừa bãi thuốc bảo vệ thực vật.', 0, 3, 20, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(89, '0618249060', '9780618249060', 'Silent Spring', 'Silent Spring is an environmental science book by Rachel Carson. Published on September 27, 1962, the book documented the environmental harm caused by the indiscriminate use of pesticides.', 0, 3, 20, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(90, '1433207222', '9780067575208', 'The Sense of Wonder', 'The Sense of Wonder relates Carson\'s intimate account of adventures with her young nephew, Roger, as they enjoy walks along the rocky coast of Maine and through dense forests and open fields, observing wildlife, strange plants, moonlight, and storm clouds and listening to the living music of insects in the underbrush.', 0, 3, 20, 4, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(91, '9786041004757', '9786041004757', 'Cho tôi xin một vé đi tuổi thơ', 'Cho tôi xin một vé đi tuổi thơ là truyện ngắn của nhà văn Nguyễn Nhật Ánh. Tác phẩm là một trong những sáng tác thành công nhất của ông và nhận được Giải thưởng Văn học ASEAN của năm 2010. Nguyễn Nhật Ánh viết ở mặt sau cuốn sách. Tôi viết cuốn sách này không dành cho trẻ em. Tôi viết cho những ai từng là trẻ em.', 0, 3, 21, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(92, '9786041004757', '9786041004757', 'Mắt biếc', 'Mắt biếc là tiểu thuyết của nhà văn Nguyễn Nhật Ánh trong loạt truyện viết về tình yêu thanh thiếu niên của tác giả này cùng với Thằng quỷ nhỏ, Cô gái đến từ hôm qua,... Đây được xem là một trong những tác phẩm tiêu biểu của Nguyễn Nhật Ánh.', 0, 3, 21, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(93, '9786041000698', '9786041000698', 'Tôi thấy hoa vàng trên cỏ xanh', 'Tôi thấy hoa vàng trên cỏ xanh là một tiểu thuyết dành cho thanh thiếu niên của nhà văn Nguyễn Nhật Ánh, xuất bản lần đầu tại Việt Nam vào ngày 9 tháng 12 năm 2010 bởi Nhà xuất bản Trẻ với phần tranh minh họa do Đỗ Hoàng Tường thực hiện.', 0, 3, 21, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(94, '9786041004689', '9786041004689', 'Cánh đồng bất tận', 'Cánh đồng bất tận là tên một tập truyện ngắn phát hành năm 2005 của Nguyễn Ngọc Tư, đồng thời cũng là tên một truyện trong tập truyện ngắn đó được đăng báo lần đầu cùng năm.', 0, 3, 22, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(95, '9786041005167', '9786041005167', 'Ngọn đèn không tắt', 'Cuốn sách “Ngọn Đèn Không Tắt” của tác giả Nguyễn Ngọc Tư là một tập truyện ngắn đầy hấp dẫn và thuyết phục về thanh niên hôm nay trên mọi mặt đời sống. Tác phẩm được viết với giọng văn mộc mạc, bình dị và ngôn ngữ đời thường, tạo nên một không khí tự nhiên về màu sắc và hương vị của mảnh đất cuối cùng của tổ quốc.', 0, 3, 22, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(96, '9786043943078', '9786043943078', 'Hai Đứa Trẻ', 'Cuốn sách tập hợp những truyện ngắn đặc sắc của nhà văn Thạch Lam: Nắng trong vườn, Gió lạnh đầu mùa, Tiếng chim kêu, Đứa con đầu lòng, Bắt đầu, Nhà mẹ Lê, Một cơn giận, Hai đứa trẻ, Đứa con, Trong bóng tối buổi chiều, Cuốn sách bỏ quên, Dưới bóng hoàng lan,...', 0, 3, 23, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(97, '9786042198097', '9786042198097', 'Hà Nội Băm Sáu Phố Phường', 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.', 0, 3, 23, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(98, '9780472068043', '9780472068043', 'Số Đỏ', 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.', 0, 3, 24, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(99, '9786049638428', '9786049638428', 'Làm Đĩ', 'Làm đĩ là một cuốn tiểu thuyết của nhà văn Việt Nam Vũ Trọng Phụng, tác phẩm được viết vào năm 1936 và xuất bản vào năm 1937. Đây được coi là cuốn tiểu thuyết đầu tiên của Việt Nam đề cập đến vấn đề mại dâm.', 0, 3, 24, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(100, '9786045326121', '9786045326121', 'Chí Phèo', 'Chí Phèo là một truyện ngắn nổi tiếng của nhà văn Nam Cao viết vào tháng 2 năm 1941. Chí Phèo là một tác phẩm xuất sắc, thể hiện nghệ thuật viết truyện độc đáo của Nam Cao, đồng thời là một tấn bi kịch của một người nông dân nghèo bị tha hóa trong xã hội. Chí Phèo cũng là tên nhân vật chính của truyện.', 0, 3, 25, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(101, '9786043724943', '9786043724943', 'Lão Hạc', 'Lão Hạc là một truyện ngắn của nhà văn Nam Cao được viết năm 1943. Tác phẩm được đánh giá là một trong những truyện ngắn khá tiêu biểu của dòng văn học hiện thực, nội dung truyện đã phần nào phản ánh được hiện trạng xã hội Việt Nam trong giai đoạn trước Cách mạng tháng Tám.', 0, 3, 25, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(102, '9786045342411', '9786045342411', 'Bức xúc không làm ta vô can', 'Bức xúc không làm ta vô can chính là cuốn sách đầu tiên về thể loại chính luận mà tác giả luôn theo đuổi, một tác phẩm mang tinh phần phản biện xã hội sâu sắc. Sách được xuất bản năm 2015, là tập hợp những bài bình về các vấn đề trong xã hội, các vấn đề về văn hóa, những hiện tượng xã hội đương thời.', 0, 3, 26, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(103, '9786045342411', '9786045342411', 'Điểm đến của cuộc đời: đồng hành với người cận tử và những bài học cho cuộc sống', 'Điểm đến của cuộc đời kể lại một hành trình không thể nào quên cùng những người cận tử. Dấn thân vào một thế giới của những bi kịch và tổn thất khổng lồ, của phẩm giá và lòng tự trọng trong hoàn cảnh khắc nghiệt, của sự phản bội và sợ hãi, của tình yêu mãnh liệt và hy vọng khôn nguôi, tóm lại, của tất cả những gì thuộc về con người, ở mức độ dữ dội nhất, tác giả muốn đi tìm câu trả lời cho thôi thúc nội tâm: ta nên ứng xử thế nào trước cái chết, và sự chết có thể dạy ta điều gì cho cuộc sống?', 0, 3, 26, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(104, '9786042262279', '9786042262279', 'Dế Mèn phiêu lưu ký', 'Dế Mèn phiêu lưu ký là tác phẩm văn xuôi đặc sắc và nổi tiếng nhất của nhà văn Tô Hoài viết về loài vật, dành cho lứa tuổi thiếu nhi. Ban đầu truyện có tên là Con dế mèn do Nhà xuất bản Tân Dân, Hà Nội phát hành năm 1941. Sau đó, được sự ủng hộ nhiệt tình của nhân dân, Tô Hoài viết thêm truyện Dế Mèn phiêu lưu ký.', 0, 3, 27, 1, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(105, '8935212327985', '8935212327985', 'Tắt đèn', 'Tắt đèn là một trong những tác phẩm văn học tiêu biểu nhất của nhà văn Ngô Tất Tố. Đây là một tác phẩm văn học hiện thực phê phán với nội dung nói về cuộc sống khốn khổ của tầng lớp nông dân Việt Nam đầu thế kỉ XX dưới ách đô hộ của thực dân Pháp.', 0, 3, 28, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(106, '9786043943283', '9786043943283', 'Lều chõng', 'Lều chõng là một tiểu thuyết phóng sự của nhà văn Ngô Tất Tố, ra mắt độc giả lần đầu ngày 10 tháng 3 năm 1939 tại Hà Nội.', 0, 3, 28, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(107, '8936067604634', '8936067604634', 'Truyện Kiều', 'Đoạn trường tân thanh, thường được biết đến với cái tên đơn giản là Truyện Kiều, là một truyện thơ của đại thi hào Nguyễn Du. Đây được xem là truyện thơ nổi tiếng nhất và xét vào hàng kinh điển trong văn học Việt Nam, tác phẩm được viết bằng chữ Nôm, theo thể lục bát, gồm 3.254 câu.', 0, 3, 29, 3, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(108, '8935081111609', '8935081111609', 'Hiện Tượng Học Tinh Thần', 'Có thể khẳng định một cách chắc chắn rằng Hiện tượng học Tinh thần là một trong các tác phẩm khó nhất và tham vọng nhất trong kho tàng triết văn thế giới. Tuy thế, bất chấp nhận định của W. Winderlband hơn 100 năm trước “Giống người đã có thể hiểu được quyển Hiện tượng học Tinh thần của Hegel đang trên đà tuyệt chủng. Giờ đây, ngay số người đã chịu khó đọc tác phẩm ấy từ đầu đến cuối chắc cũng chỉ còn đếm được trên đầu ngón tay mà thôi” thì Hiện tượng học Tinh thần vẫn cứ tiếp tục có ma lực dị thường. Và muốn tìm hiểu về Hegel không còn cách nào khác chúng ta phải bắt đầu với Hiện tượng học Tinh thần – tác phẩm lớn đầu tiên và cũng là tác phẩm thiên tài nhất của ông.', 0, 3, 30, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(109, '8935081112804', '8935081112804', 'Trò Chuyện Triết Học Tập 1', 'Ở nơi chợ búa ồn ã bán mua, nơi chợ đời bụi bặm, triết học héo lánh tới làm gì, có héo lánh tới nổi không? Hẳn nhiều người đã không khỏi ái ngại, đặt ra câu hỏi ấy khi thấy trên tờ Sài Gòn Tiếp Thị  mà như tên gọi của nó, là cầu nối giữa doanh nghiệp và người tiêu dùng, nơi tiếp cận thị trường của doanh nghiệp, nói cách khác là một thứ chợ - xuất hiện một chuyên mục gọi là Trò chuyện triết học. Với nhiều người, triết học là cái gì đó cao siêu, xa vời, chỉ có thể kính nhi viễn chi chứ chẳng ăn nhập gì với cuộc sống trần trụi, với thời buổi mà con người phải lặn hụp mệt nhoài trong cuộc mưu sinh, phải nhanh mắt nhanh tay chụp giựt cho mình những thứ có thể chụp giựt được, phải đối diện với bao nhiêu câu hỏi, bao nhiêu thách thức của cuộc sống trước mặt. Nói tóm lại, triết học là cái gì đó vô bổ, chỉ để dành cho những kẻ rỗi hơi.', 0, 3, 30, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(110, '8935081112491', '8935081112491', 'Trò Chuyện Triết Học (Tập 2)', 'Triết học là một môn học không khó nhưng để nói chuyện về triết học cho mọi người nghe, mọi người cùng hiểu thì không phải dễ. Nhà nghiên cứu Bùi Văn Nam Sơn đã làm được điều ở vế thứ hai thông qua cuốn sách quý này. Đây không phải là cuốn sách nhập môn triết học và cũng không hẳn là cuốn sách về lịch sử triết học, tuy nhiên nó có đủ các yếu tố của 2 loại sách đó.', 0, 3, 30, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(111, '978604943352', '978604943352', 'Trò Chuyện Triết Học (Tập 3)', 'Trò Chuyện Triết Học tiếp tục tập hợp các bài viết từ nhiều thời điểm và cơ hội khác nhau. Có khi là lời giới thiệu hay lời bạt cho những quyển sách hay. Có khi là phần đóng góp nhỏ bé của tác giả cho các tập Kỷ yếu mừng các danh nhân văn hóa - khoa học trong nước và các sự kiện văn hóa lớn trên thế giới. Có khi là những bài báo, bài trả lời phỏng vấn... trong nhiều dịp khác nhau. Chúng được tập hợp và sắp xếp không theo trình tự thời gian hay một định hướng có trước nào cả. Để giữ được tính ngẫu hứng, đa dạng và... vui vẻ!', 0, 3, 30, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(112, '8935081112491', '8935081112491', 'Trò chuyện triết học trọn bộ 9 tập', 'Những người đọc không chuyên có thể dễ dàng tìm hiểu về triết học, các khái niệm cơ bản của triết học, các trào lưu và các triết gia kinh điển thông qua những lời văn nhẹ nhàng, cô đọng và hóm hỉnh. Qua cuốn sách, bạn đọc có thể hiểu được triết học là gì và lợi ích của nó đối với cuộc sống thường nhật. Tuy nhiên, tác giả không định nghĩa nó rõ ràng như cách thông thường người ta hay làm, việc hiểu được khái niệm là sản phẩm của quá trình tư duy - biết - hiểu - cảm - ngộ mà tác giả là người thầy, người dẫn đường tin cậy và uyên thâm: cung cấp tư liệu, hướng dẫn phương pháp và giảng giải một cách dễ hiểu nhất. Không thể có triết học nếu không có sự tự giải phóng tâm hồn. Điều ấy đòi hỏi sự dũng cảm, kể cả sự dũng cảm dấn mình vào chỗ bấp bênh, nghi ngờ, thất vọng.', 0, 3, 30, 2, '2023-11-19 02:38:10', '2023-11-19 02:38:10'),
(113, '9781408855652', '9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 0, 3, 3, 4, '2023-11-19 02:52:41', '2023-11-19 02:52:41'),
(114, '0747538492', '9781338878936', 'Harry Potter and the Chamber of Secrets', 'The Chamber is flanked with towering pillars entwined with carved wood, and a tall statue of Salazar Slytherin is at the far end. The basilisk rests within the mouth of the statue, possibly symbolising Salazar Slytherin\'s ability to speak Parseltongue. Sometime before 1992, the chamber flooded with water.', 0, 3, 3, 4, '2023-11-19 02:52:41', '2023-11-19 02:52:41'),
(115, '0747542155', '9781338815283', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.', 0, 3, 3, 4, '2023-11-19 02:52:41', '2023-11-19 02:52:41'),
(116, '0439139597', '9780439139595', 'Harry Potter and the Goblet of Fire', 'The novels follow Harry Potter, an 11yearold boy who discovers he is the son of famous wizards and will attend Hogwarts School of Witchcraft and Wizardry. Harry learns of an entire society of wizards and witches. He befriends several Hogwarts students and teachers along his journey.', 0, 3, 3, 4, '2023-11-19 02:52:41', '2023-11-19 02:52:41'),
(117, '9780439358064', '9780439358064', 'Harry Potter and the Order of the Phoenix', 'It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', 0, 3, 3, 4, '2023-11-19 02:52:41', '2023-11-19 02:52:41'),
(118, '9781408855652', '9781408855652', 'Harry Potter and the HalfBlood Prince', 'owling, J. K. In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.', 0, 3, 3, 4, '2023-11-19 02:52:41', '2023-11-19 02:52:41'),
(119, '0545010225', '9780545010221', 'Harry Potter and the Deathly Hallows', 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.', 0, 3, 3, 4, '2023-11-19 02:52:41', '2023-11-19 02:52:41'),
(120, '0545010225', '9780545010221', 'The God Equation', 'The God Equation: The Quest for a Theory of Everything is a popular science book by the futurist and physicist Michio Kaku. The book was initially published on April 6, 2021, by Doubleday. The book debuted at number six on The New York Times nonfiction best-seller list for the week ending April 10, 2021.', 0, 3, 15, 4, '2023-11-19 02:52:41', '2023-11-19 02:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `categ_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `bk_id`, `categ_id`, `creation_date`, `update_date`) VALUES
(1, 1, 1, '2023-11-19 03:05:49', '2023-11-19 03:05:49'),
(2, 1, 9, '2023-11-19 03:05:49', '2023-11-19 03:05:49'),
(3, 2, 1, '2023-11-19 03:06:34', '2023-11-19 03:06:34'),
(4, 2, 10, '2023-11-19 03:06:34', '2023-11-19 03:06:34'),
(5, 3, 1, '2023-11-19 03:08:09', '2023-11-19 03:08:09'),
(6, 3, 9, '2023-11-19 03:08:09', '2023-11-19 03:08:09'),
(7, 4, 1, '2023-11-19 03:08:09', '2023-11-19 03:08:09'),
(8, 4, 10, '2023-11-19 03:08:09', '2023-11-19 03:08:09'),
(9, 5, 1, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(10, 5, 9, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(11, 6, 1, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(12, 6, 10, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(13, 7, 1, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(14, 7, 10, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(15, 8, 1, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(16, 8, 9, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(17, 9, 1, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(18, 9, 10, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(19, 10, 1, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(20, 10, 9, '2023-11-19 03:13:04', '2023-11-19 03:13:04'),
(21, 41, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(22, 41, 9, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(23, 42, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(24, 42, 10, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(25, 43, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(26, 43, 9, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(27, 44, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(28, 44, 10, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(29, 45, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(30, 45, 9, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(31, 46, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(32, 46, 10, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(33, 47, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(34, 47, 9, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(35, 48, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(36, 48, 10, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(37, 49, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(38, 49, 9, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(39, 50, 1, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(40, 50, 10, '2023-11-19 03:18:21', '2023-11-19 03:18:21'),
(41, 81, 1, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(42, 81, 4, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(43, 81, 10, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(44, 82, 2, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(45, 82, 4, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(46, 82, 9, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(47, 83, 2, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(48, 83, 4, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(49, 83, 10, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(50, 84, 2, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(51, 84, 4, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(52, 84, 6, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(53, 84, 9, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(54, 85, 2, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(55, 85, 4, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(56, 85, 6, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(57, 85, 10, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(58, 86, 2, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(59, 86, 3, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(60, 86, 4, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(62, 86, 6, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(63, 86, 10, '2023-11-19 03:27:59', '2023-11-19 03:27:59'),
(64, 87, 2, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(66, 87, 10, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(67, 88, 2, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(68, 88, 3, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(69, 88, 8, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(70, 88, 9, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(71, 89, 2, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(72, 89, 3, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(73, 89, 8, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(74, 89, 10, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(75, 90, 2, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(76, 90, 8, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(77, 90, 10, '2023-11-19 03:33:52', '2023-11-19 03:33:52'),
(78, 90, 4, '2023-11-19 03:33:52', '2023-11-19 03:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `book_images`
--

CREATE TABLE `book_images` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categ_name` varchar(50) NOT NULL,
  `categ_description` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categ_name`, `categ_description`, `creation_date`, `update_date`) VALUES
(1, 'Văn học & Tiểu thuyết', 'Tiểu thuyết là một thể loại văn xuôi có hư cấu, thông qua nhân vật, hoàn cảnh, sự việc để phản ánh bức tranh xã hội rộng lớn và những vấn đề của cuộc sống con người, biểu hiện tính chất tường thuật, tính chất kể chuyện bằng ngôn ngữ văn xuôi theo những chủ đề xác định.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(2, 'Phi hư cấu', 'Phi hư cấu, phi viễn tưởng hay phi giả tưởng (tiếng Anh: Non-fiction hoặc Nonfiction) là những nội dung (content) có thật, thể hiện các sự kiện, sự vật,... trong thực tế. Người tạo ra nội dung phi hư cấu cần đảm bảo được độ chính xác của các sự kiện, con người, hay thông tin mình trình bày.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(3, 'Lịch sử', 'Lịch sử, sử học hay gọi tắt là sử là một môn khoa học xã hội nghiên cứu về quá khứ, đặc biệt là những sự kiện liên quan đến con người. Đây là thuật ngữ chung có liên quan đến các sự kiện trong quá khứ cũng như những ghi nhớ, phát hiện, thu thập, tổ chức, trình bày, giải thích và thông tin về những sự kiện này. Những học giả viết về lịch sử được gọi là nhà sử học. Các sự kiện xảy ra trước khi được ghi chép lại được coi là thời tiền sử.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(4, 'Triết học', 'Triết học là bộ môn nghiên cứu về những vấn đề chung và cơ bản của con người, thế giới quan và vị trí của con người trong thế giới quan, những vấn đề có kết nối với chân lý, sự tồn tại, kiến thức, giá trị, quy luật, ý thức, và ngôn ngữ. Triết học được phân biệt với những môn khoa học khác bằng cách thức mà nó giải quyết những vấn đề trên, đó là ở tính phê phán, phương pháp tiếp cận có hệ thống chung nhất và sự phụ thuộc của nó vào tính duy lý trong việc lập luận.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(5, 'Tâm lý học', 'Tâm lý học (tiếng Anh: psychology) là ngành khoa học nghiên cứu về tâm trí và hành vi, tìm hiểu về các hiện tượng ý thức và vô thức, cũng như cảm xúc và tư duy. Đây là một bộ môn học thuật với quy mô nghiên cứu rất sâu rộng.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(6, 'Chính trị', 'Chính trị (Tiếng Anh: politics) là hoạt động trong lĩnh vực quan hệ giữa các giai cấp, cũng như các dân tộc và các quốc gia với vấn đề giành, giữ, tổ chức và sử dụng quyền lực Nhà nước; là sự tham gia của nhân dân vào công việc của Nhà nước và xã hội, là hoạt động chính trị thực tiễn của giai cấp, các đảng phái chính trị, các nhà nước nhằm tìm kiếm những khả năng thực hiện đường lối và những mục tiêu đã đề ra nhằm thỏa mã	n lợi ích.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(7, 'Kinh tế & Tài chính', 'Kinh tế tài chính, còn được gọi là tài chính, là một nhánh của kinh tế học được đặc trưng bởi sự tập trung vào các hoạt động tiền tệ, trong đó tiền của loại này hay loại khác có khả năng xuất hiện ở cả hai phía của giao dịch.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(8, 'Khoa học', 'Sách khoa học là một tác phẩm phi hư cấu, thường được viết bởi một nhà khoa học, nhà nghiên cứu hoặc giáo sư như Stephen Hawking (A Brief History of Time), hoặc đôi khi bởi một người không phải là nhà khoa học như Bill Bryson (A Short History of Near Everything).', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(9, 'Tiếng Việt', 'Đắm chìm trong tấm thảm văn hóa phong phú của Việt Nam với cuốn sách hấp dẫn này. Thông qua cách kể chuyện sống động và văn xuôi giàu sức gợi, câu chuyện mở ra trong bối cảnh lịch sử, truyền thống và phong cảnh của Việt Nam. Từ những con phố nhộn nhịp của Hà Nội đến vẻ đẹp thanh bình của Vịnh Hạ Long, cuốn sách đưa người đọc vào hành trình khám phá sự phức tạp trong mối quan hệ giữa con người với nhau, sự kiên cường của tinh thần con người và sức hấp dẫn vượt thời gian của di sản đầy mê hoặc của Việt Nam. Cho dù bạn bị cuốn hút bởi những câu chuyện về tình yêu, gia đình hay việc theo đuổi ước mơ, cuốn sách tiếng Việt này sẽ dệt nên một câu chuyện hấp dẫn, cộng hưởng với tính xác thực và trái tim.', '2023-11-18 08:43:07', '2023-11-18 08:43:07'),
(10, 'Tiếng Anh', 'Dive into the diverse world of English literature with our captivating collection of books. From classic novels that have stood the test of time to contemporary bestsellers that explore the complexities of modern life, our English book category caters to all literary tastes. Immerse yourself in gripping narratives, explore imaginative worlds, and engage with compelling characters as you traverse the vast landscapes of fiction, non-fiction, and everything in between. Whether you seek thrilling mysteries, thought-provoking dramas, or insightful self-help, our curated selection ensures there\'s something for every reader to discover and enjoy within the rich and ever-expanding realm of English literature.', '2023-11-18 08:43:07', '2023-11-18 08:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `cmt_ratings` int(1) NOT NULL,
  `usr_message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` int(11) NOT NULL,
  `fm_name` text NOT NULL,
  `fm_description` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `fm_name`, `fm_description`, `creation_date`, `update_date`) VALUES
(1, 'Sách giấy', 'Sách là một loạt các tờ giấy có chữ hoặc hình ảnh được viết tay hoặc in ấn, được buộc hoặc dán với nhau về cùng một phía. Mỗi mặt của một tờ trong các tờ này được gọi là một trang sách.', '2023-11-18 06:25:03', '2023-11-18 06:25:03'),
(2, 'eBooks', 'Sách điện tử là một cuốn sách ở định dạng kỹ thuật số. Trong suốt lịch sử, sách là những văn bản được viết nguệch ngoạc bằng tay, in hàng loạt với kiểu chữ có thể di chuyển được, đọc to dưới dạng sách nói, sao chụp, mua, mượn, chú thích và lập chỉ mục. Và giờ đây, sách có thể được đọc trực tuyến trên nhiều loại thiết bị ở mọi nơi, mọi lúc!', '2023-11-18 06:25:03', '2023-11-18 06:25:03'),
(3, 'Sách nói', 'Sách nói là một hình thức truyền tải thông tin nằm trong một cuốn sách. Giống như với sách in trên giấy hay sách điện tử, thông tin được giữ nguyên và thể hiện một cách chân thực. Người dùng sách nói sẽ nghe một người đọc sách thành tiếng thông qua các phương tiện truyền thông hay các ứng dụng thông minh.', '2023-11-18 06:25:03', '2023-11-18 06:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `delivery_note` text NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `total_order` float(11,3) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pm_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `pm_name` varchar(50) NOT NULL,
  `pm_note` text NOT NULL,
  `pm_method` int(1) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `pub_name` text NOT NULL,
  `pub_gmail` varchar(50) NOT NULL,
  `pub_logo` varchar(255) NOT NULL,
  `pub_description` text NOT NULL,
  `pub_address` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `pub_name`, `pub_gmail`, `pub_logo`, `pub_description`, `pub_address`, `creation_date`, `updation_date`) VALUES
(1, 'Nhà Xuất Bản Nhã Nam', 'bookstore@nhanam.vn', '', 'Công ty Cổ phần Văn hóa và Truyền thông Nhã Nam, thường gọi tắt là Nhã Nam là doanh nghiệp hoạt động trong lĩnh vực kinh doanh dịch vụ văn hóa và xuất bản phẩm tại Việt Nam. Công ty được thành lập vào năm 2005 với một nhóm nòng cốt say mê văn chương, sách vở, cuốn sách best-seller đầu tiên là Nhật ký Đặng Thùy Trâm, tiêu thụ 500.000 bản ngay trong năm đầu tiên. Cuốn sách đã tạo nên một cú huých cực mạnh đưa cái tên Nhã Nam đến với nhiều độc giả hơn, đánh dấu thời kỳ chuyển mình của thương hiệu này.', '59 Đỗ Quang, Trung Hòa, Cầu Giấy, Hà Nội', '2023-11-18 08:23:35', '2023-11-18 08:23:35'),
(2, 'Nhà Xuất Bản Tri Thức', 'lienhe@nxbtrithuc.com.vn', '', 'Nhà xuất bản Tri thức là nhà xuất bản Việt Nam thành lập vào tháng 9 năm 2005 trực thuộc Liên hiệp các Hội Khoa học và Kỹ thuật Việt Nam.', 'Tầng 1 - Tòa nhà Liên hiệp các Hội Khoa học và Kỹ thuật Việt Nam - Lô D20 - ngõ 19 Duy Tân - quận Cầu Giấy - Hà Nội - Việt Nam', '2023-11-18 08:23:35', '2023-11-18 08:23:35'),
(3, 'Nhà Xuất Bản Trẻ', 'chinhanhdongnambo@nxbtre.com.vn', '', 'Nhà xuất bản Trẻ là một đơn vị chuyên xuất bản và phát hành sách nhiều thể loại có trụ sở chính tại Thành phố Hồ Chí Minh.', '', '2023-11-18 08:23:35', '2023-11-18 08:23:35'),
(4, 'Nhà Xuất Bản Penguin Books Ltd', 'global.penguinrandomhouse.com', '', '20 Vauxhall Bridge Rd, London, United Kingdoma', 'Penguin Group là nhà xuất bản sách thương mại của Anh và là một phần của Penguin Random House, thuộc sở hữu của tập đoàn truyền thông Đức Bertelsmann. Công ty mới được thành lập thông qua một vụ sáp nhập hoàn tất vào ngày 1 tháng 7 năm 2013, với Bertelsma', '2023-11-18 08:23:35', '2023-11-18 08:23:35'),
(5, 'Nhà Xuất Bản Delphi Classics', 'global.delphiclassics.com', '', 'Sách điện tử của Delphi Classics cũng được minh họa đẹp mắt bằng hình ảnh về các nhà văn, cuộc đời và tác phẩm của họ. Ví dụ, hình ảnh về nơi sinh, những bức ảnh về các giai đoạn khác nhau trong cuộc đời của họ và những bức ảnh về nơi an nghỉ cuối cùng của họ được pha trộn với những hình ảnh minh họa gốc đi kèm với tiểu thuyết của họ.', '122 Stonegate Dr, Landenberg, Pennsylvania, 19350, United States', '2023-11-18 08:23:35', '2023-11-18 08:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_details`
--

CREATE TABLE `rent_details` (
  `id` int(11) NOT NULL,
  `total_rent` float(11,3) NOT NULL,
  `rent_id` int(11) NOT NULL,
  `pm_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usr_email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `fullname` text NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `usr_address` varchar(255) DEFAULT NULL,
  `is_admin` int(1) NOT NULL DEFAULT 0,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usr_email`, `username`, `password`, `avatar`, `fullname`, `phone`, `usr_address`, `is_admin`, `register_date`, `updation_date`) VALUES
(1, 'prometheusAdmin@gmail.com', 'prometheus_admin', '4a7d1ed414474e4033ac29ccb8653d9b', '', 'Prometheus_Admin', '0123456789101', NULL, 1, '2023-11-13 11:09:26', '2023-11-13 11:09:26'),
(2, 'quypcps30162@fpt.edu.vn', 'phancaoquy', '1111', '', 'Phan Cao Quý', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(3, 'anhphtps30161@fpt.edu.vn', 'phtanh', '1111', '', 'Phạm Hoàng Tuấn Anh', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(4, 'binhntps30045@fpt.edu.vn', 'ngothanhbinh', '1111', '', 'Ngô Thanh Bình', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(5, 'thanhtvps30348@fpt.edu.vn', 'tranvanthanh', '1111', '', 'Trần Văn Thành', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(6, 'tudmps30280@fpt.edu.vn', 'duongminhtu', '1111', '', 'Dương Minh Tú', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(7, 'tanndps30344@fpt.edu.vn', 'nguyenductan', '1111', '', 'Nguyễn Đức Tấn', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_books_auid_authors_id` (`au_id`),
  ADD KEY `fk_books_pubid_publishersid` (`pub_id`),
  ADD KEY `fk_books_fmid_bookformats_id` (`fm_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bookcategories_bkid_books_id` (`bk_id`),
  ADD KEY `fk_bookcategories_categid_categories_id` (`categ_id`);

--
-- Indexes for table `book_images`
--
ALTER TABLE `book_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bookimages_bookid_books_id` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_bookid_books_id` (`book_id`),
  ADD KEY `fk_comment_userid_users_id` (`user_id`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_bookid_books_id` (`book_id`),
  ADD KEY `fk_orders_userid_users_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderdetails_orderid_orders_id` (`order_id`),
  ADD KEY `fk_orderdetails_pmid_paymentmethods_id` (`pm_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rents_userid_users_id` (`user_id`),
  ADD KEY `fk_rents_bookid_books_id` (`book_id`);

--
-- Indexes for table `rent_details`
--
ALTER TABLE `rent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rentdetails_rentid_rents_id` (`rent_id`),
  ADD KEY `fk_rentdetails_pmid_paymentmethods_id` (`pm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=657;

--
-- AUTO_INCREMENT for table `book_images`
--
ALTER TABLE `book_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_details`
--
ALTER TABLE `rent_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books_auid_authors_id` FOREIGN KEY (`au_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `fk_books_fmid_bookformats_id` FOREIGN KEY (`fm_id`) REFERENCES `formats` (`id`),
  ADD CONSTRAINT `fk_books_pubid_publishersid` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`id`);

--
-- Constraints for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD CONSTRAINT `fk_bookcategories_bkid_books_id` FOREIGN KEY (`bk_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_bookcategories_categid_categories_id` FOREIGN KEY (`categ_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `book_images`
--
ALTER TABLE `book_images`
  ADD CONSTRAINT `fk_bookimages_bookid_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comment_bookid_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_comment_userid_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_bookid_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_orders_userid_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_orderdetails_orderid_orders_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_orderdetails_pmid_paymentmethods_id` FOREIGN KEY (`pm_id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `fk_rents_bookid_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_rents_userid_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rent_details`
--
ALTER TABLE `rent_details`
  ADD CONSTRAINT `fk_rentdetails_pmid_paymentmethods_id` FOREIGN KEY (`pm_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `fk_rentdetails_rentid_rents_id` FOREIGN KEY (`rent_id`) REFERENCES `rents` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
