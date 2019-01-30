/*
Navicat MySQL Data Transfer

Source Server         : WangYu_Laragon
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : admin-wy

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-01-30 17:56:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '后台管理', 'fa-tasks', '', null, null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户', 'fa-users', 'auth/users', null, null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色', 'fa-user', 'auth/roles', null, null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限', 'fa-ban', 'auth/permissions', null, null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单', 'fa-bars', 'auth/menu', null, null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '0', '信息管理', 'fa-book', null, null, '2018-12-24 11:49:35', '2018-12-24 13:37:08');
INSERT INTO `admin_menu` VALUES ('9', '8', '0', '文章列表', 'fa-align-right', '/article', '*', '2018-12-24 13:37:55', '2018-12-24 13:37:55');
INSERT INTO `admin_menu` VALUES ('10', '8', '0', '分类管理', 'fa-braille', '/category', '*', '2018-12-24 15:33:28', '2018-12-24 15:33:28');
INSERT INTO `admin_menu` VALUES ('11', '0', '0', '标签管理', 'fa-tags', null, '*', '2018-12-28 11:21:06', '2018-12-28 11:21:23');
INSERT INTO `admin_menu` VALUES ('12', '11', '0', '标签列表', 'fa-hashtag', '/tag', null, '2018-12-28 11:22:05', '2018-12-28 11:23:10');
INSERT INTO `admin_menu` VALUES ('13', '0', '0', '评论管理', 'fa-comments', null, '*', '2018-12-28 11:35:01', '2018-12-28 11:35:46');
INSERT INTO `admin_menu` VALUES ('14', '13', '0', '评论列表', 'fa-commenting', '/comment', '*', '2018-12-28 11:36:39', '2018-12-28 11:37:08');
INSERT INTO `admin_menu` VALUES ('15', '0', '7', 'Helpers', 'fa-gears', '', null, '2019-01-26 15:12:33', '2019-01-26 15:12:33');
INSERT INTO `admin_menu` VALUES ('16', '15', '8', 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', null, '2019-01-26 15:12:33', '2019-01-26 15:12:33');
INSERT INTO `admin_menu` VALUES ('17', '15', '9', 'Database terminal', 'fa-database', 'helpers/terminal/database', null, '2019-01-26 15:12:33', '2019-01-26 15:12:33');
INSERT INTO `admin_menu` VALUES ('18', '15', '10', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', null, '2019-01-26 15:12:33', '2019-01-26 15:12:33');
INSERT INTO `admin_menu` VALUES ('19', '15', '11', 'Routes', 'fa-list-alt', 'helpers/routes', null, '2019-01-26 15:12:33', '2019-01-26 15:12:33');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=744 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:26:48', '2018-12-24 11:26:48');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:26:50', '2018-12-24 11:26:50');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:29:16', '2018-12-24 11:29:16');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:29:36', '2018-12-24 11:29:36');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:29:39', '2018-12-24 11:29:39');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:29:41', '2018-12-24 11:29:41');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:29:46', '2018-12-24 11:29:46');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:29:47', '2018-12-24 11:29:47');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:29:48', '2018-12-24 11:29:48');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:29:49', '2018-12-24 11:29:49');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:20', '2018-12-24 11:30:20');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:22', '2018-12-24 11:30:22');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:23', '2018-12-24 11:30:23');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:25', '2018-12-24 11:30:25');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:28', '2018-12-24 11:30:28');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:29', '2018-12-24 11:30:29');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:30', '2018-12-24 11:30:30');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:30', '2018-12-24 11:30:30');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:30:36', '2018-12-24 11:30:36');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:34:46', '2018-12-24 11:34:46');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:34:50', '2018-12-24 11:34:50');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:34:51', '2018-12-24 11:34:51');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:34:53', '2018-12-24 11:34:53');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:35:11', '2018-12-24 11:35:11');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:15', '2018-12-24 11:35:15');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:16', '2018-12-24 11:35:16');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:18', '2018-12-24 11:35:18');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:19', '2018-12-24 11:35:19');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:22', '2018-12-24 11:35:22');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:23', '2018-12-24 11:35:23');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:23', '2018-12-24 11:35:23');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:27', '2018-12-24 11:35:27');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:30', '2018-12-24 11:35:30');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:35:39', '2018-12-24 11:35:39');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:35:53', '2018-12-24 11:35:53');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:35:55', '2018-12-24 11:35:55');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2018-12-24 11:35:55', '2018-12-24 11:35:55');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\"}', '2018-12-24 11:35:59', '2018-12-24 11:35:59');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:35:59', '2018-12-24 11:35:59');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:45:17', '2018-12-24 11:45:17');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-12-24 11:46:23', '2018-12-24 11:46:23');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-12-24 11:47:07', '2018-12-24 11:47:07');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-12-24 11:47:08', '2018-12-24 11:47:08');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:47:21', '2018-12-24 11:47:21');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:49:01', '2018-12-24 11:49:01');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-book\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\"}', '2018-12-24 11:49:34', '2018-12-24 11:49:34');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:49:35', '2018-12-24 11:49:35');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 11:49:36', '2018-12-24 11:49:36');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:49:40', '2018-12-24 11:49:40');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 11:49:45', '2018-12-24 11:49:45');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 13:34:48', '2018-12-24 13:34:48');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:34:52', '2018-12-24 13:34:52');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:34:54', '2018-12-24 13:34:54');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-12-24 13:34:55', '2018-12-24 13:34:55');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:34:59', '2018-12-24 13:34:59');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:36:00', '2018-12-24 13:36:00');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:36:58', '2018-12-24 13:36:58');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa-book\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/auth\\/menu\"}', '2018-12-24 13:37:08', '2018-12-24 13:37:08');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 13:37:08', '2018-12-24 13:37:08');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-align-right\",\"uri\":\"\\/article\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\"}', '2018-12-24 13:37:55', '2018-12-24 13:37:55');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 13:37:55', '2018-12-24 13:37:55');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 13:38:13', '2018-12-24 13:38:13');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 13:38:44', '2018-12-24 13:38:44');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 13:43:37', '2018-12-24 13:43:37');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 13:48:36', '2018-12-24 13:48:36');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:50:50', '2018-12-24 13:50:50');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 13:51:10', '2018-12-24 13:51:10');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:51:12', '2018-12-24 13:51:12');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 13:52:47', '2018-12-24 13:52:47');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 13:52:48', '2018-12-24 13:52:48');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:52:49', '2018-12-24 13:52:49');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 13:57:26', '2018-12-24 13:57:26');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:57:28', '2018-12-24 13:57:28');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 13:57:29', '2018-12-24 13:57:29');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 13:57:29', '2018-12-24 13:57:29');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 13:57:30', '2018-12-24 13:57:30');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 13:57:35', '2018-12-24 13:57:35');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 13:58:21', '2018-12-24 13:58:21');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 13:58:45', '2018-12-24 13:58:45');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 13:58:46', '2018-12-24 13:58:46');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 13:58:50', '2018-12-24 13:58:50');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:03:16', '2018-12-24 14:03:16');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:04:29', '2018-12-24 14:04:29');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:06:47', '2018-12-24 14:06:47');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:07:06', '2018-12-24 14:07:06');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:08:01', '2018-12-24 14:08:01');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:08:02', '2018-12-24 14:08:02');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:08:02', '2018-12-24 14:08:02');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:08:15', '2018-12-24 14:08:15');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:11:39', '2018-12-24 14:11:39');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:11:40', '2018-12-24 14:11:40');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"is_top\":\"off\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\",\"_method\":\"PUT\"}', '2018-12-24 14:11:42', '2018-12-24 14:11:42');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"is_top\":\"on\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\",\"_method\":\"PUT\"}', '2018-12-24 14:11:43', '2018-12-24 14:11:43');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:21:36', '2018-12-24 14:21:36');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:21:37', '2018-12-24 14:21:37');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:27:22', '2018-12-24 14:27:22');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:27:23', '2018-12-24 14:27:23');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:28:13', '2018-12-24 14:28:13');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:28:14', '2018-12-24 14:28:14');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:28:15', '2018-12-24 14:28:15');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:28:15', '2018-12-24 14:28:15');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:28:15', '2018-12-24 14:28:15');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:28:15', '2018-12-24 14:28:15');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:31:33', '2018-12-24 14:31:33');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:31:41', '2018-12-24 14:31:41');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:34:53', '2018-12-24 14:34:53');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:34:54', '2018-12-24 14:34:54');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:35:07', '2018-12-24 14:35:07');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:35:08', '2018-12-24 14:35:08');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:35:08', '2018-12-24 14:35:08');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:35:31', '2018-12-24 14:35:31');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:35:33', '2018-12-24 14:35:33');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:35:35', '2018-12-24 14:35:35');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:35:46', '2018-12-24 14:35:46');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:35:47', '2018-12-24 14:35:47');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:37:26', '2018-12-24 14:37:26');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:37:31', '2018-12-24 14:37:31');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:37:33', '2018-12-24 14:37:33');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:37:48', '2018-12-24 14:37:48');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:37:49', '2018-12-24 14:37:49');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:37:50', '2018-12-24 14:37:50');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:38:05', '2018-12-24 14:38:05');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:38:06', '2018-12-24 14:38:06');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:38:10', '2018-12-24 14:38:10');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:39:40', '2018-12-24 14:39:40');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:40:47', '2018-12-24 14:40:47');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:44:07', '2018-12-24 14:44:07');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:46:46', '2018-12-24 14:46:46');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:46:46', '2018-12-24 14:46:46');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:47:03', '2018-12-24 14:47:03');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:47:13', '2018-12-24 14:47:13');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 14:47:24', '2018-12-24 14:47:24');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:47:45', '2018-12-24 14:47:45');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:47:46', '2018-12-24 14:47:46');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 14:48:19', '2018-12-24 14:48:19');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 14:55:33', '2018-12-24 14:55:33');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:55:37', '2018-12-24 14:55:37');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:55:39', '2018-12-24 14:55:39');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 14:55:46', '2018-12-24 14:55:46');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:55:52', '2018-12-24 14:55:52');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:55:54', '2018-12-24 14:55:54');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:55:57', '2018-12-24 14:55:57');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 14:58:20', '2018-12-24 14:58:20');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 14:58:22', '2018-12-24 14:58:22');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:08:16', '2018-12-24 15:08:16');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:08:20', '2018-12-24 15:08:20');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:08:22', '2018-12-24 15:08:22');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 15:08:28', '2018-12-24 15:08:28');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 15:08:29', '2018-12-24 15:08:29');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 15:08:36', '2018-12-24 15:08:36');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:08:38', '2018-12-24 15:08:38');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:08:40', '2018-12-24 15:08:40');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:09:37', '2018-12-24 15:09:37');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:09:43', '2018-12-24 15:09:43');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:09:45', '2018-12-24 15:09:45');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:09:49', '2018-12-24 15:09:49');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:09:51', '2018-12-24 15:09:51');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"title\":\"\\u5199\\u7ed9 thinkphp \\u5f00\\u53d1\\u8005\\u7684 laravel \\u7cfb\\u5217\\u6559\\u7a0b (\\u4e00) \\u5e8f\\u8a00\",\"author\":\"\\u738b\\u5b87\",\"markdown\":\"\\u7ec8\\u4e8e\\uff1b\\u7ec8\\u4e8e\\uff1b\\u7ec8\\u4e8e\\uff1b\\r\\n\\u5f00\\u59cb\\u6b63\\u5f0f\\u5199 laravel \\u7cfb\\u5217\\u4e86\\uff1b\\r\\n\\u672c\\u7cfb\\u5217\\u6559\\u7a0b\\u4e3b\\u8981\\u9762\\u5411\\u7684\\u662f\\u591a\\u5c11\\u61c2\\u70b9 thinkphp3.X \\u7684\\u5f00\\u53d1\\u8005\\u4eec\\uff1b\\r\\n\\u6211\\u628a\\u6211\\u4ecetp3\\u8f6c\\u5230laravel\\u7684\\u5386\\u7a0b\\u8f6c\\u6210\\u4e00\\u7bc7\\u7bc7\\u7684\\u6587\\u7ae0\\u6559\\u7a0b\\uff1b\\r\\n\\u613f\\u8fd9\\u4e00\\u7cfb\\u5217\\u7684\\u6587\\u7ae0\\uff1b\\r\\n\\u80fd\\u6210\\u4e3a\\u7ae5\\u978b\\u4eec\\u8e0f\\u5165laravel\\u7684\\u5f15\\u8def\\u4eba\\uff1b\\r\\n\\r\\n\\u5982\\u679c\\u8fd8\\u6ca1\\u4e0b\\u5b9a\\u51b3\\u5b9a\\u8981\\u4f7f\\u7528laravel\\uff1b\\r\\n\\u90a3\\u4e48\\u6211\\u4e0a\\u6765\\u5c31\\u662f\\u4e00\\u4e2a\\u8fde\\u63a5\\uff1b\\r\\n[\\u5173\\u4e8e thinkphp \\u548c laravel \\u6846\\u67b6\\u7684\\u9009\\u62e9](http:\\/\\/baijunyao.com\\/article\\/109)\\r\\n\\u4e0d\\u662f\\u522b\\u4eba\\u8bf4\\u597d\\u6211\\u4e5f\\u8ddf\\u7740\\u8bf4\\u597d\\u7684\\uff1b\\r\\n\\u800c\\u662f\\u6211\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u4f7f\\u7528\\u8fc7\\u540e\\uff1b\\r\\n\\u4e0d\\u65ad\\u7684\\u53d1\\u73b0 laravel \\u7684\\u4f18\\u96c5\\uff1b\\r\\n\\u771f\\u5fc3\\u559c\\u6b22\\uff1b\\u624d\\u8fd9\\u4e48\\u63a8\\u8350\\u7684\\uff1b\\r\\n\\r\\n\\u53e6\\u5916\\u5b66\\u4e60\\u4f7f\\u7528 laravel \\u4e0d\\u540c\\u4e8e thinkphp\\uff1b\\r\\nthinkphp \\u7684\\u95ee\\u9898\\uff1b\\u767e\\u5ea6\\u4e00\\u4e0b\\u57fa\\u672c\\u90fd\\u80fd\\u89e3\\u51b3\\uff1b\\r\\nlaravel \\u4e00\\u5b9a\\u8981\\u6709\\u4e00\\u628a\\u68af\\u5b50\\u6765\\u7ffb\\u5899\\uff1b\\r\\ngoogle\\u662f\\u5fc5\\u4e0d\\u53ef\\u5c11\\u7684\\uff1b\\r\\n\\u73b0\\u5728\\u4f53\\u4f1a\\u4e0d\\u5230\\u6ca1\\u5173\\u7cfb\\uff1b\\r\\n\\u54b1\\u8fb9\\u5b66\\u8fb9\\u611f\\u53d7\\uff1b\\r\\n\\u6700\\u8fd1\\u4e00\\u6bb5\\u65f6\\u95f4\\u5927\\u6279\\u7684vpn\\u88ab\\u5173\\u505c\\u4e86\\uff1b\\r\\n\\u8fd9\\u91cc\\u6211\\u63a8\\u8350\\u4e00\\u6b3e\\u4f9d\\u7136\\u575a\\u633a\\u7684\\uff1b\\r\\n\\u6211\\u4e00\\u76f4\\u5728\\u7528\\u7684\\uff1b\\r\\n\\u4e5f\\u6bd4\\u8f83\\u559c\\u6b22\\u7684`\\u514d\\u8d39`\\u7ffb\\u5899\\u8f6f\\u4ef6\\uff1b\\r\\n[\\u63a8\\u8350\\u5f00\\u53d1\\u5de5\\u5177\\u7cfb\\u5217\\u4e4b -- \\u7ffb\\u5899\\u8f6f\\u4ef6 lantern](http:\\/\\/baijunyao.com\\/article\\/107)\\r\\n\\r\\n\\u6700\\u540e\\u7ed9\\u7ae5\\u978b\\u4eec\\u63a8\\u8350\\u6bd4\\u8f83\\u4e0d\\u9519\\u7684\\u56fd\\u5185\\u7684laravel\\u7f51\\u7ad9\\uff1b\\r\\n[Laravel China \\u793e\\u533a](https:\\/\\/laravel-china.org\\/)\\r\\n[Laravel \\u5b66\\u9662](http:\\/\\/laravelacademy.org\\/)\\r\\n[laravel\\u901f\\u67e5\\u8868](https:\\/\\/cs.laravel-china.org\\/)\\r\\n\\r\\n\\u79cd\\u4e00\\u68f5\\u6811\\u6700\\u597d\\u7684\\u65f6\\u95f4\\u662f\\u5341\\u5e74\\u524d\\uff1b\\u5176\\u6b21\\u662f\\u73b0\\u5728\\uff1b\\r\\n\\u8ba9\\u6211\\u4eec\\u5f00\\u59cb\\u5427\\uff1b\\r\\n![laravel](\\/uploads\\/article\\/5958ab4dd9db4.jpg \\\"laravel\\\")\",\"html\":\"\\u7ec8\\u4e8e\\uff1b\\u7ec8\\u4e8e\\uff1b\\u7ec8\\u4e8e\\uff1b\\r\\n\\u5f00\\u59cb\\u6b63\\u5f0f\\u5199 laravel \\u7cfb\\u5217\\u4e86\\uff1b\\r\\n\\u672c\\u7cfb\\u5217\\u6559\\u7a0b\\u4e3b\\u8981\\u9762\\u5411\\u7684\\u662f\\u591a\\u5c11\\u61c2\\u70b9 thinkphp3.X \\u7684\\u5f00\\u53d1\\u8005\\u4eec\\uff1b\\r\\n\\u6211\\u628a\\u6211\\u4ecetp3\\u8f6c\\u5230laravel\\u7684\\u5386\\u7a0b\\u8f6c\\u6210\\u4e00\\u7bc7\\u7bc7\\u7684\\u6587\\u7ae0\\u6559\\u7a0b\\uff1b\\r\\n\\u613f\\u8fd9\\u4e00\\u7cfb\\u5217\\u7684\\u6587\\u7ae0\\uff1b\\r\\n\\u80fd\\u6210\\u4e3a\\u7ae5\\u978b\\u4eec\\u8e0f\\u5165laravel\\u7684\\u5f15\\u8def\\u4eba\\uff1b\\r\\n\\r\\n\\u5982\\u679c\\u8fd8\\u6ca1\\u4e0b\\u5b9a\\u51b3\\u5b9a\\u8981\\u4f7f\\u7528laravel\\uff1b\\r\\n\\u90a3\\u4e48\\u6211\\u4e0a\\u6765\\u5c31\\u662f\\u4e00\\u4e2a\\u8fde\\u63a5\\uff1b\\r\\n\\r\\n\\u4e0d\\u662f\\u522b\\u4eba\\u8bf4\\u597d\\u6211\\u4e5f\\u8ddf\\u7740\\u8bf4\\u597d\\u7684\\uff1b\\r\\n\\u800c\\u662f\\u6211\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u4f7f\\u7528\\u8fc7\\u540e\\uff1b...\",\"description\":\"\\u6211\\u662f\\u63cf\\u8ff0\\u4fe1\\u606f\",\"keywords\":\"laravel,thinkphp, \\u6559\\u7a0b\",\"is_top\":\"off\",\"click\":\"500\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/article\"}', '2018-12-24 15:10:29', '2018-12-24 15:10:29');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:10:29', '2018-12-24 15:10:29');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:10:39', '2018-12-24 15:10:39');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-24 15:12:08', '2018-12-24 15:12:08');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:12:11', '2018-12-24 15:12:11');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:12:12', '2018-12-24 15:12:12');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:13:10', '2018-12-24 15:13:10');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:13:26', '2018-12-24 15:13:26');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:15:25', '2018-12-24 15:15:25');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:15:26', '2018-12-24 15:15:26');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:16:55', '2018-12-24 15:16:55');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:16:56', '2018-12-24 15:16:56');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:18:21', '2018-12-24 15:18:21');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:19:33', '2018-12-24 15:19:33');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-12-24 15:19:34', '2018-12-24 15:19:34');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/article', 'POST', '127.0.0.1', '{\"category_id\":\"2\",\"title\":\"\\u6bcf\\u5e7430\\u4ebf\\uff01\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u5c06\\u4eab\\u53d7\\u964d\\u8d39\\u5956\\u8865\",\"author\":\"\\u738b\\u5b87\",\"markdown\":\"\\u200b10\\u670825\\u65e5\\uff0c\\u8d22\\u653f\\u90e8\\u3001\\u5de5\\u4fe1\\u90e8\\u53d1\\u5e03\\u300a\\u5173\\u4e8e\\u5bf9\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u5b9e\\u65bd\\u964d\\u8d39\\u5956\\u8865\\u653f\\u7b56\\u7684\\u901a\\u77e5\\u300b\\uff0c\\u5f15\\u5bfc\\u5730\\u65b9\\u652f\\u6301\\u6269\\u5927\\u5b9e\\u4f53\\u7ecf\\u6d4e\\u9886\\u57df\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u89c4\\u6a21\\uff0c\\u964d\\u4f4e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u6210\\u672c\\uff0c\\u4fc3\\u8fdb\\u4e13\\u6ce8\\u4e8e\\u670d\\u52a1\\u5c0f\\u5fae\\u4f01\\u4e1a\\u7684\\u878d\\u8d44\\u62c5\\u4fdd\\u673a\\u6784\\u53ef\\u6301\\u7eed\\u53d1\\u5c55\\u3002\\r\\n\\r\\n      \\u901a\\u77e5\\u8981\\u6c42\\uff0c\\u6309\\u7167\\u5e02\\u573a\\u4e3b\\u5bfc\\u3001\\u653f\\u5e9c\\u6276\\u6301\\u3001\\u7ed3\\u679c\\u5bfc\\u5411\\u7684\\u539f\\u5219\\uff0c\\u652f\\u6301\\u5f15\\u5bfc\\u66f4\\u591a\\u91d1\\u878d\\u8d44\\u6e90\\u914d\\u7f6e\\u5230\\u5c0f\\u5fae\\u4f01\\u4e1a\\uff0c\\u8fdb\\u4e00\\u6b65\\u62d3\\u5c55\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u89c4\\u6a21\\uff0c\\u964d\\u4f4e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u8d39\\u7387\\u6c34\\u5e73\\u3002\\r\\n\\r\\n      \\u4e2d\\u592e\\u8d22\\u653f\\u57282018-2020\\u5e74\\u6bcf\\u5e74\\u5b89\\u6392\\u8d44\\u91d130\\u4ebf\\u5143\\uff0c\\u91c7\\u7528\\u5956\\u8865\\u7ed3\\u5408\\u7684\\u65b9\\u5f0f\\uff0c\\u5bf9\\u6269\\u5927\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u89c4\\u6a21\\u3001\\u964d\\u4f4e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u8d39\\u7387\\u7b49\\u653f\\u7b56\\u6027\\u5f15\\u5bfc\\u8f83\\u5f3a\\u7684\\u5730\\u65b9\\u8fdb\\u884c\\u5956\\u8865\\u30022018\\u5e74\\uff0c\\u5bf9\\u5168\\u56fd37\\u4e2a\\u7701\\u5e02\\uff08\\u5305\\u62ec\\u7701\\u3001\\u81ea\\u6cbb\\u533a\\u3001\\u76f4\\u8f96\\u5e02\\u3001\\u8ba1\\u5212\\u5355\\u5217\\u5e02\\u53ca\\u65b0\\u7586\\u751f\\u4ea7\\u5efa\\u8bbe\\u5175\\u56e2\\uff0c\\u4e0b\\u540c\\uff09\\u5747\\u5b89\\u6392\\u5956\\u8865\\u8d44\\u91d1\\u30022019\\u5e74\\u548c2020\\u5e74\\uff0c\\u5bf9\\u7b26\\u5408\\u4e00\\u5b9a\\u6761\\u4ef6\\u7684\\u7701\\u5e02\\u4e88\\u4ee5\\u5956\\u8865\\u3002\\r\\n\\r\\n      \\u9700\\u8981\\u5f3a\\u8c03\\u7684\\u662f\\uff0c\\u5c0f\\u5fae\\u4f01\\u4e1a\\u662f\\u6307\\u7b26\\u5408\\u5de5\\u4e1a\\u548c\\u4fe1\\u606f\\u5316\\u90e8\\u3001\\u56fd\\u5bb6\\u7edf\\u8ba1\\u5c40\\u7b49\\u90e8\\u95e8\\u8054\\u5408\\u5236\\u53d1\\u7684\\u300a\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u5212\\u578b\\u6807\\u51c6\\u89c4\\u5b9a\\u300b\\u7684\\u5c0f\\u578b\\u4f01\\u4e1a\\u3001\\u5fae\\u578b\\u4f01\\u4e1a\\uff0c\\u4e0d\\u5305\\u62ec\\u623f\\u5730\\u4ea7\\u884c\\u4e1a\\u3001\\u91d1\\u878d\\u670d\\u52a1\\u884c\\u4e1a\\u548c\\u6295\\u8d44\\uff08\\u8d44\\u4ea7\\uff09\\u7ba1\\u7406\\u7c7b\\u3001\\u5730\\u65b9\\u653f\\u5e9c\\u6295\\u878d\\u8d44\\u5e73\\u53f0\\u7c7b\\u3001\\u5730\\u65b9\\u56fd\\u6709\\u4f01\\u4e1a\\u8d44\\u672c\\u8fd0\\u8425\\u5e73\\u53f0\\u7c7b\\u4f01\\u4e1a\\u3002\\r\\n\\r\\n\\r\\n\\r\\n      \\u5956\\u8865\\u8d44\\u91d1\\u6709\\u4e24\\u79cd\\u5206\\u914d\\u529e\\u6cd5\\uff0c\\u5206\\u522b\\u662f\\u5206\\u6863\\u5b9a\\u989d\\u5956\\u52b1\\u548c\\u56e0\\u7d20\\u6cd5\\u8865\\u52a9\\u3002\\r\\n\\r\\n\\u6839\\u636e\\u5206\\u6863\\u5b9a\\u989d\\u5956\\u52b1\\uff0c2018\\u5e74\\uff0c\\u5bf9\\u4e1c\\u90e8\\u3001\\u4e2d\\u90e8\\u3001\\u897f\\u90e8\\u5730\\u533a\\u6309\\u4e0a\\u4e00\\u5e74\\u5ea6\\u65b0\\u589e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u5e74\\u5316\\u62c5\\u4fdd\\u989d\\u89c4\\u6a21\\u6392\\u540d\\u5206\\u522b\\u4f4d\\u4e8e\\u524d9\\u540d\\u3001\\u524d7\\u540d\\u3001\\u524d9\\u540d\\uff0c\\u5171\\u8ba125\\u4e2a\\u7701\\u5e02\\u8fdb\\u884c\\u5b9a\\u989d\\u5956\\u52b1\\u3002\\u5956\\u52b1\\u6807\\u51c6\\u6839\\u636e\\u5404\\u7701\\u5e02\\u4e0a\\u4e00\\u5e74\\u5ea6\\u65b0\\u589e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u5e74\\u5316\\u62c5\\u4fdd\\u989d\\u3001\\u5c0f\\u5fae\\u4f01\\u4e1a\\u5e74\\u5316\\u62c5\\u4fdd\\u8d39\\u7387\\u5206\\u4e3a\\u56db\\u6863\\uff0c\\u5956\\u52b1\\u91d1\\u989d\\u5206\\u522b\\u4e3a9000\\u4e07\\u5143\\u30017000\\u4e07\\u5143\\u30015000\\u4e07\\u5143\\u4ee5\\u53ca4000\\u4e07\\u5143\\u3002\\r\\n\\r\\n      \\u6b64\\u5916\\uff0c2018\\u5e74\\uff0c\\u5bf9\\u5168\\u56fd37\\u4e2a\\u7701\\u5e02\\uff08\\u542b\\u5175\\u56e2\\uff09\\u5b89\\u6392\\u8865\\u52a9\\u8d44\\u91d1\\u3002\\u8865\\u52a9\\u8d44\\u91d1\\u6309\\u56e0\\u7d20\\u6cd5\\u5206\\u914d\\uff0c\\u4ee5\\u4e0a\\u4e00\\u5e74\\u5ea6\\u65b0\\u589e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u989d\\u89c4\\u6a21\\u4e3a\\u5206\\u914d\\u56e0\\u7d20\\uff0c\\u517c\\u987e\\u533a\\u57df\\u534f\\u8c03\\u3002\\u533a\\u57df\\u8865\\u52a9\\u7cfb\\u6570\\u6839\\u636e\\u8d22\\u653f\\u90e8\\u5173\\u4e8e\\u4e1c\\u4e2d\\u897f\\u90e8\\u7701\\u4efd\\u7684\\u5212\\u5206\\u786e\\u5b9a\\u3002\\u4e1c\\u90e8\\u8865\\u52a9\\u7cfb\\u6570\\u4e3a1\\uff0c\\u4e2d\\u90e8\\u8865\\u52a9\\u7cfb\\u6570\\u4e3a1.2\\uff0c\\u897f\\u90e8\\u8865\\u52a9\\u7cfb\\u6570\\u4e3a1.6\\u30022019\\u5e74\\u548c2020\\u5e74\\uff0c\\u5bf9\\u4e0a\\u4e00\\u5e74\\u5ea6\\u5c0f\\u5fae\\u4f01\\u4e1a\\u5e74\\u5316\\u62c5\\u4fdd\\u8d39\\u7387\\u4e0d\\u8d85\\u8fc72%\\u7684\\u7701\\u5e02\\u7ee7\\u7eed\\u6309\\u56e0\\u7d20\\u6cd5\\u5206\\u914d\\u8865\\u52a9\\u8d44\\u91d1\\u3002\\r\\n\\r\\n\\u901a\\u77e5\\u8fd8\\u8981\\u6c42\\uff0c\\u5956\\u8865\\u8d44\\u91d1\\u5207\\u5757\\u4e0b\\u8fbe\\u5230\\u7701\\u7ea7\\u8d22\\u653f\\u90e8\\u95e8\\uff0c\\u7701\\u7ea7\\u8d22\\u653f\\u90e8\\u95e8\\u4f1a\\u540c\\u540c\\u7ea7\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u4e3b\\u7ba1\\u90e8\\u95e8\\u91cd\\u70b9\\u652f\\u6301\\u653f\\u7b56\\u5f15\\u5bfc\\u6027\\u8f83\\u5f3a\\u3001\\u6548\\u679c\\u8f83\\u597d\\u7684\\u62c5\\u4fdd\\u673a\\u6784\\uff0c\\u7279\\u522b\\u662f\\u5bf9\\u76f4\\u63a5\\u670d\\u52a1\\u5c0f\\u5fae\\u4f01\\u4e1a\\u4e14\\u53d6\\u8d39\\u8f83\\u4f4e\\u7684\\u62c5\\u4fdd\\u673a\\u6784\\u52a0\\u5927\\u5956\\u8865\\u529b\\u5ea6\\uff0c\\u5145\\u5206\\u53d1\\u6325\\u5956\\u8865\\u8d44\\u91d1\\u7684\\u6fc0\\u52b1\\u4f5c\\u7528\\uff0c\\u9632\\u6b62\\u5bf9\\u5730\\u5e02\\u6216\\u62c5\\u4fdd\\u673a\\u6784\\u7b80\\u5355\\u5e73\\u5747\\u5206\\u914d\\u3002\",\"html\":\"\\u200b10\\u670825\\u65e5\\uff0c\\u8d22\\u653f\\u90e8\\u3001\\u5de5\\u4fe1\\u90e8\\u53d1\\u5e03\\u300a\\u5173\\u4e8e\\u5bf9\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u5b9e\\u65bd\\u964d\\u8d39\\u5956\\u8865\\u653f\\u7b56\\u7684\\u901a\\u77e5\\u300b\\uff0c\\u5f15\\u5bfc\\u5730\\u65b9\\u652f\\u6301\\u6269\\u5927\\u5b9e\\u4f53\\u7ecf\\u6d4e\\u9886\\u57df\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u89c4\\u6a21\\uff0c\\u964d\\u4f4e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u6210\\u672c\\uff0c\\u4fc3\\u8fdb\\u4e13\\u6ce8\\u4e8e\\u670d\\u52a1\\u5c0f\\u5fae\\u4f01\\u4e1a\\u7684\\u878d\\u8d44\\u62c5\\u4fdd\\u673a\\u6784\\u53ef\\u6301\\u7eed\\u53d1\\u5c55\\u3002\\r\\n\\r\\n      \\u901a\\u77e5\\u8981\\u6c42\\uff0c\\u6309\\u7167\\u5e02\\u573a\\u4e3b\\u5bfc\\u3001\\u653f\\u5e9c\\u6276\\u6301\\u3001\\u7ed3\\u679c\\u5bfc\\u5411\\u7684\\u539f\\u5219\\uff0c\\u652f\\u6301\\u5f15\\u5bfc\\u66f4\\u591a\\u91d1\\u878d\\u8d44\\u6e90\\u914d\\u7f6e\\u5230\\u5c0f\\u5fae\\u4f01\\u4e1a\\uff0c\\u8fdb\\u4e00\\u6b65\\u62d3\\u5c55\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u89c4\\u6a21\\uff0c\\u964d\\u4f4e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u8d39\\u7387\\u6c34\\u5e73\\u3002\\r\\n\\r\\n      \\u4e2d\\u592e\\u8d22\\u653f\\u57282018-2020\\u5e74\\u6bcf\\u5e74\\u5b89\\u6392\\u8d44\\u91d130\\u4ebf\\u5143\\uff0c\\u91c7\\u7528\\u5956\\u8865\\u7ed3\\u5408\\u7684\\u65b9\\u5f0f\\uff0c\\u5bf9\\u6269\\u5927\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u89c4\\u6a21\\u3001\\u964d\\u4f4e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u8d39\\u7387\\u7b49\\u653f\\u7b56\\u6027\\u5f15\\u5bfc\\u8f83\\u5f3a\\u7684\\u5730\\u65b9\\u8fdb\\u884c\\u5956\\u8865\\u30022018\\u5e74\\uff0c\\u5bf9\\u5168\\u56fd37\\u4e2a\\u7701\\u5e02\\uff08\\u5305\\u62ec\\u7701\\u3001\\u81ea\\u6cbb\\u533a\\u3001\\u76f4\\u8f96\\u5e02\\u3001\\u8ba1\\u5212\\u5355\\u5217\\u5e02\\u53ca\\u65b0\\u7586\\u751f\\u4ea7\\u5efa\\u8bbe\\u5175\\u56e2\\uff0c\\u4e0b\\u540c\\uff09\\u5747\\u5b89\\u6392\\u5956\\u8865\\u8d44\\u91d1\\u30022019\\u5e74\\u548c2020\\u5e74\\uff0c\\u5bf9\\u7b26\\u5408\\u4e00\\u5b9a\\u6761\\u4ef6\\u7684\\u7701\\u5e02\\u4e88\\u4ee5\\u5956\\u8865\\u3002\\r\\n\\r\\n      \\u9700\\u8981\\u5f3a\\u8c03\\u7684\\u662f\\uff0c\\u5c0f\\u5fae\\u4f01\\u4e1a\\u662f\\u6307\\u7b26\\u5408\\u5de5\\u4e1a\\u548c\\u4fe1\\u606f\\u5316\\u90e8\\u3001\\u56fd\\u5bb6\\u7edf\\u8ba1\\u5c40\\u7b49\\u90e8\\u95e8\\u8054\\u5408\\u5236\\u53d1\\u7684\\u300a\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u5212\\u578b\\u6807\\u51c6\\u89c4\\u5b9a\\u300b\\u7684\\u5c0f\\u578b\\u4f01\\u4e1a\\u3001\\u5fae\\u578b\\u4f01\\u4e1a\\uff0c\\u4e0d\\u5305\\u62ec\\u623f\\u5730\\u4ea7\\u884c\\u4e1a\\u3001\\u91d1\\u878d\\u670d\\u52a1\\u884c\\u4e1a\\u548c\\u6295\\u8d44\\uff08\\u8d44\\u4ea7\\uff09\\u7ba1\\u7406\\u7c7b\\u3001\\u5730\\u65b9\\u653f\\u5e9c\\u6295\\u878d\\u8d44\\u5e73\\u53f0\\u7c7b\\u3001\\u5730\\u65b9\\u56fd\\u6709\\u4f01\\u4e1a\\u8d44\\u672c\\u8fd0\\u8425\\u5e73\\u53f0\\u7c7b\\u4f01\\u4e1a\\u3002\\r\\n\\r\\n\\r\\n\\r\\n      \\u5956\\u8865\\u8d44\\u91d1\\u6709\\u4e24\\u79cd\\u5206\\u914d\\u529e\\u6cd5\\uff0c\\u5206\\u522b\\u662f\\u5206\\u6863\\u5b9a\\u989d\\u5956\\u52b1\\u548c\\u56e0\\u7d20\\u6cd5\\u8865\\u52a9\\u3002\\r\\n\\r\\n\\u6839\\u636e\\u5206\\u6863\\u5b9a\\u989d\\u5956\\u52b1\\uff0c2018\\u5e74\\uff0c\\u5bf9\\u4e1c\\u90e8\\u3001\\u4e2d\\u90e8\\u3001\\u897f\\u90e8\\u5730\\u533a\\u6309\\u4e0a\\u4e00\\u5e74\\u5ea6\\u65b0\\u589e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u5e74\\u5316\\u62c5\\u4fdd\\u989d\\u89c4\\u6a21\\u6392\\u540d\\u5206\\u522b\\u4f4d\\u4e8e\\u524d9\\u540d\\u3001\\u524d7\\u540d\\u3001\\u524d9\\u540d\\uff0c\\u5171\\u8ba125\\u4e2a\\u7701\\u5e02\\u8fdb\\u884c\\u5b9a\\u989d\\u5956\\u52b1\\u3002\\u5956\\u52b1\\u6807\\u51c6\\u6839\\u636e\\u5404\\u7701\\u5e02\\u4e0a\\u4e00\\u5e74\\u5ea6\\u65b0\\u589e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u5e74\\u5316\\u62c5\\u4fdd\\u989d\\u3001\\u5c0f\\u5fae\\u4f01\\u4e1a\\u5e74\\u5316\\u62c5\\u4fdd\\u8d39\\u7387\\u5206\\u4e3a\\u56db\\u6863\\uff0c\\u5956\\u52b1\\u91d1\\u989d\\u5206\\u522b\\u4e3a9000\\u4e07\\u5143\\u30017000\\u4e07\\u5143\\u30015000\\u4e07\\u5143\\u4ee5\\u53ca4000\\u4e07\\u5143\\u3002\\r\\n\\r\\n      \\u6b64\\u5916\\uff0c2018\\u5e74\\uff0c\\u5bf9\\u5168\\u56fd37\\u4e2a\\u7701\\u5e02\\uff08\\u542b\\u5175\\u56e2\\uff09\\u5b89\\u6392\\u8865\\u52a9\\u8d44\\u91d1\\u3002\\u8865\\u52a9\\u8d44\\u91d1\\u6309\\u56e0\\u7d20\\u6cd5\\u5206\\u914d\\uff0c\\u4ee5\\u4e0a\\u4e00\\u5e74\\u5ea6\\u65b0\\u589e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u989d\\u89c4\\u6a21\\u4e3a\\u5206\\u914d\\u56e0\\u7d20\\uff0c\\u517c\\u987e\\u533a\\u57df\\u534f\\u8c03\\u3002\\u533a\\u57df\\u8865\\u52a9\\u7cfb\\u6570\\u6839\\u636e\\u8d22\\u653f\\u90e8\\u5173\\u4e8e\\u4e1c\\u4e2d\\u897f\\u90e8\\u7701\\u4efd\\u7684\\u5212\\u5206\\u786e\\u5b9a\\u3002\\u4e1c\\u90e8\\u8865\\u52a9\\u7cfb\\u6570\\u4e3a1\\uff0c\\u4e2d\\u90e8\\u8865\\u52a9\\u7cfb\\u6570\\u4e3a1.2\\uff0c\\u897f\\u90e8\\u8865\\u52a9\\u7cfb\\u6570\\u4e3a1.6\\u30022019\\u5e74\\u548c2020\\u5e74\\uff0c\\u5bf9\\u4e0a\\u4e00\\u5e74\\u5ea6\\u5c0f\\u5fae\\u4f01\\u4e1a\\u5e74\\u5316\\u62c5\\u4fdd\\u8d39\\u7387\\u4e0d\\u8d85\\u8fc72%\\u7684\\u7701\\u5e02\\u7ee7\\u7eed\\u6309\\u56e0\\u7d20\\u6cd5\\u5206\\u914d\\u8865\\u52a9\\u8d44\\u91d1\\u3002\\r\\n\\r\\n\\u901a\\u77e5\\u8fd8\\u8981\\u6c42\\uff0c\\u5956\\u8865\\u8d44\\u91d1\\u5207\\u5757\\u4e0b\\u8fbe\\u5230\\u7701\\u7ea7\\u8d22\\u653f\\u90e8\\u95e8\\uff0c\\u7701\\u7ea7\\u8d22\\u653f\\u90e8\\u95e8\\u4f1a\\u540c\\u540c\\u7ea7\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u4e3b\\u7ba1\\u90e8\\u95e8\\u91cd\\u70b9\\u652f\\u6301\\u653f\\u7b56\\u5f15\\u5bfc\\u6027\\u8f83\\u5f3a\\u3001\\u6548\\u679c\\u8f83\\u597d\\u7684\\u62c5\\u4fdd\\u673a\\u6784\\uff0c\\u7279\\u522b\\u662f\\u5bf9\\u76f4\\u63a5\\u670d\\u52a1\\u5c0f\\u5fae\\u4f01\\u4e1a\\u4e14\\u53d6\\u8d39\\u8f83\\u4f4e\\u7684\\u62c5\\u4fdd\\u673a\\u6784\\u52a0\\u5927\\u5956\\u8865\\u529b\\u5ea6\\uff0c\\u5145\\u5206\\u53d1\\u6325\\u5956\\u8865\\u8d44\\u91d1\\u7684\\u6fc0\\u52b1\\u4f5c\\u7528\\uff0c\\u9632\\u6b62\\u5bf9\\u5730\\u5e02\\u6216\\u62c5\\u4fdd\\u673a\\u6784\\u7b80\\u5355\\u5e73\\u5747\\u5206\\u914d\\u3002\",\"description\":\"\\u200b10\\u670825\\u65e5\\uff0c\\u8d22\\u653f\\u90e8\\u3001\\u5de5\\u4fe1\\u90e8\\u53d1\\u5e03\\u300a\\u5173\\u4e8e\\u5bf9\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u5b9e\\u65bd\\u964d\\u8d39\\u5956\\u8865\\u653f\\u7b56\\u7684\\u901a\\u77e5\\u300b\\uff0c\\u5f15\\u5bfc\\u5730\\u65b9\\u652f\\u6301\\u6269\\u5927\\u5b9e\\u4f53\\u7ecf\\u6d4e\\u9886\\u57df\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u4e1a\\u52a1\\u89c4\\u6a21\\uff0c\\u964d\\u4f4e\\u5c0f\\u5fae\\u4f01\\u4e1a\\u878d\\u8d44\\u62c5\\u4fdd\\u6210\\u672c\\uff0c\\u4fc3\\u8fdb\\u4e13\\u6ce8\\u4e8e\\u670d\\u52a1\\u5c0f\\u5fae\\u4f01\\u4e1a\\u7684\\u878d\\u8d44\\u62c5\\u4fdd\\u673a\\u6784\\u53ef\\u6301\\u7eed\\u53d1\\u5c55\\u3002\",\"keywords\":\"\\u8d22\\u653f\\u90e8,\\u70ed\\u95fb\",\"is_top\":\"on\",\"click\":\"20\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\"}', '2018-12-24 15:20:38', '2018-12-24 15:20:38');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:20:38', '2018-12-24 15:20:38');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:24:04', '2018-12-24 15:24:04');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:24:06', '2018-12-24 15:24:06');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:24:06', '2018-12-24 15:24:06');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:25:20', '2018-12-24 15:25:20');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:25:22', '2018-12-24 15:25:22');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:25:42', '2018-12-24 15:25:42');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:26:08', '2018-12-24 15:26:08');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:26:10', '2018-12-24 15:26:10');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:26:23', '2018-12-24 15:26:23');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:26:38', '2018-12-24 15:26:38');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:16', '2018-12-24 15:27:16');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:17', '2018-12-24 15:27:17');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:35', '2018-12-24 15:27:35');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:37', '2018-12-24 15:27:37');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:53', '2018-12-24 15:27:53');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:54', '2018-12-24 15:27:54');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:55', '2018-12-24 15:27:55');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:55', '2018-12-24 15:27:55');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:55', '2018-12-24 15:27:55');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:27:55', '2018-12-24 15:27:55');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:28:27', '2018-12-24 15:28:27');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:28:36', '2018-12-24 15:28:36');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:28:39', '2018-12-24 15:28:39');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"title\":\"\\u5199\\u7ed9 thinkphp \\u5f00\\u53d1\\u8005\\u7684 laravel \\u7cfb\\u5217\\u6559\\u7a0b (\\u4e00) \\u5e8f\\u8a00\",\"author\":\"\\u738b\\u5b87\",\"markdown\":\"\\u7ec8\\u4e8e\\uff1b\\u7ec8\\u4e8e\\uff1b\\u7ec8\\u4e8e\\uff1b\\r\\n\\u5f00\\u59cb\\u6b63\\u5f0f\\u5199 laravel \\u7cfb\\u5217\\u4e86\\uff1b\\r\\n\\u672c\\u7cfb\\u5217\\u6559\\u7a0b\\u4e3b\\u8981\\u9762\\u5411\\u7684\\u662f\\u591a\\u5c11\\u61c2\\u70b9 thinkphp3.X \\u7684\\u5f00\\u53d1\\u8005\\u4eec\\uff1b\\r\\n\\u6211\\u628a\\u6211\\u4ecetp3\\u8f6c\\u5230laravel\\u7684\\u5386\\u7a0b\\u8f6c\\u6210\\u4e00\\u7bc7\\u7bc7\\u7684\\u6587\\u7ae0\\u6559\\u7a0b\\uff1b\\r\\n\\u613f\\u8fd9\\u4e00\\u7cfb\\u5217\\u7684\\u6587\\u7ae0\\uff1b\\r\\n\\u80fd\\u6210\\u4e3a\\u7ae5\\u978b\\u4eec\\u8e0f\\u5165laravel\\u7684\\u5f15\\u8def\\u4eba\\uff1b\\r\\n\\r\\n\\u5982\\u679c\\u8fd8\\u6ca1\\u4e0b\\u5b9a\\u51b3\\u5b9a\\u8981\\u4f7f\\u7528laravel\\uff1b\\r\\n\\u90a3\\u4e48\\u6211\\u4e0a\\u6765\\u5c31\\u662f\\u4e00\\u4e2a\\u8fde\\u63a5\\uff1b\\r\\n[\\u5173\\u4e8e thinkphp \\u548c laravel \\u6846\\u67b6\\u7684\\u9009\\u62e9](http:\\/\\/baijunyao.com\\/article\\/109)\\r\\n\\u4e0d\\u662f\\u522b\\u4eba\\u8bf4\\u597d\\u6211\\u4e5f\\u8ddf\\u7740\\u8bf4\\u597d\\u7684\\uff1b\\r\\n\\u800c\\u662f\\u6211\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u4f7f\\u7528\\u8fc7\\u540e\\uff1b\\r\\n\\u4e0d\\u65ad\\u7684\\u53d1\\u73b0 laravel \\u7684\\u4f18\\u96c5\\uff1b\\r\\n\\u771f\\u5fc3\\u559c\\u6b22\\uff1b\\u624d\\u8fd9\\u4e48\\u63a8\\u8350\\u7684\\uff1b\\r\\n\\r\\n\\u53e6\\u5916\\u5b66\\u4e60\\u4f7f\\u7528 laravel \\u4e0d\\u540c\\u4e8e thinkphp\\uff1b\\r\\nthinkphp \\u7684\\u95ee\\u9898\\uff1b\\u767e\\u5ea6\\u4e00\\u4e0b\\u57fa\\u672c\\u90fd\\u80fd\\u89e3\\u51b3\\uff1b\\r\\nlaravel \\u4e00\\u5b9a\\u8981\\u6709\\u4e00\\u628a\\u68af\\u5b50\\u6765\\u7ffb\\u5899\\uff1b\\r\\ngoogle\\u662f\\u5fc5\\u4e0d\\u53ef\\u5c11\\u7684\\uff1b\\r\\n\\u73b0\\u5728\\u4f53\\u4f1a\\u4e0d\\u5230\\u6ca1\\u5173\\u7cfb\\uff1b\\r\\n\\u54b1\\u8fb9\\u5b66\\u8fb9\\u611f\\u53d7\\uff1b\\r\\n\\u6700\\u8fd1\\u4e00\\u6bb5\\u65f6\\u95f4\\u5927\\u6279\\u7684vpn\\u88ab\\u5173\\u505c\\u4e86\\uff1b\\r\\n\\u8fd9\\u91cc\\u6211\\u63a8\\u8350\\u4e00\\u6b3e\\u4f9d\\u7136\\u575a\\u633a\\u7684\\uff1b\\r\\n\\u6211\\u4e00\\u76f4\\u5728\\u7528\\u7684\\uff1b\\r\\n\\u4e5f\\u6bd4\\u8f83\\u559c\\u6b22\\u7684`\\u514d\\u8d39`\\u7ffb\\u5899\\u8f6f\\u4ef6\\uff1b\\r\\n[\\u63a8\\u8350\\u5f00\\u53d1\\u5de5\\u5177\\u7cfb\\u5217\\u4e4b -- \\u7ffb\\u5899\\u8f6f\\u4ef6 lantern](http:\\/\\/baijunyao.com\\/article\\/107)\\r\\n\\r\\n\\u6700\\u540e\\u7ed9\\u7ae5\\u978b\\u4eec\\u63a8\\u8350\\u6bd4\\u8f83\\u4e0d\\u9519\\u7684\\u56fd\\u5185\\u7684laravel\\u7f51\\u7ad9\\uff1b\\r\\n[Laravel China \\u793e\\u533a](https:\\/\\/laravel-china.org\\/)\\r\\n[Laravel \\u5b66\\u9662](http:\\/\\/laravelacademy.org\\/)\\r\\n[laravel\\u901f\\u67e5\\u8868](https:\\/\\/cs.laravel-china.org\\/)\\r\\n\\r\\n\\u79cd\\u4e00\\u68f5\\u6811\\u6700\\u597d\\u7684\\u65f6\\u95f4\\u662f\\u5341\\u5e74\\u524d\\uff1b\\u5176\\u6b21\\u662f\\u73b0\\u5728\\uff1b\\r\\n\\u8ba9\\u6211\\u4eec\\u5f00\\u59cb\\u5427\\uff1b\\r\\n![laravel](\\/uploads\\/article\\/5958ab4dd9db4.jpg \\\"laravel\\\")\",\"html\":\"\\u7ec8\\u4e8e\\uff1b\\u7ec8\\u4e8e\\uff1b\\u7ec8\\u4e8e\\uff1b\\r\\n\\u5f00\\u59cb\\u6b63\\u5f0f\\u5199 laravel \\u7cfb\\u5217\\u4e86\\uff1b\\r\\n\\u672c\\u7cfb\\u5217\\u6559\\u7a0b\\u4e3b\\u8981\\u9762\\u5411\\u7684\\u662f\\u591a\\u5c11\\u61c2\\u70b9 thinkphp3.X \\u7684\\u5f00\\u53d1\\u8005\\u4eec\\uff1b\\r\\n\\u6211\\u628a\\u6211\\u4ecetp3\\u8f6c\\u5230laravel\\u7684\\u5386\\u7a0b\\u8f6c\\u6210\\u4e00\\u7bc7\\u7bc7\\u7684\\u6587\\u7ae0\\u6559\\u7a0b\\uff1b\\r\\n\\u613f\\u8fd9\\u4e00\\u7cfb\\u5217\\u7684\\u6587\\u7ae0\\uff1b\\r\\n\\u80fd\\u6210\\u4e3a\\u7ae5\\u978b\\u4eec\\u8e0f\\u5165laravel\\u7684\\u5f15\\u8def\\u4eba\\uff1b\\r\\n\\r\\n\\u5982\\u679c\\u8fd8\\u6ca1\\u4e0b\\u5b9a\\u51b3\\u5b9a\\u8981\\u4f7f\\u7528laravel\\uff1b\\r\\n\\u90a3\\u4e48\\u6211\\u4e0a\\u6765\\u5c31\\u662f\\u4e00\\u4e2a\\u8fde\\u63a5\\uff1b\\r\\n\\r\\n\\u4e0d\\u662f\\u522b\\u4eba\\u8bf4\\u597d\\u6211\\u4e5f\\u8ddf\\u7740\\u8bf4\\u597d\\u7684\\uff1b\\r\\n\\u800c\\u662f\\u6211\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u4f7f\\u7528\\u8fc7\\u540e\\uff1b...\",\"description\":\"\\u6211\\u662f\\u63cf\\u8ff0\\u4fe1\\u606f\",\"keywords\":\"laravel,thinkphp, \\u6559\\u7a0b\",\"is_top\":\"off\",\"click\":\"504\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/article\"}', '2018-12-24 15:28:43', '2018-12-24 15:28:43');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:28:44', '2018-12-24 15:28:44');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:30:23', '2018-12-24 15:30:23');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:30:27', '2018-12-24 15:30:27');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2018-12-24 15:30:27', '2018-12-24 15:30:27');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"362795726\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\"}', '2018-12-24 15:30:32', '2018-12-24 15:30:32');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2018-12-24 15:30:33', '2018-12-24 15:30:33');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\"}', '2018-12-24 15:30:37', '2018-12-24 15:30:37');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-24 15:30:38', '2018-12-24 15:30:38');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:31:35', '2018-12-24 15:31:35');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-braille\",\"uri\":\"\\/category\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"xkIwse4ynqsrCmpVjj3J9JCgoeyLLHCB77pHZk04\"}', '2018-12-24 15:33:28', '2018-12-24 15:33:28');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 15:33:28', '2018-12-24 15:33:28');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-24 15:33:33', '2018-12-24 15:33:33');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-24 15:35:18', '2018-12-24 15:35:18');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-12-28 09:34:49', '2018-12-28 09:34:49');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 09:35:40', '2018-12-28 09:35:40');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 09:35:51', '2018-12-28 09:35:51');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 09:35:52', '2018-12-28 09:35:52');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 09:35:53', '2018-12-28 09:35:53');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 09:35:54', '2018-12-28 09:35:54');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 09:35:57', '2018-12-28 09:35:57');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 09:36:09', '2018-12-28 09:36:09');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:29:49', '2018-12-28 10:29:49');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:29:50', '2018-12-28 10:29:50');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:29:58', '2018-12-28 10:29:58');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:32:33', '2018-12-28 10:32:33');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:32:40', '2018-12-28 10:32:40');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:32:59', '2018-12-28 10:32:59');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:34:29', '2018-12-28 10:34:29');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:35:15', '2018-12-28 10:35:15');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:35:44', '2018-12-28 10:35:44');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:36:46', '2018-12-28 10:36:46');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/category/1', 'PUT', '127.0.0.1', '{\"name\":\"sort\",\"value\":\"13\",\"pk\":\"1\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2018-12-28 10:36:51', '2018-12-28 10:36:51');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:36:53', '2018-12-28 10:36:53');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:36:54', '2018-12-28 10:36:54');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:37:33', '2018-12-28 10:37:33');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:37:45', '2018-12-28 10:37:45');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:37:56', '2018-12-28 10:37:56');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:38:26', '2018-12-28 10:38:26');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:38:54', '2018-12-28 10:38:54');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:39:27', '2018-12-28 10:39:27');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:39:35', '2018-12-28 10:39:35');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:39:42', '2018-12-28 10:39:42');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:39:56', '2018-12-28 10:39:56');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:04', '2018-12-28 10:40:04');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:13', '2018-12-28 10:40:13');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:14', '2018-12-28 10:40:14');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:26', '2018-12-28 10:40:26');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:26', '2018-12-28 10:40:26');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:27', '2018-12-28 10:40:27');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:27', '2018-12-28 10:40:27');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:40:31', '2018-12-28 10:40:31');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:39', '2018-12-28 10:40:39');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:40:47', '2018-12-28 10:40:47');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:42:00', '2018-12-28 10:42:00');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:42:09', '2018-12-28 10:42:09');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 10:44:45', '2018-12-28 10:44:45');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:44:47', '2018-12-28 10:44:47');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 10:46:32', '2018-12-28 10:46:32');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 10:46:33', '2018-12-28 10:46:33');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 10:47:20', '2018-12-28 10:47:20');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:47:26', '2018-12-28 10:47:26');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:47:34', '2018-12-28 10:47:34');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:47:36', '2018-12-28 10:47:36');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-28 10:47:49', '2018-12-28 10:47:49');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:48:03', '2018-12-28 10:48:03');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:48:36', '2018-12-28 10:48:36');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:48:42', '2018-12-28 10:48:42');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/category/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:48:44', '2018-12-28 10:48:44');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:48:50', '2018-12-28 10:48:50');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/article/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:48:52', '2018-12-28 10:48:52');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/article/2/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 10:50:51', '2018-12-28 10:50:51');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:50:57', '2018-12-28 10:50:57');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/category/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:50:59', '2018-12-28 10:50:59');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:51:06', '2018-12-28 10:51:06');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:51:08', '2018-12-28 10:51:08');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 10:53:31', '2018-12-28 10:53:31');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 10:53:46', '2018-12-28 10:53:46');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 10:53:47', '2018-12-28 10:53:47');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 10:53:47', '2018-12-28 10:53:47');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 10:53:54', '2018-12-28 10:53:54');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:11:37', '2018-12-28 11:11:37');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:11:39', '2018-12-28 11:11:39');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 11:13:35', '2018-12-28 11:13:35');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 11:13:54', '2018-12-28 11:13:54');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 11:14:41', '2018-12-28 11:14:41');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:14:57', '2018-12-28 11:14:57');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:15:00', '2018-12-28 11:15:00');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/category/2', 'PUT', '127.0.0.1', '{\"name\":\"sort\",\"value\":\"1\",\"pk\":\"2\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2018-12-28 11:15:06', '2018-12-28 11:15:06');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-12-28 11:15:07', '2018-12-28 11:15:07');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/category', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:15:18', '2018-12-28 11:15:18');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/category', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:15:20', '2018-12-28 11:15:20');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:19:21', '2018-12-28 11:19:21');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6807\\u7b7e\\u7ba1\\u7406\",\"icon\":\"fa-tags\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\"}', '2018-12-28 11:21:06', '2018-12-28 11:21:06');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:21:06', '2018-12-28 11:21:06');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:21:13', '2018-12-28 11:21:13');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6807\\u7b7e\\u7ba1\\u7406\",\"icon\":\"fa-tags\",\"uri\":null,\"roles\":[null],\"permission\":\"*\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/auth\\/menu\"}', '2018-12-28 11:21:23', '2018-12-28 11:21:23');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:21:23', '2018-12-28 11:21:23');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"\\u6807\\u7b7e\\u5217\\u8868\",\"icon\":\"fa - tag\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\"}', '2018-12-28 11:22:05', '2018-12-28 11:22:05');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:22:05', '2018-12-28 11:22:05');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:22:16', '2018-12-28 11:22:16');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"\\u6807\\u7b7e\\u5217\\u8868\",\"icon\":\"fa-hashtag\",\"uri\":\"\\/tag\",\"roles\":[null],\"permission\":null,\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/auth\\/menu\"}', '2018-12-28 11:23:10', '2018-12-28 11:23:10');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:23:11', '2018-12-28 11:23:11');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:23:15', '2018-12-28 11:23:15');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:24:07', '2018-12-28 11:24:07');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2018-12-28 11:25:17', '2018-12-28 11:25:17');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2018-12-28 11:27:35', '2018-12-28 11:27:35');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2018-12-28 11:28:27', '2018-12-28 11:28:27');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2018-12-28 11:30:04', '2018-12-28 11:30:04');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2018-12-28 11:30:19', '2018-12-28 11:30:19');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:30:29', '2018-12-28 11:30:29');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/tag/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-28 11:32:23', '2018-12-28 11:32:23');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:32:26', '2018-12-28 11:32:26');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/tag/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:32:27', '2018-12-28 11:32:27');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/tag/create', 'GET', '127.0.0.1', '[]', '2018-12-28 11:32:45', '2018-12-28 11:32:45');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/tag', 'POST', '127.0.0.1', '{\"name\":\"Laravel\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\"}', '2018-12-28 11:32:52', '2018-12-28 11:32:52');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/tag/create', 'GET', '127.0.0.1', '[]', '2018-12-28 11:32:52', '2018-12-28 11:32:52');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:33:09', '2018-12-28 11:33:09');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/tag/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:33:14', '2018-12-28 11:33:14');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/tag', 'POST', '127.0.0.1', '{\"name\":\"php\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/tag\"}', '2018-12-28 11:33:19', '2018-12-28 11:33:19');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/tag/create', 'GET', '127.0.0.1', '[]', '2018-12-28 11:33:19', '2018-12-28 11:33:19');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/tag', 'POST', '127.0.0.1', '{\"name\":\"php1\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\"}', '2018-12-28 11:33:24', '2018-12-28 11:33:24');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2018-12-28 11:33:25', '2018-12-28 11:33:25');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/tag/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:33:34', '2018-12-28 11:33:34');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:33:41', '2018-12-28 11:33:41');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/tag/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:33:47', '2018-12-28 11:33:47');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/tag/4', 'PUT', '127.0.0.1', '{\"name\":\"Python\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/tag\"}', '2018-12-28 11:34:06', '2018-12-28 11:34:06');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2018-12-28 11:34:06', '2018-12-28 11:34:06');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:34:14', '2018-12-28 11:34:14');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:34:15', '2018-12-28 11:34:15');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:34:40', '2018-12-28 11:34:40');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:34:42', '2018-12-28 11:34:42');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bc4\\u8bba\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\"}', '2018-12-28 11:35:01', '2018-12-28 11:35:01');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:35:01', '2018-12-28 11:35:01');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:35:04', '2018-12-28 11:35:04');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bc4\\u8bba\\u7ba1\\u7406\",\"icon\":\"fa-comments\",\"uri\":null,\"roles\":[null],\"permission\":\"*\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/auth\\/menu\"}', '2018-12-28 11:35:46', '2018-12-28 11:35:46');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:35:46', '2018-12-28 11:35:46');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"\\u8bc4\\u8bba\\u5217\\u8868\",\"icon\":\"fa-commenting\",\"uri\":null,\"roles\":[null],\"permission\":\"*\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\"}', '2018-12-28 11:36:39', '2018-12-28 11:36:39');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:36:39', '2018-12-28 11:36:39');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:36:43', '2018-12-28 11:36:43');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:36:49', '2018-12-28 11:36:49');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"\\u8bc4\\u8bba\\u5217\\u8868\",\"icon\":\"fa-commenting\",\"uri\":\"\\/comment\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/auth\\/menu\"}', '2018-12-28 11:37:08', '2018-12-28 11:37:08');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-28 11:37:08', '2018-12-28 11:37:08');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:37:11', '2018-12-28 11:37:11');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 11:37:15', '2018-12-28 11:37:15');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-12-28 11:37:16', '2018-12-28 11:37:16');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:41:20', '2018-12-28 11:41:20');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:42:28', '2018-12-28 11:42:28');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:44:17', '2018-12-28 11:44:17');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:44:47', '2018-12-28 11:44:47');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:46:39', '2018-12-28 11:46:39');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_method\":\"PUT\"}', '2018-12-28 11:46:41', '2018-12-28 11:46:41');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"TScpIfBegAe9vBbkKSBuEmRRZqkPNyJScCA36HsB\",\"_method\":\"PUT\"}', '2018-12-28 11:46:42', '2018-12-28 11:46:42');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:48:21', '2018-12-28 11:48:21');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:49:12', '2018-12-28 11:49:12');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:49:21', '2018-12-28 11:49:21');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 11:49:29', '2018-12-28 11:49:29');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 12:00:53', '2018-12-28 12:00:53');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 12:00:55', '2018-12-28 12:00:55');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 13:36:38', '2018-12-28 13:36:38');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 13:38:22', '2018-12-28 13:38:22');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 13:38:24', '2018-12-28 13:38:24');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 13:41:27', '2018-12-28 13:41:27');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 13:44:11', '2018-12-28 13:44:11');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 13:47:03', '2018-12-28 13:47:03');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 15:16:57', '2018-12-28 15:16:57');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 15:16:59', '2018-12-28 15:16:59');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 15:16:59', '2018-12-28 15:16:59');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 18:06:35', '2018-12-28 18:06:35');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 18:06:45', '2018-12-28 18:06:45');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-28 18:06:48', '2018-12-28 18:06:48');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-28 18:06:52', '2018-12-28 18:06:52');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 18:08:10', '2018-12-28 18:08:10');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 18:09:07', '2018-12-28 18:09:07');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2018-12-28 18:09:15', '2018-12-28 18:09:15');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-29 10:05:46', '2018-12-29 10:05:46');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 10:05:50', '2018-12-29 10:05:50');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 10:05:52', '2018-12-29 10:05:52');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"VYpnfr6aS2znBGGnXxueSkAeCnAWoRZpklb1B7DA\",\"_method\":\"PUT\"}', '2018-12-29 10:06:04', '2018-12-29 10:06:04');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 10:06:07', '2018-12-29 10:06:07');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"VYpnfr6aS2znBGGnXxueSkAeCnAWoRZpklb1B7DA\",\"_method\":\"PUT\"}', '2018-12-29 10:06:08', '2018-12-29 10:06:08');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"VYpnfr6aS2znBGGnXxueSkAeCnAWoRZpklb1B7DA\",\"_method\":\"PUT\"}', '2018-12-29 10:06:09', '2018-12-29 10:06:09');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 10:06:11', '2018-12-29 10:06:11');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 10:06:21', '2018-12-29 10:06:21');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 10:06:31', '2018-12-29 10:06:31');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 10:06:37', '2018-12-29 10:06:37');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-12-29 17:01:30', '2018-12-29 17:01:30');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 17:03:23', '2018-12-29 17:03:23');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 17:03:29', '2018-12-29 17:03:29');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:03:30', '2018-12-29 17:03:30');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 17:03:31', '2018-12-29 17:03:31');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 17:03:32', '2018-12-29 17:03:32');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 17:03:42', '2018-12-29 17:03:42');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:06:10', '2018-12-29 17:06:10');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:06:12', '2018-12-29 17:06:12');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:06:12', '2018-12-29 17:06:12');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/comment/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 17:06:21', '2018-12-29 17:06:21');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:06:22', '2018-12-29 17:06:22');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:07:30', '2018-12-29 17:07:30');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:07:31', '2018-12-29 17:07:31');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:07:32', '2018-12-29 17:07:32');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:07:40', '2018-12-29 17:07:40');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:09:55', '2018-12-29 17:09:55');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:10:21', '2018-12-29 17:10:21');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:11:58', '2018-12-29 17:11:58');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:12:19', '2018-12-29 17:12:19');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:14:53', '2018-12-29 17:14:53');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:14:55', '2018-12-29 17:14:55');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:15:12', '2018-12-29 17:15:12');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:15:13', '2018-12-29 17:15:13');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:32:58', '2018-12-29 17:32:58');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:32:59', '2018-12-29 17:32:59');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:32:59', '2018-12-29 17:32:59');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:56:20', '2018-12-29 17:56:20');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:56:21', '2018-12-29 17:56:21');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 17:56:25', '2018-12-29 17:56:25');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:56:26', '2018-12-29 17:56:26');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 17:56:27', '2018-12-29 17:56:27');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 17:56:30', '2018-12-29 17:56:30');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 17:56:41', '2018-12-29 17:56:41');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:57:33', '2018-12-29 17:57:33');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:57:34', '2018-12-29 17:57:34');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:58:10', '2018-12-29 17:58:10');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:58:36', '2018-12-29 17:58:36');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:58:50', '2018-12-29 17:58:50');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:58:51', '2018-12-29 17:58:51');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-29 17:58:55', '2018-12-29 17:58:55');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 17:59:47', '2018-12-29 17:59:47');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 18:00:23', '2018-12-29 18:00:23');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 18:00:36', '2018-12-29 18:00:36');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 18:00:36', '2018-12-29 18:00:36');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 18:01:12', '2018-12-29 18:01:12');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 18:01:14', '2018-12-29 18:01:14');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 18:01:14', '2018-12-29 18:01:14');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 18:01:33', '2018-12-29 18:01:33');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 18:01:34', '2018-12-29 18:01:34');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"F7tdbmxdvihgWTpDga1TT5BXuIvuFk0hvXvXlemF\",\"_method\":\"PUT\"}', '2018-12-29 18:01:35', '2018-12-29 18:01:35');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 18:06:20', '2018-12-29 18:06:20');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2018-12-29 18:06:21', '2018-12-29 18:06:21');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:19:35', '2019-01-02 09:19:35');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:19:43', '2019-01-02 09:19:43');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"Hj3uOOm5XWUPaOiguBcWQhuQh1sjJLV02fZSZeMw\",\"_method\":\"PUT\"}', '2019-01-02 09:19:44', '2019-01-02 09:19:44');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:19:45', '2019-01-02 09:19:45');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:19:46', '2019-01-02 09:19:46');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"Hj3uOOm5XWUPaOiguBcWQhuQh1sjJLV02fZSZeMw\",\"_method\":\"PUT\"}', '2019-01-02 09:19:46', '2019-01-02 09:19:46');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:23:03', '2019-01-02 09:23:03');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:23:15', '2019-01-02 09:23:15');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:23:19', '2019-01-02 09:23:19');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:23:33', '2019-01-02 09:23:33');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:23:35', '2019-01-02 09:23:35');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:23:39', '2019-01-02 09:23:39');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:23:41', '2019-01-02 09:23:41');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:24:32', '2019-01-02 09:24:32');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-01-02 09:24:34', '2019-01-02 09:24:34');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-01-02 09:24:35', '2019-01-02 09:24:35');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-01-02 09:24:43', '2019-01-02 09:24:43');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:24:56', '2019-01-02 09:24:56');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:24:58', '2019-01-02 09:24:58');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:25:03', '2019-01-02 09:25:03');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:25:09', '2019-01-02 09:25:09');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/comment/1', 'PUT', '127.0.0.1', '{\"oauth_user_id\":\"1\",\"type\":\"on\",\"pid\":\"0\",\"article_id\":\"1\",\"content\":\"\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\\u8bc4\\u8bba\\u7684\\u5185\\u5bb9\",\"status\":\"on\",\"_token\":\"Hj3uOOm5XWUPaOiguBcWQhuQh1sjJLV02fZSZeMw\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin-wy.test\\/admin\\/comment\"}', '2019-01-02 09:25:22', '2019-01-02 09:25:22');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-02 09:25:22', '2019-01-02 09:25:22');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 09:25:30', '2019-01-02 09:25:30');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:41:12', '2019-01-02 09:41:12');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:47:05', '2019-01-02 09:47:05');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:47:07', '2019-01-02 09:47:07');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:47:17', '2019-01-02 09:47:17');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:47:31', '2019-01-02 09:47:31');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:47:32', '2019-01-02 09:47:32');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:47:32', '2019-01-02 09:47:32');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:47:42', '2019-01-02 09:47:42');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:48:47', '2019-01-02 09:48:47');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:49:25', '2019-01-02 09:49:25');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:49:26', '2019-01-02 09:49:26');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:49:26', '2019-01-02 09:49:26');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 09:49:34', '2019-01-02 09:49:34');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 10:01:52', '2019-01-02 10:01:52');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 10:19:00', '2019-01-02 10:19:00');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 10:54:10', '2019-01-02 10:54:10');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 10:54:12', '2019-01-02 10:54:12');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:55:21', '2019-01-02 10:55:21');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:55:42', '2019-01-02 10:55:42');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:00', '2019-01-02 10:56:00');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:02', '2019-01-02 10:56:02');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:02', '2019-01-02 10:56:02');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:03', '2019-01-02 10:56:03');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:04', '2019-01-02 10:56:04');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:05', '2019-01-02 10:56:05');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:05', '2019-01-02 10:56:05');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:06', '2019-01-02 10:56:06');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:07', '2019-01-02 10:56:07');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:08', '2019-01-02 10:56:08');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 10:56:09', '2019-01-02 10:56:09');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:14:59', '2019-01-02 11:14:59');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:18:06', '2019-01-02 11:18:06');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:18:07', '2019-01-02 11:18:07');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:18:08', '2019-01-02 11:18:08');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:18:09', '2019-01-02 11:18:09');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:18:09', '2019-01-02 11:18:09');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:18:10', '2019-01-02 11:18:10');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:18:11', '2019-01-02 11:18:11');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:18:12', '2019-01-02 11:18:12');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:19:29', '2019-01-02 11:19:29');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:19:30', '2019-01-02 11:19:30');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 11:19:49', '2019-01-02 11:19:49');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2019-01-02 11:19:51', '2019-01-02 11:19:51');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2019-01-02 11:19:52', '2019-01-02 11:19:52');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 11:19:53', '2019-01-02 11:19:53');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:52', '2019-01-02 11:33:52');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:53', '2019-01-02 11:33:53');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:54', '2019-01-02 11:33:54');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:55', '2019-01-02 11:33:55');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:56', '2019-01-02 11:33:56');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:56', '2019-01-02 11:33:56');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:56', '2019-01-02 11:33:56');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:56', '2019-01-02 11:33:56');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 11:33:57', '2019-01-02 11:33:57');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 15:10:21', '2019-01-02 15:10:21');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-01-02 15:10:23', '2019-01-02 15:10:23');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:10:25', '2019-01-02 15:10:25');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2019-01-02 15:10:26', '2019-01-02 15:10:26');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:10:31', '2019-01-02 15:10:31');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:26:14', '2019-01-02 15:26:14');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:30:47', '2019-01-02 15:30:47');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:30:49', '2019-01-02 15:30:49');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:31:18', '2019-01-02 15:31:18');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:31:35', '2019-01-02 15:31:35');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:31:36', '2019-01-02 15:31:36');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:32:04', '2019-01-02 15:32:04');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:32:04', '2019-01-02 15:32:04');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:33:59', '2019-01-02 15:33:59');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:00', '2019-01-02 15:34:00');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:01', '2019-01-02 15:34:01');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:01', '2019-01-02 15:34:01');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:34:04', '2019-01-02 15:34:04');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:05', '2019-01-02 15:34:05');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:34:09', '2019-01-02 15:34:09');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:10', '2019-01-02 15:34:10');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:34:11', '2019-01-02 15:34:11');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:34:12', '2019-01-02 15:34:12');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:15', '2019-01-02 15:34:15');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:22', '2019-01-02 15:34:22');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:34:30', '2019-01-02 15:34:30');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:31', '2019-01-02 15:34:31');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:56', '2019-01-02 15:34:56');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:34:58', '2019-01-02 15:34:58');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:35:01', '2019-01-02 15:35:01');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:35:08', '2019-01-02 15:35:08');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:35:09', '2019-01-02 15:35:09');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:35:10', '2019-01-02 15:35:10');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:35:12', '2019-01-02 15:35:12');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:35:15', '2019-01-02 15:35:15');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-02 15:35:35', '2019-01-02 15:35:35');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-02 15:35:37', '2019-01-02 15:35:37');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-02 15:35:38', '2019-01-02 15:35:38');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-02 15:35:39', '2019-01-02 15:35:39');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:35:49', '2019-01-02 15:35:49');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:35:52', '2019-01-02 15:35:52');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:36:28', '2019-01-02 15:36:28');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:45:07', '2019-01-02 15:45:07');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:45:25', '2019-01-02 15:45:25');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:45:26', '2019-01-02 15:45:26');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:45:30', '2019-01-02 15:45:30');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:46:44', '2019-01-02 15:46:44');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:46:45', '2019-01-02 15:46:45');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:46:52', '2019-01-02 15:46:52');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:46:53', '2019-01-02 15:46:53');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:47:10', '2019-01-02 15:47:10');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:47:42', '2019-01-02 15:47:42');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:47:48', '2019-01-02 15:47:48');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:47:52', '2019-01-02 15:47:52');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 15:47:56', '2019-01-02 15:47:56');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:48:05', '2019-01-02 15:48:05');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:48:09', '2019-01-02 15:48:09');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 15:49:05', '2019-01-02 15:49:05');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 16:53:09', '2019-01-02 16:53:09');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 16:54:34', '2019-01-02 16:54:34');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 16:54:36', '2019-01-02 16:54:36');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 16:54:57', '2019-01-02 16:54:57');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 16:55:30', '2019-01-02 16:55:30');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 16:55:31', '2019-01-02 16:55:31');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 16:55:55', '2019-01-02 16:55:55');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 17:00:54', '2019-01-02 17:00:54');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 17:19:04', '2019-01-02 17:19:04');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-02 17:20:23', '2019-01-02 17:20:23');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 17:20:25', '2019-01-02 17:20:25');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 17:20:28', '2019-01-02 17:20:28');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-01-02 17:59:19', '2019-01-02 17:59:19');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-01-02 17:59:21', '2019-01-02 17:59:21');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-03 09:29:28', '2019-01-03 09:29:28');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:29:46', '2019-01-03 09:29:46');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:01', '2019-01-03 09:30:01');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:04', '2019-01-03 09:30:04');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:08', '2019-01-03 09:30:08');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:10', '2019-01-03 09:30:10');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:10', '2019-01-03 09:30:10');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:13', '2019-01-03 09:30:13');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:17', '2019-01-03 09:30:17');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:20', '2019-01-03 09:30:20');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:26', '2019-01-03 09:30:26');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:27', '2019-01-03 09:30:27');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:29', '2019-01-03 09:30:29');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:30:34', '2019-01-03 09:30:34');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2019-01-03 09:31:39', '2019-01-03 09:31:39');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/tag', 'GET', '127.0.0.1', '[]', '2019-01-03 09:31:40', '2019-01-03 09:31:40');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:33:07', '2019-01-03 09:33:07');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:33:13', '2019-01-03 09:33:13');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:33:14', '2019-01-03 09:33:14');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/article/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:33:22', '2019-01-03 09:33:22');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:33:52', '2019-01-03 09:33:52');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/category/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:34:01', '2019-01-03 09:34:01');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:34:08', '2019-01-03 09:34:08');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:34:14', '2019-01-03 09:34:14');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:34:44', '2019-01-03 09:34:44');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:34:46', '2019-01-03 09:34:46');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:34:48', '2019-01-03 09:34:48');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:35:00', '2019-01-03 09:35:00');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:35:03', '2019-01-03 09:35:03');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:35:08', '2019-01-03 09:35:08');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:35:10', '2019-01-03 09:35:10');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:35:12', '2019-01-03 09:35:12');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:35:13', '2019-01-03 09:35:13');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:35:20', '2019-01-03 09:35:20');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 09:38:51', '2019-01-03 09:38:51');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-01-03 10:01:09', '2019-01-03 10:01:09');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-01-03 10:01:20', '2019-01-03 10:01:20');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 10:02:14', '2019-01-03 10:02:14');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 10:02:18', '2019-01-03 10:02:18');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-01-03 10:01:56', '2019-01-03 10:01:56');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-04 09:48:44', '2019-01-04 09:48:44');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 09:48:49', '2019-01-04 09:48:49');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 09:48:57', '2019-01-04 09:48:57');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 09:48:58', '2019-01-04 09:48:58');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 09:49:02', '2019-01-04 09:49:02');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 09:49:03', '2019-01-04 09:49:03');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 09:49:04', '2019-01-04 09:49:04');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 09:49:05', '2019-01-04 09:49:05');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-04 14:33:59', '2019-01-04 14:33:59');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 14:34:03', '2019-01-04 14:34:03');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 14:34:42', '2019-01-04 14:34:42');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 14:34:44', '2019-01-04 14:34:44');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-04 14:51:42', '2019-01-04 14:51:42');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-01-04 16:13:16', '2019-01-04 16:13:16');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-23 09:58:03', '2019-01-23 09:58:03');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:08', '2019-01-23 09:58:08');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:14', '2019-01-23 09:58:14');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:18', '2019-01-23 09:58:18');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:21', '2019-01-23 09:58:21');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:28', '2019-01-23 09:58:28');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:32', '2019-01-23 09:58:32');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:34', '2019-01-23 09:58:34');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:42', '2019-01-23 09:58:42');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:44', '2019-01-23 09:58:44');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 09:58:48', '2019-01-23 09:58:48');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 10:04:09', '2019-01-23 10:04:09');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2019-01-23 10:04:10', '2019-01-23 10:04:10');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2019-01-23 10:04:13', '2019-01-23 10:04:13');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-26 15:11:26', '2019-01-26 15:11:26');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-26 15:15:18', '2019-01-26 15:15:18');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-26 15:15:18', '2019-01-26 15:15:18');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:15:28', '2019-01-26 15:15:28');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:15:33', '2019-01-26 15:15:33');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:15:36', '2019-01-26 15:15:36');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:15:38', '2019-01-26 15:15:38');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":null,\"_token\":\"xoaxeH3VpbrUnH5LBYp1WpnxgYuVP5Y1S4PF3tkr\"}', '2019-01-26 15:15:50', '2019-01-26 15:15:50');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-26 15:19:06', '2019-01-26 15:19:06');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:19:28', '2019-01-26 15:19:28');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-26 15:20:20', '2019-01-26 15:20:20');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:20:23', '2019-01-26 15:20:23');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:20:28', '2019-01-26 15:20:28');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/auth/menu/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"xoaxeH3VpbrUnH5LBYp1WpnxgYuVP5Y1S4PF3tkr\"}', '2019-01-26 15:20:34', '2019-01-26 15:20:34');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:20:35', '2019-01-26 15:20:35');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-26 15:20:37', '2019-01-26 15:20:37');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-26 15:26:37', '2019-01-26 15:26:37');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:26:40', '2019-01-26 15:26:40');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:27:07', '2019-01-26 15:27:07');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:27:09', '2019-01-26 15:27:09');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:27:14', '2019-01-26 15:27:14');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:27:17', '2019-01-26 15:27:17');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:27:56', '2019-01-26 15:27:56');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:28:51', '2019-01-26 15:28:51');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:28:54', '2019-01-26 15:28:54');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:28:57', '2019-01-26 15:28:57');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:28:57', '2019-01-26 15:28:57');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:28:58', '2019-01-26 15:28:58');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:29:22', '2019-01-26 15:29:22');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:29:34', '2019-01-26 15:29:34');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"show tables;\",\"_token\":\"xoaxeH3VpbrUnH5LBYp1WpnxgYuVP5Y1S4PF3tkr\"}', '2019-01-26 15:30:04', '2019-01-26 15:30:04');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-26 15:30:32', '2019-01-26 15:30:32');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-28 11:16:14', '2019-01-28 11:16:14');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:16:24', '2019-01-28 11:16:24');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:16:27', '2019-01-28 11:16:27');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:16:28', '2019-01-28 11:16:28');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:16:30', '2019-01-28 11:16:30');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:16:31', '2019-01-28 11:16:31');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:44:46', '2019-01-28 11:44:46');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-28 11:47:50', '2019-01-28 11:47:50');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-28 11:48:18', '2019-01-28 11:48:18');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-28 11:48:44', '2019-01-28 11:48:44');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-28 11:49:15', '2019-01-28 11:49:15');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:51:35', '2019-01-28 11:51:35');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"show tables;\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 11:51:44', '2019-01-28 11:51:44');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from users;\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 11:53:03', '2019-01-28 11:53:03');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from admin_menu;\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 11:53:23', '2019-01-28 11:53:23');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:55:07', '2019-01-28 11:55:07');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:55:58', '2019-01-28 11:55:58');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:56:00', '2019-01-28 11:56:00');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:56:03', '2019-01-28 11:56:03');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 11:56:05', '2019-01-28 11:56:05');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"route:list<div class=\\\"ripple-container\\\"><div class=\\\"ripple ripple-on\\\" style=\\\"left: 82.3125px; top: 13px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><\\/div>\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 11:56:17', '2019-01-28 11:56:17');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":null,\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 11:56:18', '2019-01-28 11:56:18');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"php artisan -v;\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 12:38:34', '2019-01-28 12:38:34');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"env<div class=\\\"ripple-container\\\"><div class=\\\"ripple ripple-on\\\" style=\\\"left: 58.7813px; top: 18px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><\\/div>\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 12:39:32', '2019-01-28 12:39:32');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"serve<div class=\\\"ripple-container\\\"><div class=\\\"ripple ripple-on\\\" style=\\\"left: 72.7813px; top: 12px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><\\/div>\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 12:39:41', '2019-01-28 12:39:41');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"route:list<div class=\\\"ripple-container\\\"><div class=\\\"ripple ripple-on ripple-out\\\" style=\\\"left: 82.3125px; top: 13px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><div class=\\\"ripple ripple-on ripple-out\\\" style=\\\"left: 100.313px; top: 14px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><div class=\\\"ripple ripple-on\\\" style=\\\"left: 115.313px; top: 10px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><\\/div>\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 12:40:08', '2019-01-28 12:40:08');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"route:list<div class=\\\"ripple-container\\\"><div class=\\\"ripple ripple-on ripple-out\\\" style=\\\"left: 82.3125px; top: 13px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><div class=\\\"ripple ripple-on ripple-out\\\" style=\\\"left: 100.313px; top: 14px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><div class=\\\"ripple ripple-on ripple-out\\\" style=\\\"left: 115.313px; top: 10px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><div class=\\\"ripple ripple-on\\\" style=\\\"left: 36.3125px; top: 10px; background-color: rgb(0, 188, 212); transform: scale(20);\\\"><\\/div><\\/div>\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 12:40:18', '2019-01-28 12:40:18');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"route:list\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 12:40:32', '2019-01-28 12:40:32');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"-v\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 12:40:46', '2019-01-28 12:40:46');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 12:40:58', '2019-01-28 12:40:58');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 12:41:03', '2019-01-28 12:41:03');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 12:41:04', '2019-01-28 12:41:04');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 12:41:05', '2019-01-28 12:41:05');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 12:41:08', '2019-01-28 12:41:08');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 12:41:10', '2019-01-28 12:41:10');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"route:list\",\"_token\":\"Tm3hFEQNsy8ovcUKmKm0tuqUlf67fwLhDzBPTrtw\"}', '2019-01-28 12:41:13', '2019-01-28 12:41:13');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:32:02', '2019-01-29 10:32:02');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 10:32:32', '2019-01-29 10:32:32');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 10:32:33', '2019-01-29 10:32:33');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 10:32:34', '2019-01-29 10:32:34');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:37:27', '2019-01-29 10:37:27');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:38:27', '2019-01-29 10:38:27');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:44:10', '2019-01-29 10:44:10');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:44:22', '2019-01-29 10:44:22');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:44:24', '2019-01-29 10:44:24');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:44:27', '2019-01-29 10:44:27');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:44:33', '2019-01-29 10:44:33');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:44:37', '2019-01-29 10:44:37');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:45:23', '2019-01-29 10:45:23');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:48:00', '2019-01-29 10:48:00');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:48:08', '2019-01-29 10:48:08');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 10:48:14', '2019-01-29 10:48:14');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 10:48:16', '2019-01-29 10:48:16');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:51:44', '2019-01-29 10:51:44');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 10:51:54', '2019-01-29 10:51:54');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 11:03:10', '2019-01-29 11:03:10');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 11:04:36', '2019-01-29 11:04:36');

-- ----------------------------
-- Table structure for admin_permissions
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', 'Admin helpers', 'ext.helpers', null, '/helpers/*', '2019-01-26 15:12:33', '2019-01-26 15:12:33');

-- ----------------------------
-- Table structure for admin_roles
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
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-12-24 11:23:02', '2018-12-24 11:23:02');

-- ----------------------------
-- Table structure for admin_role_menu
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
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
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
-- Table structure for admin_role_users
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
-- Table structure for admin_users
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
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$PnneiuMKSIDvLfLL/Z5y.OKfpZp0Lo6ulLS9blhZ5.3qYcDnomRii', 'Administrator', null, 'M9ojZN9CNZT7xNHwypzR08tySdLuJhomMwUKddQQcQP7uVZlUf9Y1eeSgWsW', '2018-12-24 11:23:02', '2018-12-24 11:23:02');

-- ----------------------------
-- Table structure for admin_user_permissions
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
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章表主键',
  `category_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分类id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作者',
  `markdown` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'markdown文章内容',
  `html` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'markdown转的html页面',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '封面图',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶 1是 0否',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文章表';

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '1', '写给 thinkphp 开发者的 laravel 系列教程 (一) 序言', '王宇', '终于；终于；终于；\r\n开始正式写 laravel 系列了；\r\n本系列教程主要面向的是多少懂点 thinkphp3.X 的开发者们；\r\n我把我从tp3转到laravel的历程转成一篇篇的文章教程；\r\n愿这一系列的文章；\r\n能成为童鞋们踏入laravel的引路人；\r\n\r\n如果还没下定决定要使用laravel；\r\n那么我上来就是一个连接；\r\n[关于 thinkphp 和 laravel 框架的选择](http://baijunyao.com/article/109)\r\n不是别人说好我也跟着说好的；\r\n而是我实实在在的使用过后；\r\n不断的发现 laravel 的优雅；\r\n真心喜欢；才这么推荐的；\r\n\r\n另外学习使用 laravel 不同于 thinkphp；\r\nthinkphp 的问题；百度一下基本都能解决；\r\nlaravel 一定要有一把梯子来翻墙；\r\ngoogle是必不可少的；\r\n现在体会不到没关系；\r\n咱边学边感受；\r\n最近一段时间大批的vpn被关停了；\r\n这里我推荐一款依然坚挺的；\r\n我一直在用的；\r\n也比较喜欢的`免费`翻墙软件；\r\n[推荐开发工具系列之 -- 翻墙软件 lantern](http://baijunyao.com/article/107)\r\n\r\n最后给童鞋们推荐比较不错的国内的laravel网站；\r\n[Laravel China 社区](https://laravel-china.org/)\r\n[Laravel 学院](http://laravelacademy.org/)\r\n[laravel速查表](https://cs.laravel-china.org/)\r\n\r\n种一棵树最好的时间是十年前；其次是现在；\r\n让我们开始吧；\r\n![laravel](/uploads/article/5958ab4dd9db4.jpg \"laravel\")', '终于；终于；终于；\r\n开始正式写 laravel 系列了；\r\n本系列教程主要面向的是多少懂点 thinkphp3.X 的开发者们；\r\n我把我从tp3转到laravel的历程转成一篇篇的文章教程；\r\n愿这一系列的文章；\r\n能成为童鞋们踏入laravel的引路人；\r\n\r\n如果还没下定决定要使用laravel；\r\n那么我上来就是一个连接；\r\n\r\n不是别人说好我也跟着说好的；\r\n而是我实实在在的使用过后；...', '我是描述信息', 'laravel,thinkphp, 教程', 'image/test1.jpg', '0', '504', '2018-12-24 13:57:04', '2018-12-24 15:28:43', null);
INSERT INTO `articles` VALUES ('2', '2', '每年30亿！小微企业融资担保业务将享受降费奖补', '王宇', '​10月25日，财政部、工信部发布《关于对小微企业融资担保业务实施降费奖补政策的通知》，引导地方支持扩大实体经济领域小微企业融资担保业务规模，降低小微企业融资担保成本，促进专注于服务小微企业的融资担保机构可持续发展。\r\n\r\n      通知要求，按照市场主导、政府扶持、结果导向的原则，支持引导更多金融资源配置到小微企业，进一步拓展小微企业融资担保业务规模，降低小微企业融资担保费率水平。\r\n\r\n      中央财政在2018-2020年每年安排资金30亿元，采用奖补结合的方式，对扩大小微企业融资担保业务规模、降低小微企业融资担保费率等政策性引导较强的地方进行奖补。2018年，对全国37个省市（包括省、自治区、直辖市、计划单列市及新疆生产建设兵团，下同）均安排奖补资金。2019年和2020年，对符合一定条件的省市予以奖补。\r\n\r\n      需要强调的是，小微企业是指符合工业和信息化部、国家统计局等部门联合制发的《中小企业划型标准规定》的小型企业、微型企业，不包括房地产行业、金融服务行业和投资（资产）管理类、地方政府投融资平台类、地方国有企业资本运营平台类企业。\r\n\r\n\r\n\r\n      奖补资金有两种分配办法，分别是分档定额奖励和因素法补助。\r\n\r\n根据分档定额奖励，2018年，对东部、中部、西部地区按上一年度新增小微企业年化担保额规模排名分别位于前9名、前7名、前9名，共计25个省市进行定额奖励。奖励标准根据各省市上一年度新增小微企业年化担保额、小微企业年化担保费率分为四档，奖励金额分别为9000万元、7000万元、5000万元以及4000万元。\r\n\r\n      此外，2018年，对全国37个省市（含兵团）安排补助资金。补助资金按因素法分配，以上一年度新增小微企业融资担保额规模为分配因素，兼顾区域协调。区域补助系数根据财政部关于东中西部省份的划分确定。东部补助系数为1，中部补助系数为1.2，西部补助系数为1.6。2019年和2020年，对上一年度小微企业年化担保费率不超过2%的省市继续按因素法分配补助资金。\r\n\r\n通知还要求，奖补资金切块下达到省级财政部门，省级财政部门会同同级中小企业主管部门重点支持政策引导性较强、效果较好的担保机构，特别是对直接服务小微企业且取费较低的担保机构加大奖补力度，充分发挥奖补资金的激励作用，防止对地市或担保机构简单平均分配。', '​10月25日，财政部、工信部发布《关于对小微企业融资担保业务实施降费奖补政策的通知》，引导地方支持扩大实体经济领域小微企业融资担保业务规模，降低小微企业融资担保成本，促进专注于服务小微企业的融资担保机构可持续发展。\r\n\r\n      通知要求，按照市场主导、政府扶持、结果导向的原则，支持引导更多金融资源配置到小微企业，进一步拓展小微企业融资担保业务规模，降低小微企业融资担保费率水平。\r\n\r\n      中央财政在2018-2020年每年安排资金30亿元，采用奖补结合的方式，对扩大小微企业融资担保业务规模、降低小微企业融资担保费率等政策性引导较强的地方进行奖补。2018年，对全国37个省市（包括省、自治区、直辖市、计划单列市及新疆生产建设兵团，下同）均安排奖补资金。2019年和2020年，对符合一定条件的省市予以奖补。\r\n\r\n      需要强调的是，小微企业是指符合工业和信息化部、国家统计局等部门联合制发的《中小企业划型标准规定》的小型企业、微型企业，不包括房地产行业、金融服务行业和投资（资产）管理类、地方政府投融资平台类、地方国有企业资本运营平台类企业。\r\n\r\n\r\n\r\n      奖补资金有两种分配办法，分别是分档定额奖励和因素法补助。\r\n\r\n根据分档定额奖励，2018年，对东部、中部、西部地区按上一年度新增小微企业年化担保额规模排名分别位于前9名、前7名、前9名，共计25个省市进行定额奖励。奖励标准根据各省市上一年度新增小微企业年化担保额、小微企业年化担保费率分为四档，奖励金额分别为9000万元、7000万元、5000万元以及4000万元。\r\n\r\n      此外，2018年，对全国37个省市（含兵团）安排补助资金。补助资金按因素法分配，以上一年度新增小微企业融资担保额规模为分配因素，兼顾区域协调。区域补助系数根据财政部关于东中西部省份的划分确定。东部补助系数为1，中部补助系数为1.2，西部补助系数为1.6。2019年和2020年，对上一年度小微企业年化担保费率不超过2%的省市继续按因素法分配补助资金。\r\n\r\n通知还要求，奖补资金切块下达到省级财政部门，省级财政部门会同同级中小企业主管部门重点支持政策引导性较强、效果较好的担保机构，特别是对直接服务小微企业且取费较低的担保机构加大奖补力度，充分发挥奖补资金的激励作用，防止对地市或担保机构简单平均分配。', '​10月25日，财政部、工信部发布《关于对小微企业融资担保业务实施降费奖补政策的通知》，引导地方支持扩大实体经济领域小微企业融资担保业务规模，降低小微企业融资担保成本，促进专注于服务小微企业的融资担保机构可持续发展。', '财政部,热闻', 'images/微信图片_20181121183812.jpg', '1', '20', '2018-12-24 15:20:38', '2018-12-24 15:20:38', null);

-- ----------------------------
-- Table structure for article_tags
-- ----------------------------
DROP TABLE IF EXISTS `article_tags`;
CREATE TABLE `article_tags` (
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标签id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='关系表：文章 - 标签';

-- ----------------------------
-- Records of article_tags
-- ----------------------------
INSERT INTO `article_tags` VALUES ('1', '1', '2018-12-24 14:05:26', '2018-12-24 14:05:29', null);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类主键id',
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '父级栏目id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文章分类表';

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'php', '程序员', 'php相关的文章', '13', '0', '2018-12-24 14:26:41', '2018-12-28 10:36:51', null);
INSERT INTO `categories` VALUES ('2', 'java', '牛人', 'Java大法好', '1', '0', '2018-12-24 14:27:13', '2018-12-28 11:15:06', null);

-- ----------------------------
-- Table structure for chats
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='闲言碎语表';

-- ----------------------------
-- Records of chats
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `oauth_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论用户id 关联oauth_user表的id',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：文章评论',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `article_id` int(10) unsigned NOT NULL COMMENT '文章id',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL COMMENT '1:已审核 0：未审核',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='评论表';

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', '1', '0', '1', '评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容评论的内容', '1', '2018-12-28 11:42:06', '2019-01-02 09:19:46', null);

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '配置项键名',
  `value` text COLLATE utf8mb4_unicode_ci COMMENT '配置项键值 1表示开启 0 关闭',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='配置表';

-- ----------------------------
-- Records of configs
-- ----------------------------

-- ----------------------------
-- Table structure for consoles
-- ----------------------------
DROP TABLE IF EXISTS `consoles`;
CREATE TABLE `consoles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='日志表';

-- ----------------------------
-- Records of consoles
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for friendship_links
-- ----------------------------
DROP TABLE IF EXISTS `friendship_links`;
CREATE TABLE `friendship_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接名',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` tinyint(1) DEFAULT '1' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='友情链接表';

-- ----------------------------
-- Records of friendship_links
-- ----------------------------

-- ----------------------------
-- Table structure for git_projects
-- ----------------------------
DROP TABLE IF EXISTS `git_projects`;
CREATE TABLE `git_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目主键',
  `sort` tinyint(4) NOT NULL DEFAULT '1' COMMENT '排序',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:github 2:gitee',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '项目名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='项目表';

-- ----------------------------
-- Records of git_projects
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2018_12_23_170517_create_article_tags_table', '1');
INSERT INTO `migrations` VALUES ('5', '2018_12_23_170620_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('6', '2018_12_23_170656_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('7', '2018_12_23_170753_create_chats_table', '1');
INSERT INTO `migrations` VALUES ('8', '2018_12_23_170953_create_comments_table', '1');
INSERT INTO `migrations` VALUES ('9', '2018_12_23_171018_create_configs_table', '1');
INSERT INTO `migrations` VALUES ('10', '2018_12_23_171344_create_consoles_table', '1');
INSERT INTO `migrations` VALUES ('11', '2018_12_23_171422_create_friend_ship_links_table', '1');
INSERT INTO `migrations` VALUES ('12', '2018_12_23_171449_create_git_projects_table', '1');
INSERT INTO `migrations` VALUES ('13', '2018_12_23_171506_create_navs_table', '1');
INSERT INTO `migrations` VALUES ('14', '2018_12_23_171529_create_oauth_users_table', '1');
INSERT INTO `migrations` VALUES ('15', '2018_12_23_171547_create_sites_table', '1');
INSERT INTO `migrations` VALUES ('16', '2018_12_23_171625_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('17', '2018_12_23_172452_create_jobs_table', '1');
INSERT INTO `migrations` VALUES ('18', '2018_12_23_172551_create_failed_jobs_table', '1');

-- ----------------------------
-- Table structure for navs
-- ----------------------------
DROP TABLE IF EXISTS `navs`;
CREATE TABLE `navs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  `sort` tinyint(4) NOT NULL DEFAULT '1' COMMENT '排序',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单表';

-- ----------------------------
-- Records of navs
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_users
-- ----------------------------
DROP TABLE IF EXISTS `oauth_users`;
CREATE TABLE `oauth_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型 1：QQ  2：新浪微博 3：github',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `openid` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'access_token token',
  `last_login_ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_users
-- ----------------------------
INSERT INTO `oauth_users` VALUES ('1', '1', 'Savory', '', '5565555', '223356', '192.168.1.196', '55', '8wy701645@163.com', '0', '55566623', '2019-01-02 15:21:22', '2019-01-02 15:21:26', null);

-- ----------------------------
-- Table structure for password_resets
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
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '第三方用户id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '网站名',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '网站链接',
  `audit` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态1为通过审核',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='推荐博客(审核)表';

-- ----------------------------
-- Records of sites
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签主键',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='标签表';

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'Laravel', '2018-12-24 14:06:03', '2018-12-24 14:06:06', null);
INSERT INTO `tags` VALUES ('2', 'Java', '2018-12-24 14:06:14', '2018-12-24 14:06:16', null);
INSERT INTO `tags` VALUES ('3', 'PHP', '2018-12-24 14:06:27', '2018-12-24 14:06:29', null);
INSERT INTO `tags` VALUES ('4', 'Python', '2018-12-28 11:33:25', '2018-12-28 11:34:06', null);

-- ----------------------------
-- Table structure for users
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
