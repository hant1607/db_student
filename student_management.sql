/*
 Navicat Premium Data Transfer

 Source Server         : myDB
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : student_management

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 28/10/2019 16:31:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `classes_faculty_id_foreign`(`faculty_id`) USING BTREE,
  CONSTRAINT `classes_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES (1, 'Lop 1', 4, NULL, '2019-07-16 08:08:03');
INSERT INTO `classes` VALUES (2, 'Lop 2', 6, NULL, '2019-07-23 04:59:09');
INSERT INTO `classes` VALUES (3, 'Lop 4', 5, NULL, '2019-07-16 08:11:35');
INSERT INTO `classes` VALUES (6, 'Lop 3', 6, NULL, '2019-07-19 08:57:56');
INSERT INTO `classes` VALUES (7, 'Lop 8', 5, NULL, '2019-07-16 08:11:47');
INSERT INTO `classes` VALUES (8, 'Lop 6 g', 6, NULL, '2019-07-19 06:32:38');

-- ----------------------------
-- Table structure for faculties
-- ----------------------------
DROP TABLE IF EXISTS `faculties`;
CREATE TABLE `faculties`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of faculties
-- ----------------------------
INSERT INTO `faculties` VALUES (4, 'Vat ly', NULL, '2019-07-19 07:52:46', 'vat-ly');
INSERT INTO `faculties` VALUES (5, 'Dia ly 2', '2019-07-16 04:22:06', '2019-09-20 04:54:34', 'dia-ly-2');
INSERT INTO `faculties` VALUES (6, 'demo', '2019-07-16 07:20:58', '2019-07-16 07:20:58', 'demo');
INSERT INTO `faculties` VALUES (9, 'Toan hoc', '2019-09-10 17:01:14', '2019-09-10 17:01:14', 'toan-hoc');
INSERT INTO `faculties` VALUES (10, 'Môi trường 2', '2019-09-10 17:01:25', '2019-09-10 17:23:38', 'moi-truong');
INSERT INTO `faculties` VALUES (11, 'lala/edit', '2019-09-13 04:13:26', '2019-09-13 04:13:26', 'lala-edit');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES (1, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":8:{s:10:\\\"\\u0000*\\u0000student\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Student\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567140929, 1567140929);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (119, 'nn', 35, '2019-09-30 08:49:19', '2019-09-30 08:49:19');
INSERT INTO `messages` VALUES (120, 'nnn', 3, '2019-09-30 08:49:39', '2019-09-30 08:49:39');
INSERT INTO `messages` VALUES (121, 't', 35, '2019-09-30 09:01:36', '2019-09-30 09:01:36');
INSERT INTO `messages` VALUES (122, 't', 35, '2019-09-30 09:09:16', '2019-09-30 09:09:16');
INSERT INTO `messages` VALUES (123, 't', 3, '2019-09-30 09:18:22', '2019-09-30 09:18:22');
INSERT INTO `messages` VALUES (124, 'l', 35, '2019-09-30 09:19:51', '2019-09-30 09:19:51');
INSERT INTO `messages` VALUES (125, 'm', 35, '2019-09-30 09:21:29', '2019-09-30 09:21:29');
INSERT INTO `messages` VALUES (126, 'll', 35, '2019-09-30 10:13:43', '2019-09-30 10:13:43');
INSERT INTO `messages` VALUES (127, 'ttt', 35, '2019-09-30 10:17:26', '2019-09-30 10:17:26');
INSERT INTO `messages` VALUES (128, 'h', 35, '2019-09-30 10:18:41', '2019-09-30 10:18:41');
INSERT INTO `messages` VALUES (129, 'ttt', 35, '2019-09-30 10:19:15', '2019-09-30 10:19:15');
INSERT INTO `messages` VALUES (130, 'fff', 35, '2019-09-30 10:20:03', '2019-09-30 10:20:03');
INSERT INTO `messages` VALUES (131, 'k', 35, '2019-09-30 10:24:57', '2019-09-30 10:24:57');
INSERT INTO `messages` VALUES (132, 't', 35, '2019-09-30 10:28:09', '2019-09-30 10:28:09');
INSERT INTO `messages` VALUES (133, 't', 35, '2019-09-30 10:28:31', '2019-09-30 10:28:31');
INSERT INTO `messages` VALUES (134, 'test', 35, '2019-09-30 10:28:59', '2019-09-30 10:28:59');
INSERT INTO `messages` VALUES (135, 'ttt', 35, '2019-09-30 10:30:20', '2019-09-30 10:30:20');
INSERT INTO `messages` VALUES (136, 'hhh', 3, '2019-09-30 10:31:18', '2019-09-30 10:31:18');
INSERT INTO `messages` VALUES (137, 'hello', 35, '2019-10-01 15:35:47', '2019-10-01 15:35:47');
INSERT INTO `messages` VALUES (138, 'hi', 3, '2019-10-01 15:37:43', '2019-10-01 15:37:43');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_07_09_172708_create_faculties_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_07_09_172916_create_subjects_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_07_09_173004_create_classes_table', 1);
INSERT INTO `migrations` VALUES (6, '2019_07_09_173125_create_students_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_07_09_173212_create_results_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_01_081640_create_classes_table', 0);
INSERT INTO `migrations` VALUES (9, '2019_08_01_081640_create_faculties_table', 0);
INSERT INTO `migrations` VALUES (10, '2019_08_01_081640_create_password_resets_table', 0);
INSERT INTO `migrations` VALUES (11, '2019_08_01_081640_create_results_table', 0);
INSERT INTO `migrations` VALUES (12, '2019_08_01_081640_create_students_table', 0);
INSERT INTO `migrations` VALUES (13, '2019_08_01_081640_create_subjects_table', 0);
INSERT INTO `migrations` VALUES (14, '2019_08_01_081640_create_users_table', 0);
INSERT INTO `migrations` VALUES (15, '2019_08_01_081641_add_foreign_keys_to_classes_table', 0);
INSERT INTO `migrations` VALUES (16, '2019_08_01_081641_add_foreign_keys_to_results_table', 0);
INSERT INTO `migrations` VALUES (17, '2019_08_01_081641_add_foreign_keys_to_students_table', 0);
INSERT INTO `migrations` VALUES (20, '2019_08_27_092616_create_permission_tables', 3);
INSERT INTO `migrations` VALUES (22, '2019_09_04_094056_add_slug_to_results_table', 4);
INSERT INTO `migrations` VALUES (23, '2019_09_10_161845_add_slug_to_users_table', 5);
INSERT INTO `migrations` VALUES (24, '2019_09_10_165808_add_slug_to_faculties_table', 6);
INSERT INTO `migrations` VALUES (26, '2019_09_18_081710_create_messages_table', 7);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 3);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 23);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 53);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 146);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 4);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 35);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 52);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 54);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 150);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 151);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 153);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 5);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 7);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 19);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 148);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 149);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'role-list', 'web', '2019-08-29 06:04:40', '2019-08-29 06:04:40');
INSERT INTO `permissions` VALUES (2, 'role-create', 'web', '2019-08-29 06:04:40', '2019-08-29 06:04:40');
INSERT INTO `permissions` VALUES (3, 'role-edit', 'web', '2019-08-29 06:04:40', '2019-08-29 06:04:40');
INSERT INTO `permissions` VALUES (4, 'role-delete', 'web', '2019-08-29 06:04:40', '2019-08-29 06:04:40');
INSERT INTO `permissions` VALUES (5, 'student-list', 'web', '2019-08-29 06:04:40', '2019-08-29 06:04:40');
INSERT INTO `permissions` VALUES (6, 'student-create', 'web', '2019-08-29 06:04:41', '2019-08-29 06:04:41');
INSERT INTO `permissions` VALUES (7, 'student-edit', 'web', '2019-08-29 06:04:41', '2019-08-29 06:04:41');
INSERT INTO `permissions` VALUES (8, 'student-delete', 'web', '2019-08-29 06:04:41', '2019-08-29 06:04:41');
INSERT INTO `permissions` VALUES (9, 'subject-list', 'web', '2019-08-29 06:04:41', '2019-08-29 06:04:41');
INSERT INTO `permissions` VALUES (10, 'subject-create', 'web', '2019-08-29 06:04:41', '2019-08-29 06:04:41');
INSERT INTO `permissions` VALUES (11, 'subject-edit', 'web', '2019-08-29 06:04:41', '2019-08-29 06:04:41');
INSERT INTO `permissions` VALUES (12, 'subject-delete', 'web', '2019-08-29 06:04:41', '2019-08-29 06:04:41');
INSERT INTO `permissions` VALUES (17, 'mark-add', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (19, 'user-list', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (20, 'user-create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (21, 'user-edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (22, 'user-delete', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (23, 'result-list', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (24, 'result-create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (25, 'result-edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (26, 'result-delete', 'web', NULL, NULL);

-- ----------------------------
-- Table structure for results
-- ----------------------------
DROP TABLE IF EXISTS `results`;
CREATE TABLE `results`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `mark` double(8, 2) NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `results_student_id_foreign`(`student_id`) USING BTREE,
  INDEX `results_subject_id_foreign`(`subject_id`) USING BTREE,
  CONSTRAINT `results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `results_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 444 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of results
-- ----------------------------
INSERT INTO `results` VALUES (302, 7, 2, 1.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (303, 7, 5, 2.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (304, 7, 4, 2.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (305, 7, 6, 3.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (306, 7, 7, 4.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (323, 11, 4, 1.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (324, 11, 5, 6.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (406, 1063, 2, 10.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (407, 1063, 4, 10.00, NULL, NULL, NULL);
INSERT INTO `results` VALUES (408, 7, 8, 8.00, NULL, '2019-09-05 17:16:13', '2019-09-05 17:16:13');
INSERT INTO `results` VALUES (409, 54, 4, 8.00, NULL, '2019-09-05 17:18:37', '2019-09-05 17:18:37');
INSERT INTO `results` VALUES (412, 11, 5, 8.00, NULL, '2019-09-06 03:15:26', '2019-09-06 03:15:26');
INSERT INTO `results` VALUES (413, 7, 7, 5.00, '7', '2019-09-09 10:13:38', '2019-09-09 10:13:38');
INSERT INTO `results` VALUES (414, 7, 4, 9.00, '7-1', '2019-09-09 10:14:20', '2019-09-09 10:14:20');
INSERT INTO `results` VALUES (419, 59, 5, 5.00, '59', '2019-09-18 07:24:54', '2019-09-18 07:24:54');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (5, 2);
INSERT INTO `role_has_permissions` VALUES (5, 3);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (6, 2);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (7, 2);
INSERT INTO `role_has_permissions` VALUES (7, 3);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (9, 2);
INSERT INTO `role_has_permissions` VALUES (9, 3);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (10, 2);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (11, 2);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (17, 1);
INSERT INTO `role_has_permissions` VALUES (19, 1);
INSERT INTO `role_has_permissions` VALUES (19, 2);
INSERT INTO `role_has_permissions` VALUES (19, 3);
INSERT INTO `role_has_permissions` VALUES (20, 1);
INSERT INTO `role_has_permissions` VALUES (20, 2);
INSERT INTO `role_has_permissions` VALUES (21, 1);
INSERT INTO `role_has_permissions` VALUES (22, 1);
INSERT INTO `role_has_permissions` VALUES (23, 1);
INSERT INTO `role_has_permissions` VALUES (23, 2);
INSERT INTO `role_has_permissions` VALUES (23, 3);
INSERT INTO `role_has_permissions` VALUES (24, 1);
INSERT INTO `role_has_permissions` VALUES (25, 1);
INSERT INTO `role_has_permissions` VALUES (26, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'web', NULL, NULL);
INSERT INTO `roles` VALUES (2, 'member', 'web', NULL, NULL);
INSERT INTO `roles` VALUES (3, 'guest', 'web', NULL, NULL);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `birthday` date NOT NULL,
  `gender` int(11) NOT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `students_class_id_foreign`(`class_id`) USING BTREE,
  INDEX `students_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2591 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, 'Nguyen Ha', 3, 1, '1998-07-16', 2, '0353990993', 'image.jpg', '2019-09-18 03:20:06', '2019-10-03 18:02:54');
INSERT INTO `students` VALUES (4, 'Trang oc 4', 2, 2, '1997-01-01', 2, '01642873972', '69cabeb2gy1frdjojkn9oj20m80m8jwi.jpg', NULL, '2019-09-11 09:56:34');
INSERT INTO `students` VALUES (5, 'hant 7', 4, 1, '2019-08-05', 2, '0123456789', '58373412_362135147978045_1199804053349990400_n.jpg', '2019-08-01 09:10:26', '2019-10-03 18:03:04');
INSERT INTO `students` VALUES (7, 'Linh', 5, 1, '1998-05-15', 2, '0987654312', 'Ji-Chang-Wook-for-Police-Eyewear-ji-chang-wook-40485574-600-849.jpg', '2019-08-05 07:30:29', '2019-08-23 06:49:39');
INSERT INTO `students` VALUES (9, 'std2', 7, 3, '1997-02-22', 2, '0987654321', NULL, '2019-08-06 07:09:47', '2019-08-06 07:09:47');
INSERT INTO `students` VALUES (10, 'std3', 1, 6, '1996-12-22', 2, '0675541215', NULL, '2019-08-06 07:10:38', '2019-08-06 07:10:38');
INSERT INTO `students` VALUES (11, 'std4', 1, 6, '1993-12-21', 1, '01943899142', NULL, '2019-08-06 07:11:49', '2019-08-06 07:11:49');
INSERT INTO `students` VALUES (12, 'lala', 1, 1, '2019-08-05', 1, '0123456785', '69cabeb2gy1frdjojkn9oj20m80m8jwi.jpg', '2019-08-14 02:05:11', '2019-08-14 02:05:11');
INSERT INTO `students` VALUES (2583, 'ahihi', 147, 3, '2011-11-11', 1, '012987462', NULL, '2019-09-18 04:12:47', '2019-09-18 04:12:47');
INSERT INTO `students` VALUES (2584, 'meme', 149, 2, '2012-12-12', 1, '089745621', NULL, '2019-09-18 06:29:20', '2019-09-18 06:29:20');
INSERT INTO `students` VALUES (2585, 'lalala', 150, 2, '2011-11-11', 2, '0123987456', NULL, '2019-09-20 04:53:07', '2019-09-20 04:53:07');
INSERT INTO `students` VALUES (2586, 'lau', 151, 6, '2005-12-15', 2, '065498712', 'anh.jpg', '2019-09-25 01:55:45', '2019-09-25 01:55:45');
INSERT INTO `students` VALUES (2587, 'test', 23, 1, '1998-01-01', 1, '023546975', NULL, NULL, NULL);
INSERT INTO `students` VALUES (2589, 'hihi', 23, 1, '1969-10-02', 1, '090909090', NULL, NULL, NULL);
INSERT INTO `students` VALUES (2590, 'hihi2', 23, 1, '1969-10-02', 1, '090909090', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO `subjects` VALUES (2, 'Cau truc', NULL, NULL);
INSERT INTO `subjects` VALUES (4, 'Co nhiet', NULL, NULL);
INSERT INTO `subjects` VALUES (5, 'Thuật toán', '2019-07-24 03:24:14', '2019-07-24 03:24:14');
INSERT INTO `subjects` VALUES (6, 'C/C++', '2019-07-24 03:24:34', '2019-07-24 03:24:34');
INSERT INTO `subjects` VALUES (7, 'Mac 1', '2019-07-24 03:25:05', '2019-07-24 03:25:05');
INSERT INTO `subjects` VALUES (8, 'Mac 2', '2019-07-24 03:25:12', '2019-09-10 16:00:31');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'hant', 'ha@gmail.com', NULL, '$2y$10$gp8vPaMReZ.fmmos6a9aRuQvhOwdqIECCY/4RLlfpa3dvAa1EEBOq', NULL, NULL, '2019-08-29 09:18:39', '', '', NULL);
INSERT INTO `users` VALUES (2, 'trang oc', 'oc@gmail.com', NULL, '$10$TXKXfRQROtG4Hzupso484OWnA4xoOivdy3/bBeyZ8skhb2z7xXNnm', NULL, NULL, NULL, '', '', NULL);
INSERT INTO `users` VALUES (3, 'hant98hihi', 'admin1@gmail.com', NULL, '$2y$10$KYjc5oML3IhFFQi2yHmqgOmHAm/HGbF5qlhfAHT49EJYjsq4dEC2u', 'rhS3BH9EaOc4k5XJFvBT6uk9mq8TQgtzwUFhPZkvFFGZWxpR5FBVJgQar4DH', '2019-08-13 10:06:56', '2019-08-25 16:05:22', NULL, NULL, NULL);
INSERT INTO `users` VALUES (4, 'test', 'test@gmail.com', NULL, '$2y$10$lNZNirK1YD9gmosrN3KOhOFNG//5DLUl/YHAurGem4sxGv5jLyb4G', 'eQQOJ0pPDBUAhUw8GGJdSTgzHF9dKObdtjVPVmbuakNROX0A5y44B3z2Qv6a', '2019-08-07 10:16:39', '2019-08-29 09:32:11', '', '', NULL);
INSERT INTO `users` VALUES (5, 'hhihihi', 'hihihi@gmail.com', NULL, '$2y$10$Jg9msBKMF7AM9spS0P5goOpIPnomzxK2qv93.ru9xsxBiMHhkBLni', NULL, '2019-08-29 09:14:01', '2019-08-29 09:14:01', NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, 'guest', 'guest@gmail.com', NULL, '$2y$10$150ijFT3d5jKvoxC.2OI7.A/4CLxlCr8QSxkS/oB.9/JJZ/PUFoLW', NULL, '2019-08-29 09:37:26', '2019-08-29 09:37:26', NULL, NULL, NULL);
INSERT INTO `users` VALUES (19, 'memedfdfgg', 'newstd@gmail.com', NULL, '$2y$10$orIPTJPuBp6ScN5SarZClO87NTph7TmOJ2qFKEJMt7dxHY5U8ohAS', NULL, '2019-08-05 06:29:49', '2019-09-16 10:29:49', '', '', NULL);
INSERT INTO `users` VALUES (20, 'new1', 'new1@gmail.com', NULL, '$2y$10$b011GXBVvsh6I9ZHgWsb/.f1i7aPye9OXMimexRh1FTB/rzvPHROK', NULL, '2019-08-05 06:39:33', '2019-08-05 06:39:33', '', '', NULL);
INSERT INTO `users` VALUES (22, 'oc', 'nguyenthiha.elf.199@gmail.com', NULL, '$2y$10$2efaGm7n2hbFZQXuBZFEZOHqafctfSnwYB8ftRKuaYRswRZz53bwm', 'L3pJa40FjkYRDqFPUQZsJrrQeOicD9BLxmSiEajzELhoH3md2b3MJtIDAJxv', '2019-08-05 06:47:02', '2019-08-12 07:52:04', 'facebook', '753444951757527', NULL);
INSERT INTO `users` VALUES (23, 'abc', 'cherrypham197@gmail.com', NULL, '$2y$10$Aa/u30kII2QUIjGLosFpxOA7An8T40rz/.eNY29cbl7kB.IdIWIV6', NULL, '2019-08-05 07:30:29', '2019-08-05 07:30:29', '', '', NULL);
INSERT INTO `users` VALUES (24, 'std1', 'std1@gmail.com', NULL, '$2y$10$jWAdnKAEcLNq15rYx19.BOJRf4fFSQ/Kg3TO0jN9vqU7xIO1cJ1m2', NULL, '2019-08-06 07:08:37', '2019-08-06 07:08:37', '', '', NULL);
INSERT INTO `users` VALUES (25, 'std2', 'std2@gmail.com', NULL, '$2y$10$vncOBoRvrO4c9xD1892NWunSDbQlEBzKsi2FLYjsfXN9YYCT/9lWu', NULL, '2019-08-06 07:09:47', '2019-08-06 07:09:47', '', '', NULL);
INSERT INTO `users` VALUES (26, 'std3', 'std3@gmail.com', NULL, '$2y$10$S5WH6vzSlv/HlC8Ybo46y.e0Dr1MKwQnRb/0asR2ZgDyULkXJBqXO', NULL, '2019-08-06 07:10:38', '2019-08-06 07:10:38', '', '', NULL);
INSERT INTO `users` VALUES (27, 'demo', 'demo@gmail.com', NULL, '$2y$10$0YrTInNZwWVQ3g7sfF9kr.vK1EKJ191MWuXzvO5UuMLwOyB/iZkJa', NULL, '2019-08-07 08:40:46', '2019-08-07 08:40:46', '', '', NULL);
INSERT INTO `users` VALUES (28, 'hehe', 'hehe@gmail.com', NULL, '$2y$10$RJi0HDIeUiV43Bfavl7wnuh4n3BILQS8sY8RrjrkozbigzTvnX/5G', NULL, '2019-08-07 09:47:53', '2019-08-07 09:47:53', '', '', NULL);
INSERT INTO `users` VALUES (30, 'test1@gmail.com', 'test1@gmail.com', NULL, '$2y$10$KNC/uG0Ub/iEOeZQut7bK.5L385e3Z30xMY6mSM1.JTmQs3AtPCZK', NULL, '2019-08-08 03:47:44', '2019-08-08 03:47:44', '', '', NULL);
INSERT INTO `users` VALUES (34, 'Nguyễn Hà', 'nguyenthiha.elf.1998@gmail.com', NULL, '$2y$10$8fqq3CG08BNGsLDW774IWejEJ.Xnx/XV10y/W5JahrIXkdTAUgFBS', 'V7q0gx4SfvWeYq12h6DUagdqDjm0xsmaAvs3RFcNd6rxUAvSmGIXmfNjotHz', '2019-08-12 08:55:42', '2019-08-13 14:01:42', 'facebook', '753444951753527', NULL);
INSERT INTO `users` VALUES (35, 'Hà', 'nguyenha98nq@gmail.com', NULL, '$2y$10$rmynTZp.C5I/VOoRB9maEe9Q7FYth2bQsF.pPDRI2P3jJ0gbRCDo.', 'EDESdyFmN2sWSGPtdibnimsXUb0JLkfWg0FSKCwuYSgRfm0b4vGGUMWdlDUH', '2019-08-12 09:03:28', '2019-09-25 09:47:01', 'google', '113301002061992059924', NULL);
INSERT INTO `users` VALUES (36, 'Hà Nguyễn', '810714646059499520@gmail.com', NULL, '$2y$10$ZQWaRfk1aO4MlCJSprPzBe2fg16hkty5i5c7qgbTJOzW.sjkf8eia', 'FmPlTNgFnsmO6b8tmmqhMIAeSn4swvgX92NpnmJf2A8Di1DQ2WlInAFrCY50', '2019-08-12 09:10:20', '2019-08-12 09:10:20', 'twitter', '810714646059499520', NULL);
INSERT INTO `users` VALUES (37, 'member1', 'member1@gmail.com', NULL, '$2y$10$WGwaC1ckvflhaHgd4HhCsecqjGXmXRZIepqU6.ppv3ylwtF3hx.8C', NULL, '2019-08-12 10:17:46', '2019-08-12 10:17:46', NULL, NULL, NULL);
INSERT INTO `users` VALUES (44, 'lala', 'lala@gmail.com', NULL, '$2y$10$fl/dnH407Q2U9xqnjE2UiuUiw5mOUFoypubnMs5uBgR/NgMf//kHa', NULL, '2019-08-14 02:05:11', '2019-08-14 02:05:11', NULL, NULL, NULL);
INSERT INTO `users` VALUES (45, 'kaka', 'kaka@gmail.com', NULL, '$2y$10$dLLq3Rb6PTr7yxQ.2U45Ze7unkMspF0GRytEME/c9hGz.FNmOefuy', NULL, '2019-08-14 02:07:39', '2019-08-14 02:07:39', NULL, NULL, NULL);
INSERT INTO `users` VALUES (46, 'demo jgjg', 'demohihi@gmail.com', NULL, '$2y$10$IkLexa3HTLAXJ6nEjA.1CevKSCSOMpaQ3O9k9EGwXrsSnz5sddgRm', NULL, '2019-08-27 03:27:40', '2019-08-27 03:52:50', NULL, NULL, NULL);
INSERT INTO `users` VALUES (52, 'nguyenha', 'nguyenha@gmail.com', NULL, '$2y$10$XB6UGKeU3kGLCny3UnyMNOwIuJKOqFL9aAlbJ55N65HWu9hsG7.Qu', NULL, '2019-08-30 02:56:47', '2019-08-30 02:56:47', NULL, NULL, NULL);
INSERT INTO `users` VALUES (53, 'trang123', 'member1332@gmail.com', NULL, '$2y$10$jTzDMw9QPxlRKxUW48cu6uwdn7vJ1JCAm1tli0Ta701zRkZSPn7Oe', NULL, '2019-08-30 06:29:06', '2019-08-30 06:29:06', NULL, NULL, NULL);

-- ----------------------------
-- Procedure structure for createEmailList
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
