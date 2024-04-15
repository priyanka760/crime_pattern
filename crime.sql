-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 05:19 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add user', 6, 'add_profile'),
(17, 'Can change user', 6, 'change_profile'),
(18, 'Can delete user', 6, 'delete_profile'),
(19, 'Can add docs', 7, 'add_docs'),
(20, 'Can change docs', 7, 'change_docs'),
(21, 'Can delete docs', 7, 'delete_docs'),
(22, 'Can add imag', 8, 'add_imag'),
(23, 'Can change imag', 8, 'change_imag'),
(24, 'Can delete imag', 8, 'delete_imag'),
(25, 'Can add feedbacks image', 9, 'add_feedbacksimage'),
(26, 'Can change feedbacks image', 9, 'change_feedbacksimage'),
(27, 'Can delete feedbacks image', 9, 'delete_feedbacksimage');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'admins', 'imag'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'mainapp', 'profile'),
(5, 'sessions', 'session'),
(7, 'user', 'docs'),
(9, 'user', 'feedbacksimage');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-12-21 09:43:02'),
(2, 'contenttypes', '0002_remove_content_type_name', '2017-12-21 09:43:04'),
(3, 'auth', '0001_initial', '2017-12-21 09:43:08'),
(4, 'auth', '0002_alter_permission_name_max_length', '2017-12-21 09:43:09'),
(5, 'auth', '0003_alter_user_email_max_length', '2017-12-21 09:43:09'),
(6, 'auth', '0004_alter_user_username_opts', '2017-12-21 09:43:09'),
(7, 'auth', '0005_alter_user_last_login_null', '2017-12-21 09:43:09'),
(8, 'auth', '0006_require_contenttypes_0002', '2017-12-21 09:43:09'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2017-12-21 09:43:09'),
(10, 'auth', '0008_alter_user_username_max_length', '2017-12-21 09:43:09'),
(11, 'mainapp', '0001_initial', '2017-12-21 09:43:15'),
(12, 'admin', '0001_initial', '2017-12-21 09:43:17'),
(13, 'admin', '0002_logentry_remove_auto_add', '2017-12-21 09:43:17'),
(14, 'sessions', '0001_initial', '2017-12-21 09:43:18'),
(15, 'user', '0001_initial', '2017-12-22 06:09:40'),
(16, 'user', '0002_auto_20171223_1000', '2017-12-23 04:30:21'),
(17, 'admins', '0001_initial', '2017-12-23 07:35:29'),
(18, 'admins', '0002_auto_20171223_1437', '2017-12-23 09:07:53'),
(19, 'admins', '0003_auto_20171223_1455', '2017-12-23 09:26:00'),
(20, 'user', '0003_feedbacksimage', '2017-12-23 10:50:18'),
(21, 'user', '0004_feedbacksimage_sentiments', '2017-12-27 13:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2hnsnzycsw9dn51eke8i05w7u5igns1m', 'NTVmZDAwMDI3OTBmZTczNGJlNDZmZDk4NmZkOTQ2YWM3YWY5MjU5Mjp7Im5hbWUiOiJhZG1pbiJ9', '2022-03-26 16:02:27'),
('7u27gqtnn6cdxl4baxasp59g2qwn6kxq', 'NTVmZDAwMDI3OTBmZTczNGJlNDZmZDk4NmZkOTQ2YWM3YWY5MjU5Mjp7Im5hbWUiOiJhZG1pbiJ9', '2022-03-26 15:59:55'),
('cbtkl8s4pu668iucamn3km6b10lrpdxn', 'NjRhNTE0NWE4ZTdkNmU3NTE2NjliZDRhNDFiNWIwNzZiNDRjY2IwZDp7fQ==', '2018-01-04 12:46:29'),
('ek1qqge8s37wh2fn4hev41p9nc4jm480', 'NTVmZDAwMDI3OTBmZTczNGJlNDZmZDk4NmZkOTQ2YWM3YWY5MjU5Mjp7Im5hbWUiOiJhZG1pbiJ9', '2022-03-26 16:06:41'),
('fjlja6ejctm4z1teg20ti3slu7s4d6fi', 'NTVmZDAwMDI3OTBmZTczNGJlNDZmZDk4NmZkOTQ2YWM3YWY5MjU5Mjp7Im5hbWUiOiJhZG1pbiJ9', '2022-03-26 15:52:17'),
('pntznnpvjgzgq1smmamoihopklzquxql', 'NjZkYzQ4M2MyYTQyNTJhOWY1M2U4OGJkMTg0YWYxODYxMmQ3ZWFkNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkxMzBmMjEyOWVlN2U5MWQ2MjBmNjZmYjNhNGIwNTlkNzE3NzFlIn0=', '2018-01-10 06:08:43'),
('r78h77r2puc0aaejfq68cjanprsctvfr', 'NjZkYzQ4M2MyYTQyNTJhOWY1M2U4OGJkMTg0YWYxODYxMmQ3ZWFkNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkxMzBmMjEyOWVlN2U5MWQ2MjBmNjZmYjNhNGIwNTlkNzE3NzFlIn0=', '2018-01-05 04:49:08'),
('sgo5hp5n4cyj1encnc7jsv4v3ctkb48t', 'NjZkYzQ4M2MyYTQyNTJhOWY1M2U4OGJkMTg0YWYxODYxMmQ3ZWFkNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkxMzBmMjEyOWVlN2U5MWQ2MjBmNjZmYjNhNGIwNTlkNzE3NzFlIn0=', '2018-01-05 09:14:28'),
('yl18xqjtkffpo5wyq7jrs7x33jar3sgd', 'NjZkYzQ4M2MyYTQyNTJhOWY1M2U4OGJkMTg0YWYxODYxMmQ3ZWFkNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkxMzBmMjEyOWVlN2U5MWQ2MjBmNjZmYjNhNGIwNTlkNzE3NzFlIn0=', '2018-01-05 05:37:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_mainapp_profile_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
