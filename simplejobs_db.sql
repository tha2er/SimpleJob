/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_group_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`)
VALUES
	(1,'Can add log entry',1,'add_logentry'),
	(2,'Can change log entry',1,'change_logentry'),
	(3,'Can delete log entry',1,'delete_logentry'),
	(4,'Can add permission',2,'add_permission'),
	(5,'Can change permission',2,'change_permission'),
	(6,'Can delete permission',2,'delete_permission'),
	(7,'Can add user',3,'add_user'),
	(8,'Can change user',3,'change_user'),
	(9,'Can delete user',3,'delete_user'),
	(10,'Can add group',4,'add_group'),
	(11,'Can change group',4,'change_group'),
	(12,'Can delete group',4,'delete_group'),
	(13,'Can add content type',5,'add_contenttype'),
	(14,'Can change content type',5,'change_contenttype'),
	(15,'Can delete content type',5,'delete_contenttype'),
	(16,'Can add session',6,'add_session'),
	(17,'Can change session',6,'change_session'),
	(18,'Can delete session',6,'delete_session'),
	(22,'Can add auth group',8,'add_authgroup'),
	(23,'Can change auth group',8,'change_authgroup'),
	(24,'Can delete auth group',8,'delete_authgroup'),
	(25,'Can add auth group permissions',9,'add_authgrouppermissions'),
	(26,'Can change auth group permissions',9,'change_authgrouppermissions'),
	(27,'Can delete auth group permissions',9,'delete_authgrouppermissions'),
	(28,'Can add auth permission',10,'add_authpermission'),
	(29,'Can change auth permission',10,'change_authpermission'),
	(30,'Can delete auth permission',10,'delete_authpermission'),
	(31,'Can add auth user',11,'add_authuser'),
	(32,'Can change auth user',11,'change_authuser'),
	(33,'Can delete auth user',11,'delete_authuser'),
	(34,'Can add auth user groups',12,'add_authusergroups'),
	(35,'Can change auth user groups',12,'change_authusergroups'),
	(36,'Can delete auth user groups',12,'delete_authusergroups'),
	(37,'Can add auth user user permissions',13,'add_authuseruserpermissions'),
	(38,'Can change auth user user permissions',13,'change_authuseruserpermissions'),
	(39,'Can delete auth user user permissions',13,'delete_authuseruserpermissions'),
	(40,'Can add django admin log',14,'add_djangoadminlog'),
	(41,'Can change django admin log',14,'change_djangoadminlog'),
	(42,'Can delete django admin log',14,'delete_djangoadminlog'),
	(43,'Can add django content type',15,'add_djangocontenttype'),
	(44,'Can change django content type',15,'change_djangocontenttype'),
	(45,'Can delete django content type',15,'delete_djangocontenttype'),
	(46,'Can add django migrations',16,'add_djangomigrations'),
	(47,'Can change django migrations',16,'change_djangomigrations'),
	(48,'Can delete django migrations',16,'delete_djangomigrations'),
	(49,'Can add django session',17,'add_djangosession'),
	(50,'Can change django session',17,'change_djangosession'),
	(51,'Can delete django session',17,'delete_djangosession'),
	(64,'Can add job application',22,'add_jobapplication'),
	(65,'Can change job application',22,'change_jobapplication'),
	(66,'Can delete job application',22,'delete_jobapplication'),
	(67,'Can add job',23,'add_job'),
	(68,'Can change job',23,'change_job'),
	(69,'Can delete job',23,'delete_job');

/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user`;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`)
VALUES
	(1,'pbkdf2_sha256$30000$NZRsD4MFwdmq$d5Ba4jtxCyBaCLNW3nJEmLNhlha8ZzMd2OLKnvxf6vo=','2017-04-02 20:17:41.606941',1,'thaer','thaer','bataineh','batathaer@gmail.com',1,1,'2017-03-31 14:23:41.315745'),
	(2,'pbkdf2_sha256$30000$Z0MNb97ezXS0$vIrpDWETVDoVjHQP+PZ+4k35BR5FfVZE8iJM5Dj250k=','2017-04-02 17:19:48.478438',0,'test','test','test','test@test.com',0,1,'2017-04-02 17:17:08.313951'),
	(4,'pbkdf2_sha256$30000$Z0MNb97ezXS0$vIrpDWETVDoVjHQP+PZ+4k35BR5FfVZE8iJM5Dj250k=','2017-04-02 17:25:54.634039',0,'test2','test2','test2','test@test.com',0,1,'2017-04-02 17:25:37.877858'),
	(5,'pbkdf2_sha256$30000$JCaOTZ6H46Ce$FzJkF8CoQlVEAYCtlMDlggYV0d+X1zF7eyW5LvXyhYk=','2017-04-02 19:07:44.387445',0,'test3','test3','test3','test3@test3.com',0,1,'2017-04-02 18:43:50.723728'),
	(6,'pbkdf2_sha256$30000$iHWXYgQJ9uzW$IaW7qCNce5sSIQnBPcNwHfmo688cwbeLmszHiFzOwTA=','2017-04-02 19:26:32.099058',0,'watad','Ahmad','Watad','ahmad.watad@rezayat.net',1,1,'2017-04-02 19:26:26.851022');

/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_user_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table django_admin_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_admin_log`;

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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



# Dump of table django_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`)
VALUES
	(1,'admin','logentry'),
	(4,'auth','group'),
	(2,'auth','permission'),
	(3,'auth','user'),
	(5,'contenttypes','contenttype'),
	(8,'jobs','authgroup'),
	(9,'jobs','authgrouppermissions'),
	(10,'jobs','authpermission'),
	(11,'jobs','authuser'),
	(12,'jobs','authusergroups'),
	(13,'jobs','authuseruserpermissions'),
	(14,'jobs','djangoadminlog'),
	(15,'jobs','djangocontenttype'),
	(16,'jobs','djangomigrations'),
	(17,'jobs','djangosession'),
	(23,'jobs','job'),
	(22,'jobs','jobapplication'),
	(6,'sessions','session');

