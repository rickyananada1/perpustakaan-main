/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : perpustakaan

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 13/06/2022 23:01:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buku
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_halaman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('tersedia','dipinjam') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `edisi_buku` enum('baru','bekas') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `buku_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `buku_updated_by_foreign`(`updated_by`) USING BTREE,
  CONSTRAINT `buku_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `buku_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO `buku` VALUES (1, 1, 'isbn-0001-0002-0003', 'Penyihir Oz', 'IDK', 'Airlangga', '54', '2010-10-12', 'buku/SRAEOGdMxyE5CgQrMtOijv78HdyC9qyOMy3KBEUp.jpg','tersedia', 'baru', 1, NULL, '2022-04-17 14:27:28', NULL);
INSERT INTO `buku` VALUES (2, 1, 'isbn-0001-0002-0004', 'Satu Dua Pakai Sepatu Nya', 'Kassel panter', 'BIP', '22', '2011-10-19', 'buku/2tAqHKE8FJdO82cbQMZW2ypg6j9lqsDZz4zc4fYb.jpg', 'tersedia','baru', 1, NULL, '2022-04-17 14:32:49', NULL);
INSERT INTO `buku` VALUES (3, 4, 'isbn-0001-0002-0005', 'Kumpulan Fabel Populer Sepanjang Masa', 'IDK', 'Gramedia', '120', '2017-06-08', 'buku/PENYa7vuqWOMcwKcr92fspqso16kCMDKpIUxM7rr.jpg', 'tersedia', 'bekas', 1, NULL, '2022-04-17 14:33:52', NULL);
INSERT INTO `buku` VALUES (4, 4, 'isbn-0001-0002-0006', 'Kumpulan Fabel Dunia', 'Lisdy Rahayu', 'Gunung agung', '78', '2012-08-10', 'buku/YXxbkMQ7XVLy3nFS8RwXXCzOeiqAqXjv2Y9A4rLQ.jpg', 'tersedia','bekas', 1, NULL, '2022-04-17 14:34:32', NULL);
INSERT INTO `buku` VALUES (5, 3, 'isbn-0001-0002-0007', 'Ubur Ubur Lembur', 'Raditya Dika', 'Gramedia', '98', '2020-11-01', 'buku/212dgLjta92OV2EK16ChphDtQMSFOZ5Mwa0NOLt6.jpg', 'tersedia', 'baru', 1, NULL, '2022-04-17 14:35:15', NULL);
INSERT INTO `buku` VALUES (6, 3, 'isbn-0001-0002-0128', 'Cupiderman', 'Gege mapangewa', 'Elekmedia komputindo', '77', '2016-02-02', 'buku/XmDGf4QReMiEGxj8KUqGiNZUQKGQSUX91GmSbMQw.jpg', 'tersedia', 'bekas', 1, NULL, '2022-04-17 14:36:10', NULL);
INSERT INTO `buku` VALUES (7, 5, 'isbn-0001-0002-0008', 'Kumpulan Legenda Nusantara Favorit', 'Astri Damayanti', 'Indria Pustaka', '60', '2013-01-29', 'buku/iVv0pGrGFvNIAUPODGidotR12XNTwTLjDGHkn8OE.jpg', 'tersedia', 'baru', 1, NULL, '2022-04-17 14:37:09', NULL);
INSERT INTO `buku` VALUES (8, 5, 'isbn-0001-0002-0009', 'Legenda Danau Toba', 'Tira Ikra Negara', 'Bintang Indonesia', '102', '2010-12-27', 'buku/bqwyw1ler22maL9JkS3F68KMVa2FdlymejWRGeYK.jpg', 'tersedia','baru',  1, NULL, '2022-04-17 14:37:58', NULL);
INSERT INTO `buku` VALUES (9, 2, 'isbn-0001-0002-0010', 'Harry Potter Dan Batu Bertuah', 'J.K Rowling', 'Gramedia', '180', '2021-02-02', 'buku/iL2Yew3nLV0mqspPhUAi8bfDPL9j2LZloD6fH9vE.jpg','tersedia', 'baru', 1, NULL, '2022-04-17 14:38:46', NULL);
INSERT INTO `buku` VALUES (10, 2, 'isbn-0001-0002-0011','Electrifying', 'margaret atwood', 'Gramedia', '190', '2017-03-01', 'buku/UcllfuopEGtgwOwKXb6hUYfX9U12s0wCOoEfZ5oX.webp', 'tersedia', 'bekas', 1, NULL, '2022-04-17 14:39:59', NULL);
INSERT INTO `buku` VALUES (11, 1, 'isbn-0001-0002-0012','The Amazing Mumford Forgets About The Magic Words', 'Jim Hensons Muppets', 'A little golden Book', '76', '2009-12-27', 'buku/1fXFa2VqaLoiTPSvHDEtkMj8KBATEAHPmU14inol.jpg', 'tersedia', 'bekas', 1, NULL, '2022-04-22 01:50:21', NULL);
INSERT INTO `buku` VALUES (12, 5, 'isbn-0001-0002-0013','The Gravity Of Us', 'Phil Stamper', 'becky albertalert', '256', '2003-06-14', 'buku/9xK3Vkp68nKofZLg4AeOCsMP3R1eNC7Bvn31TEVi.jpg', 'dipinjam', 'baru', 1, NULL, '2022-05-25 23:19:18', NULL);
INSERT INTO `buku` VALUES (13, 4, 'isbn-0001-0002-0014','The Voice In My Head', 'Dana L.Davis', 'thefanny lewsi', '260', '2010-12-11', 'buku/1Tep7L20KCbAXMlrN5enPhhcPKuXzChjkGJpYe9o.jpg','dipinjam', 'baru', 1, NULL, '2022-05-25 23:20:58', NULL);
INSERT INTO `buku` VALUES (14, 1, 'isbn-0001-0002-0015','Shady Hollow', 'Juneau Black', 'Angeliqa Christ', '130', '2017-07-11', 'buku/1f5chiAUltFtMSNNxyVG88IL8wWLDBjHWyyrgDL1.jpg', 'dipinjam', 'bekas', 1, NULL, '2022-05-25 23:22:10', NULL);
INSERT INTO `buku` VALUES (15, 2, 'isbn-0001-0002-0016','Ready Player One', 'Ernest Cline', 'Gramedia Pustaka Utama', '544', '2011-08-16', 'buku/A4xvSHA29z2q3sinNT0JGCiZ2WGWoG1uQN0JK9VN.png', 'dipinjam', 'baru', 1, NULL, '2022-05-26 10:15:09', NULL);
INSERT INTO `buku` VALUES (16, 2, 'isbn-0001-0002-0017','Timeriders: Day Of The Predator', 'Alex Scarrow', 'Bloomsbury Publishing', '416', '2010-08-05', 'buku/0PKe5pK6dQUzbsjhrUQRAJcvv6iGRIihZPwvHcVW.png', 'tersedia','baru', 1, NULL, '2022-05-26 10:18:39', NULL);
INSERT INTO `buku` VALUES (17, 2, 'isbn-0001-0002-0018','Hunger Games#1', 'Suzanne Collins', 'Gramedia Pustaka Utama', '408', '2011-12-08', 'buku/tDbwScFBJWOxHBNehz8hFcwPm6cEptbmIYI2Ssws.png', 'dipinjam', 'baru', 1, NULL, '2022-05-26 10:21:48', NULL);
INSERT INTO `buku` VALUES (18, 2, 'isbn-0001-0002-0019','The Martian', 'Andy Wier', 'Gramedia Pustaka Utama', '528', '2016-02-12', 'buku/uLyRGpWTir3xwupl73srFMvkdiXQ5kWEewGb1Jiz.png', 'dipinjam', 'baru', 1, NULL, '2022-05-26 10:23:10', NULL);

-- ----------------------------
-- Table structure for detail_peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `detail_peminjaman`;
CREATE TABLE `detail_peminjaman`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pinjam` datetime NOT NULL,
  `denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `st` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pengembalian` datetime NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `detail_peminjaman_id_peminjaman_foreign`(`id_peminjaman`) USING BTREE,
  INDEX `detail_peminjaman_id_buku_foreign`(`id_buku`) USING BTREE,
  CONSTRAINT `detail_peminjaman_id_buku_foreign` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detail_peminjaman_id_peminjaman_foreign` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detail_peminjaman
-- ----------------------------
INSERT INTO `detail_peminjaman` VALUES (1, 61, 1, '2022-05-26 12:21:46', NULL, 'menunggu', NULL, '2022-05-26 12:21:46', '2022-05-26 12:21:46');
INSERT INTO `detail_peminjaman` VALUES (2, 62, 1, '2022-05-26 12:22:10', NULL, 'menunggu', NULL, '2022-05-26 12:22:10', '2022-05-26 12:22:10');
INSERT INTO `detail_peminjaman` VALUES (3, 63, 1, '2022-05-27 00:14:02', NULL, 'menunggu', NULL, '2022-05-27 00:14:02', '2022-05-27 00:14:02');
INSERT INTO `detail_peminjaman` VALUES (4, 64, 5, '2022-05-31 13:26:17', NULL, 'menunggu', NULL, '2022-05-31 13:26:17', '2022-05-31 13:26:17');
INSERT INTO `detail_peminjaman` VALUES (5, 65, 1, '2022-05-31 13:27:50', NULL, 'dikembalikan', '2022-05-31 13:31:01', '2022-05-31 13:27:50', '2022-05-31 13:31:18');
INSERT INTO `detail_peminjaman` VALUES (6, 66, 1, '2022-06-06 14:22:27', NULL, 'dipinjam', NULL, '2022-06-06 14:22:27', '2022-06-06 14:22:27');
INSERT INTO `detail_peminjaman` VALUES (11, 70, 10, '2022-06-06 14:36:05', NULL, 'dikonfirmasi pengembalian', '2022-06-06 14:57:01', '2022-06-06 14:36:05', '2022-06-06 14:57:01');
INSERT INTO `detail_peminjaman` VALUES (12, 70, 11, '2022-06-06 14:36:05', NULL, 'dikonfirmasi pengembalian', '2022-06-06 14:57:01', '2022-06-06 14:36:05', '2022-06-06 14:57:01');

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO `galeri` VALUES (2, 1, 'galeri/Y3zHXhrusX3S2WZtSFgOwDDjPJRMYjVZO1mM8Oux.jpg', 'tes','2022-02-06', NULL, NULL);
INSERT INTO `galeri` VALUES (3, 1, 'galeri/EVlW9AtM98URd7SS7EY8k51tDS0QmvefeWynMlga.jpg', 'Plaza It del','2022-01-03', NULL, NULL);
INSERT INTO `galeri` VALUES (4, 1, 'galeri/xgoVRPq644GjajM4l3FocLefesXq3SaABIkFCTVv.jpg', 'Plaza IT Del','2021-01-09', NULL, NULL);
INSERT INTO `galeri` VALUES (5, 1, 'galeri/SEr5jb8FoMqx81TV3VYWjYAIuHCIdRQqEAQBxGIe.jpg', 'test','2021-12-23', NULL, NULL);
INSERT INTO `galeri` VALUES (6, 1, 'galeri/knKjLO7lJeszvusaGu7f6AbVnKaHIKVxKujCiriw.jpg', 'plaza','2020-11-29', NULL, NULL);
INSERT INTO `galeri` VALUES (7, 1, 'galeri/FV0B3ZcC6mZ7NgYrCPFFW6B1qKW340gFU6K7Zlmi.jpg', 'asf','2012-09-10', NULL, NULL);
INSERT INTO `galeri` VALUES (8, 1, 'galeri/iW1kY1g6j5KJm2C3LULOWBMmZSr7Hkw3j4bGtQKR.png', 'hape','2014-08-20', NULL, NULL);

-- ----------------------------
-- Table structure for kategori_buku
-- ----------------------------
DROP TABLE IF EXISTS `kategori_buku`;
CREATE TABLE `kategori_buku`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kategori_buku_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `kategori_buku_updated_by_foreign`(`updated_by`) USING BTREE,
  CONSTRAINT `kategori_buku_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kategori_buku_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori_buku
