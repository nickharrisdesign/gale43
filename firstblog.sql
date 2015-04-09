-- Adminer 4.0.3 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = '-04:00';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `firstblog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `firstblog`;

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_6477e937_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_6477e937_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_27ce198d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_3969b5ff_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1,	'Can add log entry',	1,	'add_logentry'),
(2,	'Can change log entry',	1,	'change_logentry'),
(3,	'Can delete log entry',	1,	'delete_logentry'),
(4,	'Can add permission',	2,	'add_permission'),
(5,	'Can change permission',	2,	'change_permission'),
(6,	'Can delete permission',	2,	'delete_permission'),
(7,	'Can add group',	3,	'add_group'),
(8,	'Can change group',	3,	'change_group'),
(9,	'Can delete group',	3,	'delete_group'),
(10,	'Can add user',	4,	'add_user'),
(11,	'Can change user',	4,	'change_user'),
(12,	'Can delete user',	4,	'delete_user'),
(13,	'Can add content type',	5,	'add_contenttype'),
(14,	'Can change content type',	5,	'change_contenttype'),
(15,	'Can delete content type',	5,	'delete_contenttype'),
(16,	'Can add session',	6,	'add_session'),
(17,	'Can change session',	6,	'change_session'),
(18,	'Can delete session',	6,	'delete_session'),
(19,	'Can add posts',	7,	'add_posts'),
(20,	'Can change posts',	7,	'change_posts'),
(21,	'Can delete posts',	7,	'delete_posts'),
(22,	'Can add category',	8,	'add_category'),
(23,	'Can change category',	8,	'change_category'),
(24,	'Can delete category',	8,	'delete_category');

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1,	'pbkdf2_sha256$20000$SuEbSbvcBvqp$0v7+qYLAkdAZt/0P5dpJ8XvCCRJoK0kuBpCWS72g5/k=',	'2015-04-08 02:04:55',	1,	'nick',	'',	'',	'nickharris@nickharris.ca',	1,	1,	'2015-04-07 23:52:29');

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_597c17f3_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_597c17f3_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_549a49e3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_7928fcaa_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_7928fcaa_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7d5cd95c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_category_d5d3db17` (`title`),
  KEY `blog_category_2dbcba41` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `blog_category` (`id`, `title`, `slug`) VALUES
(1,	'Horror',	'PS4'),
(2,	'ps4 games',	'ps4_games');

DROP TABLE IF EXISTS `blog_posts`;
CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `bodytext` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_posts_b583a629` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `blog_posts` (`id`, `author`, `title`, `bodytext`, `timestamp`, `image1`, `image2`, `category_id`) VALUES
(1,	'Bob',	'Hello World',	'Lorem Ipsum',	'0000-00-00 00:00:00',	'',	'',	0),
(2,	'Rick',	'Bloodborne Review',	'Lorem Ipsum',	'2015-04-08 16:45:55',	'images/heroimage/bloodborne.jpg',	'',	1),
(3,	'Stan',	'Video Games',	'Lorem Ipsum',	'2015-04-08 14:42:01',	'',	'',	0),
(4,	'Jerry Seinfeld',	'Top 10 PS4 Games',	'Below we take a look at the top 10 PS4 Games....\r\n\r\nLorem ipsum dolor sit amet, duo ex inimicus vulputate, at tale soleat vis, cu reque voluptatibus mea. Ut sit quas dicta singulis, ea nam audire iracundia hendrerit. Malorum iuvaret vocibus id ius. Per idque reprimique an, et nec aperiri numquam scriptorem, alii ullamcorper eum ne. Ea cum summo ancillae. Errem insolens persequeris id est, modus ridens omnesque id sea.\r\n\r\nNobis scaevola an his. Ubique maluisset efficiantur cum ex, te pro odio sanctus euripidis, id sea quis utroque. Duo probo quando ea, vel errem decore quodsi ad. Sea oblique atomorum cu. Ad pertinax hendrerit has, est alia dictas sanctus et.',	'2015-04-01 04:00:00',	'/Users/Rusty Enchiladea/firstblog/blog/templates/static/images/heroimage/banner.jpg',	'/Users/Rusty Enchiladea/firstblog/blog/templates/static/images/optional/banner.jpg',	2);

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_2f2185fd_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_5e480754_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_5e480754_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_2f2185fd_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1,	'2015-04-08 14:42:19',	'3',	'posts object',	2,	'Changed author, title and timestamp.',	7,	1),
(2,	'2015-04-08 17:15:42',	'1',	'Category object',	1,	'',	8,	1),
(3,	'2015-04-08 17:16:06',	'2',	'posts object',	2,	'Changed author, title, timestamp, image1 and category.',	7,	1),
(4,	'2015-04-08 17:21:07',	'2',	'posts object',	2,	'Changed title.',	7,	1),
(5,	'2015-04-08 22:38:09',	'2',	'Category object',	1,	'',	8,	1),
(6,	'2015-04-08 22:38:44',	'4',	'posts object',	1,	'',	7,	1),
(7,	'2015-04-08 23:01:06',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1),
(8,	'2015-04-08 23:30:38',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1),
(9,	'2015-04-08 23:32:06',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1),
(10,	'2015-04-08 23:34:27',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1),
(11,	'2015-04-08 23:34:37',	'4',	'posts object',	2,	'No fields changed.',	7,	1),
(12,	'2015-04-08 23:42:22',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1),
(13,	'2015-04-08 23:43:35',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1),
(14,	'2015-04-08 23:47:07',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1),
(15,	'2015-04-09 00:04:55',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1),
(16,	'2015-04-09 00:13:44',	'4',	'posts object',	2,	'Changed image1 and image2.',	7,	1);

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_31093c71_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1,	'admin',	'logentry'),
(3,	'auth',	'group'),
(2,	'auth',	'permission'),
(4,	'auth',	'user'),
(8,	'blog',	'category'),
(7,	'blog',	'posts'),
(5,	'contenttypes',	'contenttype'),
(6,	'sessions',	'session');

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1,	'contenttypes',	'0001_initial',	'2015-04-07 23:52:10'),
(2,	'auth',	'0001_initial',	'2015-04-07 23:52:10'),
(3,	'admin',	'0001_initial',	'2015-04-07 23:52:11'),
(4,	'contenttypes',	'0002_remove_content_type_name',	'2015-04-07 23:52:11'),
(5,	'auth',	'0002_alter_permission_name_max_length',	'2015-04-07 23:52:11'),
(6,	'auth',	'0003_alter_user_email_max_length',	'2015-04-07 23:52:11'),
(7,	'auth',	'0004_alter_user_username_opts',	'2015-04-07 23:52:11'),
(8,	'auth',	'0005_alter_user_last_login_null',	'2015-04-07 23:52:11'),
(9,	'auth',	'0006_require_contenttypes_0002',	'2015-04-07 23:52:11'),
(10,	'sessions',	'0001_initial',	'2015-04-07 23:52:11'),
(11,	'blog',	'0001_initial',	'2015-04-08 14:32:35'),
(12,	'blog',	'0002_posts_image1',	'2015-04-08 16:09:54');

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gck1rf0ukiwaoegb5zbos70gnsgktuxr',	'MDZiZjY5MzhjMGIwOWJjNzU0YjM3OGVhNmEwZjcyY2IyYmJiMzhmYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzk0Zjk0YTc4MzVlMzM4MmQ1ZTBmNjQ4MzcwMjZmM2UxMjZhNmI4MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=',	'2015-04-22 02:04:55');

-- 2015-04-08 22:48:19
