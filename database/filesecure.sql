-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 05, 2023 at 07:30 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filesecure`
--
CREATE DATABASE IF NOT EXISTS `filesecure` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `filesecure`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add owner model', 7, 'add_ownermodel'),
(26, 'Can change owner model', 7, 'change_ownermodel'),
(27, 'Can delete owner model', 7, 'delete_ownermodel'),
(28, 'Can view owner model', 7, 'view_ownermodel'),
(29, 'Can add upload documents model', 8, 'add_uploaddocumentsmodel'),
(30, 'Can change upload documents model', 8, 'change_uploaddocumentsmodel'),
(31, 'Can delete upload documents model', 8, 'delete_uploaddocumentsmodel'),
(32, 'Can view upload documents model', 8, 'view_uploaddocumentsmodel'),
(33, 'Can add user model', 9, 'add_usermodel'),
(34, 'Can change user model', 9, 'change_usermodel'),
(35, 'Can delete user model', 9, 'delete_usermodel'),
(36, 'Can view user model', 9, 'view_usermodel'),
(37, 'Can add download request model', 10, 'add_downloadrequestmodel'),
(38, 'Can change download request model', 10, 'change_downloadrequestmodel'),
(39, 'Can delete download request model', 10, 'delete_downloadrequestmodel'),
(40, 'Can view download request model', 10, 'view_downloadrequestmodel'),
(41, 'Can add downloads model', 11, 'add_downloadsmodel'),
(42, 'Can change downloads model', 11, 'change_downloadsmodel'),
(43, 'Can delete downloads model', 11, 'delete_downloadsmodel'),
(44, 'Can view downloads model', 11, 'view_downloadsmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'ownerapp', 'ownermodel'),
(8, 'ownerapp', 'uploaddocumentsmodel'),
(6, 'sessions', 'session'),
(10, 'userapp', 'downloadrequestmodel'),
(11, 'userapp', 'downloadsmodel'),
(9, 'userapp', 'usermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-25 05:52:53.194899'),
(2, 'auth', '0001_initial', '2022-06-25 05:52:53.888976'),
(3, 'admin', '0001_initial', '2022-06-25 05:52:54.053088'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-25 05:52:54.068914'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-25 05:52:54.079882'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-25 05:52:54.195587'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-25 05:52:54.265480'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-25 05:52:54.320145'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-25 05:52:54.330114'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-25 05:52:54.390952'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-25 05:52:54.394941'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-25 05:52:54.406909'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-25 05:52:54.466202'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-25 05:52:54.530095'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-25 05:52:54.593924'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-25 05:52:54.617860'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-25 05:52:54.671700'),
(18, 'sessions', '0001_initial', '2022-06-25 05:52:54.742967'),
(19, 'ownerapp', '0001_initial', '2022-06-25 05:53:17.465366'),
(20, 'userapp', '0001_initial', '2022-06-25 05:53:34.470615'),
(21, 'userapp', '0002_downloadsmodel_req_id', '2022-06-25 06:23:48.059465'),
(22, 'ownerapp', '0002_uploaddocumentsmodel_download_rank', '2022-06-25 10:45:11.316710'),
(23, 'userapp', '0003_remove_downloadsmodel_download_rank', '2022-06-25 10:45:22.515020');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('01dyzpy419lmk30sv6zg7s4hfn8ycuo6', '.eJyrVkpJzc1XsjI00FHKL89LLYrPTIHwUvKTwWwzHaXS4lQYDZE3qwUA524RGQ:1qTkZd:AlkOiyY76k39L0HDZluhKq7zNuz-dtRiL12_ZJzmMbY', '2023-08-23 14:54:09.911952'),
('dweglxs9z68h3s6hxejchk8fiuwg593m', '.eJyrVkpJzc1XsrLQUcovz0stis9MUbIy1FFKyU8GM010lEqLU5WsTME0RNqoFgDPnBC5:1o56Yi:fAnrfr7ExiX2TmGUFlWRZtaIdPuLLw24yF-LOf8iUh4', '2022-07-09 14:14:48.380373'),
('h96kl4ogqwudteq5zz4o08m1jk6pjdqt', '.eJyrViotTi2Kz0xRsjLTUUrJT4Yx88vzoOKGBrUA9AIMPA:1qU3IX:-4pBEFXonmSQ5DDbSobqn-6Hff1lXcTQDXtRipR3ZG8', '2023-08-24 10:53:45.410008'),
('oemdnox4ve349k0gvmkwd2g158gtjm11', '.eJyrVkpJzc1XsjI01FHKL89LLYrPTIHwUvKTwWxzHaXS4lQYDZE3rwUA5-QRHg:1qoTmb:XnSVgaxMo1jwm5iga9Koz6Gp6KI0mE58ASyUgOTe3QU', '2023-10-19 19:13:13.639125');

-- --------------------------------------------------------

--
-- Table structure for table `document_downloads`
--

DROP TABLE IF EXISTS `document_downloads`;
CREATE TABLE IF NOT EXISTS `document_downloads` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `doc_id` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `downloaded_date` date DEFAULT NULL,
  `req_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_downloads`
--

INSERT INTO `document_downloads` (`download_id`, `user_id`, `doc_id`, `status`, `downloaded_date`, `req_id`) VALUES
(15, 6, 7, 'downloaded', '2023-08-09', 6),
(16, 6, 7, 'downloaded', '2023-08-10', 6),
(17, 7, 8, 'downloaded', '2023-10-06', 7);

-- --------------------------------------------------------

--
-- Table structure for table `owner_details`
--

DROP TABLE IF EXISTS `owner_details`;
CREATE TABLE IF NOT EXISTS `owner_details` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `cpwd` varchar(20) DEFAULT NULL,
  `reg_date` date NOT NULL,
  `otp` longtext DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `verification` varchar(20) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_details`
