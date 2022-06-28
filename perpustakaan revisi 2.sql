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

 Date: 28/06/2022 23:23:35
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
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `buku_isbn_unique`(`isbn`) USING BTREE,
  INDEX `buku_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `buku_updated_by_foreign`(`updated_by`) USING BTREE,
  CONSTRAINT `buku_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `buku_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO `buku` VALUES (1, 1, 'isbn-0001-0002-0003', 'Penyihir Oz', 'IDK', 'Airlangga', '54', '2010-10-12', 'buku/SRAEOGdMxyE5CgQrMtOijv78HdyC9qyOMy3KBEUp.jpg', 'tersedia', 'baru', 1, NULL, '2022-04-17 14:27:28', NULL);
INSERT INTO `buku` VALUES (2, 1, 'isbn-0001-0002-0004', 'Satu Dua Pakai Sepatu Nya', 'Kassel panter', 'BIP', '22', '2011-10-19', 'buku/2tAqHKE8FJdO82cbQMZW2ypg6j9lqsDZz4zc4fYb.jpg', 'dipinjam', 'baru', 1, NULL, '2022-04-17 14:32:49', NULL);
INSERT INTO `buku` VALUES (3, 4, 'isbn-0001-0002-0005', 'Kumpulan Fabel Populer Sepanjang Masa', 'IDK', 'Gramedia', '120', '2017-06-08', 'buku/PENYa7vuqWOMcwKcr92fspqso16kCMDKpIUxM7rr.jpg', 'tersedia', 'bekas', 1, NULL, '2022-04-17 14:33:52', NULL);
INSERT INTO `buku` VALUES (4, 4, 'isbn-0001-0002-0006', 'Kumpulan Fabel Dunia', 'Lisdy Rahayu', 'Gunung agung', '78', '2012-08-10', 'buku/YXxbkMQ7XVLy3nFS8RwXXCzOeiqAqXjv2Y9A4rLQ.jpg', 'tersedia', 'bekas', 1, NULL, '2022-04-17 14:34:32', NULL);
INSERT INTO `buku` VALUES (5, 3, 'isbn-0001-0002-0007', 'Ubur Ubur Lembur', 'Raditya Dika', 'Gramedia', '98', '2020-11-01', 'buku/212dgLjta92OV2EK16ChphDtQMSFOZ5Mwa0NOLt6.jpg', 'tersedia', 'baru', 1, NULL, '2022-04-17 14:35:15', NULL);
INSERT INTO `buku` VALUES (6, 3, 'isbn-0001-0002-0128', 'Cupiderman', 'Gege mapangewa', 'Elekmedia komputindo', '77', '2016-02-02', 'buku/XmDGf4QReMiEGxj8KUqGiNZUQKGQSUX91GmSbMQw.jpg', 'tersedia', 'bekas', 1, NULL, '2022-04-17 14:36:10', NULL);
INSERT INTO `buku` VALUES (7, 5, 'isbn-0001-0002-0008', 'Kumpulan Legenda Nusantara Favorit', 'Astri Damayanti', 'Indria Pustaka', '60', '2013-01-29', 'buku/iVv0pGrGFvNIAUPODGidotR12XNTwTLjDGHkn8OE.jpg', 'tersedia', 'baru', 1, NULL, '2022-04-17 14:37:09', NULL);
INSERT INTO `buku` VALUES (8, 5, 'isbn-0001-0002-0009', 'Legenda Danau Toba', 'Tira Ikra Negara', 'Bintang Indonesia', '102', '2010-12-27', 'buku/bqwyw1ler22maL9JkS3F68KMVa2FdlymejWRGeYK.jpg', 'tersedia', 'baru', 1, NULL, '2022-04-17 14:37:58', NULL);
INSERT INTO `buku` VALUES (9, 2, 'isbn-0001-0002-0010', 'Harry Potter Dan Batu Bertuah', 'J.K Rowling', 'Gramedia', '180', '2021-02-02', 'buku/iL2Yew3nLV0mqspPhUAi8bfDPL9j2LZloD6fH9vE.jpg', 'tersedia', 'baru', 1, NULL, '2022-04-17 14:38:46', NULL);
INSERT INTO `buku` VALUES (10, 2, 'isbn-0001-0002-0011', 'Electrifying', 'margaret atwood', 'Gramedia', '190', '2017-03-01', 'buku/UcllfuopEGtgwOwKXb6hUYfX9U12s0wCOoEfZ5oX.webp', 'tersedia', 'bekas', 1, NULL, '2022-04-17 14:39:59', NULL);
INSERT INTO `buku` VALUES (11, 1, 'isbn-0001-0002-0012', 'The Amazing Mumford Forgets About The Magic Words', 'Jim Hensons Muppets', 'A little golden Book', '76', '2009-12-27', 'buku/1fXFa2VqaLoiTPSvHDEtkMj8KBATEAHPmU14inol.jpg', 'tersedia', 'bekas', 1, NULL, '2022-04-22 01:50:21', NULL);
INSERT INTO `buku` VALUES (12, 5, 'isbn-0001-0002-0013', 'The Gravity Of Us', 'Phil Stamper', 'becky albertalert', '256', '2003-06-14', 'buku/9xK3Vkp68nKofZLg4AeOCsMP3R1eNC7Bvn31TEVi.jpg', 'dipinjam', 'baru', 1, NULL, '2022-05-25 23:19:18', NULL);
INSERT INTO `buku` VALUES (13, 4, 'isbn-0001-0002-0014', 'The Voice In My Head', 'Dana L.Davis', 'thefanny lewsi', '260', '2010-12-11', 'buku/1Tep7L20KCbAXMlrN5enPhhcPKuXzChjkGJpYe9o.jpg', 'dipinjam', 'baru', 1, NULL, '2022-05-25 23:20:58', NULL);
INSERT INTO `buku` VALUES (14, 1, 'isbn-0001-0002-0015', 'Shady Hollow', 'Juneau Black', 'Angeliqa Christ', '130', '2017-07-11', 'buku/1f5chiAUltFtMSNNxyVG88IL8wWLDBjHWyyrgDL1.jpg', 'dipinjam', 'bekas', 1, NULL, '2022-05-25 23:22:10', NULL);
INSERT INTO `buku` VALUES (15, 2, 'isbn-0001-0002-0016', 'Ready Player One', 'Ernest Cline', 'Gramedia Pustaka Utama', '544', '2011-08-16', 'buku/A4xvSHA29z2q3sinNT0JGCiZ2WGWoG1uQN0JK9VN.png', 'dipinjam', 'baru', 1, NULL, '2022-05-26 10:15:09', NULL);
INSERT INTO `buku` VALUES (16, 2, 'isbn-0001-0002-0017', 'Timeriders: Day Of The Predator', 'Alex Scarrow', 'Bloomsbury Publishing', '416', '2010-08-05', 'buku/0PKe5pK6dQUzbsjhrUQRAJcvv6iGRIihZPwvHcVW.png', 'tersedia', 'baru', 1, NULL, '2022-05-26 10:18:39', NULL);
INSERT INTO `buku` VALUES (17, 2, 'isbn-0001-0002-0018', 'Hunger Games#1', 'Suzanne Collins', 'Gramedia Pustaka Utama', '408', '2011-12-08', 'buku/tDbwScFBJWOxHBNehz8hFcwPm6cEptbmIYI2Ssws.png', 'dipinjam', 'baru', 1, NULL, '2022-05-26 10:21:48', NULL);
INSERT INTO `buku` VALUES (18, 2, 'isbn-0001-0002-0019', 'The Martian', 'Andy Wier', 'Gramedia Pustaka Utama', '528', '2016-02-12', 'buku/uLyRGpWTir3xwupl73srFMvkdiXQ5kWEewGb1Jiz.png', 'dipinjam', 'baru', 1, NULL, '2022-05-26 10:23:10', NULL);

-- ----------------------------
-- Table structure for detail_peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `detail_peminjaman`;
CREATE TABLE `detail_peminjaman`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keadaan` enum('baik','rusak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pengembalian` datetime NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `detail_peminjaman_id_peminjaman_foreign`(`id_peminjaman`) USING BTREE,
  INDEX `detail_peminjaman_id_buku_foreign`(`id_buku`) USING BTREE,
  CONSTRAINT `detail_peminjaman_id_buku_foreign` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detail_peminjaman_id_peminjaman_foreign` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_peminjaman
-- ----------------------------
INSERT INTO `detail_peminjaman` VALUES (2, 3, 5, NULL, 'baik', '2022-06-28 22:53:44', '2022-06-28 22:53:01', '2022-06-28 22:53:44');
INSERT INTO `detail_peminjaman` VALUES (3, 3, 9, NULL, 'baik', '2022-06-28 22:53:44', '2022-06-28 22:53:01', '2022-06-28 22:53:44');
INSERT INTO `detail_peminjaman` VALUES (4, 3, 3, NULL, 'baik', '2022-06-28 22:53:44', '2022-06-28 22:53:01', '2022-06-28 22:53:44');
INSERT INTO `detail_peminjaman` VALUES (5, 4, 1, NULL, 'baik', '2022-06-28 22:56:12', '2022-06-12 22:55:16', '2022-06-28 22:56:12');
INSERT INTO `detail_peminjaman` VALUES (6, 4, 3, NULL, 'baik', '2022-06-28 22:56:12', '2022-06-12 22:55:16', '2022-06-28 22:56:12');
INSERT INTO `detail_peminjaman` VALUES (7, 4, 4, NULL, 'baik', '2022-06-28 22:56:12', '2022-06-12 22:55:16', '2022-06-28 22:56:12');
INSERT INTO `detail_peminjaman` VALUES (8, 5, 4, NULL, 'baik', '2022-06-28 23:19:31', '2022-06-28 23:03:17', '2022-06-28 23:19:31');

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO `galeri` VALUES (1, 1, 'galeri/Y3zHXhrusX3S2WZtSFgOwDDjPJRMYjVZO1mM8Oux.jpg', 'tes', '2022-02-06', NULL, NULL);
INSERT INTO `galeri` VALUES (2, 1, 'galeri/EVlW9AtM98URd7SS7EY8k51tDS0QmvefeWynMlga.jpg', 'Plaza It del', '2022-01-03', NULL, NULL);
INSERT INTO `galeri` VALUES (3, 1, 'galeri/xgoVRPq644GjajM4l3FocLefesXq3SaABIkFCTVv.jpg', 'Plaza IT Del', '2021-01-09', NULL, NULL);
INSERT INTO `galeri` VALUES (4, 1, 'galeri/SEr5jb8FoMqx81TV3VYWjYAIuHCIdRQqEAQBxGIe.jpg', 'test', '2021-12-23', NULL, NULL);
INSERT INTO `galeri` VALUES (5, 1, 'galeri/knKjLO7lJeszvusaGu7f6AbVnKaHIKVxKujCiriw.jpg', 'plaza', '2020-11-29', NULL, NULL);
INSERT INTO `galeri` VALUES (6, 1, 'galeri/FV0B3ZcC6mZ7NgYrCPFFW6B1qKW340gFU6K7Zlmi.jpg', 'asf', '2012-09-10', NULL, NULL);
INSERT INTO `galeri` VALUES (7, 1, 'galeri/iW1kY1g6j5KJm2C3LULOWBMmZSr7Hkw3j4bGtQKR.png', 'hape', '2014-08-20', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kategori_buku_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `kategori_buku_updated_by_foreign`(`updated_by`) USING BTREE,
  CONSTRAINT `kategori_buku_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kategori_buku_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2022_02_04_030100_create_books_category_table', 1);
INSERT INTO `migrations` VALUES (4, '2022_02_04_040253_create_books_table', 1);
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
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `status` enum('menunggu','dikonfirmasi peminjaman','dipinjam','dikonfirmasi pengembalian','menunggu perpanjangan','dikembalikan','sudah diperpanjang') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `peminjaman_created_by_foreign`(`created_by`) USING BTREE,
  CONSTRAINT `peminjaman_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of peminjaman
-- ----------------------------
INSERT INTO `peminjaman` VALUES (3, '2022-06-12 22:53:01', 5, 2, 'dikembalikan', '2022-06-28 22:53:01', '2022-06-28 22:53:44');
INSERT INTO `peminjaman` VALUES (4, '2022-06-12 22:55:16', 18, 2, 'dikembalikan', '2022-06-12 22:55:16', '2022-06-28 22:56:12');
INSERT INTO `peminjaman` VALUES (5, '2022-06-28 23:03:17', 4, 4, 'dikembalikan', '2022-06-28 23:03:17', '2022-06-28 23:19:31');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Nasim Natsir', 'estiawan.wulandari@example.net', '1877457546', 'admin', 'Ki. Baan No. 946, Lhokseumawe 61116, NTT', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'azNeqaLR6w', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (2, 'Admin', 'admin@gmail.com', '3914263659', 'superadmin', 'Dk. Soekarno Hatta No. 626, Pariaman 14577, Kalbar', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1aZtaet8sH', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (3, 'Nasrullah Hairyanto Tamba', 'danu57@example.com', '1902905695', 'admin', 'Ds. Flores No. 166, Parepare 83412, DKI', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w9rzmD80Co', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (4, 'Koko Jaswadi Siregar M.Farm', 'aris.yuliarti@example.net', '9503358404', 'member', 'Psr. Acordion No. 614, Magelang 13752, Sumsel', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b93vhHDxPN', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (5, 'Gawati Maya Yulianti', 'olivia.prabowo@example.net', '0997237351', 'member', 'Psr. Panjaitan No. 103, Binjai 65229, Sumbar', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tayf46dNfl', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (6, 'Kunthara Gaiman Tampubolon', 'wrahmawati@example.org', '9802812650', 'member', 'Kpg. Bakhita No. 686, Serang 21360, Kalteng', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Aw5JMT8LOD', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (7, 'Indah Anastasia Mulyani', 'tasnim36@example.com', '2973437974', 'superadmin', 'Jln. Yohanes No. 654, Pasuruan 90349, Gorontalo', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YkSpLQEnwl', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (8, 'Tantri Nuraini', 'purwanti.fitria@example.org', '4733947595', 'admin', 'Gg. Orang No. 752, Banjarbaru 58652, Bali', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bzQ4NKbXzc', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (9, 'Bakidin Jaga Najmudin S.T.', 'lmandala@example.net', '4891724127', 'superadmin', 'Dk. Ters. Jakarta No. 186, Pekanbaru 98924, Jambi', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aAMmMPNLUc', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (10, 'Anastasia Puspita', 'cengkal31@example.com', '7484717533', 'member', 'Jln. Bambu No. 4, Kotamobagu 59700, NTT', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'efopyeZjhI', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (11, 'Taufan Firgantoro', 'imam.namaga@example.org', '3135526663', 'member', 'Psr. Umalas No. 939, Balikpapan 23692, Bengkulu', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P4ZNieb4t6', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (12, 'Daryani Galak Suryono', 'ina42@example.com', '3911747060', 'member', 'Gg. Sentot Alibasa No. 500, Salatiga 44873, Sulteng', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kpJgVVyIAr', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (13, 'Narji Pangestu', 'alika03@example.com', '8526155202', 'member', 'Ki. Jend. A. Yani No. 992, Pasuruan 78706, DIY', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YDh7o8ciXl', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (14, 'Paiman Latupono', 'cemeti.agustina@example.net', '5618742638', 'admin', 'Jr. Dr. Junjunan No. 884, Parepare 51321, Kaltim', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vrt36gaAiu', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (15, 'Irma Shakila Novitasari S.E.I', 'utama.legawa@example.org', '3746843359', 'admin', 'Ds. Jamika No. 570, Solok 86717, DKI', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qW74Deeyrg', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (16, 'Umi Laksita', 'harjaya86@example.org', '2566575983', 'superadmin', 'Jln. Bakau No. 829, Tasikmalaya 42341, Kalsel', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wMbcphq6J0', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (17, 'Rini Sudiati', 'lfarida@example.org', '7642685094', 'admin', 'Jln. Kalimalang No. 973, Tangerang 63072, Kalsel', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0oHn6mDd2K', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (18, 'Hendra Megantara', 'rangga.suwarno@example.com', '3573738936', 'member', 'Gg. B.Agam 1 No. 380, Serang 71040, Sumbar', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6GOGHVQOKv', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (19, 'Puti Prastuti', 'haryanti.ami@example.net', '7208538682', 'superadmin', 'Psr. Imam No. 956, Semarang 38446, Pabar', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8g6RlxqDdg', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (20, 'Hani Rahayu', 'dodo.agustina@example.org', '0377671598', 'superadmin', 'Psr. Salam No. 323, Palu 91414, Sulut', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4IIc5iicUj', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (21, 'Endah Kuswandari', 'simbolon.karimah@example.net', '3965839675', 'superadmin', 'Dk. Jend. Sudirman No. 157, Sawahlunto 20244, Sumbar', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DoLawnEjFl', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (22, 'Wani Rahmawati S.H.', 'okto.utami@example.org', '2315032003', 'superadmin', 'Ki. K.H. Wahid Hasyim (Kopo) No. 906, Langsa 31893, Kaltara', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5acvIFb6M8', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (23, 'Vanya Uyainah', 'chelsea54@example.org', '3130084527', 'admin', 'Ki. Zamrud No. 6, Banjarbaru 45458, Sulteng', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0Hsy2QEUdc', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (24, 'Mumpuni Damanik', 'clailasari@example.com', '5688713358', 'superadmin', 'Gg. Bagas Pati No. 582, Bau-Bau 14902, Kepri', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EsF5XqDva9', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (25, 'Timbul Waluyo', 'eharyanti@example.net', '0835282904', 'member', 'Psr. Ketandan No. 438, Pontianak 73230, Kaltim', '2022-06-28 22:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cmi1ScWgX3', '2022-06-28 22:17:38', '2022-06-28 22:17:38');
INSERT INTO `users` VALUES (26, 'fero@gmail.com', 'fero@gmail.com', '0813624914', 'member', 'balige', NULL, '$2y$10$ihA9dVJa..vxhuPI6piPp.nT4M7YUIcwBwC3IS71Ky4Cg8SwNG0o.', NULL, '2022-04-18 13:26:18', '2022-04-18 13:26:18');
INSERT INTO `users` VALUES (27, 'Orang', 'anonymous@anon.com', '01283912839', 'admin', 'Jalanan', NULL, '$2y$10$OO.q.JEGNhNqMPar3q30x.EPPUa3nNHzKKBi5sDwUkjrvIKuB634C', NULL, '2022-04-21 01:52:58', '2022-04-21 01:52:58');
INSERT INTO `users` VALUES (28, 'ricky@gmail.com', 'ricky@gmail.com', '081362926803', 'member', 'kisaran', NULL, '$2y$10$qbFtHtA52tQDZuwEPBg81Og37iytdeRjUamBQFpU5QCfAZ3baE6DS', NULL, '2022-05-23 23:15:16', '2022-05-23 23:15:16');
INSERT INTO `users` VALUES (29, 'samysiahaaan@gmail.com', 'samysiahaaan@gmail.com', '082272944107', 'member', 'medan', NULL, '$2y$10$pHgbX6csmpvspbLhtd7aru11MMv4Es/hgtrwThupwjqPuSFh95Wuq', NULL, '2022-05-23 23:23:05', '2022-05-23 23:23:05');
INSERT INTO `users` VALUES (30, 'feronikasimanjuntak1410@gmail.com', 'feronikasimanjuntak1410@gmail.com', '081234567890', 'member', 'Balige', NULL, '$2y$10$Stppozh3h6WyUaXYwSS4ZOmDlkfby3pWVvlXazsup70T4aC1YTWMm', NULL, '2022-05-24 15:59:11', '2022-05-24 15:59:11');
INSERT INTO `users` VALUES (31, 'kevin.nainggolan31@gmail.com', 'kevin.nainggolan31@gmail.com', '081261550431', 'member', 'medan', NULL, '$2y$10$ezEbgzzlrkiG2mA/ShSu/e8jMp4ahQ6BpjkvbA8PU7ZU3hx.FcdL.', NULL, '2022-05-26 12:21:13', '2022-05-26 12:21:13');
INSERT INTO `users` VALUES (32, 'scintya@gmail.com', 'scintya@gmail.com', '08123456789', 'member', 'medan', NULL, '$2y$10$gQmeGHbIrKSK.Up0veAK9.vrs5WEx3wjnB5GusR94bYYFEVbzdXu.', NULL, '2022-05-27 00:12:26', '2022-05-27 00:12:26');
INSERT INTO `users` VALUES (33, 'anitasiagian11@gmail.com', 'anitasiagian11@gmail.com', '082249352965', 'member', 'Narumonda III', NULL, '$2y$10$oaO/GgmapLaBnuEFqheJSeD/6TZaju78Mf8PMtvv/rDC.iqwXjZCu', NULL, '2022-05-31 13:25:52', '2022-05-31 13:25:52');

SET FOREIGN_KEY_CHECKS = 1;
