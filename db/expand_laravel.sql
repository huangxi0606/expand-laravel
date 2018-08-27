/*
Navicat MySQL Data Transfer

Source Server         : expand-laravel
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : expand_laravel

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-27 14:24:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_config`
-- ----------------------------
DROP TABLE IF EXISTS `admin_config`;
CREATE TABLE `admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_config_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_config
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '7', 'Helpers', 'fa-gears', '', '2018-08-27 03:10:27', '2018-08-27 03:10:27');
INSERT INTO `admin_menu` VALUES ('9', '8', '8', 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', '2018-08-27 03:10:27', '2018-08-27 03:10:27');
INSERT INTO `admin_menu` VALUES ('10', '8', '9', 'Database terminal', 'fa-database', 'helpers/terminal/database', '2018-08-27 03:10:27', '2018-08-27 03:10:27');
INSERT INTO `admin_menu` VALUES ('11', '8', '10', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', '2018-08-27 03:10:27', '2018-08-27 03:10:27');
INSERT INTO `admin_menu` VALUES ('12', '8', '11', 'Routes', 'fa-list-alt', 'helpers/routes', '2018-08-27 03:10:27', '2018-08-27 03:10:27');
INSERT INTO `admin_menu` VALUES ('13', '0', '12', 'Log viewer', 'fa-database', 'logs', '2018-08-27 03:12:08', '2018-08-27 03:12:08');
INSERT INTO `admin_menu` VALUES ('14', '0', '13', 'Config', 'fa-toggle-on', 'config', '2018-08-27 03:17:54', '2018-08-27 03:17:54');
INSERT INTO `admin_menu` VALUES ('15', '0', '14', 'Scheduling', 'fa-clock-o', 'scheduling', '2018-08-27 03:20:28', '2018-08-27 03:20:28');
INSERT INTO `admin_menu` VALUES ('16', '0', '15', 'Exception Reporter', 'fa-bug', 'exceptions', '2018-08-27 03:23:46', '2018-08-27 03:23:46');
INSERT INTO `admin_menu` VALUES ('17', '0', '16', 'Redis manager', 'fa-database', 'redis', '2018-08-27 03:26:54', '2018-08-27 03:26:54');
INSERT INTO `admin_menu` VALUES ('18', '0', '17', 'Media manager', 'fa-file', 'media', '2018-08-27 03:28:49', '2018-08-27 03:28:49');
INSERT INTO `admin_menu` VALUES ('19', '0', '18', 'Backup', 'fa-copy', 'backup', '2018-08-27 03:31:20', '2018-08-27 03:31:20');
INSERT INTO `admin_menu` VALUES ('20', '0', '0', '数据', 'fa-bars', null, '2018-08-27 05:57:39', '2018-08-27 06:02:04');
INSERT INTO `admin_menu` VALUES ('21', '20', '0', 'movies', 'fa-bars', '/movies', '2018-08-27 05:59:25', '2018-08-27 06:03:16');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:08:22', '2018-08-27 03:08:22');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:09:29', '2018-08-27 03:09:29');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:09:31', '2018-08-27 03:09:31');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:09:32', '2018-08-27 03:09:32');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:10:47', '2018-08-27 03:10:47');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:10:50', '2018-08-27 03:10:50');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:10:54', '2018-08-27 03:10:54');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:10:56', '2018-08-27 03:10:56');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:11:04', '2018-08-27 03:11:04');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:14:51', '2018-08-27 03:14:51');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:18:04', '2018-08-27 03:18:04');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:21:01', '2018-08-27 03:21:01');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:24:35', '2018-08-27 03:24:35');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:28:03', '2018-08-27 03:28:03');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:28:07', '2018-08-27 03:28:07');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:30:14', '2018-08-27 03:30:14');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:30:16', '2018-08-27 03:30:16');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:31:25', '2018-08-27 03:31:25');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:31:27', '2018-08-27 03:31:27');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"aMa1q1zyzbBzA66i6TkuwWcqG1EftrxEydZOTZER\"}', '2018-08-27 03:31:57', '2018-08-27 03:31:57');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-08-27 03:34:26', '2018-08-27 03:34:26');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-08-27 03:34:29', '2018-08-27 03:34:29');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"aMa1q1zyzbBzA66i6TkuwWcqG1EftrxEydZOTZER\"}', '2018-08-27 03:34:30', '2018-08-27 03:34:30');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:34:52', '2018-08-27 03:34:52');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:35:03', '2018-08-27 03:35:03');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 03:35:36', '2018-08-27 03:35:36');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 03:35:39', '2018-08-27 03:35:39');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 04:02:37', '2018-08-27 04:02:37');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 04:02:43', '2018-08-27 04:02:43');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 04:02:46', '2018-08-27 04:02:46');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 04:02:49', '2018-08-27 04:02:49');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/logs', 'GET', '127.0.0.1', '[]', '2018-08-27 04:48:28', '2018-08-27 04:48:28');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 05:56:54', '2018-08-27 05:56:54');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6570\\u636e\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"aMa1q1zyzbBzA66i6TkuwWcqG1EftrxEydZOTZER\"}', '2018-08-27 05:57:39', '2018-08-27 05:57:39');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 05:57:40', '2018-08-27 05:57:40');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 05:57:46', '2018-08-27 05:57:46');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 05:57:50', '2018-08-27 05:57:50');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 05:57:52', '2018-08-27 05:57:52');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 05:57:57', '2018-08-27 05:57:57');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"20\",\"title\":\"movies\",\"icon\":\"fa-bars\",\"uri\":\"\\/movies\",\"roles\":[\"1\",null],\"_token\":\"aMa1q1zyzbBzA66i6TkuwWcqG1EftrxEydZOTZER\"}', '2018-08-27 05:59:25', '2018-08-27 05:59:25');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 05:59:25', '2018-08-27 05:59:25');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:00:04', '2018-08-27 06:00:04');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:00:21', '2018-08-27 06:00:21');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 06:01:12', '2018-08-27 06:01:12');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6570\\u636e\",\"icon\":\"fa-bars\",\"uri\":\"\\/admin\",\"roles\":[\"1\",null],\"_token\":\"aMa1q1zyzbBzA66i6TkuwWcqG1EftrxEydZOTZER\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/expand-laravel.cn\\/admin\\/auth\\/menu\"}', '2018-08-27 06:01:25', '2018-08-27 06:01:25');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:01:25', '2018-08-27 06:01:25');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:01:30', '2018-08-27 06:01:30');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 06:01:54', '2018-08-27 06:01:54');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6570\\u636e\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"aMa1q1zyzbBzA66i6TkuwWcqG1EftrxEydZOTZER\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/expand-laravel.cn\\/admin\\/auth\\/menu\"}', '2018-08-27 06:02:03', '2018-08-27 06:02:03');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:02:04', '2018-08-27 06:02:04');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:02:07', '2018-08-27 06:02:07');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:02:21', '2018-08-27 06:02:21');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 06:02:42', '2018-08-27 06:02:42');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu/21', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"movies\",\"icon\":\"fa-bars\",\"uri\":\"\\/movies\",\"roles\":[\"1\",null],\"_token\":\"aMa1q1zyzbBzA66i6TkuwWcqG1EftrxEydZOTZER\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/expand-laravel.cn\\/admin\\/auth\\/menu\"}', '2018-08-27 06:02:50', '2018-08-27 06:02:50');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:02:50', '2018-08-27 06:02:50');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:03:08', '2018-08-27 06:03:08');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 06:03:10', '2018-08-27 06:03:10');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu/21', 'PUT', '127.0.0.1', '{\"parent_id\":\"20\",\"title\":\"movies\",\"icon\":\"fa-bars\",\"uri\":\"\\/movies\",\"roles\":[\"1\",null],\"_token\":\"aMa1q1zyzbBzA66i6TkuwWcqG1EftrxEydZOTZER\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/expand-laravel.cn\\/admin\\/auth\\/menu\"}', '2018-08-27 06:03:16', '2018-08-27 06:03:16');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:03:16', '2018-08-27 06:03:16');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 06:03:41', '2018-08-27 06:03:41');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/movies', 'GET', '127.0.0.1', '[]', '2018-08-27 06:04:00', '2018-08-27 06:04:00');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/movies/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 06:04:12', '2018-08-27 06:04:12');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', 'Admin helpers', 'ext.helpers', null, '/helpers/*', '2018-08-27 03:10:27', '2018-08-27 03:10:27');
INSERT INTO `admin_permissions` VALUES ('7', 'Logs', 'ext.log-viewer', null, '/logs*', '2018-08-27 03:12:08', '2018-08-27 03:12:08');
INSERT INTO `admin_permissions` VALUES ('8', 'Admin Config', 'ext.config', null, '/config*', '2018-08-27 03:17:54', '2018-08-27 03:17:54');
INSERT INTO `admin_permissions` VALUES ('9', 'Scheduling', 'ext.scheduling', null, '/scheduling*', '2018-08-27 03:20:28', '2018-08-27 03:20:28');
INSERT INTO `admin_permissions` VALUES ('10', 'Exceptions reporter', 'ext.reporter', null, '/exceptions*', '2018-08-27 03:23:46', '2018-08-27 03:23:46');
INSERT INTO `admin_permissions` VALUES ('11', 'Redis Manager', 'ext.redis-manager', null, '/redis*', '2018-08-27 03:26:54', '2018-08-27 03:26:54');
INSERT INTO `admin_permissions` VALUES ('12', 'Media manager', 'ext.media-manager', null, '/media*', '2018-08-27 03:28:50', '2018-08-27 03:28:50');
INSERT INTO `admin_permissions` VALUES ('13', 'Backup', 'ext.backup', null, '/backup*', '2018-08-27 03:31:20', '2018-08-27 03:31:20');

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-08-27 03:02:26', '2018-08-27 03:02:26');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '20', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '21', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$QTpJjoAM1O7rhkPLNWr7NePsfSqgn4iZSRfaEw4JaiWw1gJxqJ/j2', 'Administrator', null, null, '2018-08-27 03:02:26', '2018-08-27 03:02:26');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `laravel_exceptions`
-- ----------------------------
DROP TABLE IF EXISTS `laravel_exceptions`;
CREATE TABLE `laravel_exceptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` int(11) NOT NULL,
  `trace` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookies` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of laravel_exceptions
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2017_07_17_040159_create_config_table', '2');
INSERT INTO `migrations` VALUES ('5', '2017_07_17_040159_create_exceptions_table', '3');

-- ----------------------------
-- Table structure for `movies`
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `director` int(10) unsigned NOT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` tinyint(3) unsigned NOT NULL,
  `released` tinyint(3) NOT NULL DEFAULT '0',
  `release_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movies
-- ----------------------------

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
