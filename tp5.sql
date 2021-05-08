/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : tp5

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-02-07 17:28:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_action
-- ----------------------------
DROP TABLE IF EXISTS `admin_action`;
CREATE TABLE `admin_action` (
  `aa_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aa_table_name` varchar(10) NOT NULL DEFAULT '' COMMENT '中文表名',
  `aa_action` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '操作 0查看 1新增 2修改 3删除',
  `aa_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '普通用户操作',
  `aa_admin_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '后台管理员UID',
  `aa_ip` char(15) NOT NULL DEFAULT '',
  `aa_data` text NOT NULL COMMENT '操作数据 json',
  `aa_update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `aa_create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `aa_delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`aa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COMMENT='管理员操作表';

-- ----------------------------
-- Records of admin_action
-- ----------------------------
INSERT INTO `admin_action` VALUES ('1', '后台模块表', '3', '0', '0', '127.0.0.1', '{\"id\":1,\"model_name\":\"\\u9996\\u9875\",\"model_icon\":\"fa-home\",\"model_disp\":0,\"page_name\":\"\\u9996\\u9875\",\"page_icon\":\"fa-home\",\"page_disp\":1,\"page_url\":\"Index\\/index\",\"hidden\":0,\"intro\":\"\\u9996\\u9875\",\"delete_time\":null,\"update_user\":0,\"update_time\":\"2020-07-09 12:23:43\",\"create_user\":0,\"create_time\":\"2020-01-01 00:00:00\"}', '1610792060', '1610792060', null);
INSERT INTO `admin_action` VALUES ('2', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610792416', '1610792416', null);
INSERT INTO `admin_action` VALUES ('3', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"2\",\"hidden\":\"0\"}', '1610792482', '1610792482', null);
INSERT INTO `admin_action` VALUES ('4', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"3\",\"hidden\":\"0\"}', '1610792494', '1610792494', null);
INSERT INTO `admin_action` VALUES ('5', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610792578', '1610792578', null);
INSERT INTO `admin_action` VALUES ('6', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610792584', '1610792584', null);
INSERT INTO `admin_action` VALUES ('7', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610792594', '1610792594', null);
INSERT INTO `admin_action` VALUES ('8', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610792611', '1610792611', null);
INSERT INTO `admin_action` VALUES ('9', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610792621', '1610792621', null);
INSERT INTO `admin_action` VALUES ('10', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610792669', '1610792669', null);
INSERT INTO `admin_action` VALUES ('11', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610792672', '1610792672', null);
INSERT INTO `admin_action` VALUES ('12', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610792677', '1610792677', null);
INSERT INTO `admin_action` VALUES ('13', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"2\",\"hidden\":\"1\"}', '1610792678', '1610792678', null);
INSERT INTO `admin_action` VALUES ('14', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"3\",\"hidden\":\"1\"}', '1610792679', '1610792679', null);
INSERT INTO `admin_action` VALUES ('15', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"4\",\"hidden\":\"1\"}', '1610792679', '1610792679', null);
INSERT INTO `admin_action` VALUES ('16', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"hidden\":\"1\"}', '1610792680', '1610792680', null);
INSERT INTO `admin_action` VALUES ('17', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"hidden\":\"0\"}', '1610792681', '1610792681', null);
INSERT INTO `admin_action` VALUES ('18', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"4\",\"hidden\":\"0\"}', '1610792682', '1610792682', null);
INSERT INTO `admin_action` VALUES ('19', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"3\",\"hidden\":\"0\"}', '1610792682', '1610792682', null);
INSERT INTO `admin_action` VALUES ('20', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"2\",\"hidden\":\"0\"}', '1610792683', '1610792683', null);
INSERT INTO `admin_action` VALUES ('21', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"2\",\"hidden\":\"1\"}', '1610792690', '1610792690', null);
INSERT INTO `admin_action` VALUES ('22', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"2\",\"hidden\":\"0\"}', '1610792694', '1610792694', null);
INSERT INTO `admin_action` VALUES ('23', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"10\",\"hidden\":\"0\"}', '1610792722', '1610792722', null);
INSERT INTO `admin_action` VALUES ('24', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"6\",\"hidden\":\"0\"}', '1610792723', '1610792723', null);
INSERT INTO `admin_action` VALUES ('25', '后台模块表', '3', '0', '0', '127.0.0.1', '{\"id\":1,\"model_name\":\"\\u9996\\u9875\",\"model_icon\":\"fa-home\",\"model_disp\":0,\"page_name\":\"\\u9996\\u9875\",\"page_icon\":\"fa-home\",\"page_disp\":1,\"page_url\":\"Index\\/index\",\"hidden\":0,\"intro\":\"\\u9996\\u9875\",\"delete_time\":null,\"update_user\":0,\"update_time\":\"2021-01-16 18:24:37\",\"create_user\":0,\"create_time\":\"2020-01-01 00:00:00\"}', '1610792740', '1610792740', null);
INSERT INTO `admin_action` VALUES ('26', '后台模块表', '3', '0', '0', '127.0.0.1', '{\"id\":3,\"model_name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"model_icon\":\"fa-book\",\"model_disp\":97,\"page_name\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"page_icon\":\"fa-book\",\"page_disp\":2,\"page_url\":\"Access\\/roleList\",\"hidden\":0,\"intro\":\"\\u89d2\\u8272\\u76f4\\u63a5\\u4e0e\\u7528\\u6237\\u7684\\u6743\\u9650\\u6302\\u94a9\\uff0c\\u6743\\u9650\\u8bbe\\u7f6e\\u5728\\u89d2\\u8272\\u4e4b\\u4e0a\",\"delete_time\":null,\"update_user\":0,\"update_time\":\"2021-01-16 18:24:42\",\"create_user\":0,\"create_time\":\"2020-01-01 00:00:00\"}', '1610792740', '1610792740', null);
INSERT INTO `admin_action` VALUES ('27', '后台模块表', '3', '0', '0', '127.0.0.1', '{\"id\":4,\"model_name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"model_icon\":\"fa-book\",\"model_disp\":97,\"page_name\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"page_icon\":\"fa-book\",\"page_disp\":3,\"page_url\":\"Access\\/adminList\",\"hidden\":0,\"intro\":\"\\u540e\\u53f0\\u7528\\u6237\\u7ba1\\u7406\",\"delete_time\":null,\"update_user\":0,\"update_time\":\"2021-01-16 18:24:42\",\"create_user\":0,\"create_time\":\"2020-01-01 00:00:00\"}', '1610792740', '1610792740', null);
INSERT INTO `admin_action` VALUES ('28', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931263', '1610931263', null);
INSERT INTO `admin_action` VALUES ('29', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931263', '1610931263', null);
INSERT INTO `admin_action` VALUES ('30', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931264', '1610931264', null);
INSERT INTO `admin_action` VALUES ('31', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931264', '1610931264', null);
INSERT INTO `admin_action` VALUES ('32', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931265', '1610931265', null);
INSERT INTO `admin_action` VALUES ('33', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931265', '1610931265', null);
INSERT INTO `admin_action` VALUES ('34', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931265', '1610931265', null);
INSERT INTO `admin_action` VALUES ('35', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931265', '1610931265', null);
INSERT INTO `admin_action` VALUES ('36', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931265', '1610931265', null);
INSERT INTO `admin_action` VALUES ('37', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931266', '1610931266', null);
INSERT INTO `admin_action` VALUES ('38', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931266', '1610931266', null);
INSERT INTO `admin_action` VALUES ('39', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931266', '1610931266', null);
INSERT INTO `admin_action` VALUES ('40', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931267', '1610931267', null);
INSERT INTO `admin_action` VALUES ('41', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931267', '1610931267', null);
INSERT INTO `admin_action` VALUES ('42', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931267', '1610931267', null);
INSERT INTO `admin_action` VALUES ('43', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931267', '1610931267', null);
INSERT INTO `admin_action` VALUES ('44', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"1\"}', '1610931268', '1610931268', null);
INSERT INTO `admin_action` VALUES ('45', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"hidden\":\"0\"}', '1610931268', '1610931268', null);
INSERT INTO `admin_action` VALUES ('46', '后台模块表', '1', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875sss\",\"create_time\":\"2021-01-18 18:21:57\",\"update_time\":\"2021-01-18 18:21:57\"}', '1610965317', '1610965317', null);
INSERT INTO `admin_action` VALUES ('47', '后台模块表', '1', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875sss\",\"create_time\":\"2021-01-18 18:22:47\",\"update_time\":\"2021-01-18 18:22:47\"}', '1610965367', '1610965367', null);
INSERT INTO `admin_action` VALUES ('48', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875sss\"}', '1610965383', '1610965383', null);
INSERT INTO `admin_action` VALUES ('49', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875ss\"}', '1610965388', '1610965388', null);
INSERT INTO `admin_action` VALUES ('50', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875\"}', '1610965402', '1610965402', null);
INSERT INTO `admin_action` VALUES ('51', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875\"}', '1610965789', '1610965789', null);
INSERT INTO `admin_action` VALUES ('52', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875\"}', '1610965796', '1610965796', null);
INSERT INTO `admin_action` VALUES ('53', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875\"}', '1610966153', '1610966153', null);
INSERT INTO `admin_action` VALUES ('54', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875\",\"hidden\":\"0\"}', '1610966191', '1610966191', null);
INSERT INTO `admin_action` VALUES ('55', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"intro\":\"\\u9996\\u9875\",\"hidden\":\"0\"}', '1610966202', '1610966202', null);
INSERT INTO `admin_action` VALUES ('56', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"hidden\":\"0\",\"intro\":\"\\u9996\\u9875\"}', '1610966209', '1610966209', null);
INSERT INTO `admin_action` VALUES ('57', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"8\",\"model_name\":\"\\u4e0a\\u4f20\\u6a21\\u5757\",\"model_disp\":\"99\",\"page_name\":\"\\u56fe\\u7247\\u4e0a\\u4f20\",\"page_disp\":\"1\",\"page_url\":\"Uploads\\/editorList\",\"hidden\":\"0\",\"intro\":\"\\u7f16\\u8f91\\u5668\\u4e0a\\u4f20\\u56fe\\u7247\\u7684\\u6743\\u9650\\uff0c\\u65e0\\u6743\\u9650\\u4e0d\\u53ef\\u8fdb\\u884c\\u4e0a\\u4f20\"}', '1610966681', '1610966681', null);
INSERT INTO `admin_action` VALUES ('58', '后台模块表', '2', '0', '0', '127.0.0.1', '{\"id\":\"8\",\"model_name\":\"\\u4e0a\\u4f20\\u6a21\\u5757\",\"model_disp\":\"99\",\"page_name\":\"\\u56fe\\u7247\\u4e0a\\u4f20\",\"page_disp\":\"1\",\"page_url\":\"Uploads\\/editorList\",\"intro\":\"\\u7f16\\u8f91\\u5668\\u4e0a\\u4f20\\u56fe\\u7247\\u7684\\u6743\\u9650\\uff0c\\u65e0\\u6743\\u9650\\u4e0d\\u53ef\\u8fdb\\u884c\\u4e0a\\u4f20\",\"hidden\":\"1\"}', '1610966688', '1610966688', null);
INSERT INTO `admin_action` VALUES ('59', '用户角色表', '3', '0', '0', '127.0.0.1', '{\"id\":1,\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"access\":\"1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229\",\"create_time\":\"2020-01-01 00:00:00\",\"update_time\":\"2020-12-29 18:30:29\",\"delete_time\":null}', '1611023085', '1611023085', null);
INSERT INTO `admin_action` VALUES ('60', '用户角色表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"access\":\"1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229111\",\"hidden\":\"1\"}', '1611023633', '1611023633', null);
INSERT INTO `admin_action` VALUES ('61', '用户角色表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"access\":\"1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229\",\"hidden\":\"1\"}', '1611023637', '1611023637', null);
INSERT INTO `admin_action` VALUES ('62', '用户角色表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"layuiTreeCheck_F0\":\"F0\",\"layuiTreeCheck_1\":\"1\",\"layuiTreeCheck_F2\":\"F2\",\"layuiTreeCheck_12\":\"12\",\"layuiTreeCheck_25\":\"25\",\"layuiTreeCheck_F3\":\"F3\",\"layuiTreeCheck_22\":\"22\",\"layuiTreeCheck_24\":\"24\",\"layuiTreeCheck_F4\":\"F4\",\"layuiTreeCheck_14\":\"14\",\"layuiTreeCheck_13\":\"13\",\"layuiTreeCheck_15\":\"15\",\"layuiTreeCheck_16\":\"16\",\"layuiTreeCheck_17\":\"17\",\"layuiTreeCheck_F5\":\"F5\",\"layuiTreeCheck_19\":\"19\",\"layuiTreeCheck_20\":\"20\",\"layuiTreeCheck_F6\":\"F6\",\"layuiTreeCheck_18\":\"18\",\"layuiTreeCheck_F7\":\"F7\",\"layuiTreeCheck_27\":\"27\",\"layuiTreeCheck_26\":\"26\",\"layuiTreeCheck_F8\":\"F8\",\"layuiTreeCheck_2\":\"2\",\"layuiTreeCheck_3\":\"3\",\"layuiTreeCheck_5\":\"5\",\"layuiTreeCheck_6\":\"6\",\"layuiTreeCheck_F9\":\"F9\",\"layuiTreeCheck_7\":\"7\",\"layuiTreeCheck_10\":\"10\",\"layuiTreeCheck_11\":\"11\",\"layuiTreeCheck_F10\":\"F10\",\"layuiTreeCheck_8\":\"8\",\"access\":\"1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229\",\"hidden\":\"1\"}', '1611028603', '1611028603', null);
INSERT INTO `admin_action` VALUES ('63', '用户角色表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"access\":\"1,12,25,22,24,14,13,15,16,17,19,20,18,27,26,2,3,5,6,7,10,11,8\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229\"}', '1611028715', '1611028715', null);
INSERT INTO `admin_action` VALUES ('64', '用户角色表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"access\":\"1,2,3,5,6,7,10,11,8\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229\"}', '1611028728', '1611028728', null);
INSERT INTO `admin_action` VALUES ('65', '用户角色表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"access\":\"1,9,21,23,12,25,22,24,14,13,15,16,17,19,20,18,27,26,2,3,5,6,7,10,11,8\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229\"}', '1611028744', '1611028744', null);
INSERT INTO `admin_action` VALUES ('66', '用户角色表', '1', '0', '0', '127.0.0.1', '{\"name\":\"\\u7ba1\\u7406\\u5458\",\"access\":\"1,9,21,23,5,8\",\"intro\":\"\\u4f1a\\u5458\\u7ba1\\u7406\\u5458\",\"create_time\":\"2021-01-19 11:59:38\",\"update_time\":\"2021-01-19 11:59:38\"}', '1611028778', '1611028778', null);
INSERT INTO `admin_action` VALUES ('67', '用户角色表', '3', '0', '0', '127.0.0.1', '{\"id\":2,\"name\":\"\\u7ba1\\u7406\\u5458\",\"access\":\"1,9,21,23,5,8\",\"intro\":\"\\u4f1a\\u5458\\u7ba1\\u7406\\u5458\",\"create_time\":\"2021-01-19 11:59:38\",\"update_time\":\"2021-01-19 11:59:38\",\"delete_time\":null}', '1611028790', '1611028790', null);
INSERT INTO `admin_action` VALUES ('68', '用户角色表', '3', '0', '0', '127.0.0.1', '{\"id\":2,\"name\":\"\\u7ba1\\u7406\\u5458\",\"access\":\"1,9,21,23,5,8\",\"intro\":\"\\u4f1a\\u5458\\u7ba1\\u7406\\u5458\",\"create_time\":\"2021-01-19 11:59:38\",\"update_time\":\"2021-01-19 11:59:50\",\"delete_time\":null}', '1611028805', '1611028805', null);
INSERT INTO `admin_action` VALUES ('69', '用户角色表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"access\":\"1,9,21,23,12,25,22,24,14,13,15,16,17,19,20,18,27,26,2,3,4,5,6,7,10,11,8\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229\"}', '1611034908', '1611034908', null);
INSERT INTO `admin_action` VALUES ('70', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611036569.483\"}', '1611036569', '1611036569', null);
INSERT INTO `admin_action` VALUES ('71', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611036569', '1611036569', null);
INSERT INTO `admin_action` VALUES ('72', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611036572.778\"}', '1611036572', '1611036572', null);
INSERT INTO `admin_action` VALUES ('73', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611036581', '1611036581', null);
INSERT INTO `admin_action` VALUES ('74', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611036584.01\"}', '1611036584', '1611036584', null);
INSERT INTO `admin_action` VALUES ('75', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611036605', '1611036605', null);
INSERT INTO `admin_action` VALUES ('76', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611036756.867\"}', '1611036756', '1611036756', null);
INSERT INTO `admin_action` VALUES ('77', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611036758', '1611036758', null);
INSERT INTO `admin_action` VALUES ('78', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611036766.387\"}', '1611036766', '1611036766', null);
INSERT INTO `admin_action` VALUES ('79', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611036767', '1611036767', null);
INSERT INTO `admin_action` VALUES ('80', '后台用户表', '1', '0', '0', '127.0.0.1', '{\"name\":\"admin1\",\"nick_name\":\"admin1\",\"password\":\"$2y$10$fXKeFzE2yc8J.ruAW8Sc2.FGy1QuFGNHd40y4UzdOa.QTS3mLqOcO\",\"password2\":\"admin888...\",\"ar_id\":\"1\",\"phone\":\"13333333333\",\"email\":\"123@qq.com\",\"intro\":\"\",\"create_time\":\"2021-01-19 14:29:05\",\"update_time\":\"2021-01-19 14:29:05\"}', '1611037745', '1611037745', null);
INSERT INTO `admin_action` VALUES ('81', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"name\":\"admin1\",\"nick_name\":\"admin1\",\"password\":\"$2y$10$5Q3JeMr9HfjxaAQ.iHKrLetRq5vZ1XPK9omuo4.Gycg7rS1W5x\\/wi\",\"password2\":\"admin888...\",\"ar_id\":\"2\",\"phone\":\"13333333333\",\"email\":\"123@qq.com\",\"intro\":\"\"}', '1611037919', '1611037919', null);
INSERT INTO `admin_action` VALUES ('82', '后台用户表', '1', '0', '0', '127.0.0.1', '{\"name\":\"admin2\",\"nick_name\":\"admin2\",\"password\":\"$2y$10$Kin9CDsx9hqR0tz7jytqsul1YO0eUm6YUeT8GzznEt4C10iLIvzgS\",\"password2\":\"admin888...\",\"ar_id\":\"2\",\"phone\":\"13333333332\",\"email\":\"122@qq.com\",\"intro\":\"sdfsdf\",\"create_time\":\"2021-01-19 14:34:56\",\"update_time\":\"2021-01-19 14:34:56\"}', '1611038096', '1611038096', null);
INSERT INTO `admin_action` VALUES ('83', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"is_frozen\":\"1611038228\"}', '1611038365', '1611038365', null);
INSERT INTO `admin_action` VALUES ('84', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"6\",\"is_frozen\":\"1611038228\"}', '1611038365', '1611038365', null);
INSERT INTO `admin_action` VALUES ('85', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611038376.588\"}', '1611038376', '1611038376', null);
INSERT INTO `admin_action` VALUES ('86', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611038377', '1611038377', null);
INSERT INTO `admin_action` VALUES ('87', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611038377.458\"}', '1611038377', '1611038377', null);
INSERT INTO `admin_action` VALUES ('88', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611038377', '1611038377', null);
INSERT INTO `admin_action` VALUES ('89', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611038378.027\"}', '1611038378', '1611038378', null);
INSERT INTO `admin_action` VALUES ('90', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611038378', '1611038378', null);
INSERT INTO `admin_action` VALUES ('91', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611038378.738\"}', '1611038378', '1611038378', null);
INSERT INTO `admin_action` VALUES ('92', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611038378', '1611038378', null);
INSERT INTO `admin_action` VALUES ('93', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611038379.435\"}', '1611038379', '1611038379', null);
INSERT INTO `admin_action` VALUES ('94', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611038379', '1611038379', null);
INSERT INTO `admin_action` VALUES ('95', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611038380.258\"}', '1611038380', '1611038380', null);
INSERT INTO `admin_action` VALUES ('96', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611038380', '1611038380', null);
INSERT INTO `admin_action` VALUES ('97', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"1611038380.922\"}', '1611038380', '1611038380', null);
INSERT INTO `admin_action` VALUES ('98', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"1\",\"is_frozen\":\"0\"}', '1611038381', '1611038381', null);
INSERT INTO `admin_action` VALUES ('99', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"is_frozen\":\"0\"}', '1611038429', '1611038429', null);
INSERT INTO `admin_action` VALUES ('100', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"is_frozen\":\"1611038430.354\"}', '1611038430', '1611038430', null);
INSERT INTO `admin_action` VALUES ('101', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"is_frozen\":\"1611038470\"}', '1611038471', '1611038471', null);
INSERT INTO `admin_action` VALUES ('102', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"6\",\"is_frozen\":\"1611038470\"}', '1611038471', '1611038471', null);
INSERT INTO `admin_action` VALUES ('103', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"is_frozen\":\"0\"}', '1611038586', '1611038586', null);
INSERT INTO `admin_action` VALUES ('104', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"6\",\"is_frozen\":\"0\"}', '1611038586', '1611038586', null);
INSERT INTO `admin_action` VALUES ('105', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"id\":\"5\",\"is_frozen\":\"1611038588.756\"}', '1611038588', '1611038588', null);
INSERT INTO `admin_action` VALUES ('106', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"password\":\"$2y$10$fThGtQXxBaM.QclU5.xcOekHKTaBuccRZa9eL1PopHugAHP0iVkgW\"}', '1611039934', '1611039934', null);
INSERT INTO `admin_action` VALUES ('107', '后台用户表', '2', '0', '0', '127.0.0.1', '{\"password\":\"$2y$10$XPu0e\\/pfDmNbSI10HCYo..\\/Qnc3S\\/1kao7Ct6tVL0HDe4pCzBw\\/tO\"}', '1611040512', '1611040512', null);
INSERT INTO `admin_action` VALUES ('108', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611115360', '1611115360', null);
INSERT INTO `admin_action` VALUES ('109', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611115440', '1611115440', null);
INSERT INTO `admin_action` VALUES ('110', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611115486', '1611115486', null);
INSERT INTO `admin_action` VALUES ('111', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611115762', '1611115762', null);
INSERT INTO `admin_action` VALUES ('112', '后台用户表', '2', '0', '1', '127.0.0.1', '{\"password\":\"$2y$10$fupOfEyfv\\/3kU8dI0kwGv.KJJC9F8D.P2q2mX5hOMOts5ISAeFPUe\"}', '1611115791', '1611115791', null);
INSERT INTO `admin_action` VALUES ('113', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611115813', '1611115813', null);
INSERT INTO `admin_action` VALUES ('114', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611115822', '1611115822', null);
INSERT INTO `admin_action` VALUES ('115', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611115863', '1611115863', null);
INSERT INTO `admin_action` VALUES ('116', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611115882', '1611115882', null);
INSERT INTO `admin_action` VALUES ('117', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_icon\":\"layui-icon-template-1\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"hidden\":\"0\",\"intro\":\"\\u9996\\u9875\"}', '1611123022', '1611123022', null);
INSERT INTO `admin_action` VALUES ('118', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_icon\":\"layui-icon-template-1\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"hidden\":\"0\",\"intro\":\"\\u9996\\u9875\"}', '1611123024', '1611123024', null);
INSERT INTO `admin_action` VALUES ('119', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_icon\":\"layui-icon-template-1\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"hidden\":\"0\",\"intro\":\"\\u9996\\u9875\"}', '1611123057', '1611123057', null);
INSERT INTO `admin_action` VALUES ('120', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"model_name\":\"\\u9996\\u9875\",\"model_icon\":\"layui-icon-home\",\"model_disp\":\"0\",\"page_name\":\"\\u9996\\u9875\",\"page_disp\":\"1\",\"page_url\":\"Index\\/index\",\"hidden\":\"0\",\"intro\":\"\\u9996\\u9875\"}', '1611126671', '1611126671', null);
INSERT INTO `admin_action` VALUES ('121', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"9\",\"model_name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-user\",\"model_disp\":\"1\",\"page_name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"page_disp\":\"1\",\"page_url\":\"User\\/userList\",\"hidden\":\"0\",\"intro\":\"\\u7cfb\\u7edf\\u6240\\u6709\\u7684\\u4f1a\\u5458\\u90fd\\u5728\\u8fd9\\u91cc\\u5662\"}', '1611126710', '1611126710', null);
INSERT INTO `admin_action` VALUES ('122', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"7\",\"model_name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-set\",\"model_disp\":\"98\",\"page_name\":\"\\u7f51\\u7ad9\\u914d\\u7f6e\",\"page_disp\":\"2\",\"page_url\":\"System\\/configList\",\"hidden\":\"0\",\"intro\":\"\\u7cfb\\u7edf\\u7684\\u53c2\\u6570\\u914d\\u7f6e\"}', '1611126768', '1611126768', null);
INSERT INTO `admin_action` VALUES ('123', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"2\",\"model_name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-app\",\"model_disp\":\"97\",\"page_name\":\"\\u6a21\\u5757\\u7ba1\\u7406\",\"page_disp\":\"1\",\"page_url\":\"Access\\/moduleList\",\"hidden\":\"0\",\"intro\":\"\\u7cfb\\u7edf\\u6240\\u6709\\u7684\\u6a21\\u5757\\u7ba1\\u7406\"}', '1611127832', '1611127832', null);
INSERT INTO `admin_action` VALUES ('124', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"19\",\"model_name\":\"\\u516c\\u544a\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-notice\",\"model_disp\":\"8\",\"page_name\":\"\\u9759\\u6001\\u9875\\u7ba1\\u7406\",\"page_disp\":\"1\",\"page_url\":\"News\\/staticList\",\"hidden\":\"0\",\"intro\":\"\\u7cfb\\u7edf\\u7684\\u4e00\\u4e9b\\u9759\\u6001\\u9875\"}', '1611128447', '1611128447', null);
INSERT INTO `admin_action` VALUES ('125', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"20\",\"model_name\":\"\\u516c\\u544a\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-notice\",\"model_disp\":\"8\",\"page_name\":\"\\u6dfb\\u52a0\\/\\u4fee\\u6539\\u9759\\u6001\\u9875\",\"page_disp\":\"1\",\"page_url\":\"News\\/addStatic\",\"hidden\":\"0\",\"intro\":\"\\u6dfb\\u52a0\\/\\u4fee\\u6539\\u9759\\u6001\\u9875\"}', '1611128496', '1611128496', null);
INSERT INTO `admin_action` VALUES ('126', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"13\",\"model_name\":\"\\u516c\\u544a\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-notice\",\"model_disp\":\"8\",\"page_name\":\"\\u516c\\u544a\\u7ba1\\u7406\",\"page_disp\":\"2\",\"page_url\":\"News\\/noticeList\",\"hidden\":\"0\",\"intro\":\"\\u7cfb\\u7edf\\u901a\\u544a\\u7ba1\\u7406\"}', '1611128547', '1611128547', null);
INSERT INTO `admin_action` VALUES ('127', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"14\",\"model_name\":\"\\u516c\\u544a\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-notice\",\"model_disp\":\"8\",\"page_name\":\"\\u6dfb\\u52a0\\/\\u4fee\\u6539\\u516c\\u544a\",\"page_disp\":\"3\",\"page_url\":\"News\\/addNotice\",\"hidden\":\"0\",\"intro\":\"\\u6dfb\\u52a0\\/\\u4fee\\u6539\\u516c\\u544a\"}', '1611128597', '1611128597', null);
INSERT INTO `admin_action` VALUES ('128', '静态页表', '2', '0', '1', '127.0.0.1', '{\"title\":\"asdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"adf\",\"content\":\"asdf\"}', '1611130724', '1611130724', null);
INSERT INTO `admin_action` VALUES ('129', '静态页表', '2', '0', '1', '127.0.0.1', '{\"title\":\"asdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"adf\",\"content\":\"asdf\"}', '1611130729', '1611130729', null);
INSERT INTO `admin_action` VALUES ('130', '静态页表', '1', '0', '1', '127.0.0.1', '{\"title\":\"asdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"asdfa\",\"content\":\"sdf\",\"create_time\":\"2021-01-20 16:19:17\",\"update_time\":\"2021-01-20 16:19:17\"}', '1611130757', '1611130757', null);
INSERT INTO `admin_action` VALUES ('131', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"asdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"asdfa\",\"content\":\"sdfsdfsdf<span style=\\\"color:#FF0000;\\\">sssss<\\/span>\"}', '1611131029', '1611131029', null);
INSERT INTO `admin_action` VALUES ('132', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"asdf\",\"type\":\"\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"intro\":\"asdfa\",\"content\":\"sdfsdfsdf<span style=\\\"color:#FF0000;\\\">sssss<\\/span>\"}', '1611131448', '1611131448', null);
INSERT INTO `admin_action` VALUES ('133', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>\\u00a0 \\u00a0 \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><img src=\\\"http:\\/\\/www.tp5.com\\/uploads\\/img\\/20210120\\/d6858a81f5127a1bd873f2803622c7db.jpg\\\" alt=\\\"undefined\\\" \\/><\\/p>\",\"file\":\"\"}', '1611132361', '1611132361', null);
INSERT INTO `admin_action` VALUES ('134', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>\\u00a0 \\u00a0 \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><img src=\\\"http:\\/\\/www.tp5.com\\/uploads\\/img\\/20210120\\/d6858a81f5127a1bd873f2803622c7db.jpg\\\" alt=\\\"undefined\\\" \\/><\\/p>\",\"file\":\"\"}', '1611132860', '1611132860', null);
INSERT INTO `admin_action` VALUES ('135', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>\\u00a0 \\u00a0 \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><img src=\\\"http:\\/\\/www.tp5.com\\/uploads\\/img\\/20210120\\/d6858a81f5127a1bd873f2803622c7db.jpg\\\" alt=\\\"undefined\\\" \\/><\\/p>\",\"file\":\"\"}', '1611132891', '1611132891', null);
INSERT INTO `admin_action` VALUES ('136', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>\\u00a0 \\u00a0 \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><img src=\\\"http:\\/\\/www.tp5.com\\/uploads\\/img\\/20210120\\/d6858a81f5127a1bd873f2803622c7db.jpg\\\" alt=\\\"undefined\\\" \\/><\\/p>\",\"file\":\"\"}', '1611132921', '1611132921', null);
INSERT INTO `admin_action` VALUES ('137', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>\\u00a0 \\u00a0 \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><img src=\\\"http:\\/\\/www.tp5.com\\/uploads\\/img\\/20210120\\/d6858a81f5127a1bd873f2803622c7db.jpg\\\" alt=\\\"undefined\\\" \\/><\\/p>\",\"file\":\"\"}', '1611132933', '1611132933', null);
INSERT INTO `admin_action` VALUES ('138', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>\\u00a0 \\u00a0 \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><img src=\\\"http:\\/\\/www.tp5.com\\/uploads\\/img\\/20210120\\/d6858a81f5127a1bd873f2803622c7db.jpg\\\" alt=\\\"undefined\\\" \\/><\\/p>\",\"file\":\"\"}', '1611132967', '1611132967', null);
INSERT INTO `admin_action` VALUES ('139', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>\\u00a0 \\u00a0 \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><br \\/><\\/p>\",\"file\":\"\"}', '1611133011', '1611133011', null);
INSERT INTO `admin_action` VALUES ('140', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>\\u00a0 \\u00a0 \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><img src=\\\"\\/uploads\\/img\\/20210120\\/5a36c4cdc2f4fc98ab732d422aec2182.jpg\\\" alt=\\\"undefined\\\" \\/><br \\/><\\/p>\",\"file\":\"\"}', '1611133032', '1611133032', null);
INSERT INTO `admin_action` VALUES ('141', '静态页表', '1', '0', '1', '127.0.0.1', '{\"title\":\"sdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"asdf\",\"content\":\"<p>asdf<\\/p>\",\"create_time\":\"2021-01-20 18:04:12\",\"update_time\":\"2021-01-20 18:04:12\"}', '1611137052', '1611137052', null);
INSERT INTO `admin_action` VALUES ('142', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"2\",\"title\":\"sdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"asdf\",\"content\":\"<p>asdf<\\/p><p><img src=\\\"\\/uploads\\/img\\/20210120\\/fa0080309afc4c5137db2f2d9047b501.jpg\\\" alt=\\\"fa0080309afc4c5137db2f2d9047b501.jpg\\\" \\/><br \\/><\\/p>\"}', '1611137071', '1611137071', null);
INSERT INTO `admin_action` VALUES ('143', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"2\",\"title\":\"sdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"asdf\",\"content\":\"<p>asdf<\\/p><p><img src=\\\"\\/uploads\\/img\\/20210120\\/ee0cd24078b8b0c5eee16b90d61d0782.jpg\\\" alt=\\\"ee0cd24078b8b0c5eee16b90d61d0782.jpg\\\" \\/><br \\/><\\/p>\"}', '1611137111', '1611137111', null);
INSERT INTO `admin_action` VALUES ('144', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"2\",\"title\":\"sdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"asdf\",\"content\":\"<p>asdf<\\/p><p><img src=\\\"\\/uploads\\/img\\/20210120\\/7ad1d9279b15db1efca680666a290c2c.jpg\\\" alt=\\\"7ad1d9279b15db1efca680666a290c2c.jpg\\\" \\/><br \\/><\\/p>\"}', '1611137465', '1611137465', null);
INSERT INTO `admin_action` VALUES ('145', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"2\",\"title\":\"sdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"asdf\",\"content\":\"<p>asdf<\\/p><p><img src=\\\"\\/uploads\\/img\\/20210120\\/7ad1d9279b15db1efca680666a290c2c.jpg\\\" style=\\\"max-width:100%;\\\" width=\\\"30%\\\"><br><\\/p>\"}', '1611137514', '1611137514', null);
INSERT INTO `admin_action` VALUES ('146', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611189820', '1611189820', null);
INSERT INTO `admin_action` VALUES ('147', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611189986', '1611189986', null);
INSERT INTO `admin_action` VALUES ('148', '公告表', '1', '0', '1', '127.0.0.1', '{\"title\":\"\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\",\"type\":\"\\u4e00\\u822c\",\"intro\":\"\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\\u4e86\\uff01\",\"content\":\"<p>\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\\u4e86\\uff01<br><\\/p><p><img class=\\\"eleImg\\\" src=\\\"http:\\/\\/img.t.sinajs.cn\\/t4\\/appstyle\\/expression\\/ext\\/normal\\/50\\/pcmoren_huaixiao_org.png\\\" alt=\\\"[[\\u574f\\u7b11]]\\\">\\ud83d\\ude00<br><\\/p><p><img src=\\\"\\/uploads\\/img\\/20210121\\/341e56b6cc55b77cecec798b55e0c5d6.jpg\\\" style=\\\"max-width:100%;\\\" width=\\\"50%\\\"><br><\\/p>\",\"create_time\":\"2021-01-21 09:14:54\",\"update_time\":\"2021-01-21 09:14:54\"}', '1611191694', '1611191694', null);
INSERT INTO `admin_action` VALUES ('149', '公告表', '1', '0', '1', '127.0.0.1', '{\"title\":\"\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\",\"type\":\"\\u4e00\\u822c\",\"intro\":\"\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\\u4e86\\uff01\",\"content\":\"<p>\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\\u4e86\\uff01<br><\\/p><p><img class=\\\"eleImg\\\" src=\\\"http:\\/\\/img.t.sinajs.cn\\/t4\\/appstyle\\/expression\\/ext\\/normal\\/50\\/pcmoren_huaixiao_org.png\\\" alt=\\\"[[\\u574f\\u7b11]]\\\">\\ud83d\\ude00<br><\\/p><p><img src=\\\"\\/uploads\\/img\\/20210121\\/341e56b6cc55b77cecec798b55e0c5d6.jpg\\\" style=\\\"max-width:100%;\\\" width=\\\"50%\\\"><br><\\/p>\",\"create_time\":\"2021-01-21 09:19:32\",\"update_time\":\"2021-01-21 09:19:32\"}', '1611191972', '1611191972', null);
INSERT INTO `admin_action` VALUES ('150', '公告表', '1', '0', '1', '127.0.0.1', '{\"title\":\"\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\",\"type\":\"\\u4e00\\u822c\",\"intro\":\"\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\\u4e86\\uff01\",\"content\":\"<p>\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\\u4e86\\uff01<br><\\/p><p><img class=\\\"eleImg\\\" src=\\\"http:\\/\\/img.t.sinajs.cn\\/t4\\/appstyle\\/expression\\/ext\\/normal\\/50\\/pcmoren_huaixiao_org.png\\\" alt=\\\"[[\\u574f\\u7b11]]\\\">\\ud83d\\ude00<br><\\/p><p><img src=\\\"\\/uploads\\/img\\/20210121\\/341e56b6cc55b77cecec798b55e0c5d6.jpg\\\" style=\\\"max-width:100%;\\\" width=\\\"50%\\\"><br><\\/p>\",\"create_time\":\"2021-01-21 09:23:52\",\"update_time\":\"2021-01-21 09:23:52\"}', '1611192232', '1611192232', null);
INSERT INTO `admin_action` VALUES ('151', '公告表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\",\"type\":\"\\u4e00\\u822c\",\"intro\":\"\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\\u4e86\\uff01\",\"content\":\"<p>\\u65b0\\u7cfb\\u7edf\\u4e0a\\u7ebf\\u4e86\\uff01<br><\\/p><p><img class=\\\"eleImg\\\" src=\\\"http:\\/\\/img.t.sinajs.cn\\/t4\\/appstyle\\/expression\\/ext\\/normal\\/50\\/pcmoren_huaixiao_org.png\\\" alt=\\\"[[\\u574f\\u7b11]]\\\"><img class=\\\"eleImg\\\" src=\\\"http:\\/\\/img.t.sinajs.cn\\/t4\\/appstyle\\/expression\\/ext\\/normal\\/40\\/pcmoren_tian_org.png\\\" alt=\\\"[[\\u8214\\u5c4f]]\\\"><span style=\\\"font-size: 1em;\\\">\\ud83d\\ude00<\\/span><\\/p><p><img src=\\\"\\/uploads\\/img\\/20210121\\/341e56b6cc55b77cecec798b55e0c5d6.jpg\\\" style=\\\"max-width:100%;\\\" width=\\\"50%\\\"><br><\\/p>\"}', '1611192291', '1611192291', null);
INSERT INTO `admin_action` VALUES ('152', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"title\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\\u7f51\\u7ad9\\u670d\\u52a1\\u534f\\u8bae\",\"content\":\"<p style=\\\"text-align:center;\\\"><b>\\u670d\\u52a1\\u534f\\u8bae<\\/b><\\/p><p>&nbsp; &nbsp; \\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p>\\u670d\\u52a1\\u534f\\u8bae<\\/p><p><img src=\\\"\\/uploads\\/img\\/20210121\\/aa75448afbd183eb0535f520b101aa69.jpg\\\" style=\\\"max-width:100%;\\\"><br><\\/p>\"}', '1611192401', '1611192401', null);
INSERT INTO `admin_action` VALUES ('153', '静态页表', '2', '0', '1', '127.0.0.1', '{\"id\":\"2\",\"title\":\"sdf\",\"type\":\"\\u670d\\u52a1\\u534f\\u8bae\",\"intro\":\"asdf\",\"content\":\"<p>asdf<\\/p><p><img src=\\\"\\/uploads\\/img\\/20210120\\/7ad1d9279b15db1efca680666a290c2c.jpg\\\" style=\\\"max-width:100%;\\\" width=\\\"100%\\\"><br><\\/p><p><img src=\\\"\\/uploads\\/img\\/20210121\\/f5493e2125d95f3c82ceeba6a5d783af.jpg\\\" style=\\\"max-width:100%;\\\"><br><\\/p>\"}', '1611192441', '1611192441', null);
INSERT INTO `admin_action` VALUES ('154', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"lock-bg.jpg\",\"url\":\"\\/uploads\\/20210121\\/03afb25ec0932950ed301e7dfb431b22.jpg\",\"type\":\"jpg\",\"size\":32079,\"size_text\":\"31.33 KB\",\"create_time\":\"2021-01-21 09:58:01\",\"update_time\":\"2021-01-21 09:58:01\"}', '1611194281', '1611194281', null);
INSERT INTO `admin_action` VALUES ('155', '资源表', '3', '0', '1', '127.0.0.1', '{\"id\":1,\"name\":\"lock-bg.jpg\",\"url\":\"\\/uploads\\/20210121\\/03afb25ec0932950ed301e7dfb431b22.jpg\",\"type\":\"jpg\",\"size\":\"32079\",\"size_text\":\"31.33 KB\",\"create_time\":\"2021-01-21 09:58:01\",\"update_time\":\"2021-01-21 09:58:01\",\"delete_time\":null}', '1611194334', '1611194334', null);
INSERT INTO `admin_action` VALUES ('156', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"lock-bg.jpg\",\"url\":\"\\/uploads\\/20210121\\/f658e6d4b5118b92667899f454db0a57.jpg\",\"type\":\"jpg\",\"size\":32079,\"size_text\":\"31.33 KB\",\"create_time\":\"2021-01-21 10:01:13\",\"update_time\":\"2021-01-21 10:01:13\"}', '1611194473', '1611194473', null);
INSERT INTO `admin_action` VALUES ('157', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"\\u9879\\u76ee\\u8ba1\\u5212\\u8868.xls\",\"url\":\"\\/uploads\\/20210121\\/2d96d8f22ca53f70459cfd5031b955d3.xls\",\"type\":\"xls\",\"size\":21504,\"size_text\":\"21 KB\",\"create_time\":\"2021-01-21 10:02:51\",\"update_time\":\"2021-01-21 10:02:51\"}', '1611194571', '1611194571', null);
INSERT INTO `admin_action` VALUES ('158', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"ThinkPHP5.1\\u5b8c\\u5168\\u5f00\\u53d1\\u624b\\u518c-03041109.pdf\",\"url\":\"\\/uploads\\/20210121\\/4dd4f8f312370b56663726b533c9188d.pdf\",\"type\":\"pdf\",\"size\":4827548,\"size_text\":\"4.6 MB\",\"create_time\":\"2021-01-21 10:21:04\",\"update_time\":\"2021-01-21 10:21:04\"}', '1611195664', '1611195664', null);
INSERT INTO `admin_action` VALUES ('159', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"18\",\"model_name\":\"\\u8d44\\u6e90\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-file\",\"model_disp\":\"10\",\"page_name\":\"\\u8d44\\u6e90\\u7ba1\\u7406\",\"page_disp\":\"1\",\"page_url\":\"Resource\\/resourceList\",\"hidden\":\"0\",\"intro\":\"\\u8d44\\u6e90\\u7ba1\\u7406\\uff0c\\u7cfb\\u7edf\\u6240\\u6709\\u7684\\u4e0a\\u4f20\\u6587\\u4ef6\"}', '1611196570', '1611196570', null);
INSERT INTO `admin_action` VALUES ('160', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"18\",\"model_name\":\"\\u8d44\\u6e90\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-file-b\",\"model_disp\":\"10\",\"page_name\":\"\\u8d44\\u6e90\\u7ba1\\u7406\",\"page_disp\":\"1\",\"page_url\":\"Resource\\/resourceList\",\"hidden\":\"0\",\"intro\":\"\\u8d44\\u6e90\\u7ba1\\u7406\\uff0c\\u7cfb\\u7edf\\u6240\\u6709\\u7684\\u4e0a\\u4f20\\u6587\\u4ef6\"}', '1611196591', '1611196591', null);
INSERT INTO `admin_action` VALUES ('161', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611277445', '1611277445', null);
INSERT INTO `admin_action` VALUES ('162', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611367603', '1611367603', null);
INSERT INTO `admin_action` VALUES ('163', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611382095', '1611382095', null);
INSERT INTO `admin_action` VALUES ('164', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611388773', '1611388773', null);
INSERT INTO `admin_action` VALUES ('165', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611388917', '1611388917', null);
INSERT INTO `admin_action` VALUES ('166', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611536456', '1611536456', null);
INSERT INTO `admin_action` VALUES ('167', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611626878', '1611626878', null);
INSERT INTO `admin_action` VALUES ('168', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611641050', '1611641050', null);
INSERT INTO `admin_action` VALUES ('169', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"avatar.png\",\"url\":\"\\/uploads\\/20210126\\/3accceea8fddcbe7d7ca58d5b1c14594.png\",\"type\":\"png\",\"size\":24791,\"size_text\":\"24.21 KB\",\"create_time\":\"2021-01-26 15:09:34\",\"update_time\":\"2021-01-26 15:09:34\"}', '1611644974', '1611644974', null);
INSERT INTO `admin_action` VALUES ('170', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"avatar.png\",\"url\":\"\\/uploads\\/20210126\\/b1178ed1eb1283bd1bcc952a0819626d.png\",\"type\":\"png\",\"size\":24791,\"size_text\":\"24.21 KB\",\"create_time\":\"2021-01-26 15:10:05\",\"update_time\":\"2021-01-26 15:10:05\"}', '1611645005', '1611645005', null);
INSERT INTO `admin_action` VALUES ('171', '用户表', '1', '0', '1', '127.0.0.1', '{\"name\":\"asdf\",\"phone\":\"13333333331\",\"nick_name\":\"asdf\",\"type\":\"0\",\"status\":\"on\",\"intro\":\"asdf\",\"image\":\"\\/uploads\\/20210126\\/b1178ed1eb1283bd1bcc952a0819626d.png\",\"file\":\"\",\"hidden\":\"1\",\"create_time\":\"2021-01-26 15:10:20\",\"update_time\":\"2021-01-26 15:10:20\"}', '1611645020', '1611645020', null);
INSERT INTO `admin_action` VALUES ('172', '用户表', '1', '0', '1', '127.0.0.1', '{\"name\":\"asdf\",\"phone\":\"13333333331\",\"nick_name\":\"asdf\",\"type\":\"0\",\"status\":\"on\",\"intro\":\"asdf\",\"image\":\"\\/uploads\\/20210126\\/b1178ed1eb1283bd1bcc952a0819626d.png\",\"file\":\"\",\"hidden\":\"1\",\"create_time\":\"2021-01-26 15:10:23\",\"update_time\":\"2021-01-26 15:10:23\"}', '1611645023', '1611645023', null);
INSERT INTO `admin_action` VALUES ('173', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"avatar.png\",\"url\":\"\\/uploads\\/20210126\\/ac24651c3237e0dd91a24089674e5aaa.png\",\"type\":\"png\",\"size\":24791,\"size_text\":\"24.21 KB\",\"create_time\":\"2021-01-26 15:11:42\",\"update_time\":\"2021-01-26 15:11:42\"}', '1611645102', '1611645102', null);
INSERT INTO `admin_action` VALUES ('174', '用户表', '1', '0', '1', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"phone\":\"13333333331\",\"nick_name\":\"asdf\",\"type\":\"0\",\"status\":\"0\",\"intro\":\"sdf\",\"image\":\"\\/uploads\\/20210126\\/ac24651c3237e0dd91a24089674e5aaa.png\",\"file\":\"\",\"create_time\":\"2021-01-26 15:11:43\",\"update_time\":\"2021-01-26 15:11:43\"}', '1611645103', '1611645103', null);
INSERT INTO `admin_action` VALUES ('175', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"avatar.png\",\"url\":\"\\/uploads\\/20210126\\/4f669c62f256a5780ad0e09e13cf4214.png\",\"type\":\"png\",\"size\":24791,\"size_text\":\"24.21 KB\",\"create_time\":\"2021-01-26 15:15:48\",\"update_time\":\"2021-01-26 15:15:48\"}', '1611645348', '1611645348', null);
INSERT INTO `admin_action` VALUES ('176', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u5f20\\u4e09\",\"phone\":\"13333333331\",\"nick_name\":\"\",\"type\":\"0\",\"status\":\"0\",\"intro\":\"sdf\",\"image\":\"\\/uploads\\/20210126\\/4f669c62f256a5780ad0e09e13cf4214.png\",\"file\":\"\"}', '1611645349', '1611645349', null);
INSERT INTO `admin_action` VALUES ('177', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"1611645364.537\"}', '1611645364', '1611645364', null);
INSERT INTO `admin_action` VALUES ('178', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"0\"}', '1611645378', '1611645378', null);
INSERT INTO `admin_action` VALUES ('179', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"1611647725.207\"}', '1611647725', '1611647725', null);
INSERT INTO `admin_action` VALUES ('180', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"0\"}', '1611647726', '1611647726', null);
INSERT INTO `admin_action` VALUES ('181', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"1611647726.432\"}', '1611647726', '1611647726', null);
INSERT INTO `admin_action` VALUES ('182', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"0\"}', '1611647727', '1611647727', null);
INSERT INTO `admin_action` VALUES ('183', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"1611648234.127\"}', '1611648234', '1611648234', null);
INSERT INTO `admin_action` VALUES ('184', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"0\"}', '1611648236', '1611648236', null);
INSERT INTO `admin_action` VALUES ('185', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"1611648237.807\"}', '1611648238', '1611648238', null);
INSERT INTO `admin_action` VALUES ('186', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"0\"}', '1611648238', '1611648238', null);
INSERT INTO `admin_action` VALUES ('187', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u5f20\\u4e09s123\",\"phone\":\"13333333331\",\"nick_name\":\"\",\"type\":\"VIP\\u4f1a\\u5458\",\"status\":\"0\",\"intro\":\"sdf\",\"image\":\"\\/uploads\\/20210126\\/4f669c62f256a5780ad0e09e13cf4214.png\",\"file\":\"\"}', '1611648588', '1611648588', null);
INSERT INTO `admin_action` VALUES ('188', '用户余额表', '1', '0', '1', '127.0.0.1', '{\"ma_uid\":1,\"ma_create_time\":\"2021-01-26 17:34:31\",\"ma_update_time\":\"2021-01-26 17:34:31\"}', '1611653671', '1611653671', null);
INSERT INTO `admin_action` VALUES ('189', '用户积分表', '1', '0', '1', '127.0.0.1', '{\"mb_uid\":1,\"mb_create_time\":\"2021-01-26 17:34:31\",\"mb_update_time\":\"2021-01-26 17:34:31\"}', '1611653671', '1611653671', null);
INSERT INTO `admin_action` VALUES ('190', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"22\",\"model_name\":\"\\u8d22\\u52a1\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-rmb\",\"model_disp\":\"5\",\"page_name\":\"\\u8d22\\u52a1\\u660e\\u7ec6\\u7ba1\\u7406\",\"page_disp\":\"1\",\"page_url\":\"Bank\\/bankList\",\"hidden\":\"0\",\"intro\":\"\\u4f1a\\u5458\\u7684\\u8d22\\u52a1\\u660e\\u7ec6\"}', '1611655363', '1611655363', null);
INSERT INTO `admin_action` VALUES ('191', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"24\",\"model_name\":\"\\u8d22\\u52a1\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-rmb\",\"model_disp\":\"5\",\"page_name\":\"\\u8d26\\u6237\\u5145\\u503c\",\"page_disp\":\"2\",\"page_url\":\"Bank\\/rechargeList\",\"hidden\":\"0\",\"intro\":\"\\u652f\\u6301\\u6263\\u6b3e\\u64cd\\u4f5c\\uff0c\\u8f93\\u5165\\u8d1f\\u6570\\u5373\\u53ef\\uff01\"}', '1611655392', '1611655392', null);
INSERT INTO `admin_action` VALUES ('192', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"22\",\"model_name\":\"\\u8d22\\u52a1\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-rmb\",\"model_disp\":\"5\",\"page_name\":\"\\u8d22\\u52a1\\u660e\\u7ec6\\u7ba1\\u7406\",\"page_disp\":\"1\",\"page_url\":\"Bank\\/bankList\",\"hidden\":\"0\",\"intro\":\"\\u4f1a\\u5458\\u7684\\u8d22\\u52a1\\u660e\\u7ec6\"}', '1611655520', '1611655520', null);
INSERT INTO `admin_action` VALUES ('193', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"22\",\"model_name\":\"\\u8d22\\u52a1\\u7ba1\\u7406\",\"model_icon\":\"layui-icon-rmb\",\"model_disp\":\"5\",\"page_name\":\"\\u8d22\\u52a1\\u660e\\u7ec6\\u7ba1\\u7406\",\"page_disp\":\"1\",\"page_url\":\"Bank\\/bankList\",\"hidden\":\"0\",\"intro\":\"\\u4f1a\\u5458\\u7684\\u8d22\\u52a1\\u660e\\u7ec6\"}', '1611655620', '1611655620', null);
INSERT INTO `admin_action` VALUES ('194', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611727370', '1611727370', null);
INSERT INTO `admin_action` VALUES ('195', '用户角色表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"access\":\"1,11,19,20,17,18,14,15,12,13,16,2,3,4,5,6,7,9,8,10\",\"intro\":\"\\u62e5\\u6709\\u81f3\\u9ad8\\u65e0\\u4e0a\\u7684\\u6743\\u5229\"}', '1611728077', '1611728077', null);
INSERT INTO `admin_action` VALUES ('196', '用户角色表', '2', '0', '1', '127.0.0.1', '{\"id\":\"2\",\"name\":\"\\u7ba1\\u7406\\u5458\",\"access\":\"1,5\",\"intro\":\"\\u4f1a\\u5458\\u7ba1\\u7406\\u5458\"}', '1611728093', '1611728093', null);
INSERT INTO `admin_action` VALUES ('197', '用户角色表', '2', '0', '1', '127.0.0.1', '{\"id\":\"2\",\"name\":\"\\u7ba1\\u7406\\u5458\",\"access\":\"1,11,5\",\"intro\":\"\\u4f1a\\u5458\\u7ba1\\u7406\\u5458\"}', '1611728100', '1611728100', null);
INSERT INTO `admin_action` VALUES ('198', '后台模块表', '2', '0', '1', '127.0.0.1', '{\"id\":\"9\",\"hidden\":\"1\"}', '1611728144', '1611728144', null);
INSERT INTO `admin_action` VALUES ('199', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1611820168', '1611820168', null);
INSERT INTO `admin_action` VALUES ('200', '管理员登陆日志', '4', '0', '1', '127.0.0.1', '', '1612592502', '1612592502', null);
INSERT INTO `admin_action` VALUES ('201', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"1612592744.97\"}', '1612592745', '1612592745', null);
INSERT INTO `admin_action` VALUES ('202', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"0\"}', '1612592745', '1612592745', null);
INSERT INTO `admin_action` VALUES ('203', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"1612592745.833\"}', '1612592746', '1612592746', null);
INSERT INTO `admin_action` VALUES ('204', '用户表', '2', '0', '1', '127.0.0.1', '{\"id\":\"1\",\"status\":\"0\"}', '1612592746', '1612592746', null);
INSERT INTO `admin_action` VALUES ('205', '资源表', '1', '0', '1', '127.0.0.1', '{\"name\":\"banner-1.jpg\",\"url\":\"\\/uploads\\/20210206\\/a96025cd1a0b76dbbb242325444702d6.jpg\",\"type\":\"jpg\",\"size\":7135,\"size_text\":\"6.97 KB\",\"create_time\":\"2021-02-06 15:59:11\",\"update_time\":\"2021-02-06 15:59:11\"}', '1612598351', '1612598351', null);

-- ----------------------------
-- Table structure for admin_module
-- ----------------------------
DROP TABLE IF EXISTS `admin_module`;
CREATE TABLE `admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `model_name` varchar(10) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model_icon` varchar(100) NOT NULL DEFAULT 'fa-book' COMMENT '图标',
  `model_disp` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '模块显示顺序',
  `page_name` varchar(30) NOT NULL DEFAULT '' COMMENT '页面名称',
  `page_icon` varchar(20) NOT NULL DEFAULT 'fa-book' COMMENT '功能图标',
  `page_disp` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '页面显示顺序',
  `page_url` varchar(30) NOT NULL DEFAULT '' COMMENT '页面链接',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `intro` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  `delete_time` int(11) unsigned DEFAULT NULL COMMENT '删除标志',
  `update_user` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `create_user` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='系统模块';

-- ----------------------------
-- Records of admin_module
-- ----------------------------
INSERT INTO `admin_module` VALUES ('1', '首页', 'layui-icon-home', '0', '首页', 'fa-home', '1', 'Index/index', '0', '首页', null, '0', '1611126671', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('2', '权限管理', 'layui-icon-app', '97', '模块管理', 'fa-book', '1', 'Access/moduleList', '0', '系统所有的模块管理', null, '0', '1611127832', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('3', '权限管理', 'fa-book', '97', '角色管理', 'fa-book', '2', 'Access/roleList', '0', '后台角色权限管理', null, '0', '1610792740', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('4', '权限管理', 'fa-book', '97', '管理员管理', 'fa-book', '3', 'Access/adminList', '0', '后台管理员管理', null, '0', '1610792740', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('5', '权限管理', 'fa-book', '97', '修改密码', 'fa-book', '4', 'Access/changeList', '0', '后台修改个人的账户密码', null, '0', '1610792681', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('6', '权限管理', 'fa-book', '97', '重置密码', 'fa-book', '5', 'Access/resetList', '0', '无需输入新密码，直接重置后台用户密码', null, '0', '1610792723', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('7', '系统管理', 'layui-icon-set', '98', '网站配置', 'fa-cogs', '2', 'System/configList', '0', '系统的参数配置', null, '0', '1611126768', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('8', '系统管理', 'fa-user', '98', '网站图片上传', 'fa-cloud-upload', '5', 'System/imgList', '0', 'LOGO和轮播图的上传', null, '0', '1594348850', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('9', '系统管理', 'fa-user', '98', '操作日志', 'fa-file-text', '3', 'System/logList', '1', '系统的一些操作日志记录', null, '0', '1611728144', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('10', '上传模块', 'fa-user', '99', '图片上传', 'fa-book', '1', 'Uploads/uploadList', '1', '编辑器上传图片的权限，无权限不可进行上传', null, '0', '1610966688', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('11', '用户管理', 'layui-icon-user', '1', '用户管理', 'fa-user', '1', 'User/userList', '0', '系统所有的会员', null, '0', '1611126710', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('12', '公告管理', 'layui-icon-notice', '8', '公告管理', 'fa-book', '2', 'News/noticeList', '0', '系统通告管理', null, '0', '1611128547', '0', '1594362464');
INSERT INTO `admin_module` VALUES ('13', '公告管理', 'layui-icon-notice', '8', '添加/修改公告', 'fa-book', '3', 'News/addNotice', '0', '添加/修改公告', null, '0', '1611128597', '0', '1594362381');
INSERT INTO `admin_module` VALUES ('14', '公告管理', 'layui-icon-notice', '8', '静态页管理', 'fa-book', '1', 'News/staticList', '0', '系统的一些静态页', null, '0', '1611128447', '0', '1608190193');
INSERT INTO `admin_module` VALUES ('15', '公告管理', 'layui-icon-notice', '8', '添加/修改静态页', 'fa-book', '1', 'News/addStatic', '0', '添加/修改静态页', null, '0', '1611128496', '0', '1608191067');
INSERT INTO `admin_module` VALUES ('16', '资源管理', 'layui-icon-file-b', '10', '资源管理', 'fa-book', '1', 'Resource/resourceList', '0', '资源管理，系统所有的上传文件', null, '0', '1611196591', '0', '1607666083');
INSERT INTO `admin_module` VALUES ('17', '财务管理', 'layui-icon-rmb', '5', '财务明细管理', 'fa-bar-chart-o', '1', 'Bank/bankList', '0', '会员的财务明细', null, '0', '1611655620', '0', '1577808000');
INSERT INTO `admin_module` VALUES ('18', '财务管理', 'layui-icon-rmb', '5', '账户充值', 'fa-book', '2', 'Bank/rechargeList', '0', '支持扣款操作，输入负数即可！', null, '0', '1611655392', '0', '1608869517');
INSERT INTO `admin_module` VALUES ('19', '交易管理', 'fa-th-list', '2', '交易订单', 'fa-th-list', '1', 'Trade/orderList', '0', '交易订单列表', null, '0', '1608875978', '0', '1606960711');
INSERT INTO `admin_module` VALUES ('20', '交易管理', 'fa-th-list', '2', '提现管理', 'fa-book', '2', 'Trade/cashList', '0', '申请提现列表', null, '0', '1608876405', '0', '1608876405');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '角色名称',
  `access` varchar(500) NOT NULL DEFAULT '' COMMENT '权限ID',
  `intro` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='系统角色';

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', '超级管理员', '1,11,19,20,17,18,14,15,12,13,16,2,3,4,5,6,7,9,8,10', '拥有至高无上的权利', '1577808000', '1611728077', null);
INSERT INTO `admin_role` VALUES ('2', '管理员', '1,11,5', '会员管理员', '1611028778', '1611728100', null);

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `uid` int(11) NOT NULL DEFAULT '0',
  `ar_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `name` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户ID',
  `password` char(60) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '密码',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '姓名/昵称',
  `phone` char(11) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '联系方式',
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_frozen` int(11) NOT NULL DEFAULT '0' COMMENT '冻结标志 0未冻结 时间戳 冻结时间',
  `intro` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '备注',
  `session_id` char(60) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '最后登录sessionID',
  `last_ip` char(15) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '上次登陆IP',
  `login_ip` char(15) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '登陆IP',
  `login_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `create_user` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_user` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `delete_time` int(11) unsigned DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', '0', '1', 'admin', '$2y$10$fupOfEyfv/3kU8dI0kwGv.KJJC9F8D.P2q2mX5hOMOts5ISAeFPUe', '超级管理员', '13888888888', 'admin@admin.admin', '0', '超级管理员', '$2y$10$TNTzoo4XgH7.U/sHmvMrd.ZuoNkNg/F1vbbCYBmdAQS03eDmh.0SO', '127.0.0.1', '127.0.0.1', '21', '0', '0', '1611115791', '1594277182', null);

-- ----------------------------
-- Table structure for login_error
-- ----------------------------
DROP TABLE IF EXISTS `login_error`;
CREATE TABLE `login_error` (
  `le_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `le_user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '登陆用户名',
  `le_password` varchar(64) NOT NULL DEFAULT '' COMMENT '登陆密码',
  `le_login_ip` char(15) NOT NULL DEFAULT '' COMMENT '登陆IP',
  `le_create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `le_update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `le_delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`le_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='异常登录';

-- ----------------------------
-- Records of login_error
-- ----------------------------
INSERT INTO `login_error` VALUES ('1', 'sdf', 'sdf', '127.0.0.1', '1611114989', '1611114989', null);
INSERT INTO `login_error` VALUES ('2', 'asdf', 'asdf', '127.0.0.1', '1611115029', '1611115029', null);
INSERT INTO `login_error` VALUES ('3', 'asdf', 'asdf', '127.0.0.1', '1611115036', '1611115036', null);
INSERT INTO `login_error` VALUES ('4', 'admin', '1232456', '127.0.0.1', '1611115274', '1611115274', null);
INSERT INTO `login_error` VALUES ('5', 'admin', '123456', '127.0.0.1', '1611115287', '1611115287', null);
INSERT INTO `login_error` VALUES ('6', 'admin', '123456888...', '127.0.0.1', '1611115302', '1611115302', null);
INSERT INTO `login_error` VALUES ('7', 'admin', '123456', '127.0.0.1', '1611115326', '1611115326', null);

-- ----------------------------
-- Table structure for money_a
-- ----------------------------
DROP TABLE IF EXISTS `money_a`;
CREATE TABLE `money_a` (
  `ma_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ma_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `ma_frozen` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '冻结的',
  `ma_own` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '自己的',
  `ma_create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `ma_update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `ma_delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='钱包A';

-- ----------------------------
-- Records of money_a
-- ----------------------------
INSERT INTO `money_a` VALUES ('1', '1', '0.00', '89900.00', '1611653671', '1611653671', null);

-- ----------------------------
-- Table structure for money_b
-- ----------------------------
DROP TABLE IF EXISTS `money_b`;
CREATE TABLE `money_b` (
  `mb_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mb_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `mb_frozen` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '冻结的',
  `mb_own` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '自己的',
  `mb_create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `mb_update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `mb_delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='钱包B';

-- ----------------------------
-- Records of money_b
-- ----------------------------
INSERT INTO `money_b` VALUES ('1', '1', '0.00', '101887.00', '1611653671', '1611653671', null);

-- ----------------------------
-- Table structure for news_notice
-- ----------------------------
DROP TABLE IF EXISTS `news_notice`;
CREATE TABLE `news_notice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '标题',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '公告类型',
  `intro` varchar(500) NOT NULL DEFAULT '' COMMENT '描述',
  `content` text NOT NULL COMMENT '公告内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统公告表';

-- ----------------------------
-- Records of news_notice
-- ----------------------------
INSERT INTO `news_notice` VALUES ('1', '新系统上线', '1', '新系统上线了！', '<p>新系统上线了！<br></p><p><img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png\" alt=\"[[坏笑]]\"><img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[[舔屏]]\"><span style=\"font-size: 1em;\">?</span></p><p><img src=\"/uploads/20210121/341e56b6cc55b77cecec798b55e0c5d6.jpg\" style=\"max-width:100%;\" width=\"50%\"><br></p>', '1611192232', '1611192291', null);

-- ----------------------------
-- Table structure for news_static
-- ----------------------------
DROP TABLE IF EXISTS `news_static`;
CREATE TABLE `news_static` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '标题',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '公告类型',
  `intro` varchar(500) NOT NULL DEFAULT '' COMMENT '描述',
  `content` text NOT NULL COMMENT '公告内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='系统静态页面表';

-- ----------------------------
-- Records of news_static
-- ----------------------------
INSERT INTO `news_static` VALUES ('1', '网站服务协议', '1', '网站服务协议网站服务协议网站服务协议', '<p style=\"text-align:center;\"><b>服务协议</b></p><p>&nbsp; &nbsp; 服务协议服务协议服务协议服务协议服务协议</p><p>服务协议服务协议服务协议服务协议服务协议服务协议</p><p>服务协议</p><p>服务协议</p><p>服务协议</p><p><img src=\"/uploads/20210121/aa75448afbd183eb0535f520b101aa69.jpg\" style=\"max-width:100%;\"><br></p>', '1611130757', '1611192401', null);
INSERT INTO `news_static` VALUES ('2', 'sdf', '1', 'asdf', '<p>asdf</p><p><img src=\"/uploads/20210120/7ad1d9279b15db1efca680666a290c2c.jpg\" style=\"max-width:100%;\" width=\"100%\"><br></p><p><img src=\"/uploads/20210121/f5493e2125d95f3c82ceeba6a5d783af.jpg\" style=\"max-width:100%;\"><br></p>', '1611137052', '1611192441', null);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` char(100) NOT NULL DEFAULT '' COMMENT '大小 kb',
  `size_text` char(100) NOT NULL DEFAULT '' COMMENT '格式化后的文件大小',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', 'lock-bg.jpg', '/uploads/20210121/03afb25ec0932950ed301e7dfb431b22.jpg', 'jpg', '32079', '31.33 KB', '1611194281', '1611194334', '1611194334');
INSERT INTO `resource` VALUES ('2', 'lock-bg.jpg', '/uploads/20210121/f658e6d4b5118b92667899f454db0a57.jpg', 'jpg', '32079', '31.33 KB', '1611194473', '1611194473', null);
INSERT INTO `resource` VALUES ('3', '项目计划表.xls', '/uploads/20210121/2d96d8f22ca53f70459cfd5031b955d3.xls', 'xls', '21504', '21 KB', '1611194571', '1611194571', null);
INSERT INTO `resource` VALUES ('4', 'ThinkPHP5.1完全开发手册-03041109.pdf', '/uploads/20210121/4dd4f8f312370b56663726b533c9188d.pdf', 'pdf', '4827548', '4.6 MB', '1611195664', '1611195664', null);
INSERT INTO `resource` VALUES ('5', 'avatar.png', '/uploads/20210126/3accceea8fddcbe7d7ca58d5b1c14594.png', 'png', '24791', '24.21 KB', '1611644974', '1611644974', null);
INSERT INTO `resource` VALUES ('6', 'avatar.png', '/uploads/20210126/b1178ed1eb1283bd1bcc952a0819626d.png', 'png', '24791', '24.21 KB', '1611645005', '1611645005', null);
INSERT INTO `resource` VALUES ('7', 'avatar.png', '/uploads/20210126/ac24651c3237e0dd91a24089674e5aaa.png', 'png', '24791', '24.21 KB', '1611645102', '1611645102', null);
INSERT INTO `resource` VALUES ('8', 'avatar.png', '/uploads/20210126/4f669c62f256a5780ad0e09e13cf4214.png', 'png', '24791', '24.21 KB', '1611645348', '1611645348', null);
INSERT INTO `resource` VALUES ('9', 'banner-1.jpg', '/uploads/20210206/a96025cd1a0b76dbbb242325444702d6.jpg', 'jpg', '7135', '6.97 KB', '1612598351', '1612598351', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` char(16) NOT NULL DEFAULT '' COMMENT '会员名',
  `nickname` char(30) NOT NULL DEFAULT '',
  `phone` char(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '会员类型',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `openid` char(60) NOT NULL DEFAULT '' COMMENT 'openid',
  `intro` text COMMENT '备注',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `delete_time` int(11) unsigned DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '', '13333333331', '1', '/uploads/20210126/4f669c62f256a5780ad0e09e13cf4214.png', '', 'sdf', '0', '1611645103', '1612592746', null);

-- ----------------------------
-- Table structure for user_bank
-- ----------------------------
DROP TABLE IF EXISTS `user_bank`;
CREATE TABLE `user_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `money` decimal(30,2) DEFAULT NULL COMMENT '操作金额',
  `total` decimal(30,2) DEFAULT NULL COMMENT '当前总资产',
  `msg` varchar(100) NOT NULL DEFAULT '' COMMENT '操作留言',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '操作类型',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '资金到账状态',
  `money_type` char(1) NOT NULL DEFAULT '' COMMENT '操作钱包',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '关联id',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='用户财务明细';

-- ----------------------------
-- Records of user_bank
-- ----------------------------
INSERT INTO `user_bank` VALUES ('1', '1', '100000.00', '100000.00', '', '1', '1', 'a', '0', '1611656586', '1611656586', null);
INSERT INTO `user_bank` VALUES ('2', '1', '100000.00', '100000.00', '', '1', '1', 'b', '0', '1611656586', '1611656586', null);
INSERT INTO `user_bank` VALUES ('3', '1', '999.00', '100999.00', '充值积分', '1', '1', 'b', '0', '1611656645', '1611656645', null);
INSERT INTO `user_bank` VALUES ('6', '1', '-10000.00', '90000.00', '扣除余额', '1', '2', 'a', '0', '1611656776', '1611656776', null);
INSERT INTO `user_bank` VALUES ('7', '1', '-100.00', '89900.00', '', '1', '2', 'a', '0', '1611656843', '1611656843', null);
INSERT INTO `user_bank` VALUES ('8', '1', '888.00', '101887.00', '', '1', '1', 'b', '0', '1611656934', '1611656934', null);

-- ----------------------------
-- Table structure for web_config
-- ----------------------------
DROP TABLE IF EXISTS `web_config`;
CREATE TABLE `web_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT 'LOGO',
  `lb` text COMMENT '轮播图',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='网站配置';

-- ----------------------------
-- Records of web_config
-- ----------------------------
INSERT INTO `web_config` VALUES ('1', '/uploads/20210120/23cf844cd8589dc5827c3aaab225f9df.png', '/uploads/20210120/4d4b44ed034d02be6ffb85ea44424a7b.jpg;/uploads/20210120/84823eb3ee9402496551944c6f5295c2.jpg', '0', '0', null);