--

INSERT INTO `owner_details` (`owner_id`, `name`, `mobile`, `email`, `profile`, `pwd`, `cpwd`, `reg_date`, `otp`, `status`, `verification`) VALUES
(7, 'john', 8888888888, 'fazalsirprojects@gmail.com', 'owner/download.jfif', 'john', 'john', '2022-06-25', '6949', 'Accepted', 'verified'),
(10, 'john', 9876543210, 'john@gmail.com', 'owner/django.jpg', 'john123', 'john123', '2023-08-09', '5307', 'Accepted', 'verified'),
(11, 'codebook projects', 8555887986, 'codebook.in@gmail.com', 'owner/face16.jpg', 'Cloud@123', 'Cloud@123', '2023-10-06', '8278', 'Accepted', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `upload_documents`
--

DROP TABLE IF EXISTS `upload_documents`;
CREATE TABLE IF NOT EXISTS `upload_documents` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `document` varchar(100) DEFAULT NULL,
  `doc_type` longtext DEFAULT NULL,
  `doc_size` bigint(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `doc_name` longtext DEFAULT NULL,
  `enc_doc_name` longtext DEFAULT NULL,
  `random_keys` longtext DEFAULT NULL,
  `file_enc_key` longtext DEFAULT NULL,
  `file_data` longtext DEFAULT NULL,
  `upload_date` date NOT NULL,
  `status` longtext NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `download_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`doc_id`),
  KEY `upload_documents_owner_id_add59dd9_fk_owner_details_owner_id` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_documents`
--

INSERT INTO `upload_documents` (`doc_id`, `document`, `doc_type`, `doc_size`, `description`, `doc_name`, `enc_doc_name`, `random_keys`, `file_enc_key`, `file_data`, `upload_date`, `status`, `owner_id`, `download_rank`) VALUES
(4, 'files/basic concepts.txt', 'text/plain', 116, 'wwww', 'basic concepts.txt', 'basic concepts5.txt', 'event', 'F8vCQFtKaEPHhxy56r9P-wafnAEngPsMSQyl3NnnROg=', 'gAAAAABitvhzORIP8783LMFeWiXiwLYFGgklWefUtzy0zz_ueSglc86Cdcup08D0uNwKP50LRS5UOid8HuDIkICcHRRJJANbnh9-0pcakA7YzlI9syEguN8ihIv6T_41n7LXYDMbDSetH59bEhnc7vVcztiY0UmGVrysvFv0z-jKg2BNUOWX5QKP2uM-Ml0l_QuLU9bnHgW4Q9LUdcIgkugpD6bzgy9Sci3RLZCmgbAIhV6L1XkPLeQ=', '2022-06-25', 'Accepted', 7, NULL),
(7, 'files/test.txt', 'text/plain', 36, 'testing', 'test.txt', 'test6.txt', '123', 'bMvcP5pKzsLRuc8HwUvJxpiLvjuoSQ0U5rSBPssk5Vo=', 'gAAAAABk06doaArDi3kqXV0Zvaex4f945NQ8kQiC2Pl40Knblfu7L2ns1Edo_0CRnZfbXKwv63Loecq4z1yAPdRZ_yM2rxeJk9SS3pIWbJbk-aYR1AFJBl9IRdO2opkej1mwhjcZtgH8', '2023-08-09', 'Accepted', 10, NULL),
(8, 'files/codebook.txt', 'text/plain', 1927, 'about codebook.in company', 'codebook.txt', 'codebook7.txt', 'abcd1234', 'nloc6MLy9wEzwC_Cxm3Kr5x7vAyNsScyqIsadNxwBPs=', 'gAAAAABlHwfV8PpxziBRZOoi9Ucf2E8p6CKPdfa9fK5ht8b3mnnqoSjXZZ5ljU6ZQn18HoVRH10pm0IE6fGXxxki78PeGx4YYvI169L6nHCHsBOw802APTpiqzboETVIMc1yRCi2r-dtsuq8jZ0U0mQBZ9y9PN6U2diJnQXtUv4v6ri_RvYH5a0x3RRD2PtqHKFEsUOgLWIc9iXHX3Vasu5eBSvnTQz9tBOHJ9BOTurEgI57bc8VdP2Jz_Ui00ovz03SFjyX64_Z0tyF3VIq-gskphT8lpRqA9uwX8-Pz_zxvtI1XCUE7Ye1lPbVBDT-h55fsrgroGgVBQ6q_b0YQMLv6qBsk1vqXRtFtPL1CiemOYsxnCxK9DjppWE0waUccdoz6wuBx6jvxHTJGa0Kj91SosCYjV0P77U_c4WLL9-LlupFlTlH54etC57_X9VTAPexIuZ_KY493wdC1_ZIJGoo52o9pYJ704_4iDphpIGcTW0EMYzvYjVPD7_NXqCBNB9ByxTL3bbVHPAFsihrVBLgmrdlE5GUgQtZclILWQMMT5wFTwaxIEdEfLij71Wr6Zp7H0qGScePTaOydFuD3af4Uym2HcFlQIjQgMuJ_IoKtRHD0rvv4z83CEbpA4fF0nUdWaPJN5d1C_5WsX0f6yzPNwdgc2H032F5sPSZ8Wpo3waXp-ZiPP7a1PeJBaYo_1OyoS5a6upYtRt0UYrsu1NN25xEEi-wpTDfPHEwPbUTvxxN3op9qdCY-jfCdS_KA2rZ7nip1_Gbbvh2xLTq93TkrBuS2KibrrYWMqwQpEFnlSFYL-lj9h1ayujxx8UB_9cHxfCaJZKHh2LNKIVI9LCiLkQxb5vTzFpJIJ61IA5KMraVUiahw-D52lpNmAWSP-oW1-qW_UiiaNgZnnYnMnK7JPNdybmaCRWgW-lfPAzqBaSEplM185thGRgKxokL6XOPRsg8yeMmJvOzwgpUzutAREGA7rZYKjdroGu_cuiORrFU98e-zdDXhWPMh89_HaqZZhSoSke-Dp2u6t9cFVkCgqMCf4e7FjS6ZwfkLXWjrRzGvklQpANb9SJm99cev0ZjlIm5VvRvIOBvf8-H2aLNskdi5oKdFPYr5tk1kOTLxZxDUa4Ne9qjuajFdcUbciQnB4Cazudm7onVYUy0byJX0MVjfdDrCT1eMHsKQH8ZxGu8GiBbaQ2qmYTLC3ftTxds94fEkxj0fQe-sNP0yvOnAclFGOo0KyyqgaHvW5fS_li7MYo-gy58yrVgvx5FMQGO5VWf0TxKZmFy_Da24xo3bher5tKGX53Cb1DUk0S-44f6WLnRNrlTrs6ABzgGIn0Db8wEEktFM4UOxx3bt5OJXNx9hP00hMDGsGInY3wf0ATaLx80j_totGM-uRMu0pdzUBB1LRxOEYIfZM5cbqXDADb_PSJKWCxdZLrIxLPd6MdFB9-2ftLT884CMcb5meeRFAFD82otWiG19K211PzuSiJrvPkgZQGGtdnXZi9Keev7PAmNOYS5vTQ4NBHHv05wP7AWAEx9GMNihpSvxLY1qLwebw9f7tA3_7b6CNrHEi8fTqvVaW45hGh2SYUl6SSRsKbscmd8_9SyC-WVMr59kpneiLkgCrAxvvLb--B4hNGVQzBWQd9qp1ASE-DATP8ZycNCFug2SX2xF7HLjypzD3izpqHso0qSXWq1BAO1FhdBK4Byp4k_hjx2FWunbKEMwrfSQFW62yhzKkRBC3Mm9LbmPBBMI7aoN0cPWkycDlK20b9iXMlUpgE6mKU3yhqzLTq5uIp3e7YpXfzzBApuBBG6D9jaCtz0Xy-WxkWb20sRoA9a8bvXrD9OIbWgTtYoKQi_mCZbif7GGubx2ELQfpzF7_xDVXZy6STjnoq2p8lG8c8cWbp8-vZTDMfQFHCbZQmBqyMAEg2YjY_dLMWGoKGnRc0ch40c23Ozg19era2GRS22GaiJIAKTmV8QVvyJmQcgcB4qB-P8OhV60fzp5owDu9NSK0W5CRGY6CsUr4-9XkJInb9229IhJxy-iTs3dIRfUQWiH1yaVWZtFkDKFPofFokPLCLrPKb_CFsSKArnPnqWNDtLYkL62m2jnpOv1koZfh6DDJHcaX0Vca8UQ15AGH0cqoPSCLH-SDJe0Yn1YbbrN0UF15-UTmoraOcGoWS0vofJsdad-epHaPlVxOCXdmNQWx7iLr5EVgl3q9HeKlZ9r-tXY1fzYbYwVhXGD6oeuaChxtcn73l0MIqukCSP2Fxd3C6NKhASSZd0DGpPSFkbFkHeV_J8MDrHQlFWUUgjLsXhtpR0ccJRP-e-gTj1Y5yS-aUo-6BqMx9xxLr6R50XwMiNbOO7vN0s0W4XXKZrleCYFSWyemRkkwJ3a3VXCGSAJ8gGmIhrhrsWGiUZxP4qe43jff1ynjvSEHVly4ckwulpEpjO8UfmNcj9f3vUDtWn72R0McecgwFJ4fjv1Fdpf9Rf0htrcjEgtoBeFTcSr4tFDbdu1CWEEg50UYtoC_F8Faa-drVVdqLQNp7t_B6o8Nbl-TQbGvK35c61MZluR61uIj06OBnkSBdPkNXZkJc2OsRh9XSNXjks6cAThWFT47se4xWXreDMHF2Vm0dkDTunN_ykqmZkOAqchXOswPmZeQ==', '2023-10-06', 'Accepted', 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `cpwd` varchar(20) DEFAULT NULL,
  `reg_date` date NOT NULL,
  `otp` longtext DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `name`, `mobile`, `email`, `profile`, `pwd`, `cpwd`, `reg_date`, `otp`, `status`) VALUES
(6, 'mark', 8978454897, 'fazalsirmail@gmail.com', 'user/python_django.jpg', 'mark123', 'mark123', '2023-08-09', '5180', 'verified'),
(7, 'Fazal', 9912221087, 'fazalsirprojects@gmail.com', 'user/face8.jpg', 'Fazal@123', 'Fazal@123', '2023-10-06', '9321', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `user_download_requests`
--

DROP TABLE IF EXISTS `user_download_requests`;
CREATE TABLE IF NOT EXISTS `user_download_requests` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `doc_id` int(11) DEFAULT NULL,
  `document` varchar(100) NOT NULL,
  `doc_name` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `doc_size` bigint(20) DEFAULT NULL,
  `doc_type` varchar(300) NOT NULL,
  `file_enc_key` longtext DEFAULT NULL,
  `secure_key` varchar(100) DEFAULT NULL,
  `request_status` varchar(50) DEFAULT NULL,
  `download_status` varchar(200) DEFAULT NULL,
  `requested_date` date DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_download_requests`
--

INSERT INTO `user_download_requests` (`request_id`, `owner_id`, `user_id`, `doc_id`, `document`, `doc_name`, `description`, `doc_size`, `doc_type`, `file_enc_key`, `secure_key`, `request_status`, `download_status`, `requested_date`) VALUES
(5, 7, 4, 4, 'files/basic concepts.txt', 'basic concepts.txt', 'wwww', 116, 'text/plain', 'F8vCQFtKaEPHhxy56r9P-wafnAEngPsMSQyl3NnnROg=', '^8tA~KTuRD', 'request_accepted', 'pending', '2022-06-25'),
(6, 10, 6, 7, 'files/test.txt', 'test.txt', 'testing', 36, 'text/plain', 'bMvcP5pKzsLRuc8HwUvJxpiLvjuoSQ0U5rSBPssk5Vo=', '8Gr?K@z4?~', 'request_accepted', 'pending', '2023-08-09'),
(7, 11, 7, 8, 'files/codebook.txt', 'codebook.txt', 'about codebook.in company', 1927, 'text/plain', 'nloc6MLy9wEzwC_Cxm3Kr5x7vAyNsScyqIsadNxwBPs=', 'joFAqyLeW&', 'request_accepted', 'pending', '2023-10-06');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `upload_documents`
--
ALTER TABLE `upload_documents`
  ADD CONSTRAINT `upload_documents_owner_id_add59dd9_fk_owner_details_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `owner_details` (`owner_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