/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`)
VALUES
	(1,'contenttypes','0001_initial','2017-03-30 10:25:03.618175'),
	(2,'auth','0001_initial','2017-03-30 10:25:03.985043'),
	(3,'admin','0001_initial','2017-03-30 10:25:04.055292'),
	(4,'admin','0002_logentry_remove_auto_add','2017-03-30 10:25:04.095075'),
	(5,'contenttypes','0002_remove_content_type_name','2017-03-30 10:25:04.157529'),
	(6,'auth','0002_alter_permission_name_max_length','2017-03-30 10:25:04.183361'),
	(7,'auth','0003_alter_user_email_max_length','2017-03-30 10:25:04.213263'),
	(8,'auth','0004_alter_user_username_opts','2017-03-30 10:25:04.223890'),
	(9,'auth','0005_alter_user_last_login_null','2017-03-30 10:25:04.248330'),
	(10,'auth','0006_require_contenttypes_0002','2017-03-30 10:25:04.250118'),
	(11,'auth','0007_alter_validators_add_error_messages','2017-03-30 10:25:04.259880'),
	(12,'auth','0008_alter_user_username_max_length','2017-03-30 10:25:04.289188'),
	(13,'sessions','0001_initial','2017-03-30 10:25:04.322018'),
	(14,'jobs','0001_initial','2017-03-30 12:03:45.816254');

/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`)
VALUES
	('hhutr8qrliof1jytwo09ii2t38d061ku','ZTBmMTFhNmQ1NzEwMWVmMWExMDY0ODEyZTIwYzNhMDdmZWY0Y2Q3Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZjYmU2YjI2ODUwZWRiOWY1NjY1Njk3NDE3MTE2ZjUwMDgyMDVjNjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-16 19:27:02.862026'),
	('v2h8dre0dn2iuhdsl7xypzu6co89m1j4','MDY1MzgyMTk2N2FlMTVhMjY5NjE3NzYxN2M0Y2U0YjNiNzE2MTcwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2YjIxYjE3YzU2YjVlMzBkMzU1OGQ3ZjUzNjIxZDYwMTdiZTYwZDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-16 20:17:41.608812');

/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id_job` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(300) NOT NULL DEFAULT '',
  `job_desc` varchar(2000) NOT NULL DEFAULT '',
  `is_active` int(1) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL,
  `date_inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_job`),
  KEY `id_job` (`id_job`),
  KEY `id_user` (`id_user`),
  KEY `date_inserted` (`date_inserted`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;

INSERT INTO `jobs` (`id_job`, `job_title`, `job_desc`, `is_active`, `id_user`, `date_inserted`)
VALUES
	(1,'Test job 1','Test job 1 details',1,1,'2017-03-31 15:14:55'),
	(2,'Test job 2','Test job 2 details',1,1,'2017-03-31 18:47:18'),
	(3,'Test job 3','Test job 3 details',1,5,'2017-04-02 22:11:10'),
	(4,'Test job 4','Test job 4 details',1,5,'2017-04-02 22:20:36'),
	(5,'Test job 5','Test job 5 details',0,5,'2017-04-02 22:20:44'),
	(6,'Test job 6','Test job 6 details',1,5,'2017-04-02 22:21:44'),
	(7,'Test job 7','Test job 7 details',1,5,'2017-04-02 22:22:04'),
	(8,'Test job 8','Test job 8 details',1,1,'2017-04-02 22:22:34'),
	(9,'Test job 9','Test job 9 details',1,6,'2017-04-02 22:26:44');

/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jobs_applications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs_applications`;

CREATE TABLE `jobs_applications` (
  `id_job_application` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_job` int(11) unsigned NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `date_inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  PRIMARY KEY (`id_job_application`),
  KEY `id_job` (`id_job`),
  CONSTRAINT `jobs_applications_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `jobs` (`id_job`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

LOCK TABLES `jobs_applications` WRITE;
/*!40000 ALTER TABLE `jobs_applications` DISABLE KEYS */;

INSERT INTO `jobs_applications` (`id_job_application`, `id_job`, `status`, `date_inserted`, `name`, `email`, `gender`)
VALUES
	(9,2,'Approved','2017-04-02 22:34:07','Anonymous user 1','anonymoususer1@test.com','male'),
	(10,2,'Pending','2017-04-02 22:34:10','Anonymous user 2','anonymoususer2@test.com','male'),
	(11,1,'Rejected','2017-04-02 22:34:12','Anonymous user 3','anonymoususer3@test.com','female'),
	(12,1,'Pending','2017-04-02 22:34:15','Anonymous user 4','anonymoususer4@test.com','male'),
	(13,1,'Rejected','2017-04-02 22:34:18','Anonymous user 5','anonymoususer5@test.com','male'),
	(14,2,'Pending','2017-04-02 22:34:21','Anonymous user 6','anonymoususer6@test.com','female'),
	(15,1,'Approved','2017-04-02 22:34:23','Anonymous user 7','anonymoususer7@test.com','female'),
	(16,2,'Rejected','2017-04-02 22:34:26','Anonymous user 8','anonymoususer8@test.com','male'),
	(17,2,'Approved','2017-04-02 22:34:28','Anonymous user 9','anonymoususer9@test.com','male'),
	(18,8,'Approved','2017-04-02 22:34:30','Anonymous user 10','anonymoususer10@test.com','female');

/*!40000 ALTER TABLE `jobs_applications` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
