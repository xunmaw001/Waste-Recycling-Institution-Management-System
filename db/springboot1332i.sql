-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot1332i
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot1332i`
--

/*!40000 DROP DATABASE IF EXISTS `springboot1332i`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot1332i` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot1332i`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuorizhi`
--

DROP TABLE IF EXISTS `gongzuorizhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuorizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rizhibiaoti` varchar(200) DEFAULT NULL COMMENT '日志标题',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jilushijian` date DEFAULT NULL COMMENT '记录时间',
  `rizhineirong` longtext COMMENT '日志内容',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353539874 DEFAULT CHARSET=utf8 COMMENT='工作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuorizhi`
--

LOCK TABLES `gongzuorizhi` WRITE;
/*!40000 ALTER TABLE `gongzuorizhi` DISABLE KEYS */;
INSERT INTO `gongzuorizhi` VALUES (41,'2022-03-27 03:46:21','日志标题1','年份1','月份1','2022-03-27','2022-03-27','日志内容1','员工工号1','员工姓名1'),(42,'2022-03-27 03:46:21','日志标题2','年份2','月份2','2022-03-27','2022-03-27','日志内容2','员工工号2','员工姓名2'),(43,'2022-03-27 03:46:21','日志标题3','年份3','月份3','2022-03-27','2022-03-27','日志内容3','员工工号3','员工姓名3'),(44,'2022-03-27 03:46:21','日志标题4','年份4','月份4','2022-03-27','2022-03-27','日志内容4','员工工号4','员工姓名4'),(45,'2022-03-27 03:46:21','日志标题5','年份5','月份5','2022-03-27','2022-03-27','日志内容5','员工工号5','员工姓名5'),(46,'2022-03-27 03:46:21','日志标题6','年份6','月份6','2022-03-27','2022-03-27','日志内容6','员工工号6','员工姓名6'),(1648353539873,'2022-03-27 03:58:58','阿斯顿是a','2022','3月份','2022-03-28','2022-03-27','<p>阿斯弗阿斯顿发士大夫撒地方阿斯蒂芬 </p><p>阿斯蒂芬阿三打算地方</p>','11','张三');
/*!40000 ALTER TABLE `gongzuorizhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huishoujiage`
--

DROP TABLE IF EXISTS `huishoujiage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huishoujiage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huishoudidian` varchar(200) NOT NULL COMMENT '回收地点',
  `huishouwupin` varchar(200) NOT NULL COMMENT '回收物品',
  `huishoujiage` int(11) NOT NULL COMMENT '回收价格',
  `gengxinshijian` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353906723 DEFAULT CHARSET=utf8 COMMENT='回收价格';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huishoujiage`
--

LOCK TABLES `huishoujiage` WRITE;
/*!40000 ALTER TABLE `huishoujiage` DISABLE KEYS */;
INSERT INTO `huishoujiage` VALUES (151,'2022-03-27 03:46:21','回收地点1','回收物品1',1,'2022-03-27 11:46:21'),(152,'2022-03-27 03:46:21','回收地点2','回收物品2',2,'2022-03-27 11:46:21'),(153,'2022-03-27 03:46:21','回收地点3','回收物品3',3,'2022-03-27 11:46:21'),(154,'2022-03-27 03:46:21','回收地点4','回收物品4',4,'2022-03-27 11:46:21'),(155,'2022-03-27 03:46:21','回收地点5','回收物品5',5,'2022-03-27 11:46:21'),(156,'2022-03-27 03:46:21','回收地点6','回收物品6',6,'2022-03-27 11:46:21'),(1648353906722,'2022-03-27 04:05:06','阿斯蒂芬阿三','阿斯蒂芬阿三',111,'2022-03-16 00:00:00');
/*!40000 ALTER TABLE `huishoujiage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2022-03-27 03:46:21','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"员工工资\",\"评价\"],\"menu\":\"员工\",\"menuJump\":\"列表\",\"tableName\":\"yuangong\",\"parentMenuName\":\"员工管理\"}],\"menu\":\"员工管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"销假申请\"],\"menu\":\"员工请假\",\"menuJump\":\"列表\",\"tableName\":\"yuangongqingjia\",\"parentMenuName\":\"员工请假管理\"}],\"menu\":\"员工请假管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"销假申请\",\"menuJump\":\"列表\",\"tableName\":\"xiaojiashenqing\",\"parentMenuName\":\"销假申请管理\"}],\"menu\":\"销假申请管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"工作日志\",\"menuJump\":\"列表\",\"tableName\":\"gongzuorizhi\",\"parentMenuName\":\"工作日志管理\"}],\"menu\":\"工作日志管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"支付\",\"报表\"],\"menu\":\"员工工资\",\"menuJump\":\"列表\",\"tableName\":\"yuangonggongzi\",\"parentMenuName\":\"员工工资管理\"}],\"menu\":\"员工工资管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"任务汇报\"],\"menu\":\"员工任务\",\"menuJump\":\"列表\",\"tableName\":\"yuangongrenwu\",\"parentMenuName\":\"员工任务管理\"}],\"menu\":\"员工任务管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"任务汇报\",\"menuJump\":\"列表\",\"tableName\":\"renwuhuibao\",\"parentMenuName\":\"任务汇报管理\"}],\"menu\":\"任务汇报管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"借用\",\"归还\",\"报修\",\"维修入库\"],\"menu\":\"设备信息\",\"menuJump\":\"列表\",\"tableName\":\"shebeixinxi\",\"parentMenuName\":\"设备管理\"},{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"设备借用\",\"menuJump\":\"列表\",\"tableName\":\"shebeijieyong\",\"parentMenuName\":\"设备管理\"},{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"设备归还\",\"menuJump\":\"列表\",\"tableName\":\"shebeiguihai\",\"parentMenuName\":\"设备管理\"},{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"设备报修\",\"menuJump\":\"列表\",\"tableName\":\"shebeibaoxiu\",\"parentMenuName\":\"设备管理\"},{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"维修入库\",\"menuJump\":\"列表\",\"tableName\":\"weixiuruku\",\"parentMenuName\":\"设备管理\"}],\"menu\":\"设备管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"员工打卡\",\"menuJump\":\"列表\",\"tableName\":\"yuangongdaka\",\"parentMenuName\":\"员工打卡管理\"}],\"menu\":\"员工打卡管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"员工评价\",\"menuJump\":\"列表\",\"tableName\":\"yuangongpingjia\",\"parentMenuName\":\"员工评价管理\"}],\"menu\":\"员工评价管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"回收价格\",\"menuJump\":\"列表\",\"tableName\":\"huishoujiage\",\"parentMenuName\":\"回收价格管理\"}],\"menu\":\"回收价格管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"入住\",\"搬出\"],\"menu\":\"宿舍信息\",\"menuJump\":\"列表\",\"tableName\":\"sushexinxi\",\"parentMenuName\":\"宿舍信息管理\"}],\"menu\":\"宿舍信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"宿舍入住\",\"menuJump\":\"列表\",\"tableName\":\"susheruzhu\",\"parentMenuName\":\"宿舍入住管理\"}],\"menu\":\"宿舍入住管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"宿舍搬出\",\"menuJump\":\"列表\",\"tableName\":\"sushebanchu\",\"parentMenuName\":\"宿舍搬出管理\"}],\"menu\":\"宿舍搬出管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"tableName\":\"users\",\"parentMenuName\":\"管理员管理\"}],\"menu\":\"管理员管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"删除\"],\"menu\":\"菜单列表\",\"tableName\":\"menu\",\"parentMenuName\":\"系统管理\"}],\"menu\":\"系统管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"销假申请\"],\"menu\":\"员工请假\",\"menuJump\":\"列表\",\"tableName\":\"yuangongqingjia\"}],\"menu\":\"员工请假管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"销假申请\",\"menuJump\":\"列表\",\"tableName\":\"xiaojiashenqing\"}],\"menu\":\"销假申请管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"工作日志\",\"menuJump\":\"列表\",\"tableName\":\"gongzuorizhi\"}],\"menu\":\"工作日志管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\"],\"menu\":\"员工工资\",\"menuJump\":\"列表\",\"tableName\":\"yuangonggongzi\"}],\"menu\":\"员工工资管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"任务汇报\"],\"menu\":\"员工任务\",\"menuJump\":\"列表\",\"tableName\":\"yuangongrenwu\"}],\"menu\":\"员工任务管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"任务汇报\",\"menuJump\":\"列表\",\"tableName\":\"renwuhuibao\"}],\"menu\":\"任务汇报管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"借用\",\"归还\",\"报修\",\"维修入库\"],\"menu\":\"设备信息\",\"menuJump\":\"列表\",\"tableName\":\"shebeixinxi\"}],\"menu\":\"设备信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"设备借用\",\"menuJump\":\"列表\",\"tableName\":\"shebeijieyong\"}],\"menu\":\"设备借用管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"设备归还\",\"menuJump\":\"列表\",\"tableName\":\"shebeiguihai\"}],\"menu\":\"设备归还管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"设备报修\",\"menuJump\":\"列表\",\"tableName\":\"shebeibaoxiu\"}],\"menu\":\"设备报修管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"维修入库\",\"menuJump\":\"列表\",\"tableName\":\"weixiuruku\"}],\"menu\":\"维修入库管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"员工打卡\",\"menuJump\":\"列表\",\"tableName\":\"yuangongdaka\"}],\"menu\":\"员工打卡管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"menu\":\"员工评价\",\"menuJump\":\"列表\",\"tableName\":\"yuangongpingjia\"}],\"menu\":\"员工评价管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"回收价格\",\"menuJump\":\"列表\",\"tableName\":\"huishoujiage\"}],\"menu\":\"回收价格管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"menu\":\"宿舍入住\",\"menuJump\":\"列表\",\"tableName\":\"susheruzhu\"}],\"menu\":\"宿舍入住管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"宿舍搬出\",\"menuJump\":\"列表\",\"tableName\":\"sushebanchu\"}],\"menu\":\"宿舍搬出管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"员工\",\"tableName\":\"yuangong\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renwuhuibao`
--

DROP TABLE IF EXISTS `renwuhuibao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renwuhuibao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `yaoqiushijian` varchar(200) DEFAULT NULL COMMENT '要求时间',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `huishouwu` longtext COMMENT '回收物',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `huibaoshijian` datetime DEFAULT NULL COMMENT '汇报时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648354135077 DEFAULT CHARSET=utf8 COMMENT='任务汇报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renwuhuibao`
--

LOCK TABLES `renwuhuibao` WRITE;
/*!40000 ALTER TABLE `renwuhuibao` DISABLE KEYS */;
INSERT INTO `renwuhuibao` VALUES (71,'2022-03-27 03:46:21','员工工号1','员工姓名1','1111111111','要求时间1','工作内容1','回收物1','联系人1','13823888881','2022-03-27 11:46:21'),(72,'2022-03-27 03:46:21','员工工号2','员工姓名2','2222222222','要求时间2','工作内容2','回收物2','联系人2','13823888882','2022-03-27 11:46:21'),(73,'2022-03-27 03:46:21','员工工号3','员工姓名3','3333333333','要求时间3','工作内容3','回收物3','联系人3','13823888883','2022-03-27 11:46:21'),(74,'2022-03-27 03:46:21','员工工号4','员工姓名4','4444444444','要求时间4','工作内容4','回收物4','联系人4','13823888884','2022-03-27 11:46:21'),(75,'2022-03-27 03:46:21','员工工号5','员工姓名5','5555555555','要求时间5','工作内容5','回收物5','联系人5','13823888885','2022-03-27 11:46:21'),(76,'2022-03-27 03:46:21','员工工号6','员工姓名6','6666666666','要求时间6','工作内容6','回收物6','联系人6','13823888886','2022-03-27 11:46:21'),(1648354135076,'2022-03-27 04:08:54','11','张三','1648354145902','2022-03-27','<p>阿斯蒂芬阿斯蒂芬阿斯<img src=\"http://localhost:8080/springboot1332i/upload/1648353794932.jpg\">蒂芬撒地方阿斯蒂芬阿三阿三阿斯弗阿三</p>','<p>阿斯蒂芬阿斯顿飞洒地方撒旦飞洒阿斯顿飞洒地方撒</p>','王五','13966666666','2022-03-27 12:09:05');
/*!40000 ALTER TABLE `renwuhuibao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeibaoxiu`
--

DROP TABLE IF EXISTS `shebeibaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeibaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiubianhao` varchar(200) DEFAULT NULL COMMENT '维修编号',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '用途',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `baoxiubeizhu` longtext NOT NULL COMMENT '报修备注',
  `baoxiuyuanyin` longtext NOT NULL COMMENT '报修原因',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `baoxiushijian` datetime NOT NULL COMMENT '报修时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weixiubianhao` (`weixiubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353621881 DEFAULT CHARSET=utf8 COMMENT='设备报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeibaoxiu`
--

LOCK TABLES `shebeibaoxiu` WRITE;
/*!40000 ALTER TABLE `shebeibaoxiu` DISABLE KEYS */;
INSERT INTO `shebeibaoxiu` VALUES (111,'2022-03-27 03:46:21','1111111111','设备编号1','设备名称1','upload/shebeibaoxiu_tupian1.jpg',1,'设备类型1','用途1','注意事项1','设备详情1','位置1','报修备注1','报修原因1','员工工号1','员工姓名1','2022-03-27 11:46:21','是',''),(112,'2022-03-27 03:46:21','2222222222','设备编号2','设备名称2','upload/shebeibaoxiu_tupian2.jpg',2,'设备类型2','用途2','注意事项2','设备详情2','位置2','报修备注2','报修原因2','员工工号2','员工姓名2','2022-03-27 11:46:21','是',''),(113,'2022-03-27 03:46:21','3333333333','设备编号3','设备名称3','upload/shebeibaoxiu_tupian3.jpg',3,'设备类型3','用途3','注意事项3','设备详情3','位置3','报修备注3','报修原因3','员工工号3','员工姓名3','2022-03-27 11:46:21','是',''),(114,'2022-03-27 03:46:21','4444444444','设备编号4','设备名称4','upload/shebeibaoxiu_tupian4.jpg',4,'设备类型4','用途4','注意事项4','设备详情4','位置4','报修备注4','报修原因4','员工工号4','员工姓名4','2022-03-27 11:46:21','是',''),(115,'2022-03-27 03:46:21','5555555555','设备编号5','设备名称5','upload/shebeibaoxiu_tupian5.jpg',5,'设备类型5','用途5','注意事项5','设备详情5','位置5','报修备注5','报修原因5','员工工号5','员工姓名5','2022-03-27 11:46:21','是',''),(116,'2022-03-27 03:46:21','6666666666','设备编号6','设备名称6','upload/shebeibaoxiu_tupian6.jpg',6,'设备类型6','用途6','注意事项6','设备详情6','位置6','报修备注6','报修原因6','员工工号6','员工姓名6','2022-03-27 11:46:21','是',''),(1648353621880,'2022-03-27 04:00:20','1648353631054','5555555555','设备名称5','upload/shebeixinxi_tupian5.jpg',3,'设备类型5','用途5','注意事项5','<p>设备详情5</p>','位置5','<p>阿斯蒂芬阿斯蒂芬阿斯顿</p>','阿斯顿阿斯蒂芬啊','11','张三','2022-03-27 00:00:00','否','');
/*!40000 ALTER TABLE `shebeibaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeiguihai`
--

DROP TABLE IF EXISTS `shebeiguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeiguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '用途',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `guihaishijian` datetime NOT NULL COMMENT '归还时间',
  `guihaibeizhu` longtext NOT NULL COMMENT '归还备注',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353594212 DEFAULT CHARSET=utf8 COMMENT='设备归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeiguihai`
--

LOCK TABLES `shebeiguihai` WRITE;
/*!40000 ALTER TABLE `shebeiguihai` DISABLE KEYS */;
INSERT INTO `shebeiguihai` VALUES (101,'2022-03-27 03:46:21','设备编号1','设备名称1','upload/shebeiguihai_tupian1.jpg',1,'设备类型1','用途1','注意事项1','设备详情1','位置1','2022-03-27 11:46:21','归还备注1','员工工号1','员工姓名1','是',''),(102,'2022-03-27 03:46:21','设备编号2','设备名称2','upload/shebeiguihai_tupian2.jpg',2,'设备类型2','用途2','注意事项2','设备详情2','位置2','2022-03-27 11:46:21','归还备注2','员工工号2','员工姓名2','是',''),(103,'2022-03-27 03:46:21','设备编号3','设备名称3','upload/shebeiguihai_tupian3.jpg',3,'设备类型3','用途3','注意事项3','设备详情3','位置3','2022-03-27 11:46:21','归还备注3','员工工号3','员工姓名3','是',''),(104,'2022-03-27 03:46:21','设备编号4','设备名称4','upload/shebeiguihai_tupian4.jpg',4,'设备类型4','用途4','注意事项4','设备详情4','位置4','2022-03-27 11:46:21','归还备注4','员工工号4','员工姓名4','是',''),(105,'2022-03-27 03:46:21','设备编号5','设备名称5','upload/shebeiguihai_tupian5.jpg',5,'设备类型5','用途5','注意事项5','设备详情5','位置5','2022-03-27 11:46:21','归还备注5','员工工号5','员工姓名5','是',''),(106,'2022-03-27 03:46:21','设备编号6','设备名称6','upload/shebeiguihai_tupian6.jpg',6,'设备类型6','用途6','注意事项6','设备详情6','位置6','2022-03-27 11:46:21','归还备注6','员工工号6','员工姓名6','是',''),(1648353594211,'2022-03-27 03:59:53','6666666666','设备名称6','upload/shebeixinxi_tupian6.jpg',2,'设备类型6','用途6','注意事项6','<p>设备详情6</p>','位置6','2022-03-28 00:02:02','<p>阿斯蒂芬阿斯顿阿三</p>','11','张三','否','');
/*!40000 ALTER TABLE `shebeiguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeijieyong`
--

DROP TABLE IF EXISTS `shebeijieyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeijieyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '用途',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `jieyongshijian` datetime NOT NULL COMMENT '借用时间',
  `jieyongbeizhu` longtext NOT NULL COMMENT '借用备注',
  `jieyongyuanyin` longtext NOT NULL COMMENT '借用原因',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353572248 DEFAULT CHARSET=utf8 COMMENT='设备借用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeijieyong`
--

LOCK TABLES `shebeijieyong` WRITE;
/*!40000 ALTER TABLE `shebeijieyong` DISABLE KEYS */;
INSERT INTO `shebeijieyong` VALUES (91,'2022-03-27 03:46:21','设备编号1','设备名称1','upload/shebeijieyong_tupian1.jpg',1,'设备类型1','用途1','注意事项1','设备详情1','位置1','2022-03-27 11:46:21','借用备注1','借用原因1','员工工号1','员工姓名1'),(92,'2022-03-27 03:46:21','设备编号2','设备名称2','upload/shebeijieyong_tupian2.jpg',2,'设备类型2','用途2','注意事项2','设备详情2','位置2','2022-03-27 11:46:21','借用备注2','借用原因2','员工工号2','员工姓名2'),(93,'2022-03-27 03:46:21','设备编号3','设备名称3','upload/shebeijieyong_tupian3.jpg',3,'设备类型3','用途3','注意事项3','设备详情3','位置3','2022-03-27 11:46:21','借用备注3','借用原因3','员工工号3','员工姓名3'),(94,'2022-03-27 03:46:21','设备编号4','设备名称4','upload/shebeijieyong_tupian4.jpg',4,'设备类型4','用途4','注意事项4','设备详情4','位置4','2022-03-27 11:46:21','借用备注4','借用原因4','员工工号4','员工姓名4'),(95,'2022-03-27 03:46:21','设备编号5','设备名称5','upload/shebeijieyong_tupian5.jpg',5,'设备类型5','用途5','注意事项5','设备详情5','位置5','2022-03-27 11:46:21','借用备注5','借用原因5','员工工号5','员工姓名5'),(96,'2022-03-27 03:46:21','设备编号6','设备名称6','upload/shebeijieyong_tupian6.jpg',6,'设备类型6','用途6','注意事项6','设备详情6','位置6','2022-03-27 11:46:21','借用备注6','借用原因6','员工工号6','员工姓名6'),(1648353572247,'2022-03-27 03:59:31','6666666666','设备名称6','upload/shebeixinxi_tupian6.jpg',2,'设备类型6','用途6','注意事项6','<p>设备详情6</p>','位置6','2022-03-22 00:01:02','<p>阿斯蒂芬阿斯蒂芬撒地方撒</p>','阿斯顿撒地方','11','张三');
/*!40000 ALTER TABLE `shebeijieyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeixinxi`
--

DROP TABLE IF EXISTS `shebeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `yongtu` varchar(200) NOT NULL COMMENT '用途',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `shebeixiangqing` longtext COMMENT '设备详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353846712 DEFAULT CHARSET=utf8 COMMENT='设备信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeixinxi`
--

LOCK TABLES `shebeixinxi` WRITE;
/*!40000 ALTER TABLE `shebeixinxi` DISABLE KEYS */;
INSERT INTO `shebeixinxi` VALUES (81,'2022-03-27 03:46:21','1111111111','设备名称1','upload/shebeixinxi_tupian1.jpg',1,'设备类型1','用途1','注意事项1','位置1','设备详情1'),(82,'2022-03-27 03:46:21','2222222222','设备名称2','upload/shebeixinxi_tupian2.jpg',2,'设备类型2','用途2','注意事项2','位置2','设备详情2'),(83,'2022-03-27 03:46:21','3333333333','设备名称3','upload/shebeixinxi_tupian3.jpg',3,'设备类型3','用途3','注意事项3','位置3','设备详情3'),(84,'2022-03-27 03:46:21','4444444444','设备名称4','upload/shebeixinxi_tupian4.jpg',4,'设备类型4','用途4','注意事项4','位置4','设备详情4'),(85,'2022-03-27 03:46:21','5555555555','设备名称5','upload/shebeixinxi_tupian5.jpg',5,'设备类型5','用途5','注意事项5','位置5','设备详情5'),(86,'2022-03-27 03:46:21','6666666666','设备名称6','upload/shebeixinxi_tupian6.jpg',6,'设备类型6','用途6','注意事项6','位置6','设备详情6'),(1648353846711,'2022-03-27 04:04:06','1648353849174','阿斯蒂芬阿三','upload/1648353832838.jpg',11,'阿斯顿发士大夫','阿斯弗阿三','阿斯顿阿斯顿','阿斯蒂芬阿斯蒂芬','<p>阿斯蒂芬啊手动阀手动阀阿斯蒂芬撒</p><p><img src=\"http://localhost:8080/springboot1332i/upload/1648353844406.jpg\"></p>');
/*!40000 ALTER TABLE `shebeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushebanchu`
--

DROP TABLE IF EXISTS `sushebanchu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushebanchu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `loudonghao` varchar(200) DEFAULT NULL COMMENT '楼栋号',
  `susheweizhi` varchar(200) DEFAULT NULL COMMENT '宿舍位置',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353954340 DEFAULT CHARSET=utf8 COMMENT='宿舍搬出';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushebanchu`
--

LOCK TABLES `sushebanchu` WRITE;
/*!40000 ALTER TABLE `sushebanchu` DISABLE KEYS */;
INSERT INTO `sushebanchu` VALUES (181,'2022-03-27 03:46:21','宿舍号1','楼层1','楼栋号1','宿舍位置1',1,'员工工号1','员工姓名1'),(182,'2022-03-27 03:46:21','宿舍号2','楼层2','楼栋号2','宿舍位置2',1,'员工工号2','员工姓名2'),(183,'2022-03-27 03:46:21','宿舍号3','楼层3','楼栋号3','宿舍位置3',1,'员工工号3','员工姓名3'),(184,'2022-03-27 03:46:21','宿舍号4','楼层4','楼栋号4','宿舍位置4',1,'员工工号4','员工姓名4'),(185,'2022-03-27 03:46:21','宿舍号5','楼层5','楼栋号5','宿舍位置5',1,'员工工号5','员工姓名5'),(186,'2022-03-27 03:46:21','宿舍号6','楼层6','楼栋号6','宿舍位置6',1,'员工工号6','员工姓名6'),(1648353954339,'2022-03-27 04:05:53','1231','2','12','阿斯弗阿斯蒂芬',1,'11','张三');
/*!40000 ALTER TABLE `sushebanchu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `susheruzhu`
--

DROP TABLE IF EXISTS `susheruzhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `susheruzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `loudonghao` varchar(200) DEFAULT NULL COMMENT '楼栋号',
  `susheweizhi` varchar(200) DEFAULT NULL COMMENT '宿舍位置',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353943908 DEFAULT CHARSET=utf8 COMMENT='宿舍入住';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `susheruzhu`
--

LOCK TABLES `susheruzhu` WRITE;
/*!40000 ALTER TABLE `susheruzhu` DISABLE KEYS */;
INSERT INTO `susheruzhu` VALUES (171,'2022-03-27 03:46:21','宿舍号1','楼层1','楼栋号1','宿舍位置1',1,'员工工号1','员工姓名1'),(172,'2022-03-27 03:46:21','宿舍号2','楼层2','楼栋号2','宿舍位置2',1,'员工工号2','员工姓名2'),(173,'2022-03-27 03:46:21','宿舍号3','楼层3','楼栋号3','宿舍位置3',1,'员工工号3','员工姓名3'),(174,'2022-03-27 03:46:21','宿舍号4','楼层4','楼栋号4','宿舍位置4',1,'员工工号4','员工姓名4'),(175,'2022-03-27 03:46:21','宿舍号5','楼层5','楼栋号5','宿舍位置5',1,'员工工号5','员工姓名5'),(176,'2022-03-27 03:46:21','宿舍号6','楼层6','楼栋号6','宿舍位置6',1,'员工工号6','员工姓名6'),(1648353943907,'2022-03-27 04:05:43','1231','2','12','阿斯弗阿斯蒂芬',1,'11','张三');
/*!40000 ALTER TABLE `susheruzhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushexinxi`
--

DROP TABLE IF EXISTS `sushexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `loudonghao` varchar(200) DEFAULT NULL COMMENT '楼栋号',
  `susheweizhi` varchar(200) DEFAULT NULL COMMENT '宿舍位置',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `sushezhuangtai` varchar(200) DEFAULT NULL COMMENT '宿舍状态',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `kezhurenshu` int(11) DEFAULT NULL COMMENT '可住人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353934413 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushexinxi`
--

LOCK TABLES `sushexinxi` WRITE;
/*!40000 ALTER TABLE `sushexinxi` DISABLE KEYS */;
INSERT INTO `sushexinxi` VALUES (161,'2022-03-27 03:46:21','宿舍号1','楼层1','楼栋号1','宿舍位置1','两人间','可入住',1,1),(162,'2022-03-27 03:46:21','宿舍号2','楼层2','楼栋号2','宿舍位置2','两人间','可入住',2,2),(163,'2022-03-27 03:46:21','宿舍号3','楼层3','楼栋号3','宿舍位置3','两人间','可入住',3,3),(164,'2022-03-27 03:46:21','宿舍号4','楼层4','楼栋号4','宿舍位置4','两人间','可入住',4,4),(165,'2022-03-27 03:46:21','宿舍号5','楼层5','楼栋号5','宿舍位置5','两人间','可入住',5,5),(166,'2022-03-27 03:46:21','宿舍号6','楼层6','楼栋号6','宿舍位置6','两人间','可入住',6,6),(1648353934412,'2022-03-27 04:05:33','1231','2','12','阿斯弗阿斯蒂芬','六人间','可入住',2,6);
/*!40000 ALTER TABLE `sushexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1648353418091,'11','yuangong','员工','3sguttflau4kfu74dzfhfylu04cm2ryz','2022-03-27 03:57:03','2022-03-27 05:08:22'),(2,1,'abo','users','管理员','38vpptc575znpzybnw9iud6nbzrer3vc','2022-03-27 04:01:35','2022-03-27 05:08:10');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-27 03:46:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiuruku`
--

DROP TABLE IF EXISTS `weixiuruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiuruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiubianhao` varchar(200) DEFAULT NULL COMMENT '维修编号',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '用途',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `weixiuqingkuang` longtext NOT NULL COMMENT '维修情况',
  `beizhu` longtext NOT NULL COMMENT '备注',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `wanchengshijian` datetime NOT NULL COMMENT '完成时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353643532 DEFAULT CHARSET=utf8 COMMENT='维修入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiuruku`
--

LOCK TABLES `weixiuruku` WRITE;
/*!40000 ALTER TABLE `weixiuruku` DISABLE KEYS */;
INSERT INTO `weixiuruku` VALUES (121,'2022-03-27 03:46:21','维修编号1','设备编号1','设备名称1','upload/weixiuruku_tupian1.jpg',1,'设备类型1','用途1','注意事项1','设备详情1','位置1','维修情况1','备注1','员工工号1','员工姓名1','2022-03-27 11:46:21','是',''),(122,'2022-03-27 03:46:21','维修编号2','设备编号2','设备名称2','upload/weixiuruku_tupian2.jpg',2,'设备类型2','用途2','注意事项2','设备详情2','位置2','维修情况2','备注2','员工工号2','员工姓名2','2022-03-27 11:46:21','是',''),(123,'2022-03-27 03:46:21','维修编号3','设备编号3','设备名称3','upload/weixiuruku_tupian3.jpg',3,'设备类型3','用途3','注意事项3','设备详情3','位置3','维修情况3','备注3','员工工号3','员工姓名3','2022-03-27 11:46:21','是',''),(124,'2022-03-27 03:46:21','维修编号4','设备编号4','设备名称4','upload/weixiuruku_tupian4.jpg',4,'设备类型4','用途4','注意事项4','设备详情4','位置4','维修情况4','备注4','员工工号4','员工姓名4','2022-03-27 11:46:21','是',''),(125,'2022-03-27 03:46:21','维修编号5','设备编号5','设备名称5','upload/weixiuruku_tupian5.jpg',5,'设备类型5','用途5','注意事项5','设备详情5','位置5','维修情况5','备注5','员工工号5','员工姓名5','2022-03-27 11:46:21','是',''),(126,'2022-03-27 03:46:21','维修编号6','设备编号6','设备名称6','upload/weixiuruku_tupian6.jpg',6,'设备类型6','用途6','注意事项6','设备详情6','位置6','维修情况6','备注6','员工工号6','员工姓名6','2022-03-27 11:46:21','是',''),(1648353643531,'2022-03-27 04:00:43','1648353631054','5555555555','设备名称5','upload/shebeixinxi_tupian5.jpg',3,'设备类型5','用途5','注意事项5','<p>设备详情5</p>','位置5','<p>阿斯蒂芬撒地方阿斯蒂芬阿三</p>','a士大夫撒地方撒旦','11','张三','2022-03-24 00:00:00','否','');
/*!40000 ALTER TABLE `weixiuruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaojiashenqing`
--

DROP TABLE IF EXISTS `xiaojiashenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaojiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiabianhao` varchar(200) DEFAULT NULL COMMENT '请假编号',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `kaishishijian` varchar(200) DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` varchar(200) DEFAULT NULL COMMENT '结束时间',
  `qingjiashizhang` varchar(200) DEFAULT NULL COMMENT '请假时长',
  `xiaojiashuoming` varchar(200) DEFAULT NULL COMMENT '销假说明',
  `xiaojiashijian` datetime DEFAULT NULL COMMENT '销假时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648354116290 DEFAULT CHARSET=utf8 COMMENT='销假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaojiashenqing`
--

LOCK TABLES `xiaojiashenqing` WRITE;
/*!40000 ALTER TABLE `xiaojiashenqing` DISABLE KEYS */;
INSERT INTO `xiaojiashenqing` VALUES (31,'2022-03-27 03:46:21','请假编号1','请假类型1','开始时间1','结束时间1','请假时长1','销假说明1','2022-03-27 11:46:21','员工工号1','员工姓名1','部门1','岗位1','是',''),(32,'2022-03-27 03:46:21','请假编号2','请假类型2','开始时间2','结束时间2','请假时长2','销假说明2','2022-03-27 11:46:21','员工工号2','员工姓名2','部门2','岗位2','是',''),(33,'2022-03-27 03:46:21','请假编号3','请假类型3','开始时间3','结束时间3','请假时长3','销假说明3','2022-03-27 11:46:21','员工工号3','员工姓名3','部门3','岗位3','是',''),(34,'2022-03-27 03:46:21','请假编号4','请假类型4','开始时间4','结束时间4','请假时长4','销假说明4','2022-03-27 11:46:21','员工工号4','员工姓名4','部门4','岗位4','是',''),(35,'2022-03-27 03:46:21','请假编号5','请假类型5','开始时间5','结束时间5','请假时长5','销假说明5','2022-03-27 11:46:21','员工工号5','员工姓名5','部门5','岗位5','是',''),(36,'2022-03-27 03:46:21','请假编号6','请假类型6','开始时间6','结束时间6','请假时长6','销假说明6','2022-03-27 11:46:21','员工工号6','员工姓名6','部门6','岗位6','是',''),(1648354116289,'2022-03-27 04:08:35','1648353459091','事假','2022-03-28','2022-03-27','2','阿斯蒂芬阿三','2022-03-27 12:08:51','11','张三','后勤','职员','否','');
/*!40000 ALTER TABLE `xiaojiashenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353418092 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2022-03-27 03:46:20','员工工号1','123456','员工姓名1','男','部门1','岗位1','2022-03-27','13823888881','773890001@qq.com','440300199101010001','upload/yuangong_zhaopian1.jpg'),(12,'2022-03-27 03:46:20','员工工号2','123456','员工姓名2','男','部门2','岗位2','2022-03-27','13823888882','773890002@qq.com','440300199202020002','upload/yuangong_zhaopian2.jpg'),(13,'2022-03-27 03:46:20','员工工号3','123456','员工姓名3','男','部门3','岗位3','2022-03-27','13823888883','773890003@qq.com','440300199303030003','upload/yuangong_zhaopian3.jpg'),(14,'2022-03-27 03:46:20','员工工号4','123456','员工姓名4','男','部门4','岗位4','2022-03-27','13823888884','773890004@qq.com','440300199404040004','upload/yuangong_zhaopian4.jpg'),(15,'2022-03-27 03:46:20','员工工号5','123456','员工姓名5','男','部门5','岗位5','2022-03-27','13823888885','773890005@qq.com','440300199505050005','upload/yuangong_zhaopian5.jpg'),(16,'2022-03-27 03:46:20','员工工号6','123456','员工姓名6','男','部门6','岗位6','2022-03-27','13823888886','773890006@qq.com','440300199606060006','upload/yuangong_zhaopian6.jpg'),(1648353418091,'2022-03-27 03:56:58','11','11','张三','男','后勤','职员','2022-03-27','13922222222','22@163.com','412345678912345678','upload/1648353431626.jpg');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongdaka`
--

DROP TABLE IF EXISTS `yuangongdaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `kaoqinleixing` varchar(200) NOT NULL COMMENT '考勤类型',
  `dakashijian` datetime NOT NULL COMMENT '打卡时间',
  `dakabeizhu` varchar(200) DEFAULT NULL COMMENT '打卡备注',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353675448 DEFAULT CHARSET=utf8 COMMENT='员工打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongdaka`
--

LOCK TABLES `yuangongdaka` WRITE;
/*!40000 ALTER TABLE `yuangongdaka` DISABLE KEYS */;
INSERT INTO `yuangongdaka` VALUES (131,'2022-03-27 03:46:21','员工工号1','员工姓名1','性别1','部门1','岗位1','签到','2022-03-27 11:46:21','打卡备注1',1,1,'宇宙银河系地球1号'),(132,'2022-03-27 03:46:21','员工工号2','员工姓名2','性别2','部门2','岗位2','签到','2022-03-27 11:46:21','打卡备注2',2,2,'宇宙银河系地球2号'),(133,'2022-03-27 03:46:21','员工工号3','员工姓名3','性别3','部门3','岗位3','签到','2022-03-27 11:46:21','打卡备注3',3,3,'宇宙银河系地球3号'),(134,'2022-03-27 03:46:21','员工工号4','员工姓名4','性别4','部门4','岗位4','签到','2022-03-27 11:46:21','打卡备注4',4,4,'宇宙银河系地球4号'),(135,'2022-03-27 03:46:21','员工工号5','员工姓名5','性别5','部门5','岗位5','签到','2022-03-27 11:46:21','打卡备注5',5,5,'宇宙银河系地球5号'),(136,'2022-03-27 03:46:21','员工工号6','员工姓名6','性别6','部门6','岗位6','签到','2022-03-27 11:46:21','打卡备注6',6,6,'宇宙银河系地球6号'),(1648353675447,'2022-03-27 04:01:15','11','张三','男','后勤','职员','签到','2022-03-27 12:01:26','阿斯蒂芬阿三阿三',116.401,39.9369,'北京市东城区交道口街道景阳胡同南锣鼓巷');
/*!40000 ALTER TABLE `yuangongdaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangonggongzi`
--

DROP TABLE IF EXISTS `yuangonggongzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangonggongzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianyuefen` varchar(200) NOT NULL COMMENT '年月份',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `dixin` float NOT NULL COMMENT '底薪',
  `quanqinjiang` float NOT NULL COMMENT '全勤奖',
  `jiabanfei` float NOT NULL COMMENT '加班费',
  `qitakoukuan` float NOT NULL COMMENT '其它扣款',
  `jine` float DEFAULT NULL COMMENT '金额',
  `gongzibeizhu` varchar(200) DEFAULT NULL COMMENT '工资备注',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353740523 DEFAULT CHARSET=utf8 COMMENT='员工工资';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangonggongzi`
--

LOCK TABLES `yuangonggongzi` WRITE;
/*!40000 ALTER TABLE `yuangonggongzi` DISABLE KEYS */;
INSERT INTO `yuangonggongzi` VALUES (51,'2022-03-27 03:46:21','年月份1','员工工号1','员工姓名1','部门1','岗位1',1,1,1,1,1,'工资备注1','2022-03-27 11:46:21','未支付'),(52,'2022-03-27 03:46:21','年月份2','员工工号2','员工姓名2','部门2','岗位2',2,2,2,2,2,'工资备注2','2022-03-27 11:46:21','未支付'),(53,'2022-03-27 03:46:21','年月份3','员工工号3','员工姓名3','部门3','岗位3',3,3,3,3,3,'工资备注3','2022-03-27 11:46:21','未支付'),(54,'2022-03-27 03:46:21','年月份4','员工工号4','员工姓名4','部门4','岗位4',4,4,4,4,4,'工资备注4','2022-03-27 11:46:21','未支付'),(55,'2022-03-27 03:46:21','年月份5','员工工号5','员工姓名5','部门5','岗位5',5,5,5,5,5,'工资备注5','2022-03-27 11:46:21','未支付'),(56,'2022-03-27 03:46:21','年月份6','员工工号6','员工姓名6','部门6','岗位6',6,6,6,6,6,'工资备注6','2022-03-27 11:46:21','未支付'),(1648353740522,'2022-03-27 04:02:19','3月份','11','张三','后勤','职员',2,11,2,1,14,'阿斯蒂芬阿三','2022-03-27 12:02:26','已支付');
/*!40000 ALTER TABLE `yuangonggongzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongpingjia`
--

DROP TABLE IF EXISTS `yuangongpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingjiabianhao` varchar(200) DEFAULT NULL COMMENT '评价编号',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `pingjia` varchar(200) NOT NULL COMMENT '评价',
  `pingyu` longtext COMMENT '评语',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353880196 DEFAULT CHARSET=utf8 COMMENT='员工评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongpingjia`
--

LOCK TABLES `yuangongpingjia` WRITE;
/*!40000 ALTER TABLE `yuangongpingjia` DISABLE KEYS */;
INSERT INTO `yuangongpingjia` VALUES (141,'2022-03-27 03:46:21','评价编号1','员工工号1','员工姓名1','部门1','优秀','评语1','2022-03-27 11:46:21'),(142,'2022-03-27 03:46:21','评价编号2','员工工号2','员工姓名2','部门2','优秀','评语2','2022-03-27 11:46:21'),(143,'2022-03-27 03:46:21','评价编号3','员工工号3','员工姓名3','部门3','优秀','评语3','2022-03-27 11:46:21'),(144,'2022-03-27 03:46:21','评价编号4','员工工号4','员工姓名4','部门4','优秀','评语4','2022-03-27 11:46:21'),(145,'2022-03-27 03:46:21','评价编号5','员工工号5','员工姓名5','部门5','优秀','评语5','2022-03-27 11:46:21'),(146,'2022-03-27 03:46:21','评价编号6','员工工号6','员工姓名6','部门6','优秀','评语6','2022-03-27 11:46:21'),(1648353880195,'2022-03-27 04:04:39','123113413','11','张三','后勤','合格','暗室逢灯撒','2022-03-27 12:04:54');
/*!40000 ALTER TABLE `yuangongpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongqingjia`
--

DROP TABLE IF EXISTS `yuangongqingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiabianhao` varchar(200) DEFAULT NULL COMMENT '请假编号',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `qingjialiyou` longtext COMMENT '请假理由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingjiabianhao` (`qingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353495294 DEFAULT CHARSET=utf8 COMMENT='员工请假';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongqingjia`
--

LOCK TABLES `yuangongqingjia` WRITE;
/*!40000 ALTER TABLE `yuangongqingjia` DISABLE KEYS */;
INSERT INTO `yuangongqingjia` VALUES (21,'2022-03-27 03:46:20','1111111111','年假','员工工号1','员工姓名1','岗位1','部门1',1,'2022-03-27','2022-03-27','2022-03-27 11:46:20','请假理由1','是','',1),(22,'2022-03-27 03:46:21','2222222222','年假','员工工号2','员工姓名2','岗位2','部门2',2,'2022-03-27','2022-03-27','2022-03-27 11:46:21','请假理由2','是','',2),(23,'2022-03-27 03:46:21','3333333333','年假','员工工号3','员工姓名3','岗位3','部门3',3,'2022-03-27','2022-03-27','2022-03-27 11:46:21','请假理由3','是','',3),(24,'2022-03-27 03:46:21','4444444444','年假','员工工号4','员工姓名4','岗位4','部门4',4,'2022-03-27','2022-03-27','2022-03-27 11:46:21','请假理由4','是','',4),(25,'2022-03-27 03:46:21','5555555555','年假','员工工号5','员工姓名5','岗位5','部门5',5,'2022-03-27','2022-03-27','2022-03-27 11:46:21','请假理由5','是','',5),(26,'2022-03-27 03:46:21','6666666666','年假','员工工号6','员工姓名6','岗位6','部门6',6,'2022-03-27','2022-03-27','2022-03-27 11:46:21','请假理由6','是','',6),(1648353495293,'2022-03-27 03:58:15','1648353459091','事假','11','张三','职员','后勤',22,'2022-03-28','2022-03-27','2022-03-27 11:57:39','dsfas阿斯蒂芬阿斯蒂芬撒旦','是','阿斯蒂芬阿三阿斯蒂芬阿三',NULL);
/*!40000 ALTER TABLE `yuangongqingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongrenwu`
--

DROP TABLE IF EXISTS `yuangongrenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongrenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `yaoqiushijian` date DEFAULT NULL COMMENT '要求时间',
  `renwuhuibao` varchar(200) DEFAULT NULL COMMENT '任务汇报',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiafaren` varchar(200) DEFAULT NULL COMMENT '下发人',
  `xiafashijian` datetime DEFAULT NULL COMMENT '下发时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648353797467 DEFAULT CHARSET=utf8 COMMENT='员工任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongrenwu`
--

LOCK TABLES `yuangongrenwu` WRITE;
/*!40000 ALTER TABLE `yuangongrenwu` DISABLE KEYS */;
INSERT INTO `yuangongrenwu` VALUES (61,'2022-03-27 03:46:21','员工工号1','员工姓名1','工作内容1','2022-03-27','已汇报','联系人1','13823888881','下发人1','2022-03-27 11:46:21'),(62,'2022-03-27 03:46:21','员工工号2','员工姓名2','工作内容2','2022-03-27','已汇报','联系人2','13823888882','下发人2','2022-03-27 11:46:21'),(63,'2022-03-27 03:46:21','员工工号3','员工姓名3','工作内容3','2022-03-27','已汇报','联系人3','13823888883','下发人3','2022-03-27 11:46:21'),(64,'2022-03-27 03:46:21','员工工号4','员工姓名4','工作内容4','2022-03-27','已汇报','联系人4','13823888884','下发人4','2022-03-27 11:46:21'),(65,'2022-03-27 03:46:21','员工工号5','员工姓名5','工作内容5','2022-03-27','已汇报','联系人5','13823888885','下发人5','2022-03-27 11:46:21'),(66,'2022-03-27 03:46:21','员工工号6','员工姓名6','工作内容6','2022-03-27','已汇报','联系人6','13823888886','下发人6','2022-03-27 11:46:21'),(1648353797466,'2022-03-27 04:03:16','11','张三','<p>阿斯蒂芬阿斯蒂芬阿斯<img src=\"http://localhost:8080/springboot1332i/upload/1648353794932.jpg\">蒂芬撒地方阿斯蒂芬阿三阿三阿斯弗阿三</p><p><br></p>','2022-03-27','已汇报','王五','13966666666','阿斯蒂芬阿三','2022-03-27 12:03:00');
/*!40000 ALTER TABLE `yuangongrenwu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 17:05:36
