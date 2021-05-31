/*
 Navicat Premium Data Transfer

 Source Server         : localhostmyql
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : pos_data_rest

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 31/05/2021 17:50:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_alat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alat`;
CREATE TABLE `tbl_alat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `alat_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alat_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alat_harga` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alat_satuan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alat_dt_create` datetime NULL DEFAULT NULL,
  `alat_dt_modif` datetime NULL DEFAULT NULL,
  `alat_user_create` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alat_user_modif` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alat_aktif` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alat
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori_dt_create` datetime NULL DEFAULT NULL,
  `kategori_dt_modif` datetime NULL DEFAULT NULL,
  `kategori_user_create` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori_user_modif` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori_aktif` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (8, 'HT-000001', 'Makanan Utama', '2021-05-18 08:35:35', NULL, 'Galih', NULL, 1);
INSERT INTO `tbl_kategori` VALUES (9, 'HT-000002', 'Bahan Baku', '2021-05-21 03:58:38', NULL, 'Galih', NULL, 1);
INSERT INTO `tbl_kategori` VALUES (10, 'HT-000003', 'Minuman', '2021-05-28 04:34:14', NULL, 'Dapur Kotor 1', NULL, 1);
INSERT INTO `tbl_kategori` VALUES (11, 'HT-000004', 'Tambahan', '2021-05-28 05:41:01', NULL, 'Dapur Kotor 1', NULL, 1);
INSERT INTO `tbl_kategori` VALUES (12, 'HT-000005', 'Peralatan', '2021-05-29 06:55:36', NULL, 'Dapur Bersih 1', NULL, 1);
INSERT INTO `tbl_kategori` VALUES (13, 'HT-000006', 'Paket', '2021-05-29 09:03:39', NULL, 'Dapur Bersih 1', NULL, 1);

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_nm_pemesan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_dt_create` datetime NULL DEFAULT NULL,
  `order_dt_modif` datetime NULL DEFAULT NULL,
  `order_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_aktif` int NULL DEFAULT NULL,
  `order_diskon` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_bayar` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_total_pesanan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_selesai` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES (45, 'OR-000001', 'Mas Rino', '2021-05-29 09:35:40', NULL, 'Teller 1', NULL, 1, '0', '1050000', '1045530', NULL);

-- ----------------------------
-- Table structure for tbl_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_detail`;
CREATE TABLE `tbl_order_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_detail_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_detail_produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_detail_jumlah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_order_detail
-- ----------------------------
INSERT INTO `tbl_order_detail` VALUES (69, 'DO-000001', 'RO-000054', '30', 'OR-000001');
INSERT INTO `tbl_order_detail` VALUES (70, 'DO-000001', 'RO-000067', '10', 'OR-000001');
INSERT INTO `tbl_order_detail` VALUES (71, 'DO-000001', 'RO-000066', '10', 'OR-000001');
INSERT INTO `tbl_order_detail` VALUES (72, 'DO-000001', 'RO-000065', '30', 'OR-000001');
INSERT INTO `tbl_order_detail` VALUES (73, 'DO-000001', 'RO-000052', '30', 'OR-000001');
INSERT INTO `tbl_order_detail` VALUES (74, 'DO-000001', 'RO-000059', '20', 'OR-000001');
INSERT INTO `tbl_order_detail` VALUES (75, 'DO-000001', 'RO-000058', '20', 'OR-000001');
INSERT INTO `tbl_order_detail` VALUES (76, 'DO-000001', 'RO-000033', '75', 'OR-000001');
INSERT INTO `tbl_order_detail` VALUES (77, 'DO-000001', 'RO-000035', '75', 'OR-000001');

-- ----------------------------
-- Table structure for tbl_produk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE `tbl_produk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_kategori` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_harga` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_sku` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_satuan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_jual` int NULL DEFAULT NULL,
  `produk_stok` int NULL DEFAULT NULL,
  `produk_deskripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_jenis` int NULL DEFAULT NULL,
  `produk_dt_create` datetime NULL DEFAULT NULL,
  `produk_dt_modif` datetime NULL DEFAULT NULL,
  `produk_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_aktif` int NULL DEFAULT NULL,
  `produk_level` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_produk
-- ----------------------------
INSERT INTO `tbl_produk` VALUES (1, 'RO-000001', 'Lele BB', 'HT-000002', '8000', 'BB-LL', 'porsi', 0, 1, 'Lele mentah yang sudah dibumbui dengan rempah - rempah berkualitas', 1, '2021-05-18 13:52:13', NULL, 'Galih', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (2, 'RO-000002', 'Ayam BB', 'HT-000002', '12000', 'BB-AY', 'porsi', 0, 1, 'Ayam paha atas kualitas super yang sudah dibumbui dengan berbagai macam rempah rempah', 1, '2021-05-20 14:53:45', NULL, 'Dapur Bersih 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (3, 'RO-000003', 'Oseng Kemangi Pindang', 'HT-000001', '18450', 'M-OKP', 'porsi', 1, 0, 'Olahan pindang dengan sambal yang kaya akan rempah rempah', 2, '2021-05-21 14:45:43', NULL, 'Galih', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (4, 'RO-000004', 'Lele Goreng', 'HT-000001', '8800', 'M-LG', 'porsi', 1, 0, 'Lele goreng yang digoreng dengan rempah rempah pilihan', 2, '2021-05-21 15:09:18', NULL, 'Galih', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (5, 'RO-000005', 'Ayam Goreng', 'HT-000001', '13200', 'M-AU', 'porsi', 1, 0, 'Ayam ungkep yang sudah diungkep dengan rempah rempah pilihan', 2, '2021-05-21 15:12:11', NULL, 'Galih', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (6, 'RO-000006', 'Rica Cumi', 'HT-000001', '15441', 'M-RC', 'porsi', 1, 0, 'Olahan rica cumi yang dibalut dengan bumbu khas yang terdiri dari rempah rempah', 2, '2021-05-21 15:32:17', NULL, 'Galih', NULL, 0, 0);
INSERT INTO `tbl_produk` VALUES (7, 'RO-000007', 'Oseng Daging Balado', 'HT-000001', '21450', 'M-ODB', 'porsi', 1, 0, 'Olahan daging sapi yang sudah dibumbui dengan rempah rempah berkualitas', 2, '2021-05-21 15:35:16', NULL, 'Galih', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (8, 'RO-000008', 'Daging Sapi BB', 'HT-000002', '15000', 'BB-DS', 'porsi', 0, 1, 'Daging sapi dan tetelan yang sudah dibumbui dengan rempah rempah pilihan', 1, '2021-05-24 10:55:55', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (9, 'RO-000009', 'Sambal Masak', 'HT-000002', '90000', 'BB-SM', 'kg', 0, 1, 'Olahan sambal untuk membuat rica cumi dan rica sapi yang terdiri dari rempah rempah pilihan', 1, '2021-05-24 11:12:34', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (10, 'RO-000010', 'Pindang BB', 'HT-000002', '12000', 'BB-TG', 'porsi', 0, 1, 'Ikan tongkol yang sudah dibumbui dengan rempah rempah', 1, '2021-05-24 13:27:17', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (11, 'RO-000011', 'Cumi BB', 'HT-000002', '15000', 'BB-CU', 'porsi', 0, 1, 'Cumi mentah yang siap diolah dan sudah dibumbui', 1, '2021-05-24 13:38:08', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (12, 'RO-000012', 'Nasi BB', 'HT-000002', '25000', 'BB-NS', 'kg', 0, 1, 'Nasi panas tiap 1 kg menjadi 12 porsi', 1, '2021-05-27 09:01:15', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (13, 'RO-000013', 'Sambal Bawang', 'HT-000002', '70000', 'BB-SS', 'kg', 0, 1, 'Sambal colek yang digunakan untuk pelengkap lele goreng, ayam ungkep', 1, '2021-05-27 09:05:44', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (15, 'RO-000015', 'Oseng Ayam Balado', 'HT-000001', '18150', 'M-AB', 'porsi', 1, 0, 'Ayam masak balado yang dibumbui dengan sambal balado', 1, '2021-05-27 09:49:01', NULL, 'Dapur Bersih 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (16, 'RO-000016', 'Nasi', 'HT-000004', '3832', 'M-MS', 'porsi', 1, 0, 'Nasi panas', 1, '2021-05-27 09:56:18', NULL, 'Dapur Bersih 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (17, 'RO-000017', 'Oseng Lele Balado', 'HT-000001', '13750', 'M-OLB', 'porsi', 1, 0, 'Lele balado', 1, '2021-05-27 10:29:07', NULL, 'Dapur Bersih 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (18, 'RO-000018', 'Oseng Ayam Kemangi', 'HT-000001', '18450', 'M-OAK', 'porsi', 1, 0, 'Oseng ayam kemangi yang di buat dari ayam, sambal matang, dan kemangi', 1, '2021-05-28 10:47:05', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (19, 'RO-000019', 'Oseng Ayam Pete', 'HT-000001', '23650', 'M-OAP', 'porsi', 1, 0, 'Oseng ayam yang dibuat dari ayam, sambal matang, dan pete', 2, '2021-05-28 10:49:21', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (20, 'RO-000020', 'Oseng Lele Kemangi', 'HT-000001', '14050', 'M-OLK', 'porsi', 1, 0, 'Olahan oseng lele yang di buat dari lele, sambal matang, dan kemangi', 2, '2021-05-28 10:57:19', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (21, 'RO-000021', 'Oseng Lele Pete', 'HT-000001', '19250', 'M-OLP', 'porsi', 1, 0, 'Olahan oseng lele pete yang dibuat dari lele, sambal matang, kemangi', 2, '2021-05-28 10:59:16', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (22, 'RO-000022', 'Oseng Cumi Hitam Kemangi', 'HT-000001', '21750', 'M-OCHK', 'porsi', 1, 0, 'Olahan oseng cumi hitam yang dibuat dari cumi, sambal matang, dan kemangi', 2, '2021-05-28 11:02:50', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (23, 'RO-000023', 'Oseng Cumi Hitam Pete', 'HT-000001', '26950', 'M-OCHP', 'porsi', 1, 0, 'Olahan oseng cumi yang dibuat dari cumi, sambal matang, dan pete', 2, '2021-05-28 11:04:30', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (24, 'RO-000024', 'Oseng Cumi Hitam', 'HT-000001', '21450', 'M-OCH', 'porsi', 1, 0, 'Olahan oseng cumi yang dibuat dari cumi, sambal matang, dan jeruk limau', 2, '2021-05-28 11:05:53', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (25, 'RO-000025', 'Oseng Daging Kemangi', 'HT-000001', '21750', 'M-ODK', 'porsi', 1, 0, 'Olahan daging sapi yang dibuat menjadi oseng dengan komposisi daging sapi, sambal matang, dan kemangi', 2, '2021-05-28 11:10:55', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (26, 'RO-000026', 'Oseng Daging Pete', 'HT-000001', '26950', 'M-ODP', 'porsi', 1, 0, 'Olahan daging sapi yang dibuat menjadi oseng daging pete dengan komposisi daging sapi, sambal matang, dan pete', 2, '2021-05-28 11:13:19', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (27, 'RO-000027', 'Oseng Kemangi Telur Bakso', 'HT-000001', '18450', 'M-OKTB', 'porsi', 1, 0, 'Olahan bakso dan telur yang dibuat menjadi oseng dengan komposisi bakso, telur, sambal matang, dan kemangi', 2, '2021-05-28 11:16:49', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (28, 'RO-000028', 'Oseng Pete Telur Bakso', 'HT-000001', '23650', 'M-OPTB', 'porsi', 1, 0, 'Olahan bakso dan telur yang dibuat menjadi oseng pete telur bakso dengan komposisi telur, bakso, sambal matang, dan pete', 2, '2021-05-28 11:19:00', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (29, 'RO-000029', 'Oseng Balado Telur Bakso', 'HT-000001', '18150', 'M-OBTB', 'porsi', 1, 0, 'Olahan bakso dan telur yang dibuat menjadi oseng balado telur bakso yang terdiri dari telur, bakso, sambal matang, jeruk limau', 2, '2021-05-28 11:21:30', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (30, 'RO-000030', 'Oseng Pete Pindang', 'HT-000001', '23650', 'M-OPP', 'porsi', 1, 0, 'Olahan pindang yang dibuat menjadi oseng pete pindang dengan komposisi pidang, sambal matang, pete', 2, '2021-05-28 11:25:27', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (31, 'RO-000031', 'Oseng Balado Pindang', 'HT-000001', '18150', 'M-OBP', 'porsi', 1, 0, 'Olahan pindang yang dibuat menjadi oseng balado pindang dengan komposisi pindang, sambal matang, dan jeruk limau', 2, '2021-05-28 11:28:17', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (32, 'RO-000032', 'Dadar Jagung', 'HT-000004', '4400', 'T-DJ', 'porsi', 1, 0, 'Olahan jagung yang sudah dibuat menjadi dadar jagung dengan rempah rempah pilihan', 2, '2021-05-28 11:30:55', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (33, 'RO-000033', 'Es Teh', 'HT-000003', '4000', 'N-ET', 'porsi', 1, 0, 'Minuman sehat dan menyegarkan dari olahan bermacam macam teh pilihan', 1, '2021-05-28 11:33:30', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (34, 'RO-000034', 'Teh Hangat/ Panas', 'HT-000003', '3000', 'N-TH', 'porsi', 1, 0, 'Minuman sehat yang disajikan secara hangat maupun panas saat ingin di nikmati', 2, '2021-05-28 11:35:21', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (35, 'RO-000035', 'Es Jeruk', 'HT-000003', '6000', 'N-EJ', 'porsi', 1, 0, 'Minuman yang terbuat dari jeruk pilihan yang berkualitas dan di sajikan dalam mode dingin', 2, '2021-05-28 11:37:25', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (36, 'RO-000036', 'Jeruk Hangat/ Panas', 'HT-000003', '5000', 'N-JH', 'porsi', 1, 0, 'Minuman yang terbuat dari jeruk pilihan yang berkualitas dan di sajikan dalam mode panas maupun hangat', 2, '2021-05-28 11:39:19', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (37, 'RO-000037', 'Kemangi BB', 'HT-000002', '3000', 'BB-K', 'ikat', 0, 1, 'Daun Kemangi', 1, '2021-05-28 13:21:44', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (38, 'RO-000038', 'Pete BB', 'HT-000002', '10000', 'BB-PETE', 'buah', 0, 1, 'Pete untuk pelengkap masak oseng', 1, '2021-05-28 15:00:51', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (39, 'RO-000039', 'Telur  Bakso', 'HT-000002', '12000', 'BB-TB', 'porsi', 0, 1, 'Telur dan bakso untuk olahan oseng telur bakso', 1, '2021-05-28 15:41:31', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (40, 'RO-000040', 'Teh', 'HT-000002', '3500', 'BB-TC', 'kotak', 0, 1, 'Bakan baku untuk membuat teh', 1, '2021-05-28 16:15:51', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (41, 'RO-000041', 'Jeruk', 'HT-000002', '25000', 'BB-JR', 'kg', 0, 1, 'Bahan baku untuk membuat minuman jeruk', 1, '2021-05-28 16:18:16', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (42, 'RO-000042', 'Gula', 'HT-000002', '12500', 'BB-GL', 'kg', 0, 1, 'Pembuat manis untuk minuman', 1, '2021-05-28 16:20:10', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (43, 'RO-000043', 'Minyak', 'HT-000002', '15000', 'BB-MY', 'liter', 0, 1, 'Untuk menggoreng bahan makanan', 1, '2021-05-28 16:21:40', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (44, 'RO-000044', 'Dadar Jagung BB', 'HT-000002', '4000', 'BB-DJ', 'porsi', 0, 1, 'Adonan untuk membuat dadar jagung', 1, '2021-05-29 10:06:44', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (45, 'RO-000045', 'Udang BB', 'HT-000002', '18000', 'BB-UD', 'porsi', 0, 1, 'Udang yang sudah dibersihkan dan siap dimasak', 1, '2021-05-29 10:07:55', NULL, 'Dapur Kotor 1', NULL, 1, 0);
INSERT INTO `tbl_produk` VALUES (46, 'RO-000046', 'Sabun Cuci Piring', 'HT-000005', '5000', 'PP-SCP', 'buah', 0, 1, 'Untuk Cuci Piring', 1, '2021-05-29 11:57:48', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (47, 'RO-000047', 'Aqua Galon', 'HT-000005', '19000', 'PP-AG', 'galon', 0, 1, 'Air untuk membuat minuman', 1, '2021-05-29 11:59:02', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (48, 'RO-000048', 'Tusuk Gigi', 'HT-000005', '16000', 'PP-TG', 'kotak', 0, 1, 'Tusuk Gigi', 1, '2021-05-29 12:00:16', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (49, 'RO-000049', 'Tissue', 'HT-000005', '4500', 'PP-Tissue', 'Kotak', 0, 1, 'Benda untuk mengelap makanan yang tidak masuk ke mulut', 1, '2021-05-29 12:01:32', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (50, 'RO-000050', 'Polar Es', 'HT-000005', '10000', 'PP-PES', 'kantong', 0, 1, 'Benda untuk mendinginkan minuman', 1, '2021-05-29 12:02:53', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (51, 'RO-000051', 'Nasi Oseng Pindang Kemangi', 'Paket', '20742', 'P-NOPK', 'paket', 1, 0, '', 1, '2021-05-29 14:06:51', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (52, 'RO-000052', 'Nasi Oseng Pete Pindang', 'HT-000006', '26000', 'P-NOPP', 'paket', 1, 0, '', 1, '2021-05-29 14:07:56', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (53, 'RO-000053', 'Nasi Oseng Pindang Balado', 'HT-000006', '21982', 'P-NOPB', 'paket', 1, 0, '', 1, '2021-05-29 14:08:52', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (54, 'RO-000054', 'Nasi Ayam Goreng', 'HT-000006', '24000', 'P-NAG', 'paket', 1, 0, '', 1, '2021-05-29 14:09:31', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (55, 'RO-000055', 'Nasi Oseng Ayam Kemangi', 'HT-000006', '18450', 'P-NOAK', 'paket', 1, 0, '', 1, '2021-05-29 14:10:07', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (56, 'RO-000056', 'Nasi Oseng Ayam Pete', 'HT-000006', '27482', 'P-NOAP', 'paket', 1, 0, '', 1, '2021-05-29 14:10:43', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (57, 'RO-000057', 'Nasi Oseng Ayam Balado', 'HT-000006', '21982', 'P-NOAB', 'paket', 1, 0, '', 1, '2021-05-29 14:11:22', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (58, 'RO-000058', 'Nasi Lele Goreng', 'HT-000006', '23000', 'P-NLG', 'paket', 1, 0, '', 1, '2021-05-29 14:12:19', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (59, 'RO-000059', 'Nasi Oseng Lele Kemangi', 'HT-000006', '24000', 'P-NOLK', 'paket', 1, 0, '', 1, '2021-05-29 14:12:56', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (60, 'RO-000060', 'Nasi Oseng Lele Pete', 'HT-000006', '23082', 'P-NOLP', 'paket', 1, 0, '', 1, '2021-05-29 14:13:35', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (61, 'RO-000061', 'Nasi Oseng Lele Balado', 'HT-000006', '17582', 'P-NOLB', 'paket', 1, 0, '', 1, '2021-05-29 14:14:12', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (62, 'RO-000062', 'Nasi Oseng Telur Bakso Kemangi', 'HT-000006', '22282', 'P-NOTBK', 'paket', 1, 0, '', 1, '2021-05-29 14:14:58', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (63, 'RO-000063', 'Nasi Oseng Telur Bakso Pete', 'HT-000006', '27482', 'P-NOTBP', 'paket', 1, 0, '', 1, '2021-05-29 14:15:36', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (64, 'RO-000064', 'Nasi Oseng Telur Bakso Balado', 'HT-000006', '21982', 'P-NOTBB', 'paket', 1, 0, '', 1, '2021-05-29 14:16:18', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (65, 'RO-000065', 'Nasi Oseng Cumi Hitam', 'HT-000006', '25000', 'P-NOCH', 'paket', 1, 0, '', 1, '2021-05-29 14:16:53', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (66, 'RO-000066', 'Nasi Oseng Cumi Hitam Kemangi', 'HT-000006', '26000', 'P-NOCHK', 'paket', 1, 0, '', 1, '2021-05-29 14:17:32', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (67, 'RO-000067', 'Nasi Oseng Cumi Hitam Pete', 'HT-000006', '28000', 'N-OCHP', 'paket', 1, 0, '', 1, '2021-05-29 14:18:13', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (68, 'RO-000068', 'Nasi Oseng Daging Kemangi', 'HT-000006', '25582', 'P-NODK', 'paket', 1, 0, '', 1, '2021-05-29 14:19:08', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (69, 'RO-000069', 'Nasi Oseng Daging Pete', 'HT-000001', '30782', 'P-NODP', 'paket', 1, 0, '', 1, '2021-05-29 14:19:47', NULL, 'Dapur Bersih 1', NULL, 1, 1);
INSERT INTO `tbl_produk` VALUES (70, 'RO-000070', 'Nasi Oseng Daging Balado', 'HT-000006', '25282', 'P-NODB', 'paket', 1, 0, '', 1, '2021-05-29 14:20:20', NULL, 'Dapur Bersih 1', NULL, 1, 1);

-- ----------------------------
-- Table structure for tbl_produk_foto
-- ----------------------------
DROP TABLE IF EXISTS `tbl_produk_foto`;
CREATE TABLE `tbl_produk_foto`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_aktif` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_produk_foto
-- ----------------------------
INSERT INTO `tbl_produk_foto` VALUES (1, 'RO-000001', '042457500_1578385528-ufo.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (3, 'RO-000002', 'c616f2aeed3d3d75a1928b2e3b8b1869.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (4, 'RO-000003', 'images_ikan_ikan-tongkol-bumbu-kencur.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (5, 'RO-000004', 'manfaat-ikan-lele-1024x683-7d35c1340e4fb62128042139a6c55a14.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (6, 'RO-000005', 'ayam-ungkep-kuning-foto-resep-utama.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (7, 'RO-000006', 'cumi-asin-rica-rica-foto-resep-utama.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (8, 'RO-000007', 'rica-rica-daging-sapi.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (9, 'RO-000008', 'df61ebf4-716c-4589-8e96-ed233a79d562.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (10, 'RO-000009', 'ezgif-7-ea0d066a72ac.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (11, 'RO-000010', 'tongkol5c5e428501647538442121jpg-a388b0675cfe3c80e1fbb9bcfb14d4fd_800x420.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (12, 'RO-000011', '1551470743.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (13, 'RO-000013', 'index.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (14, 'RO-000014', 'ayam-goreng-balado-ala-padang-foto-resep-utama.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (15, 'RO-000015', 'ayam-masak-balado.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (16, 'RO-000016', 'nasi.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (17, 'RO-000017', 'images_ikan_ikan-lele-balado-asem-pedas-1200x800.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (18, 'RO-000018', 'ayam-kemangi-pedas_20171106_173124.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (19, 'RO-000019', 'ayam-oseng-pete.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (20, 'RO-000020', 'lele-kemangi.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (21, 'RO-000021', 'lele-pete.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (22, 'RO-000022', 'cumi-hitam-kemangi-foto-resep-utama.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (23, 'RO-000023', 'oseng-cumi-pete.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (24, 'RO-000024', 'oseng-cumi-hitam-sederhana.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (25, 'RO-000025', 'daging-sapi-bumbu-kemangi-foto-resep-utama.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (26, 'RO-000026', '6b284340-1240-48f2-80cd-8355325586a4.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (27, 'RO-000027', 'tahu-telur-balado-kemangi-foto-resep-utama.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (28, 'RO-000028', 'tumis-pete-telur-praktis-foto-resep-utama.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (29, 'RO-000029', 'telur-bakso-balado.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (30, 'RO-000030', 'tumis-pindang-pete-foto-resep-utama.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (31, 'RO-000031', 'ezgif-4-b86cd7da5ddb.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (32, 'RO-000032', 'bakwan-jagung-manado.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (33, 'RO-000033', '0af32d8b-36b7-4555-8e79-4fd54c98f795.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (34, 'RO-000034', 'secangkir-teh-_190524103045-721.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (35, 'RO-000035', 'es-jeruk-peras.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (36, 'RO-000036', '079457900_1413169185-GTY_orange_juice_sk_140502_16x9_992.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (37, 'RO-000037', 'ezgif-4-38e203b976ec.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (38, 'RO-000038', 'ini-manfaat-petai-bagi-kesehatan-tubuh-anda.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (39, 'RO-000040', 'ezgif-1-153b6c2a2b7b.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (40, 'RO-000041', 'ezgif-1-1a9ac1e806e6.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (41, 'RO-000042', 'yuk-kenalan-dengan-gula-rafinasi-dan-teman-temannya.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (42, 'RO-000043', '055464900_1570621563-Mengungkap-Manfaat-Minyak-Goreng-untuk-Kesehatan-Tubuh-By-Tim-UR-Shutterstock.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (43, 'RO-000044', 'bakwan-jagung-adonan.JPG', '1');
INSERT INTO `tbl_produk_foto` VALUES (44, 'RO-000045', '031701400_1566302625-shrimps-1504168_1920.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (45, 'RO-000046', '1_-Sunlight-300x300.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (46, 'RO-000046', '1_-Sunlight-300x3001.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (47, 'RO-000047', '962cd65dcdb478c756d987c4bb290c83.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (48, 'RO-000048', '908713673.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (49, 'RO-000049', '18f602301d4b3d53ad11435980bfb37b.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (50, 'RO-000050', '2018-05-04.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (51, 'RO-000051', 'struk-atm-mandiri-asli1.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (52, 'RO-000052', 'struk-atm-mandiri-asli2.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (53, 'RO-000053', 'struk-atm-mandiri-asli3.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (54, 'RO-000054', 'struk-atm-mandiri-asli4.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (55, 'RO-000055', 'struk-atm-mandiri-asli5.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (56, 'RO-000056', 'struk-atm-mandiri-asli6.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (57, 'RO-000057', 'struk-atm-mandiri-asli7.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (58, 'RO-000058', 'struk-atm-mandiri-asli8.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (59, 'RO-000059', 'struk-atm-mandiri-asli9.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (60, 'RO-000060', 'struk-atm-mandiri-asli10.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (61, 'RO-000061', 'struk-atm-mandiri-asli11.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (62, 'RO-000062', 'struk-atm-mandiri-asli12.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (63, 'RO-000063', 'struk-atm-mandiri-asli13.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (64, 'RO-000064', 'struk-atm-mandiri-asli14.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (65, 'RO-000065', 'struk-atm-mandiri-asli15.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (66, 'RO-000066', 'struk-atm-mandiri-asli16.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (67, 'RO-000067', 'struk-atm-mandiri-asli17.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (68, 'RO-000068', 'struk-atm-mandiri-asli18.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (69, 'RO-000069', 'struk-atm-mandiri-asli19.jpg', '1');
INSERT INTO `tbl_produk_foto` VALUES (70, 'RO-000070', 'struk-atm-mandiri-asli20.jpg', '1');

-- ----------------------------
-- Table structure for tbl_stok
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok`;
CREATE TABLE `tbl_stok`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_awal` int NULL DEFAULT NULL,
  `stok_masuk` int NULL DEFAULT NULL,
  `stok_keluar` int NULL DEFAULT NULL,
  `stok_penjualan` int NULL DEFAULT NULL,
  `stok_transfer` int NULL DEFAULT NULL,
  `stok_penyesuaian` int NULL DEFAULT NULL,
  `stok_akhir` int NULL DEFAULT NULL,
  `stok_dt_create` datetime NULL DEFAULT NULL,
  `stok_dt_modif` datetime NULL DEFAULT NULL,
  `stok_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok
-- ----------------------------
INSERT INTO `tbl_stok` VALUES (1, 'RO-000001', 0, 0, 0, 0, 0, 0, 0, '2021-05-18 13:52:13', NULL, 'Galih', NULL);
INSERT INTO `tbl_stok` VALUES (2, 'RO-000002', 0, 0, 0, 0, 0, 0, 0, '2021-05-20 14:53:45', NULL, 'Dapur Bersih 1', NULL);
INSERT INTO `tbl_stok` VALUES (3, 'RO-000008', 0, 0, 0, 0, 0, 0, 0, '2021-05-24 10:55:55', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (4, 'RO-000009', 0, 0, 0, 0, 0, 0, 0, '2021-05-24 11:12:34', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (5, 'RO-000010', 0, 0, 0, 0, 0, 0, 0, '2021-05-24 13:27:17', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (6, 'RO-000011', 0, 0, 0, 0, 0, 0, 0, '2021-05-24 13:38:08', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (7, 'RO-000012', 0, 0, 0, 0, 0, 0, 0, '2021-05-27 09:01:15', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (8, 'RO-000013', 0, 0, 0, 0, 0, 0, 0, '2021-05-27 09:05:44', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (9, 'RO-000014', 0, 0, 0, 0, 0, 0, 0, '2021-05-27 09:47:05', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (10, 'RO-000037', 0, 0, 0, 0, 0, 0, 0, '2021-05-28 13:21:44', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (11, 'RO-000038', 0, 0, 0, 0, 0, 0, 0, '2021-05-28 15:00:51', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (12, 'RO-000039', 0, 0, 0, 0, 0, 0, 0, '2021-05-28 15:41:31', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (13, 'RO-000040', 0, 0, 0, 0, 0, 0, 0, '2021-05-28 16:15:51', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (14, 'RO-000041', 0, 0, 0, 0, 0, 0, 0, '2021-05-28 16:18:16', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (15, 'RO-000042', 0, 0, 0, 0, 0, 0, 0, '2021-05-28 16:20:10', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (16, 'RO-000043', 0, 0, 0, 0, 0, 0, 0, '2021-05-28 16:21:40', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (17, 'RO-000044', 0, 0, 0, 0, 0, 0, 0, '2021-05-29 10:06:44', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (18, 'RO-000045', 0, 0, 0, 0, 0, 0, 0, '2021-05-29 10:07:55', NULL, 'Dapur Kotor 1', NULL);
INSERT INTO `tbl_stok` VALUES (19, 'RO-000046', 0, 0, 0, 0, 0, 0, 0, '2021-05-29 11:57:48', NULL, 'Dapur Bersih 1', NULL);
INSERT INTO `tbl_stok` VALUES (20, 'RO-000047', 0, 0, 0, 0, 0, 0, 0, '2021-05-29 11:59:02', NULL, 'Dapur Bersih 1', NULL);
INSERT INTO `tbl_stok` VALUES (21, 'RO-000048', 0, 0, 0, 0, 0, 0, 0, '2021-05-29 12:00:16', NULL, 'Dapur Bersih 1', NULL);
INSERT INTO `tbl_stok` VALUES (22, 'RO-000049', 0, 0, 0, 0, 0, 0, 0, '2021-05-29 12:01:32', NULL, 'Dapur Bersih 1', NULL);
INSERT INTO `tbl_stok` VALUES (23, 'RO-000050', 0, 0, 0, 0, 0, 0, 0, '2021-05-29 12:02:53', NULL, 'Dapur Bersih 1', NULL);

-- ----------------------------
-- Table structure for tbl_stok_in
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_in`;
CREATE TABLE `tbl_stok_in`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_in_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_dt_masuk` datetime NULL DEFAULT NULL,
  `stok_in_dt_create` datetime NULL DEFAULT NULL,
  `stok_in_dt_modif` datetime NULL DEFAULT NULL,
  `stok_in_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_aktif` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_in
-- ----------------------------
INSERT INTO `tbl_stok_in` VALUES (7, 'SI-000001', '2021-05-29 00:00:00', '2021-05-29 04:59:28', NULL, 'Dapur Kotor 1', NULL, 1);
INSERT INTO `tbl_stok_in` VALUES (8, 'SI-000002', '2021-05-29 00:00:00', '2021-05-29 05:09:37', NULL, 'Dapur Kotor 1', NULL, 1);

-- ----------------------------
-- Table structure for tbl_stok_in_bersih
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_in_bersih`;
CREATE TABLE `tbl_stok_in_bersih`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_in_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_dt_masuk` datetime NULL DEFAULT NULL,
  `stok_in_dt_create` datetime NULL DEFAULT NULL,
  `stok_in_dt_modif` datetime NULL DEFAULT NULL,
  `stok_in_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_aktif` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_in_bersih
-- ----------------------------
INSERT INTO `tbl_stok_in_bersih` VALUES (8, 'IB-000001', '2021-05-29 00:00:00', '2021-05-29 05:38:15', NULL, 'Dapur Bersih 1', NULL, 1);
INSERT INTO `tbl_stok_in_bersih` VALUES (9, 'IB-000002', '2021-05-29 00:00:00', '2021-05-29 08:02:41', NULL, 'Dapur Bersih 1', NULL, 1);

-- ----------------------------
-- Table structure for tbl_stok_in_bersih_alat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_in_bersih_alat`;
CREATE TABLE `tbl_stok_in_bersih_alat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_in_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_dt_masuk` datetime NULL DEFAULT NULL,
  `stok_in_dt_create` datetime NULL DEFAULT NULL,
  `stok_in_dt_modif` datetime NULL DEFAULT NULL,
  `stok_in_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_aktif` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_in_bersih_alat
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_stok_in_bersih_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_in_bersih_detail`;
CREATE TABLE `tbl_stok_in_bersih_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_in_detail_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_jumlah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_harga` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_in_bersih_detail
-- ----------------------------
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (10, 'IB-000001', 'RO-000002', '50', '12000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (11, 'IB-000001', 'RO-000001', '50', '8000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (12, 'IB-000001', 'RO-000011', '50', '15000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (13, 'IB-000001', 'RO-000008', '50', '15000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (14, 'IB-000001', 'RO-000039', '50', '12000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (15, 'IB-000001', 'RO-000010', '50', '12000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (16, 'IB-000001', 'RO-000044', '300', '4000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (17, 'IB-000001', 'RO-000045', '50', '18000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (18, 'IB-000001', 'RO-000040', '10', '3500');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (19, 'IB-000001', 'RO-000041', '1', '25000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (20, 'IB-000001', 'RO-000042', '4', '12500');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (21, 'IB-000001', 'RO-000012', '10', '25000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (22, 'IB-000001', 'RO-000009', '5', '90000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (23, 'IB-000001', 'RO-000013', '2', '70000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (24, 'IB-000001', 'RO-000038', '50', '10000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (25, 'IB-000001', 'RO-000037', '10', '3000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (26, 'IB-000001', 'RO-000043', '4', '15000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (27, 'IB-000002', 'RO-000050', '1', '10000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (28, 'IB-000002', 'RO-000049', '5', '4500');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (29, 'IB-000002', 'RO-000048', '2', '16000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (30, 'IB-000002', 'RO-000046', '3', '5000');
INSERT INTO `tbl_stok_in_bersih_detail` VALUES (31, 'IB-000002', 'RO-000047', '5', '19000');

-- ----------------------------
-- Table structure for tbl_stok_in_bersih_detail_alat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_in_bersih_detail_alat`;
CREATE TABLE `tbl_stok_in_bersih_detail_alat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_in_detail_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_jumlah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_harga` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_in_bersih_detail_alat
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_stok_in_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_in_detail`;
CREATE TABLE `tbl_stok_in_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_in_detail_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_jumlah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_in_detail_harga` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_in_detail
-- ----------------------------
INSERT INTO `tbl_stok_in_detail` VALUES (8, 'SI-000001', 'RO-000001', '100', '8000');
INSERT INTO `tbl_stok_in_detail` VALUES (9, 'SI-000001', 'RO-000002', '100', '12000');
INSERT INTO `tbl_stok_in_detail` VALUES (10, 'SI-000001', 'RO-000008', '100', '15000');
INSERT INTO `tbl_stok_in_detail` VALUES (11, 'SI-000001', 'RO-000011', '100', '15000');
INSERT INTO `tbl_stok_in_detail` VALUES (12, 'SI-000001', 'RO-000039', '100', '12000');
INSERT INTO `tbl_stok_in_detail` VALUES (13, 'SI-000001', 'RO-000010', '100', '12000');
INSERT INTO `tbl_stok_in_detail` VALUES (14, 'SI-000001', 'RO-000009', '10', '90000');
INSERT INTO `tbl_stok_in_detail` VALUES (15, 'SI-000001', 'RO-000013', '5', '70000');
INSERT INTO `tbl_stok_in_detail` VALUES (16, 'SI-000001', 'RO-000012', '20', '25000');
INSERT INTO `tbl_stok_in_detail` VALUES (17, 'SI-000001', 'RO-000037', '50', '3000');
INSERT INTO `tbl_stok_in_detail` VALUES (18, 'SI-000001', 'RO-000038', '100', '10000');
INSERT INTO `tbl_stok_in_detail` VALUES (19, 'SI-000001', 'RO-000040', '20', '3500');
INSERT INTO `tbl_stok_in_detail` VALUES (20, 'SI-000001', 'RO-000041', '60', '25000');
INSERT INTO `tbl_stok_in_detail` VALUES (21, 'SI-000001', 'RO-000042', '10', '12500');
INSERT INTO `tbl_stok_in_detail` VALUES (22, 'SI-000001', 'RO-000043', '10', '15000');
INSERT INTO `tbl_stok_in_detail` VALUES (23, 'SI-000002', 'RO-000044', '500', '4000');
INSERT INTO `tbl_stok_in_detail` VALUES (24, 'SI-000002', 'RO-000045', '100', '18000');

-- ----------------------------
-- Table structure for tbl_stok_out
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_out`;
CREATE TABLE `tbl_stok_out`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_out_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_dt_masuk` datetime NULL DEFAULT NULL,
  `stok_out_dt_create` datetime NULL DEFAULT NULL,
  `stok_out_dt_modif` datetime NULL DEFAULT NULL,
  `stok_out_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_aktif` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_out
-- ----------------------------
INSERT INTO `tbl_stok_out` VALUES (7, 'SO-000001', '2021-05-29 00:00:00', '2021-05-29 05:38:15', NULL, 'Dapur Bersih 1', NULL, 1);
INSERT INTO `tbl_stok_out` VALUES (8, 'SO-000002', '2021-05-29 00:00:00', '2021-05-29 08:02:41', NULL, 'Dapur Bersih 1', NULL, 1);

-- ----------------------------
-- Table structure for tbl_stok_out_bersih
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_out_bersih`;
CREATE TABLE `tbl_stok_out_bersih`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_out_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_dt_masuk` datetime NULL DEFAULT NULL,
  `stok_out_dt_create` datetime NULL DEFAULT NULL,
  `stok_out_dt_modif` datetime NULL DEFAULT NULL,
  `stok_out_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_aktif` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_out_bersih
-- ----------------------------
INSERT INTO `tbl_stok_out_bersih` VALUES (17, 'OB-000001', '2021-05-29 00:00:00', '2021-05-29 09:35:40', NULL, 'Teller 1', NULL, 1);

-- ----------------------------
-- Table structure for tbl_stok_out_bersih_alat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_out_bersih_alat`;
CREATE TABLE `tbl_stok_out_bersih_alat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_out_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_dt_masuk` datetime NULL DEFAULT NULL,
  `stok_out_dt_create` datetime NULL DEFAULT NULL,
  `stok_out_dt_modif` datetime NULL DEFAULT NULL,
  `stok_out_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_aktif` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_out_bersih_alat
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_stok_out_bersih_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_out_bersih_detail`;
CREATE TABLE `tbl_stok_out_bersih_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_out_detail_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_detail_produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_detail_jumlah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_out_bersih_detail
-- ----------------------------
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (103, 'OB-000001', 'RO-000002', '10');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (104, 'OB-000001', 'RO-000012', '0.83');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (105, 'OB-000001', 'RO-000013', '0.2');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (106, 'OB-000001', 'RO-000011', '2');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (107, 'OB-000001', 'RO-000009', '0.1');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (108, 'OB-000001', 'RO-000038', '1');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (109, 'OB-000001', 'RO-000012', '0.166');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (110, 'OB-000001', 'RO-000013', '0.04');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (111, 'OB-000001', 'RO-000011', '3');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (112, 'OB-000001', 'RO-000009', '0.15');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (113, 'OB-000001', 'RO-000037', '0.27');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (114, 'OB-000001', 'RO-000012', '0.249');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (115, 'OB-000001', 'RO-000013', '0.06');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (116, 'OB-000001', 'RO-000011', '10');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (117, 'OB-000001', 'RO-000009', '0.5');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (118, 'OB-000001', 'RO-000012', '0.83');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (119, 'OB-000001', 'RO-000013', '0.2');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (120, 'OB-000001', 'RO-000009', '0.5');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (121, 'OB-000001', 'RO-000010', '10');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (122, 'OB-000001', 'RO-000038', '5');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (123, 'OB-000001', 'RO-000012', '0.83');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (124, 'OB-000001', 'RO-000013', '0.2');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (125, 'OB-000001', 'RO-000001', '2');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (126, 'OB-000001', 'RO-000009', '0.1');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (127, 'OB-000001', 'RO-000037', '0.18');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (128, 'OB-000001', 'RO-000012', '0.166');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (129, 'OB-000001', 'RO-000013', '0.04');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (130, 'OB-000001', 'RO-000001', '3');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (131, 'OB-000001', 'RO-000012', '0.249');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (132, 'OB-000001', 'RO-000013', '0.06');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (133, 'OB-000001', 'RO-000040', '0.6');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (134, 'OB-000001', 'RO-000047', '0.12');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (135, 'OB-000001', 'RO-000050', '0.084');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (136, 'OB-000001', 'RO-000042', '0.36');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (137, 'OB-000001', 'RO-000041', '0.65');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (138, 'OB-000001', 'RO-000047', '0.13');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (139, 'OB-000001', 'RO-000050', '0.091');
INSERT INTO `tbl_stok_out_bersih_detail` VALUES (140, 'OB-000001', 'RO-000042', '0.39');

-- ----------------------------
-- Table structure for tbl_stok_out_bersih_detail_alat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_out_bersih_detail_alat`;
CREATE TABLE `tbl_stok_out_bersih_detail_alat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_out_detail_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_detail_produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_detail_jumlah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_out_bersih_detail_alat
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_stok_out_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stok_out_detail`;
CREATE TABLE `tbl_stok_out_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stok_out_detail_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_detail_produk_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_out_detail_jumlah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stok_out_detail
-- ----------------------------
INSERT INTO `tbl_stok_out_detail` VALUES (9, 'SO-000001', 'RO-000002', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (10, 'SO-000001', 'RO-000001', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (11, 'SO-000001', 'RO-000011', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (12, 'SO-000001', 'RO-000008', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (13, 'SO-000001', 'RO-000039', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (14, 'SO-000001', 'RO-000010', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (15, 'SO-000001', 'RO-000044', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (16, 'SO-000001', 'RO-000045', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (17, 'SO-000001', 'RO-000040', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (18, 'SO-000001', 'RO-000041', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (19, 'SO-000001', 'RO-000042', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (20, 'SO-000001', 'RO-000012', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (21, 'SO-000001', 'RO-000009', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (22, 'SO-000001', 'RO-000013', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (23, 'SO-000001', 'RO-000038', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (24, 'SO-000001', 'RO-000037', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (25, 'SO-000001', 'RO-000043', '50');
INSERT INTO `tbl_stok_out_detail` VALUES (26, 'SO-000002', 'RO-000050', '1');
INSERT INTO `tbl_stok_out_detail` VALUES (27, 'SO-000002', 'RO-000049', '1');
INSERT INTO `tbl_stok_out_detail` VALUES (28, 'SO-000002', 'RO-000048', '1');
INSERT INTO `tbl_stok_out_detail` VALUES (29, 'SO-000002', 'RO-000046', '1');
INSERT INTO `tbl_stok_out_detail` VALUES (30, 'SO-000002', 'RO-000047', '1');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_level` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_status` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '1',
  `user_dt_create` datetime NULL DEFAULT NULL,
  `user_dt_modif` datetime NULL DEFAULT NULL,
  `user_user_create` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_user_modif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'UR000001', 'Galih', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (2, 'UR000002', 'Dapur Kotor 1', 'dapurkotor', 'b33d7efc2d42a1c8e0c362817ce1d077', '10', '1', '2021-05-19 06:13:55', NULL, 'Galih', NULL);
INSERT INTO `tbl_user` VALUES (3, 'UR000003', 'Dapur Bersih 1', 'dapurbersih', 'd2fd82a69a143bdd57b566e2712fbd79', '11', '1', '2021-05-19 06:21:27', NULL, 'Galih', NULL);
INSERT INTO `tbl_user` VALUES (4, 'UR000004', 'Teller 1', 'teller', '8482dfb1bca15b503101eb438f52deed', '12', '1', '2021-05-24 03:57:46', NULL, 'Galih', NULL);

SET FOREIGN_KEY_CHECKS = 1;
