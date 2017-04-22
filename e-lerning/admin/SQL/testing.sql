-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2013 at 10:13 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `AnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `QuestionID` int(100) NOT NULL,
  `Answer` varchar(500) NOT NULL,
  PRIMARY KEY (`AnswerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`AnswerID`, `QuestionID`, `Answer`) VALUES
(49, 13, 'เกาหลีเหนือ '),
(50, 13, 'ญี่ปุ่น'),
(51, 13, 'ภูเขา'),
(52, 13, 'ทะเล'),
(53, 14, 'ยูกาตะ'),
(54, 14, 'ฮันบก'),
(55, 14, 'กิโมโน'),
(56, 14, 'เทควันโด้'),
(57, 15, 'ดนตรี'),
(58, 15, 'นากฏศิลป์'),
(59, 15, 'จิตรกรรม'),
(60, 15, 'เครื่องเบญจรงค์'),
(61, 16, 'ข้าวเหนียว'),
(62, 16, 'ซูชิ'),
(63, 16, 'กิมจิ'),
(64, 16, 'พาสต้า'),
(65, 17, '11'),
(66, 17, '12'),
(67, 17, '13'),
(68, 17, '14'),
(69, 18, 'ㅁ'),
(70, 18, 'ㄱ'),
(71, 18, 'ㅍ'),
(72, 18, 'ㄴ'),
(73, 19, 'ㅁ'),
(74, 19, 'ㄹ'),
(75, 19, 'ㄷ'),
(76, 19, 'ㅅ'),
(77, 20, '4'),
(78, 20, '5'),
(79, 20, '6'),
(80, 20, '7'),
(81, 21, 'อู'),
(82, 21, 'ยู'),
(83, 21, 'โอ'),
(84, 21, 'โย'),
(85, 22, 'อา'),
(86, 22, 'ยา'),
(87, 22, 'ออ'),
(88, 22, 'ยอ'),
(89, 23, 'ฉันกินข้าว'),
(90, 23, 'กรุณาช่วยฉันหน่อย'),
(91, 23, 'ยินดีที่ได้พบ'),
(92, 23, 'สวัสดี'),
(93, 24, '저는 밥을 먹습니다'),
(94, 24, '안녕하세요'),
(95, 24, '감사합니다'),
(96, 24, '고맙습니다'),
(97, 25, 'ขยายประธาน'),
(98, 25, 'ขยายกรรม'),
(99, 25, 'จบประโยค'),
(100, 25, 'กล่าวลา'),
(101, 26, '을'),
(102, 26, '는'),
(103, 26, '저'),
(104, 26, '습니다'),
(105, 27, 'ฉัน'),
(106, 27, 'อ่าน'),
(107, 27, 'จดหมาย'),
(108, 27, 'เธอ'),
(109, 28, 'ทำอะไร'),
(110, 28, 'กำลังไป'),
(111, 28, 'กำลังมา'),
(112, 28, 'กำลังนอน'),
(113, 29, '1'),
(114, 29, '2'),
(115, 29, '3'),
(116, 29, '4'),
(117, 30, 'ราตรีสวัสดิ์'),
(118, 30, 'สวัสดี'),
(119, 30, 'ยินดีที่ได้พบ'),
(120, 30, 'โปรดช่วยฉัน'),
(121, 31, '고맙습니다'),
(122, 31, '감사합니다'),
(123, 31, '고맙다'),
(124, 31, '안녕'),
(125, 32, 'กล่าวขอบคุณ'),
(126, 32, 'กล่าวขอโทษ'),
(127, 32, 'กล่าวลา'),
(128, 32, 'กล่าวแสดงความยินดี'),
(129, 33, 'กล่าวขอบคุณ'),
(130, 33, 'กล่าวขอโทษ'),
(131, 33, 'กล่าวลา'),
(132, 33, 'กล่าวแสดงความยินดี'),
(133, 34, 'เมื่อจากกัน'),
(134, 34, 'เมื่อพบกัน'),
(135, 34, 'เมื่อจะกินข้าว'),
(136, 34, 'เมื่อจะเข้านอน'),
(137, 35, 'ฉัน'),
(138, 35, 'เธอ'),
(139, 35, 'เขา'),
(140, 35, 'ท่าน'),
(141, 36, 'บุรุษที่ 1'),
(142, 36, 'บุรุษที่ 2'),
(143, 36, 'บุรุษที่ 3'),
(144, 36, 'บุรุษที่ 4'),
(145, 37, 'สิ่งโน้น'),
(146, 37, 'สิ่งนั้น'),
(147, 37, 'สิ่งนี้'),
(148, 37, 'สิ่งของ'),
(149, 38, '여기'),
(150, 38, '거기'),
(151, 38, '저기'),
(152, 38, '저것'),
(153, 39, 'พี่ชาย'),
(154, 39, 'พี่สาว'),
(155, 39, 'พ่อ'),
(156, 39, 'แม่'),
(157, 40, '아빠'),
(158, 40, '엄마'),
(159, 40, '아주머니'),
(160, 40, '아저씨'),
(161, 41, '형'),
(162, 41, '언니'),
(163, 41, '오빠'),
(164, 41, '누나'),
(165, 42, 'น้องชายเรียกพี่สาว'),
(166, 42, 'น้องสาวเรียกพี่สาว'),
(167, 42, 'พี่สวเรียกน้องสาว'),
(168, 42, 'พี่สาวเรียกน้องชาย'),
(169, 43, '450 เมตร'),
(170, 43, '460 เมตร'),
(171, 43, '470 เมตร'),
(172, 43, '480 เมตร'),
(173, 44, 'ปูซาน'),
(174, 44, 'คยองกิ'),
(175, 44, 'เจจู'),
(176, 44, 'โซล'),
(177, 45, 'เพลงรักในสายลมหนาว'),
(178, 45, 'เจ้าหญิงวุ่นวายเจ้าชายเย็นชา'),
(179, 45, 'รักวุ่นวายนายกะล่อน'),
(180, 45, 'รักใสใสหัวใจสี่ดวง'),
(181, 46, 'เกาะนามิ'),
(182, 46, 'เท็ดดี้ แบร์'),
(183, 46, 'โซลทาวเวอร์'),
(184, 46, 'Sea Train'),
(185, 47, 'แม่น้ำฮันกัง'),
(186, 47, 'แม่น้ำฮันเกิง'),
(187, 47, 'แม่น้ำฮันกิ'),
(188, 47, 'แม่น้ำฮันกู'),
(189, 48, 'ดวงดาว'),
(190, 48, 'ดอกไม้'),
(191, 48, 'โสม'),
(192, 48, 'เหล้า');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `ArticleID` int(11) NOT NULL AUTO_INCREMENT,
  `Article` varchar(500) NOT NULL,
  `Description` text NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateDate` date NOT NULL,
  `Signature` varchar(100) NOT NULL,
  PRIMARY KEY (`ArticleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ArticleID`, `Article`, `Description`, `CreateDate`, `UpdateDate`, `Signature`) VALUES
(8, 'การทักทายเบื้องต้น', '<p><img style="float: left;" src="picture/editor/content/fdf.png" alt="" width="223" height="250" /></p>\r\n<p><span style="color: #ff00ff; font-size: large;">เริ่มต้นด้วยการทักทายกันก่อน.......</span></p>\r\n<p><span style="font-size: medium;"><span style="color: #ff0000;">안녕하세요.</span> อัน นยอง ฮา เซ โย</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">안녕히 가세요.</span> อันยองฮี คา เซโย / ลาก่อน (พูดกับคนที่ไป)*&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">안녕히 계세요.</span> อันยองฮี คเย เซโย / ลาก่อน (พูดกับคนที่อยู่)*&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">안녕히 주무세요.</span> อันยองฮี ชูมู เซโย / ราตรีสวัสดิ์&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">감사합니다.</span> คัมซา ฮัมนีดา /ขอบคุณ&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">미안합니다.</span> มีอัน ฮัมนีดา / ขอโทษ&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">실례합니다.</span> ชิล รเย ฮัมนีดา / ขอโทษ (ลักษณะที่เสียมารยาท)&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">괜찮습니다.</span> แคว็นชั่น ซึมนีดา / ไม่เป็นไร (ตอบรับคำขอโทษ/ ขอบคุณ)&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">천만에요.</span> ชอนมา เนโย / ไม่เป็นไร (ตอบรับคำขอบคุณ)&nbsp;</span><br /><br /><span style="font-size: medium;">* สงสัยมั้ยคะว่าทำไมต้องมี 2 แบบ เพราะถ้าแปลตามความหมายตรงตัวจะแปลว่าขอให้ไปดีๆ/อย่างสวัสดิภาพนะคะ</span><br /><span style="font-size: medium;">และแบบที่ 2 คือขอให้อยู่ดีๆ/อย่างสวัสดิภาพนะ ดังนั้นใครจะอยู่ใครจะไปก็อวยพรกันให้ถูกนะคะ อย่าสับสน&nbsp;</span><br /><span style="font-size: medium;">แต่เอ๊ะแล้วถ้าต่างคนต่างก็แยกย้ายกันไปล่ะ - ง่ายๆค่ะ ต่างคนต้องต่างพูดว่า อันยองฮี คาเซโย ค่ะ&nbsp;&nbsp;</span></p>', '2013-03-12', '2013-03-18', 'เฟ่ย'),
(16, 'เกี่ยวกับประเทศเกาหลี', '<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top">\r\n<div align="justify"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; สาธารณรัฐเกาหลี (Republic of Korea) หรือที่รู้จักกันในนาม เกาหลีใต้ (South Korea) ซึ่งในภาษาเกาหลี เรียกว่า&ldquo;แทฮันมินกุก ()&rdquo; หรือเรียกสั้นๆว่า &ldquo;ฮันกุก ()&rdquo; หมายถึง ชาวฮั่นหรือชาวเกาหลี และบางครั้งชาวเกาหลีใต้จะเรียกตนเองว่า &ldquo;นัมฮัน ()&rdquo; หมายถึง ชาวฮั่นทางใต้ ส่วนชาวเกาหลีเหนือจะเรียกเกาหลีใต้ว่า &ldquo;นัมโชซอน ()&rdquo; หมายถึง โชซอนใต้&nbsp;</span><br /><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เกาหลีใต้ ได้รับสมญานามว่าเป็น &ldquo;ดินแดนแห่งความสงบยามเช้า (The Land of Morning Calm)&rdquo; หรือ&nbsp;&ldquo;โคโยฮัน อาชิมเอนารา ()&rdquo; ในภาษาเกาหลี ซึ่งสะท้อนให้เห็นถึงขนบธรรมเนียมที่สืบทอดต่อกันมายาวนานถึง 5,000 ปี</span></div>\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>คำขวัญ</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top" height="26"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Broadly bring benefit to humanity หรือ นอลรี อินกัน เซคเยรึล อีรพเก ฮารา () หมายความว่านำผลประโยชน์อันมหาศาลมาสู่มวลมนุษย์</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>ภูมิศาสตร์ และภูมิประเทศ</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table class="koreade2" style="width: 655px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="325"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/korea_map.gif" alt="" width="310" height="363" /></span></td>\r\n<td align="left" valign="top" width="330"><span style="font-size: small;">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ประเทศเกาหลีใต้ตั้งอยู่ ละติจูดที่ 33 &ndash; 39 องศาเหนือ และ ลองจิจูดที่ 125 &ndash; 131 องศาตะวันออก มีพื้นที่ทั้งหมด 99,208 ตารางกิโลเมตร รวมพื้นที่ของน้ำ (ทะเลสาบ อ่างเก็บน้ำ แม่น้ำ) ที่อยู่ภายในดินแดนนั้นด้วยโดย 70 เปอร์เซ็นต์ของประเทศเป็นภูเขาซึ่งขนาดเนื้อที่ของ ประเทศเกาหลีใต้นั้น ใหญ่เป็นอันดับที่ 108 ของโลก</span><br /><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; เกาหลีใต้เป็นประเทศในเอเชียตะวันออก มีพื้นที่ครอบคลุมทางใต้ ของคาบสมุทรเกาหลี พรมแดนทางเหนือติดกับประเทศเกาหลีเหนือ และมีประเทศญี่ปุ่น ตั้งอยู่ทางตะวันออกเฉียงใต้ โดยมีทะเลญี่ปุ่นและ ช่องแคบเกาหลีกั้นไว้ ด้วยลักษณะทางภูมิศาสตร์ที่ล่อแหลมนี้เอง ตามหลักฐานทางประวัติศาสตร์จึงพบว่า ประเทศเกาหลีเคยตกเป็น อาณานิคมของประเทศญี่ปุ่น (ค.ศ. 1910) จนกระทั่งสิ้นสุดสงคราม โลกครั้งที่ 2 (ค.ศ. 1945) คาบสมุทรเกาหลีได้ถูกแบ่งแยกเป็นสองส่วน คือ ตอนเหนือเป็นของสาธารณรัฐประชาธิปไตยประชาชนเกาหลี (เกาหลีเหนือ) และตอนใต้เป็นของสาธารณรัฐเกาหลี (เกาหลีใต้)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>เมืองหลวง</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr bgcolor="#f9f9f9">\r\n<td class="korea1" bgcolor="#ffffff" height="20"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เมืองหลวงของประเทศเกาหลีใต้ คือ กรุงโซล จัดเป็นเมืองที่ใหญ่ที่สุดและมีจำนวนประชากรอาศัยอยู่มากที่สุดของประเทศ</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>ประชากร</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เกาหลีใต้มีจำนวนประชากร 48,482,000 คน มากเป็นอันดับที่ 26 ของโลก ซึ่งข้อมูลนี้สำรวจโดย United States Census Bureau ประจำปี พ.ศ. 2550 (ค.ศ. 2007)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>ภูมิอากาศ</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="korea1" height="20"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ประเทศเกาหลีใต้มีสภาพอากาศอยู่ในเขตอบอุ่น และมีฤดูกาล หรือในภาษาเกาหลีที่เรียกว่า &ldquo;คเยจอล ()&rdquo; ทั้งหมด 4 ฤดู ได้แก่&nbsp;</span><br /><span style="font-size: small;">ฤดูหนาว (Winter), ฤดูใบไม้ผลิ (Spring), ฤดูร้อน (Summer) และฤดูใบไม้ร่วง (Autumn / Fall)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>เวลา</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เวลาในประเทศเกาหลีใต้ เร็วกว่าประเทศไทย 2 ชั่วโมง</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>ภาษา</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top" width="660"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ชาวเกาหลีใต้สื่อสารกันด้วยภาษาเดียวกัน คือ ภาษาเกาหลี ส่วนใหญ่เรียกภาษาของตนว่า &ldquo;ฮันกุกมัล ()&rdquo; หรือ &ldquo;ฮันกุกอ ()&rdquo; บางครั้งอาจเรียกแบบภาษาชาวบ้านว่า &ldquo;อูรีมัล ()&rdquo; แปลว่า ภาษาของเรา โดยในกรุงโซลและเขตปริมณฑลจะใช้เป็นภาษากลาง ส่วนภาษาท้องถิ่นก็มีใช้กันตามภาคต่างๆ แต่ถึงกระนั้นชาวเกาหลีใต้ก็สามารถสื่อสารเข้าใจกันเป็นอย่างดี ยกเว้นภาษาท้องถิ่นของเกาะเชจู ซึ่งเข้าใจยากกว่าท้องถิ่นอื่นๆ&nbsp;</span><br /><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ภาษาเกาหลี มีตัวอักษรที่เรียกว่า &ldquo;ฮันกึล ()&rdquo; เป็นอักษรที่กษัตริย์เซจงทรงประดิษฐ์ขึ้น ประกอบไปด้วย พยัญชนะ 14 ตัว และสระ 10 ตัว ซึ่งสามารถผสมกันเป็นพยางค์และคำต่างๆได้มากมาย อักษรฮันกึลได้รับการยกย่องว่าเป็นตัวอักษรที่ประดิษฐ์ขึ้นตามหลักการทาง วิทยาศาสตร์มากที่สุด เป็นอักษรที่สามารถเรียนรู้และเข้าใจได้ง่าย</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>ศาสนา</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top" width="660"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ชาวเกาหลีใต้มีศาสนาที่ตนนับถือกันอย่างหลากหลาย กล่าวคือ นับถือศาสนาคริสต์ 26.3% (นิกายโปรแตสแตนท์ 19.7% และ นิกายโรมันคาทอลิก 6.6%) ศาสนาพุทธ 23.2% และศาสนาอื่นๆ 1.3% ส่วนกลุ่มที่ไม่นับถือศาสนาใดเลย 49.3%&nbsp;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>การเมืองการปกครอง</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top" width="660"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;สาธารณรัฐเกาหลี (เกาหลีใต้) ปกครองในระบอบประชาธิปไตย โดยมีประธานาธิบดีเป็นประมุขของประเทศ ซึ่งมาจากการเลือกตั้งของ ประชาชนให้เข้ามาเป็นหัวหน้าฝ่ายบริหาร และประธานาธิบดี จะเป็นผู้แต่งตั้งนายกรัฐมนตรี โดยผ่านความเห็นชอบจากรัฐสภา</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="middle" valign="center" width="3%"><span style="font-size: small;">&nbsp;<img src="picture/editor/content/sybow2.gif" alt="" width="10" height="10" />&nbsp;</span></td>\r\n<td width="97%"><span style="color: #0000ff; font-size: small;"><strong>การแบ่งเขตการปกครอง</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="koreade2" style="width: 660px;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top" width="660"><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ประเทศเกาหลีใต้ ประกอบไปด้วย 9 จังหวัด (โด &ldquo;&rdquo;) 6 เมืองใหญ่หรือมหานคร (ชี &ldquo;&rdquo;) แต่รวมทั้งประเทศมีทั้งหมด 77 เมือง และ 88 มณฑลหรืออำเภอ (กุน &ldquo;&rdquo;) โดยได้มีการแบ่งเขตการปกครองออกเป็น 8 จังหวัด อีก 1 จังหวัดปกครองตนเองแบบพิเศษ 6 มหานคร และ 1 นครพิเศษ มีรายละเอียดดังต่อไปนี้</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', '2013-03-18', '2013-03-19', 'Administator'),
(17, 'วัฒนธรรมเกาหลี', '<p><br />??<br />ชนชาติเกาหลีได้ถ่ายทอดความเป็นอัจฉริยะทางศิลปะผ่าน<strong>ทางดนตรี นาฎศิลป์ และจิตรกรรม</strong>&nbsp;ซึ่งได้มีการพัฒนามาตลอดระยะเวลา 5,000 ปีของประวัติศาสตร์เกาหลี แม้ว่าศิลปะตะวันตกในรูปแบบต่าง ๆ จะแพร่หลายอยู่ในประเทศ แต่ศิลปะเกาหลีอันมีเอกลักษณ์ เฉพาะตัวยังได้รับความนิยมอย่างกว้างขวาง ไม่ว่าจะในลักษณะดั้งเดิม หรือผสมผสานกับศิลปะร่วมสมัย<br />??<br />ดนตรีประจำชาติเกาหลี?</p>\r\n<p>?<br />ชนชาติเกาหลีมีดนตรีที่เรียกว่า คุกอัก มีที่มาคล้ายคลึงกับดนตรีจีนและญี่ปุ่น แต่ถ้าเราสามารถสัมผัสดนตรีชนิดนี้ได้อย่างลึกซึ้ง จะพบว่า ดนตรีเกาหลีมีลักษณะแตกต่างอย่างชัดเจนจากดนตรีชนิดอื่น ๆ ในแถบเอเชียตะวันออก กล่าวคือ ดนตรีเกาหลีประกอบด้วยสามจังหวะในหนึ่งห้อง ในขณะที่ดนตรีจีนและญี่ปุ่นมีสองจังหวะในหนึ่งห้อง</p>\r\n<p>คุกอัก แบ่งออกเป็นสองประเภท คือ ชองอัก หรือดนตรีในราชสำนัก ซึ่งเป็นดนตรีชั้นสูง มีท่วงทำนองเชื่องช้า เยือกเย็น และซับซ้อน</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>และมินซกอัน หรือดนตรีพื้นบ้าน? ได้แก่ ดนตรีของชาวนาชาวไร่</p>\r\n<p>&nbsp;</p>\r\n<p>พันซอรี (ดนตรีที่เน้นการแสดงความรู้สึก) และดนตรีพิธีไสยศาสตร์ มีจังหวะที่รวดเร็วและกระฉับกระเฉง?</p>\r\n<p><br />?<br />เพลงชาติเกาหลี<br />?<br />เพลงชาติเกาหลีมีชื่อว่า ?เอกึกกวา? หมายถึง บทเพลงแห่งความรักต่อประเทศ</p>\r\n<p>&nbsp;</p>\r\n<p>ชาวเกาหลีจะร้องเพลงชาติทุกโอกาสที่เป็นทางการ ไม่ว่าจะเป็นโอกาสแห่งความสุขหรือความทุกข์ เดิมเพลงชาติเกาหลีใช้ทำนองเพลง ?AULD LANG SYNE? (สามัคคีชุมนุม) ต่อมาได้เปลี่ยนเป็นทำนองแบบเกาหลีแต่ยังคงเนื้อร้องเดิมไว้<br />?<br />นาฏศิลป์เกาหลี<br />?<br />ศิลปะการร่ายรำแบบเกาหลีแบ่งออกเป็น 2 ประเภทเช่นเดียวกับดนตรี คือ แบบราชสำนักและแบบพื้นบ้าน ในแบบฉบับของราช สำนักนั้น ท่าทางของการรำจะช้าและสง่างาม</p>\r\n<p>&nbsp;</p>\r\n<p>ซึ่งสะท้อนปรัชญาของการเดินสายกลางและการระงับอารมณ์ความรู้สึก เป็นอิทธิพลมาจากปรัชญาขงจื้อ ในทางตรงกันข้าม ระบำพื้นบ้านซึ่งสะท้อนชีวิตการทำงานและศาสนาของสามัญชนจะใช้จังหวะและทำนองที่สนุกสนาน เป็นลักษณะของการแสดงออกที่เป็นอิสระและมีชีวิตชีวาของคนเกาหลี เช่น ระบำของชาวนาชาวไร่?ระบำหน้ากาก และการร่ายรำทางไสยศาสตร์</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>?การได้รู้จักและเห็นคุณค่าของนาฏศิลป์เกาหลีจะช่วยให้นักท่องเที่ยวเข้าใจวัฒนธรรมของคนเกาหลีใต้มากยิ่งขึ้น<br />?<br />จิตรกรรมเกาหลีแบบดั้งเดิม</p>\r\n<p><br />?<br />จิตรกรรมแบบเกาหลีแตกต่างจากรูปแบบของตะวันตกอย่างสิ้นเชิงด้วยลักษณะลายเส้นและการให้สีซึ่งเป็นแบบฉบับเฉพาะตัวของศิลปะตะวันออก การค้นพบหลักฐานทางประวัติศาสตร์เกี่ยวกับจิตรกรรมโบราณในสุสานหลวงจากยุคสามอาณาจักร (57 ปีก่อนคริสตศักราช ? ค.ศ. 668) ช่วยให้เราสามารถเข้าใจวิถีชีวิตของคนในสมัยนั้น ต่อมาในสมัยราชวงศ์โคเรียว (ค.ศ.918-1392) ศาสนาพุทธมีความเจริญรุ่งเรืองถึงจุดสูงสุด มีงานจิตรกรรมแบบพุทธ และศิลปวัตถุอื่น ๆ เกิดขึ้นมากมายในวัดต่าง ๆ ทั่วประเทศ ส่วนในสมัยราชวงศ์โชซอน (ค.ศ.1392-1910) ลัทธิขงจื้อได้กลายเป็นหลักปรัชญาในการบริหารประเทศ บรรดาปัญญาชนในสมัยนั้นจึงผลิตงานศิลปะที่แสดงถึงอิทธิพลของลัทธิขงจื้อและศิลปะแบบจีน ในขณะเดียวกัน จิตรกรรมพื้นบ้านซึ่งเป็นที่นิยมในหมู่สามัญชนกลับไม่ได้รับอิทธิพลจากแนวความคิดใดความคิดหนึ่ง จึงมีการใช้เทคนิคการเขียนภาพที่เป็นอิสระ แสดงออกถึงอารมณ์และความรู้สึก รวมทั้งใช้สีสันสดใส เพื่อสื่อถึงพลัง อารมณ์ และความรื่นเริง สำหรับโรงเรียนสอนด้านจิตรกรรมทั้งของแบบเกาหลีและตะวันตกที่เปิดอยู่ในเกาหลีปัจจุบันก็มีผลงานบางชิ้นที่ผสมผสานกัน<br />?<br />เครื่องปั้นดินเผาของ&hellip;เกาหลี<br /><br /></p>\r\n<p>?<br />?ประเทศเกาหลีได้รับเอาศิลปะการทำเครื่องปั้นดินเผามาจากประเทศจีนเมื่อกว่า 1,000 ปีมาแล้ว ศิลปะแขนงนี้ได้เจริญรุ่งเรืองและกลายเป็นประเพณีอย่างหนึ่งซึ่งชาวเกาหลีมีความภาคภูมิใจเครื่องปั้นดินเผาแบบศิลาดลสีเขียวอมฟ้า ที่มีความสวยงามแบบลึกซึ้งจากราชวงศ์โคเรียว (ค.ศ.918-1392) ก็เป็นที่รู้จักอย่างกว้างขวางไปทั่วโลกและเป็นที่ต้องการของผู้ที่นิยมวัตถุโบราณ เช่นเดียวกับเครื่องกระเบื้องสีขาวจากราชวงศ์โชซอน (ค.ศ.1392-1910) ศิลปะแขนงนี้ได้เข้าไปมีอิทธิพลต่อศิลปะญี่ปุ่นในยุคสมัยต่าง ๆ โดยเฉพาะในช่วงที่ญี่ปุ่นที่รุกรานประเทศเกาหลีในช่วงปีทศวรรษ 1950 และทำให้ศิลปะแขนงนี้เจริญรุ่งเรืองในญี่ปุ่นจนถึงทุกวันนี้?</p>\r\n<p>&nbsp;</p>', '2013-03-19', '2013-03-19', 'Administator'),
(19, 'อาหารเกาหลี', '', '2013-03-19', '0000-00-00', 'Administator'),
(20, 'พยัญชนะ', '', '2013-03-19', '0000-00-00', 'Administator'),
(21, 'สระต่าง ๆ', '', '2013-03-19', '0000-00-00', 'Administator'),
(22, 'รวมหลักไวยกรณ์', '', '2013-03-19', '0000-00-00', 'Administator'),
(23, 'คำสรรพนาม', '<p style="text-align: center;"><span style="color: #ff0000; font-size: large;">คำสรรพนามต่างๆ </span></p>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><span style="color: #ff0000; font-size: medium;">คำสรรพนาม,คำกริยา</span></p>\r\n<p><span style="font-size: medium;">จะแต่งประโยคได้ก้อจะต้องรู้คำศัพท์ซะก่อน บทนี้จะว่าด้วยเรื่องคำสรรพนามในภาษาเกาหลี</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="font-size: medium;">*คำสรรพนาม</span><br /><span style="font-size: medium;"><span style="color: #3366ff;">บุรษที่ 1</span>&nbsp;&nbsp;- เอกพจน์&nbsp;&nbsp;<span style="color: #ff0000;">저 / 나</span>&nbsp;&nbsp;ชอ/ นา = ผม, ดิฉัน, ฉัน, เค้า, ฯลฯ &nbsp;</span><br /><span style="font-size: medium;">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - พหูพจน์ <span style="color: #ff0000;">저희(들) &nbsp;/ 우리(들)</span> ชอฮี(ดึล) / อูรี(ดึล) &nbsp;= &nbsp;พวกเรา</span><br /><br /><span style="font-size: medium;"><span style="color: #3366ff;">บุรษที่ 2</span> - เอกพจน์&nbsp;&nbsp;<span style="color: #ff0000;">당신 / 너</span>&nbsp;&nbsp;ทังชิน/ นอ = คุณ, เธอ, แก ฯลฯ&nbsp;</span><br /><span style="font-size: medium;">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - พหูพจน์&nbsp;&nbsp;<span style="color: #ff0000;">당신(들) / 너희(들)</span>&nbsp;&nbsp; ทังชิน(ดึล) / นอฮี(ดึล) &nbsp;= &nbsp;พวกคุณ, พวกเธอ</span><br /><span style="font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #ff0000;">여러분</span> ยอรอบุน = ท่านทั้งหลาย</span><br /><br /><span style="font-size: medium;"><span style="color: #3366ff;">บุรษที่ 3</span> - เอกพจน์&nbsp;&nbsp;<span style="color: #ff0000;">이분/이사람</span> อีบุน / อีซารัม = ท่านนี้/ คนนี้ ,&nbsp;&nbsp;<span style="color: #ff0000;">그 분/그 사람</span> คือบุน/ คือซารัม = ท่านนั้น/ คนนั้น,</span><br /><span style="font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #ff0000;">저분/저사람</span>&nbsp;&nbsp;ชอบุน/ ชอซารัม = ท่านโน้น/ คนโน้น ,&nbsp;&nbsp;<span style="color: #ff0000;">그여자 /그남자&nbsp;&nbsp;</span>คือยอจา/ คือยอจา = &nbsp;ผู้หญิงคนนั้น/&nbsp;</span><br /><span style="font-size: medium;">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ผู้ชายคนนั้น,&nbsp;&nbsp;<span style="color: #ff0000;">그대</span> เธอคนนั้น/หล่อน</span><br /><span style="font-size: medium;">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - พหูพจน์ &nbsp; เติมคำว่า<span style="color: #ff0000;">들</span> จะกลายเป็นพหูพจน์</span><br /><br /><br /><span style="font-size: medium;"><span style="color: #3366ff;">* คำแสดงความเป็นเจ้าของ</span> (Possessive pronouns)&nbsp;</span><br /><span style="font-size: medium;">- 저 + 의 &nbsp;= 제 &nbsp; ของฉัน (บุรุษที่ 1) สุภาพ</span><br /><span style="font-size: medium;">- 나 + 의 = 내 &nbsp;ของฉัน (บุรุษที่ 1) สุภาพน้อยกว่า 제</span><br /><span style="font-size: medium;">- 너 + 의 = 니 &nbsp;ของเธอ (บุรุษที่ 2) สุภาพน้อย &nbsp;</span><br /><span style="font-size: medium;">- 저희 + 의 = 저희 / 저희(의) ของพวกเรา (บุรุษที่ 1 - พหูพจน์)&nbsp;</span><br /><span style="font-size: medium;">- 우리 + 의 = 우리/ 우리의 &nbsp;ของพวกเรา (บุรษที่ 1 &ndash; พหูพจน์) สุภาพน้อยกว่า저희 &nbsp;</span><br /><span style="font-size: medium;">- 너희 + 의 = 너희/ 너희(의) ของพวกเธอ (บุรุษที่ 2 &ndash; พหูพจน์)</span></p>\r\n<p><span style="font-size: medium;">&nbsp;</span><br /><br /><span style="color: #3366ff; font-size: medium;">คำศัพท์ บุรุษที่ 1</span><br /><br /><span style="font-size: medium;">ฉัน = <span style="color: #ff0000;">나 / 저</span></span><br /><span style="font-size: medium;">เรา = <span style="color: #ff0000;">우리 / 우리들</span></span><br /><br /><span style="color: #3366ff; font-size: medium;">คำศัพท์ บุรุษที่2</span><br /><br /><span style="font-size: medium;">เธอ = <span style="color: #ff0000;">너 / 당신</span></span><br /><span style="font-size: medium;">คุณ... = <span style="color: #ff0000;">...씨 / ...님 /</span></span></p>\r\n<p><span style="font-size: medium;">&nbsp;<span style="color: #ff0000;">...선생님</span> (คำเหล่านี้เมือต่อท้ายชื่อจะเป็นการให้เกียรติ เหมือนมีคำว่า"คุณ" อยู่ข้างหน้า)</span><br /><br /><span style="color: #3366ff; font-size: medium;">คำศัพท์ บุรุษที่3</span><br /><br /><span style="font-size: medium;">เขา = <span style="color: #ff0000;">그는</span></span><br /><span style="font-size: medium;">ท่าน = <span style="color: #ff0000;">분</span></span><br /><br /><span style="font-size: medium;">ท่านนี้ = <span style="color: #ff0000;">이 분</span></span><br /><span style="font-size: medium;">ท่านนั้น = <span style="color: #ff0000;">그 분</span></span><br /><span style="font-size: medium;">ท่านนู้น = <span style="color: #ff0000;">저 분</span></span><br /><br /><span style="font-size: medium;">ท่านเหล่านี้ = <span style="color: #ff0000;">이 분들</span></span><br /><span style="font-size: medium;">ท่านเหล่านั้น = <span style="color: #ff0000;">그 분들</span></span><br /><span style="font-size: medium;">ท่านเหล่านู้น = <span style="color: #ff0000;">저 분들</span></span><br /><br /><span style="font-size: medium;">ผู้ชายคนนี้ = <span style="color: #ff0000;">이 남자</span></span><br /><span style="font-size: medium;">ผู้ชายคนนั้น = <span style="color: #ff0000;">그 남자</span></span><br /><span style="font-size: medium;">ผู้ชายคนนู้น = <span style="color: #ff0000;">저 남자</span></span><br /><br /><span style="font-size: medium;">ผู้หญิงคนนี้ = <span style="color: #ff0000;">이 여자</span></span><br /><span style="font-size: medium;">ผู้หญิงคนนั้น = <span style="color: #ff0000;">그 여자</span></span><br /><span style="font-size: medium;">ผู้หญิงคนนู้น = <span style="color: #ff0000;">저 여자</span></span><br /><br /><span style="font-size: medium;">สิ่งนี้ = <span style="color: #ff0000;">이것</span></span><br /><span style="font-size: medium;">สิ่งนั้น = <span style="color: #ff0000;">그것</span></span><br /><span style="font-size: medium;">สิ่งนู้น = <span style="color: #ff0000;">저것</span></span><br /><br /><span style="font-size: medium;">ที่นี่ = <span style="color: #ff0000;">여기</span></span><br /><span style="font-size: medium;">ที่นั่น = <span style="color: #ff0000;">거기</span></span><br /><span style="font-size: medium;">ที่นู่น = <span style="color: #ff0000;">저기</span></span></p>\r\n<p><span style="font-size: medium;">ประโยคเกาหลีมีโครงสร้างดังนี้ค่ะ</span><br /><br /><span style="font-size: medium;">ประธาน กรรม กริยา</span><br /><br /><span style="font-size: medium;">เช่น ถ้าจะบอกว่า ฉันกินข้าว ในภาษาเกาหลีก็จะต้องเรียงว่า ฉัน ข้าว กิน</span><br /><br /><span style="font-size: medium;">และในภาษาเกาหลีนั้น </span><br /><span style="font-size: medium;">- คำที่เป็นประธานจะต้องมีคำชี้ประธานตามหลัง ถ้าประธานมีตัวสะกดให้ใช้<span style="color: #ff0000;">은</span> ถ้าประธานไม่มีตัวสะกดให้ใช้<span style="color: #ff0000;">는</span></span><br /><br /><span style="font-size: medium;">- คำที่เป็นกรรม จะต้องมีคำชี้กรรมตามหลัง ถ้ากรรมมีตัวสะกดให้ใช้<span style="color: #ff0000;">을</span> ถ้ากรรมไม่มีตัวสะกดให้ใช้<span style="color: #ff0000;">를</span></span><br /><br /><span style="font-size: medium;">-จากโครงสร้างประโยคที่มีการบังคับให้คำกริยาอยู่ท้ายประโยคนั้น ทำให้เราจะต้องมีการผันกริยาก่อนนำมาใช้ เพื่อให้เกิดความสุภาพและสื่อความหมายต่างๆให้ถูกต้อง ไม่ว่าจะเป็น บอกเล่า ชักชวน ห้าม ถาม เชิญ คาดเดา บอกอดีต บอกอนาคต ฯลฯ </span></p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style="font-size: medium;">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><span style="font-size: medium;">&nbsp;</span>\r\n<p><span style="font-size: medium;"><strong>คำเรียกเครือญาติ</strong></span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">할아버지</span> (ฮา-รา-บอ-จี) ปู่ </span></p>\r\n<p><span style="font-size: medium;"><span style="color: #ff0000;">할아버님</span> (ฮา-รา-บอ-นิม) เป็นการยกย่อง</span><span style="font-size: medium;">ถ้าจะแปลก็คือ คุณปู่</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">할머니</span> (ฮัล-มอ-นี) ย่า</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">외할아버지</span> (เว-ฮา-รา-บอ-จี) ตา</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">외할머니</span> (เว-ฮัล-มอ-นี) ยาย</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">아저씨</span> (อา-จอ-ชี) ลุง</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">아주머니</span> (อา-จุ-มอ-นี) ป้า</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">삼촌</span> (ซัม-ชน) อา (น้องชายของพ่อ)</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">외삼촌</span> (เว-ซัม-ชน) อา (พี่/น้องชายของแม่)</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">이모</span> (อี-โม) น้า (พี่/น้องสาวของแม่)</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">고모</span> (โค-โม) ป้า/อา (พี่/น้องสาวของพ่อ)</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">아버지</span> (อา-บอ-จี) พ่อ หรือเรียกสั้นๆ ว่า <span style="color: #ff0000;">아빠</span> (อา-ป้า) เรียกได้แต่พ่อตัวเองเท่านั้น</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">아머니</span> (อา-มอ-นี) แม่ หรือเรียกสั้นๆ ว่า <span style="color: #ff0000;">엄마</span> (ออม-ม่า) เรียกได้แต่แม่ตัวเองเท่านั้น</span><br /><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">오빠</span> (โอ-ปา) พี่ชาย (ผู้หญิงเรียก)</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">형</span> (ฮยอง) พี่ชาย (ผู้ชายเรียก)</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">언니</span> (ออน-นี) พี่สาว (ผู้หญิงเรียก)</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">누나</span> (นู-นา) พี่สาว (ผู้ชายเรียก)</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">여동생</span> (ยอ-ดง-เซง) น้องสาว</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">남동생</span> (นัม-ดง-เซง) น้องชาย</span><br /><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">아들</span> (อา-ดึล) ลูกชาย</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">딸</span> (ตัล) ลูกสาว</span></p>\r\n</td>\r\n<td><span style="font-size: medium;">&nbsp;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', '2013-03-19', '2013-03-19', 'Administator'),
(24, 'การกล่าวทักทาย', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="picture/editor/content/Korean.png" alt="" width="447" height="95" /></p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;<span style="font-size: medium;"><span style="color: #ff0000;">제 이름은.........입니다.</span> เช อีรือมึน ............ อิมนีดา / ผม,ดิฉันชื่อ............&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">반갑습니다.</span> พันกับ ซึมนีดา / ยินดีที่ได้รู้จัก&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">또 만납시다.</span> โต มันนับชีดา / แล้วพบกันใหม่&nbsp;</span><br /><br /><br /><span style="font-size: medium;"><span style="color: #0000ff;">ตัวอย่างประโยคแนะนำตัวเอง</span>&nbsp;</span><br /><br /><span style="color: #ff0000; font-size: medium;">안녕하세요? 저는 김하나 입니다. 반갑습니다.&nbsp;</span><br /><span style="font-size: medium;">อันยอง ฮา เซโย ชอนึน คิมฮานา อิมนีดา. พันกับ ซึมนีดา&nbsp;</span><br /><span style="font-size: medium;">สวัสดีค่ะ ดิฉันชื่อ คิมฮานา ยินดีที่ได้รู้จักค่ะ</span><br /><br /><span style="color: #0000ff; font-size: medium;">คำขอบคุณ</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">감사합니다.</span> คัมซา ฮัมนีดา/ คัมซามีดา = ขอบคุณ (สุภาพกว่า)&nbsp;</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">고맙습니다.</span> โคมับ ซึมนีดา = ขอบคุณ</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">고마워요.</span> โคมาวอโย ขอบคุณ (สุภาพน้อยกว่า)&nbsp;</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">고맙다.</span> โคมับตะ = ใช้พูดกับเด็กๆ</span><br /><br /><span style="color: #0000ff; font-size: medium;">คำตอบรับขอบคุณ&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">괜찮습니다./ 천만에요.</span> ไม่เป็นไรครับ/คะ&nbsp;</span><br /><br /><span style="color: #0000ff; font-size: medium;">คำขอโทษ&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">죄송합니다.</span> ชเว ซง ฮัมนีดา = ขอโทษ (สุภาพกว่า)&nbsp;</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">미안합니다.</span> ขอโทษค่ะ&nbsp;</span><br /><span style="font-size: medium;"><span style="color: #ff0000;">미안해요/ 죄송해요.</span> มีอันแฮโย/ชเว-ซง แฮโย (สุภาพน้อยกว่า)</span><br /><br /><span style="color: #0000ff; font-size: medium;">คำตอบรับขอโทษ&nbsp;</span><br /><br /><span style="font-size: medium;"><span style="color: #ff0000;">괜찮습니다.</span> ไม่เป็นไรครับ/คะ</span>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>&nbsp;<img src="picture/editor/content/psptubez_dot_com_004.png" alt="" width="273" height="653" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '2013-03-19', '2013-03-19', 'Administator');
INSERT INTO `article` (`ArticleID`, `Article`, `Description`, `CreateDate`, `UpdateDate`, `Signature`) VALUES
(25, 'เกี่ยวกับตัวเลข', '', '2013-03-19', '0000-00-00', 'Administator'),
(26, '5 อันดับสถานที่ท่องเที่ยว', '', '2013-03-19', '0000-00-00', 'Administator'),
(27, 'ศิลปะเกาหลี', '', '2013-03-19', '0000-00-00', 'Administator');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `MemberID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Card` varchar(100) NOT NULL,
  `FristPoint` int(11) NOT NULL,
  `EndPoint` int(11) NOT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `Username`, `Password`, `Name`, `Lastname`, `Card`, `FristPoint`, `EndPoint`) VALUES
(1, 'shadow', '5266325', 'ฉัตรชัย', 'เด่นศรี', '1102000730741', 1, 3),
(2, 'yeolly', '98765', 'yeolly', 'lee', '5410122016234', 1, 19),
(5, 'saranyu', 'jjjjjj', 'ศรัญญู', 'เกษรา', '1102000730796', 2, 6),
(6, 'chartchai', 'jjjjjj', 'jjjjj', 'jjjjjj', '1102000730745', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `Question` varchar(500) NOT NULL,
  `AnswerTrue` varchar(300) NOT NULL,
  PRIMARY KEY (`QuestionID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QuestionID`, `Question`, `AnswerTrue`) VALUES
(13, 'ประเทศเกาหลีมีพรมแดนติดกับที่ใด', 'เกาหลีเหนือ '),
(14, 'ชุดแต่งกายประจำชาติเกาหลีเรียกว่าอะไร', 'ฮันบก'),
(15, 'ข้อใดไม่ใช่ความเป็นอัฉริยะทางศิลปะของเกาหลี', 'เครื่องเบญจรงค์'),
(16, 'อาหารประจำชาติของเกาหลีคืออะไร', 'กิมจิ'),
(17, 'พยัญชนะในภาษาเกาหลีมีกี่ตัว', '14'),
(18, 'คียอก คือพยัญชนะตัวใดในภาษาเกาหลี', 'ㄱ'),
(19, 'เสียง ซีอด ในภาษาเกาหลีคือพยัญชนะตัวใด', 'ㅅ'),
(20, 'พยัญชนะซ้อนในภาษาเกาหลีมีทั้งหมดกี่ตัว', '5'),
(21, 'เสียงสระในภาษาเกาหลี  ㅜ คือเสียงใด', 'อู'),
(22, 'เสียงสระในภาษาเกาหลีㅕ คือเสียงใด', 'ยอ'),
(23, '좀 도와주세요! มีความหมายว่าอย่างไร', 'กรุณาช่วยฉันหน่อย'),
(24, 'ฉัน กิน ข้าว ในภาษาเกาหลีคือประโยคใด', '저는 밥을 먹습니다'),
(25, '는 ในภาษาเกาหลีใช้อย่างไร', 'ขยายประธาน'),
(26, 'คำช่วยชี้กรรม คือ ข้อใด', '을'),
(27, '편지 มีความหมายว่าอย่างไร', 'จดหมาย'),
(28, '고 있다. มีความหมายว่าอย่างไร', 'กำลังไป'),
(29, 'การผันโยมีกี่รูปแบบ', '4'),
(30, '안녕하세요 มีความหมายว่าอย่างไร', 'สวัสดี'),
(31, 'ข้อใดคือการกล่าวขอบคุณแบบสุภาพที่ใช้กล่าวกับผู้ใหญ่', '감사합니다'),
(32, '미안합니다 คือการกล่าวแบบใด', 'กล่าวขอโทษ'),
(33, '축하 합니다 คือกล่าวกล่าวแบบใด', 'กล่าวแสดงความยินดี'),
(34, 'การกล่าวทักทาย안녕하세요 ควรกล่าวเมื่อใด', 'เมื่อพบกัน'),
(35, 'บุรุษที่ 1 ในคำสรรพนามคือใคร', 'ฉัน'),
(36, 'เธอ คือ บุรุษใดในคำสรรพนาม', 'บุรุษที่ 2'),
(37, '이것 มีความหมายว่าอย่างไร', 'สิ่งนี้'),
(38, 'ข้อใดมีความหมายว่า ที่นี่ ในภาษาเกาหลี', '여기'),
(39, '아빠 ใช้เรียกใคร', 'พ่อ'),
(40, 'ข้อใดมีความหมายว่าลุงในภาษาเกาหลี', '아저씨'),
(41, 'ข้อใดคือสรรพนามน้องสาวใช้เรียกพี่ชาย', '오빠'),
(42, '언니 ใช้เรียกใครในภาษาเกาหลี', 'น้องสาวเรียกพี่สาว'),
(43, 'โซลทาวเวอร์มีความสูงเท่าใด', '480 เมตร'),
(44, 'เกาะเจจูอยู่ในจังหวัดใดในเกาหลี', 'เจจู'),
(45, 'พิพิธพัณฑ์เท็ดดี้ แบร์ ใช้ถ่ายทำซีรี่ย์เรื่องใด', 'เจ้าหญิงวุ่นวายเจ้าชายเย็นชา'),
(46, 'สถานที่ท่องเที่ยวที่โรแมนติกที่สุดในเกาหลีที่ได้รับเลือกให้ลงกินเน็สบุค คือที่ใด', 'Sea Train'),
(47, 'แม่น้ำสายหลักของประเทศเกาหลีคือที่ใด', 'แม่น้ำฮันกัง'),
(48, 'ประเทศเกาหลีได้ชื่อมาจากอะไร', 'โสม');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
