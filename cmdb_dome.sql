-- MySQL dump 10.13  Distrib 5.6.33, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: cmdb_dome
-- ------------------------------------------------------
-- Server version	5.6.33-log

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
-- Current Database: `cmdb_dome`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cmdb_dome` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cmdb_dome`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add user',2,'add_user'),(5,'Can change user',2,'change_user'),(6,'Can delete user',2,'delete_user'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add disk',7,'add_disk'),(20,'Can change disk',7,'change_disk'),(21,'Can delete disk',7,'delete_disk'),(22,'Can add tag',8,'add_tag'),(23,'Can change tag',8,'change_tag'),(24,'Can delete tag',8,'delete_tag'),(25,'Can add server record',9,'add_serverrecord'),(26,'Can change server record',9,'change_serverrecord'),(27,'Can delete server record',9,'delete_serverrecord'),(28,'Can add user group',10,'add_usergroup'),(29,'Can change user group',10,'change_usergroup'),(30,'Can delete user group',10,'delete_usergroup'),(31,'Can add admin info',11,'add_admininfo'),(32,'Can change admin info',11,'change_admininfo'),(33,'Can delete admin info',11,'delete_admininfo'),(34,'Can add memory',12,'add_memory'),(35,'Can change memory',12,'change_memory'),(36,'Can delete memory',12,'delete_memory'),(37,'Can add user profile',13,'add_userprofile'),(38,'Can change user profile',13,'change_userprofile'),(39,'Can delete user profile',13,'delete_userprofile'),(40,'Can add error log',14,'add_errorlog'),(41,'Can change error log',14,'change_errorlog'),(42,'Can delete error log',14,'delete_errorlog'),(43,'Can add idc',15,'add_idc'),(44,'Can change idc',15,'change_idc'),(45,'Can delete idc',15,'delete_idc'),(46,'Can add business unit',16,'add_businessunit'),(47,'Can change business unit',16,'change_businessunit'),(48,'Can delete business unit',16,'delete_businessunit'),(49,'Can add server',17,'add_server'),(50,'Can change server',17,'change_server'),(51,'Can delete server',17,'delete_server'),(52,'Can add nic',18,'add_nic'),(53,'Can change nic',18,'change_nic'),(54,'Can delete nic',18,'delete_nic'),(55,'Can add role',19,'add_role'),(56,'Can change role',19,'change_role'),(57,'Can delete role',19,'delete_role'),(58,'Can add menu',20,'add_menu'),(59,'Can change menu',20,'change_menu'),(60,'Can delete menu',20,'delete_menu'),(61,'Can add permission',21,'add_permission'),(62,'Can change permission',21,'change_permission'),(63,'Can delete permission',21,'delete_permission'),(64,'Can add configtype',22,'add_configtype'),(65,'Can change configtype',22,'change_configtype'),(66,'Can delete configtype',22,'delete_configtype'),(67,'Can add configcontent',23,'add_configcontent'),(68,'Can change configcontent',23,'change_configcontent'),(69,'Can delete configcontent',23,'delete_configcontent'),(70,'Can add task result',24,'add_taskresult'),(71,'Can change task result',24,'change_taskresult'),(72,'Can delete task result',24,'delete_taskresult');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$JmIPGxgjA3Pj$ade7RzUrti9S+nh4FJxy8BnEAqr0hJj3FmDZnaeSuR4=','2018-10-25 07:36:45.877092',1,'root','','','75056082@qq.com',1,1,'2018-10-24 04:31:00.509642');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-10-24 04:31:34.486602','1','张步华',1,'[{\"added\": {}}]',13,1),(2,'2018-10-24 04:32:34.995905','1','添加权限',1,'[{\"added\": {}}]',21,1),(3,'2018-10-24 04:32:46.379397','1','系统管理员',1,'[{\"added\": {}}]',19,1),(4,'2018-10-24 04:33:11.262436','1','zhangbuhua',1,'[{\"added\": {}}]',11,1),(5,'2018-10-24 04:33:29.439681','1','运维部门',1,'[{\"added\": {}}]',10,1),(6,'2018-10-24 04:34:20.535112','1','自动化运维平台',1,'[{\"added\": {}}]',16,1),(7,'2018-10-24 04:34:36.669817','1','昌平机房',1,'[{\"added\": {}}]',15,1),(8,'2018-10-24 04:35:01.663862','1','运维平台',1,'[{\"added\": {}}]',8,1),(9,'2018-10-24 04:35:07.184974','1','c1.com',1,'[{\"added\": {}}]',17,1),(10,'2018-10-24 15:03:34.029075','2','和亚洲',1,'[{\"added\": {}}]',13,1),(11,'2018-10-24 15:18:03.210148','2','heyazhou',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_taskresult`
--

DROP TABLE IF EXISTS `django_celery_results_taskresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_results_taskresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  `task_args` longtext,
  `task_kwargs` longtext,
  `task_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `django_celery_results_taskresult_hidden_cd77412f` (`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_taskresult`
--

LOCK TABLES `django_celery_results_taskresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_taskresult` DISABLE KEYS */;
INSERT INTO `django_celery_results_taskresult` VALUES (1,'cd397fc1-d7fa-43cc-bb67-f506ee856167','FAILURE','application/json','utf-8','{\"exc_module\": \"builtins\", \"exc_type\": \"TypeError\", \"exc_message\": [\"kubernetes_configmaps() missing 2 required positional arguments: \'field_selector_str\' and \'y\'\"]}','2018-12-10 11:43:37.883667','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\nTypeError: kubernetes_configmaps() missing 2 required positional arguments: \'field_selector_str\' and \'y\'\n',0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(2,'54041897-bd4e-46b2-bc21-c67b2e8b7c02','FAILURE','application/json','utf-8','{\"exc_module\": \"builtins\", \"exc_type\": \"TypeError\", \"exc_message\": [\"kubernetes_configmaps() missing 2 required positional arguments: \'field_selector_str\' and \'y\'\"]}','2018-12-10 11:44:44.928975','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\nTypeError: kubernetes_configmaps() missing 2 required positional arguments: \'field_selector_str\' and \'y\'\n',0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(3,'3d3e16f4-0110-4f9f-85bc-7b368d58274f','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 11:45:26.557635',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(4,'61bd6c3e-edf5-4c35-b5fd-6216e27f51b5','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:10:39.465538',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(5,'cc126acb-0513-47dc-a67c-132763e9a704','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:13:03.029873',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(6,'b87b8bc8-99f9-42db-beb3-8bc239958e6f','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:22:31.235274',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(7,'a4de32c9-6c31-4ead-95e9-583b006976b0','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:26:59.623790',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(8,'55373e79-ca47-4684-9e78-e3c197931add','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:27:02.357850',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(9,'9aaa8863-ff64-4aac-b6e3-1050fb6c5938','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:31:14.517231',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(10,'0a827e3b-35f4-4f82-843b-ac215ab2972b','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:35:24.985911',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(11,'1f5a1a2a-5024-4cc9-bb10-61821a4983a6','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:38:37.993375',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(12,'0c869d78-d964-4b50-a612-1afdf8eb8cab','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:39:11.584425',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(13,'666ff322-dbe6-4a36-bcbc-82a817180c17','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:40:27.943219',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(14,'e704a901-b724-4dc9-ba1c-d554f7e0e384','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-10 12:41:49.002857',NULL,0,'{\"children\": []}','[]','{}','web.tasks.kubernetes_configmaps'),(15,'eaaaca74-be7c-45e6-a1bd-fb60935c2f5c','FAILURE','application/json','utf-8','{\"exc_message\": [\"kubernetes_configmaps() takes 0 positional arguments but 1 was given\"], \"exc_module\": \"builtins\", \"exc_type\": \"TypeError\"}','2018-12-11 04:21:02.545202','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\nTypeError: kubernetes_configmaps() takes 0 positional arguments but 1 was given\n',0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: test-map\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22qxxx2est13\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(16,'46fa3b98-0820-461b-ad1b-f25eefc33c9a','FAILURE','application/json','utf-8','{\"exc_message\": [\"kubernetes_configmaps() takes 0 positional arguments but 1 was given\"], \"exc_module\": \"builtins\", \"exc_type\": \"TypeError\"}','2018-12-11 04:23:18.196432','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\nTypeError: kubernetes_configmaps() takes 0 positional arguments but 1 was given\n',0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: test-map\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sdxzca2est13\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(17,'c048e22b-c064-4aab-a9ca-37f755374157','FAILURE','application/json','utf-8','{\"exc_message\": [\"kubernetes_configmaps() takes 0 positional arguments but 1 was given\"], \"exc_module\": \"builtins\", \"exc_type\": \"TypeError\"}','2018-12-11 04:26:02.548789','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\nTypeError: kubernetes_configmaps() takes 0 positional arguments but 1 was given\n',0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: test-map\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sdxzc2a2est13\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(18,'b82ae6aa-1739-4a16-a099-21cd20347ce2','FAILURE','application/json','utf-8','{\"exc_message\": [\"kubernetes_configmaps() takes 0 positional arguments but 1 was given\"], \"exc_module\": \"builtins\", \"exc_type\": \"TypeError\"}','2018-12-11 04:28:55.650998','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\nTypeError: kubernetes_configmaps() takes 0 positional arguments but 1 was given\n',0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: test-map\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sdxzc2a2est2213\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(19,'d8079b9b-ee98-4cdf-ad73-a4d1cc1a5062','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-11 04:31:46.150492',NULL,0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: test-map\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sdxzc2a2exxxxst2213\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(20,'0928144a-9122-473c-bc90-4a4ad5618f72','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-11 04:35:31.685816',NULL,0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: test-map\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sxzc2213\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(21,'16c73c92-28e6-4ca2-afd3-098f6b1db66d','SUCCESS','application/json','utf-8','\"ceshi\"','2018-12-11 04:37:15.379965',NULL,0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: test-map\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sxzc221asdasdasd3\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(22,'e1966ccd-a48a-4677-b8ab-de696b231a6e','FAILURE','application/json','utf-8','{\"exc_type\": \"LocationParseError\", \"exc_message\": [\"Failed to parse: D:\\\\djang-practice\\\\cmdb\\\\cmdb_server\"], \"exc_module\": \"urllib3.exceptions\"}','2018-12-11 04:41:42.727321','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"D:\\djang-practice\\cmdb\\cmdb_server\\web\\tasks.py\", line 73, in kubernetes_configmaps\n    ret = newkubernetesapi.mlist_namespaced_config_map(namespace=\'default\',field_selector=configname)\n  File \"D:\\djang-practice\\cmdb\\cmdb_server\\utils\\kubernetsapi.py\", line 264, in mlist_namespaced_config_map\n    api_response = CoreV1Api.list_namespaced_config_map(namespace=namespace, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\apis\\core_v1_api.py\", line 11854, in list_namespaced_config_map\n    (data) = self.list_namespaced_config_map_with_http_info(namespace, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\apis\\core_v1_api.py\", line 11957, in list_namespaced_config_map_with_http_info\n    collection_formats=collection_formats)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 321, in call_api\n    _return_http_data_only, collection_formats, _preload_content, _request_timeout)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 155, in __call_api\n    _request_timeout=_request_timeout)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 342, in request\n    headers=headers)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\rest.py\", line 231, in GET\n    query_params=query_params)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\rest.py\", line 205, in request\n    headers=headers)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\request.py\", line 68, in request\n    **urlopen_kw)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\request.py\", line 89, in request_encode_url\n    return self.urlopen(method, url, **extra_kw)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\poolmanager.py\", line 310, in urlopen\n    u = parse_url(url)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\util\\url.py\", line 199, in parse_url\n    raise LocationParseError(url)\nurllib3.exceptions.LocationParseError: Failed to parse: D:\\djang-practice\\cmdb\\cmdb_server\n',0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: wmq-config-mina\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sxzc221asdasdasd3\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(23,'aaed552c-9cd3-4765-ae0e-4116d9e53ebf','SUCCESS','application/json','utf-8','\"ccccc\"','2018-12-11 04:44:43.546318',NULL,0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: wmq-config-mina\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sxzc221asdasdaxxxxxxxsd3\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(24,'86691079-8b57-47e6-8934-4ac418007168','FAILURE','application/json','utf-8','{\"exc_message\": [\"Failed to parse: D:\\\\djang-practice\\\\cmdb\\\\cmdb_server\"], \"exc_type\": \"LocationParseError\", \"exc_module\": \"urllib3.exceptions\"}','2018-12-11 04:45:21.568744','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"D:\\djang-practice\\cmdb\\cmdb_server\\web\\tasks.py\", line 73, in kubernetes_configmaps\n    ret = newkubernetesapi.mlist_namespaced_config_map(namespace=\'default\',field_selector=\'metadata.name=%s\' %(configname))\n  File \"D:\\djang-practice\\cmdb\\cmdb_server\\utils\\kubernetsapi.py\", line 264, in mlist_namespaced_config_map\n    api_response = CoreV1Api.list_namespaced_config_map(namespace=namespace, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\apis\\core_v1_api.py\", line 11854, in list_namespaced_config_map\n    (data) = self.list_namespaced_config_map_with_http_info(namespace, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\apis\\core_v1_api.py\", line 11957, in list_namespaced_config_map_with_http_info\n    collection_formats=collection_formats)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 321, in call_api\n    _return_http_data_only, collection_formats, _preload_content, _request_timeout)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 155, in __call_api\n    _request_timeout=_request_timeout)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 342, in request\n    headers=headers)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\rest.py\", line 231, in GET\n    query_params=query_params)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\rest.py\", line 205, in request\n    headers=headers)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\request.py\", line 68, in request\n    **urlopen_kw)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\request.py\", line 89, in request_encode_url\n    return self.urlopen(method, url, **extra_kw)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\poolmanager.py\", line 310, in urlopen\n    u = parse_url(url)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\util\\url.py\", line 199, in parse_url\n    raise LocationParseError(url)\nurllib3.exceptions.LocationParseError: Failed to parse: D:\\djang-practice\\cmdb\\cmdb_server\n',0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: wmq-config-mina\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sxzc221asdascxxdaxxxxxxxsd3\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(25,'adc66cb3-ae91-4903-82c6-b6090d0aa467','FAILURE','application/json','utf-8','{\"exc_message\": [\"Failed to parse: D:\\\\djang-practice\\\\cmdb\\\\cmdb_server\"], \"exc_type\": \"LocationParseError\", \"exc_module\": \"urllib3.exceptions\"}','2018-12-11 04:48:20.372389','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"D:\\djang-practice\\cmdb\\cmdb_server\\web\\tasks.py\", line 73, in kubernetes_configmaps\n    ret = newkubernetesapi.mlist_namespaced_config_map(namespace=\'default\',field_selector=\'metadata.name=wmq-config-mina\')\n  File \"D:\\djang-practice\\cmdb\\cmdb_server\\utils\\kubernetsapi.py\", line 264, in mlist_namespaced_config_map\n    api_response = CoreV1Api.list_namespaced_config_map(namespace=namespace, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\apis\\core_v1_api.py\", line 11854, in list_namespaced_config_map\n    (data) = self.list_namespaced_config_map_with_http_info(namespace, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\apis\\core_v1_api.py\", line 11957, in list_namespaced_config_map_with_http_info\n    collection_formats=collection_formats)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 321, in call_api\n    _return_http_data_only, collection_formats, _preload_content, _request_timeout)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 155, in __call_api\n    _request_timeout=_request_timeout)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 342, in request\n    headers=headers)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\rest.py\", line 231, in GET\n    query_params=query_params)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\rest.py\", line 205, in request\n    headers=headers)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\request.py\", line 68, in request\n    **urlopen_kw)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\request.py\", line 89, in request_encode_url\n    return self.urlopen(method, url, **extra_kw)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\poolmanager.py\", line 310, in urlopen\n    u = parse_url(url)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\util\\url.py\", line 199, in parse_url\n    raise LocationParseError(url)\nurllib3.exceptions.LocationParseError: Failed to parse: D:\\djang-practice\\cmdb\\cmdb_server\n',0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: wmq-config-mina\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinat22sxzc221asdascxxxxxxdaxxxxxxxsd3\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps'),(26,'3fa5ec84-a8e8-4908-8258-ac62522e4964','FAILURE','application/json','utf-8','{\"exc_module\": \"urllib3.exceptions\", \"exc_message\": [\"Failed to parse: D:\\\\djang-practice\\\\cmdb\\\\cmdb_server\"], \"exc_type\": \"LocationParseError\"}','2018-12-11 04:50:29.120701','Traceback (most recent call last):\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 382, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\celery\\app\\trace.py\", line 641, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"D:\\djang-practice\\cmdb\\cmdb_server\\web\\tasks.py\", line 73, in kubernetes_configmaps\n    ret = newkubernetesapi.mlist_namespaced_config_map(namespace=\'default\')#,field_selector=\'metadata.name=wmq-config-mina\')\n  File \"D:\\djang-practice\\cmdb\\cmdb_server\\utils\\kubernetsapi.py\", line 264, in mlist_namespaced_config_map\n    api_response = CoreV1Api.list_namespaced_config_map(namespace=namespace, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\apis\\core_v1_api.py\", line 11854, in list_namespaced_config_map\n    (data) = self.list_namespaced_config_map_with_http_info(namespace, **kwargs)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\apis\\core_v1_api.py\", line 11957, in list_namespaced_config_map_with_http_info\n    collection_formats=collection_formats)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 321, in call_api\n    _return_http_data_only, collection_formats, _preload_content, _request_timeout)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 155, in __call_api\n    _request_timeout=_request_timeout)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\api_client.py\", line 342, in request\n    headers=headers)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\rest.py\", line 231, in GET\n    query_params=query_params)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\kubernetes\\client\\rest.py\", line 205, in request\n    headers=headers)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\request.py\", line 68, in request\n    **urlopen_kw)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\request.py\", line 89, in request_encode_url\n    return self.urlopen(method, url, **extra_kw)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\poolmanager.py\", line 310, in urlopen\n    u = parse_url(url)\n  File \"d:\\python_virtual\\evnv3_django111\\lib\\site-packages\\urllib3\\util\\url.py\", line 199, in parse_url\n    raise LocationParseError(url)\nurllib3.exceptions.LocationParseError: Failed to parse: D:\\djang-practice\\cmdb\\cmdb_server\n',0,'{\"children\": []}','[\'apiVersion: v1\\r\\nkind: ConfigMap\\r\\nmetadata:\\r\\n  name: wmq-config-mina\\r\\n  namespace: default\\r\\ndata:\\r\\n  wmq.config: |\\r\\n    {\\r\\n        \"nodeName\": \"NODENAME\",\\r\\n        \"bizClusterNames\": [\"wChatMinaxxxxxxxsd3\",\"minadrawTESTTEST\",\"minaanimalchess\"],\\r\\n        \"listeners\": [{\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 7884,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 30,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n            }],\\r\\n        \"websocket\": {\\r\\n                    \"host\": \"0.0.0.0\",\\r\\n                    \"port\": 443,\\r\\n                    \"ssl\": true,\\r\\n                    \"keepAlive\": 60,\\r\\n                    \"msgSenderThreadCnt\": 1,\\r\\n                \"webSocketPath\": \"/websocket_test\",\\r\\n                \"subProtocols\": \"wmq_json\",\\r\\n                    \"tcpConfig\": {\\r\\n                            \"backlog\": 128,\\r\\n                            \"linger\": -1,\\r\\n                            \"noDelay\": true,\\r\\n                            \"reuseAddr\": true,\\r\\n                            \"keepalive\": true\\r\\n                    },\\r\\n                    \"nettyConfig\": {\\r\\n                            \"bossThreadCnt\": 0,\\r\\n                            \"workerThreadCnt\": 0\\r\\n                    },\\r\\n                    \"sslConfig\": {\\r\\n                            \"useClientMode\": false,\\r\\n                            \"needClientAuth\": false,\\r\\n                            \"keyStorePassword\": \"123456\",\\r\\n                            \"keyManagerPassword\": \"123456\",\\r\\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\\r\\n                    }\\r\\n        },\\r\\n        \"cluster\": {\\r\\n                \"clientReconnectInterval\": 1,\\r\\n                \"clientKeepAlive\": 10,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"clientTcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"clientNettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"rpc\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 12348,\\r\\n                \"keepAlive\": 30,\\r\\n                \"msgSenderThreadCnt\": 1,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        },\\r\\n        \"dashboard\": {\\r\\n                \"host\": \"0.0.0.0\",\\r\\n                \"port\": 23456,\\r\\n                \"keepAlive\": 600,\\r\\n                \"tcpConfig\": {\\r\\n                        \"backlog\": 128,\\r\\n                        \"linger\": -1,\\r\\n                        \"noDelay\": true,\\r\\n                        \"reuseAddr\": true,\\r\\n                        \"keepalive\": true\\r\\n                },\\r\\n                \"nettyConfig\": {\\r\\n                        \"bossThreadCnt\": 0,\\r\\n                        \"workerThreadCnt\": 0\\r\\n                }\\r\\n        }\\r\\n    }\']','{}','web.tasks.kubernetes_configmaps');
/*!40000 ALTER TABLE `django_celery_results_taskresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(2,'auth','user'),(5,'contenttypes','contenttype'),(24,'django_celery_results','taskresult'),(20,'rbac','menu'),(21,'rbac','permission'),(19,'rbac','role'),(11,'repository','admininfo'),(16,'repository','businessunit'),(23,'repository','configcontent'),(22,'repository','configtype'),(7,'repository','disk'),(14,'repository','errorlog'),(15,'repository','idc'),(12,'repository','memory'),(18,'repository','nic'),(17,'repository','server'),(9,'repository','serverrecord'),(8,'repository','tag'),(10,'repository','usergroup'),(13,'repository','userprofile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-10-24 03:55:21.016697'),(2,'auth','0001_initial','2018-10-24 03:55:21.214167'),(3,'admin','0001_initial','2018-10-24 03:55:21.275005'),(4,'admin','0002_logentry_remove_auto_add','2018-10-24 03:55:21.284978'),(5,'contenttypes','0002_remove_content_type_name','2018-10-24 03:55:21.338834'),(6,'auth','0002_alter_permission_name_max_length','2018-10-24 03:55:21.356786'),(7,'auth','0003_alter_user_email_max_length','2018-10-24 03:55:21.382716'),(8,'auth','0004_alter_user_username_opts','2018-10-24 03:55:21.395709'),(9,'auth','0005_alter_user_last_login_null','2018-10-24 03:55:21.417624'),(10,'auth','0006_require_contenttypes_0002','2018-10-24 03:55:21.422610'),(11,'auth','0007_alter_validators_add_error_messages','2018-10-24 03:55:21.433604'),(12,'auth','0008_alter_user_username_max_length','2018-10-24 03:55:21.480455'),(13,'rbac','0001_initial','2018-10-24 03:55:21.602130'),(14,'repository','0001_initial','2018-10-24 03:55:22.317256'),(15,'sessions','0001_initial','2018-10-24 03:55:22.339198'),(16,'repository','0002_auto_20181210_1505','2018-12-10 07:06:21.684937'),(17,'django_celery_results','0001_initial','2018-12-10 07:23:54.028740'),(18,'django_celery_results','0002_add_task_name_args_kwargs','2018-12-10 07:23:54.122494'),(19,'django_celery_results','0003_auto_20181106_1101','2018-12-10 07:23:54.131493'),(20,'repository','0003_auto_20181210_1608','2018-12-10 08:08:48.542166'),(21,'repository','0004_auto_20181210_1650','2018-12-10 08:50:19.748816'),(22,'repository','0005_auto_20181210_1652','2018-12-10 08:52:13.397893');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4dde64hrixwmfczvvvahsjayesucipew','M2MwZWZiYmJiNjU0Nzg2ZWQzODY4NDk2YzAxZDEyYTUxOWM0YjlhNTp7InU4ZmtrYXNzc2pkZmtqc2Zmc3NzZmZmIjp7InN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZSI6eyJwaWQiOjYxLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZWxpc3QiLCJpZCI6NjMsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC8oP1A8cGs+XFxkKykvY2hhbmdlLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXJyZWNvcmQvbGlzdC8iLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NTNkOFx1NjZmNFx1OGJiMFx1NWY1NVx1NGZlZVx1NjUzOSJ9LCJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2FkZCI6eyJwaWQiOjI5LCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfY2hhbmdlbGlzdCIsImlkIjozMCwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcnByb2ZpbGUvYWRkLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU2ZGZiXHU1MmEwIn0sInJiYWM6bXVsdGlfcGVybWlzc2lvbnMiOnsicGlkIjo3LCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwiaWQiOjE0LCJ1cmwiOiIvcmJhYy9tdWx0aS9wZXJtaXNzaW9ucy8iLCJwaWRfdXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInRpdGxlIjoiXHU2Mjc5XHU5MWNmXHU0ZmVlXHU2NTM5XHU2NzQzXHU5NjUwIn0sInJiYWM6cm9sZV9kZWwiOnsicGlkIjoxNiwicGlkX25hbWUiOiJyYmFjOnJvbGVfbGlzdCIsImlkIjoxOCwidXJsIjoiL3JiYWMvcm9sZS9kZWwvKD9QPHBrPlxcZCspLyIsInBpZF91cmwiOiIvcmJhYy9yb2xlL2xpc3QvIiwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMjBcdTk2NjQifSwic3Rhcms6cmVwb3NpdG9yeV91c2VycHJvZmlsZV9jaGFuZ2UiOnsicGlkIjoyOSwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2NoYW5nZWxpc3QiLCJpZCI6MzEsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJwcm9maWxlLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJwcm9maWxlL2xpc3QvIiwidGl0bGUiOiJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcdTdmMTZcdThmOTEifSwic3Rhcms6cmVwb3NpdG9yeV9kaXNrX2FkZCI6eyJwaWQiOjUzLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfZGlza19jaGFuZ2VsaXN0IiwiaWQiOjU0LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrL2FkZC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvZGlzay9saXN0LyIsInRpdGxlIjoiXHU3ODZjXHU3NmQ4XHU0ZmUxXHU2MDZmXHU2ZGZiXHU1MmEwIn0sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjYxLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXJyZWNvcmQvbGlzdC8iLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NTNkOFx1NjZmNFx1OGJiMFx1NWY1NVx1NTIxN1x1ODg2OCJ9LCJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2RlbCI6eyJwaWQiOjI5LCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfY2hhbmdlbGlzdCIsImlkIjozMiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcnByb2ZpbGUvKD9QPHBrPlxcZCspL2RlbC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcnByb2ZpbGUvbGlzdC8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2Zlx1NTIyMFx1OTY2NCJ9LCJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9jaGFuZ2UiOnsicGlkIjo0MSwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9jaGFuZ2VsaXN0IiwiaWQiOjQzLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYnVzaW5lc3N1bml0L2xpc3QvIiwidGl0bGUiOiJcdTRlMWFcdTUyYTFcdTdlYmZcdTdmMTZcdThmOTEifSwic3Rhcms6cmVwb3NpdG9yeV9uaWNfY2hhbmdlbGlzdCI6eyJwaWQiOm51bGwsInBpZF9uYW1lIjpudWxsLCJpZCI6NTcsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L25pYy9saXN0LyIsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU3ZjUxXHU1MzYxXHU0ZmUxXHU2MDZmXHU1MjE3XHU4ODY4In0sInJiYWM6bWVudV9saXN0Ijp7InBpZCI6bnVsbCwicGlkX25hbWUiOm51bGwsImlkIjo3LCJ1cmwiOiIvcmJhYy9tZW51L2xpc3QvIiwicGlkX3VybCI6bnVsbCwidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTRmZTFcdTYwNmYifSwic3Rhcms6cmVwb3NpdG9yeV90YWdfY2hhbmdlbGlzdCI6eyJwaWQiOm51bGwsInBpZF9uYW1lIjpudWxsLCJpZCI6NDUsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3RhZy9saXN0LyIsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU2ODA3XHU3YjdlXHU1MjE3XHU4ODY4In0sInN0YXJrOnJlcG9zaXRvcnlfbWVtb3J5X2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjIzLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9tZW1vcnkvbGlzdC8iLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1NTE4NVx1NWI1OFx1NGZlMVx1NjA2Zlx1NTIxN1x1ODg2OCJ9LCJzdGFyazpyZXBvc2l0b3J5X2lkY19kZWwiOnsicGlkIjo0OSwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2lkY19jaGFuZ2VsaXN0IiwiaWQiOjUyLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9pZGMvKD9QPHBrPlxcZCspL2RlbC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2xpc3QvIiwidGl0bGUiOiJJRENcdTY3M2FcdTYyM2ZcdTUyMjBcdTk2NjQifSwic3Rhcms6cmVwb3NpdG9yeV91c2VyZ3JvdXBfY2hhbmdlbGlzdCI6eyJwaWQiOm51bGwsInBpZF9uYW1lIjpudWxsLCJpZCI6MzcsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9saXN0LyIsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU3ZWM0XHU1MjE3XHU4ODY4In0sInN0YXJrOnJlcG9zaXRvcnlfYWRtaW5pbmZvX2FkZCI6eyJwaWQiOjMzLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfYWRtaW5pbmZvX2NoYW5nZWxpc3QiLCJpZCI6MzQsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby9hZGQvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby9saXN0LyIsInRpdGxlIjoiXHU4ZDI2XHU1M2Y3XHU1YmM2XHU3ODAxXHU2ZGZiXHU1MmEwIn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2NoYW5nZSI6eyJwaWQiOjM3LCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2NoYW5nZWxpc3QiLCJpZCI6MzksInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC8oP1A8cGs+XFxkKykvY2hhbmdlLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VyZ3JvdXAvbGlzdC8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1N2VjNFx1N2YxNlx1OGY5MSJ9LCJzdGFyazpyZXBvc2l0b3J5X25pY19hZGQiOnsicGlkIjo1NywicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X25pY19jaGFuZ2VsaXN0IiwiaWQiOjU4LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvYWRkLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvbGlzdC8iLCJ0aXRsZSI6Ilx1N2Y1MVx1NTM2MVx1NGZlMVx1NjA2Zlx1NmRmYlx1NTJhMCJ9LCJzdGFyazpyZXBvc2l0b3J5X3RhZ19jaGFuZ2UiOnsicGlkIjo0NSwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3RhZ19jaGFuZ2VsaXN0IiwiaWQiOjQ3LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdGFnL2xpc3QvIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTY4MDdcdTdiN2VcdTdmMTZcdThmOTEifSwic3Rhcms6cmVwb3NpdG9yeV9kaXNrX2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjUzLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrL2xpc3QvIiwicGlkX3VybCI6bnVsbCwidGl0bGUiOiJcdTc4NmNcdTc2ZDhcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgifSwic3Rhcms6cmVwb3NpdG9yeV90YWdfYWRkIjp7InBpZCI6NDUsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV90YWdfY2hhbmdlbGlzdCIsImlkIjo0NiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdGFnL2FkZC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdGFnL2xpc3QvIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTY4MDdcdTdiN2VcdTZkZmJcdTUyYTAifSwic3Rhcms6cmVwb3NpdG9yeV9uaWNfZGVsIjp7InBpZCI6NTcsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9uaWNfY2hhbmdlbGlzdCIsImlkIjo2MCwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbmljLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L25pYy9saXN0LyIsInRpdGxlIjoiXHU3ZjUxXHU1MzYxXHU0ZmUxXHU2MDZmXHU1MjIwXHU5NjY0In0sInJiYWM6cGVybWlzc2lvbl9lZGl0Ijp7InBpZCI6NywicGlkX25hbWUiOiJyYmFjOm1lbnVfbGlzdCIsImlkIjoxMiwidXJsIjoiL3JiYWMvcGVybWlzc2lvbi9lZGl0Lyg/UDxwaz5cXGQrKS8iLCJwaWRfdXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU3ZjE2XHU4ZjkxIn0sInN0YXJrOnJlcG9zaXRvcnlfdGFnX2RlbCI6eyJwaWQiOjQ1LCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdGFnX2NoYW5nZWxpc3QiLCJpZCI6NDgsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3RhZy8oP1A8cGs+XFxkKykvZGVsLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvbGlzdC8iLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NjgwN1x1N2I3ZVx1NTIyMFx1OTY2NCJ9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcl9kZWwiOnsicGlkIjozLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVyX2NoYW5nZWxpc3QiLCJpZCI6NiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU1MjIwXHU5NjY0In0sInN0YXJrOnJlcG9zaXRvcnlfYnVzaW5lc3N1bml0X2FkZCI6eyJwaWQiOjQxLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfYnVzaW5lc3N1bml0X2NoYW5nZWxpc3QiLCJpZCI6NDIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2J1c2luZXNzdW5pdC9hZGQvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2J1c2luZXNzdW5pdC9saXN0LyIsInRpdGxlIjoiXHU0ZTFhXHU1MmExXHU3ZWJmXHU2ZGZiXHU1MmEwIn0sInN0YXJrOnJlcG9zaXRvcnlfYWRtaW5pbmZvX2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjMzLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9hZG1pbmluZm8vbGlzdC8iLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1OGQyNlx1NTNmN1x1NWJjNlx1NzgwMVx1NTIxN1x1ODg2OCJ9LCJ1c2VyX2luZm8iOnsicGlkIjpudWxsLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjE5LCJ1cmwiOiIvdXNlci9pbmZvLyIsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZTJhXHU0ZWJhXHU0ZmUxXHU2MDZmIn0sInJiYWM6ZGlzdHJpYnV0ZV9wZXJtaXNzaW9ucyI6eyJwaWQiOm51bGwsInBpZF9uYW1lIjpudWxsLCJpZCI6MTUsInVybCI6Ii9yYmFjL2Rpc3RyaWJ1dGUvcGVybWlzc2lvbnMvIiwicGlkX3VybCI6bnVsbCwidGl0bGUiOiJcdTUyMDZcdTkxNGRcdTY3NDNcdTk2NTAifSwicmJhYzpwZXJtaXNzaW9uX2FkZCI6eyJwaWQiOjcsInBpZF9uYW1lIjoicmJhYzptZW51X2xpc3QiLCJpZCI6MTEsInVybCI6Ii9yYmFjL3Blcm1pc3Npb24vYWRkLyIsInBpZF91cmwiOiIvcmJhYy9tZW51L2xpc3QvIiwidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTZkZmJcdTUyYTAifSwic3Rhcms6cmVwb3NpdG9yeV9hZG1pbmluZm9fZGVsIjp7InBpZCI6MzMsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9hZG1pbmluZm9fY2hhbmdlbGlzdCIsImlkIjozNiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYWRtaW5pbmZvLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby9saXN0LyIsInRpdGxlIjoiXHU4ZDI2XHU1M2Y3XHU1YmM2XHU3ODAxXHU1MjIwXHU5NjY0In0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2RlbCI6eyJwaWQiOjM3LCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2NoYW5nZWxpc3QiLCJpZCI6NDAsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC8oP1A8cGs+XFxkKykvZGVsLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VyZ3JvdXAvbGlzdC8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1N2VjNFx1NTIyMFx1OTY2NCJ9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcl9jaGFuZ2UiOnsicGlkIjozLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVyX2NoYW5nZWxpc3QiLCJpZCI6NSwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU3ZjE2XHU4ZjkxIn0sInJiYWM6bWVudV9kZWwiOnsicGlkIjo3LCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwiaWQiOjEwLCJ1cmwiOiIvcmJhYy9tZW51L2RlbC8oP1A8cGs+XFxkKykvIiwicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ0aXRsZSI6Ilx1ODNkY1x1NTM1NVx1NTIyMFx1OTY2NCJ9LCJzdGFyazpyZXBvc2l0b3J5X21lbW9yeV9kZWwiOnsicGlkIjoyMywicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X21lbW9yeV9jaGFuZ2VsaXN0IiwiaWQiOjI2LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9tZW1vcnkvKD9QPHBrPlxcZCspL2RlbC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2xpc3QvIiwidGl0bGUiOiJcdTUxODVcdTViNThcdTRmZTFcdTYwNmZcdTUyMjBcdTk2NjQifSwic3Rhcms6cmVwb3NpdG9yeV9tZW1vcnlfY2hhbmdlIjp7InBpZCI6MjMsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9tZW1vcnlfY2hhbmdlbGlzdCIsImlkIjoyNSwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5Lyg/UDxwaz5cXGQrKS9jaGFuZ2UvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS9saXN0LyIsInRpdGxlIjoiXHU1MTg1XHU1YjU4XHU0ZmUxXHU2MDZmXHU3ZjE2XHU4ZjkxIn0sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVyX2FkZCI6eyJwaWQiOjMsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJfY2hhbmdlbGlzdCIsImlkIjo0LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXIvYWRkLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXIvbGlzdC8iLCJ0aXRsZSI6Ilx1NjcwZFx1NTJhMVx1NTY2OFx1NmRmYlx1NTJhMCJ9LCJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19jaGFuZ2UiOnsicGlkIjozMywicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19jaGFuZ2VsaXN0IiwiaWQiOjM1LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9hZG1pbmluZm8vKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYWRtaW5pbmZvL2xpc3QvIiwidGl0bGUiOiJcdThkMjZcdTUzZjdcdTViYzZcdTc4MDFcdTRmZWVcdTY1MzkifSwic3Rhcms6cmVwb3NpdG9yeV9pZGNfYWRkIjp7InBpZCI6NDksInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9pZGNfY2hhbmdlbGlzdCIsImlkIjo1MCwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2FkZC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2xpc3QvIiwidGl0bGUiOiJJRENcdTY3M2FcdTYyM2ZcdTZkZmJcdTUyYTAifSwic3Rhcms6cmVwb3NpdG9yeV9kaXNrX2NoYW5nZSI6eyJwaWQiOjUzLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfZGlza19jaGFuZ2VsaXN0IiwiaWQiOjU1LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svbGlzdC8iLCJ0aXRsZSI6Ilx1Nzg2Y1x1NzZkOFx1NGZlMVx1NjA2Zlx1N2YxNlx1OGY5MSJ9LCJzdGFyazpyZXBvc2l0b3J5X2lkY19jaGFuZ2UiOnsicGlkIjo0OSwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2lkY19jaGFuZ2VsaXN0IiwiaWQiOjUxLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9pZGMvKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2xpc3QvIiwidGl0bGUiOiJJRENcdTY3M2FcdTYyM2ZcdTdmMTZcdThmOTEifSwic3Rhcms6cmVwb3NpdG9yeV9tZW1vcnlfYWRkIjp7InBpZCI6MjMsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9tZW1vcnlfY2hhbmdlbGlzdCIsImlkIjoyNCwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2FkZC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2xpc3QvIiwidGl0bGUiOiJcdTUxODVcdTViNThcdTRmZTFcdTYwNmZcdTZkZmJcdTUyYTAifSwicmJhYzpyb2xlX2VkaXQiOnsicGlkIjoxNiwicGlkX25hbWUiOiJyYmFjOnJvbGVfbGlzdCIsImlkIjoxNywidXJsIjoiL3JiYWMvcm9sZS9lZGl0Lyg/UDxwaz5cXGQrKS8iLCJwaWRfdXJsIjoiL3JiYWMvcm9sZS9saXN0LyIsInRpdGxlIjoiXHU4OWQyXHU4MjcyXHU3ZjE2XHU4ZjkxIn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2FkZCI6eyJwaWQiOjM3LCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2NoYW5nZWxpc3QiLCJpZCI6MzgsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9hZGQvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU3ZWM0XHU2ZGZiXHU1MmEwIn0sInN0YXJrOnJlcG9zaXRvcnlfYnVzaW5lc3N1bml0X2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjQxLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvbGlzdC8iLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1NGUxYVx1NTJhMVx1N2ViZlx1NTIxN1x1ODg2OCJ9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcl9jaGFuZ2VsaXN0Ijp7InBpZCI6bnVsbCwicGlkX25hbWUiOm51bGwsImlkIjozLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXIvbGlzdC8iLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1NjcwZFx1NTJhMVx1NTY2OFx1NTIxN1x1ODg2OCJ9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcnJlY29yZF9hZGQiOnsicGlkIjo2MSwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcnJlY29yZF9jaGFuZ2VsaXN0IiwiaWQiOjYyLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXJyZWNvcmQvYWRkLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXJyZWNvcmQvbGlzdC8iLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NTNkOFx1NjZmNFx1OGJiMFx1NWY1NVx1NmRmYlx1NTJhMCJ9LCJyYmFjOnJvbGVfbGlzdCI6eyJwaWQiOm51bGwsInBpZF9uYW1lIjpudWxsLCJpZCI6MTYsInVybCI6Ii9yYmFjL3JvbGUvbGlzdC8iLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1ODlkMlx1ODI3Mlx1NTIxN1x1ODg2OCJ9LCJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9kZWwiOnsicGlkIjo0MSwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9jaGFuZ2VsaXN0IiwiaWQiOjQ0LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvKD9QPHBrPlxcZCspL2RlbC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYnVzaW5lc3N1bml0L2xpc3QvIiwidGl0bGUiOiJcdTRlMWFcdTUyYTFcdTdlYmZcdTUyMjBcdTk2NjQifSwicmJhYzptZW51X2VkaXQiOnsicGlkIjo3LCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwiaWQiOjksInVybCI6Ii9yYmFjL21lbnUvZWRpdC8oP1A8cGs+XFxkKykvIiwicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ0aXRsZSI6Ilx1ODNkY1x1NTM1NVx1N2YxNlx1OGY5MSJ9LCJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjI5LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS9saXN0LyIsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU1MjE3XHU4ODY4In0sInJiYWM6cGVybWlzc2lvbl9kZWwiOnsicGlkIjo3LCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwiaWQiOjEzLCJ1cmwiOiIvcmJhYy9wZXJtaXNzaW9uL2RlbC8oP1A8cGs+XFxkKykvIiwicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ0aXRsZSI6Ilx1Njc0M1x1OTY1MFx1NTIyMFx1OTY2NCJ9LCJzdGFyazpyZXBvc2l0b3J5X2lkY19jaGFuZ2VsaXN0Ijp7InBpZCI6bnVsbCwicGlkX25hbWUiOm51bGwsImlkIjo0OSwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2xpc3QvIiwicGlkX3VybCI6bnVsbCwidGl0bGUiOiJJRENcdTY3M2FcdTYyM2ZcdTUyMTdcdTg4NjgifSwic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJyZWNvcmRfZGVsIjp7InBpZCI6NjEsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJyZWNvcmRfY2hhbmdlbGlzdCIsImlkIjo2NCwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC9saXN0LyIsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU1M2Q4XHU2NmY0XHU4YmIwXHU1ZjU1XHU1MjIwXHU5NjY0In0sInN0YXJrOnJlcG9zaXRvcnlfbmljX2NoYW5nZSI6eyJwaWQiOjU3LCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfbmljX2NoYW5nZWxpc3QiLCJpZCI6NTksInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L25pYy8oP1A8cGs+XFxkKykvY2hhbmdlLyIsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvbGlzdC8iLCJ0aXRsZSI6Ilx1N2Y1MVx1NTM2MVx1NGZlMVx1NjA2Zlx1N2YxNlx1OGY5MSJ9LCJzdGFyazpyZXBvc2l0b3J5X2Rpc2tfZGVsIjp7InBpZCI6NTMsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9kaXNrX2NoYW5nZWxpc3QiLCJpZCI6NTYsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svKD9QPHBrPlxcZCspL2RlbC8iLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvZGlzay9saXN0LyIsInRpdGxlIjoiXHU3ODZjXHU3NmQ4XHU0ZmUxXHU2MDZmXHU1MjIwXHU5NjY0In0sInJiYWM6bWVudV9hZGQiOnsicGlkIjo3LCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwiaWQiOjgsInVybCI6Ii9yYmFjL21lbnUvYWRkLyIsInBpZF91cmwiOiIvcmJhYy9tZW51L2xpc3QvIiwidGl0bGUiOiJcdTgzZGNcdTUzNTVcdTZkZmJcdTUyYTAifX0sInU4ZmtrZGRzYXNkYXNkc2pkZmtqc2YiOnsiMSI6eyJjaGlsZHJlbiI6W3sidXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU0ZmUxXHU2MDZmIiwiaWQiOjd9LHsidXJsIjoiL3JiYWMvZGlzdHJpYnV0ZS9wZXJtaXNzaW9ucy8iLCJ0aXRsZSI6Ilx1NTIwNlx1OTE0ZFx1Njc0M1x1OTY1MCIsImlkIjoxNX0seyJ1cmwiOiIvcmJhYy9yb2xlL2xpc3QvIiwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMTdcdTg4NjgiLCJpZCI6MTZ9XSwiaWNvbiI6ImZhLWFkZHJlc3MtYm9vayIsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU3YmExXHU3NDA2In0sIjIiOnsiY2hpbGRyZW4iOlt7InVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU1MjE3XHU4ODY4IiwiaWQiOjN9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2xpc3QvIiwidGl0bGUiOiJcdTUxODVcdTViNThcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgiLCJpZCI6MjN9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcnByb2ZpbGUvbGlzdC8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2Zlx1NTIxN1x1ODg2OCIsImlkIjoyOX0seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9hZG1pbmluZm8vbGlzdC8iLCJ0aXRsZSI6Ilx1OGQyNlx1NTNmN1x1NWJjNlx1NzgwMVx1NTIxN1x1ODg2OCIsImlkIjozM30seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VyZ3JvdXAvbGlzdC8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1N2VjNFx1NTIxN1x1ODg2OCIsImlkIjozN30seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvbGlzdC8iLCJ0aXRsZSI6Ilx1NGUxYVx1NTJhMVx1N2ViZlx1NTIxN1x1ODg2OCIsImlkIjo0MX0seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvbGlzdC8iLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NjgwN1x1N2I3ZVx1NTIxN1x1ODg2OCIsImlkIjo0NX0seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9pZGMvbGlzdC8iLCJ0aXRsZSI6IklEQ1x1NjczYVx1NjIzZlx1NTIxN1x1ODg2OCIsImlkIjo0OX0seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrL2xpc3QvIiwidGl0bGUiOiJcdTc4NmNcdTc2ZDhcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgiLCJpZCI6NTN9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbmljL2xpc3QvIiwidGl0bGUiOiJcdTdmNTFcdTUzNjFcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgiLCJpZCI6NTd9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkL2xpc3QvIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTUzZDhcdTY2ZjRcdThiYjBcdTVmNTVcdTUyMTdcdTg4NjgiLCJpZCI6NjF9XSwiaWNvbiI6ImZhLWFzdGVyaXNrIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTdiYTFcdTc0MDYifSwiMyI6eyJjaGlsZHJlbiI6W3sidXJsIjoiL3VzZXIvaW5mby8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1NGUyYVx1NGViYVx1NGZlMVx1NjA2ZiIsImlkIjoxOX1dLCJpY29uIjoiZmEtYWRkcmVzcy1jYXJkLW8iLCJ0aXRsZSI6Ilx1NGUyYVx1NGViYVx1OGJiZVx1N2Y2ZSJ9fX0=','2018-11-08 09:53:33.167886'),('hgv4abf910p7rema3hb71pv4ldvwfied','MWE5ODg3NWIwN2E5ZDA1Y2EwYzY4Yzk0ZjI3NmVlZWQ5Njk1NTU0Yzp7InU4ZmtrYXNzc2pkZmtqc2Zmc3NzZmZmIjp7InN0YXJrOnJlcG9zaXRvcnlfaWRjX2FkZCI6eyJwaWQiOjQ5LCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2xpc3QvIiwidGl0bGUiOiJJRENcdTY3M2FcdTYyM2ZcdTZkZmJcdTUyYTAiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfaWRjX2NoYW5nZWxpc3QiLCJpZCI6NTAsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2lkYy9hZGQvIn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfZGVsIjp7InBpZCI6MjksInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU1MjIwXHU5NjY0IiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2NoYW5nZWxpc3QiLCJpZCI6MzIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJwcm9maWxlLyg/UDxwaz5cXGQrKS9kZWwvIn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfY2hhbmdlIjp7InBpZCI6MjksInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU3ZjE2XHU4ZjkxIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2NoYW5nZWxpc3QiLCJpZCI6MzEsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJwcm9maWxlLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfY2hhbmdlbGlzdCI6eyJwaWQiOm51bGwsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU1MjE3XHU4ODY4IiwicGlkX25hbWUiOm51bGwsImlkIjoyOSwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcnByb2ZpbGUvbGlzdC8ifSwic3Rhcms6cmVwb3NpdG9yeV9uaWNfY2hhbmdlIjp7InBpZCI6NTcsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvbGlzdC8iLCJ0aXRsZSI6Ilx1N2Y1MVx1NTM2MVx1NGZlMVx1NjA2Zlx1N2YxNlx1OGY5MSIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9uaWNfY2hhbmdlbGlzdCIsImlkIjo1OSwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbmljLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIn0sInN0YXJrOnJlcG9zaXRvcnlfbWVtb3J5X2FkZCI6eyJwaWQiOjIzLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2xpc3QvIiwidGl0bGUiOiJcdTUxODVcdTViNThcdTRmZTFcdTYwNmZcdTZkZmJcdTUyYTAiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfbWVtb3J5X2NoYW5nZWxpc3QiLCJpZCI6MjQsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS9hZGQvIn0sInJiYWM6cGVybWlzc2lvbl9lZGl0Ijp7InBpZCI6NywicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ0aXRsZSI6Ilx1Njc0M1x1OTY1MFx1N2YxNlx1OGY5MSIsInBpZF9uYW1lIjoicmJhYzptZW51X2xpc3QiLCJpZCI6MTIsInVybCI6Ii9yYmFjL3Blcm1pc3Npb24vZWRpdC8oP1A8cGs+XFxkKykvIn0sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2FkZCI6eyJwaWQiOjY1LCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkL2xpc3QvIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTUzZDhcdTY2ZjRcdThiYjBcdTVmNTVcdTZkZmJcdTUyYTAiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZWxpc3QiLCJpZCI6NjIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC9hZGQvIn0sInJiYWM6cGVybWlzc2lvbl9kZWwiOnsicGlkIjo3LCJwaWRfdXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU1MjIwXHU5NjY0IiwicGlkX25hbWUiOiJyYmFjOm1lbnVfbGlzdCIsImlkIjoxMywidXJsIjoiL3JiYWMvcGVybWlzc2lvbi9kZWwvKD9QPHBrPlxcZCspLyJ9LCJzdGFyazpyZXBvc2l0b3J5X2Rpc2tfZGVsIjp7InBpZCI6NTMsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrL2xpc3QvIiwidGl0bGUiOiJcdTc4NmNcdTc2ZDhcdTRmZTFcdTYwNmZcdTUyMjBcdTk2NjQiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfZGlza19jaGFuZ2VsaXN0IiwiaWQiOjU2LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrLyg/UDxwaz5cXGQrKS9kZWwvIn0sInN0YXJrOnJlcG9zaXRvcnlfbWVtb3J5X2NoYW5nZSI6eyJwaWQiOjIzLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2xpc3QvIiwidGl0bGUiOiJcdTUxODVcdTViNThcdTRmZTFcdTYwNmZcdTdmMTZcdThmOTEiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfbWVtb3J5X2NoYW5nZWxpc3QiLCJpZCI6MjUsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS8oP1A8cGs+XFxkKykvY2hhbmdlLyJ9LCJzdGFyazpyZXBvc2l0b3J5X2lkY19jaGFuZ2VsaXN0Ijp7InBpZCI6bnVsbCwicGlkX3VybCI6bnVsbCwidGl0bGUiOiJJRENcdTY3M2FcdTYyM2ZcdTUyMTdcdTg4NjgiLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjQ5LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9pZGMvbGlzdC8ifSwic3Rhcms6cmVwb3NpdG9yeV9uaWNfY2hhbmdlbGlzdCI6eyJwaWQiOm51bGwsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU3ZjUxXHU1MzYxXHU0ZmUxXHU2MDZmXHU1MjE3XHU4ODY4IiwicGlkX25hbWUiOm51bGwsImlkIjo1NywidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbmljL2xpc3QvIn0sInN0YXJrOnJlcG9zaXRvcnlfbmljX2FkZCI6eyJwaWQiOjU3LCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbmljL2xpc3QvIiwidGl0bGUiOiJcdTdmNTFcdTUzNjFcdTRmZTFcdTYwNmZcdTZkZmJcdTUyYTAiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfbmljX2NoYW5nZWxpc3QiLCJpZCI6NTgsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L25pYy9hZGQvIn0sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2RlbCI6eyJwaWQiOjY1LCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkL2xpc3QvIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTUzZDhcdTY2ZjRcdThiYjBcdTVmNTVcdTUyMjBcdTk2NjQiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZWxpc3QiLCJpZCI6NjQsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC8oP1A8cGs+XFxkKykvZGVsLyJ9LCJzdGFyazpyZXBvc2l0b3J5X3VzZXJncm91cF9jaGFuZ2UiOnsicGlkIjozNywicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU3ZWM0XHU3ZjE2XHU4ZjkxIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3VzZXJncm91cF9jaGFuZ2VsaXN0IiwiaWQiOjM5LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VyZ3JvdXAvKD9QPHBrPlxcZCspL2NoYW5nZS8ifSwic3Rhcms6cmVwb3NpdG9yeV9pZGNfZGVsIjp7InBpZCI6NDksInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9pZGMvbGlzdC8iLCJ0aXRsZSI6IklEQ1x1NjczYVx1NjIzZlx1NTIyMFx1OTY2NCIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9pZGNfY2hhbmdlbGlzdCIsImlkIjo1MiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjLyg/UDxwaz5cXGQrKS9kZWwvIn0sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZSI6eyJwaWQiOjY1LCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkL2xpc3QvIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTUzZDhcdTY2ZjRcdThiYjBcdTVmNTVcdTRmZWVcdTY1MzkiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZWxpc3QiLCJpZCI6NjMsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC8oP1A8cGs+XFxkKykvY2hhbmdlLyJ9LCJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19kZWwiOnsicGlkIjozMywicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby9saXN0LyIsInRpdGxlIjoiXHU4ZDI2XHU1M2Y3XHU1YmM2XHU3ODAxXHU1MjIwXHU5NjY0IiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19jaGFuZ2VsaXN0IiwiaWQiOjM2LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9hZG1pbmluZm8vKD9QPHBrPlxcZCspL2RlbC8ifSwic3Rhcms6cmVwb3NpdG9yeV90YWdfY2hhbmdlbGlzdCI6eyJwaWQiOm51bGwsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU2ODA3XHU3YjdlXHU1MjE3XHU4ODY4IiwicGlkX25hbWUiOm51bGwsImlkIjo0NSwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdGFnL2xpc3QvIn0sInN0YXJrOnJlcG9zaXRvcnlfbWVtb3J5X2RlbCI6eyJwaWQiOjIzLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2xpc3QvIiwidGl0bGUiOiJcdTUxODVcdTViNThcdTRmZTFcdTYwNmZcdTUyMjBcdTk2NjQiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfbWVtb3J5X2NoYW5nZWxpc3QiLCJpZCI6MjYsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS8oP1A8cGs+XFxkKykvZGVsLyJ9LCJyYmFjOm1lbnVfZGVsIjp7InBpZCI6NywicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ0aXRsZSI6Ilx1ODNkY1x1NTM1NVx1NTIyMFx1OTY2NCIsInBpZF9uYW1lIjoicmJhYzptZW51X2xpc3QiLCJpZCI6MTAsInVybCI6Ii9yYmFjL21lbnUvZGVsLyg/UDxwaz5cXGQrKS8ifSwic3Rhcms6cmVwb3NpdG9yeV9hZG1pbmluZm9fY2hhbmdlIjp7InBpZCI6MzMsInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9hZG1pbmluZm8vbGlzdC8iLCJ0aXRsZSI6Ilx1OGQyNlx1NTNmN1x1NWJjNlx1NzgwMVx1NGZlZVx1NjUzOSIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9hZG1pbmluZm9fY2hhbmdlbGlzdCIsImlkIjozNSwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYWRtaW5pbmZvLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfYWRkIjp7InBpZCI6MjksInBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU2ZGZiXHU1MmEwIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2NoYW5nZWxpc3QiLCJpZCI6MzAsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJwcm9maWxlL2FkZC8ifSwic3Rhcms6cmVwb3NpdG9yeV9tZW1vcnlfY2hhbmdlbGlzdCI6eyJwaWQiOm51bGwsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU1MTg1XHU1YjU4XHU0ZmUxXHU2MDZmXHU1MjE3XHU4ODY4IiwicGlkX25hbWUiOm51bGwsImlkIjoyMywidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2xpc3QvIn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1N2VjNFx1NTIxN1x1ODg2OCIsInBpZF9uYW1lIjpudWxsLCJpZCI6MzcsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9saXN0LyJ9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcl9kZWwiOnsicGlkIjozLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyL2xpc3QvIiwidGl0bGUiOiJcdTY3MGRcdTUyYTFcdTU2NjhcdTUyMjBcdTk2NjQiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVyX2NoYW5nZWxpc3QiLCJpZCI6NiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyLyg/UDxwaz5cXGQrKS9kZWwvIn0sInJiYWM6cm9sZV9lZGl0Ijp7InBpZCI6MTYsInBpZF91cmwiOiIvcmJhYy9yb2xlL2xpc3QvIiwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTdmMTZcdThmOTEiLCJwaWRfbmFtZSI6InJiYWM6cm9sZV9saXN0IiwiaWQiOjE3LCJ1cmwiOiIvcmJhYy9yb2xlL2VkaXQvKD9QPHBrPlxcZCspLyJ9LCJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9jaGFuZ2UiOnsicGlkIjo0MSwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2J1c2luZXNzdW5pdC9saXN0LyIsInRpdGxlIjoiXHU0ZTFhXHU1MmExXHU3ZWJmXHU3ZjE2XHU4ZjkxIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9jaGFuZ2VsaXN0IiwiaWQiOjQzLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvKD9QPHBrPlxcZCspL2NoYW5nZS8ifSwicmJhYzptZW51X2VkaXQiOnsicGlkIjo3LCJwaWRfdXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInRpdGxlIjoiXHU4M2RjXHU1MzU1XHU3ZjE2XHU4ZjkxIiwicGlkX25hbWUiOiJyYmFjOm1lbnVfbGlzdCIsImlkIjo5LCJ1cmwiOiIvcmJhYy9tZW51L2VkaXQvKD9QPHBrPlxcZCspLyJ9LCJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19hZGQiOnsicGlkIjozMywicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby9saXN0LyIsInRpdGxlIjoiXHU4ZDI2XHU1M2Y3XHU1YmM2XHU3ODAxXHU2ZGZiXHU1MmEwIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19jaGFuZ2VsaXN0IiwiaWQiOjM0LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9hZG1pbmluZm8vYWRkLyJ9LCJzdGFyazpyZXBvc2l0b3J5X3RhZ19kZWwiOnsicGlkIjo0NSwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3RhZy9saXN0LyIsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU2ODA3XHU3YjdlXHU1MjIwXHU5NjY0IiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3RhZ19jaGFuZ2VsaXN0IiwiaWQiOjQ4LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvKD9QPHBrPlxcZCspL2RlbC8ifSwic3Rhcms6cmVwb3NpdG9yeV9kaXNrX2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1Nzg2Y1x1NzZkOFx1NGZlMVx1NjA2Zlx1NTIxN1x1ODg2OCIsInBpZF9uYW1lIjpudWxsLCJpZCI6NTMsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svbGlzdC8ifSwicmJhYzpyb2xlX2RlbCI6eyJwaWQiOjE2LCJwaWRfdXJsIjoiL3JiYWMvcm9sZS9saXN0LyIsInRpdGxlIjoiXHU4OWQyXHU4MjcyXHU1MjIwXHU5NjY0IiwicGlkX25hbWUiOiJyYmFjOnJvbGVfbGlzdCIsImlkIjoxOCwidXJsIjoiL3JiYWMvcm9sZS9kZWwvKD9QPHBrPlxcZCspLyJ9LCJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9hZGQiOnsicGlkIjo0MSwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2J1c2luZXNzdW5pdC9saXN0LyIsInRpdGxlIjoiXHU0ZTFhXHU1MmExXHU3ZWJmXHU2ZGZiXHU1MmEwIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9jaGFuZ2VsaXN0IiwiaWQiOjQyLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvYWRkLyJ9LCJzdGFyazpyZXBvc2l0b3J5X3RhZ19jaGFuZ2UiOnsicGlkIjo0NSwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3RhZy9saXN0LyIsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU2ODA3XHU3YjdlXHU3ZjE2XHU4ZjkxIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3RhZ19jaGFuZ2VsaXN0IiwiaWQiOjQ3LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvKD9QPHBrPlxcZCspL2NoYW5nZS8ifSwic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJfYWRkIjp7InBpZCI6MywicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU2ZGZiXHU1MmEwIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcl9jaGFuZ2VsaXN0IiwiaWQiOjQsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9hZGQvIn0sInN0YXJrOnJlcG9zaXRvcnlfYnVzaW5lc3N1bml0X2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1NGUxYVx1NTJhMVx1N2ViZlx1NTIxN1x1ODg2OCIsInBpZF9uYW1lIjpudWxsLCJpZCI6NDEsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2J1c2luZXNzdW5pdC9saXN0LyJ9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcl9jaGFuZ2UiOnsicGlkIjozLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyL2xpc3QvIiwidGl0bGUiOiJcdTY3MGRcdTUyYTFcdTU2NjhcdTdmMTZcdThmOTEiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVyX2NoYW5nZWxpc3QiLCJpZCI6NSwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIn0sInN0YXJrOnJlcG9zaXRvcnlfZGlza19jaGFuZ2UiOnsicGlkIjo1MywicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svbGlzdC8iLCJ0aXRsZSI6Ilx1Nzg2Y1x1NzZkOFx1NGZlMVx1NjA2Zlx1N2YxNlx1OGY5MSIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9kaXNrX2NoYW5nZWxpc3QiLCJpZCI6NTUsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svKD9QPHBrPlxcZCspL2NoYW5nZS8ifSwicmJhYzpwZXJtaXNzaW9uX2FkZCI6eyJwaWQiOjcsInBpZF91cmwiOiIvcmJhYy9tZW51L2xpc3QvIiwidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTZkZmJcdTUyYTAiLCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwiaWQiOjExLCJ1cmwiOiIvcmJhYy9wZXJtaXNzaW9uL2FkZC8ifSwidXNlcl9pbmZvIjp7InBpZCI6bnVsbCwicGlkX3VybCI6bnVsbCwidGl0bGUiOiJcdTc1MjhcdTYyMzdcdTRlMmFcdTRlYmFcdTRmZTFcdTYwNmYiLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjE5LCJ1cmwiOiIvdXNlci9pbmZvLyJ9LCJzdGFyazpyZXBvc2l0b3J5X3RhZ19hZGQiOnsicGlkIjo0NSwicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3RhZy9saXN0LyIsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU2ODA3XHU3YjdlXHU2ZGZiXHU1MmEwIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3RhZ19jaGFuZ2VsaXN0IiwiaWQiOjQ2LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvYWRkLyJ9LCJyYmFjOm1lbnVfbGlzdCI6eyJwaWQiOm51bGwsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU0ZmUxXHU2MDZmIiwicGlkX25hbWUiOm51bGwsImlkIjo3LCJ1cmwiOiIvcmJhYy9tZW51L2xpc3QvIn0sInJiYWM6bXVsdGlfcGVybWlzc2lvbnMiOnsicGlkIjo3LCJwaWRfdXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInRpdGxlIjoiXHU2Mjc5XHU5MWNmXHU0ZmVlXHU2NTM5XHU2NzQzXHU5NjUwIiwicGlkX25hbWUiOiJyYmFjOm1lbnVfbGlzdCIsImlkIjoxNCwidXJsIjoiL3JiYWMvbXVsdGkvcGVybWlzc2lvbnMvIn0sInN0YXJrOnJlcG9zaXRvcnlfYnVzaW5lc3N1bml0X2RlbCI6eyJwaWQiOjQxLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYnVzaW5lc3N1bml0L2xpc3QvIiwidGl0bGUiOiJcdTRlMWFcdTUyYTFcdTdlYmZcdTUyMjBcdTk2NjQiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfYnVzaW5lc3N1bml0X2NoYW5nZWxpc3QiLCJpZCI6NDQsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2J1c2luZXNzdW5pdC8oP1A8cGs+XFxkKykvZGVsLyJ9LCJyYmFjOm1lbnVfYWRkIjp7InBpZCI6NywicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ0aXRsZSI6Ilx1ODNkY1x1NTM1NVx1NmRmYlx1NTJhMCIsInBpZF9uYW1lIjoicmJhYzptZW51X2xpc3QiLCJpZCI6OCwidXJsIjoiL3JiYWMvbWVudS9hZGQvIn0sInJiYWM6ZGlzdHJpYnV0ZV9wZXJtaXNzaW9ucyI6eyJwaWQiOm51bGwsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU1MjA2XHU5MTRkXHU2NzQzXHU5NjUwIiwicGlkX25hbWUiOm51bGwsImlkIjoxNSwidXJsIjoiL3JiYWMvZGlzdHJpYnV0ZS9wZXJtaXNzaW9ucy8ifSwic3Rhcms6cmVwb3NpdG9yeV9kaXNrX2FkZCI6eyJwaWQiOjUzLCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvZGlzay9saXN0LyIsInRpdGxlIjoiXHU3ODZjXHU3NmQ4XHU0ZmUxXHU2MDZmXHU2ZGZiXHU1MmEwIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2Rpc2tfY2hhbmdlbGlzdCIsImlkIjo1NCwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvZGlzay9hZGQvIn0sInJiYWM6cm9sZV9saXN0Ijp7InBpZCI6bnVsbCwicGlkX3VybCI6bnVsbCwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMTdcdTg4NjgiLCJwaWRfbmFtZSI6bnVsbCwiaWQiOjE2LCJ1cmwiOiIvcmJhYy9yb2xlL2xpc3QvIn0sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVyX2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1NjcwZFx1NTJhMVx1NTY2OFx1NTIxN1x1ODg2OCIsInBpZF9uYW1lIjpudWxsLCJpZCI6MywidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyL2xpc3QvIn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2FkZCI6eyJwaWQiOjM3LCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcmdyb3VwL2xpc3QvIiwidGl0bGUiOiJcdTc1MjhcdTYyMzdcdTdlYzRcdTZkZmJcdTUyYTAiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2NoYW5nZWxpc3QiLCJpZCI6MzgsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9hZGQvIn0sInN0YXJrOnJlcG9zaXRvcnlfaWRjX2NoYW5nZSI6eyJwaWQiOjQ5LCJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2xpc3QvIiwidGl0bGUiOiJJRENcdTY3M2FcdTYyM2ZcdTdmMTZcdThmOTEiLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfaWRjX2NoYW5nZWxpc3QiLCJpZCI6NTEsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2lkYy8oP1A8cGs+XFxkKykvY2hhbmdlLyJ9LCJzdGFyazpyZXBvc2l0b3J5X25pY19kZWwiOnsicGlkIjo1NywicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L25pYy9saXN0LyIsInRpdGxlIjoiXHU3ZjUxXHU1MzYxXHU0ZmUxXHU2MDZmXHU1MjIwXHU5NjY0IiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X25pY19jaGFuZ2VsaXN0IiwiaWQiOjYwLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvKD9QPHBrPlxcZCspL2RlbC8ifSwic3Rhcms6cmVwb3NpdG9yeV9hZG1pbmluZm9fY2hhbmdlbGlzdCI6eyJwaWQiOm51bGwsInBpZF91cmwiOm51bGwsInRpdGxlIjoiXHU4ZDI2XHU1M2Y3XHU1YmM2XHU3ODAxXHU1MjE3XHU4ODY4IiwicGlkX25hbWUiOm51bGwsImlkIjozMywidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYWRtaW5pbmZvL2xpc3QvIn0sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZWxpc3QiOnsicGlkIjpudWxsLCJwaWRfdXJsIjpudWxsLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NTNkOFx1NjZmNFx1OGJiMFx1NWY1NVx1NTIxN1x1ODg2OCIsInBpZF9uYW1lIjpudWxsLCJpZCI6NjUsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC9saXN0LyJ9LCJzdGFyazpyZXBvc2l0b3J5X3VzZXJncm91cF9kZWwiOnsicGlkIjozNywicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU3ZWM0XHU1MjIwXHU5NjY0IiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3VzZXJncm91cF9jaGFuZ2VsaXN0IiwiaWQiOjQwLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VyZ3JvdXAvKD9QPHBrPlxcZCspL2RlbC8ifX0sInU4ZmtrZGRzYXNkYXNkc2pkZmtqc2YiOnsiMSI6eyJjaGlsZHJlbiI6W3siaWQiOjcsInVybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ0aXRsZSI6Ilx1Njc0M1x1OTY1MFx1NGZlMVx1NjA2ZiJ9LHsiaWQiOjE1LCJ1cmwiOiIvcmJhYy9kaXN0cmlidXRlL3Blcm1pc3Npb25zLyIsInRpdGxlIjoiXHU1MjA2XHU5MTRkXHU2NzQzXHU5NjUwIn0seyJpZCI6MTYsInVybCI6Ii9yYmFjL3JvbGUvbGlzdC8iLCJ0aXRsZSI6Ilx1ODlkMlx1ODI3Mlx1NTIxN1x1ODg2OCJ9XSwiaWNvbiI6ImZhLWFkZHJlc3MtYm9vayIsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU3YmExXHU3NDA2In0sIjIiOnsiY2hpbGRyZW4iOlt7ImlkIjozLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXIvbGlzdC8iLCJ0aXRsZSI6Ilx1NjcwZFx1NTJhMVx1NTY2OFx1NTIxN1x1ODg2OCJ9LHsiaWQiOjIzLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9tZW1vcnkvbGlzdC8iLCJ0aXRsZSI6Ilx1NTE4NVx1NWI1OFx1NGZlMVx1NjA2Zlx1NTIxN1x1ODg2OCJ9LHsiaWQiOjI5LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU1MjE3XHU4ODY4In0seyJpZCI6MzMsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby9saXN0LyIsInRpdGxlIjoiXHU4ZDI2XHU1M2Y3XHU1YmM2XHU3ODAxXHU1MjE3XHU4ODY4In0seyJpZCI6MzcsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9saXN0LyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU3ZWM0XHU1MjE3XHU4ODY4In0seyJpZCI6NDEsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2J1c2luZXNzdW5pdC9saXN0LyIsInRpdGxlIjoiXHU0ZTFhXHU1MmExXHU3ZWJmXHU1MjE3XHU4ODY4In0seyJpZCI6NDUsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3RhZy9saXN0LyIsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU2ODA3XHU3YjdlXHU1MjE3XHU4ODY4In0seyJpZCI6NDksInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2lkYy9saXN0LyIsInRpdGxlIjoiSURDXHU2NzNhXHU2MjNmXHU1MjE3XHU4ODY4In0seyJpZCI6NTMsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svbGlzdC8iLCJ0aXRsZSI6Ilx1Nzg2Y1x1NzZkOFx1NGZlMVx1NjA2Zlx1NTIxN1x1ODg2OCJ9LHsiaWQiOjU3LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvbGlzdC8iLCJ0aXRsZSI6Ilx1N2Y1MVx1NTM2MVx1NGZlMVx1NjA2Zlx1NTIxN1x1ODg2OCJ9LHsiaWQiOjY1LCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXJyZWNvcmQvbGlzdC8iLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NTNkOFx1NjZmNFx1OGJiMFx1NWY1NVx1NTIxN1x1ODg2OCJ9XSwiaWNvbiI6ImZhLWFzdGVyaXNrIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTdiYTFcdTc0MDYifSwiMyI6eyJjaGlsZHJlbiI6W3siaWQiOjE5LCJ1cmwiOiIvdXNlci9pbmZvLyIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZTJhXHU0ZWJhXHU0ZmUxXHU2MDZmIn1dLCJpY29uIjoiZmEtYWRkcmVzcy1jYXJkLW8iLCJ0aXRsZSI6Ilx1NGUyYVx1NGViYVx1OGJiZVx1N2Y2ZSJ9fX0=','2018-12-08 15:24:36.129456'),('n77qt8nibn0vuhb0q9atcvm7fcfxj3oa','N2I4MTMzMTQ3ZjlkY2M5ODEyMThiYmVkNjRhMDY2ZDU4Yjc4MWFlZTp7InU4ZmtrYXNzc2pkZmtqc2Zmc3NzZmZmIjp7InVzZXJfaW5mbyI6eyJwaWRfdXJsIjpudWxsLCJwaWQiOm51bGwsInVybCI6Ii91c2VyL2luZm8vIiwiaWQiOjE5LCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTc1MjhcdTYyMzdcdTRlMmFcdTRlYmFcdTRmZTFcdTYwNmYifSwic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJfY2hhbmdlbGlzdCI6eyJwaWRfdXJsIjpudWxsLCJwaWQiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsImlkIjozLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTY3MGRcdTUyYTFcdTU2NjhcdTUyMTdcdTg4NjgifX0sInU4ZmtrZGRzYXNkYXNkc2pkZmtqc2YiOnsiMiI6eyJjaGlsZHJlbiI6W3siaWQiOjMsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU1MjE3XHU4ODY4IiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyL2xpc3QvIn1dLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1N2JhMVx1NzQwNiIsImljb24iOiJmYS1hc3RlcmlzayJ9LCIzIjp7ImNoaWxkcmVuIjpbeyJpZCI6MTksInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZTJhXHU0ZWJhXHU0ZmUxXHU2MDZmIiwidXJsIjoiL3VzZXIvaW5mby8ifV0sInRpdGxlIjoiXHU0ZTJhXHU0ZWJhXHU4YmJlXHU3ZjZlIiwiaWNvbiI6ImZhLWFkZHJlc3MtY2FyZC1vIn19fQ==','2018-11-08 13:12:44.671458'),('r67f3ugrjw8o3dxkw6t41sj4zyxvdafg','ZmQxNzA1NTRmZGRlOGUzYmM3NzlmMDgxZWVhMzM1ZmIyYjQ3ZTExZDp7InU4ZmtrYXNzc2pkZmtqc2Zmc3NzZmZmIjp7InN0YXJrOnJlcG9zaXRvcnlfc2VydmVyX2NoYW5nZWxpc3QiOnsiaWQiOjMsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU1MjE3XHU4ODY4IiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVyL2xpc3QvIiwicGlkX3VybCI6bnVsbCwicGlkX25hbWUiOm51bGwsInBpZCI6bnVsbH0sInVzZXJfaW5mbyI6eyJpZCI6MTksInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZTJhXHU0ZWJhXHU0ZmUxXHU2MDZmIiwidXJsIjoiL3VzZXIvaW5mby8iLCJwaWRfdXJsIjpudWxsLCJwaWRfbmFtZSI6bnVsbCwicGlkIjpudWxsfX0sInU4ZmtrZGRzYXNkYXNkc2pkZmtqc2YiOnsiMiI6eyJjaGlsZHJlbiI6W3siaWQiOjMsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU1MjE3XHU4ODY4In1dLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1N2JhMVx1NzQwNiIsImljb24iOiJmYS1hc3RlcmlzayJ9LCIzIjp7ImNoaWxkcmVuIjpbeyJpZCI6MTksInVybCI6Ii91c2VyL2luZm8vIiwidGl0bGUiOiJcdTc1MjhcdTYyMzdcdTRlMmFcdTRlYmFcdTRmZTFcdTYwNmYifV0sInRpdGxlIjoiXHU0ZTJhXHU0ZWJhXHU4YmJlXHU3ZjZlIiwiaWNvbiI6ImZhLWFkZHJlc3MtY2FyZC1vIn19fQ==','2018-11-07 15:18:41.196203'),('umj1nzx0qf8flrbjqg137by8ql964455','YWNlNjc0NzZhZTA4ZTU4ZDQ5ODFjZWRhN2UyYmI4YjY1Nzg1MWE5Njp7InU4ZmtrZGRzYXNkYXNkc2pkZmtqc2YiOnsiMSI6eyJjaGlsZHJlbiI6W3sidXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU0ZmUxXHU2MDZmIiwiaWQiOjd9LHsidXJsIjoiL3JiYWMvZGlzdHJpYnV0ZS9wZXJtaXNzaW9ucy8iLCJ0aXRsZSI6Ilx1NTIwNlx1OTE0ZFx1Njc0M1x1OTY1MCIsImlkIjoxNX0seyJ1cmwiOiIvcmJhYy9yb2xlL2xpc3QvIiwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMTdcdTg4NjgiLCJpZCI6MTZ9XSwidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTdiYTFcdTc0MDYiLCJpY29uIjoiZmEtYWRkcmVzcy1ib29rIn0sIjIiOnsiY2hpbGRyZW4iOlt7InVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU1MjE3XHU4ODY4IiwiaWQiOjN9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbWVtb3J5L2xpc3QvIiwidGl0bGUiOiJcdTUxODVcdTViNThcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgiLCJpZCI6MjN9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcnByb2ZpbGUvbGlzdC8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2Zlx1NTIxN1x1ODg2OCIsImlkIjoyOX0seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9hZG1pbmluZm8vbGlzdC8iLCJ0aXRsZSI6Ilx1OGQyNlx1NTNmN1x1NWJjNlx1NzgwMVx1NTIxN1x1ODg2OCIsImlkIjozM30seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VyZ3JvdXAvbGlzdC8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1N2VjNFx1NTIxN1x1ODg2OCIsImlkIjozN30seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvbGlzdC8iLCJ0aXRsZSI6Ilx1NGUxYVx1NTJhMVx1N2ViZlx1NTIxN1x1ODg2OCIsImlkIjo0MX0seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvbGlzdC8iLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NjgwN1x1N2I3ZVx1NTIxN1x1ODg2OCIsImlkIjo0NX0seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9pZGMvbGlzdC8iLCJ0aXRsZSI6IklEQ1x1NjczYVx1NjIzZlx1NTIxN1x1ODg2OCIsImlkIjo0OX0seyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrL2xpc3QvIiwidGl0bGUiOiJcdTc4NmNcdTc2ZDhcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgiLCJpZCI6NTN9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbmljL2xpc3QvIiwidGl0bGUiOiJcdTdmNTFcdTUzNjFcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgiLCJpZCI6NTd9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkL2xpc3QvIiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTUzZDhcdTY2ZjRcdThiYjBcdTVmNTVcdTUyMTdcdTg4NjgiLCJpZCI6NjV9XSwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTdiYTFcdTc0MDYiLCJpY29uIjoiZmEtYXN0ZXJpc2sifSwiMyI6eyJjaGlsZHJlbiI6W3sidXJsIjoiL3VzZXIvaW5mby8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1NGUyYVx1NGViYVx1NGZlMVx1NjA2ZiIsImlkIjoxOX1dLCJ0aXRsZSI6Ilx1NGUyYVx1NGViYVx1OGJiZVx1N2Y2ZSIsImljb24iOiJmYS1hZGRyZXNzLWNhcmQtbyJ9LCI0Ijp7ImNoaWxkcmVuIjpbeyJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9jb25maWd0eXBlL2xpc3QvIiwidGl0bGUiOiJcdTkxNGRcdTdmNmVcdTdjN2JcdTU3OGJcdTUyMTdcdTg4NjgiLCJpZCI6NjZ9LHsidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvY29uZmlnY29udGVudC9saXN0LyIsInRpdGxlIjoiXHU5MTRkXHU3ZjZlXHU1MTg1XHU1YmI5XHU1MjE3XHU4ODY4IiwiaWQiOjcwfV0sInRpdGxlIjoiXHU5MTRkXHU3ZjZlXHU2NTg3XHU0ZWY2IiwiaWNvbiI6ImZhLWJhci1jaGFydCJ9fSwidThma2thc3NzamRma2pzZmZzc3NmZmYiOnsic3Rhcms6cmVwb3NpdG9yeV91c2VyZ3JvdXBfY2hhbmdlIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VyZ3JvdXAvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VyZ3JvdXAvKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1N2VjNFx1N2YxNlx1OGY5MSIsInBpZCI6MzcsImlkIjozOX0sInJiYWM6bWVudV9hZGQiOnsicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ1cmwiOiIvcmJhYy9tZW51L2FkZC8iLCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwidGl0bGUiOiJcdTgzZGNcdTUzNTVcdTZkZmJcdTUyYTAiLCJwaWQiOjcsImlkIjo4fSwicmJhYzpwZXJtaXNzaW9uX2RlbCI6eyJwaWRfdXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInVybCI6Ii9yYmFjL3Blcm1pc3Npb24vZGVsLyg/UDxwaz5cXGQrKS8iLCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTUyMjBcdTk2NjQiLCJwaWQiOjcsImlkIjoxM30sInN0YXJrOnJlcG9zaXRvcnlfaWRjX2RlbCI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2lkY19jaGFuZ2VsaXN0IiwidGl0bGUiOiJJRENcdTY3M2FcdTYyM2ZcdTUyMjBcdTk2NjQiLCJwaWQiOjQ5LCJpZCI6NTJ9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcl9jaGFuZ2UiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci8oP1A8cGs+XFxkKykvY2hhbmdlLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU3ZjE2XHU4ZjkxIiwicGlkIjozLCJpZCI6NX0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfYWRkIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJwcm9maWxlL2FkZC8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU2ZGZiXHU1MmEwIiwicGlkIjoyOSwiaWQiOjMwfSwic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJfYWRkIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXIvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXIvYWRkLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU2NzBkXHU1MmExXHU1NjY4XHU2ZGZiXHU1MmEwIiwicGlkIjozLCJpZCI6NH0sInJiYWM6bXVsdGlfcGVybWlzc2lvbnMiOnsicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ1cmwiOiIvcmJhYy9tdWx0aS9wZXJtaXNzaW9ucy8iLCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwidGl0bGUiOiJcdTYyNzlcdTkxY2ZcdTRmZWVcdTY1MzlcdTY3NDNcdTk2NTAiLCJwaWQiOjcsImlkIjoxNH0sInN0YXJrOnJlcG9zaXRvcnlfY29uZmlndHlwZV9jaGFuZ2UiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2NvbmZpZ3R5cGUvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9jb25maWd0eXBlLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2NvbmZpZ3R5cGVfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU5MTRkXHU3ZjZlXHU3YzdiXHU1NzhiXHU0ZmVlXHU2NTM5IiwicGlkIjo2NiwiaWQiOjY4fSwic3Rhcms6cmVwb3NpdG9yeV9uaWNfY2hhbmdlIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfbmljX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1N2Y1MVx1NTM2MVx1NGZlMVx1NjA2Zlx1N2YxNlx1OGY5MSIsInBpZCI6NTcsImlkIjo1OX0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2FkZCI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcmdyb3VwL2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcmdyb3VwL2FkZC8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdXNlcmdyb3VwX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1N2VjNFx1NmRmYlx1NTJhMCIsInBpZCI6MzcsImlkIjozOH0sInN0YXJrOnJlcG9zaXRvcnlfYWRtaW5pbmZvX2FkZCI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYWRtaW5pbmZvL2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYWRtaW5pbmZvL2FkZC8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfYWRtaW5pbmZvX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1OGQyNlx1NTNmN1x1NWJjNlx1NzgwMVx1NmRmYlx1NTJhMCIsInBpZCI6MzMsImlkIjozNH0sInN0YXJrOnJlcG9zaXRvcnlfY29uZmlnY29udGVudF9kZWwiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2NvbmZpZ2NvbnRlbnQvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9jb25maWdjb250ZW50Lyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2NvbmZpZ2NvbnRlbnRfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU5MTRkXHU3ZjZlXHU1MTg1XHU1YmI5XHU1MjIwXHU5NjY0IiwicGlkIjo3MCwiaWQiOjczfSwidXNlcl9pbmZvIjp7InBpZF91cmwiOm51bGwsInVybCI6Ii91c2VyL2luZm8vIiwicGlkX25hbWUiOm51bGwsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZTJhXHU0ZWJhXHU0ZmUxXHU2MDZmIiwicGlkIjpudWxsLCJpZCI6MTl9LCJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby9saXN0LyIsInBpZF9uYW1lIjpudWxsLCJ0aXRsZSI6Ilx1OGQyNlx1NTNmN1x1NWJjNlx1NzgwMVx1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwiaWQiOjMzfSwic3Rhcms6cmVwb3NpdG9yeV9idXNpbmVzc3VuaXRfYWRkIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvYWRkLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9idXNpbmVzc3VuaXRfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU0ZTFhXHU1MmExXHU3ZWJmXHU2ZGZiXHU1MmEwIiwicGlkIjo0MSwiaWQiOjQyfSwic3Rhcms6cmVwb3NpdG9yeV9jb25maWd0eXBlX2FkZCI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvY29uZmlndHlwZS9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2NvbmZpZ3R5cGUvYWRkLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9jb25maWd0eXBlX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1OTE0ZFx1N2Y2ZVx1N2M3Ylx1NTc4Ylx1NmRmYlx1NTJhMCIsInBpZCI6NjYsImlkIjo2N30sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZWxpc3QiOnsicGlkX3VybCI6bnVsbCwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkL2xpc3QvIiwicGlkX25hbWUiOm51bGwsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU1M2Q4XHU2NmY0XHU4YmIwXHU1ZjU1XHU1MjE3XHU4ODY4IiwicGlkIjpudWxsLCJpZCI6NjV9LCJzdGFyazpyZXBvc2l0b3J5X21lbW9yeV9jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS9saXN0LyIsInBpZF9uYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NTE4NVx1NWI1OFx1NGZlMVx1NjA2Zlx1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwiaWQiOjIzfSwic3Rhcms6cmVwb3NpdG9yeV9idXNpbmVzc3VuaXRfZGVsIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvKD9QPHBrPlxcZCspL2RlbC8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfYnVzaW5lc3N1bml0X2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1NGUxYVx1NTJhMVx1N2ViZlx1NTIyMFx1OTY2NCIsInBpZCI6NDEsImlkIjo0NH0sInJiYWM6bWVudV9saXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTRmZTFcdTYwNmYiLCJwaWQiOm51bGwsImlkIjo3fSwic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJfZGVsIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXIvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9zZXJ2ZXIvKD9QPHBrPlxcZCspL2RlbC8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVyX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1NjcwZFx1NTJhMVx1NTY2OFx1NTIyMFx1OTY2NCIsInBpZCI6MywiaWQiOjZ9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcnJlY29yZF9jaGFuZ2UiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC8oP1A8cGs+XFxkKykvY2hhbmdlLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJyZWNvcmRfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU1M2Q4XHU2NmY0XHU4YmIwXHU1ZjU1XHU0ZmVlXHU2NTM5IiwicGlkIjo2NSwiaWQiOjYzfSwic3Rhcms6cmVwb3NpdG9yeV90YWdfY2hhbmdlIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdGFnX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NjgwN1x1N2I3ZVx1N2YxNlx1OGY5MSIsInBpZCI6NDUsImlkIjo0N30sInJiYWM6cm9sZV9lZGl0Ijp7InBpZF91cmwiOiIvcmJhYy9yb2xlL2xpc3QvIiwidXJsIjoiL3JiYWMvcm9sZS9lZGl0Lyg/UDxwaz5cXGQrKS8iLCJwaWRfbmFtZSI6InJiYWM6cm9sZV9saXN0IiwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTdmMTZcdThmOTEiLCJwaWQiOjE2LCJpZCI6MTd9LCJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2NoYW5nZSI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdXNlcnByb2ZpbGUvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS8oP1A8cGs+XFxkKykvY2hhbmdlLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV91c2VycHJvZmlsZV9jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcdTdmMTZcdThmOTEiLCJwaWQiOjI5LCJpZCI6MzF9LCJzdGFyazpyZXBvc2l0b3J5X2Rpc2tfYWRkIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrL2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvZGlzay9hZGQvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2Rpc2tfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU3ODZjXHU3NmQ4XHU0ZmUxXHU2MDZmXHU2ZGZiXHU1MmEwIiwicGlkIjo1MywiaWQiOjU0fSwic3Rhcms6cmVwb3NpdG9yeV9kaXNrX2NoYW5nZSI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvZGlzay9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfZGlza19jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdTc4NmNcdTc2ZDhcdTRmZTFcdTYwNmZcdTdmMTZcdThmOTEiLCJwaWQiOjUzLCJpZCI6NTV9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcnJlY29yZF9kZWwiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlcnJlY29yZC8oP1A8cGs+XFxkKykvZGVsLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9zZXJ2ZXJyZWNvcmRfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU1M2Q4XHU2NmY0XHU4YmIwXHU1ZjU1XHU1MjIwXHU5NjY0IiwicGlkIjo2NSwiaWQiOjY0fSwic3Rhcms6cmVwb3NpdG9yeV9jb25maWdjb250ZW50X2NoYW5nZSI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvY29uZmlnY29udGVudC9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2NvbmZpZ2NvbnRlbnQvKD9QPHBrPlxcZCspL2NoYW5nZS8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfY29uZmlnY29udGVudF9jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdTkxNGRcdTdmNmVcdTUxODVcdTViYjlcdTRmZWVcdTY1MzkiLCJwaWQiOjcwLCJpZCI6NzJ9LCJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19kZWwiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2FkbWluaW5mby8oP1A8cGs+XFxkKykvZGVsLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9hZG1pbmluZm9fY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU4ZDI2XHU1M2Y3XHU1YmM2XHU3ODAxXHU1MjIwXHU5NjY0IiwicGlkIjozMywiaWQiOjM2fSwic3Rhcms6cmVwb3NpdG9yeV90YWdfZGVsIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS90YWcvKD9QPHBrPlxcZCspL2RlbC8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfdGFnX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NjgwN1x1N2I3ZVx1NTIyMFx1OTY2NCIsInBpZCI6NDUsImlkIjo0OH0sInN0YXJrOnJlcG9zaXRvcnlfY29uZmlnY29udGVudF9jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2NvbmZpZ2NvbnRlbnQvbGlzdC8iLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTkxNGRcdTdmNmVcdTUxODVcdTViYjlcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsImlkIjo3MH0sInN0YXJrOnJlcG9zaXRvcnlfZGlza19jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svbGlzdC8iLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTc4NmNcdTc2ZDhcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsImlkIjo1M30sInN0YXJrOnJlcG9zaXRvcnlfY29uZmlndHlwZV9jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2NvbmZpZ3R5cGUvbGlzdC8iLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTkxNGRcdTdmNmVcdTdjN2JcdTU3OGJcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsImlkIjo2Nn0sInN0YXJrOnJlcG9zaXRvcnlfdXNlcnByb2ZpbGVfZGVsIjp7InBpZF91cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS91c2VycHJvZmlsZS9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJwcm9maWxlLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3VzZXJwcm9maWxlX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2Zlx1NTIyMFx1OTY2NCIsInBpZCI6MjksImlkIjozMn0sInN0YXJrOnJlcG9zaXRvcnlfYWRtaW5pbmZvX2NoYW5nZSI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYWRtaW5pbmZvL2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYWRtaW5pbmZvLyg/UDxwaz5cXGQrKS9jaGFuZ2UvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2FkbWluaW5mb19jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdThkMjZcdTUzZjdcdTViYzZcdTc4MDFcdTRmZWVcdTY1MzkiLCJwaWQiOjMzLCJpZCI6MzV9LCJzdGFyazpyZXBvc2l0b3J5X21lbW9yeV9hZGQiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS9hZGQvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X21lbW9yeV9jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdTUxODVcdTViNThcdTRmZTFcdTYwNmZcdTZkZmJcdTUyYTAiLCJwaWQiOjIzLCJpZCI6MjR9LCJyYmFjOmRpc3RyaWJ1dGVfcGVybWlzc2lvbnMiOnsicGlkX3VybCI6bnVsbCwidXJsIjoiL3JiYWMvZGlzdHJpYnV0ZS9wZXJtaXNzaW9ucy8iLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTUyMDZcdTkxNGRcdTY3NDNcdTk2NTAiLCJwaWQiOm51bGwsImlkIjoxNX0sInN0YXJrOnJlcG9zaXRvcnlfaWRjX2FkZCI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvaWRjL2FkZC8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfaWRjX2NoYW5nZWxpc3QiLCJ0aXRsZSI6IklEQ1x1NjczYVx1NjIzZlx1NmRmYlx1NTJhMCIsInBpZCI6NDksImlkIjo1MH0sInJiYWM6cm9sZV9saXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9yYmFjL3JvbGUvbGlzdC8iLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsImlkIjoxNn0sInN0YXJrOnJlcG9zaXRvcnlfbmljX2RlbCI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbmljL2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvbmljLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X25pY19jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdTdmNTFcdTUzNjFcdTRmZTFcdTYwNmZcdTUyMjBcdTk2NjQiLCJwaWQiOjU3LCJpZCI6NjB9LCJzdGFyazpyZXBvc2l0b3J5X3VzZXJncm91cF9jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9saXN0LyIsInBpZF9uYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1N2VjNFx1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwiaWQiOjM3fSwic3Rhcms6cmVwb3NpdG9yeV91c2VycHJvZmlsZV9jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJwcm9maWxlL2xpc3QvIiwicGlkX25hbWUiOm51bGwsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXHU1MjE3XHU4ODY4IiwicGlkIjpudWxsLCJpZCI6Mjl9LCJyYmFjOnBlcm1pc3Npb25fZWRpdCI6eyJwaWRfdXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInVybCI6Ii9yYmFjL3Blcm1pc3Npb24vZWRpdC8oP1A8cGs+XFxkKykvIiwicGlkX25hbWUiOiJyYmFjOm1lbnVfbGlzdCIsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU3ZjE2XHU4ZjkxIiwicGlkIjo3LCJpZCI6MTJ9LCJzdGFyazpyZXBvc2l0b3J5X21lbW9yeV9jaGFuZ2UiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS8oP1A8cGs+XFxkKykvY2hhbmdlLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9tZW1vcnlfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU1MTg1XHU1YjU4XHU0ZmUxXHU2MDZmXHU3ZjE2XHU4ZjkxIiwicGlkIjoyMywiaWQiOjI1fSwicmJhYzptZW51X2VkaXQiOnsicGlkX3VybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ1cmwiOiIvcmJhYy9tZW51L2VkaXQvKD9QPHBrPlxcZCspLyIsInBpZF9uYW1lIjoicmJhYzptZW51X2xpc3QiLCJ0aXRsZSI6Ilx1ODNkY1x1NTM1NVx1N2YxNlx1OGY5MSIsInBpZCI6NywiaWQiOjl9LCJzdGFyazpyZXBvc2l0b3J5X21lbW9yeV9kZWwiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L21lbW9yeS8oP1A8cGs+XFxkKykvZGVsLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9tZW1vcnlfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU1MTg1XHU1YjU4XHU0ZmUxXHU2MDZmXHU1MjIwXHU5NjY0IiwicGlkIjoyMywiaWQiOjI2fSwic3Rhcms6cmVwb3NpdG9yeV9uaWNfY2hhbmdlbGlzdCI6eyJwaWRfdXJsIjpudWxsLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9uaWMvbGlzdC8iLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTdmNTFcdTUzNjFcdTRmZTFcdTYwNmZcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsImlkIjo1N30sInN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2FkZCI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkL2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvc2VydmVycmVjb3JkL2FkZC8iLCJwaWRfbmFtZSI6InN0YXJrOnJlcG9zaXRvcnlfc2VydmVycmVjb3JkX2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1OGQ0NFx1NGVhN1x1NTNkOFx1NjZmNFx1OGJiMFx1NWY1NVx1NmRmYlx1NTJhMCIsInBpZCI6NjUsImlkIjo2Mn0sInN0YXJrOnJlcG9zaXRvcnlfdGFnX2NoYW5nZWxpc3QiOnsicGlkX3VybCI6bnVsbCwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvdGFnL2xpc3QvIiwicGlkX25hbWUiOm51bGwsInRpdGxlIjoiXHU4ZDQ0XHU0ZWE3XHU2ODA3XHU3YjdlXHU1MjE3XHU4ODY4IiwicGlkIjpudWxsLCJpZCI6NDV9LCJzdGFyazpyZXBvc2l0b3J5X2lkY19jaGFuZ2UiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2lkYy9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2lkYy8oP1A8cGs+XFxkKykvY2hhbmdlLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9pZGNfY2hhbmdlbGlzdCIsInRpdGxlIjoiSURDXHU2NzNhXHU2MjNmXHU3ZjE2XHU4ZjkxIiwicGlkIjo0OSwiaWQiOjUxfSwicmJhYzpyb2xlX2RlbCI6eyJwaWRfdXJsIjoiL3JiYWMvcm9sZS9saXN0LyIsInVybCI6Ii9yYmFjL3JvbGUvZGVsLyg/UDxwaz5cXGQrKS8iLCJwaWRfbmFtZSI6InJiYWM6cm9sZV9saXN0IiwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMjBcdTk2NjQiLCJwaWQiOjE2LCJpZCI6MTh9LCJzdGFyazpyZXBvc2l0b3J5X2lkY19jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2lkYy9saXN0LyIsInBpZF9uYW1lIjpudWxsLCJ0aXRsZSI6IklEQ1x1NjczYVx1NjIzZlx1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwiaWQiOjQ5fSwic3Rhcms6cmVwb3NpdG9yeV9jb25maWdjb250ZW50X2FkZCI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvY29uZmlnY29udGVudC9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2NvbmZpZ2NvbnRlbnQvYWRkLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV9jb25maWdjb250ZW50X2NoYW5nZWxpc3QiLCJ0aXRsZSI6Ilx1OTE0ZFx1N2Y2ZVx1NTE4NVx1NWJiOVx1NmRmYlx1NTJhMCIsInBpZCI6NzAsImlkIjo3MX0sInN0YXJrOnJlcG9zaXRvcnlfY29uZmlndHlwZV9kZWwiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2NvbmZpZ3R5cGUvbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9jb25maWd0eXBlLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2NvbmZpZ3R5cGVfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU5MTRkXHU3ZjZlXHU3YzdiXHU1NzhiXHU1MjIwXHU5NjY0IiwicGlkIjo2NiwiaWQiOjY5fSwic3Rhcms6cmVwb3NpdG9yeV9idXNpbmVzc3VuaXRfY2hhbmdlbGlzdCI6eyJwaWRfdXJsIjpudWxsLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9idXNpbmVzc3VuaXQvbGlzdC8iLCJwaWRfbmFtZSI6bnVsbCwidGl0bGUiOiJcdTRlMWFcdTUyYTFcdTdlYmZcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsImlkIjo0MX0sInN0YXJrOnJlcG9zaXRvcnlfYnVzaW5lc3N1bml0X2NoYW5nZSI6eyJwaWRfdXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYnVzaW5lc3N1bml0L2xpc3QvIiwidXJsIjoiL3N0YXJrL3JlcG9zaXRvcnkvYnVzaW5lc3N1bml0Lyg/UDxwaz5cXGQrKS9jaGFuZ2UvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2J1c2luZXNzdW5pdF9jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdTRlMWFcdTUyYTFcdTdlYmZcdTdmMTZcdThmOTEiLCJwaWQiOjQxLCJpZCI6NDN9LCJzdGFyazpyZXBvc2l0b3J5X3NlcnZlcl9jaGFuZ2VsaXN0Ijp7InBpZF91cmwiOm51bGwsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3NlcnZlci9saXN0LyIsInBpZF9uYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NjcwZFx1NTJhMVx1NTY2OFx1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwiaWQiOjN9LCJyYmFjOnBlcm1pc3Npb25fYWRkIjp7InBpZF91cmwiOiIvcmJhYy9tZW51L2xpc3QvIiwidXJsIjoiL3JiYWMvcGVybWlzc2lvbi9hZGQvIiwicGlkX25hbWUiOiJyYmFjOm1lbnVfbGlzdCIsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU2ZGZiXHU1MmEwIiwicGlkIjo3LCJpZCI6MTF9LCJzdGFyazpyZXBvc2l0b3J5X3RhZ19hZGQiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3RhZy9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3RhZy9hZGQvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X3RhZ19jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdThkNDRcdTRlYTdcdTY4MDdcdTdiN2VcdTZkZmJcdTUyYTAiLCJwaWQiOjQ1LCJpZCI6NDZ9LCJzdGFyazpyZXBvc2l0b3J5X25pY19hZGQiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L25pYy9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L25pYy9hZGQvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X25pY19jaGFuZ2VsaXN0IiwidGl0bGUiOiJcdTdmNTFcdTUzNjFcdTRmZTFcdTYwNmZcdTZkZmJcdTUyYTAiLCJwaWQiOjU3LCJpZCI6NTh9LCJzdGFyazpyZXBvc2l0b3J5X3VzZXJncm91cF9kZWwiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC9saXN0LyIsInVybCI6Ii9zdGFyay9yZXBvc2l0b3J5L3VzZXJncm91cC8oP1A8cGs+XFxkKykvZGVsLyIsInBpZF9uYW1lIjoic3Rhcms6cmVwb3NpdG9yeV91c2VyZ3JvdXBfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU3NTI4XHU2MjM3XHU3ZWM0XHU1MjIwXHU5NjY0IiwicGlkIjozNywiaWQiOjQwfSwicmJhYzptZW51X2RlbCI6eyJwaWRfdXJsIjoiL3JiYWMvbWVudS9saXN0LyIsInVybCI6Ii9yYmFjL21lbnUvZGVsLyg/UDxwaz5cXGQrKS8iLCJwaWRfbmFtZSI6InJiYWM6bWVudV9saXN0IiwidGl0bGUiOiJcdTgzZGNcdTUzNTVcdTUyMjBcdTk2NjQiLCJwaWQiOjcsImlkIjoxMH0sInN0YXJrOnJlcG9zaXRvcnlfZGlza19kZWwiOnsicGlkX3VybCI6Ii9zdGFyay9yZXBvc2l0b3J5L2Rpc2svbGlzdC8iLCJ1cmwiOiIvc3RhcmsvcmVwb3NpdG9yeS9kaXNrLyg/UDxwaz5cXGQrKS9kZWwvIiwicGlkX25hbWUiOiJzdGFyazpyZXBvc2l0b3J5X2Rpc2tfY2hhbmdlbGlzdCIsInRpdGxlIjoiXHU3ODZjXHU3NmQ4XHU0ZmUxXHU2MDZmXHU1MjIwXHU5NjY0IiwicGlkIjo1MywiaWQiOjU2fX19','2018-12-24 07:58:47.681049'),('wv6vrpq7ux2yz5ooifc6zox73ysiwglc','NTJiNzI4ZjcxMTVlMTk4ZjM0Zjc0YmM2OTc0MzRjYmYxZDI5MGVhMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3NGE1ZTEyOGIzNWQ1NmE5M2RmNDRkNDIxODk1ZDQ1MTZjNDAzNmI1IiwidThma2thc3NzamRma2pzZmZmZmYiOnsiY3VzdG9tZXIvbGlzdC8iOnsidXJsIjoiY3VzdG9tZXIvbGlzdC8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1Njc0M1x1OTY1MCIsImlkIjoxLCJwaWRfbmFtZSI6bnVsbCwicGlkIjpudWxsLCJwaWRfdXJsIjpudWxsfX0sInU4Zmtrc2pkZmtqc2YiOnt9fQ==','2018-11-07 04:35:25.421545');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_menu`
--

DROP TABLE IF EXISTS `rbac_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_menu`
--

LOCK TABLES `rbac_menu` WRITE;
/*!40000 ALTER TABLE `rbac_menu` DISABLE KEYS */;
INSERT INTO `rbac_menu` VALUES (1,'权限管理','fa-address-book'),(2,'资产管理','fa-asterisk'),(3,'个人设置','fa-address-card-o'),(4,'配置文件','fa-bar-chart');
/*!40000 ALTER TABLE `rbac_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_permission`
--

DROP TABLE IF EXISTS `rbac_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `url` varchar(128) NOT NULL,
  `name` varchar(64) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `pid_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `name` (`name`),
  KEY `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` (`menu_id`),
  KEY `rbac_permission_pid_id_6939354d_fk_rbac_permission_id` (`pid_id`),
  CONSTRAINT `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `rbac_menu` (`id`),
  CONSTRAINT `rbac_permission_pid_id_6939354d_fk_rbac_permission_id` FOREIGN KEY (`pid_id`) REFERENCES `rbac_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_permission`
--

LOCK TABLES `rbac_permission` WRITE;
/*!40000 ALTER TABLE `rbac_permission` DISABLE KEYS */;
INSERT INTO `rbac_permission` VALUES (2,'api提交地址','/api/server','server',NULL,NULL),(3,'服务器列表','/stark/repository/server/list/','stark:repository_server_changelist',2,NULL),(4,'服务器添加','/stark/repository/server/add/','stark:repository_server_add',NULL,3),(5,'服务器编辑','/stark/repository/server/(?P<pk>\\d+)/change/','stark:repository_server_change',NULL,3),(6,'服务器删除','/stark/repository/server/(?P<pk>\\d+)/del/','stark:repository_server_del',NULL,3),(7,'权限信息','/rbac/menu/list/','rbac:menu_list',1,NULL),(8,'菜单添加','/rbac/menu/add/','rbac:menu_add',NULL,7),(9,'菜单编辑','/rbac/menu/edit/(?P<pk>\\d+)/','rbac:menu_edit',NULL,7),(10,'菜单删除','/rbac/menu/del/(?P<pk>\\d+)/','rbac:menu_del',NULL,7),(11,'权限添加','/rbac/permission/add/','rbac:permission_add',NULL,7),(12,'权限编辑','/rbac/permission/edit/(?P<pk>\\d+)/','rbac:permission_edit',NULL,7),(13,'权限删除','/rbac/permission/del/(?P<pk>\\d+)/','rbac:permission_del',NULL,7),(14,'批量修改权限','/rbac/multi/permissions/','rbac:multi_permissions',NULL,7),(15,'分配权限','/rbac/distribute/permissions/','rbac:distribute_permissions',1,NULL),(16,'角色列表','/rbac/role/list/','rbac:role_list',1,NULL),(17,'角色编辑','/rbac/role/edit/(?P<pk>\\d+)/','rbac:role_edit',NULL,16),(18,'角色删除','/rbac/role/del/(?P<pk>\\d+)/','rbac:role_del',NULL,16),(19,'用户个人信息','/user/info/','user_info',3,NULL),(20,'登录','/login/','login',NULL,NULL),(21,'退出','/logout/','logout',NULL,NULL),(23,'内存信息列表','/stark/repository/memory/list/','stark:repository_memory_changelist',2,NULL),(24,'内存信息添加','/stark/repository/memory/add/','stark:repository_memory_add',NULL,23),(25,'内存信息编辑','/stark/repository/memory/(?P<pk>\\d+)/change/','stark:repository_memory_change',NULL,23),(26,'内存信息删除','/stark/repository/memory/(?P<pk>\\d+)/del/','stark:repository_memory_del',NULL,23),(29,'用户信息列表','/stark/repository/userprofile/list/','stark:repository_userprofile_changelist',2,NULL),(30,'用户信息添加','/stark/repository/userprofile/add/','stark:repository_userprofile_add',NULL,29),(31,'用户信息编辑','/stark/repository/userprofile/(?P<pk>\\d+)/change/','stark:repository_userprofile_change',NULL,29),(32,'用户信息删除','/stark/repository/userprofile/(?P<pk>\\d+)/del/','stark:repository_userprofile_del',NULL,29),(33,'账号密码列表','/stark/repository/admininfo/list/','stark:repository_admininfo_changelist',2,NULL),(34,'账号密码添加','/stark/repository/admininfo/add/','stark:repository_admininfo_add',NULL,33),(35,'账号密码修改','/stark/repository/admininfo/(?P<pk>\\d+)/change/','stark:repository_admininfo_change',NULL,33),(36,'账号密码删除','/stark/repository/admininfo/(?P<pk>\\d+)/del/','stark:repository_admininfo_del',NULL,33),(37,'用户组列表','/stark/repository/usergroup/list/','stark:repository_usergroup_changelist',2,NULL),(38,'用户组添加','/stark/repository/usergroup/add/','stark:repository_usergroup_add',NULL,37),(39,'用户组编辑','/stark/repository/usergroup/(?P<pk>\\d+)/change/','stark:repository_usergroup_change',NULL,37),(40,'用户组删除','/stark/repository/usergroup/(?P<pk>\\d+)/del/','stark:repository_usergroup_del',NULL,37),(41,'业务线列表','/stark/repository/businessunit/list/','stark:repository_businessunit_changelist',2,NULL),(42,'业务线添加','/stark/repository/businessunit/add/','stark:repository_businessunit_add',NULL,41),(43,'业务线编辑','/stark/repository/businessunit/(?P<pk>\\d+)/change/','stark:repository_businessunit_change',NULL,41),(44,'业务线删除','/stark/repository/businessunit/(?P<pk>\\d+)/del/','stark:repository_businessunit_del',NULL,41),(45,'资产标签列表','/stark/repository/tag/list/','stark:repository_tag_changelist',2,NULL),(46,'资产标签添加','/stark/repository/tag/add/','stark:repository_tag_add',NULL,45),(47,'资产标签编辑','/stark/repository/tag/(?P<pk>\\d+)/change/','stark:repository_tag_change',NULL,45),(48,'资产标签删除','/stark/repository/tag/(?P<pk>\\d+)/del/','stark:repository_tag_del',NULL,45),(49,'IDC机房列表','/stark/repository/idc/list/','stark:repository_idc_changelist',2,NULL),(50,'IDC机房添加','/stark/repository/idc/add/','stark:repository_idc_add',NULL,49),(51,'IDC机房编辑','/stark/repository/idc/(?P<pk>\\d+)/change/','stark:repository_idc_change',NULL,49),(52,'IDC机房删除','/stark/repository/idc/(?P<pk>\\d+)/del/','stark:repository_idc_del',NULL,49),(53,'硬盘信息列表','/stark/repository/disk/list/','stark:repository_disk_changelist',2,NULL),(54,'硬盘信息添加','/stark/repository/disk/add/','stark:repository_disk_add',NULL,53),(55,'硬盘信息编辑','/stark/repository/disk/(?P<pk>\\d+)/change/','stark:repository_disk_change',NULL,53),(56,'硬盘信息删除','/stark/repository/disk/(?P<pk>\\d+)/del/','stark:repository_disk_del',NULL,53),(57,'网卡信息列表','/stark/repository/nic/list/','stark:repository_nic_changelist',2,NULL),(58,'网卡信息添加','/stark/repository/nic/add/','stark:repository_nic_add',NULL,57),(59,'网卡信息编辑','/stark/repository/nic/(?P<pk>\\d+)/change/','stark:repository_nic_change',NULL,57),(60,'网卡信息删除','/stark/repository/nic/(?P<pk>\\d+)/del/','stark:repository_nic_del',NULL,57),(62,'资产变更记录添加','/stark/repository/serverrecord/add/','stark:repository_serverrecord_add',NULL,65),(63,'资产变更记录修改','/stark/repository/serverrecord/(?P<pk>\\d+)/change/','stark:repository_serverrecord_change',NULL,65),(64,'资产变更记录删除','/stark/repository/serverrecord/(?P<pk>\\d+)/del/','stark:repository_serverrecord_del',NULL,65),(65,'资产变更记录列表','/stark/repository/serverrecord/list/','stark:repository_serverrecord_changelist',2,NULL),(66,'配置类型列表','/stark/repository/configtype/list/','stark:repository_configtype_changelist',4,NULL),(67,'配置类型添加','/stark/repository/configtype/add/','stark:repository_configtype_add',NULL,66),(68,'配置类型修改','/stark/repository/configtype/(?P<pk>\\d+)/change/','stark:repository_configtype_change',NULL,66),(69,'配置类型删除','/stark/repository/configtype/(?P<pk>\\d+)/del/','stark:repository_configtype_del',NULL,66),(70,'配置内容列表','/stark/repository/configcontent/list/','stark:repository_configcontent_changelist',4,NULL),(71,'配置内容添加','/stark/repository/configcontent/add/','stark:repository_configcontent_add',NULL,70),(72,'配置内容修改','/stark/repository/configcontent/(?P<pk>\\d+)/change/','stark:repository_configcontent_change',NULL,70),(73,'配置内容删除','/stark/repository/configcontent/(?P<pk>\\d+)/del/','stark:repository_configcontent_del',NULL,70);
/*!40000 ALTER TABLE `rbac_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role`
--

DROP TABLE IF EXISTS `rbac_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role`
--

LOCK TABLES `rbac_role` WRITE;
/*!40000 ALTER TABLE `rbac_role` DISABLE KEYS */;
INSERT INTO `rbac_role` VALUES (1,'系统管理员'),(2,'python开发团队');
/*!40000 ALTER TABLE `rbac_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role_permissions`
--

DROP TABLE IF EXISTS `rbac_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_role_permissions_role_id_permission_id_d01303da_uniq` (`role_id`,`permission_id`),
  KEY `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` (`permission_id`),
  CONSTRAINT `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` FOREIGN KEY (`permission_id`) REFERENCES `rbac_permission` (`id`),
  CONSTRAINT `rbac_role_permissions_role_id_d10416cb_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role_permissions`
--

LOCK TABLES `rbac_role_permissions` WRITE;
/*!40000 ALTER TABLE `rbac_role_permissions` DISABLE KEYS */;
INSERT INTO `rbac_role_permissions` VALUES (546,1,3),(551,1,4),(566,1,5),(592,1,6),(584,1,7),(567,1,8),(556,1,9),(575,1,10),(593,1,11),(605,1,12),(587,1,13),(568,1,14),(588,1,15),(569,1,16),(563,1,17),(583,1,18),(603,1,19),(554,1,23),(549,1,24),(573,1,25),(578,1,26),(555,1,29),(589,1,30),(595,1,31),(544,1,32),(574,1,33),(606,1,34),(565,1,35),(559,1,36),(576,1,37),(580,1,38),(560,1,39),(545,1,40),(564,1,41),(594,1,42),(585,1,43),(550,1,44),(543,1,45),(604,1,46),(577,1,47),(562,1,48),(548,1,49),(598,1,50),(579,1,51),(547,1,52),(602,1,53),(591,1,54),(542,1,55),(570,1,56),(553,1,57),(601,1,58),(552,1,59),(590,1,60),(596,1,62),(558,1,63),(571,1,64),(581,1,65),(582,1,66),(599,1,67),(600,1,68),(597,1,69),(557,1,70),(572,1,71),(586,1,72),(561,1,73),(20,2,3),(19,2,19);
/*!40000 ALTER TABLE `rbac_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_admininfo`
--

DROP TABLE IF EXISTS `repository_admininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_admininfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `repository_admininfo_user_id_98a72916_fk_repositor` FOREIGN KEY (`user_id`) REFERENCES `repository_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_admininfo`
--

LOCK TABLES `repository_admininfo` WRITE;
/*!40000 ALTER TABLE `repository_admininfo` DISABLE KEYS */;
INSERT INTO `repository_admininfo` VALUES (1,'zhangbuhua','123',1),(2,'heyazhou','123',2);
/*!40000 ALTER TABLE `repository_admininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_admininfo_roles`
--

DROP TABLE IF EXISTS `repository_admininfo_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_admininfo_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admininfo_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `repository_admininfo_roles_admininfo_id_role_id_9b3e9b51_uniq` (`admininfo_id`,`role_id`),
  KEY `repository_admininfo_roles_role_id_b3c4f664_fk_rbac_role_id` (`role_id`),
  CONSTRAINT `repository_admininfo_admininfo_id_3c9d025b_fk_repositor` FOREIGN KEY (`admininfo_id`) REFERENCES `repository_admininfo` (`id`),
  CONSTRAINT `repository_admininfo_roles_role_id_b3c4f664_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_admininfo_roles`
--

LOCK TABLES `repository_admininfo_roles` WRITE;
/*!40000 ALTER TABLE `repository_admininfo_roles` DISABLE KEYS */;
INSERT INTO `repository_admininfo_roles` VALUES (4,1,1),(3,2,2);
/*!40000 ALTER TABLE `repository_admininfo_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_businessunit`
--

DROP TABLE IF EXISTS `repository_businessunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_businessunit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `repository_businessu_contact_id_8120971c_fk_repositor` (`contact_id`),
  KEY `repository_businessu_manager_id_b5b3c2cb_fk_repositor` (`manager_id`),
  CONSTRAINT `repository_businessu_contact_id_8120971c_fk_repositor` FOREIGN KEY (`contact_id`) REFERENCES `repository_usergroup` (`id`),
  CONSTRAINT `repository_businessu_manager_id_b5b3c2cb_fk_repositor` FOREIGN KEY (`manager_id`) REFERENCES `repository_usergroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_businessunit`
--

LOCK TABLES `repository_businessunit` WRITE;
/*!40000 ALTER TABLE `repository_businessunit` DISABLE KEYS */;
INSERT INTO `repository_businessunit` VALUES (1,'自动化运维平台',1,1);
/*!40000 ALTER TABLE `repository_businessunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_configcontent`
--

DROP TABLE IF EXISTS `repository_configcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_configcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `content` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `latest_date` datetime(6),
  `publish_status_id` int(11) NOT NULL,
  `environment_id` int(11) NOT NULL,
  `change_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `repository_configcon_change_user_id_1a642149_fk_repositor` (`change_user_id`),
  CONSTRAINT `repository_configcon_change_user_id_1a642149_fk_repositor` FOREIGN KEY (`change_user_id`) REFERENCES `repository_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_configcontent`
--

LOCK TABLES `repository_configcontent` WRITE;
/*!40000 ALTER TABLE `repository_configcontent` DISABLE KEYS */;
INSERT INTO `repository_configcontent` VALUES (1,'test-map','apiVersion: v1\r\nkind: ConfigMap\r\nmetadata:\r\n  name: wmq-config-mina\r\n  namespace: default\r\ndata:\r\n  wmq.config: |\r\n    {\r\n        \"nodeName\": \"NODENAME\",\r\n        \"bizClusterNames\": [\"wChatMinaxxxxxxxsd3\",\"minadrawTESTTEST\",\"minaanimalchess\"],\r\n        \"listeners\": [{\r\n                    \"host\": \"0.0.0.0\",\r\n                    \"port\": 7884,\r\n                    \"ssl\": true,\r\n                    \"keepAlive\": 30,\r\n                    \"msgSenderThreadCnt\": 1,\r\n                    \"tcpConfig\": {\r\n                            \"backlog\": 128,\r\n                            \"linger\": -1,\r\n                            \"noDelay\": true,\r\n                            \"reuseAddr\": true,\r\n                            \"keepalive\": true\r\n                    },\r\n                    \"nettyConfig\": {\r\n                            \"bossThreadCnt\": 0,\r\n                            \"workerThreadCnt\": 0\r\n                    },\r\n                    \"sslConfig\": {\r\n                            \"useClientMode\": false,\r\n                            \"needClientAuth\": false,\r\n                            \"keyStorePassword\": \"123456\",\r\n                            \"keyManagerPassword\": \"123456\",\r\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\r\n                    }\r\n            }],\r\n        \"websocket\": {\r\n                    \"host\": \"0.0.0.0\",\r\n                    \"port\": 443,\r\n                    \"ssl\": true,\r\n                    \"keepAlive\": 60,\r\n                    \"msgSenderThreadCnt\": 1,\r\n                \"webSocketPath\": \"/websocket_test\",\r\n                \"subProtocols\": \"wmq_json\",\r\n                    \"tcpConfig\": {\r\n                            \"backlog\": 128,\r\n                            \"linger\": -1,\r\n                            \"noDelay\": true,\r\n                            \"reuseAddr\": true,\r\n                            \"keepalive\": true\r\n                    },\r\n                    \"nettyConfig\": {\r\n                            \"bossThreadCnt\": 0,\r\n                            \"workerThreadCnt\": 0\r\n                    },\r\n                    \"sslConfig\": {\r\n                            \"useClientMode\": false,\r\n                            \"needClientAuth\": false,\r\n                            \"keyStorePassword\": \"123456\",\r\n                            \"keyManagerPassword\": \"123456\",\r\n                            \"jksPath\": \"/home/wb-service/wmq/pkcs12/t3.pk12\"\r\n                    }\r\n        },\r\n        \"cluster\": {\r\n                \"clientReconnectInterval\": 1,\r\n                \"clientKeepAlive\": 10,\r\n                \"msgSenderThreadCnt\": 1,\r\n                \"clientTcpConfig\": {\r\n                        \"backlog\": 128,\r\n                        \"linger\": -1,\r\n                        \"noDelay\": true,\r\n                        \"reuseAddr\": true,\r\n                        \"keepalive\": true\r\n                },\r\n                \"clientNettyConfig\": {\r\n                        \"bossThreadCnt\": 0,\r\n                        \"workerThreadCnt\": 0\r\n                }\r\n        },\r\n        \"rpc\": {\r\n                \"host\": \"0.0.0.0\",\r\n                \"port\": 12348,\r\n                \"keepAlive\": 30,\r\n                \"msgSenderThreadCnt\": 1,\r\n                \"tcpConfig\": {\r\n                        \"backlog\": 128,\r\n                        \"linger\": -1,\r\n                        \"noDelay\": true,\r\n                        \"reuseAddr\": true,\r\n                        \"keepalive\": true\r\n                },\r\n                \"nettyConfig\": {\r\n                        \"bossThreadCnt\": 0,\r\n                        \"workerThreadCnt\": 0\r\n                }\r\n        },\r\n        \"dashboard\": {\r\n                \"host\": \"0.0.0.0\",\r\n                \"port\": 23456,\r\n                \"keepAlive\": 600,\r\n                \"tcpConfig\": {\r\n                        \"backlog\": 128,\r\n                        \"linger\": -1,\r\n                        \"noDelay\": true,\r\n                        \"reuseAddr\": true,\r\n                        \"keepalive\": true\r\n                },\r\n                \"nettyConfig\": {\r\n                        \"bossThreadCnt\": 0,\r\n                        \"workerThreadCnt\": 0\r\n                }\r\n        }\r\n    }','自己测试玩','2018-12-10 08:39:58.182470','2018-12-11 04:50:29.073827',1,1,1);
/*!40000 ALTER TABLE `repository_configcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_configtype`
--

DROP TABLE IF EXISTS `repository_configtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_configtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `notes` longtext NOT NULL,
  `create_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_configtype`
--

LOCK TABLES `repository_configtype` WRITE;
/*!40000 ALTER TABLE `repository_configtype` DISABLE KEYS */;
INSERT INTO `repository_configtype` VALUES (1,'configmaps','kubernetes-configmaps','2018-12-10 08:25:48.448476');
/*!40000 ALTER TABLE `repository_configtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_disk`
--

DROP TABLE IF EXISTS `repository_disk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_disk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(8) NOT NULL,
  `model` varchar(128) NOT NULL,
  `capacity` double NOT NULL,
  `pd_type` varchar(32) NOT NULL,
  `server_obj_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `repository_disk_server_obj_id_5e5d02f6_fk_repository_server_id` (`server_obj_id`),
  CONSTRAINT `repository_disk_server_obj_id_5e5d02f6_fk_repository_server_id` FOREIGN KEY (`server_obj_id`) REFERENCES `repository_server` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_disk`
--

LOCK TABLES `repository_disk` WRITE;
/*!40000 ALTER TABLE `repository_disk` DISABLE KEYS */;
INSERT INTO `repository_disk` VALUES (1,'5','S1AXNSAFB00549A     Samsung SSD 840 PRO Series              DXM06B0Q',476.939,'SATA',1),(2,'2','S1SZNSAFA01085L     Samsung SSD 850 PRO 512GB               EXM01B6Q',476.939,'SATA',1),(3,'4','S1AXNSAF303909M     Samsung SSD 840 PRO Series              DXM05B0Q',476.939,'SATA',1),(4,'1','SEAGATE ST300MM0006     LS08S0K2B5AH',279.396,'SAS',1),(5,'3','S1AXNSAF912433K     Samsung SSD 840 PRO Series              DXM06B0Q',476.939,'SATA',1),(6,'0','SEAGATE ST300MM0006     LS08S0K2B5NV',279.396,'SAS',1);
/*!40000 ALTER TABLE `repository_disk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_errorlog`
--

DROP TABLE IF EXISTS `repository_errorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_errorlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL,
  `content` longtext NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `server_obj_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `repository_errorlog_server_obj_id_b7536a01_fk_repositor` (`server_obj_id`),
  CONSTRAINT `repository_errorlog_server_obj_id_b7536a01_fk_repositor` FOREIGN KEY (`server_obj_id`) REFERENCES `repository_server` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_errorlog`
--

LOCK TABLES `repository_errorlog` WRITE;
/*!40000 ALTER TABLE `repository_errorlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `repository_errorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_idc`
--

DROP TABLE IF EXISTS `repository_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `floor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_idc`
--

LOCK TABLES `repository_idc` WRITE;
/*!40000 ALTER TABLE `repository_idc` DISABLE KEYS */;
INSERT INTO `repository_idc` VALUES (1,'昌平机房',1);
/*!40000 ALTER TABLE `repository_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_memory`
--

DROP TABLE IF EXISTS `repository_memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_memory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(32) NOT NULL,
  `manufacturer` varchar(32) DEFAULT NULL,
  `model` varchar(64) NOT NULL,
  `capacity` double DEFAULT NULL,
  `sn` varchar(64) DEFAULT NULL,
  `speed` varchar(16) DEFAULT NULL,
  `server_obj_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `repository_memory_server_obj_id_07c841be_fk_repository_server_id` (`server_obj_id`),
  CONSTRAINT `repository_memory_server_obj_id_07c841be_fk_repository_server_id` FOREIGN KEY (`server_obj_id`) REFERENCES `repository_server` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_memory`
--

LOCK TABLES `repository_memory` WRITE;
/*!40000 ALTER TABLE `repository_memory` DISABLE KEYS */;
INSERT INTO `repository_memory` VALUES (1,'DIMM #3','Not Specified','DRAM',1024,'Not Specified','667 MHz',1),(2,'DIMM #4','Not Specified','DRAM',1024,'Not Specified','667 MHz',1),(3,'DIMM #5','Not Specified','DRAM',1024,'Not Specified','667 MHz',1),(4,'DIMM #0','Not Specified','DRAM',1024,'Not Specified','667 MHz',1),(5,'DIMM #2','Not Specified','DRAM',1024,'Not Specified','667 MHz',1),(6,'DIMM #7','Not Specified','DRAM',0,'Not Specified','667 MHz',1),(7,'DIMM #1','Not Specified','DRAM',1024,'Not Specified','667 MHz',1),(8,'DIMM #6','Not Specified','DRAM',1024,'Not Specified','667 MHz',1);
/*!40000 ALTER TABLE `repository_memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_nic`
--

DROP TABLE IF EXISTS `repository_nic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_nic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `hwaddr` varchar(64) NOT NULL,
  `netmask` varchar(64) NOT NULL,
  `ipaddrs` varchar(256) NOT NULL,
  `up` tinyint(1) NOT NULL,
  `server_obj_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `repository_nic_server_obj_id_5c83b10a_fk_repository_server_id` (`server_obj_id`),
  CONSTRAINT `repository_nic_server_obj_id_5c83b10a_fk_repository_server_id` FOREIGN KEY (`server_obj_id`) REFERENCES `repository_server` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_nic`
--

LOCK TABLES `repository_nic` WRITE;
/*!40000 ALTER TABLE `repository_nic` DISABLE KEYS */;
INSERT INTO `repository_nic` VALUES (1,'eth0','00:1c:42:a5:57:7a','255.255.255.0','10.211.55.4',1,1);
/*!40000 ALTER TABLE `repository_nic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_server`
--

DROP TABLE IF EXISTS `repository_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cabinet_num` varchar(30) DEFAULT NULL,
  `cabinet_order` varchar(30) DEFAULT NULL,
  `server_status_id` int(11) NOT NULL,
  `hostname` varchar(128) NOT NULL,
  `sn` varchar(128) NOT NULL,
  `manufacturer` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `manage_ip` char(39) DEFAULT NULL,
  `os_platform` varchar(16) DEFAULT NULL,
  `os_version` varchar(128) DEFAULT NULL,
  `cpu_count` int(11) DEFAULT NULL,
  `cpu_physical_count` int(11) DEFAULT NULL,
  `cpu_model` varchar(128) DEFAULT NULL,
  `create_at` datetime(6) NOT NULL,
  `latest_date` datetime(6) DEFAULT NULL,
  `business_unit_id` int(11) DEFAULT NULL,
  `idc_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `repository_server_business_unit_id_3fc63ba7_fk_repositor` (`business_unit_id`),
  KEY `repository_server_idc_id_30c74776_fk_repository_idc_id` (`idc_id`),
  KEY `repository_server_sn_b91311c2` (`sn`),
  CONSTRAINT `repository_server_business_unit_id_3fc63ba7_fk_repositor` FOREIGN KEY (`business_unit_id`) REFERENCES `repository_businessunit` (`id`),
  CONSTRAINT `repository_server_idc_id_30c74776_fk_repository_idc_id` FOREIGN KEY (`idc_id`) REFERENCES `repository_idc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_server`
--

LOCK TABLES `repository_server` WRITE;
/*!40000 ALTER TABLE `repository_server` DISABLE KEYS */;
INSERT INTO `repository_server` VALUES (1,'vvvvv','5542257',1,'c1.com','Parallels-1A 1B CB 3B 64 66 4B 13 86 B0 86 FF 7E 2B 20 30','Parallels Software International Inc.','Parallels Virtual Platform',NULL,'linux','CentOS release 6.6 (Final)Kernel  on an \\m',NULL,NULL,NULL,'2018-10-24 04:35:07.180016','2018-10-25 02:57:30.000000',1,1);
/*!40000 ALTER TABLE `repository_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_server_tags`
--

DROP TABLE IF EXISTS `repository_server_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_server_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `repository_server_tags_server_id_tag_id_555aac38_uniq` (`server_id`,`tag_id`),
  KEY `repository_server_tags_tag_id_98d8a705_fk_repository_tag_id` (`tag_id`),
  CONSTRAINT `repository_server_ta_server_id_47d76799_fk_repositor` FOREIGN KEY (`server_id`) REFERENCES `repository_server` (`id`),
  CONSTRAINT `repository_server_tags_tag_id_98d8a705_fk_repository_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `repository_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_server_tags`
--

LOCK TABLES `repository_server_tags` WRITE;
/*!40000 ALTER TABLE `repository_server_tags` DISABLE KEYS */;
INSERT INTO `repository_server_tags` VALUES (1,1,1);
/*!40000 ALTER TABLE `repository_server_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_serverrecord`
--

DROP TABLE IF EXISTS `repository_serverrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_serverrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `create_at` datetime(6) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `server_obj_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `repository_serverrec_creator_id_4a2f3cbe_fk_repositor` (`creator_id`),
  KEY `repository_serverrec_server_obj_id_89de58a9_fk_repositor` (`server_obj_id`),
  CONSTRAINT `repository_serverrec_creator_id_4a2f3cbe_fk_repositor` FOREIGN KEY (`creator_id`) REFERENCES `repository_userprofile` (`id`),
  CONSTRAINT `repository_serverrec_server_obj_id_89de58a9_fk_repositor` FOREIGN KEY (`server_obj_id`) REFERENCES `repository_server` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_serverrecord`
--

LOCK TABLES `repository_serverrecord` WRITE;
/*!40000 ALTER TABLE `repository_serverrecord` DISABLE KEYS */;
INSERT INTO `repository_serverrecord` VALUES (1,'[c1.com]的[os_version]由[CentOS release 6.6 (Final)Kernel  on an \\m]变更为[CentOS release 6.6 (Final)\nKernel \r on an \\m];[c1.com]的[sn]由[P]变更为[Parallels-1A 1B CB 3B 64 66 4B 13 86 B0 86 FF 7E 2B 20 30]','2018-10-24 08:13:11.495032',NULL,1);
/*!40000 ALTER TABLE `repository_serverrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_tag`
--

DROP TABLE IF EXISTS `repository_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_tag`
--

LOCK TABLES `repository_tag` WRITE;
/*!40000 ALTER TABLE `repository_tag` DISABLE KEYS */;
INSERT INTO `repository_tag` VALUES (1,'运维平台');
/*!40000 ALTER TABLE `repository_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_usergroup`
--

DROP TABLE IF EXISTS `repository_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_usergroup`
--

LOCK TABLES `repository_usergroup` WRITE;
/*!40000 ALTER TABLE `repository_usergroup` DISABLE KEYS */;
INSERT INTO `repository_usergroup` VALUES (1,'运维部门');
/*!40000 ALTER TABLE `repository_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_usergroup_users`
--

DROP TABLE IF EXISTS `repository_usergroup_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_usergroup_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `repository_usergroup_use_usergroup_id_userprofile_a8c27955_uniq` (`usergroup_id`,`userprofile_id`),
  KEY `repository_usergroup_userprofile_id_4cf8c06b_fk_repositor` (`userprofile_id`),
  CONSTRAINT `repository_usergroup_usergroup_id_3b7357f7_fk_repositor` FOREIGN KEY (`usergroup_id`) REFERENCES `repository_usergroup` (`id`),
  CONSTRAINT `repository_usergroup_userprofile_id_4cf8c06b_fk_repositor` FOREIGN KEY (`userprofile_id`) REFERENCES `repository_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_usergroup_users`
--

LOCK TABLES `repository_usergroup_users` WRITE;
/*!40000 ALTER TABLE `repository_usergroup_users` DISABLE KEYS */;
INSERT INTO `repository_usergroup_users` VALUES (1,1,1);
/*!40000 ALTER TABLE `repository_usergroup_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_userprofile`
--

DROP TABLE IF EXISTS `repository_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_userprofile`
--

LOCK TABLES `repository_userprofile` WRITE;
/*!40000 ALTER TABLE `repository_userprofile` DISABLE KEYS */;
INSERT INTO `repository_userprofile` VALUES (1,'张步华','75056082@qq.com','2627643','18610966850'),(2,'和亚洲','75056082@qq.com','2627643','18610966850');
/*!40000 ALTER TABLE `repository_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cmdb_dome'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 14:10:56
