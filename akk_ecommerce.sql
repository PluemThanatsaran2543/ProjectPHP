-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2023 at 10:46 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akk_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_bank`
--

CREATE TABLE `akksofttech_bank` (
  `bak_id` int(11) NOT NULL COMMENT '- ID ธนาคาร',
  `bak_name` varchar(100) NOT NULL COMMENT '-ชื่อธนาคาร',
  `bak_image` varchar(100) NOT NULL COMMENT '- รูปธนาคาร',
  `bak_ip` varchar(15) NOT NULL COMMENT '- IP',
  `bak_start_date` datetime NOT NULL COMMENT '- วันที่ที่บันทึก',
  `cus_id_save` int(11) NOT NULL COMMENT '- คนบันทึก',
  `cus_name_save` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_bank`
--

INSERT INTO `akksofttech_bank` (`bak_id`, `bak_name`, `bak_image`, `bak_ip`, `bak_start_date`, `cus_id_save`, `cus_name_save`) VALUES
(1, 'HSBC', 'HSBC-logo.png', '', '2022-12-14 00:00:00', 0, '0'),
(2, 'Lloyds', 'Lloyds-logo.png', '', '2022-12-14 00:00:00', 0, '0'),
(3, 'Barclays', 'Barclays-logo.png', '', '2022-12-14 00:00:00', 0, '0'),
(4, 'Santander UK', 'Santander-logo.png', '', '2022-12-14 00:00:00', 0, '0'),
(5, 'Close Brothers', 'Close-logo.png', '', '2022-12-14 00:00:00', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_bank_account`
--

CREATE TABLE `akksofttech_bank_account` (
  `bac_id` int(11) NOT NULL COMMENT '- ID ข้อมูลบัญชีธนาคารของผู้ขาย',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `bac_number_mem` varchar(10) NOT NULL COMMENT '- เลขที่บัญชีผู้ขาย',
  `bac_mem_name` varchar(100) NOT NULL COMMENT '- ชื่อบัญชีของผู้ขาย',
  `bac_name` varchar(100) NOT NULL COMMENT '-ชื่อธนาคารของผู้ขาย',
  `bak_id` int(11) NOT NULL COMMENT '- ID ธนาคาร',
  `bak_name` varchar(100) NOT NULL COMMENT '-ชื่อธนาคาร',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `bac_ip` varchar(15) NOT NULL COMMENT '- IP',
  `bac_start_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_bank_account`
--

INSERT INTO `akksofttech_bank_account` (`bac_id`, `sto_id`, `bac_number_mem`, `bac_mem_name`, `bac_name`, `bak_id`, `bak_name`, `mem_id`, `mem_name`, `bac_ip`, `bac_start_date`) VALUES
(2, 1, '5986987596', 'LUMPINIE', 'HSBC', 1, 'HSBC', 1, 'admin', '192.168.0.148', '2023-01-11 10:06:25'),
(3, 1, '1254569873', 'LUMPINIE', 'Barclays', 3, 'Barclays', 1, 'admin', '192.168.0.148', '2023-01-06 16:38:19'),
(4, 1, '8965478595', 'LUMPINIE', 'Lloyds', 2, 'Lloyds', 1, 'admin', '192.168.0.148', '2023-01-11 10:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_cart`
--

CREATE TABLE `akksofttech_cart` (
  `cart_id` int(11) NOT NULL COMMENT '- ID รายละเอียดคำสั่งซื้อ',
  `po_id` int(11) NOT NULL COMMENT '- ID ใบสั่งซื้อ',
  `pod_create` datetime NOT NULL COMMENT '- วันที่สั่งซื้อ',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `cat_id` int(11) NOT NULL COMMENT '- ID หมวดหมูสินค้า',
  `cat_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อหมวดหมู่สินค้า',
  `scat_id` int(11) NOT NULL COMMENT '- ID หมวดหมูู่สินค้าย่อย',
  `scat_name` varchar(100) NOT NULL COMMENT '- ชื่อหมวดหมู่สินค้าย่อย',
  `prod_id` int(11) NOT NULL COMMENT '- ID สินค้า',
  `prod_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อสินค้า',
  `prod_price_simple` float NOT NULL COMMENT '- ราคาสิินค้า',
  `sprod_id` int(11) NOT NULL COMMENT '- ID สินค้้าย่อย',
  `sprod_name` varchar(100) NOT NULL COMMENT '- ชื่อสินค้าย่อย',
  `sprodone_id` int(11) NOT NULL COMMENT '- ID สินค้้าย่อย 1',
  `sprodone_name` varchar(100) NOT NULL COMMENT '- ชื่อสินค้าย่อย 1',
  `prod_sku` varchar(100) NOT NULL COMMENT '- SKU',
  `sprod_sku` varchar(100) NOT NULL COMMENT '- SKU ย่อย',
  `sprodone_sku` varchar(100) NOT NULL COMMENT '- SKU ย่่อย 1',
  `prod_brand` varchar(100) NOT NULL COMMENT '- ยี่ห้อสินค้า',
  `prod_image` varchar(100) NOT NULL COMMENT '- รูปภาพสินค้า',
  `quantity` int(100) NOT NULL COMMENT '- จำนวนสินค้าที่ต้องการ',
  `cus_id` int(11) NOT NULL COMMENT '- ID ผู้ซื้อ',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `pod_ip` varchar(15) NOT NULL COMMENT '- IP',
  `pod_start_date` datetime NOT NULL COMMENT '- วันที่่',
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_cart`
--

INSERT INTO `akksofttech_cart` (`cart_id`, `po_id`, `pod_create`, `sto_id`, `cat_id`, `cat_name`, `scat_id`, `scat_name`, `prod_id`, `prod_name`, `prod_price_simple`, `sprod_id`, `sprod_name`, `sprodone_id`, `sprodone_name`, `prod_sku`, `sprod_sku`, `sprodone_sku`, `prod_brand`, `prod_image`, `quantity`, `cus_id`, `mem_id`, `mem_name`, `pod_ip`, `pod_start_date`, `message`) VALUES
(42, 0, '2023-03-08 12:05:48', 1, 1, 'STARTERS', 0, '-', 6, 'Chicken Satay', 4.5, 0, '-', 0, '-', '6', '0', '0', '', 'naropos_20230209143833.png', 1, 1, 1, 'ปลื้ม22222', '::1', '2023-03-08 12:05:48', '-');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_category`
--

CREATE TABLE `akksofttech_category` (
  `cat_id` int(11) NOT NULL COMMENT '- ID หมวดหมู่',
  `cat_name` varchar(100) NOT NULL COMMENT '- ชื่อหมวดหมู่',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้้าน',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `cat_ip` varchar(15) NOT NULL COMMENT '- IP',
  `cat_start_date` datetime NOT NULL COMMENT '- วันที่',
  `cat_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_category`
--

INSERT INTO `akksofttech_category` (`cat_id`, `cat_name`, `sto_id`, `mem_id`, `mem_name`, `cat_ip`, `cat_start_date`, `cat_img`) VALUES
(1, 'STARTERS', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(2, 'SINGLE DISHES', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(3, 'ALL SERVED WITH STEAM RICE', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(4, 'SOUPS & SALADS', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(5, 'LUMINI SPECIALS', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(6, 'THAI CURRIES', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(7, 'STIR-FRIED', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(8, 'VEGETABLES', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(9, 'NOODLES', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg'),
(10, 'RICES', 1, 1, 'admin', '192.168.0.111', '0000-00-00 00:00:00', 'noimg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_customer`
--

CREATE TABLE `akksofttech_customer` (
  `cus_id` int(11) NOT NULL COMMENT '- ID ของผู้ซื้อ',
  `cus_name` varchar(100) NOT NULL COMMENT '- ชื่อของผู้ซื้อ',
  `cus_surname` varchar(100) NOT NULL COMMENT '- นามสกุลผู้ซื้อ',
  `cus_phone` varchar(11) NOT NULL COMMENT '- เบอร์โทรศัพท์ผู้ซื้อ',
  `cus_email` varchar(100) NOT NULL COMMENT '- Email',
  `cus_username` varchar(100) NOT NULL COMMENT '- Username',
  `cus_password` varchar(100) NOT NULL COMMENT '- Password',
  `cus_ip` varchar(15) NOT NULL COMMENT '- IP',
  `cus_start_date` datetime NOT NULL COMMENT '- วันที่',
  `cus_id_save` int(11) NOT NULL COMMENT '- คนบันทึก',
  `cus_name_save` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_customer`
--

INSERT INTO `akksofttech_customer` (`cus_id`, `cus_name`, `cus_surname`, `cus_phone`, `cus_email`, `cus_username`, `cus_password`, `cus_ip`, `cus_start_date`, `cus_id_save`, `cus_name_save`) VALUES
(1, 'ปลื้ม22222', 'จัน222', '064131648', 'admin21@gmail.com', 'Admin', '1111', '::1', '2023-01-04 12:00:42', 0, 'AddCustomer'),
(17, 'Manisa', 'Maneerit', '0612076216', 'MOMOadmin@gmail.com', 'MOMOadmin', 'MOMOadmin', '192.168.0.148', '2023-01-13 17:31:59', 0, 'AddCustomer'),
(18, 'ggg', 'ggger', '25820', 'ggg@ggg.com', 'root', 'akom2006', '::1', '2023-01-14 15:54:49', 0, 'AddCustomer'),
(19, 'ddddd', 'werwr', '56464', 'ddwed@ggg.com', 'root', 'akom2006', '::1', '2023-01-18 17:16:21', 0, 'AddCustomer'),
(20, 'pormsawad', 'Jaturat', '0632165453', 'teeraphan.pormsawad@gmail.com', 'pormsawad', '123456789', '192.168.0.123', '2023-02-02 17:57:16', 0, 'AddCustomer'),
(21, 'vv', 'vv', '01564897', 'vv@vv.com', 'vv', 'vv', '::1', '2023-02-10 19:09:21', 0, 'AddCustomer'),
(22, 'Maker1', 'Maker2', '08888888888', 'maker.m@gmail.com', 'Maker', 'maker', '192.168.0.119', '2023-02-15 17:43:46', 0, 'AddCustomer'),
(23, '32132112', '16', '651', '651@gmail.com', '651', '651', '::1', '2023-03-07 15:51:07', 0, 'AddCustomer');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_customer_address`
--

CREATE TABLE `akksofttech_customer_address` (
  `cusa_id` int(11) NOT NULL COMMENT '- ID ที่อยู่',
  `cus_id` int(11) NOT NULL,
  `cusa_name` varchar(300) NOT NULL,
  `cusa_surname` varchar(300) NOT NULL,
  `cusa_address` varchar(100) NOT NULL COMMENT '- ที่อยู่',
  `cusa_province` varchar(100) NOT NULL COMMENT '- จังหวัด',
  `cusa_zipcode` varchar(100) NOT NULL COMMENT '- รหัสไปรษณีย์',
  `cusa_note` varchar(100) NOT NULL COMMENT '- หมายเหตุ',
  `cusa_phone` varchar(10) NOT NULL,
  `cusa_ip` varchar(15) NOT NULL COMMENT '- IP',
  `cusa_start_date` datetime NOT NULL COMMENT '- วันที่',
  `cus_id_save` int(11) NOT NULL COMMENT '- คนบันทึก',
  `cus_name_save` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_customer_address`
--

INSERT INTO `akksofttech_customer_address` (`cusa_id`, `cus_id`, `cusa_name`, `cusa_surname`, `cusa_address`, `cusa_province`, `cusa_zipcode`, `cusa_note`, `cusa_phone`, `cusa_ip`, `cusa_start_date`, `cus_id_save`, `cus_name_save`) VALUES
(190, 1, '8', '9', '10', '12', '13', '14', '11', '::1', '2023-03-03 12:05:09', 1, 'ปลื้ม'),
(191, 23, '1', '2', '3', '5', '6', '8', '4', '::1', '2023-03-07 15:54:45', 23, '32132112');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_delivery`
--

CREATE TABLE `akksofttech_delivery` (
  `del_id` int(11) NOT NULL COMMENT '- ID หมายเลขการจัดส่ง',
  `po_id` int(11) NOT NULL COMMENT '- ID ใบสั่งซื้อ',
  `del_status` varchar(100) NOT NULL COMMENT '- สถานะการจัดส่ง',
  `del_status_log` int(100) NOT NULL COMMENT '- LOG สถานะการจัดส่ง',
  `del_update_date` datetime NOT NULL COMMENT '- วันเวลาที่อัพเดตสถานะการจัดส่ง',
  `tran_type_id` int(11) NOT NULL COMMENT '- ID ประเภทการขนส่ง',
  `tran_type_name` varchar(100) NOT NULL COMMENT '- ชื่อประเภทการขนส่ง',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `del_ip` varchar(15) NOT NULL COMMENT '- IP',
  `del_start_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_delivery`
--

INSERT INTO `akksofttech_delivery` (`del_id`, `po_id`, `del_status`, `del_status_log`, `del_update_date`, `tran_type_id`, `tran_type_name`, `mem_id`, `mem_name`, `del_ip`, `del_start_date`) VALUES
(1, 1, '1', 0, '2023-01-04 12:51:00', 2, 'UK Global Logistics Ltd', 1, 'Manisa', '192.168.0.119', '2023-01-04 12:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_member`
--

CREATE TABLE `akksofttech_member` (
  `mem_id` int(11) NOT NULL COMMENT '- ID ของผู้ขาย',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อของผู้ขาย',
  `mem_surname` varchar(100) NOT NULL COMMENT '- นามสกุลผู้ขาย',
  `mem_email` varchar(50) NOT NULL COMMENT '- Email',
  `mem_phone` varchar(11) NOT NULL COMMENT '-เบอร์โทรศัพท์ผู้ขาย',
  `mem_username` varchar(100) NOT NULL COMMENT '- Username',
  `mem_password` varchar(100) NOT NULL COMMENT '- Password',
  `mem_ip` varchar(15) NOT NULL COMMENT '- IP',
  `mem_id_save` int(11) NOT NULL,
  `mem_name_save` varchar(300) NOT NULL,
  `mem_date` datetime NOT NULL COMMENT '- วันที่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_member`
--

INSERT INTO `akksofttech_member` (`mem_id`, `mem_name`, `mem_surname`, `mem_email`, `mem_phone`, `mem_username`, `mem_password`, `mem_ip`, `mem_id_save`, `mem_name_save`, `mem_date`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '00000000', 'admin', 'admin', '192.168.0.148', 0, 'Addmember', '0000-00-00 00:00:00'),
(2, 'Pluem', 'Pluem', 'pluem@gmail.com', '0641318526', 'Pluem', '1234', '192.168.0.149', 0, 'Addmember', '2023-01-04 11:38:26'),
(3, 'MOMO', 'MOMO', 'MOMO@gamil.com', '0612076216', 'MOMO', 'MOMO', '192.168.0.148', 0, 'Addmember', '2023-01-13 10:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_member_store`
--

CREATE TABLE `akksofttech_member_store` (
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `mem_id` int(11) NOT NULL COMMENT '- ID ของผู้ขาย',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อของผู้ขาย',
  `pos` int(11) NOT NULL COMMENT '- รหัส POS',
  `sto_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อร้าน',
  `sto_logo` varchar(5000) NOT NULL COMMENT '- Logo',
  `sto_address` varchar(100) NOT NULL COMMENT '- ที่อยู่',
  `sto_province` varchar(100) NOT NULL COMMENT '- จังหวัด รัฐ US , UK',
  `sto_zipcode` varchar(100) NOT NULL COMMENT '- รหัสไปรษณีย์',
  `sto_latitude` varchar(100) NOT NULL COMMENT '- ละติจูด',
  `sto_longtitude` varchar(100) NOT NULL COMMENT '- ลองติจูด',
  `sto_ip` varchar(15) NOT NULL COMMENT '- IP',
  `sto_start_date` datetime NOT NULL COMMENT '- วัันที่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_member_store`
--

INSERT INTO `akksofttech_member_store` (`sto_id`, `mem_id`, `mem_name`, `pos`, `sto_name`, `sto_logo`, `sto_address`, `sto_province`, `sto_zipcode`, `sto_latitude`, `sto_longtitude`, `sto_ip`, `sto_start_date`) VALUES
(1, 1, 'admin', 0, 'LUMPINIE', 'naropos_20230113182033.png', 'LUMPINIE', 'LUMPINIE', 'LUMPINIE', '0', '0', '192.168.0.103', '2023-01-17 13:08:05'),
(2, 2, 'Pluem', 0, 'PHONE', 'naropos_20221206164714.png', '14/3', 'Phathun', '12130', '0', '0', '192.168.0.149', '2023-01-04 11:39:14'),
(4, 3, 'MOMO', 0, 'MOMO', '', 'MOMO', 'MOMO', 'MOMO', '-', '-', '192.168.0.148', '2023-01-13 11:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_member_store_image`
--

CREATE TABLE `akksofttech_member_store_image` (
  `img_id` int(11) NOT NULL COMMENT '- ID รูปร้าน',
  `mem_id` int(11) NOT NULL COMMENT '- ID ของผู้ขาย',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `sto_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อร้าน',
  `img_name` varchar(100) NOT NULL COMMENT '- รูป',
  `mem_id_save` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `img_ip` varchar(100) NOT NULL COMMENT '- IP',
  `img_start_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_payment`
--

CREATE TABLE `akksofttech_payment` (
  `pay_cus_id` int(11) NOT NULL COMMENT '- ID การชำระเงินของผู้ซื้อ',
  `po_id` int(11) NOT NULL COMMENT '- ID ใบสั่งซื้อ',
  `bac_name` varchar(100) NOT NULL COMMENT '- ชื่อธนาคาร',
  `bac_number` varchar(10) NOT NULL COMMENT '- เลขบัญชี',
  `bac_account` varchar(100) NOT NULL COMMENT '- ชื่ื่อบัญชี',
  `amount` float NOT NULL COMMENT '- จำนวนเงิน',
  `tranfer_image` varchar(100) NOT NULL COMMENT '- รูปสลิปการโอนเงิน',
  `tranfer_date` datetime NOT NULL COMMENT '- วันเวลาที่โอนเงิน',
  `pay_ip` varchar(15) NOT NULL COMMENT '- IP',
  `bac_number_mem` varchar(10) NOT NULL COMMENT 'เลขที่บัญชีผู้ขาย',
  `bac_mem_name` varchar(100) NOT NULL COMMENT 'ชื่อบัญชีของผู้ขาย',
  `bac_sto_name` varchar(100) NOT NULL COMMENT 'ชื่อธนาคารของผู้ขาย',
  `pay_start_date` datetime NOT NULL COMMENT '- วันที่',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_payment`
--

INSERT INTO `akksofttech_payment` (`pay_cus_id`, `po_id`, `bac_name`, `bac_number`, `bac_account`, `amount`, `tranfer_image`, `tranfer_date`, `pay_ip`, `bac_number_mem`, `bac_mem_name`, `bac_sto_name`, `pay_start_date`, `mem_id`, `mem_name`) VALUES
(66, 3, 'HSBC', '1625369875', 'Manisa', 128.5, 'bank_20230113175144.png', '2023-01-13 17:50:19', '192.168.0.148', '5986987596', 'LUMPINIE', 'HSBC', '2023-01-13 17:51:44', 17, 'Maneerit'),
(67, 4, 'Lloyds', '313', 'sadasd', 32123, 'bank_20230113175307.png', '2023-01-13 17:52:58', '192.168.0.102', '5986987596', 'LUMPINIE', 'HSBC', '2023-01-13 17:53:07', 11, 'gg'),
(68, 5, 'Lloyds', '1', '1', 1, 'bank_20230113180138.png', '0001-01-23 11:01:27', '192.168.0.102', '5986987596', 'LUMPINIE', 'HSBC', '2023-01-13 18:01:38', 1, 'Admin'),
(69, 9, 'Lloyds', '3113', '23211', 2313210, 'bank_20230117095913.png', '2023-01-24 00:59:00', '192.168.0.102', '8965478595', 'LUMPINIE', 'Lloyds', '2023-01-17 09:59:13', 1, 'Admin'),
(70, 11, 'Barclays', '1254698765', 'Manisa', 1.95, 'bank_20230117152305.png', '2023-02-17 10:00:00', '192.168.0.148', '1254569873', 'LUMPINIE', 'Barclays', '2023-01-17 15:23:05', 17, 'Maneerit'),
(71, 14, 'HSBC', '0641318526', 'anuwat', 71.5, 'bank_20230117175140.png', '2023-01-17 17:51:20', '192.168.0.102', '1254569873', 'LUMPINIE', 'Barclays', '2023-01-17 17:51:40', 1, 'Admin'),
(72, 12, 'Barclays', '651651651', 'krungthai', 500000, 'bank_20230117175417.png', '2023-01-17 17:53:59', '192.168.0.102', '8965478595', 'LUMPINIE', 'Lloyds', '2023-01-17 17:54:17', 1, 'Admin'),
(73, 16, 'Lloyds', 'esf', 'fse', 151, 'bank_20230117192021.png', '2023-01-17 19:18:55', '192.168.0.148', '5986987596', 'LUMPINIE', 'HSBC', '2023-01-17 19:20:21', 18, 'ggg'),
(74, 18, 'HSBC', '55', '2655', 5, 'bank_20230118143849.png', '2023-01-18 14:38:17', '192.168.0.148', '5986987596', 'LUMPINIE', 'HSBC', '2023-01-18 14:38:49', 18, 'ggg'),
(75, 20, 'Lloyds', '5543453', 'dfhdfh', 10, 'bank_20230118144410.png', '2023-01-18 14:43:40', '192.168.0.148', '1254569873', 'LUMPINIE', 'Barclays', '2023-01-18 14:44:10', 18, 'ggg'),
(76, 21, 'Lloyds', '2453', 'kjl', 10, 'bank_20230118144601.png', '2023-01-18 14:45:27', '192.168.0.148', '5986987596', 'LUMPINIE', 'HSBC', '2023-01-18 14:46:01', 18, 'ggg'),
(77, 22, 'HSBC', '56345', 'lui', 10, 'bank_20230118144819.png', '2023-01-18 14:47:38', '192.168.0.148', '5986987596', 'LUMPINIE', 'HSBC', '2023-01-18 14:48:19', 18, 'ggg'),
(78, 35, '1', '', '', 0, '', '2023-01-28 14:07:55', '192.168.0.148', '8965478595', 'LUMPINIE', 'Lloyds', '2023-01-28 14:08:37', 18, 'ggg'),
(79, 36, 'HSBC', '1', '1', 0, 'bank_20230202175915.png', '2023-02-02 17:58:00', '192.168.0.123', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-02 17:59:15', 20, 'Jaturat'),
(80, 37, 'Lloyds', 'น', 'น', 1, 'bank_20230202180602.png', '2023-02-02 18:05:00', '192.168.0.123', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-02 18:06:02', 20, 'Jaturat'),
(81, 38, 'HSBC', '1', '1', 1, 'bank_20230202180913.png', '2023-02-02 18:09:00', '192.168.0.123', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-02 18:09:13', 20, 'Jaturat'),
(82, 39, 'Lloyds', '213333213', '31323', 31323, 'naropos_20230203173832.png', '2023-02-03 17:38:00', '192.168.0.102', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-03 17:38:32', 1, 'Admin'),
(83, 42, 'HSBC', '123659851', 'Manisa', 9.9, 'naropos_20230210173836.png', '2023-02-10 17:37:00', '::1', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-10 17:38:36', 18, 'ggg'),
(84, 44, 'HSBC', '453453543', 'manisa', 4.5, 'naropos_20230210174158.png', '2023-02-10 17:41:00', '::1', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-10 17:41:58', 18, 'ggg'),
(85, 45, 'HSBC', '1541564', 'daw', 13.5, 'naropos_20230210174405.png', '2023-02-10 17:43:00', '::1', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-10 17:44:05', 18, 'ggg'),
(86, 46, 'Barclays', 'dasdassass', '231221sdadsad', 3333.56, 'naropos_20230210174441.png', '2023-02-10 17:44:00', '::1', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-10 17:44:41', 18, 'ggg'),
(87, 47, 'HSBC', '23123', 'klm', 213.55, 'naropos_20230210174703.png', '2023-02-10 17:46:00', '::1', '8965478595', 'LUMPINIE', 'Lloyds', '2023-02-10 17:47:03', 18, 'ggg'),
(88, 48, 'HSBC', 'gsgee', 'fgsg', 53, 'naropos_20230210174942.png', '2023-02-10 17:49:00', '::1', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-10 17:49:42', 18, 'ggg'),
(89, 51, 'HSBC', '6385786594', 'Manisa', 28.1, 'naropos_20230213110628.png', '2023-02-13 11:04:00', '192.168.0.148', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-13 11:06:28', 18, 'ggg'),
(90, 52, 'HSBC', '3265694245', 'manis', 29.35, 'naropos_20230213144005.png', '2023-02-13 14:38:00', '192.168.0.148', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-13 14:40:05', 18, 'ggg'),
(91, 53, 'HSBC', '38735743', 'jjjfd', 2, 'naropos_20230213144247.png', '2023-02-13 14:42:00', '192.168.0.148', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-13 14:42:47', 18, 'ggg'),
(92, 54, 'HSBC', '21312323', 'sdas', 500, 'naropos_20230213144948.png', '2023-02-13 14:48:00', '192.168.0.102', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-13 14:49:48', 1, 'Admin'),
(93, 55, 'HSBC', '2321', '321321', 3213210, 'naropos_20230213145143.png', '2023-02-13 14:51:00', '192.168.0.102', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-13 14:51:43', 1, 'Admin'),
(94, 56, 'HSBC', '6748786748', 'manisa', 2.95, 'naropos_20230213145414.png', '2023-02-13 14:51:00', '192.168.0.148', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-13 14:54:14', 18, 'ggg'),
(95, 62, 'HSBC', '6589545689', 'Manisa', 11.95, 'naropos_20230215175916.png', '2023-02-15 17:58:00', '192.168.0.119', '8965478595', 'LUMPINIE', 'Lloyds', '2023-02-15 17:59:16', 22, 'Maker2'),
(96, 63, 'HSBC', '1', '1', 1, 'naropos_20230215182453.png', '2023-02-15 18:23:00', '192.168.0.123', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-15 18:24:53', 22, 'Maker2'),
(97, 65, 'Barclays', 'a13213', '312213sadsad', 5000, 'naropos_20230216120233.png', '2023-02-16 12:01:00', '192.168.0.102', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-16 12:02:33', 1, 'Admin'),
(98, 67, 'Lloyds', '32132213', '2313add', 500, 'naropos_20230216164615.png', '2023-02-16 16:45:00', '192.168.0.102', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-16 16:46:15', 1, 'Admin'),
(99, 68, 'Barclays', '061313128', 'คอหอยพัง', 54.45, 'naropos_20230216172908.png', '2023-02-16 17:28:00', '192.168.0.102', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-16 17:29:08', 1, 'Admin'),
(100, 70, 'HSBC', '0975542748', 'HSBC', 15.9, 'naropos_20230217130648.png', '2023-02-17 13:05:00', '192.168.0.149', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-17 13:06:48', 18, 'ggg'),
(101, 71, 'Barclays', '555677', 'Rou', 500, 'naropos_20230217151158.png', '2023-02-17 15:11:00', '192.168.0.149', '5986987596', 'LUMPINIE', 'HSBC', '2023-02-17 15:11:58', 18, 'ggg'),
(102, 73, 'Barclays', '321232132', '2312321', 555555, 'naropos_20230217164006.png', '2023-02-17 16:39:00', '192.168.0.102', '8965478595', 'LUMPINIE', 'Lloyds', '2023-02-17 16:40:06', 1, ''),
(103, 74, 'Barclays', '321213213', '31321321', 2165160, 'naropos_20230217164935.png', '2023-02-17 16:49:00', '192.168.0.102', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-17 16:49:35', 1, ''),
(104, 79, 'HSBC', 'aaaa33', 'pluem', 5000, 'naropos_20230218175018.png', '2023-02-18 17:49:00', '::1', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-18 17:50:18', 1, 'หล่อ'),
(105, 83, 'Lloyds', '3213', '3132', 332132000, 'naropos_20230220154446.png', '2023-02-20 15:44:00', '192.168.0.102', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-20 15:44:46', 1, 'หล่อ'),
(106, 85, 'HSBC', '123456', 'pluem', 500, 'naropos_20230221093119.png', '2023-02-21 09:30:00', '192.168.0.102', '8965478595', 'LUMPINIE', 'Lloyds', '2023-02-21 09:31:19', 1, 'จัน'),
(107, 87, 'HSBC', '12312312', '2313', 321321, 'naropos_20230222121938.png', '2023-02-22 12:19:00', '192.168.0.102', '1254569873', 'LUMPINIE', 'Barclays', '2023-02-22 12:19:38', 1, 'จัน');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_phrchaes_order_detail`
--

CREATE TABLE `akksofttech_phrchaes_order_detail` (
  `pod_id` int(11) NOT NULL COMMENT '- ID รายละเอียดคำสั่งซื้อ',
  `cart_id` int(11) NOT NULL COMMENT '- ID รายละเอียดคำสั่งซื้อจากตะกร้า',
  `po_id` int(11) NOT NULL COMMENT '- ID ใบสั่งซื้อ',
  `pod_create` datetime NOT NULL COMMENT '- วันที่สั่งซื้อ',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `cat_id` int(11) NOT NULL COMMENT '- ID หมวดหมูสินค้า',
  `cat_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อหมวดหมู่สินค้า',
  `scat_id` int(11) NOT NULL COMMENT '- ID หมวดหมูู่สินค้าย่อย',
  `scat_name` varchar(100) NOT NULL COMMENT '- ชื่อหมวดหมู่สินค้าย่อย',
  `prod_id` int(11) NOT NULL COMMENT '- ID สินค้า',
  `prod_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อสินค้า',
  `prod_price` float NOT NULL COMMENT '- ราคาสิินค้า',
  `sprod_id` int(11) NOT NULL COMMENT '- ID สินค้้าย่อย',
  `sprod_name` varchar(100) NOT NULL COMMENT '- ชื่อสินค้าย่อย',
  `sprodone_id` int(11) NOT NULL COMMENT '- ID สินค้้าย่อย 1',
  `sprodone_name` varchar(100) NOT NULL COMMENT '- ชื่อสินค้าย่อย 1',
  `prod_sku` varchar(100) NOT NULL COMMENT '- SKU',
  `sprod_sku` varchar(100) NOT NULL COMMENT '- SKU ย่อย',
  `sprodone_sku` varchar(100) NOT NULL COMMENT '- SKU ย่่อย 1',
  `prod_brand` varchar(100) NOT NULL COMMENT '- ยี่ห้อสินค้า',
  `prod_image` varchar(100) NOT NULL COMMENT '- รูปภาพสินค้า',
  `quantity` int(100) NOT NULL COMMENT '- จำนวนสินค้าที่ต้องการ',
  `cus_id` int(11) NOT NULL COMMENT '- ID ผู้ซื้อ',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `pod_ip` varchar(15) NOT NULL COMMENT '- IP',
  `pod_start_date` datetime NOT NULL COMMENT '- วันที่่',
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_product`
--

CREATE TABLE `akksofttech_product` (
  `prod_id` int(11) NOT NULL COMMENT '- ID สินค้า',
  `prod_name` varchar(100) NOT NULL COMMENT '- ชื่อสินค้า',
  `prod_price` float NOT NULL COMMENT '- ราคาสินค้า',
  `prod_sku` varchar(100) NOT NULL COMMENT '- SKU',
  `prod_detail` mediumtext NOT NULL COMMENT '- รายละเอียดของสินค้า',
  `prod_quantity` int(100) NOT NULL COMMENT '- จำนวนสินค้าคงเหลือ',
  `prod_unit` varchar(100) NOT NULL COMMENT '- หน่วยนับ',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `cat_id` int(11) NOT NULL COMMENT '- ID หมวดหมู่สิินค้า',
  `scate_id` int(11) NOT NULL COMMENT '- ID หมวดหมู่สินค้าย่อย',
  `prod_image` varchar(100) NOT NULL COMMENT '- รูปภาพสินค้า',
  `prod_brand` varchar(100) NOT NULL COMMENT '- ยี่ห้อสินค้า',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `prod_ip` varchar(15) NOT NULL COMMENT '- IP',
  `prod_start_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_product`
--

INSERT INTO `akksofttech_product` (`prod_id`, `prod_name`, `prod_price`, `prod_sku`, `prod_detail`, `prod_quantity`, `prod_unit`, `sto_id`, `cat_id`, `scate_id`, `prod_image`, `prod_brand`, `mem_id`, `mem_name`, `prod_ip`, `prod_start_date`) VALUES
(1, 'Prawn Crackers', 0, '1', 'Chicken satay, chicken spring roll, deep fried wanton and chicken on toast.Chicken satay, chicken spring roll, deep fried wanton and chicken on toast.Chicken satay, chicken spring roll, deep fried wanton and chicken on toast.Chicken satay, chicken spring roll, deep fried wanton and chicken on toast.', 0, '-', 1, 1, 0, 'naropos_20230209111958.png', '', 1, 'admin', '192.168.0.102', '2023-02-20 09:30:30'),
(2, 'Mix Starter', 4.95, '2', 'Chicken satay, chicken spring roll, deep fried wanton and chicken on toast.', 0, '-', 1, 1, 0, 'naropos_20230209130813.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 13:08:13'),
(6, 'Chicken Satay', 4.5, '6', 'Grill marinade chicken serves with peanut sauce.', 0, '-', 1, 1, 0, 'naropos_20230209143833.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:38:33'),
(7, 'Pad Thai', 0, '7', 'Stir-fried white noodles, egg, bean spout with tamarind sauce (sweet & sour) and roast peanut.', 0, '-', 1, 2, 0, 'naropos_20230209150551.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:05:51'),
(8, 'Drunken Noodles', 0, '8', 'Stir-fried yellow noodles garlic, chilli and vegetables.', 0, '-', 1, 2, 0, 'naropos_20230210114356.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:43:56'),
(9, 'Guitiew Rad Nah', 0, '9', 'Fried flat noodles in light gravy sauce and vegetables.', 0, '-', 1, 2, 0, 'naropos_20230210121444.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 12:14:44'),
(10, 'Chili Fried Rice', 0, '10', 'Spicy egg fried rice with Thai sweet chili paste and vegetables.', 0, '-', 1, 2, 0, 'naropos_20230209112726.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:27:26'),
(11, 'Green Curry', 0, '11', 'Thai green curry cook in coconut milk and vegetables.', 0, '-', 1, 3, 0, 'naropos_20230209112151.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:21:51'),
(12, 'Panang Curry', 0, '12', 'Thai Panang curry cook in coconut milk and onion.', 0, '-', 1, 3, 0, 'naropos_20230209112214.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:22:14'),
(13, 'Pad Graprao', 0, '13', 'Stir-fried with garlic, chilli and vegetables.', 0, '-', 1, 3, 0, 'naropos_20230209112851.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:28:51'),
(14, 'Pad Priggang', 0, '14', 'Stir-fried with Thai red curry paste, vegetable and bamboo shoot.', 0, '-', 1, 3, 0, 'naropos_20230209113006.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:30:06'),
(15, 'Pad Khing', 0, '15', 'Stir-fried with garlic, ginger and vegetables.', 0, '-', 1, 3, 0, 'naropos_20230209112248.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:22:48'),
(16, 'Pad Med Mamuang', 0, '16', 'Stir-fried with vegetable, pineapple and cashew nut.', 0, '-', 1, 3, 0, 'naropos_20230209114328.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:43:28'),
(17, 'Sweet & Sour', 0, '17', 'Stir-fried with sweet and sour sauce, pineapple, tomato and cucumber.', 0, '-', 1, 3, 0, 'naropos_20230209114021.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:40:21'),
(18, 'Red Curry', 0, '18', 'Thai red curry cook in coconut milk, vegetable and bamboo shoot.', 0, '-', 1, 3, 0, 'naropos_20230209112350.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:23:50'),
(20, 'Mixed Starters for 1 person', 6.25, '20', 'Mixed 5 Starters; Chicken Satay, Chicken Spring Roll, Thai Fishcake,Deep-fried Wanton and Chicken on Toast.', 0, '-', 1, 1, 0, 'naropos_20230209130115.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 13:01:15'),
(21, 'Mixed Starters for 2 people', 11.95, '21', 'Mixed 5 Starters; Chicken Satay, Chicken Spring Roll, Pork Ribs,Deep-fried Wanton and Chicken on Toast.', 0, '-', 1, 1, 0, 'naropos_20230209141039.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:10:39'),
(23, 'Prawn Satay', 7.95, '23', 'Grilled marinated prawns served with peanut sauce.', 0, '-', 1, 1, 0, 'naropos_20230209112106.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:21:06'),
(24, 'Prawn Tempura', 7.95, '24', 'Deep-fried prawns in light breadcrumbs served with plum sauce.', 0, '-', 1, 1, 0, 'naropos_20230209122813.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 12:28:13'),
(25, 'Prawn Cakes', 7.95, '25', 'Prawn cakes in light breadcrumbs served with plum sauce.', 0, '-', 1, 1, 0, 'naropos_20230209125652.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 12:56:52'),
(26, 'Thai Fishcakes', 6.25, '26', 'Thai spicy fishcakes served with spicy sauce, cucumber and peanut.', 0, '-', 1, 1, 0, 'naropos_20230209125747.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 12:57:47'),
(27, 'Pork Ribs', 5.95, '27', 'Pork ribs cooked in barbeque sauce.', 0, '-', 1, 1, 0, 'naropos_20230209114405.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 11:44:05'),
(28, 'Chicken on Toast', 6.25, '28', 'Deep-fried chicken on toast served with plum sauce.', 0, '-', 1, 1, 0, 'naropos_20230209125932.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 12:59:32'),
(29, 'Chicken & Prawn Dumpling', 6.95, '29', 'Thai style chicken and prawns dumpling served with soy sauce.', 0, '-', 1, 1, 0, 'naropos_20230209141351.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:13:51'),
(30, 'Chicken Breadcrumbs', 6.25, '30', 'Chicken in light breadcrumbs served with plum sauce.', 0, '-', 1, 1, 0, 'naropos_20230209141743.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:17:43'),
(31, 'Salt Pepper Squid', 10.95, '31', 'Deep-fried squid in light batter, top with salt and pepper.', 0, '-', 1, 1, 0, 'naropos_20230209141858.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:18:58'),
(32, 'Prawn on Toast', 7.95, '32', 'Deep-fried prawn on toast served with plum sauce.', 0, '-', 1, 1, 0, 'naropos_20230209142050.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:20:50'),
(33, 'Thai Spring Rolls', 0, '33', 'Thai style spring rolls served with plum sauce.', 0, '-', 1, 1, 0, 'naropos_20230209142303.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:23:03'),
(34, 'Pak Tod Jay (V)', 5.95, '34', 'Deep-fried mixed vegetables in batter served with plum sauce.', 0, '-', 1, 1, 0, 'naropos_20230209142537.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:25:37'),
(35, 'Tofu (V)', 6.95, '35', 'Deep-fried Tofu served with spicy sauce, cucumber and peanut.', 0, '-', 1, 1, 0, 'naropos_20230209142724.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:27:24'),
(36, 'Sweet Corn Cakes (V)', 6.95, '36', 'Deep-fried sweet corn cakes served with spicy sauce, cucumber and peanut.', 0, '-', 1, 1, 0, 'naropos_20230209143323.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:33:23'),
(37, 'Vegetable Dumpling (V)', 6.95, '37', 'Vegetable dumpling served with soy sauce.', 0, '-', 1, 1, 0, 'naropos_20230209143625.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:36:25'),
(38, 'Tom Yum', 0, '38', 'A very famous Thai style hot and sour spicy soup with mushroom and vegetables.', 0, '-', 1, 4, 0, 'naropos_20230209144201.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:42:01'),
(39, 'Tom Kha', 0, '39', 'Thai style hot and sour spicy soup with coconut milk, mushroom and vegetables.', 0, '-', 1, 4, 0, 'naropos_20230209144333.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:43:33'),
(40, 'Wan Ton Soup', 6.95, '40', 'Clear wanton soup with chicken, prawns and vegetables.', 0, '-', 1, 4, 0, 'naropos_20230209144453.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:44:53'),
(41, 'Yum', 0, '41', 'Thai style spicy hot and sour salad with vegetables and coriander.', 0, '-', 1, 4, 0, 'naropos_20230209144839.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:48:39'),
(42, 'Som Tam Thai (V)', 7.95, '42', 'A very famous hot and spicy green papaya salad with peanut.', 0, '-', 1, 4, 0, 'naropos_20230209145012.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:50:12'),
(43, 'Weeping Tiger', 12.95, '43', 'Sizzling sirloin steak grilled with garlic and soy sauce.', 0, '-', 1, 5, 0, 'naropos_20230209145125.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:51:25'),
(44, 'Garlic King Prawns', 14.95, '44', 'King prawns, deep-fried in batter topped with garlic sauce.', 0, '-', 1, 5, 0, 'naropos_20230209145237.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:52:37'),
(45, 'Sizzling Prawns', 14.95, '45', 'King prawns, stir-fried with garlic and white wine sauce served on sizzling dish', 0, '-', 1, 5, 0, 'naropos_20230209145518.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:55:18'),
(46, 'Duck Tamarind Sauce', 11.95, '46', 'Roast duck, topped with tamarind sauce.', 0, '-', 1, 5, 0, 'naropos_20230209145704.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:57:04'),
(47, 'Duck Chinese Mushroom', 8.95, '47', 'Roast Duck stir-fried with vegetables and Chinese mushroom.', 0, '-', 1, 5, 0, 'naropos_20230209150007.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:00:07'),
(48, 'Duck Red Curry', 8.95, '48', 'Roast Duck cooked in Thai red curry, pineapple and tomato.', 0, '-', 1, 5, 0, 'naropos_20230209150158.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:01:58'),
(49, 'Haddock Chu Chee', 11.95, '49', 'Deep-fried Haddock Fish fillet topped with Thai Panang curry sauce and', 0, '-', 1, 5, 0, 'naropos_20230209150341.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:03:41'),
(50, 'Sweet & Sour Sea Bass', 15.95, '50', 'Sea Bass deep-fried topped with tamarind sweet & sour sauce.', 0, '-', 1, 5, 0, 'naropos_20230209151440.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:14:40'),
(51, 'Spicy Steamed Sea Bass', 15.95, '51', 'Sea Bass steamed with lemon juice, chilli and garlic.', 0, '-', 1, 5, 0, 'naropos_20230209151730.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:17:30'),
(52, 'Sea Bass with Spicy Herbs', 15.95, '52', 'Sea Bass deep-fried topped with spicy mixed herbs (lemon grass, garlic,chili, and galangal).', 0, '-', 1, 5, 0, 'naropos_20230209152014.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:20:14'),
(53, 'Garlic Sea Bass', 15.95, '53', 'Sea Bass deep-fried topped with garlic and white pepper.', 0, '-', 1, 5, 0, 'naropos_20230210110838.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:08:38'),
(54, 'Salad-Thai Style', 0, '54', 'Hot and sour Thai style salad with chili, lemon grass and coriander.', 0, '-', 1, 5, 0, 'naropos_20230210110651.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:06:51'),
(55, 'Stir-Fried Red Curry Mixed Seafood', 11.95, '55', 'Mixed Seafood stir-fried with red curry paste, garlic and vegetables.', 0, '-', 1, 5, 0, 'naropos_20230210110527.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:05:27'),
(56, 'Sizzling Spicy Prawns', 14.95, '56', 'Sizzling prawns with sweet chili paste and vegetables.', 0, '-', 1, 5, 0, 'naropos_20230209151209.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:12:09'),
(57, 'Green Curry', 0, '57', 'Thai green curry cooked in coconut milk and vegetables.', 0, '-', 1, 6, 0, 'naropos_20230209150745.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:07:45'),
(58, 'Red Curry', 0, '58', 'Thai red curry cooked in coconut milk, vegetables and bamboo shoot.', 0, '-', 1, 6, 0, 'naropos_20230209150907.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:09:07'),
(59, 'Panang Curry', 0, '59', 'Thai Panang curry cooked in coconut milk, onion and lime leave.', 0, '-', 1, 6, 0, 'naropos_20230209150957.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 15:09:57'),
(60, 'Massamun Curry', 0, '60', 'Thai Massamun curry cooked with coconut milk and potato.', 0, '-', 1, 6, 0, 'naropos_20230210111005.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:10:05'),
(61, 'Jungle Curry', 0, '61', 'Thai Jungle curry with vegetables.', 0, '-', 1, 6, 0, 'naropos_20230210111124.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:11:24'),
(62, 'Pad Graprao', 0, '62', 'Stir-fried with garlic, chilli and vegetables.', 0, '-', 1, 7, 0, 'naropos_20230210111206.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:12:06'),
(63, 'Pad Priggang', 0, '63', 'Stir-fried with Thai red curry paste, bamboo shoot and vegetables.', 0, '-', 1, 7, 0, 'naropos_20230210111243.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:12:43'),
(64, 'Pad Namprig Pao', 0, '64', 'Stir-fried with Thai sweet chilli paste, garlic and vegetables.', 0, '-', 1, 7, 0, 'naropos_20230210111352.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:13:52'),
(65, 'Pad Khing', 0, '65', 'Stir-fried with garlic, ginger and vegetables.', 0, '-', 1, 7, 0, 'naropos_20230210111436.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:14:36'),
(66, 'Sweet & Sour', 0, '66', 'Stir-fried with sweet and sour sauce, pineapple, tomato and cucumber.', 0, '-', 1, 7, 0, 'naropos_20230210111615.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:16:15'),
(67, 'Pad Med Mamuang', 0, '67', 'Stir-fried with vegetables, pineapple and cashew nut.', 0, '-', 1, 7, 0, 'naropos_20230210111715.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:17:15'),
(68, 'Pad Kratiam', 0, '68', 'Thai style, stir-fried with garlic and white pepper.', 0, '-', 1, 7, 0, 'naropos_20230210111928.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:19:28'),
(69, 'Pad Nammun Hoi', 0, '69', 'Stir-fried with oyster sauce, mushroom and vegetables.', 0, '-', 1, 7, 0, 'naropos_20230210112245.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:22:45'),
(70, 'Stir-Fried Mixed Vegetables (V)', 5.95, '70', 'Stir-fried mixed vegetables with soya bean sauce.', 0, '-', 1, 8, 0, 'naropos_20230210112355.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:23:55'),
(71, 'Stir-Fried Broccoli (V)', 5.95, '71', 'Broccoli stir-fried with soya bean sauce.', 0, '-', 1, 8, 0, 'naropos_20230210112542.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:25:42'),
(72, 'Stir-Fried Pak Choi (V)', 5.95, '72', 'Pak Choi stir-fried with garlic and oyster sauce.', 0, '-', 1, 8, 0, 'naropos_20230210112748.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:27:48'),
(73, 'Stir-Fried 5 Mixed Vegetables (V)', 6.95, '73', 'Stir-fried mushroom, sweet baby corn, green bean, asparagus, red and green pepper with soya bean sauce.', 0, '-', 1, 8, 0, 'naropos_20230210113126.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:31:26'),
(74, 'Stir-Fried Tofu & Aubergine (V)', 7.5, '74', 'Stir fried bean curd and aubergine with garlic and yellow bean sauce.', 0, '-', 1, 8, 0, 'naropos_20230210113246.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:32:46'),
(75, 'Pad Se-Ew', 0, '75', 'Stir-fried flat noodles with soy sauce and vegetables.', 0, '-', 1, 9, 0, 'naropos_20230210113503.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:35:03'),
(76, 'Stir-Fried Yellow Noodles', 5.95, '76', 'Stir-fried yellow noodles with onion and bean sprouts.', 0, '-', 1, 9, 0, 'naropos_20230210113706.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:37:06'),
(77, 'Stir-Fried White Noodles', 5.95, '77', 'Stir-fried white noodles with egg and bean sprouts.', 0, '-', 1, 9, 0, 'naropos_20230210113900.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:39:00'),
(78, 'Pad Thai', 0, '78', 'Stir-fried white noodles, egg, bean sprouts with tamarind sauce (sweet & sour) and roast peanut.', 0, '-', 1, 9, 0, 'naropos_20230210114046.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:40:46'),
(79, 'Drunken Noodles', 0, '79', 'Stir-fried yellow noodles with garlic, chilli and vegetables.', 0, '-', 1, 9, 0, 'naropos_20230210114235.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:42:35'),
(80, 'Special Fried Rice', 0, '80', 'Special egg fried rice with vegetables.', 0, '-', 1, 10, 0, 'naropos_20230210114738.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:47:38'),
(81, 'Chili Fried Rice', 0, '81', 'Spicy egg fried rice with Thai sweet chili paste and vegetables.', 0, '-', 1, 10, 0, 'naropos_20230210115013.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:50:13'),
(82, 'Thai Sticky Rice', 4.95, '82', '-', 0, '-', 1, 10, 0, 'naropos_20230210115928.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 11:59:28'),
(83, 'Egg Fried Rice', 3.5, '83', '-', 0, '-', 1, 10, 0, 'naropos_20230210120329.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 12:03:29'),
(84, 'Coconut Rice', 3.5, '84', 'Steam Thai jasmine rice with coconut milk.', 0, '-', 1, 10, 0, 'naropos_20230210120601.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 12:06:01'),
(85, 'Jasmine Rice', 2.95, '85', 'Steam Thai jasmine rice.', 0, '-', 1, 10, 0, 'naropos_20230210120711.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 12:07:11'),
(86, 'Pineapple Fried Rice', 9.95, '86', 'Special egg fried rice with chicken & prawns, pineapple, pea, mild curry powder and top with cashew nut.', 0, '-', 1, 10, 0, 'naropos_20230210121138.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 12:11:38'),
(87, 'Special Fried Rice', 0, '87', 'Special egg fried rice with vegetables.', 0, '-', 1, 2, 0, 'naropos_20230210121326.png', '', 1, 'admin', '192.168.0.148', '2023-02-10 12:13:26'),
(88, 'Pad Nammun Hoi', 0, '88', 'Stir-fried with oyster sauce, mushroom and vegetables.', 0, '-', 1, 3, 0, 'naropos_20230209140804.png', '', 1, 'admin', '192.168.0.148', '2023-02-09 14:08:04'),
(89, 'อัลไฮแทม', 5, '5', '5', 5, '5', 5, 5, 5, '335612391_1626431644467196_7501527053716028565_n.jpg', '5', 5, '5', '5', '2023-03-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_purchase_order`
--

CREATE TABLE `akksofttech_purchase_order` (
  `po_id` int(11) NOT NULL COMMENT '- ID ใบสั่งซื้อ',
  `sto_id` int(11) NOT NULL COMMENT 'id ร้าน',
  `cus_id` int(11) NOT NULL,
  `po_update_date` datetime NOT NULL COMMENT '- วันเวลาที่อัพเดตสถานะ',
  `po_status` varchar(100) NOT NULL COMMENT '- สถานะของใบสั่งซื้อ',
  `tracking` varchar(100) NOT NULL COMMENT '- ID หมายเลขการจัดส่ง',
  `tran_type_name` varchar(100) NOT NULL COMMENT '- ชื่อบริษัทขนส่ง',
  `cus_name` varchar(100) NOT NULL COMMENT '- ชื่อผู้ซื้อ',
  `cus_surname` varchar(100) NOT NULL COMMENT '- นามสกุลผู้ซื้อ',
  `cus_phone` varchar(12) NOT NULL,
  `cus_address` varchar(100) NOT NULL COMMENT '- ที่อยู่การจัดส่ง',
  `cus_province` varchar(100) NOT NULL COMMENT '- จังหวัดที่ต้องจัดส่ง',
  `cus_zipcode` varchar(100) NOT NULL COMMENT '- รหัสไปรษณีย์ที่จัดส่ง',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `po_ip` varchar(15) NOT NULL COMMENT '- IP',
  `po_start_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_subcategory`
--

CREATE TABLE `akksofttech_subcategory` (
  `scate_id` int(11) NOT NULL COMMENT '- ID หมวดหมู่สินค้าย่อย',
  `scate_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อหมวดหมู่สินค้าย่อย',
  `cat_id` int(11) NOT NULL COMMENT '- ID หมวดหมู่',
  `cat_name` varchar(100) NOT NULL COMMENT '- ชื่อหมวดหมู่',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้้าน',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `scat_ip` varchar(100) NOT NULL COMMENT '- IP',
  `scat_start_date` datetime NOT NULL COMMENT '- วันที่่',
  `scate_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_subproduct`
--

CREATE TABLE `akksofttech_subproduct` (
  `sprod_id` int(11) NOT NULL COMMENT '- ID รายการสินค้าย่อย',
  `sprod_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อสินค้าย่อย',
  `sprod_sku` varchar(100) NOT NULL COMMENT '- SKU ย่อย',
  `sprod_image` varchar(100) NOT NULL COMMENT '- รูปภาพสิินค้าย่อย',
  `sprod_quantity` int(100) NOT NULL COMMENT '- จำนวนสินค้าคงเหลือ',
  `sprod_price` float NOT NULL COMMENT '- ราคาสิินค้าย่อย',
  `sprod_detail` varchar(200) NOT NULL COMMENT '- รายละเอียดของสิินค้าย่อย',
  `prod_id` int(11) NOT NULL COMMENT '- ID สิินค้า',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `sprod_ip` varchar(15) NOT NULL COMMENT '- IP',
  `sprod_start_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_subproduct`
--

INSERT INTO `akksofttech_subproduct` (`sprod_id`, `sprod_name`, `sprod_sku`, `sprod_image`, `sprod_quantity`, `sprod_price`, `sprod_detail`, `prod_id`, `mem_id`, `mem_name`, `sprod_ip`, `sprod_start_date`) VALUES
(1, 'White', '1', 'noimg.jpg', 0, 1.95, '-', 1, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(2, 'Thai Spicy', '2', 'noimg.jpg', 0, 2.95, '-', 1, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(3, 'Mixed', '3', 'noimg.jpg', 0, 2.5, '-', 1, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(9, 'Chicken', '9', 'noimg.jpg', 0, 7.5, '-', 7, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(10, 'Beef', '10', 'noimg.jpg', 0, 7.95, '-', 7, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(11, 'Prawn', '11', 'noimg.jpg', 0, 7.95, '-', 7, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(12, 'Vegetable', '12', 'noimg.jpg', 0, 6.95, '-', 7, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(13, 'Chicken', '13', 'noimg.jpg', 0, 7.5, '-', 8, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(14, 'Beef', '14', 'noimg.jpg', 0, 7.95, '-', 8, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(15, 'Prawn', '15', 'noimg.jpg', 0, 7.95, '-', 8, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(16, 'Vegetable', '16', 'noimg.jpg', 0, 6.95, '-', 8, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(17, 'Chicken', '17', 'noimg.jpg', 0, 7.5, '-', 9, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(18, 'Beef', '18', 'noimg.jpg', 0, 7.95, '-', 9, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(19, 'Prawn', '19', 'noimg.jpg', 0, 7.95, '-', 9, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(20, 'Vegetable', '20', 'noimg.jpg', 0, 6.95, '-', 9, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(21, 'Chicken', '21', 'noimg.jpg', 0, 7.5, '-', 10, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(22, 'Beef', '22', 'noimg.jpg', 0, 7.95, '-', 10, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(23, 'Prawn', '23', 'noimg.jpg', 0, 7.95, '-', 10, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(24, 'Vegetable', '24', 'noimg.jpg', 0, 6.95, '-', 10, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(25, 'Chicken', '25', 'noimg.jpg', 0, 7.5, '-', 11, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(26, 'Beef', '26', 'noimg.jpg', 0, 7.95, '-', 11, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(27, 'Prawn', '27', 'noimg.jpg', 0, 8.95, '-', 11, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(28, 'Vegetable', '28', 'noimg.jpg', 0, 6.95, '-', 11, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(29, 'Chicken', '29', 'noimg.jpg', 0, 7.5, '-', 12, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(30, 'Beef', '30', 'noimg.jpg', 0, 7.95, '-', 12, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(31, 'Prawn', '31', 'noimg.jpg', 0, 8.95, '-', 12, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(32, 'Vegetable', '32', 'noimg.jpg', 0, 6.95, '-', 12, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(33, 'Chicken', '33', 'noimg.jpg', 0, 7.5, '-', 13, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(34, 'Beef', '34', 'noimg.jpg', 0, 7.95, '-', 13, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(35, 'Prawn', '35', 'noimg.jpg', 0, 8.95, '-', 13, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(36, 'Vegetable', '36', 'noimg.jpg', 0, 6.95, '-', 13, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(37, 'Chicken', '37', 'noimg.jpg', 0, 7.5, '-', 14, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(38, 'Beef', '38', 'noimg.jpg', 0, 7.95, '-', 14, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(39, 'Prawn', '39', 'noimg.jpg', 0, 8.95, '-', 14, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(40, 'Vegetable', '40', 'noimg.jpg', 0, 6.95, '-', 14, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(41, 'Chicken', '41', 'noimg.jpg', 0, 7.5, '-', 15, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(42, 'Beef', '42', 'noimg.jpg', 0, 7.95, '-', 15, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(43, 'Prawn', '43', 'noimg.jpg', 0, 8.95, '-', 15, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(44, 'Vegetable', '44', 'noimg.jpg', 0, 6.95, '-', 15, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(45, 'Chicken', '45', 'noimg.jpg', 0, 7.5, '-', 16, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(46, 'Beef', '46', 'noimg.jpg', 0, 7.95, '-', 16, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(47, 'Prawn', '47', 'noimg.jpg', 0, 8.95, '-', 16, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(48, 'Vegetable', '48', 'noimg.jpg', 0, 6.95, '-', 16, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(49, 'Chicken', '49', 'noimg.jpg', 0, 7.5, '-', 17, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(50, 'Beef', '50', 'noimg.jpg', 0, 7.95, '-', 17, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(51, 'Prawn', '51', 'noimg.jpg', 0, 8.95, '-', 17, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(52, 'Vegetable', '52', 'noimg.jpg', 0, 6.95, '-', 17, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(53, 'Chicken', '53', 'noimg.jpg', 0, 7.5, '-', 18, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(54, 'Beef', '54', 'noimg.jpg', 0, 7.95, '-', 18, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(55, 'Prawn', '55', 'noimg.jpg', 0, 8.95, '-', 18, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(56, 'Vegetable', '56', 'noimg.jpg', 0, 6.95, '-', 18, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(59, 'Mixed White & Thai Spicy', '59', 'noimg.jpg', 0, 2.95, '-', 19, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(60, 'Chicken', '60', 'noimg.jpg', 0, 6.25, '-', 33, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(61, 'Prawn', '61', 'noimg.jpg', 0, 6.95, '-', 33, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(62, 'Vegetables (V)', '62', 'noimg.jpg', 0, 5.95, '-', 33, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(63, 'Chicken', '63', 'noimg.jpg', 0, 6.95, '-', 38, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(64, 'Prawn', '64', 'noimg.jpg', 0, 7.95, '-', 38, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(65, 'Mixed Seafood', '65', 'noimg.jpg', 0, 7.95, '-', 38, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(66, 'Mushroom (V)', '66', 'noimg.jpg', 0, 6.95, '-', 38, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(67, 'Chicken', '67', 'noimg.jpg', 0, 6.95, '-', 39, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(68, 'Prawn', '68', 'noimg.jpg', 0, 7.95, '-', 39, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(69, 'Mixed Seafood', '69', 'noimg.jpg', 0, 7.95, '-', 39, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(70, 'Mushroom (V)', '70', 'noimg.jpg', 0, 6.95, '-', 39, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(71, 'Chicken', '71', 'noimg.jpg', 0, 8.95, '-', 41, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(72, 'Beef', '72', 'noimg.jpg', 0, 8.95, '-', 41, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(73, 'Prawn', '73', 'noimg.jpg', 0, 8.95, '-', 41, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(74, 'Mixed Seafood', '74', 'noimg.jpg', 0, 8.95, '-', 41, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(75, 'Glass noodles with mince chicken & prawns', '75', 'noimg.jpg', 0, 9.95, '-', 41, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(76, 'Vegetables (V)', '76', 'noimg.jpg', 0, 7.95, '-', 41, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(77, 'Mince Chicken', '77', 'noimg.jpg', 0, 8.95, '-', 54, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(78, 'Roast Duck', '78', 'noimg.jpg', 0, 8.95, '-', 54, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(79, 'Chicken', '79', 'noimg.jpg', 0, 8.5, '-', 57, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(80, 'Prawn', '80', 'noimg.jpg', 0, 9.95, '-', 57, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(81, 'Vegetables (V)', '81', 'noimg.jpg', 0, 7.5, '-', 57, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(82, 'Chicken', '82', 'noimg.jpg', 0, 8.5, '-', 58, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(83, 'Prawn', '83', 'noimg.jpg', 0, 9.95, '-', 58, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(84, 'Vegetables (V)', '84', 'noimg.jpg', 0, 7.5, '-', 58, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(85, 'Chicken', '85', 'noimg.jpg', 0, 8.5, '-', 59, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(86, 'Pork', '86', 'noimg.jpg', 0, 8.95, '-', 59, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(87, 'Beef', '87', 'noimg.jpg', 0, 8.95, '-', 59, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(88, 'Prawn', '88', 'noimg.jpg', 0, 9.95, '-', 59, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(89, 'Mushroom (V)', '89', 'noimg.jpg', 0, 7.5, '-', 59, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(90, 'Stewing Beef', '90', 'noimg.jpg', 0, 8.95, '-', 60, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(91, 'Chicken', '91', 'noimg.jpg', 0, 8.95, '-', 60, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(92, 'Tofu (V)', '92', 'noimg.jpg', 0, 7.95, '-', 60, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(93, 'Beef', '93', 'noimg.jpg', 0, 8.95, '', 61, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(94, 'Chicken', '94', 'noimg.jpg', 0, 8.95, '', 61, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(95, 'Vegetables (V)', '95', 'noimg.jpg', 0, 7.95, '', 61, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(96, 'Chicken', '96', 'noimg.jpg', 0, 8.5, '', 62, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(97, 'Pork', '97', 'noimg.jpg', 0, 8.95, '', 62, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(98, 'Beef', '98', 'noimg.jpg', 0, 8.95, '', 62, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(99, 'Prawn', '99', 'noimg.jpg', 0, 9.95, '', 62, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(100, 'Squid', '100', 'noimg.jpg', 0, 9.95, '', 62, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(101, 'Roast Duck', '101', 'noimg.jpg', 0, 8.95, '', 62, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(102, 'Tofu (V)', '102', 'noimg.jpg', 0, 7.95, '', 62, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(103, 'Vegetables (V)', '103', 'noimg.jpg', 0, 7.5, '', 62, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(104, 'Chicken', '104', 'noimg.jpg', 0, 8.5, '', 63, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(105, 'Pork', '105', 'noimg.jpg', 0, 8.95, '', 63, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(106, 'Beef', '106', 'noimg.jpg', 0, 8.95, '', 63, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(107, 'Prawn', '107', 'noimg.jpg', 0, 9.95, '', 63, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(108, 'Vegetables (V)', '108', 'noimg.jpg', 0, 7.5, '', 63, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(109, 'Chicken', '109', 'noimg.jpg', 0, 8.5, '', 64, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(110, 'Prawn', '110', 'noimg.jpg', 0, 9.95, '', 64, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(111, 'Vegetables (V)', '111', 'noimg.jpg', 0, 7.5, '', 64, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(112, 'Chicken', '112', 'noimg.jpg', 0, 8.5, '', 65, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(113, 'Pork', '113', 'noimg.jpg', 0, 8.95, '', 65, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(114, 'Beef', '114', 'noimg.jpg', 0, 8.95, '', 65, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(115, 'Prawn', '115', 'noimg.jpg', 0, 9.95, '', 65, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(116, 'Roast Duck', '116', 'noimg.jpg', 0, 8.95, '', 65, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(117, 'Haddock Fish fillet', '117', 'noimg.jpg', 0, 11.95, '', 65, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(118, 'Chicken', '118', 'noimg.jpg', 0, 8.5, '', 66, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(119, 'Pork', '119', 'noimg.jpg', 0, 8.95, '', 66, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(120, 'Prawn', '120', 'noimg.jpg', 0, 9.95, '', 66, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(121, 'Haddock Fish fillet', '121', 'noimg.jpg', 0, 11.95, '', 66, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(122, 'Vegetables (V)', '122', 'noimg.jpg', 0, 7.5, '', 66, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(123, 'Chicken', '123', 'noimg.jpg', 0, 8.5, '', 67, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(124, 'Prawn', '124', 'noimg.jpg', 0, 9.95, '', 67, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(125, 'Roast Duck', '125', 'noimg.jpg', 0, 8.95, '', 67, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(126, 'Vegetables (V)', '126', 'noimg.jpg', 0, 7.5, '', 67, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(127, 'Chicken', '127', 'noimg.jpg', 0, 8.5, '', 68, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(128, 'Pork', '128', 'noimg.jpg', 0, 8.95, '', 68, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(129, 'Beef', '129', 'noimg.jpg', 0, 8.95, '', 68, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(130, 'Squid', '130', 'noimg.jpg', 0, 9.95, '', 68, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(131, 'Chicken', '131', 'noimg.jpg', 0, 8.5, '', 69, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(132, 'Beef', '132', 'noimg.jpg', 0, 8.95, '', 69, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(133, 'Mushroom', '133', 'noimg.jpg', 0, 6.95, '', 69, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(134, 'Chicken', '134', 'noimg.jpg', 0, 8.95, '', 75, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(135, 'Beef', '135', 'noimg.jpg', 0, 8.95, '', 75, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(136, 'Prawn', '136', 'noimg.jpg', 0, 8.95, '', 75, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(137, 'Vegetables (V)', '137', 'noimg.jpg', 0, 8.95, '', 75, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(138, 'Chicken', '138', 'noimg.jpg', 0, 8.5, '', 78, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(139, 'Prawn', '139', 'noimg.jpg', 0, 8.5, '', 78, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(140, 'Vegetables (V)', '140', 'noimg.jpg', 0, 8.5, '', 78, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(141, 'Chicken', '141', 'noimg.jpg', 0, 8.5, '', 79, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(142, 'Beef', '142', 'noimg.jpg', 0, 8.5, '', 79, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(143, 'Prawn', '143', 'noimg.jpg', 0, 8.5, '', 79, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(144, 'Vegetables (V)', '144', 'noimg.jpg', 0, 8.5, '', 79, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(145, 'Chicken', '145', 'noimg.jpg', 0, 7.95, '', 80, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(146, 'Prawn', '146', 'noimg.jpg', 0, 7.95, '', 80, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(147, 'Vegetables (V)', '147', 'noimg.jpg', 0, 7.95, '', 80, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(148, 'Chicken', '148', 'noimg.jpg', 0, 8.5, '', 81, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(149, 'Prawn', '149', 'noimg.jpg', 0, 8.5, '', 81, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(150, 'Vegetables (V)', '150', 'noimg.jpg', 0, 8.5, '', 81, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(151, 'Chicken', '151', 'noimg.jpg', 0, 7.5, '', 87, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(152, 'Beef', '152', 'noimg.jpg', 0, 7.95, '', 87, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(153, 'Prawn', '153', 'noimg.jpg', 0, 7.95, '', 87, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(154, 'Vegetables (V)', '154', 'noimg.jpg', 0, 6.95, '', 87, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(155, 'Chicken', '155', 'noimg.jpg', 0, 7.5, '', 88, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(156, 'Beef', '156', 'noimg.jpg', 0, 7.95, '', 88, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(157, 'Prawn', '157', 'noimg.jpg', 0, 8.95, '', 88, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00'),
(158, 'Vegetable', '158', 'noimg.jpg', 0, 6.95, '', 88, 1, 'admin', '192.168.0.119', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_subproduct_one`
--

CREATE TABLE `akksofttech_subproduct_one` (
  `sprodone_id` int(11) NOT NULL COMMENT '- ID รายการสินค้าย่อย 1',
  `sprodone_name` varchar(100) NOT NULL COMMENT '- ชื่ื่อสินค้าย่อย 1',
  `sprodone_sku` varchar(100) NOT NULL COMMENT '- SKU ย่อย 1',
  `sprodone_image` varchar(100) NOT NULL COMMENT '- รูปภาพสิินค้าย่อย 1',
  `sprodone_quantity` int(100) NOT NULL COMMENT '- จำนวนสินค้าคงเหลือย่อย 1 ',
  `sprodone_price` float NOT NULL COMMENT '- ราคาสิินค้าย่อย 1',
  `sprodone_detail` varchar(100) NOT NULL COMMENT '- รายละเอียดของสิินค้าย่อย 1',
  `prod_id` int(11) NOT NULL COMMENT '- ID สิินค้า',
  `sprod_id` int(11) NOT NULL COMMENT '- ID รายการสินค้าย่อย',
  `sprod_sku` varchar(100) NOT NULL COMMENT '- SKU ย่อย',
  `sprod_price` float NOT NULL COMMENT '- ราคาสิินค้าย่อย',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `sprodone_ip` varchar(15) NOT NULL COMMENT '- IP',
  `sprodone_start_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_subproduct_one`
--

INSERT INTO `akksofttech_subproduct_one` (`sprodone_id`, `sprodone_name`, `sprodone_sku`, `sprodone_image`, `sprodone_quantity`, `sprodone_price`, `sprodone_detail`, `prod_id`, `sprod_id`, `sprod_sku`, `sprod_price`, `mem_id`, `mem_name`, `sprodone_ip`, `sprodone_start_date`) VALUES
(3, 'น้ำเปล่า ขนาดใหญ่ สีแดง', '465646', '', 546, 1850000, '546', 1018, 534, '56416516', 50000, 1, 'admin', '192.168.0.102', '2023-01-06 14:37:24'),
(4, 'น้ำเปล่า ขนาดกลาง สีแดง', '6541654', '', 4654, 12890000, '65', 1018, 534, '56416516', 50000, 1, 'admin', '192.168.0.102', '2023-01-06 14:37:52'),
(5, 'H0M', '10', '', 10, 20.5, '10', 100, 544, '21', 0, 1, 'admin', '::1', '2023-01-18 17:22:10'),
(6, 'lie', '1', '', 1, 2.6, '1', 100, 544, '21', 0, 1, 'admin', '::1', '2023-01-18 17:22:28'),
(7, 'bbb', '224', '', 5, 10.5, '', 1030, 545, '1111', 100.2, 3, 'MOMO', '192.168.0.148', '2023-01-18 17:37:54'),
(8, 'aaa', '254', '', 10, 11.555, '', 1030, 545, '1111', 100.2, 3, 'MOMO', '192.168.0.148', '2023-01-18 17:38:14'),
(9, 'ytj', '21315', '', 5, 1000, '', 1030, 549, '111111111111', 10.5, 3, 'MOMO', '192.168.0.148', '2023-01-18 18:10:19'),
(10, 'ชั้นที่ 1', '98', '', 10, 10, '10', 93, 232, '232', 99.99, 1, 'admin', '192.168.0.123', '2023-02-03 15:34:33'),
(11, 'ชั้นที่ 1.1', '9889', '', 15, 15, '15', 93, 232, '232', 99.99, 1, 'admin', '192.168.0.123', '2023-02-03 15:34:52'),
(12, 'S', '001', '', 0, 100, '-', 1, 1, '1', 1.95, 1, 'admin', '192.168.0.148', '2023-02-09 11:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_tablechart`
--

CREATE TABLE `akksofttech_tablechart` (
  `chart_id` int(11) NOT NULL,
  `chart_name` varchar(100) DEFAULT NULL COMMENT '- ID รูปแผนผังร้าน',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `chart_ip` varchar(15) NOT NULL COMMENT '- IP',
  `chart_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_tablechart`
--

INSERT INTO `akksofttech_tablechart` (`chart_id`, `chart_name`, `sto_id`, `mem_id`, `mem_name`, `chart_ip`, `chart_date`) VALUES
(18, 'naropos_20230130180326.png', 1, 1, 'admin', '192.168.0.148', '2023-01-30 18:03:26'),
(20, 'naropos_20230111112314.png', 2, 1, 'admin', '192.168.0.148', '2023-01-11 16:30:28'),
(21, 'naropos_20230118142704.png', 4, 3, 'MOMO', '192.168.0.148', '2023-01-18 14:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_tabledinning`
--

CREATE TABLE `akksofttech_tabledinning` (
  `table_id` int(6) NOT NULL,
  `table_name` varchar(150) NOT NULL COMMENT '- ชื่อโต๊ะ',
  `table_person` int(11) NOT NULL COMMENT '- จำนวนที่นั้ง',
  `table_status` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT 'เปิด ปิด การจอง',
  `zone_id` int(11) DEFAULT NULL,
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `table_ip` varchar(15) NOT NULL COMMENT '- IP',
  `table_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_tabledinning`
--

INSERT INTO `akksofttech_tabledinning` (`table_id`, `table_name`, `table_person`, `table_status`, `zone_id`, `sto_id`, `mem_id`, `mem_name`, `table_ip`, `table_date`) VALUES
(255, 'TABLE 1', 6, 'YES', 23, 1, 1, 'admin', '192.168.0.148', '2023-01-11 16:44:57'),
(256, 'TABLE 2', 2, 'NO', 23, 1, 1, 'admin', '192.168.0.148', '2023-01-11 10:43:15'),
(257, 'TABLE 20', 4, 'NO', 22, 1, 1, 'admin', '192.168.0.148', '2023-01-11 10:43:29'),
(258, 'TABLE 21', 6, 'NO', 22, 1, 1, 'admin', '192.168.0.148', '2023-01-11 10:43:42'),
(259, 'TABLE 22', 1111, 'NO', 22, 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:37:15'),
(263, 'TABLE 100', 5, 'YES', 24, 4, 3, 'MOMO', '192.168.0.148', '2023-01-18 14:24:10'),
(266, 'ads', 5, 'NO', 23, 1, 1, 'admin', '192.168.0.148', '2023-01-30 18:52:41'),
(265, '002', 2, 'YES', 22, 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_tabledreserve`
--

CREATE TABLE `akksofttech_tabledreserve` (
  `res_id` int(6) NOT NULL,
  `table_id` int(6) NOT NULL,
  `table_name` varchar(150) NOT NULL COMMENT '- ชื่อโต๊ะ',
  `res_person` int(11) NOT NULL COMMENT '- จำนวนที่มา',
  `res_datereserve` datetime NOT NULL COMMENT '- เวลาที่มากิน',
  `res_status` varchar(150) NOT NULL COMMENT 'สถานะ รอยื่นยัน',
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `cus_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `cus_name` varchar(100) NOT NULL COMMENT '- ชื่อลูกค้า',
  `res_phone` varchar(20) NOT NULL COMMENT 'เบอร์โทรลูกค้า',
  `res_note` text NOT NULL COMMENT 'ข้อความ',
  `res_ip` varchar(15) NOT NULL COMMENT '- IP',
  `res_date` datetime NOT NULL COMMENT '- วันที่'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_tabledreserve`
--

INSERT INTO `akksofttech_tabledreserve` (`res_id`, `table_id`, `table_name`, `res_person`, `res_datereserve`, `res_status`, `sto_id`, `cus_id`, `cus_name`, `res_phone`, `res_note`, `res_ip`, `res_date`) VALUES
(59, 266, 'ads', 1, '2023-02-18 17:56:00', 'checkin', 1, 1, '55555', '55506163156', 'ห้ามเอาเก้าอี้มา', '::1', '2023-02-18 17:55:39'),
(58, 255, 'TABLE 1', 1, '2023-02-18 17:16:16', 'cancel', 1, 1, '21123213', '1231231231231213212', '', '192.168.0.102', '2023-02-18 14:16:53'),
(57, 255, 'TABLE 1', 1, '2023-02-15 14:17:17', 'cancel', 0, 1, 'ฟ', 'ฟ', '', '192.168.0.102', '2023-02-15 11:17:51'),
(56, 255, 'TABLE 1', 1, '2023-02-10 18:19:00', 'checkout', 1, 18, 'ทดสอบ ทดสอบ1', '0943467088', '222', '::1', '2023-02-10 18:18:52'),
(55, 255, 'TABLE 1', 1, '2023-03-03 21:17:18', 'booked', 1, 18, 'ทดสอบ ทดสอบ', '0943467088', '', '::1', '2023-02-10 18:18:08'),
(54, 255, 'TABLE 1', 1, '2023-02-10 21:51:08', 'booked', 1, 1, '1321313', '3231321322', '3123213', '192.168.0.102', '2023-02-10 18:08:05'),
(53, 255, 'TABLE 1', 1, '2023-02-10 21:16:06', 'booked', 0, 1, '32121321', '1231212321', '21321323213', '192.168.0.102', '2023-02-10 18:06:00'),
(52, 255, 'TABLE 1', 1, '2023-02-10 21:07:03', 'booked', 0, 1, '133213', '13131232', '21321', '192.168.0.102', '2023-02-10 18:03:38'),
(49, 255, 'TABLE 1', 1, '2023-02-10 21:08:01', 'booked', 0, 18, 'สถาพร เฉียบแหลม', '0943467088', 'her', '::1', '2023-02-10 18:01:43'),
(50, 255, 'TABLE 1', 1, '2023-02-10 21:54:02', 'cancel', 0, 1, 'ปลื้ม', '0641318222', 'ok', '192.168.0.102', '2023-02-10 18:02:19'),
(51, 255, 'TABLE 1', 1, '2023-02-10 21:13:03', 'booked', 1, 1, '3122321', '231323', '', '192.168.0.102', '2023-02-10 18:03:22'),
(47, 256, 'TABLE 2', 1, '2023-02-10 21:59:00', 'cancel', 1, 1, 'momoo32ooo', '321321', '3123aaa', '192.168.0.102', '2023-02-10 18:00:11'),
(46, 255, 'TABLE 1', 1, '2023-02-10 20:59:59', 'booked', 1, 1, '2313321', '122321321321321321', '321321321312', '192.168.0.102', '2023-02-10 17:59:22'),
(45, 255, 'TABLE 1', 1, '2023-02-10 21:52:00', 'booked', 1, 18, 'สถาพร เฉียบแหลม', '0943467088', 'สวัสดีจ้า', '::1', '2023-02-10 17:55:27'),
(44, 255, 'TABLE 1', 21, '2023-02-04 16:33:53', 'booked', 1, 0, '23213', '3213213', '', '::1', '2023-02-04 13:53:55'),
(43, 257, 'TABLE 20', 5, '2023-01-30 22:49:00', 'booked', 1, 0, 'dfht', '6543', 'kyu', '192.168.0.148', '2023-01-30 18:49:43'),
(42, 257, 'TABLE 20', 1000, '2023-01-30 18:25:00', 'cancel', 1, 0, 'นาสกุล ชื่อ', '0848845453', '1211111', '192.168.0.123', '2023-01-30 18:23:17'),
(41, 257, 'TABLE 20', 3, '2023-01-30 18:24:00', 'checkout', 1, 0, 'ชื่อ นามสกุล', '0632165453', 'hahaha', '192.168.0.123', '2023-01-30 18:17:53'),
(40, 255, 'TABLE 1', 1, '2023-01-25 21:15:00', 'booked', 1, 18, 'Manisa Maneerit', '0612076216', 'momo', '192.168.0.148', '2023-01-25 17:50:05'),
(39, 255, 'TABLE 1', 2, '2023-01-25 17:50:00', 'checkout', 1, 0, 'Manisa', '0612076216', 'mmmm', '192.168.0.148', '2023-01-21 11:50:38'),
(60, 255, 'TABLE 1', 1, '2023-03-02 18:30:31', 'booked', 1, 1, '31232313213', '2131', '', '::1', '2023-03-02 15:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_tablezone`
--

CREATE TABLE `akksofttech_tablezone` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(100) DEFAULT NULL,
  `sto_id` int(11) NOT NULL COMMENT '- ID รายละเอียดร้าน',
  `mem_id` int(11) NOT NULL COMMENT '- คนบันทึก',
  `mem_name` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก',
  `zone_ip` varchar(15) NOT NULL COMMENT '- IP',
  `zone_date` datetime NOT NULL COMMENT '- วันที่่'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_tablezone`
--

INSERT INTO `akksofttech_tablezone` (`zone_id`, `zone_name`, `sto_id`, `mem_id`, `mem_name`, `zone_ip`, `zone_date`) VALUES
(22, '2ND FLOOR', 1, 1, 'admin', '192.168.0.148', '2023-01-10 16:28:06'),
(23, '1ST FLOOR', 1, 1, 'admin', '192.168.0.148', '2023-01-10 16:28:26'),
(24, 'lui', 4, 3, 'MOMO', '192.168.0.148', '2023-01-18 14:23:51'),
(27, '1', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:14'),
(28, '2', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:18'),
(29, '3', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:22'),
(30, '4', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:26'),
(31, '5', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:30'),
(32, '6', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:34'),
(33, '7', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:40'),
(34, '8', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:44'),
(35, '9', 1, 1, 'admin', '192.168.0.123', '2023-01-30 18:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `akksofttech_transport`
--

CREATE TABLE `akksofttech_transport` (
  `tran_type_id` int(11) NOT NULL COMMENT '- ID ประเภทการขนส่ง',
  `tran_type_name` varchar(100) NOT NULL COMMENT '-  ชื่อประเภทขนส่ง',
  `tran_image` varchar(100) NOT NULL COMMENT '- รูปขนสง',
  `tran_ip` varchar(15) NOT NULL COMMENT '- IP',
  `tran_start_date` datetime NOT NULL COMMENT '- วันที่บันทึก',
  `cus_id_save` int(11) NOT NULL COMMENT '- คนบันทึก',
  `cus_name_save` varchar(100) NOT NULL COMMENT '- ชื่อคนบันทึก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akksofttech_transport`
--

INSERT INTO `akksofttech_transport` (`tran_type_id`, `tran_type_name`, `tran_image`, `tran_ip`, `tran_start_date`, `cus_id_save`, `cus_name_save`) VALUES
(1, 'MAS Logistics (UK) Ltd', '', '', '0000-00-00 00:00:00', 0, ''),
(2, 'UK Global Logistics Ltd', '', '', '0000-00-00 00:00:00', 0, ''),
(3, 'Worldwide Logistics Group UK', '', '', '0000-00-00 00:00:00', 0, ''),
(4, 'Bollore Logistics UK Ltd', '', '', '0000-00-00 00:00:00', 0, ''),
(5, 'Kerry Logistics (UK) Limited', '', '', '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_i` int(11) NOT NULL,
  `p_n` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_i`, `p_n`) VALUES
(1, '5555');

-- --------------------------------------------------------

--
-- Stand-in structure for view `store`
-- (See below for the actual view)
--
CREATE TABLE `store` (
`cat_name` varchar(100)
,`cat_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view1`
-- (See below for the actual view)
--
CREATE TABLE `view1` (
`cat_id` int(11)
,`cat_name` varchar(100)
,`sto_id` int(11)
,`mem_id` int(11)
,`mem_name` varchar(100)
,`cat_ip` varchar(15)
,`cat_start_date` datetime
,`cat_img` varchar(300)
);

-- --------------------------------------------------------

--
-- Structure for view `store`
--
DROP TABLE IF EXISTS `store`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `store`  AS  select `akksofttech_category`.`cat_name` AS `cat_name`,`akksofttech_category`.`cat_id` AS `cat_id` from `akksofttech_category` ;

-- --------------------------------------------------------

--
-- Structure for view `view1`
--
DROP TABLE IF EXISTS `view1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view1`  AS  select `akksofttech_category`.`cat_id` AS `cat_id`,`akksofttech_category`.`cat_name` AS `cat_name`,`akksofttech_category`.`sto_id` AS `sto_id`,`akksofttech_category`.`mem_id` AS `mem_id`,`akksofttech_category`.`mem_name` AS `mem_name`,`akksofttech_category`.`cat_ip` AS `cat_ip`,`akksofttech_category`.`cat_start_date` AS `cat_start_date`,`akksofttech_category`.`cat_img` AS `cat_img` from `akksofttech_category` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akksofttech_bank`
--
ALTER TABLE `akksofttech_bank`
  ADD PRIMARY KEY (`bak_id`);

--
-- Indexes for table `akksofttech_bank_account`
--
ALTER TABLE `akksofttech_bank_account`
  ADD PRIMARY KEY (`bac_id`);

--
-- Indexes for table `akksofttech_cart`
--
ALTER TABLE `akksofttech_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `akksofttech_category`
--
ALTER TABLE `akksofttech_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `akksofttech_customer`
--
ALTER TABLE `akksofttech_customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `akksofttech_customer_address`
--
ALTER TABLE `akksofttech_customer_address`
  ADD PRIMARY KEY (`cusa_id`);

--
-- Indexes for table `akksofttech_delivery`
--
ALTER TABLE `akksofttech_delivery`
  ADD PRIMARY KEY (`del_id`);

--
-- Indexes for table `akksofttech_member`
--
ALTER TABLE `akksofttech_member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `akksofttech_member_store`
--
ALTER TABLE `akksofttech_member_store`
  ADD PRIMARY KEY (`sto_id`);

--
-- Indexes for table `akksofttech_member_store_image`
--
ALTER TABLE `akksofttech_member_store_image`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `akksofttech_payment`
--
ALTER TABLE `akksofttech_payment`
  ADD PRIMARY KEY (`pay_cus_id`);

--
-- Indexes for table `akksofttech_phrchaes_order_detail`
--
ALTER TABLE `akksofttech_phrchaes_order_detail`
  ADD PRIMARY KEY (`pod_id`);

--
-- Indexes for table `akksofttech_product`
--
ALTER TABLE `akksofttech_product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `akksofttech_purchase_order`
--
ALTER TABLE `akksofttech_purchase_order`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `akksofttech_subcategory`
--
ALTER TABLE `akksofttech_subcategory`
  ADD PRIMARY KEY (`scate_id`);

--
-- Indexes for table `akksofttech_subproduct`
--
ALTER TABLE `akksofttech_subproduct`
  ADD PRIMARY KEY (`sprod_id`);

--
-- Indexes for table `akksofttech_subproduct_one`
--
ALTER TABLE `akksofttech_subproduct_one`
  ADD PRIMARY KEY (`sprodone_id`);

--
-- Indexes for table `akksofttech_tablechart`
--
ALTER TABLE `akksofttech_tablechart`
  ADD PRIMARY KEY (`chart_id`);

--
-- Indexes for table `akksofttech_tabledinning`
--
ALTER TABLE `akksofttech_tabledinning`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `akksofttech_tabledreserve`
--
ALTER TABLE `akksofttech_tabledreserve`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `akksofttech_tablezone`
--
ALTER TABLE `akksofttech_tablezone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `akksofttech_transport`
--
ALTER TABLE `akksofttech_transport`
  ADD PRIMARY KEY (`tran_type_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_i`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akksofttech_bank`
--
ALTER TABLE `akksofttech_bank`
  MODIFY `bak_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID ธนาคาร', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `akksofttech_bank_account`
--
ALTER TABLE `akksofttech_bank_account`
  MODIFY `bac_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID ข้อมูลบัญชีธนาคารของผู้ขาย', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `akksofttech_cart`
--
ALTER TABLE `akksofttech_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID รายละเอียดคำสั่งซื้อ', AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `akksofttech_category`
--
ALTER TABLE `akksofttech_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID หมวดหมู่', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `akksofttech_customer`
--
ALTER TABLE `akksofttech_customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID ของผู้ซื้อ', AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `akksofttech_customer_address`
--
ALTER TABLE `akksofttech_customer_address`
  MODIFY `cusa_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID ที่อยู่', AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `akksofttech_delivery`
--
ALTER TABLE `akksofttech_delivery`
  MODIFY `del_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID หมายเลขการจัดส่ง', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `akksofttech_member`
--
ALTER TABLE `akksofttech_member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID ของผู้ขาย', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `akksofttech_member_store`
--
ALTER TABLE `akksofttech_member_store`
  MODIFY `sto_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID รายละเอียดร้าน', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `akksofttech_member_store_image`
--
ALTER TABLE `akksofttech_member_store_image`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID รูปร้าน';
--
-- AUTO_INCREMENT for table `akksofttech_payment`
--
ALTER TABLE `akksofttech_payment`
  MODIFY `pay_cus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID การชำระเงินของผู้ซื้อ', AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `akksofttech_phrchaes_order_detail`
--
ALTER TABLE `akksofttech_phrchaes_order_detail`
  MODIFY `pod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID รายละเอียดคำสั่งซื้อ';
--
-- AUTO_INCREMENT for table `akksofttech_product`
--
ALTER TABLE `akksofttech_product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID สินค้า', AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `akksofttech_purchase_order`
--
ALTER TABLE `akksofttech_purchase_order`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID ใบสั่งซื้อ';
--
-- AUTO_INCREMENT for table `akksofttech_subcategory`
--
ALTER TABLE `akksofttech_subcategory`
  MODIFY `scate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID หมวดหมู่สินค้าย่อย';
--
-- AUTO_INCREMENT for table `akksofttech_subproduct`
--
ALTER TABLE `akksofttech_subproduct`
  MODIFY `sprod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID รายการสินค้าย่อย', AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `akksofttech_subproduct_one`
--
ALTER TABLE `akksofttech_subproduct_one`
  MODIFY `sprodone_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID รายการสินค้าย่อย 1', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `akksofttech_tablechart`
--
ALTER TABLE `akksofttech_tablechart`
  MODIFY `chart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `akksofttech_tabledinning`
--
ALTER TABLE `akksofttech_tabledinning`
  MODIFY `table_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;
--
-- AUTO_INCREMENT for table `akksofttech_tabledreserve`
--
ALTER TABLE `akksofttech_tabledreserve`
  MODIFY `res_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `akksofttech_tablezone`
--
ALTER TABLE `akksofttech_tablezone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `akksofttech_transport`
--
ALTER TABLE `akksofttech_transport`
  MODIFY `tran_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '- ID ประเภทการขนส่ง', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `p_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