-- ----------------------------
INSERT INTO `kategori_buku` VALUES (1, 'Dongeng Anak', 'Blanditiis velit ex autem non cupiditate. Quo quo aut labore voluptatibus vel nisi.', 1, 1, '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `kategori_buku` VALUES (2, 'Sains Fiksi', 'Occaecati sed et rerum dolor. Vel', 1, 1, '2022-04-16 18:02:23', '2022-06-12 02:45:51');
INSERT INTO `kategori_buku` VALUES (3, 'Komedi', 'Soluta quas libero aperiam error. Molestiae animi quia illum.', 1, 1, '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `kategori_buku` VALUES (4, 'Fabel', 'Fugiat et iure voluptas maiores. Mollitia qui qui nemo et dolore ex. Iste et sit accusamus.', 1, 1, '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `kategori_buku` VALUES (5, 'Legenda', 'Distinctio aut aperiam cum porro et est. Cum voluptatem autem quisquam et.', 1, 1, '2022-04-16 18:02:23', '2022-04-16 18:02:23');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2022_02_04_040253_creaete_table_books', 1);
INSERT INTO `migrations` VALUES (4, '2022_02_05_030100_create_table_books_category', 1);
INSERT INTO `migrations` VALUES (5, '2022_03_26_154646_create_borrows_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_03_26_154702_create_borrow_detail_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_03_30_114934_create_galeris_table', 1);

-- ----------------------------
-- Table structure for peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `peminjaman`;
CREATE TABLE `peminjaman`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `st` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `peminjaman_created_by_foreign`(`created_by`) USING BTREE,
  CONSTRAINT `peminjaman_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of peminjaman
-- ----------------------------
INSERT INTO `peminjaman` VALUES (61, '2022-05-26 12:21:46', 28, 'menunggu', 28, '2022-05-26 12:21:46', '2022-05-26 12:21:46');
INSERT INTO `peminjaman` VALUES (62, '2022-05-26 12:22:10', 28, 'menunggu', 28, '2022-05-26 12:22:10', '2022-05-26 12:22:10');
INSERT INTO `peminjaman` VALUES (63, '2022-05-27 00:14:02', 29, 'menunggu', 29, '2022-05-27 00:14:02', '2022-05-27 00:14:02');
INSERT INTO `peminjaman` VALUES (64, '2022-05-31 13:26:17', 30, 'menunggu', 30, '2022-05-31 13:26:17', '2022-05-31 13:26:17');
INSERT INTO `peminjaman` VALUES (65, '2022-05-31 13:27:50', 25, 'dikembalikan', 25, '2022-05-31 13:27:50', '2022-05-31 13:31:18');
INSERT INTO `peminjaman` VALUES (66, '2022-06-06 14:22:27', 2, 'dipinjam', 1, '2022-06-06 14:22:27', '2022-06-06 14:22:27');
INSERT INTO `peminjaman` VALUES (70, '2022-06-06 14:36:05', 27, 'dikonfirmasi pengembalian', 1, '2022-06-06 14:36:05', '2022-06-06 14:57:01');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('member','admin','superadmin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `alamat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `users_no_hp_unique`(`no_hp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@gmail.com', '087856787878', 'superadmin', 'Ki. Baik No. 274, Sawahlunto 51700, NTB', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8hA0CmoHMvRq5v9RaE3NZnmVPY1cg55x17No0N8WO62rgkrYdeSlxuoCFiga', '2022-04-16 18:02:23', '2022-04-22 01:50:38');
INSERT INTO `users` VALUES (2, 'Ida Vicky Rahmawati', 'bakiadi82@example.net', '13621094771', 'admin', 'Psr. Gardujati No. 802, Subulussalam 86057, Jambi', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sIa61xU4lE', '2022-04-16 18:02:23', '2022-04-21 01:53:38');
INSERT INTO `users` VALUES (3, 'Garda Yoga Winarno S.Kom', 'ysantoso@example.com', '5698561170', 'member', 'Ds. Barasak No. 880, Blitar 90302, Kalbar', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wDCfsbP56o', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (4, 'Usyi Nuraini S.E.', 'permata.banawa@example.org', '5972424780', 'member', 'Ds. Jaksa No. 227, Medan 62122, Kalteng', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SsfYyK4HgU', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (5, 'Dewi Puspasari', 'enteng34@example.org', '9924233688', 'member', 'Kpg. Bagas Pati No. 189, Surakarta 92383, NTT', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0V1MdRbrgG', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (6, 'Paulin Mayasari', 'ewidodo@example.com', '8992164807', 'member', 'Ki. Flora No. 29, Lubuklinggau 45254, Malut', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L1sJxRUXbm', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (7, 'Ade Asmianto Marbun', 'marsudi44@example.org', '7371223230', 'member', 'Jr. Gremet No. 416, Prabumulih 55080, Jatim', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zmlXdNMQQB', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (8, 'Safina Suryatmi', 'wsuartini@example.com', '3309705142', 'member', 'Jr. B.Agam 1 No. 719, Tangerang Selatan 71875, DKI', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BkqxMma1Gq', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (9, 'Lamar Mansur S.E.I', 'wulandari.kamaria@example.org', '3211844173', 'member', 'Jr. Nakula No. 262, Tebing Tinggi 35992, DIY', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1fhPSFXsDO', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (10, 'Luis Luluh Rajata', 'kawaca.maulana@example.com', '9349831460', 'member', 'Ds. Yosodipuro No. 192, Administrasi Jakarta Barat 66123, Sulteng', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UgjZPBVItq', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (11, 'Ami Michelle Hastuti', 'tugiman.wasita@example.com', '1977095315', 'member', 'Kpg. Moch. Toha No. 459, Banjarmasin 81441, Kepri', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BK8mBDQqN6', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (12, 'Zaenab Pudjiastuti', 'psuwarno@example.org', '0044015345', 'member', 'Jln. Bakin No. 114, Banjarbaru 89541, Pabar', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4pTrnrWLl5', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (13, 'Gilda Rahayu Halimah S.Kom', 'marbun.tari@example.org', '2864374139', 'member', 'Ki. Bawal No. 954, Payakumbuh 74255, Riau', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bUwqkdp1ET', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (14, 'Najwa Kusmawati S.Pt', 'wakiman.uyainah@example.org', '5190646725', 'member', 'Ds. Jambu No. 724, Padangsidempuan 72550, Pabar', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iWvl59IMyi', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (15, 'Wani Namaga M.Pd', 'marbun.hana@example.org', '8374433030', 'member', 'Ds. Baranang Siang No. 617, Medan 80348, Kalteng', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FTVqsRf2od', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (16, 'Dimaz Lukita Najmudin', 'luwes78@example.com', '6181698884', 'member', 'Psr. Panjaitan No. 169, Bitung 89492, Babel', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B2VSFGgWkE', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (17, 'Aditya Mangunsong', 'jaswadi.nasyiah@example.net', '6660485308', 'member', 'Jr. Wahid Hasyim No. 465, Solok 54128, Sulut', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3TSka4NlZ1', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (18, 'Yessi Titi Pratiwi', 'winda.pudjiastuti@example.org', '7416682345', 'member', 'Gg. Laksamana No. 644, Pangkal Pinang 32001, Sulsel', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yQMx6xRQ2l', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (19, 'Pakhomios Havel S', 'pakhomioshavel@gmail.com', '8169428282', 'superadmin', 'Ki. Honggowongso No. 163, Palembang 90718, Malut', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UuBTOPiHHGfq59nmqFGnI9R2PYT10eRqF8aOhTF4EdBKik6PWhpp5biDGKGk', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (20, 'Wisnu Sihombing', 'paiman.wacana@example.com', '6878960452', 'member', 'Gg. Banceng Pondok No. 287, Tanjung Pinang 76695, Sulut', '2022-04-16 18:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WguXVbPYNi', '2022-04-16 18:02:23', '2022-04-16 18:02:23');
INSERT INTO `users` VALUES (21, 'fero@gmail.com', 'fero@gmail.com', '0813624914', 'member', 'balige', NULL, '$2y$10$ihA9dVJa..vxhuPI6piPp.nT4M7YUIcwBwC3IS71Ky4Cg8SwNG0o.', NULL, '2022-04-18 13:26:18', '2022-04-18 13:26:18');
INSERT INTO `users` VALUES (23, 'Orang', 'anonymous@anon.com', '01283912839', 'admin', 'Jalanan', NULL, '$2y$10$OO.q.JEGNhNqMPar3q30x.EPPUa3nNHzKKBi5sDwUkjrvIKuB634C', NULL, '2022-04-21 01:52:58', '2022-04-21 01:52:58');
INSERT INTO `users` VALUES (25, 'ricky@gmail.com', 'ricky@gmail.com', '081362926803', 'member', 'kisaran', NULL, '$2y$10$qbFtHtA52tQDZuwEPBg81Og37iytdeRjUamBQFpU5QCfAZ3baE6DS', NULL, '2022-05-23 23:15:16', '2022-05-23 23:15:16');
INSERT INTO `users` VALUES (26, 'samysiahaaan@gmail.com', 'samysiahaaan@gmail.com', '082272944107', 'member', 'medan', NULL, '$2y$10$pHgbX6csmpvspbLhtd7aru11MMv4Es/hgtrwThupwjqPuSFh95Wuq', NULL, '2022-05-23 23:23:05', '2022-05-23 23:23:05');
INSERT INTO `users` VALUES (27, 'feronikasimanjuntak1410@gmail.com', 'feronikasimanjuntak1410@gmail.com', '081234567890', 'member', 'Balige', NULL, '$2y$10$Stppozh3h6WyUaXYwSS4ZOmDlkfby3pWVvlXazsup70T4aC1YTWMm', NULL, '2022-05-24 15:59:11', '2022-05-24 15:59:11');
INSERT INTO `users` VALUES (28, 'kevin.nainggolan31@gmail.com', 'kevin.nainggolan31@gmail.com', '081261550431', 'member', 'medan', NULL, '$2y$10$ezEbgzzlrkiG2mA/ShSu/e8jMp4ahQ6BpjkvbA8PU7ZU3hx.FcdL.', NULL, '2022-05-26 12:21:13', '2022-05-26 12:21:13');
INSERT INTO `users` VALUES (29, 'scintya@gmail.com', 'scintya@gmail.com', '08123456789', 'member', 'medan', NULL, '$2y$10$gQmeGHbIrKSK.Up0veAK9.vrs5WEx3wjnB5GusR94bYYFEVbzdXu.', NULL, '2022-05-27 00:12:26', '2022-05-27 00:12:26');
INSERT INTO `users` VALUES (30, 'anitasiagian11@gmail.com', 'anitasiagian11@gmail.com', '082249352965', 'member', 'Narumonda III', NULL, '$2y$10$oaO/GgmapLaBnuEFqheJSeD/6TZaju78Mf8PMtvv/rDC.iqwXjZCu', NULL, '2022-05-31 13:25:52', '2022-05-31 13:25:52');

SET FOREIGN_KEY_CHECKS = 1;
