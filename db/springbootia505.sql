-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootia505
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
-- Current Database: `springbootia505`
--

/*!40000 DROP DATABASE IF EXISTS `springbootia505`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootia505` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootia505`;

--
-- Table structure for table `bumenxinxi`
--

DROP TABLE IF EXISTS `bumenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenzhuguan` varchar(200) NOT NULL COMMENT '部门主管',
  `bumenrenshu` int(11) DEFAULT NULL COMMENT '部门人数',
  `bumendianhua` varchar(200) DEFAULT NULL COMMENT '部门电话',
  `bumenjieshao` longtext COMMENT '部门介绍',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumenbianhao` (`bumenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647097878792 DEFAULT CHARSET=utf8 COMMENT='部门信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumenxinxi`
--

LOCK TABLES `bumenxinxi` WRITE;
/*!40000 ALTER TABLE `bumenxinxi` DISABLE KEYS */;
INSERT INTO `bumenxinxi` VALUES (31,'2022-03-12 14:58:36','1111111111','部门名称1','部门主管1',1,'部门电话1','部门介绍1','upload/bumenxinxi_fengmian1.jpg','2022-03-12 22:58:36',1),(32,'2022-03-12 14:58:36','2222222222','部门名称2','部门主管2',2,'部门电话2','部门介绍2','upload/bumenxinxi_fengmian2.jpg','2022-03-12 22:58:36',2),(33,'2022-03-12 14:58:36','3333333333','部门名称3','部门主管3',3,'部门电话3','部门介绍3','upload/bumenxinxi_fengmian3.jpg','2022-03-12 22:58:36',3),(34,'2022-03-12 14:58:36','4444444444','部门名称4','部门主管4',4,'部门电话4','部门介绍4','upload/bumenxinxi_fengmian4.jpg','2022-03-12 23:13:42',6),(35,'2022-03-12 14:58:36','5555555555','部门名称5','部门主管5',5,'部门电话5','部门介绍5','upload/bumenxinxi_fengmian5.jpg','2022-03-12 22:58:36',5),(36,'2022-03-12 14:58:36','6666666666','部门名称6','部门主管6',6,'部门电话6','部门介绍6','upload/bumenxinxi_fengmian6.jpg','2022-03-12 22:58:36',6),(1647097878791,'2022-03-12 15:11:18','1647097866473','第一部门','水电费 ',33,'1112223333','<p>地方给对方给对方给对方给对方地方给对方给对方给对方给对方地方给对方给对方给对方给对方地方给对方给对方给对方给对方地方给对方给对方给对方给对方地方给对方给对方给对方给对方地方给对方给对方给对方给对方地方给对方给对方给对方给对方地方给对方给对方给对方给对方</p>','upload/1647097873716.jpg','2022-03-12 23:14:00',2);
/*!40000 ALTER TABLE `bumenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'picture1','upload/1647097955138.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daibanshixiang`
--

DROP TABLE IF EXISTS `daibanshixiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daibanshixiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `daibanshijian` datetime NOT NULL COMMENT '待办时间',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647098068131 DEFAULT CHARSET=utf8 COMMENT='待办事项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daibanshixiang`
--

LOCK TABLES `daibanshixiang` WRITE;
/*!40000 ALTER TABLE `daibanshixiang` DISABLE KEYS */;
INSERT INTO `daibanshixiang` VALUES (61,'2022-03-12 14:58:36','标题1','内容1','2022-03-12 22:58:36','2022-03-12','账号1','姓名1','upload/daibanshixiang_zhaopian1.jpg',1),(62,'2022-03-12 14:58:36','标题2','内容2','2022-03-12 22:58:36','2022-03-12','账号2','姓名2','upload/daibanshixiang_zhaopian2.jpg',2),(63,'2022-03-12 14:58:36','标题3','内容3','2022-03-12 22:58:36','2022-03-12','账号3','姓名3','upload/daibanshixiang_zhaopian3.jpg',3),(64,'2022-03-12 14:58:36','标题4','内容4','2022-03-12 22:58:36','2022-03-12','账号4','姓名4','upload/daibanshixiang_zhaopian4.jpg',4),(65,'2022-03-12 14:58:36','标题5','内容5','2022-03-12 22:58:36','2022-03-12','账号5','姓名5','upload/daibanshixiang_zhaopian5.jpg',5),(66,'2022-03-12 14:58:36','标题6','内容6','2022-03-12 22:58:36','2022-03-12','账号6','姓名6','upload/daibanshixiang_zhaopian6.jpg',6),(1647098068130,'2022-03-12 15:14:28','地方三房电商发送到发送到','水电费是发生发生时代发时代发送到发多少发送到送到发送到水电费是发生发生时代发时代发送到发多少发送到送到发送到水电费是发生发生时代发时代发送到发多少发送到送到发送到','2022-03-14 23:14:18','2022-03-12','11','时代','upload/1647098052267.jpg',1647098008247);
/*!40000 ALTER TABLE `daibanshixiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzixinxi`
--

DROP TABLE IF EXISTS `gongzixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuefen` varchar(200) NOT NULL COMMENT '月份',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `jibengongzi` int(11) DEFAULT NULL COMMENT '基本工资',
  `jiabangongzi` int(11) DEFAULT NULL COMMENT '加班工资',
  `jixiaojiangjin` int(11) DEFAULT NULL COMMENT '绩效奖金',
  `qitabuzhu` int(11) DEFAULT NULL COMMENT '其他补助',
  `koukuanjine` int(11) DEFAULT NULL COMMENT '扣款金额',
  `shifagongzi` int(11) DEFAULT NULL COMMENT '实发工资',
  `koukuanyuanyin` longtext COMMENT '扣款原因',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647098124241 DEFAULT CHARSET=utf8 COMMENT='工资信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzixinxi`
--

LOCK TABLES `gongzixinxi` WRITE;
/*!40000 ALTER TABLE `gongzixinxi` DISABLE KEYS */;
INSERT INTO `gongzixinxi` VALUES (71,'2022-03-12 14:58:36','月份1','upload/gongzixinxi_fengmian1.jpg','账号1','姓名1','部门1',1,1,1,1,1,1,'扣款原因1','2022-03-12',1),(72,'2022-03-12 14:58:36','月份2','upload/gongzixinxi_fengmian2.jpg','账号2','姓名2','部门2',2,2,2,2,2,2,'扣款原因2','2022-03-12',2),(73,'2022-03-12 14:58:36','月份3','upload/gongzixinxi_fengmian3.jpg','账号3','姓名3','部门3',3,3,3,3,3,3,'扣款原因3','2022-03-12',3),(74,'2022-03-12 14:58:36','月份4','upload/gongzixinxi_fengmian4.jpg','账号4','姓名4','部门4',4,4,4,4,4,4,'扣款原因4','2022-03-12',4),(75,'2022-03-12 14:58:36','月份5','upload/gongzixinxi_fengmian5.jpg','账号5','姓名5','部门5',5,5,5,5,5,5,'扣款原因5','2022-03-12',5),(76,'2022-03-12 14:58:36','月份6','upload/gongzixinxi_fengmian6.jpg','账号6','姓名6','部门6',6,6,6,6,6,6,'扣款原因6','2022-03-12',6),(1647097942815,'2022-03-12 15:12:22','8月份','upload/1647097934944.jpg','账号2','姓名2','部门2',111,222,222,11111,222,11444,'是发多少分数分数发送到','2022-03-12',NULL),(1647098124240,'2022-03-12 15:15:23','8月份','upload/1647098117020.jpg','11','时代','第一部门',1111,333,222,33,333,1366,'水电费时代发送到发送到','2022-03-12',NULL);
/*!40000 ALTER TABLE `gongzixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyijilu`
--

DROP TABLE IF EXISTS `huiyijilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyibianhao` varchar(200) DEFAULT NULL COMMENT '会议编号',
  `huiyimingcheng` varchar(200) DEFAULT NULL COMMENT '会议名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `huiyizhuti` varchar(200) NOT NULL COMMENT '会议主题',
  `canhuirenyuan` longtext NOT NULL COMMENT '参会人员',
  `neirongjilu` longtext COMMENT '内容记录',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647097907639 DEFAULT CHARSET=utf8 COMMENT='会议记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyijilu`
--

LOCK TABLES `huiyijilu` WRITE;
/*!40000 ALTER TABLE `huiyijilu` DISABLE KEYS */;
INSERT INTO `huiyijilu` VALUES (51,'2022-03-12 14:58:36','会议编号1','会议名称1','地址1','会议主题1','参会人员1','内容记录1','2022-03-12 22:58:36','2022-03-12 22:58:36','upload/huiyijilu_fengmian1.jpg','2022-03-12 22:58:36',1),(52,'2022-03-12 14:58:36','会议编号2','会议名称2','地址2','会议主题2','参会人员2','内容记录2','2022-03-12 22:58:36','2022-03-12 22:58:36','upload/huiyijilu_fengmian2.jpg','2022-03-12 22:58:36',2),(53,'2022-03-12 14:58:36','会议编号3','会议名称3','地址3','会议主题3','参会人员3','内容记录3','2022-03-12 22:58:36','2022-03-12 22:58:36','upload/huiyijilu_fengmian3.jpg','2022-03-12 22:58:36',3),(54,'2022-03-12 14:58:36','会议编号4','会议名称4','地址4','会议主题4','参会人员4','内容记录4','2022-03-12 22:58:36','2022-03-12 22:58:36','upload/huiyijilu_fengmian4.jpg','2022-03-12 23:13:44',5),(55,'2022-03-12 14:58:36','会议编号5','会议名称5','地址5','会议主题5','参会人员5','内容记录5','2022-03-12 22:58:36','2022-03-12 22:58:36','upload/huiyijilu_fengmian5.jpg','2022-03-12 23:12:48',6),(56,'2022-03-12 14:58:36','会议编号6','会议名称6','地址6','会议主题6','参会人员6','内容记录6','2022-03-12 22:58:36','2022-03-12 22:58:36','upload/huiyijilu_fengmian6.jpg','2022-03-12 22:58:36',6),(1647097907638,'2022-03-12 15:11:47','001','盛世嫡妃','时代发生','时代发生','第三方胜多负少的发送到发送到发生发送到发送到发生第三方胜多负少的发送到发送到发生发送到发送到发生','<p>第三方胜多负少的发送到发送到发生发送到发送到发生第三方胜多负少的发送到发送到发生发送到发送到发生第三方胜多负少的发送到发送到发生发送到发送到发生第三方胜多负少的发送到发送到发生发送到发送到发生第三方胜多负少的发送到发送到发生发送到发送到发生第三方胜多负少的发送到发送到发生发送到发送到发生第三方胜多负少的发送到发送到发生发送到发送到发生</p>','2022-03-12 23:11:31','2022-03-12 23:11:33','upload/1647097901328.jpg','2022-03-12 23:14:03',1);
/*!40000 ALTER TABLE `huiyijilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647098089984 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2022-03-12 14:58:36',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(92,'2022-03-12 14:58:36',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(93,'2022-03-12 14:58:36',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(94,'2022-03-12 14:58:36',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(95,'2022-03-12 14:58:36',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(96,'2022-03-12 14:58:36',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(1647098089983,'2022-03-12 15:14:49',1647098008247,'11','地方时代发送到',NULL,'水电费时代',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647098045407 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1647098028797,'2022-03-12 15:13:47',1647098008247,1647097848404,'tongzhigonggao','水电费时代','upload/1647097842580.jpg','1',NULL),(1647098045406,'2022-03-12 15:14:05',1647098008247,1647097907638,'huiyijilu','盛世嫡妃','upload/1647097901328.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','fabrux9wh3htrbkjr7lyu8nmmhhhtqzt','2022-03-12 15:10:35','2022-03-12 16:15:03'),(2,1647098008247,'11','yuangong','员工','j8wbpkssae2n1z8q18ovs9qr6fjjsn0h','2022-03-12 15:13:30','2022-03-12 16:13:31');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhigonggao`
--

DROP TABLE IF EXISTS `tongzhigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647097848405 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhigonggao`
--

LOCK TABLES `tongzhigonggao` WRITE;
/*!40000 ALTER TABLE `tongzhigonggao` DISABLE KEYS */;
INSERT INTO `tongzhigonggao` VALUES (11,'2022-03-12 14:58:36','标题1','简介1','2022-03-12','upload/tongzhigonggao_fengmian1.jpg','内容1','2022-03-12 22:58:36',1),(12,'2022-03-12 14:58:36','标题2','简介2','2022-03-12','upload/tongzhigonggao_fengmian2.jpg','内容2','2022-03-12 22:58:36',2),(13,'2022-03-12 14:58:36','标题3','简介3','2022-03-12','upload/tongzhigonggao_fengmian3.jpg','内容3','2022-03-12 22:58:36',3),(14,'2022-03-12 14:58:36','标题4','简介4','2022-03-12','upload/tongzhigonggao_fengmian4.jpg','内容4','2022-03-12 23:14:41',8),(15,'2022-03-12 14:58:36','标题5','简介5','2022-03-12','upload/tongzhigonggao_fengmian5.jpg','内容5','2022-03-12 22:58:36',5),(16,'2022-03-12 14:58:36','标题6','简介6','2022-03-12','upload/tongzhigonggao_fengmian6.jpg','内容6','2022-03-12 22:58:36',6),(1647097848404,'2022-03-12 15:10:48','水电费时代','地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方','2022-03-12','upload/1647097842580.jpg','<p>地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方地方给对方地方给对方给对方给对方给对方给对方</p>','2022-03-12 23:13:46',2);
/*!40000 ALTER TABLE `tongzhigonggao` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-12 14:58:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `ruzhiriqi` date DEFAULT NULL COMMENT '入职日期',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647098008248 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2022-03-12 14:58:36','账号1','123456','姓名1','年龄1','男','13823888881','部门名称2','职位3','2022-03-12','upload/yuangong_zhaopian1.jpg'),(22,'2022-03-12 14:58:36','账号2','123456','姓名2','年龄2','男','13823888882','部门2','职位2','2022-03-12','upload/yuangong_zhaopian2.jpg'),(23,'2022-03-12 14:58:36','账号3','123456','姓名3','年龄3','男','13823888883','部门3','职位3','2022-03-12','upload/yuangong_zhaopian3.jpg'),(24,'2022-03-12 14:58:36','账号4','123456','姓名4','年龄4','男','13823888884','部门4','职位4','2022-03-12','upload/yuangong_zhaopian4.jpg'),(25,'2022-03-12 14:58:36','账号5','123456','姓名5','年龄5','男','13823888885','部门5','职位5','2022-03-12','upload/yuangong_zhaopian5.jpg'),(26,'2022-03-12 14:58:36','账号6','123456','姓名6','年龄6','男','13823888886','部门6','职位6','2022-03-12','upload/yuangong_zhaopian6.jpg'),(1647098008247,'2022-03-12 15:13:28','11','11','时代','11','女','11122233333','第一部门','会计',NULL,'upload/1647098052267.jpg');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweixinxi`
--

DROP TABLE IF EXISTS `zhiweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhiwei` (`zhiwei`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='职位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweixinxi`
--

LOCK TABLES `zhiweixinxi` WRITE;
/*!40000 ALTER TABLE `zhiweixinxi` DISABLE KEYS */;
INSERT INTO `zhiweixinxi` VALUES (41,'2022-03-12 14:58:36','会计'),(42,'2022-03-12 14:58:36','职位2'),(43,'2022-03-12 14:58:36','职位3'),(44,'2022-03-12 14:58:36','职位4'),(45,'2022-03-12 14:58:36','职位5'),(46,'2022-03-12 14:58:36','职位6');
/*!40000 ALTER TABLE `zhiweixinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-16 16:51:13
