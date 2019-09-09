/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 8.0.16 : Database - febs_base
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`febs_base` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `febs_base`;

/*Table structure for table `t_dept` */

DROP TABLE IF EXISTS `t_dept`;

CREATE TABLE `t_dept` (
  `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';

/*Data for the table `t_dept` */

insert  into `t_dept`(`DEPT_ID`,`PARENT_ID`,`DEPT_NAME`,`ORDER_NUM`,`CREATE_TIME`,`MODIFY_TIME`) values 
(1,0,'开发部',1,'2019-06-14 20:56:41',NULL),
(2,1,'开发一部',1,'2019-06-14 20:58:46',NULL),
(3,1,'开发二部',2,'2019-06-14 20:58:56',NULL),
(4,0,'采购部',2,'2019-06-14 20:59:56',NULL),
(5,0,'财务部',3,'2019-06-14 21:00:08',NULL),
(6,0,'销售部',4,'2019-06-14 21:00:15',NULL),
(7,0,'工程部',5,'2019-06-14 21:00:42',NULL),
(8,0,'行政部',6,'2019-06-14 21:00:49',NULL),
(9,0,'人力资源部',8,'2019-06-14 21:01:14','2019-06-14 21:01:34'),
(10,0,'系统部',7,'2019-06-14 21:01:31',NULL);

/*Table structure for table `t_log` */

DROP TABLE IF EXISTS `t_log`;

CREATE TABLE `t_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '操作方法',
  `PARAMS` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '方法参数',
  `IP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=996 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志表';

/*Data for the table `t_log` */

insert  into `t_log`(`ID`,`USERNAME`,`OPERATION`,`TIME`,`METHOD`,`PARAMS`,`IP`,`CREATE_TIME`,`location`) values 
(890,'MrBird','修改角色',1144,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 16:40:57 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 08:40:59','内网IP|0|0|内网IP|内网IP'),
(891,'MrBird','修改角色',267,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=75, roleName=可怜, remark=, createTime=null, modifyTime=Thu Jun 13 16:47:00 CST 2019, menuIds=115)\"','127.0.0.1','2019-06-13 08:47:01','内网IP|0|0|内网IP|内网IP'),
(892,'MrBird','修改角色',478,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 16:47:15 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 08:47:16','内网IP|0|0|内网IP|内网IP'),
(893,'MrBird','删除角色',233,'cc.mrbird.febs.system.controller.RoleController.deleteRoles()',' roleIds: \"75\"','127.0.0.1','2019-06-13 08:47:50','内网IP|0|0|内网IP|内网IP'),
(894,'MrBird','修改用户',128,'cc.mrbird.febs.system.controller.UserController.updateUser()',' user: \"User(userId=6, username=tester, password=null, deptId=6, email=tester@qq.com, mobile=13888888888, status=1, createTime=null, modifyTime=Thu Jun 13 16:56:29 CST 2019, lastLoginTime=null, sex=1, avatar=null, theme=null, isTab=null, description=我是测试用户, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=2, roleName=null)\"','127.0.0.1','2019-06-13 08:56:29','内网IP|0|0|内网IP|内网IP'),
(895,'MrBird','修改用户',323,'cc.mrbird.febs.system.controller.UserController.updateUser()',' user: \"User(userId=6, username=tester, password=null, deptId=6, email=tester@qq.com, mobile=13888888888, status=1, createTime=null, modifyTime=Thu Jun 13 16:56:36 CST 2019, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=我是测试用户, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=2, roleName=null)\"','127.0.0.1','2019-06-13 08:56:37','内网IP|0|0|内网IP|内网IP'),
(896,'MrBird','修改菜单/按钮',172,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=3, parentId=1, menuName=用户管理, url=/system/user, perms=user:view, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Jun 13 16:57:10 CST 2019)\"','127.0.0.1','2019-06-13 08:57:11','内网IP|0|0|内网IP|内网IP'),
(897,'MrBird','修改菜单/按钮',164,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=4, parentId=1, menuName=角色管理, url=/system/role, perms=role:view, icon=, type=0, orderNum=2, createTime=null, modifyTime=Thu Jun 13 16:57:18 CST 2019)\"','127.0.0.1','2019-06-13 08:57:19','内网IP|0|0|内网IP|内网IP'),
(898,'MrBird','修改菜单/按钮',81,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=5, parentId=1, menuName=菜单管理, url=/system/menu, perms=menu:view, icon=, type=0, orderNum=3, createTime=null, modifyTime=Thu Jun 13 16:57:33 CST 2019)\"','127.0.0.1','2019-06-13 08:57:34','内网IP|0|0|内网IP|内网IP'),
(899,'MrBird','修改角色',436,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 16:59:24 CST 2019, menuIds=1,3,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 08:59:25','内网IP|0|0|内网IP|内网IP'),
(900,'MrBird','修改角色',329,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 16:59:55 CST 2019, menuIds=1,3,11,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 08:59:56','内网IP|0|0|内网IP|内网IP'),
(901,'MrBird','修改角色',270,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:00:39 CST 2019, menuIds=1,3,11,12,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:00:39','内网IP|0|0|内网IP|内网IP'),
(902,'MrBird','修改角色',238,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:01:47 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:01:48','内网IP|0|0|内网IP|内网IP'),
(903,'MrBird','修改角色',202,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:02:28 CST 2019, menuIds=1,3,11,13,160,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:02:28','内网IP|0|0|内网IP|内网IP'),
(904,'MrBird','修改角色',446,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:14:28 CST 2019, menuIds=1,3,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:14:29','内网IP|0|0|内网IP|内网IP'),
(905,'MrBird','修改角色',150,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:14:47 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:14:48','内网IP|0|0|内网IP|内网IP'),
(906,'MrBird','修改角色',88,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:14:55 CST 2019, menuIds=1,3,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:14:56','内网IP|0|0|内网IP|内网IP'),
(907,'MrBird','修改角色',177,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:18:58 CST 2019, menuIds=1,3,11,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:18:58','内网IP|0|0|内网IP|内网IP'),
(908,'MrBird','修改角色',286,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:22:52 CST 2019, menuIds=1,3,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:22:53','内网IP|0|0|内网IP|内网IP'),
(909,'MrBird','修改角色',105,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:23:08 CST 2019, menuIds=1,3,11,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:23:09','内网IP|0|0|内网IP|内网IP'),
(910,'MrBird','修改角色',275,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 17:32:55 CST 2019, menuIds=1,3,11,13,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 09:32:56','内网IP|0|0|内网IP|内网IP'),
(911,'MrBird','修改角色',348,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 18:53:31 CST 2019, menuIds=1,3,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 10:53:32','内网IP|0|0|内网IP|内网IP'),
(912,'MrBird','修改角色',114,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 18:53:49 CST 2019, menuIds=1,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 10:53:50','内网IP|0|0|内网IP|内网IP'),
(913,'MrBird','修改角色',255,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 18:54:08 CST 2019, menuIds=1,3,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 10:54:09','内网IP|0|0|内网IP|内网IP'),
(914,'MrBird','修改菜单/按钮',51,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=3, parentId=1, menuName=用户管理, url=/system/user, perms=user:view啊, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Jun 13 18:54:28 CST 2019)\"','127.0.0.1','2019-06-13 10:54:28','内网IP|0|0|内网IP|内网IP'),
(915,'MrBird','修改菜单/按钮',150,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=3, parentId=1, menuName=用户管理, url=/system/user, perms=user:view, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Jun 13 18:54:46 CST 2019)\"','127.0.0.1','2019-06-13 10:54:46','内网IP|0|0|内网IP|内网IP'),
(916,'MrBird','修改角色',259,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 18:55:01 CST 2019, menuIds=1,3,11,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 10:55:02','内网IP|0|0|内网IP|内网IP'),
(917,'MrBird','修改菜单/按钮',118,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=3, parentId=1, menuName=用户管理, url=/system/user, perms=user:viewa, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Jun 13 18:57:57 CST 2019)\"','127.0.0.1','2019-06-13 10:57:58','内网IP|0|0|内网IP|内网IP'),
(918,'MrBird','修改角色',431,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 19:13:30 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','127.0.0.1','2019-06-13 11:13:31','内网IP|0|0|内网IP|内网IP'),
(919,'MrBird','修改菜单/按钮',157,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=3, parentId=1, menuName=用户管理, url=/system/user, perms=user:view, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Jun 13 19:13:44 CST 2019)\"','127.0.0.1','2019-06-13 11:13:45','内网IP|0|0|内网IP|内网IP'),
(920,'MrBird','修改菜单/按钮',149,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=3, parentId=1, menuName=用户管理, url=/system/user, perms=user:view, icon=layui-icon-meh, type=0, orderNum=1, createTime=null, modifyTime=Thu Jun 13 19:13:55 CST 2019)\"','127.0.0.1','2019-06-13 11:13:56','内网IP|0|0|内网IP|内网IP'),
(921,'MrBird','修改菜单/按钮',163,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=2, parentId=0, menuName=系统监控, url=, perms=, icon=, type=0, orderNum=2, createTime=null, modifyTime=Thu Jun 13 19:14:34 CST 2019)\"','127.0.0.1','2019-06-13 11:14:34','内网IP|0|0|内网IP|内网IP'),
(922,'MrBird','修改菜单/按钮',146,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=2, parentId=0, menuName=系统监控, url=, perms=, icon=layui-icon-alert, type=0, orderNum=2, createTime=null, modifyTime=Thu Jun 13 19:20:40 CST 2019)\"','127.0.0.1','2019-06-13 11:20:40','内网IP|0|0|内网IP|内网IP'),
(923,'MrBird','修改角色',70,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 21:24:53 CST 2019, menuIds=1,3,12,13,160,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','172.18.96.1','2019-06-13 13:24:54','内网IP|0|0|内网IP|内网IP'),
(924,'MrBird','修改角色',22,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Thu Jun 13 21:25:06 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,5,17,18,19,6,20,21,22,2,8,23,10,24,136,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,109,110,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125)\"','172.18.96.1','2019-06-13 13:25:07','内网IP|0|0|内网IP|内网IP'),
(925,'MrBird','修改角色',60,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=2, roleName=注册账户, remark=注册账户，只可查看，不可操作, createTime=null, modifyTime=Thu Jun 13 22:24:09 CST 2019, menuIds=1,3,4,14,5,6,2,8,10,136,113,114,127,128,129,130,131,101,102,109,137,138,139,115,132,133,135,134,126,116,117,119,120,121,122,123,118,125)\"','172.18.96.1','2019-06-13 14:24:10','内网IP|0|0|内网IP|内网IP'),
(926,'MrBird','修改角色',69,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=2, roleName=注册账户, remark=注册账户，只可查看，不可操作, createTime=null, modifyTime=Thu Jun 13 22:24:58 CST 2019, menuIds=1,3,4,5,6,2,8,10,136,113,114,127,128,129,130,131,101,102,109,137,138,139,115,132,133,135,134,126,116,117,119,120,121,122,123,118,125)\"','172.18.96.1','2019-06-13 14:24:59','内网IP|0|0|内网IP|内网IP'),
(927,'scott','新增角色',5,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=76, roleName=1341234, remark=, createTime=Thu Jun 13 22:25:21 CST 2019, modifyTime=null, menuIds=)\"','127.0.0.1','2019-06-13 14:25:21','内网IP|0|0|内网IP|内网IP'),
(928,'MrBird','新增菜单/按钮',7,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=162, parentId=4, menuName=导出角色, url=null, perms=role:export, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:29:00 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:29:00','内网IP|0|0|内网IP|内网IP'),
(929,'MrBird','修改菜单/按钮',9,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=162, parentId=4, menuName=导出Excel, url=null, perms=role:export, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Thu Jun 13 22:29:11 CST 2019)\"','172.18.96.1','2019-06-13 14:29:11','内网IP|0|0|内网IP|内网IP'),
(930,'MrBird','新增菜单/按钮',14,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=163, parentId=5, menuName=导出Excel, url=null, perms=menu:export, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:29:32 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:29:32','内网IP|0|0|内网IP|内网IP'),
(931,'MrBird','新增菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=164, parentId=6, menuName=导出Excel, url=null, perms=dept:export, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:29:58 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:29:59','内网IP|0|0|内网IP|内网IP'),
(932,'MrBird','修改菜单/按钮',6,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=8, parentId=2, menuName=在线用户, url=/monitor/online, perms=online:view, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Jun 13 22:30:30 CST 2019)\"','172.18.96.1','2019-06-13 14:30:31','内网IP|0|0|内网IP|内网IP'),
(933,'MrBird','修改菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=10, parentId=2, menuName=系统日志, url=/monitor/log, perms=log:view, icon=, type=0, orderNum=2, createTime=null, modifyTime=Thu Jun 13 22:30:37 CST 2019)\"','172.18.96.1','2019-06-13 14:30:37','内网IP|0|0|内网IP|内网IP'),
(934,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=113, parentId=2, menuName=Redis监控, url=/monitor/redis/info, perms=redis:view, icon=, type=0, orderNum=4, createTime=null, modifyTime=Thu Jun 13 22:30:44 CST 2019)\"','172.18.96.1','2019-06-13 14:30:45','内网IP|0|0|内网IP|内网IP'),
(935,'MrBird','修改菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=114, parentId=2, menuName=Redis终端, url=/monitor/redis/terminal, perms=redis:terminal:view, icon=, type=0, orderNum=5, createTime=null, modifyTime=Thu Jun 13 22:30:53 CST 2019)\"','172.18.96.1','2019-06-13 14:30:54','内网IP|0|0|内网IP|内网IP'),
(936,'MrBird','修改菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=139, parentId=137, menuName=代码生成, url=/generator/generator, perms=generator:view, icon=, type=0, orderNum=2, createTime=null, modifyTime=Thu Jun 13 22:31:38 CST 2019)\"','172.18.96.1','2019-06-13 14:31:38','内网IP|0|0|内网IP|内网IP'),
(937,'MrBird','新增菜单/按钮',15,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=165, parentId=138, menuName=修改配置, url=null, perms=configure:config:update, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:32:08 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:32:09','内网IP|0|0|内网IP|内网IP'),
(938,'MrBird','修改菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=165, parentId=138, menuName=修改配置, url=null, perms=generator:configure:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Thu Jun 13 22:32:19 CST 2019)\"','172.18.96.1','2019-06-13 14:32:20','内网IP|0|0|内网IP|内网IP'),
(939,'MrBird','新增菜单/按钮',6,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=166, parentId=139, menuName=生成代码, url=null, perms=generator:generate, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:32:50 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:32:51','内网IP|0|0|内网IP|内网IP'),
(940,'MrBird','新增菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=167, parentId=125, menuName=模板下载, url=null, perms=eximport:template, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:33:36 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:33:37','内网IP|0|0|内网IP|内网IP'),
(941,'MrBird','新增菜单/按钮',16,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=168, parentId=125, menuName=导出Excel, url=null, perms=eximport:export, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:33:56 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:33:57','内网IP|0|0|内网IP|内网IP'),
(942,'MrBird','新增菜单/按钮',4,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=169, parentId=125, menuName=导入Excel, url=null, perms=eximport:import, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:34:19 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:34:19','内网IP|0|0|内网IP|内网IP'),
(943,'MrBird','新增菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=170, parentId=10, menuName=导出Excel, url=null, perms=log:export, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:34:55 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:34:55','内网IP|0|0|内网IP|内网IP'),
(944,'MrBird','新增菜单/按钮',11,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=171, parentId=136, menuName=删除日志, url=null, perms=loginLog:delete, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:35:26 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:35:27','内网IP|0|0|内网IP|内网IP'),
(945,'MrBird','修改菜单/按钮',15,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=136, parentId=2, menuName=登录日志, url=/monitor/loginlog, perms=loginlog:view, icon=, type=0, orderNum=3, createTime=null, modifyTime=Thu Jun 13 22:35:56 CST 2019)\"','172.18.96.1','2019-06-13 14:35:56','内网IP|0|0|内网IP|内网IP'),
(946,'MrBird','修改菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=171, parentId=136, menuName=删除日志, url=null, perms=loginlog:delete, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Thu Jun 13 22:36:07 CST 2019)\"','172.18.96.1','2019-06-13 14:36:08','内网IP|0|0|内网IP|内网IP'),
(947,'MrBird','新增菜单/按钮',11,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=172, parentId=136, menuName=导出Excel, url=null, perms=loginlog:export, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:36:25 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:36:26','内网IP|0|0|内网IP|内网IP'),
(948,'MrBird','修改菜单/按钮',14,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=127, parentId=2, menuName=请求追踪, url=/monitor/httptrace, perms=httptrace:view, icon=, type=0, orderNum=6, createTime=null, modifyTime=Thu Jun 13 22:36:43 CST 2019)\"','172.18.96.1','2019-06-13 14:36:43','内网IP|0|0|内网IP|内网IP'),
(949,'MrBird','修改菜单/按钮',5,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=129, parentId=128, menuName=JVM信息, url=/monitor/jvm, perms=jvm:view, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Jun 13 22:36:50 CST 2019)\"','172.18.96.1','2019-06-13 14:36:51','内网IP|0|0|内网IP|内网IP'),
(950,'MrBird','修改菜单/按钮',5,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=130, parentId=128, menuName=Tomcat信息, url=/monitor/tomcat, perms=tomcat:view, icon=, type=0, orderNum=2, createTime=null, modifyTime=Thu Jun 13 22:36:57 CST 2019)\"','172.18.96.1','2019-06-13 14:36:57','内网IP|0|0|内网IP|内网IP'),
(951,'MrBird','修改菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=131, parentId=128, menuName=服务器信息, url=/monitor/server, perms=server:view, icon=, type=0, orderNum=3, createTime=null, modifyTime=Thu Jun 13 22:37:03 CST 2019)\"','172.18.96.1','2019-06-13 14:37:04','内网IP|0|0|内网IP|内网IP'),
(952,'MrBird','新增菜单/按钮',4,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=173, parentId=102, menuName=导出Excel, url=null, perms=job:export, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:37:24 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:37:25','内网IP|0|0|内网IP|内网IP'),
(953,'MrBird','新增菜单/按钮',5,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=174, parentId=109, menuName=导出Excel, url=null, perms=joblog:export, icon=null, type=1, orderNum=null, createTime=Thu Jun 13 22:37:46 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-13 14:37:46','内网IP|0|0|内网IP|内网IP'),
(954,'MrBird','修改菜单/按钮',7,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=174, parentId=109, menuName=导出Excel, url=null, perms=job:log:export, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Thu Jun 13 22:38:02 CST 2019)\"','172.18.96.1','2019-06-13 14:38:02','内网IP|0|0|内网IP|内网IP'),
(955,'MrBird','修改角色',75,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=2, roleName=注册账户, remark=注册账户，只可查看，不可操作, createTime=null, modifyTime=Thu Jun 13 22:39:57 CST 2019, menuIds=1,3,4,5,163,6,2,8,10,136,113,114,127,128,129,130,131,101,102,109,137,138,139,115,132,133,135,134,126,116,117,119,120,121,122,123,118,125)\"','172.18.96.1','2019-06-13 14:39:57','内网IP|0|0|内网IP|内网IP'),
(956,'MrBird','修改角色',67,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=2, roleName=注册账户, remark=注册账户，只可查看，不可操作, createTime=null, modifyTime=Thu Jun 13 22:42:14 CST 2019, menuIds=1,3,4,5,163,6,164,2,8,10,136,113,114,127,128,129,130,131,101,102,109,137,138,139,115,132,133,135,134,126,116,117,119,120,121,122,123,118,125)\"','172.18.96.1','2019-06-13 14:42:15','内网IP|0|0|内网IP|内网IP'),
(957,'MrBird','删除角色',129,'cc.mrbird.febs.system.controller.RoleController.deleteRoles()',' roleIds: \"76\"','192.168.33.1','2019-06-14 05:58:39','内网IP|0|0|内网IP|内网IP'),
(958,'MrBird','修改角色',242,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员，拥有所有操作权限, createTime=null, modifyTime=Fri Jun 14 14:38:42 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"','192.168.33.1','2019-06-14 06:38:43','内网IP|0|0|内网IP|内网IP'),
(959,'MrBird','修改用户',112,'cc.mrbird.febs.system.controller.UserController.updateUser()',' user: \"User(userId=6, username=tester, password=null, deptId=6, email=tester@qq.com, mobile=13888888888, status=1, createTime=null, modifyTime=Fri Jun 14 15:04:29 CST 2019, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=我是测试用户, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=68, roleName=null)\"','192.168.33.1','2019-06-14 07:04:30','内网IP|0|0|内网IP|内网IP'),
(960,'MrBird','修改角色',768,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=68, roleName=系统监控员, remark=负责系统监控模块, createTime=null, modifyTime=Fri Jun 14 15:05:10 CST 2019, menuIds=2,8,23,10,24,136,113,114,127,128,129,130,131)\"','192.168.33.1','2019-06-14 07:05:11','内网IP|0|0|内网IP|内网IP'),
(961,'MrBird','修改菜单/按钮',57,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=6, parentId=1, menuName=部门管理, url=/system/dept, perms=dept:view, icon=, type=0, orderNum=4, createTime=null, modifyTime=Fri Jun 14 19:55:59 CST 2019)\"','172.18.96.1','2019-06-14 19:56:00','内网IP|0|0|内网IP|内网IP'),
(962,'MrBird','修改角色',77,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=2, roleName=注册账户, remark=注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限, createTime=null, modifyTime=Fri Jun 14 20:47:47 CST 2019, menuIds=1,3,161,4,14,162,5,17,163,6,20,164,2,8,10,170,136,172,113,114,127,128,129,130,131,101,102,173,109,174,137,138,139,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"','172.18.96.1','2019-06-14 20:47:47','内网IP|0|0|内网IP|内网IP'),
(963,'MrBird','新增角色',61,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=77, roleName=Redis监控员, remark=负责Redis模块, createTime=Fri Jun 14 20:49:21 CST 2019, modifyTime=null, menuIds=2,113,114)\"','172.18.96.1','2019-06-14 20:49:22','内网IP|0|0|内网IP|内网IP'),
(964,'MrBird','新增角色',66,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=78, roleName=系统监控员, remark=负责整个系统监控模块, createTime=Fri Jun 14 20:50:06 CST 2019, modifyTime=null, menuIds=2,8,23,10,24,170,136,171,172,113,114,127,128,129,130,131)\"','172.18.96.1','2019-06-14 20:50:07','内网IP|0|0|内网IP|内网IP'),
(965,'MrBird','新增角色',62,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=79, roleName=跑批人员, remark=负责任务调度跑批模块, createTime=Fri Jun 14 20:51:01 CST 2019, modifyTime=null, menuIds=101,102,103,104,105,106,107,108,173,109,110,174)\"','172.18.96.1','2019-06-14 20:51:02','内网IP|0|0|内网IP|内网IP'),
(966,'MrBird','新增角色',58,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=80, roleName=开发人员, remark=拥有代码生成模块的权限, createTime=Fri Jun 14 20:51:25 CST 2019, modifyTime=null, menuIds=137,138,165,139,166)\"','172.18.96.1','2019-06-14 20:51:26','内网IP|0|0|内网IP|内网IP'),
(967,'MrBird','修改角色',72,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限(●\'◡\'●), createTime=null, modifyTime=Fri Jun 14 20:51:57 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"','172.18.96.1','2019-06-14 20:51:58','内网IP|0|0|内网IP|内网IP'),
(968,'MrBird','修改角色',27,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Fri Jun 14 20:52:14 CST 2019, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,113,114,127,128,129,130,131,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"','172.18.96.1','2019-06-14 20:52:14','内网IP|0|0|内网IP|内网IP'),
(969,'MrBird','新增用户',20,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=45, username=Scott, password=1d685729d113cfd03872f154939bee1c, deptId=null, email=scott@gmail.com, mobile=17722222222, status=1, createTime=Fri Jun 14 20:55:52 CST 2019, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=我是scott。, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=2, roleName=null)\"','172.18.96.1','2019-06-14 20:55:53','内网IP|0|0|内网IP|内网IP'),
(970,'MrBird','新增部门',14,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=7, parentId=0, deptName=开发部, orderNum=1, createTime=Fri Jun 14 20:56:40 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 20:56:41','内网IP|0|0|内网IP|内网IP'),
(971,'MrBird','新增部门',17,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=2, parentId=1, deptName=开发一部, orderNum=1, createTime=Fri Jun 14 20:58:46 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 20:58:46','内网IP|0|0|内网IP|内网IP'),
(972,'MrBird','新增部门',5,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=3, parentId=1, deptName=开发二部, orderNum=2, createTime=Fri Jun 14 20:58:55 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 20:58:56','内网IP|0|0|内网IP|内网IP'),
(973,'MrBird','新增部门',6,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=4, parentId=0, deptName=采购部, orderNum=2, createTime=Fri Jun 14 20:59:55 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 20:59:56','内网IP|0|0|内网IP|内网IP'),
(974,'MrBird','新增部门',13,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=5, parentId=0, deptName=财务部, orderNum=3, createTime=Fri Jun 14 21:00:08 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 21:00:08','内网IP|0|0|内网IP|内网IP'),
(975,'MrBird','新增部门',5,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=6, parentId=0, deptName=销售部, orderNum=4, createTime=Fri Jun 14 21:00:15 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 21:00:15','内网IP|0|0|内网IP|内网IP'),
(976,'MrBird','新增部门',5,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=7, parentId=0, deptName=工程部, orderNum=5, createTime=Fri Jun 14 21:00:41 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 21:00:42','内网IP|0|0|内网IP|内网IP'),
(977,'MrBird','新增部门',12,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=8, parentId=0, deptName=行政部, orderNum=6, createTime=Fri Jun 14 21:00:48 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 21:00:49','内网IP|0|0|内网IP|内网IP'),
(978,'MrBird','新增部门',4,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=9, parentId=0, deptName=人力资源部, orderNum=7, createTime=Fri Jun 14 21:01:14 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 21:01:14','内网IP|0|0|内网IP|内网IP'),
(979,'MrBird','新增部门',12,'cc.mrbird.febs.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=10, parentId=0, deptName=系统部, orderNum=7, createTime=Fri Jun 14 21:01:30 CST 2019, modifyTime=null)\"','172.18.96.1','2019-06-14 21:01:31','内网IP|0|0|内网IP|内网IP'),
(980,'MrBird','修改部门',15,'cc.mrbird.febs.system.controller.DeptController.updateDept()',' dept: \"Dept(deptId=9, parentId=0, deptName=人力资源部, orderNum=8, createTime=null, modifyTime=Fri Jun 14 21:01:34 CST 2019)\"','172.18.96.1','2019-06-14 21:01:34','内网IP|0|0|内网IP|内网IP'),
(981,'MrBird','修改用户',26,'cc.mrbird.febs.system.controller.UserController.updateUser()',' user: \"User(userId=2, username=Scott, password=null, deptId=10, email=scott@gmail.com, mobile=17722222222, status=1, createTime=null, modifyTime=Fri Jun 14 21:02:10 CST 2019, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=我是scott。, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=2, roleName=null)\"','172.18.96.1','2019-06-14 21:02:11','内网IP|0|0|内网IP|内网IP'),
(982,'MrBird','新增用户',15,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=3, username=Reina, password=1461afff857c02afbfb768aa3771503d, deptId=4, email=Reina@hotmail.com, mobile=17711111111, status=1, createTime=Fri Jun 14 21:07:37 CST 2019, modifyTime=null, lastLoginTime=null, sex=1, avatar=default.jpg, theme=black, isTab=1, description=由于公款私用，已被封禁。, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=77, roleName=null)\"','172.18.96.1','2019-06-14 21:07:38','内网IP|0|0|内网IP|内网IP'),
(983,'MrBird','修改用户',15,'cc.mrbird.febs.system.controller.UserController.updateUser()',' user: \"User(userId=3, username=Reina, password=null, deptId=4, email=Reina@hotmail.com, mobile=17711111111, status=0, createTime=null, modifyTime=Fri Jun 14 21:08:48 CST 2019, lastLoginTime=null, sex=1, avatar=null, theme=null, isTab=null, description=由于公款私用，已被封禁。, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=77, roleName=null)\"','172.18.96.1','2019-06-14 21:08:49','内网IP|0|0|内网IP|内网IP'),
(984,'MrBird','新增用户',14,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=4, username=Micaela, password=9f2daa2c7bed6870fcbb5b9a51d6300e, deptId=10, email=Micaela@163.com, mobile=17733333333, status=1, createTime=Fri Jun 14 21:10:13 CST 2019, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=我叫米克拉, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=78, roleName=null)\"','172.18.96.1','2019-06-14 21:10:13','内网IP|0|0|内网IP|内网IP'),
(985,'MrBird','新增用户',6,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=5, username=Jana, password=176679b77b3c3e352bd3b30ddc81083e, deptId=8, email=Jana@126.com, mobile=17744444444, status=1, createTime=Fri Jun 14 21:12:16 CST 2019, modifyTime=null, lastLoginTime=null, sex=1, avatar=default.jpg, theme=black, isTab=1, description=大家好，我叫简娜, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=79, roleName=null)\"','172.18.96.1','2019-06-14 21:12:16','内网IP|0|0|内网IP|内网IP'),
(986,'MrBird','新增用户',63,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=6, username=Georgie, password=dffc683378cdaa015a0ee9554c532225, deptId=3, email=Georgie@qq.com, mobile=17766666666, status=1, createTime=Fri Jun 14 21:15:09 CST 2019, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=1, description=生产环境执行rm -rf *，账号封禁中T T, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=80, roleName=null)\"','172.18.96.1','2019-06-14 21:15:09','内网IP|0|0|内网IP|内网IP'),
(987,'MrBird','修改用户',54,'cc.mrbird.febs.system.controller.UserController.updateUser()',' user: \"User(userId=6, username=Georgie, password=null, deptId=3, email=Georgie@qq.com, mobile=17766666666, status=1, createTime=null, modifyTime=Fri Jun 14 21:15:44 CST 2019, lastLoginTime=null, sex=2, avatar=null, theme=null, isTab=null, description=生产执行rm -rf *，账号封禁T T, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=80, roleName=null)\"','172.18.96.1','2019-06-14 21:15:44','内网IP|0|0|内网IP|内网IP'),
(988,'MrBird','新增用户',24,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=7, username=Margot, password=31379841b9f4bfde22b8b40471e9a6ce, deptId=9, email=Margot@qq.com, mobile=13444444444, status=1, createTime=Fri Jun 14 21:17:52 CST 2019, modifyTime=null, lastLoginTime=null, sex=1, avatar=default.jpg, theme=black, isTab=1, description=大家好我叫玛戈, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=77,78, roleName=null)\"','172.18.96.1','2019-06-14 21:17:53','内网IP|0|0|内网IP|内网IP'),
(989,'MrBird','修改用户',67,'cc.mrbird.febs.system.controller.UserController.updateUser()',' user: \"User(userId=7, username=Margot, password=null, deptId=9, email=Margot@qq.com, mobile=13444444444, status=1, createTime=null, modifyTime=Fri Jun 14 21:18:59 CST 2019, lastLoginTime=null, sex=1, avatar=null, theme=null, isTab=null, description=大家好我叫玛戈, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=78,79,80, roleName=null)\"','172.18.96.1','2019-06-14 21:18:59','内网IP|0|0|内网IP|内网IP'),
(990,'MrBird','删除角色',53,'cc.mrbird.febs.system.controller.RoleController.deleteRoles()',' roleIds: \"80\"','127.0.0.1','2019-09-02 20:58:42','内网IP|0|0|内网IP|内网IP'),
(991,'MrBird','删除角色',40,'cc.mrbird.febs.system.controller.RoleController.deleteRoles()',' roleIds: \"79\"','127.0.0.1','2019-09-02 20:58:45','内网IP|0|0|内网IP|内网IP'),
(992,'MrBird','删除菜单/按钮',58,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"101,137,115\"','127.0.0.1','2019-09-02 20:58:58','内网IP|0|0|内网IP|内网IP'),
(993,'MrBird','删除用户',99,'cc.mrbird.febs.system.controller.UserController.deleteUsers()',' userIds: \"5\"','127.0.0.1','2019-09-02 21:02:58','内网IP|0|0|内网IP|内网IP'),
(994,'MrBird','删除用户',33,'cc.mrbird.febs.system.controller.UserController.deleteUsers()',' userIds: \"6\"','127.0.0.1','2019-09-02 21:03:56','内网IP|0|0|内网IP|内网IP'),
(995,'MrBird','新增用户',43,'org.wayne.febs.system.controller.UserController.addUser()',' user: \"User(userId=9, username=Wayne, password=4d64758597b8355e345759f37d2b62e6, deptId=10, email=, mobile=, status=1, createTime=Thu Sep 05 22:25:23 CST 2019, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=正在努力学习编程(ಥ_ಥ) , deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null)\"','127.0.0.1','2019-09-05 22:25:23','内网IP|0|0|内网IP|内网IP');

/*Table structure for table `t_login_log` */

DROP TABLE IF EXISTS `t_login_log`;

CREATE TABLE `t_login_log` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登录日志表';

/*Data for the table `t_login_log` */

insert  into `t_login_log`(`ID`,`USERNAME`,`LOGIN_TIME`,`LOCATION`,`IP`,`SYSTEM`,`BROWSER`) values 
(64,'mrbird','2019-09-02 20:08:11','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(65,'mrbird','2019-09-02 20:25:25','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(66,'mrbird','2019-09-02 21:03:49','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(67,'scott','2019-09-02 23:30:09','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(68,'scott','2019-09-03 16:32:47','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(69,'mrbird','2019-09-04 17:28:21','内网IP|0|0|内网IP|内网IP','10.0.113.38','Windows 10','Chrome 76'),
(70,'mrbird','2019-09-04 17:28:50','内网IP|0|0|内网IP|内网IP','10.0.113.38','Windows 10','Chrome 76'),
(71,'mrbird','2019-09-04 17:28:58','内网IP|0|0|内网IP|内网IP','10.0.113.38','Windows 10','Chrome 76'),
(72,'mrbird','2019-09-04 17:29:04','内网IP|0|0|内网IP|内网IP','10.0.113.38','Windows 10','Chrome 76'),
(73,'scott','2019-09-04 17:29:16','内网IP|0|0|内网IP|内网IP','10.0.113.38','Windows 10','Chrome 76'),
(74,'scott','2019-09-04 17:29:23','内网IP|0|0|内网IP|内网IP','10.0.113.38','Windows 10','Chrome 76'),
(75,'mrbird','2019-09-04 17:30:55','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(76,'mrbird','2019-09-04 17:45:10','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(77,'test','2019-09-04 17:46:23','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(78,'mrbird','2019-09-04 19:09:12','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),
(79,'mrbird','2019-09-04 19:17:52','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),
(80,'mrbird','2019-09-04 19:20:32','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(81,'mrbird','2019-09-04 19:30:17','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(82,'mrbird','2019-09-05 09:54:02','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(83,'mrbird','2019-09-05 09:57:50','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(84,'mrbird','2019-09-05 10:01:53','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(85,'mrbird','2019-09-05 10:27:20','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),
(86,'mrbird','2019-09-05 21:21:15','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(87,'mrbird','2019-09-05 21:23:46','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),
(88,'mrbird','2019-09-05 21:30:12','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(89,'scott','2019-09-05 21:47:42','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(90,'mrbird','2019-09-05 21:51:27','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),
(91,'mrbird','2019-09-05 21:54:39','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),
(92,'mrbird','2019-09-05 21:57:33','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(93,'scott','2019-09-05 21:59:48','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(94,'mrbird','2019-09-05 22:02:18','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(95,'scott','2019-09-05 22:02:50','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(96,'scott','2019-09-05 22:15:32','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(97,'mrbird','2019-09-05 22:20:47','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76'),
(98,'Wayne','2019-09-05 22:26:17','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 76');

/*Table structure for table `t_menu` */

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '权限标识',
  `ICON` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

/*Data for the table `t_menu` */

insert  into `t_menu`(`MENU_ID`,`PARENT_ID`,`MENU_NAME`,`URL`,`PERMS`,`ICON`,`TYPE`,`ORDER_NUM`,`CREATE_TIME`,`MODIFY_TIME`) values 
(1,0,'系统管理',NULL,NULL,'layui-icon-setting','0',1,'2017-12-27 16:39:07',NULL),
(2,0,'系统监控','','','layui-icon-alert','0',2,'2017-12-27 16:45:51','2019-06-13 11:20:40'),
(3,1,'用户管理','/system/user','user:view','layui-icon-meh','0',1,'2017-12-27 16:47:13','2019-06-13 11:13:55'),
(4,1,'角色管理','/system/role','role:view','','0',2,'2017-12-27 16:48:09','2019-06-13 08:57:19'),
(5,1,'菜单管理','/system/menu','menu:view','','0',3,'2017-12-27 16:48:57','2019-06-13 08:57:34'),
(6,1,'部门管理','/system/dept','dept:view','','0',4,'2017-12-27 16:57:33','2019-06-14 19:56:00'),
(8,2,'在线用户','/monitor/online','online:view','','0',1,'2017-12-27 16:59:33','2019-06-13 14:30:31'),
(10,2,'系统日志','/monitor/log','log:view','','0',2,'2017-12-27 17:00:50','2019-06-13 14:30:37'),
(11,3,'新增用户',NULL,'user:add',NULL,'1',NULL,'2017-12-27 17:02:58',NULL),
(12,3,'修改用户',NULL,'user:update',NULL,'1',NULL,'2017-12-27 17:04:07',NULL),
(13,3,'删除用户',NULL,'user:delete',NULL,'1',NULL,'2017-12-27 17:04:58',NULL),
(14,4,'新增角色',NULL,'role:add',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),
(15,4,'修改角色',NULL,'role:update',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),
(16,4,'删除角色',NULL,'role:delete',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),
(17,5,'新增菜单',NULL,'menu:add',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),
(18,5,'修改菜单',NULL,'menu:update',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),
(19,5,'删除菜单',NULL,'menu:delete',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),
(20,6,'新增部门',NULL,'dept:add',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),
(21,6,'修改部门',NULL,'dept:update',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),
(22,6,'删除部门',NULL,'dept:delete',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),
(23,8,'踢出用户',NULL,'user:kickout',NULL,'1',NULL,'2017-12-27 17:11:13',NULL),
(24,10,'删除日志',NULL,'log:delete',NULL,'1',NULL,'2017-12-27 17:11:45','2019-06-06 05:56:40'),
(113,2,'Redis监控','/monitor/redis/info','redis:view','','0',4,'2018-06-28 14:29:42','2019-06-13 14:30:45'),
(114,2,'Redis终端','/monitor/redis/terminal','redis:terminal:view','','0',5,'2018-06-28 15:35:21','2019-06-13 14:30:54'),
(127,2,'请求追踪','/monitor/httptrace','httptrace:view','','0',6,'2019-05-27 19:06:38','2019-06-13 14:36:43'),
(128,2,'系统信息',NULL,NULL,NULL,'0',7,'2019-05-27 19:08:23',NULL),
(129,128,'JVM信息','/monitor/jvm','jvm:view','','0',1,'2019-05-27 19:08:50','2019-06-13 14:36:51'),
(130,128,'Tomcat信息','/monitor/tomcat','tomcat:view','','0',2,'2019-05-27 19:09:26','2019-06-13 14:36:57'),
(131,128,'服务器信息','/monitor/server','server:view','','0',3,'2019-05-27 19:10:07','2019-06-13 14:37:04'),
(136,2,'登录日志','/monitor/loginlog','loginlog:view','','0',3,'2019-05-29 15:56:15','2019-06-13 14:35:56'),
(160,3,'密码重置',NULL,'user:password:reset',NULL,'1',NULL,'2019-06-13 08:40:13',NULL),
(161,3,'导出Excel',NULL,'user:export',NULL,'1',NULL,'2019-06-13 08:40:34',NULL),
(162,4,'导出Excel',NULL,'role:export',NULL,'1',NULL,'2019-06-13 14:29:00','2019-06-13 14:29:11'),
(163,5,'导出Excel',NULL,'menu:export',NULL,'1',NULL,'2019-06-13 14:29:32',NULL),
(164,6,'导出Excel',NULL,'dept:export',NULL,'1',NULL,'2019-06-13 14:29:59',NULL),
(170,10,'导出Excel',NULL,'log:export',NULL,'1',NULL,'2019-06-13 14:34:55',NULL),
(171,136,'删除日志',NULL,'loginlog:delete',NULL,'1',NULL,'2019-06-13 14:35:27','2019-06-13 14:36:08'),
(172,136,'导出Excel',NULL,'loginlog:export',NULL,'1',NULL,'2019-06-13 14:36:26',NULL);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

/*Data for the table `t_role` */

insert  into `t_role`(`ROLE_ID`,`ROLE_NAME`,`REMARK`,`CREATE_TIME`,`MODIFY_TIME`) values 
(1,'系统管理员','系统管理员，拥有所有操作权限 ^_^','2019-06-14 16:23:11','2019-06-14 20:52:14'),
(2,'注册账户','注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限','2019-06-14 16:00:15','2019-06-14 20:47:47'),
(77,'Redis监控员','负责Redis模块','2019-06-14 20:49:22',NULL),
(78,'系统监控员','负责整个系统监控模块','2019-06-14 20:50:07',NULL);

/*Table structure for table `t_role_menu` */

DROP TABLE IF EXISTS `t_role_menu`;

CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单关联表';

/*Data for the table `t_role_menu` */

insert  into `t_role_menu`(`ROLE_ID`,`MENU_ID`) values 
(2,1),
(2,3),
(2,161),
(2,4),
(2,14),
(2,162),
(2,5),
(2,17),
(2,163),
(2,6),
(2,20),
(2,164),
(2,2),
(2,8),
(2,10),
(2,170),
(2,136),
(2,172),
(2,113),
(2,114),
(2,127),
(2,128),
(2,129),
(2,130),
(2,131),
(2,101),
(2,102),
(2,173),
(2,109),
(2,174),
(2,137),
(2,138),
(2,139),
(2,115),
(2,132),
(2,133),
(2,135),
(2,134),
(2,126),
(2,159),
(2,116),
(2,117),
(2,119),
(2,120),
(2,121),
(2,122),
(2,123),
(2,118),
(2,125),
(2,167),
(2,168),
(2,169),
(77,2),
(77,113),
(77,114),
(78,2),
(78,8),
(78,23),
(78,10),
(78,24),
(78,170),
(78,136),
(78,171),
(78,172),
(78,113),
(78,114),
(78,127),
(78,128),
(78,129),
(78,130),
(78,131),
(1,1),
(1,3),
(1,11),
(1,12),
(1,13),
(1,160),
(1,161),
(1,4),
(1,14),
(1,15),
(1,16),
(1,162),
(1,5),
(1,17),
(1,18),
(1,19),
(1,163),
(1,6),
(1,20),
(1,21),
(1,22),
(1,164),
(1,2),
(1,8),
(1,23),
(1,10),
(1,24),
(1,170),
(1,136),
(1,171),
(1,172),
(1,113),
(1,114),
(1,127),
(1,128),
(1,129),
(1,130),
(1,131),
(1,101),
(1,102),
(1,103),
(1,104),
(1,105),
(1,106),
(1,107),
(1,108),
(1,173),
(1,109),
(1,110),
(1,174),
(1,137),
(1,138),
(1,165),
(1,139),
(1,166),
(1,115),
(1,132),
(1,133),
(1,135),
(1,134),
(1,126),
(1,159),
(1,116),
(1,117),
(1,119),
(1,120),
(1,121),
(1,122),
(1,123),
(1,118),
(1,125),
(1,167),
(1,168),
(1,169);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `t_user` */

insert  into `t_user`(`USER_ID`,`USERNAME`,`PASSWORD`,`DEPT_ID`,`EMAIL`,`MOBILE`,`STATUS`,`CREATE_TIME`,`MODIFY_TIME`,`LAST_LOGIN_TIME`,`SSEX`,`IS_TAB`,`THEME`,`AVATAR`,`DESCRIPTION`) values 
(1,'MrBird','cb62ad1497597283961545d608f80241',1,'MrBird@qq.com','17788888888','1','2019-06-14 20:39:22','2019-06-14 20:44:42','2019-09-05 22:20:47','0','1','white','cnrhVkzwxjPwAaCfPbdc.png','正在努力学习编程(ಥ_ಥ) '),
(2,'Scott','1d685729d113cfd03872f154939bee1c',10,'scott@gmail.com','17722222222','1','2019-06-14 20:55:53','2019-06-14 21:05:43','2019-09-05 22:15:33','0','1','black','gaOngJwsRYRaVAuXXcmB.png','我是scott。'),
(3,'Reina','1461afff857c02afbfb768aa3771503d',4,'Reina@hotmail.com','17711111111','0','2019-06-14 21:07:38','2019-06-14 21:09:06','2019-06-14 21:08:26','1','1','black','5997fedcc7bd4cffbd350b40d1b5b987.jpg','由于公款私用，已被封禁。'),
(4,'Micaela','9f2daa2c7bed6870fcbb5b9a51d6300e',10,'Micaela@163.com','17733333333','1','2019-06-14 21:10:13','2019-06-14 21:11:26','2019-06-14 21:10:37','0','0','white','20180414165909.jpg','我叫米克拉'),
(7,'Margot','31379841b9f4bfde22b8b40471e9a6ce',9,'Margot@qq.com','13444444444','1','2019-06-14 21:17:53','2019-06-14 21:18:59','2019-06-14 21:18:07','1','1','white','20180414165834.jpg','大家好我叫玛戈'),
(9,'Wayne','4d64758597b8355e345759f37d2b62e6',10,'','','1','2019-09-05 22:25:23','2019-09-05 22:27:13','2019-09-05 22:26:17','0','1','black','5997fedcc7bd4cffbd350b40d1b5b9824.jpg','正在努力学习编程(ಥ_ಥ) ');

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`USER_ID`,`ROLE_ID`) values 
(1,1),
(2,2),
(3,77),
(4,78),
(7,78),
(8,2),
(9,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
