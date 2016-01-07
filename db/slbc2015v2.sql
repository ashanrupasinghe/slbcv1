-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2016 at 09:35 AM
-- Server version: 5.6.22-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `slbc2015v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kl984_assets`
--

CREATE TABLE IF NOT EXISTS `kl984_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `kl984_assets`
--

INSERT INTO `kl984_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 472, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 18, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 19, 68, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 69, 70, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 71, 72, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.delete":[],"core.edit.state":[]}'),
(11, 1, 73, 74, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 75, 76, 1, 'com_login', 'com_login', '{}'),
(13, 1, 77, 78, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 79, 80, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 81, 82, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 83, 84, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 85, 86, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 87, 88, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 89, 92, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 93, 94, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 95, 96, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 97, 98, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 99, 100, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 101, 102, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(25, 1, 103, 110, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 111, 112, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 20, 55, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 90, 91, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 104, 105, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 8, 56, 67, 2, 'com_content.category.7', 'Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(33, 27, 21, 22, 3, 'com_content.article.1', '2020 world cup matches are postponed due to the rain constrain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(34, 27, 23, 24, 3, 'com_content.article.2', 'Movie Of The Year....', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 27, 25, 26, 3, 'com_content.article.3', 'The prime minister emphasized the need for the joint efforts of both the state and the private secto', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 27, 27, 28, 3, 'com_content.article.4', 'Obama and Putin Have Agreed to Stop ISIS', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 27, 29, 30, 3, 'com_content.article.5', 'Dummy Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 27, 31, 32, 3, 'com_content.article.6', 'Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 27, 33, 34, 3, 'com_content.article.7', 'Revista Nueva Theme', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 32, 57, 58, 3, 'com_content.article.8', 'Joomla Templates', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 32, 59, 60, 3, 'com_content.article.9', 'Beautiful Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 32, 61, 62, 3, 'com_content.article.10', 'Warp Theme Framework', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 32, 63, 64, 3, 'com_content.article.11', 'ZOO Extension', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 32, 65, 66, 3, 'com_content.article.12', 'Free Social Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 27, 37, 38, 3, 'com_content.article.14', 'Slideshow', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 27, 39, 40, 3, 'com_content.article.15', 'Lightbox', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 27, 41, 42, 3, 'com_content.article.16', 'Spotlight', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 27, 43, 44, 3, 'com_content.article.17', 'Twitter', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 27, 45, 46, 3, 'com_content.article.18', 'Media Player', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 27, 47, 48, 3, 'com_content.article.19', 'Gallery', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 27, 49, 50, 3, 'com_content.article.20', 'Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 27, 51, 52, 3, 'com_content.article.21', 'Accordion', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 27, 53, 54, 3, 'com_content.article.22', 'Slideset', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 7, 16, 17, 2, 'com_contact.category.8', 'Contacts', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(57, 25, 106, 107, 2, 'com_weblinks.category.9', 'YOOtheme Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(58, 25, 108, 109, 2, 'com_weblinks.category.10', 'YOOtheme Links (2)', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(59, 1, 468, 469, 1, 'com_unitehcarousel', 'com_unitehcarousel', '{}'),
(60, 1, 470, 471, 1, 'com_creativeimageslider', 'com_creativeimageslider', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_associations`
--

CREATE TABLE IF NOT EXISTS `kl984_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_banners`
--

CREATE TABLE IF NOT EXISTS `kl984_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_banner_clients`
--

CREATE TABLE IF NOT EXISTS `kl984_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `kl984_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_categories`
--

CREATE TABLE IF NOT EXISTS `kl984_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `kl984_categories`
--

INSERT INTO `kl984_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 19, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-05-02 11:42:21', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 56, 1, 13, 14, 1, 'contacts', 'com_contact', 'Contacts', 'contacts', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-01-23 15:30:44', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 57, 1, 15, 16, 1, 'yootheme-links', 'com_weblinks', 'YOOtheme Links', 'yootheme-links', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-01-23 15:41:18', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 58, 1, 17, 18, 1, 'yootheme-links-2', 'com_weblinks', 'YOOtheme Links (2)', 'yootheme-links-2', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-01-23 15:41:21', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_cis_categories`
--

CREATE TABLE IF NOT EXISTS `kl984_cis_categories` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `ordering` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kl984_cis_categories`
--

INSERT INTO `kl984_cis_categories` (`id`, `name`, `published`, `publish_up`, `publish_down`, `ordering`) VALUES
(1, 'Uncategorized', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_cis_images`
--

CREATE TABLE IF NOT EXISTS `kl984_cis_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_slider` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  `img_name` text NOT NULL,
  `img_url` text NOT NULL,
  `readmoresize` text NOT NULL,
  `readmoreicon` text NOT NULL,
  `showreadmore` tinyint(3) unsigned NOT NULL,
  `readmoretext` text NOT NULL,
  `readmorestyle` text NOT NULL,
  `overlaycolor` text NOT NULL,
  `overlayopacity` tinyint(3) unsigned NOT NULL,
  `textcolor` text NOT NULL,
  `overlayfontsize` int(10) unsigned NOT NULL,
  `textshadowcolor` text NOT NULL,
  `textshadowsize` tinyint(3) unsigned NOT NULL,
  `showarrows` tinyint(3) unsigned NOT NULL,
  `readmorealign` tinyint(3) unsigned NOT NULL,
  `readmoremargin` text NOT NULL,
  `captionalign` tinyint(3) unsigned NOT NULL,
  `captionmargin` text NOT NULL,
  `overlayusedefault` tinyint(3) unsigned NOT NULL,
  `buttonusedefault` tinyint(3) unsigned NOT NULL,
  `caption` text NOT NULL,
  `redirect_url` text NOT NULL,
  `redirect_itemid` int(10) unsigned NOT NULL,
  `redirect_target` tinyint(3) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `created` datetime NOT NULL,
  `ordering` mediumint(8) unsigned NOT NULL,
  `popup_img_name` text NOT NULL,
  `popup_img_url` text NOT NULL,
  `popup_open_event` tinyint(3) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`),
  KEY `id_slider` (`id_slider`),
  KEY `id_user` (`id_user`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `kl984_cis_images`
--

INSERT INTO `kl984_cis_images` (`id`, `id_user`, `id_slider`, `name`, `img_name`, `img_url`, `readmoresize`, `readmoreicon`, `showreadmore`, `readmoretext`, `readmorestyle`, `overlaycolor`, `overlayopacity`, `textcolor`, `overlayfontsize`, `textshadowcolor`, `textshadowsize`, `showarrows`, `readmorealign`, `readmoremargin`, `captionalign`, `captionmargin`, `overlayusedefault`, `buttonusedefault`, `caption`, `redirect_url`, `redirect_itemid`, `redirect_target`, `published`, `publish_up`, `publish_down`, `created`, `ordering`, `popup_img_name`, `popup_img_url`, `popup_open_event`) VALUES
(1, 0, 1, 'Face to face with nature...', '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item1-tmb.jpg', 'normal', 'pencil', 1, 'Read More!', 'red', '#000000', 50, '#ffffff', 18, '#000000', 2, 0, 1, '0px 10px 10px 10px', 0, '10px 15px 10px 15px', 0, 0, 'By <a href="http://creative-solutions.net/joomla/creative-image-slider" target="_blank">Creative Image Slider...</a>', '#', 104, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-27 06:36:13', 1, '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item1.jpg', 4),
(2, 0, 1, 'Face to face with nature...', '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item2-tmb.jpg', 'normal', 'pencil', 1, 'Read More!', 'red', '#000000', 50, '#ffffff', 18, '#000000', 2, 0, 1, '0px 10px 10px 10px', 0, '10px 15px 10px 15px', 0, 0, 'By <a href="http://creative-solutions.net/joomla/creative-image-slider" target="_blank">Creative Image Slider...</a>', '#', 104, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-27 06:33:44', 2, '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item2.jpg', 4),
(3, 0, 1, 'Face to face with nature...', '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item3-tmb.jpg', 'normal', 'pencil', 1, 'Read More!', 'red', '#000000', 50, '#ffffff', 18, '#000000', 2, 0, 1, '0px 10px 10px 10px', 0, '10px 15px 10px 15px', 0, 0, 'By <a href="http://creative-solutions.net/joomla/creative-image-slider" target="_blank">Creative Image Slider...</a>', '#', 104, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-27 06:36:58', 3, '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item3.jpg', 4),
(4, 0, 1, 'Face to face with nature...', '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item4-tmb.jpg', 'normal', 'pencil', 1, 'Read More!', 'red', '#000000', 50, '#ffffff', 18, '#000000', 2, 0, 1, '0px 10px 10px 10px', 0, '10px 15px 10px 15px', 0, 0, 'By <a href="http://creative-solutions.net/joomla/creative-image-slider" target="_blank">Creative Image Slider...</a>', '#', 104, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-27 06:38:21', 4, '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item4.jpg', 4),
(5, 0, 1, 'Face to face with nature...', '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item5-tmb.jpg', 'normal', 'pencil', 1, 'Read More!', 'red', '#000000', 50, '#ffffff', 18, '#000000', 2, 0, 1, '0px 10px 10px 10px', 0, '10px 15px 10px 15px', 0, 0, 'By <a href="http://creative-solutions.net/joomla/creative-image-slider" target="_blank">Creative Image Slider...</a>', '#', 104, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-07-13 19:21:47', 5, '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item5.jpg', 4),
(6, 0, 1, 'Face to face with nature...', '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item6-tmb.jpg', 'normal', 'pencil', 1, 'Read More!', 'red', '#000000', 50, '#ffffff', 18, '#000000', 2, 0, 1, '0px 10px 10px 10px', 0, '10px 15px 10px 15px', 0, 0, 'By <a href="http://creative-solutions.net/joomla/creative-image-slider" target="_blank">Creative Image Slider...</a>', '#', 104, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-27 06:34:40', 6, '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item6.jpg', 4),
(7, 0, 1, 'Face to face with nature...', '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item7-tmb.jpg', 'normal', 'pencil', 1, 'Read More!', 'red', '#000000', 50, '#ffffff', 18, '#000000', 2, 0, 1, '0px 10px 10px 10px', 0, '10px 15px 10px 15px', 0, 0, 'By <a href="http://creative-solutions.net/joomla/creative-image-slider" target="_blank">Creative Image Slider...</a>', '#', 104, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-27 06:40:29', 7, '', 'http://creative-solutions.net/images/sliders/face-to-face-with-nature/item7.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_cis_sliders`
--

CREATE TABLE IF NOT EXISTS `kl984_cis_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `id_template` smallint(5) unsigned NOT NULL,
  `name` text NOT NULL,
  `width` text NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `margintop` int(10) unsigned NOT NULL,
  `marginbottom` int(10) unsigned NOT NULL,
  `itemsoffset` int(10) unsigned NOT NULL,
  `paddingtop` int(10) unsigned NOT NULL,
  `paddingbottom` int(10) unsigned NOT NULL,
  `bgcolor` text NOT NULL,
  `readmoresize` text NOT NULL,
  `readmoreicon` text NOT NULL,
  `showreadmore` tinyint(3) unsigned NOT NULL,
  `readmoretext` text NOT NULL,
  `readmorestyle` text NOT NULL,
  `overlaycolor` text NOT NULL,
  `overlayopacity` tinyint(3) unsigned NOT NULL,
  `textcolor` text NOT NULL,
  `overlayfontsize` int(10) unsigned NOT NULL,
  `textshadowcolor` text NOT NULL,
  `textshadowsize` tinyint(3) unsigned NOT NULL,
  `showarrows` tinyint(3) unsigned NOT NULL,
  `readmorealign` tinyint(3) unsigned NOT NULL,
  `readmoremargin` text NOT NULL,
  `captionalign` tinyint(3) unsigned NOT NULL,
  `captionmargin` text NOT NULL,
  `alias` text NOT NULL,
  `created` datetime NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `access` int(10) unsigned NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL,
  `ordering` int(11) NOT NULL,
  `language` char(7) NOT NULL,
  `arrow_template` smallint(5) unsigned NOT NULL DEFAULT '37',
  `arrow_width` smallint(5) unsigned NOT NULL DEFAULT '32',
  `arrow_left_offset` smallint(5) unsigned NOT NULL DEFAULT '10',
  `arrow_center_offset` smallint(6) NOT NULL DEFAULT '0',
  `arrow_passive_opacity` smallint(5) unsigned NOT NULL DEFAULT '70',
  `move_step` int(10) unsigned NOT NULL DEFAULT '600',
  `move_time` int(10) unsigned NOT NULL DEFAULT '600',
  `move_ease` int(10) unsigned NOT NULL DEFAULT '60',
  `autoplay` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `autoplay_start_timeout` int(10) unsigned NOT NULL DEFAULT '3000',
  `autoplay_step_timeout` int(10) unsigned NOT NULL DEFAULT '5000',
  `autoplay_evenly_speed` int(10) unsigned NOT NULL DEFAULT '28',
  `autoplay_hover_timeout` int(10) unsigned NOT NULL DEFAULT '800',
  `overlayanimationtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `popup_max_size` tinyint(3) unsigned NOT NULL DEFAULT '90',
  `popup_item_min_width` smallint(5) unsigned NOT NULL DEFAULT '300',
  `popup_use_back_img` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `popup_arrow_passive_opacity` tinyint(3) unsigned NOT NULL DEFAULT '70',
  `popup_arrow_left_offset` tinyint(3) unsigned NOT NULL DEFAULT '12',
  `popup_arrow_min_height` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `popup_arrow_max_height` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `popup_showarrows` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `popup_image_order_opacity` tinyint(3) unsigned NOT NULL DEFAULT '70',
  `popup_image_order_top_offset` tinyint(3) unsigned NOT NULL DEFAULT '12',
  `popup_show_orderdata` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `popup_icons_opacity` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `popup_show_icons` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `popup_autoplay_default` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `popup_closeonend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `popup_autoplay_time` int(10) unsigned NOT NULL DEFAULT '5000',
  `popup_open_event` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kl984_cis_sliders`
--

INSERT INTO `kl984_cis_sliders` (`id`, `id_user`, `id_category`, `id_template`, `name`, `width`, `height`, `margintop`, `marginbottom`, `itemsoffset`, `paddingtop`, `paddingbottom`, `bgcolor`, `readmoresize`, `readmoreicon`, `showreadmore`, `readmoretext`, `readmorestyle`, `overlaycolor`, `overlayopacity`, `textcolor`, `overlayfontsize`, `textshadowcolor`, `textshadowsize`, `showarrows`, `readmorealign`, `readmoremargin`, `captionalign`, `captionmargin`, `alias`, `created`, `publish_up`, `publish_down`, `published`, `checked_out`, `checked_out_time`, `access`, `featured`, `ordering`, `language`, `arrow_template`, `arrow_width`, `arrow_left_offset`, `arrow_center_offset`, `arrow_passive_opacity`, `move_step`, `move_time`, `move_ease`, `autoplay`, `autoplay_start_timeout`, `autoplay_step_timeout`, `autoplay_evenly_speed`, `autoplay_hover_timeout`, `overlayanimationtype`, `popup_max_size`, `popup_item_min_width`, `popup_use_back_img`, `popup_arrow_passive_opacity`, `popup_arrow_left_offset`, `popup_arrow_min_height`, `popup_arrow_max_height`, `popup_showarrows`, `popup_image_order_opacity`, `popup_image_order_top_offset`, `popup_show_orderdata`, `popup_icons_opacity`, `popup_show_icons`, `popup_autoplay_default`, `popup_closeonend`, `popup_autoplay_time`, `popup_open_event`) VALUES
(1, 0, 1, 1, 'Nature [Slider Example]', '100%', 250, 0, 0, 2, 2, 2, '#000000', 'mini', 'picture', 1, 'View Image', 'blue', '#000000', 50, '#ffffff', 17, '#000000', 2, 1, 1, '0px 10px 10px 10px', 0, '10px 15px 15px 15px', '', '2014-01-16 20:51:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 0, 0, 1, '', 26, 28, 10, 0, 50, 600, 600, 60, 1, 3000, 5000, 25, 800, 0, 90, 150, 1, 50, 12, 30, 50, 1, 70, 12, 1, 50, 1, 1, 1, 5000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_cis_templates`
--

CREATE TABLE IF NOT EXISTS `kl984_cis_templates` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `styles` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kl984_cis_templates`
--

INSERT INTO `kl984_cis_templates` (`id`, `name`, `styles`, `published`, `publish_up`, `publish_down`) VALUES
(1, 'Test Template', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_contact_details`
--

CREATE TABLE IF NOT EXISTS `kl984_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kl984_contact_details`
--

INSERT INTO `kl984_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'John Q. Public', 'john-q-public', 'Chief Information Officer', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1-212-555555-1', '1-212-555555-2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.', '', NULL, 'email@0.0.0.0', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 8, 1, '', '', '', '', '', '*', '2012-01-23 15:32:10', 42, '', '2012-01-23 15:36:13', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Jane Q. Public', 'jane-q-public', 'Chief Information Officer', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1-212-555555-1', '1-212-555555-2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.', '', NULL, 'email@0.0.0.0', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 8, 1, '', '', '', '', '', '*', '2012-01-23 15:36:05', 42, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_content`
--

CREATE TABLE IF NOT EXISTS `kl984_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `kl984_content`
--

INSERT INTO `kl984_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 33, '2020 world cup matches are postponed due to the rain constrain', 'module-variations', '', '<p><img src="images/phoca_thumb_l_DSC1387x.jpg" border="0" alt="" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p>This theme comes with different module styles, badges and icons. For each module you can pick a style and combine it with an icon or badge to create your own unique look. Here is a list of the available options:</p>\r\n<table class="zebra">\r\n<tbody>\r\n<tr class="odd">\r\n<td class="bold">Styles</td>\r\n<td>Box, Plain</td>\r\n</tr>\r\n<tr>\r\n<td class="bold">Colors</td>\r\n<td>Grey, Black, Color</td>\r\n</tr>\r\n<tr class="odd">\r\n<td class="bold">Badges</td>\r\n<td>Hot, New, Free, Top</td>\r\n</tr>\r\n<tr>\r\n<td class="bold">Icons</td>\r\n<td>Download, Twitter, Mail, Bubble, Login, Cart</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 2, '2011-05-02 11:45:23', 42, '', '2015-12-17 10:31:47', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:45:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 10, '', '', 1, 44, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 34, 'Movie Of The Year....', 'icons', '', '<p>YOOtheme is a well-known template and extension provider for Joomla and WordPress who helps you to create professional websites. But to make your website or interface design a real eye-catcher we had one thing missing: Icons! Icons are an essential tool to simplify user interfaces and today almost every major website uses icons to highlight important parts in their content.</p>\r\n<p>This is why we created a great resource of beautiful and handcrafted icons for web and print projects. We got commercial icon sets including e-commerce, community, file and folder icons and many more as well as many freebies.</p>\r\n<div class="box-content bfc-o"><img src="images/4fb59ee8e-1.jpg" border="0" alt="" /><br />\r\n<div class="bfc-o">\r\n<h2 style="margin-top: 0;">Club Icons</h2>\r\n<p>As a member of our icon club you will get access to hundreds of handcrafted and detailed icons. New icon sets are added continuously!</p>\r\n<ul class="check">\r\n<li>Pixel perfect design</li>\r\n<li>PNGs in 8 sizes from 16x16 to 512x512 pixels</li>\r\n<li>Handmade and optimized for each size</li>\r\n<li>Editable vector PDF sources</li>\r\n<li>Change the colors and customize easily</li>\r\n</ul>\r\n<p><a class="button-more" href="http://www.yootheme.com/icons" target="_blank">Visit Website</a></p>\r\n</div>\r\n</div>', '', 1, 0, 0, 2, '2011-05-02 11:47:01', 42, '', '2015-12-17 10:33:00', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:47:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 11, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 35, 'The prime minister emphasized the need for the joint efforts of both the state and the private sectors.', 'zoo', '', '<p><img src="images/images.jpg" border="0" alt="" /></p>\r\n<p>Government has been developed a flexible and powerful content application builder to manage your content. It provides a much improved Joomla experience. The key feature is the ability to create your very own custom content types. You define what a type is made up of - e.g. text, images or a file download. Any combination is imaginable! You bring the content, ZOO brings the elements to structure it and make it look good!</p>\r\n<h2>Apps for every Purpose</h2>\r\n<p>ZOO moves from simply being a CCK to an Application Builder. Apps are extensions for ZOO which are optimized for different purposes and types of content catalogs. ZOO offers a wide range of apps to get you started right away. There is a blog, a product catalog, a cookbook, a business directory, a documentation, a download archive and a movie database app!</p>\r\n<p><img class="size-auto align-center" src="images/yootheme/zoo_apps.png" border="0" alt="ZOO Apps for every Purpose" title="ZOO Apps for every Purpose" width="635" height="219" /></p>\r\n<h2>Joomla Integration</h2>\r\n<p>By now ZOO has developed a thriving ecosystem, with new ZOO extensions appearing regularly. It also integrates well with many popular Joomla extensions. Besides the ZOO component itself offers additional modules and plugins. They allow a seamless integration into Joomla and provide a richer tool set to create your website.</p>\r\n<p><a class="button-more" href="http://www.yootheme.com/zoo">Visit Website</a></p>', '', 1, 0, 0, 2, '2011-05-02 11:47:22', 42, '', '2015-12-17 10:26:46', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:47:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 12, '', '', 1, 17, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 36, 'Obama and Putin Have Agreed to Stop ISIS', 'typography', '', '<p><img src="images/ISIS-Execution.jpg" border="0" alt="" width="343" height="180" />     You can create some beautiful content by using some simple HTML elements. The Warp theme framework offers some neat styles for all HTML elements and a great set of CSS classes to style your content. Basic HTML is very easy to learn and this small guide shows you how to use all styles provided by the Warp framework.</p>\r\n<h2>Basic HTML Elements</h2>\r\n<p>Here is a short demonstration of text-level semanticts. The &lt;p&gt; element creates a new paragraph. It will have some space before and after itself. To turn your text into hypertext just use the <a href="#">&lt;a&gt; element</a>.</p>\r\n<h3>Text-Level Semantics</h3>\r\n<p>You can emphasize text using the <em>&lt;em&gt; element</em> or to imply any extra importance the <strong>&lt;strong&gt; element</strong>. Highlight text with no semantic meaning using the &lt;mark&gt; element. Markup document changes like inserted or deleted text with the <del>&lt;del&gt; element</del> or <ins>&lt;ins&gt; element</ins>. To define an abbreviation use the <abbr title="Abbreviation Element">&lt;abbr&gt; element</abbr> and to define a definition term use the <dfn title="Defines a definition term">&lt;dfn&gt; element</dfn>.</p>\r\n<h3>Short List with Links</h3>\r\n<ul>\r\n<li><a href="http://www.yootheme.com" target="_blank">YOOtheme</a> - Premium Joomla Templates and WordPress Themes</li>\r\n<li><a href="http://www.yootheme.com/warp" target="_blank">Warp Framework</a> - Fast and Slick Theme Framework</li>\r\n<li><a href="http://www.yootheme.com/zoo" target="_blank">ZOO</a> - Content Application Builder</li>\r\n<li><a href="http://www.yootheme.com/icons" target="_blank">Stock Icons</a> - For Web and Print Projects</li>\r\n</ul>\r\n<h3>Quotations and Code</h3>\r\n<p>Inline quotations can be defined by using the <q>&lt;q&gt; element</q>.</p>\r\n<blockquote>The &lt;blockquote&gt; element defines a long quotation which also creates a new block by inserting white space before and after the blockquote element.</blockquote>\r\n<p>To define a short inline computer code use the <code>&lt;code&gt; element</code>. For a larger code snippet use the &lt;pre&gt; element which defines preformatted text. It creates a new text block which preserves both spaces and line breaks.</p>\r\n<pre>pre {\r\n    margin: 15px 0;\r\n    padding: 10px;\r\n    font-family: "Courier New", Courier, monospace;\r\n    font-size: 12px;\r\n    line-height: 18px;\r\n    white-space: pre-wrap;\r\n}\r\n</pre>\r\n<p><small>Use the &lt;small&gt; element for side comments and small print.</small></p>\r\n<hr />\r\n<h2>Useful CSS Classes</h2>\r\n<p>Here is a short demonstration of all style related CSS classes provided by the Warp framework.</p>\r\n<h3>Highlight Content</h3>\r\n<p class="dropcap">Drop caps are the first letter of a paragraph which are displayed bigger than the rest of the text. You can create a drop cap using the CSS class <code>dropcap</code>. To emphasize text with some small boxes use <em class="box">&lt;em&gt; element</em> with the CSS class <code>box</code>.</p>\r\n<div class="box-content">This simple box is intended to group large parts of your content using the CSS class <code>box-content</code>.</div>\r\n<div class="box-note">This is a simple box to highlight some text using the CSS class <code>box-note</code>.</div>\r\n<div class="box-info">This is a simple box with useful information using the CSS class <code>box-info</code>.</div>\r\n<div class="box-warning">This is a simple box with important notes and warnings using the CSS class <code>box-warning</code>.</div>\r\n<div class="box-hint">This is a simple box with additional hints using the CSS class <code>box-hint</code>.</div>\r\n<div class="box-download">This is a simple box with download information using the CSS class <code>box-download</code>.</div>\r\n<p>Use the CSS class <code>dotted</code> to create a dotted horizontal rule.</p>\r\n<hr class="dotted" />\r\n<h3>Tables</h3>\r\n<p>Create a zebra stripped table using using the CSS class <code>zebra</code>.</p>\r\n<table class="zebra"><caption>Table caption</caption>\r\n<thead>\r\n<tr><th>Table Heading</th><th>Table Heading</th><th class="center">Table Heading</th></tr>\r\n</thead>\r\n<tfoot>\r\n<tr>\r\n<td>Table Footer</td>\r\n<td>Table Footer</td>\r\n<td class="center">Table Footer</td>\r\n</tr>\r\n</tfoot>\r\n<tbody>\r\n<tr class="odd">\r\n<td>Table Data</td>\r\n<td>Table Data</td>\r\n<td class="center">Data Centered</td>\r\n</tr>\r\n<tr>\r\n<td class="bold">Data Bold</td>\r\n<td>Table Data</td>\r\n<td class="center">Data Centered</td>\r\n</tr>\r\n<tr class="odd">\r\n<td>Table Data</td>\r\n<td>Table Data</td>\r\n<td class="center">Data Centered</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Definition Lists</h3>\r\n<p>Create a nice looking definition list separated with a line by using the CSS class <code>separator</code>.</p>\r\n<dl class="separator"><dt>Definition List</dt><dd>A definition list is a list of terms and corresponding definitions. To create a definition list use the &lt;dl&gt; element in conjunction with &lt;dt&gt; to define the definition term and &lt;dd&gt; to define the definition description.</dd><dt>Definition Term</dt><dd>This is a definition description.</dd><dt>Definition Term</dt><dd>This is a definition description.</dd><dd>This is another definition description.</dd></dl>\r\n<h3>Forms</h3>\r\n<p>Create a clearly arranged form layout with fieldset boxes using the CSS class <code>box</code>.</p>\r\n<form class="box style" action="#"><fieldset><legend>Form legend</legend>\r\n<div><label for="f1">Text input:</label> <input id="f1" type="text" value="input text" /></div>\r\n<div><label for="f2">Radio input:</label> <input id="f2" type="radio" /></div>\r\n<div><label for="f3">Checkbox input:</label> <input id="f3" type="checkbox" /></div>\r\n<div><label for="f4">Select field:</label><select id="f4">\r\n<option>Option 01</option>\r\n<option>Option 02</option>\r\n</select></div>\r\n<div><label for="f5">Textarea:</label><br /><textarea id="f5" rows="5" cols="30">Textarea text</textarea></div>\r\n</fieldset><button>Button</button> <input type="button" value="Input Button" /></form>', '', 1, 0, 0, 2, '2011-05-02 11:47:45', 42, '', '2015-12-17 10:30:28', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:47:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 13, '', '', 1, 25, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 37, 'Dummy Content', 'dummy-content', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 1, 0, 0, 2, '2011-05-02 11:48:08', 42, '', '2011-05-02 13:45:48', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:48:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 14, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 38, 'Features', 'features', '', '<p>This theme utilizes the latest features of the fast and slick Warp theme framework. It comes with a broad range of layout and <a href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=103">module variations</a> as well as a neat <a href="index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=104">typography</a> to style your content. Read on to learn more about this theme and its features:</p>\r\n\r\n<ul class="check">\r\n	<li>Available for Joomla and WordPress</li>\r\n	<li>8 style variations included</li>\r\n	<li>Choose from 22 backgrounds and 14 fonts</li>\r\n	<li>4 module styles combinable with 4 badges and 6 icons</li>\r\n	<li>3 different wrapper styles: White, Glass and None</li>\r\n	<li>Rounded corners option available</li>\r\n	<li>Flexible template and column widths</li>\r\n	<li>All Warp 6.1+ framework features are available</li>\r\n	<li>Including 4 custom Widgetkit styles</li>\r\n</ul>\r\n\r\n<h2>Easy Installation and Customization</h2>\r\n<div class="box-content">\r\n	<div class="grid-block grid-gutter">\r\n		<div class="grid-box width50">\r\n			<div>\r\n				<img class="align-left" src="images/yootheme/features_icon_demo_package.png" width="42" height="46" alt="Demo Packages" />\r\n				<div class="bfc-o">\r\n					<h3 class="remove-margin">Demo Packages</h3>\r\n					<p class="remove-margin-b">We provide demo packages with the theme sample data for Joomla and WordPress to get you started right.</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class="grid-box width50">\r\n			<div>\r\n				<img class="align-left" src="images/yootheme/features_icon_image_sources.png" width="42" height="42" alt="Image Sources" />\r\n				<div class="bfc-o">\r\n					<h3 class="remove-margin">Image Sources</h3>\r\n					<p class="remove-margin-b">Sliced and editable Adobe Fireworks image source files are available to customize the theme easily.</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<h2>Theme Styles</h2>\r\n<p>We provide different style variations of the default theme. In addition to these styles we added several other style settings like colors and fonts. Combining the different style options allows you to create your own unique theme design.</p>\r\n<p><img class="size-auto" src="images/yootheme/features_style_settings.png" height="270" width="640" alt="Combinable Styles" title="" /></p>\r\n\r\n<h2>Theme Profiles</h2>\r\n<p>We created some nice theme profiles using the different styles, colors and fonts, you can choose from in the theme administration. You can create your own profiles and even assign them to different menu items. Click on one of the profile images to load it.</p>\r\n\r\n<div class="bfc-o text-center">\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;profile=default">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile01.jpg" width="200" height="150" alt="Load Profile Default" title="Load Profile Default" />\r\n			<figcaption>Default</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;profile=red">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile02.jpg" width="200" height="150" alt="Load Profile Red" title="Load Profile Red" />\r\n			<figcaption>Red</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;profile=rose">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile03.jpg" width="200" height="150" alt="Load Profile Rose" title="Load Profile Rose" />\r\n			<figcaption>Rose</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;profile=olive">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile04.jpg" width="200" height="150" alt="Load Profile Olive" title="Load Profile Olive" />\r\n			<figcaption>Olive</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;profile=dove">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile05.jpg" width="200" height="150" alt="Load Profile Dove" title="Load Profile Dove" />\r\n			<figcaption>Dove</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;profile=turquoise">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile06.jpg" width="200" height="150" alt="Load Profile Turquoise" title="Load Profile Turquoise" />\r\n			<figcaption>Turquoise</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;profile=green">\r\n		<figure class="remove-margin">\r\n			<img class="size-auto" src="images/yootheme/features_profile07.jpg" width="200" height="150" alt="Load Profile Green" title="Load Profile Green" />\r\n			<figcaption>Green</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;profile=yellow">\r\n		<figure class="remove-margin">\r\n			<img class="size-auto" src="images/yootheme/features_profile08.jpg" width="200" height="150" alt="Load Profile Yellow" title="Load Profile Yellow" />\r\n			<figcaption>Yellow</figcaption>\r\n		</figure>\r\n	</a>\r\n</div>\r\n\r\n\r\n<h2>Theme Layout</h2>\r\n<p>This theme comes with a slightly changed Warp6 module layout. We added a third bottom position called "bottom-c". The blue module positions allow to choose a module layout which defines the module alignment and proportions: <em>equal</em>, <em>double</em> or <em>stack</em>. You can easily add your own module layouts. The two available sidebars, highlighted in red, can be switched to the left or right side and their widths can easily be set in the theme administration. For modules in the blue and red positions you can choose different module styles. Take a look at the <a href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=103">module variations</a> page to get an overview.</p>\r\n\r\n<div class="grid-block">\r\n	<div class="grid-box width50">\r\n		<figure class="remove-margin">\r\n			<img class="size-auto" src="images/yootheme/features_module_positions.png" width="300" height="450" alt="Module Positions" title="Module Positions" />\r\n			<figcaption>Module Positions</figcaption>\r\n		</figure>\r\n	</div>\r\n	<div class="grid-box width50">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_module_layouts.png" width="300" height="202" alt="Module Layouts" title="Module Layouts" />\r\n			<figcaption>Module Layouts</figcaption>\r\n		</figure>\r\n		<figure class="remove-margin-b">\r\n			<img class="size-auto" src="images/yootheme/features_column_layouts.png" width="300" height="166" alt="Colum Layouts" title="Column Layouts" />\r\n			<figcaption>Column Layouts</figcaption>\r\n		</figure>\r\n	</div>\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h2>Special Features</h2>\r\n\r\n<p>The Revista theme comes with some additional features.</p>\r\n\r\n<h3>Custom Widgetkit Styles</h3>\r\n\r\n<p>We created some custom styles for our <a href="index.php?option=com_content&view=article&id=14&Itemid=138">Widgetkit Slideshow + Widgetkit Slideshow Tabs</a>, <a href="index.php?option=com_content&view=article&id=19&Itemid=149">Widgetkit Gallery</a> and <a href="index.php?option=com_content&view=article&id=22&Itemid=147">Widgetkit Slideset</a>, perfectly fitting to the theme. To apply this styles, follow these steps:</p>\r\n\r\n<h4>Slideshow</h4>\r\n<ol>\r\n	<li>Download and unzip the bonus styles package for Widgetkit available in the download area</li>\r\n	<li>Copy the folder <strong>slideshow/styles/revista_articles</strong> and <strong>slideshow/styles/revista_tabs</strong></li>\r\n	<li>\r\n		Joomla: Paste it to <strong>media/widgetkit/widgets/slideshow/styles</strong><br/>\r\n		WordPress: Paste it to <strong>wp-content/plugins/widgetkit/widgets/slideshow/styles</strong>\r\n	</li>\r\n	<li>Now you can select the style "Revista Default" and "Revista Tabs" in the settings of your Widgetkit Slideshow</li>\r\n</ol>\r\n\r\n<h4>Gallery</h4>\r\n<ol>\r\n	<li>Download and unzip the bonus styles package for Widgetkit available in the download area</li>\r\n	<li>Copy the folder <strong>gallery/styles/revista_default</strong></li>\r\n	<li>\r\n		Joomla: Paste it to <strong>media/widgetkit/widgets/gallery/styles</strong><br/>\r\n		WordPress: Paste it to <strong>wp-content/plugins/widgetkit/widgets/gallery/styles</strong>\r\n	</li>\r\n	<li>Now you can select the style "Revista" in the settings of your Widgetkit Gallery</li>\r\n</ol>\r\n\r\n<h4>Slideset</h4>\r\n<ol>\r\n	<li>Download and unzip the bonus styles package for Widgetkit available in the download area</li>\r\n	<li>Copy the folder <strong>slideset/styles/revista_default</strong></li>\r\n	<li>\r\n		Joomla: Paste it to <strong>media/widgetkit/widgets/slideset/styles</strong><br/>\r\n		WordPress: Paste it to <strong>wp-content/plugins/widgetkit/widgets/slideset/styles</strong>\r\n	</li>\r\n	<li>Now you can select the style "Revista Default" in the settings of your Widgetkit Slideset</li>\r\n</ol>\r\n\r\n<h3>Social Icons</h3>\r\n<p>As a little extra, the Catalyst theme offers a set of social icons. They are easy to add to your content and are part of our editable Adobe Fireworks Image Source Files.</p>\r\n\r\n<ul class="social-icons">\r\n	<li class="rss"><a href="#"></a></li>\r\n	<li class="twitter"><a href="#"></a></li>\r\n	<li class="facebook"><a href="#"></a></li>\r\n	<li class="flickr"><a href="#"></a></li>\r\n	<li class="linkedin"><a href="#"></a></li>\r\n	<li class="myspace"><a href="#"></a></li>\r\n	<li class="lastfm"><a href="#"></a></li>\r\n	<li class="dribbble"><a href="#"></a></li>\r\n	<li class="digg"><a href="#"></a></li>\r\n	<li class="delicious"><a href="#"></a></li>\r\n	<li class="deviantart"><a href="#"></a></li>\r\n	<li class="technorati"><a href="#"></a></li>\r\n	<li class="stumbleupon"><a href="#"></a></li>\r\n	<li class="yahoo"><a href="#"></a></li>\r\n	<li class="openid"><a href="#"></a></li>\r\n	<li class="xing"><a href="#"></a></li>\r\n	<li class="forrst"><a href="#"></a></li>\r\n	<li class="googleplus"><a href="#"></a></li>\r\n	<li class="youtube"><a href="#"></a></li>\r\n	<li class="vimeo"><a href="#"></a></li>\r\n	<li class="foursquare"><a href="#"></a></li>\r\n	<li class="github"><a href="#"></a></li>\r\n</ul>\r\n\r\n<p>Here is a little code example how to add them:</p>\r\n\r\n<pre>\r\n&lt;ul class=&quot;social-icons&quot;&gt;\r\n	&lt;li class=&quot;rss&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n</pre>\r\n\r\n<p>Possible class names are <strong>rss, twitter, facebook, flickr, linkedin, myspace, lastfm, dribbble, digg, delicious, deviantart, technorati, stumbleupon, yahoo, openid, xing, forrst, googleplus, youtube, vimeo, fouraquare</strong> and <strong>github</strong>.</p>', '', 1, 0, 0, 2, '2011-05-02 11:48:41', 42, '', '2012-01-31 08:58:31', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:48:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 0, 15, '', '', 1, 98, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 39, 'Revista Nueva Theme', 'nano-theme', '', '<p>This is the Master theme of the our fast and slick Warp theme framework! It takes full advantage of all the latest Warp6 features like semantic HTML5 markup, a nice and clean administration UI and much more.</p>\r\n\r\n<p>It is an optimized and streamlined framework theme and serves as blueprint to build your own custom themes.</p>\r\n\r\n<a class="button-more" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102">Read more</a>', '', 1, 0, 0, 2, '2011-05-02 11:49:24', 42, '', '2012-01-30 15:35:44', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:49:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 16, '', '', 1, 674, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 40, 'Joomla Templates', 'joomla-templates', '', '<p><a href="index.php?option=com_content&amp;view=article&amp;id=8:joomla-templates&amp;catid=7&amp;Itemid=126"><img class="size-auto" width="760" height="300" alt="Joomla Templates and WordPress Themes" title="Joomla Templates and WordPress Themes" src="images/yootheme/blog_themes.jpg" /></a></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n', '\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 0, 0, 7, '2011-04-12 11:50:02', 42, '', '2012-01-23 16:42:52', 42, 0, '0000-00-00 00:00:00', '2011-04-12 11:50:02', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 0, 1, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(9, 41, 'Beautiful Icons', 'beautiful-icons', '', '<p><a href="index.php?option=com_content&amp;view=article&amp;id=9:beautiful-icons&amp;catid=7&amp;Itemid=126"><img class="size-auto" width="760" height="300" alt="Beautiful and handcrafted icons for web and print projects" title="Beautiful and handcrafted icons for web and print projects" src="images/yootheme/blog_icons.jpg" /></a></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n', '\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 0, 0, 7, '2011-03-20 11:50:30', 42, '', '2012-01-23 16:43:03', 42, 0, '0000-00-00 00:00:00', '2011-03-20 11:50:30', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 2, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(10, 42, 'Warp Theme Framework', 'warp-theme-framework', '', '<p><a href="index.php?option=com_content&amp;view=article&amp;id=10:warp-theme-framework&amp;catid=7&amp;Itemid=126"><img class="size-auto" width="760" height="300" alt="Warp Theme Framework" title="Warp Theme Framework" src="images/yootheme/blog_warp.jpg" /></a></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n', '\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 0, 0, 7, '2011-03-15 11:50:55', 42, '', '2012-01-23 16:43:13', 42, 0, '0000-00-00 00:00:00', '2011-03-15 11:50:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 3, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(11, 43, 'ZOO Extension', 'zoo-extension', '', '<p><img class="size-auto" width="760" height="300" alt="ZOO is a flexible and powerful content application builder to manage your content" title="ZOO is a flexible and powerful content application builder to manage your content" src="images/yootheme/blog_zoo.png" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n', '\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 0, 0, 7, '2011-02-28 11:51:30', 42, '', '2011-05-09 19:55:11', 42, 0, '0000-00-00 00:00:00', '2011-02-28 11:51:30', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 4, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(12, 44, 'Free Social Icons', 'free-social-icons', '', '<p><a href="index.php?option=com_content&amp;view=article&amp;id=12:free-social-icons&amp;catid=7&amp;Itemid=126"><img class="size-auto" width="760" height="300" alt="Free Social Icons Set" title="Free Social Icons Set" src="images/yootheme/blog_social_icons.jpg" /></a></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n', '\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 0, 0, 7, '2011-01-14 11:51:53', 42, '', '2012-01-23 16:43:24', 42, 0, '0000-00-00 00:00:00', '2011-01-14 11:51:53', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 5, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(13, 46, 'Widgetkit', 'widgetkit', '', '<p>Widgetkit is the next generation tool set for Joomla and WordPress. This toolkit is the first of its kind! It provides a simple and user-friendly way to enrich your websites experience with slideshows, galleries, lightboxes and much more. All widgets make use of modern web technologies like HTML5 markup, CSS3 features and jQuery based JavaScripts. Widgetkit also works on iPads, iPhones and Android phones or tablets. It supports touch gestures and makes use of smooth CSS3 animations. Here is a short feature roundup:</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Available for Joomla and WordPress</li>\r\n	<li>All widgets can work stand-alone</li>\r\n	<li>Use shortcodes to show widgets anywhere</li>\r\n	<li>Clean and lightweight code</li>\r\n	<li>Semantic HTML5 markup</li>\r\n	<li>Asset file Minification and Compression</li>\r\n	<li>Supports touch gestures for mobile devices</li>\r\n	<li>Uses hardware accelerated CSS3 animations</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, latest jQuery version</li>\r\n</ul>\r\n\r\n<h2>How It Works</h2>\r\n\r\n<p>Widgetkit basically acts as a platform for all our widgets. It installs as a single component in Joomla or as a plugin in WordPress. The Widgetkit dashboard presents you an overview of all widgets. You can create, edit or delete all widgets and their content in one place. And after you have created the content for your first widget you can either use a shortcode or a module to display your widget anywhere on your website. In fact you can do both because once have you created a widget you are able to display it multiple times and reuse it on different parts of your website.</p>', '', 1, 0, 0, 2, '2011-06-08 09:34:41', 42, '', '2011-07-31 16:38:39', 42, 0, '0000-00-00 00:00:00', '2011-06-08 09:34:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 0, 9, '', '', 1, 17, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 47, 'Slideshow', 'slideshow', '', '<p>The Widgetkit Slideshow is the ultimate image and content slideshow for Joomla and WordPress. It''s flexible, easy to customize and completely build with HTML5 and CSS3. </p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Clean and very lightweight code</li>\r\n	<li>15 eye-catching transition effects</li>\r\n	<li>Uses hardware accelerated CSS3 animations</li>\r\n	<li>JavaScript animation fallback for all Internet Explorers</li>\r\n	<li>Support for HTML captions</li>\r\n	<li>Swipe navigation on mobile phones</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>Slideshow Example</h2>\r\n<p>This is an image slideshow with eye-catching transition effects.</p>\r\n[widgetkit id=10]\r\n\r\n<h2>Showcase Box Example</h2>\r\n<p>This a content showcase using all the features from the Slideset widget as navigation. Any kind of HTML content can be used in the navigation.</p>\r\n[widgetkit id=37]\r\n\r\n<h2>Showcase Button Example</h2>\r\n<p>This is an image slideshow with some nice navigation buttons. You can place any kind of HTML in the navigation buttons.</p>\r\n[widgetkit id=41]\r\n\r\n<h2>Tabs Example</h2>\r\n<p>This is a classic, tabbed slideshow. Tabs can be aligned to the left, right and center.</p>\r\n[widgetkit id=35]\r\n\r\n<h2>Tabs Bar Example</h2>\r\n<p>This is a slideshow with a tabbed navigation bar. Tabs can be aligned to the left, right and center.</p>\r\n[widgetkit id=34]\r\n\r\n<h2>List Example</h2>\r\n<p>This is a slideshow with a vertical tabbed list as navigation.</p>\r\n[widgetkit id=36]\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>The Widgetkit Slideshow takes full advantage of the very user-friendly Widgetkit administration user interface. It has never been easier to create and manage all the slideshows and their different slides in one place. After you created a slideshow you can load it anywhere in your theme using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 2, '2011-06-08 09:34:56', 42, '', '2011-09-29 15:15:25', 42, 0, '0000-00-00 00:00:00', '2011-06-08 09:34:56', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 8, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `kl984_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(15, 48, 'Lightbox', 'lightbox', '', '<p>The Widgetkit Lightbox allows you to view images, HTML and multi-media content on a dark dimmed overlay without having to leave the current page.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Display images, videos, HTML, Iframes, Ajax requests and SWF</li>\r\n	<li>Supports YouTube, Vimeo, MP4 (h.264), WebM and FLV movies</li>\r\n	<li>Group lightboxes and mix different content types</li>\r\n	<li>3 different opening and closing transitions</li>\r\n	<li>4 different caption styles</li>\r\n	<li>Keyboard and mouse scroll wheel navigation</li>\r\n	<li>Built with the latest jQuery version</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>Examples</h2>\r\n\r\n<p>Different animations - <code>fade</code>, <code>elastic</code> and <code>none</code></p>\r\n<p class="gallery">\r\n	<a data-lightbox="transitionIn:fade;transitionOut:fade;" href="images/yootheme/widgetkit/lightbox/image1_lightbox.jpg"><img src="images/yootheme/widgetkit/lightbox/image1.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n	<a data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image2_lightbox.jpg"><img src="images/yootheme/widgetkit/lightbox/image2.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n	<a data-lightbox="transitionIn:none;transitionOut:none;" href="images/yootheme/widgetkit/lightbox/image3_lightbox.jpg"><img src="images/yootheme/widgetkit/lightbox/image3.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n</p>\r\n\r\n<p>Different title positions - <code>float</code>, <code>inside</code> and <code>over</code></p>\r\n<p class="gallery">\r\n	<a data-lightbox="group:mygroup1;titlePosition:float" href="images/yootheme/widgetkit/lightbox/image4_lightbox.jpg" title="Title Position: Float"><img src="images/yootheme/widgetkit/lightbox/image4.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n	<a data-lightbox="group:mygroup1;titlePosition:inside" href="images/yootheme/widgetkit/lightbox/image5_lightbox.jpg" title="Title Position: Inside"><img src="images/yootheme/widgetkit/lightbox/image5.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n	<a data-lightbox="group:mygroup1;titlePosition:over;padding:0" href="images/yootheme/widgetkit/lightbox/image6_lightbox.jpg" title="Title Position: Over and Padding set to 0"><img src="images/yootheme/widgetkit/lightbox/image6.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n</p>\r\n\r\n<p>Various examples in one gallery (try also using the keyboard and mouse scroll wheel)</p>\r\n<ul>\r\n	<li><a data-lightbox="group:mygroup2" href="http://www.youtube.com/watch?v=R55e-uHQna0" title="YouTube Video">YouTube</a></li>\r\n	<li><a data-lightbox="group:mygroup2" href="http://vimeo.com/15261921" title="Vimeo Video">Vimeo</a></li>\r\n	<li><a data-lightbox="group:mygroup2;autoplay:true;" href="http://www.yootheme.com/videos/mediaplayer.mp4" title="MP4 (h.264)">MP4 (h.264)</a></li>\r\n	<li><a data-lightbox="group:mygroup2" href="http://www.adobe.com/jp/events/cs3_web_edition_tour/swfs/perform.swf" title="Flash Swf">Swf</a></li>\r\n	<li><a data-lightbox="group:mygroup2" href="#inline" title="Inline Content from the Website">Inline</a></li>\r\n	<li><a data-lightbox="group:mygroup2;width:1000;height:600" title="Iframe" href="http://www.wikipedia.org">Iframe</a></li>\r\n</ul>\r\n\r\n<div style="display: none;">\r\n	<div id="inline" style="width: 400px; height: 100px; overflow: auto;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n</div>\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>Use the HTML5 custom data attribute <code>data-lightbox</code> to activate the lightbox. You can set various lightbox parameters to the data attribute. For example:</p>\r\n\r\n<pre>&lt;a data-lightbox=&quot;width:1000;height:600;&quot; href=&quot;http://www.wikipedia.org&quot;&gt;Lightbox&lt;/a&gt;</pre>\r\n\r\n<p>Here is a list of the most common parameters:</p>\r\n\r\n<ul>\r\n	<li><strong>titlePosition</strong> - How should the title show up? (<code>float</code>, <code>outside</code>, <code>inside</code> or <code>over</code>)</li>\r\n	<li><strong>transitionIn</strong> - Set a opening transition. (<code>fade</code>, <code>elastic</code>, or <code>none</code>)</li>\r\n	<li><strong>transitionOut</strong> - Set a closing transition (<code>fade</code>, <code>elastic</code>, or <code>none</code>)</li>\r\n	<li><strong>overlayShow</strong> - Set to <code>true</code> or <code>false</code></li>\r\n	<li><strong>width</strong> - Set a width in pixel</li>\r\n	<li><strong>height</strong> - Set a height in pixel</li>\r\n	<li><strong>padding</strong> - Set a padding in pixel</li>\r\n</ul>', '', 1, 0, 0, 2, '2011-06-08 09:35:11', 42, '', '2011-12-28 10:46:40', 42, 0, '0000-00-00 00:00:00', '2011-06-08 09:35:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 7, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 49, 'Spotlight', 'spotlight', '', '<p>The Widgetkit Spotlight allows you to add an overlay to your images which fades or moves in on mouse hover. The overlay can be an image or HTML content. The default magnifier spotlight is a perfect match to be used with a lightbox.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Create nicely animated image overlays</li>\r\n	<li>Supports custom image or HTML content overlays</li>\r\n	<li>5 different animation modes</li>\r\n    <li>Built with the latest jQuery version</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>Examples</h2>\r\n\r\n<p>If no custom overlay is set the default spotlight fades in an overlay with an magnifier image. If you define a custom overlay you can choose between different animations - <code>fade</code>, <code>bottom</code>, <code>top</code>, <code>right</code> and <code>left</code>.</p>\r\n\r\n<div>\r\n	<a data-spotlight="on" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image1_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image1.jpg" width="180" height="120" alt="Spotlight Image" />\r\n	</a>\r\n	<a data-spotlight="effect:bottom;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image2_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image2.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay">Custom Overlay (Bottom)</div>\r\n	</a>\r\n	<a data-spotlight="effect:right;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image3_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image3.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay">Custom Overlay (Right)</div>\r\n	</a>\r\n</div>\r\n\r\n<div>\r\n	<a data-spotlight="effect:fade;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image4_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image4.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay"><img src="images/yootheme/widgetkit/lightbox/image4_spotlight.jpg" width="180" height="120" alt="Spotlight Image" /></div>\r\n	</a>\r\n	<a data-spotlight="effect:top;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image5_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image5.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay">Custom Overlay (Top)</div>\r\n	</a>\r\n	<a data-spotlight="effect:left;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image6_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image6.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay">Custom Overlay (Left)</div>\r\n	</a>\r\n</div>\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>Use the HTML5 custom data attribute <code>data-spotlight</code> to activate the spotlight.\r\n\r\n<pre>&lt;a data-spotlight="on" href="/mypage.html"&gt;\r\n	&lt;img src="/image.jpg" width="180" height="120" alt="" /&gt;\r\n&lt;/a&gt;</pre>\r\n\r\n<p>To create a custom overlay use a div element with the CSS class <code>overlay</code>. You can set the effect parameter to the data attribute. For example:</p>\r\n\r\n<pre>&lt;a data-spotlight="effect:bottom;" href="/mypage.html"&gt;\r\n	&lt;img src="/image.jpg" width="180" height="120" alt="" /&gt;\r\n	&lt;div class="overlay"&gt;Custom Overlay&lt;/div&gt;\r\n&lt;/a></pre>\r\n\r\n<p>You can set the effect parameter to <code>fade</code>, <code>bottom</code>, <code>top</code>, <code>right</code> and <code>left</code>.', '', 1, 0, 0, 2, '2011-06-08 09:35:24', 42, '', '2011-07-31 16:28:32', 42, 0, '0000-00-00 00:00:00', '2011-06-08 09:35:24', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 6, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 50, 'Twitter', 'twitter', '', '<p>The Widgetkit Twitter module is the neatest way to display tweets directly on your website. All displayed tweets get cached so they show up super fast, even if Twitter is not available.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Filter tweets by hashtags, words, from users, to users, referencing users</li>\r\n	<li>Block tweets using a blacklist</li>\r\n	<li>Tweets are cached for high performance</li>\r\n	<li>Tweets show up even if Twitter is not available</li>\r\n	<li>3 different styles to show your tweets</li>\r\n    <li>Built with HTML5 using article and time elements</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>Create a Twitter module in Joomla or a Twitter widget in WordPress and publish it in a module position. A lot of options are available to choose which tweets you want to show.</p>\r\n\r\n<p>For example you can show only tweets from a specific user or tweets that contain a certain hash-tag or a specific word. All options can be combined. To filter by more than one word or user use a space between them. For example: <code>yootheme joomla</code>.</p>', '', 1, 0, 0, 2, '2011-06-08 09:35:35', 42, '', '2011-07-31 16:28:21', 42, 0, '0000-00-00 00:00:00', '2011-06-08 09:35:35', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 5, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 51, 'Media Player', 'media-player', '', '<p>The Widgetkit Media Player is a HTML5 audio and video player completely built HTML and CSS. You can easily embed video files into your website by using the HTML5 video element. A Flash player fallback is included for all unsupported browsers.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Native playback for modern HTML5 browsers</li>\r\n	<li>Supports MP4 (h.264), WebM, FLV, WMV and MP3 files</li>\r\n	<li>Completely built with HTML and CSS</li>\r\n	<li>Same UI in all browsers</li>\r\n	<li>Create your own skins</li>\r\n	<li>Flash player fallback for unsupported browsers</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>Examples</h2>\r\n\r\n<video width="640" height="360" poster="http://www.yootheme.com/videos/mediaplayer.jpg" controls="controls" preload="none">\r\n	<source type="video/mp4" src="http://www.yootheme.com/videos/mediaplayer.mp4" />\r\n</video>\r\n\r\n<p>This is a MP3 Audio Sample:</p>\r\n\r\n<audio src="http://www.yootheme.com/videos/mediaplayer.mp3" type="audio/mp3" controls="control" preload="none"></audio>\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>Use the HTML5 <code>video</code> element to embed video in your website. For example:</p>\r\n\r\n<pre>&lt;video src="/video.mp4" width="320" height="240"&gt;&lt;/video&gt;</pre>\r\n\r\n<p>You can also provide multiple sources, to add support for the different video formats like h.264, WebM or Ogg:</p>\r\n\r\n<pre>&lt;video width="320" height="240"&gt;\r\n	&lt;source type="video/mp4"  src="/video.mp4" /&gt;\r\n	&lt;source type="video/webm" src="/video.webm" /&gt;\r\n	&lt;source type="video/ogg"  src="/video.ogv" /&gt;\r\n&lt;/video&gt;\r\n</pre>\r\n\r\n\r\n<p>Use the HTML5 <code>audio</code> element to embed MP3 files in your website. For example:</p>\r\n\r\n<pre>&lt;audio src="/audio.mp3" type="audio/mp3"&gt;&lt;/audio&gt;</pre>', '', 1, 0, 0, 2, '2011-07-31 16:30:20', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-07-31 16:30:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 52, 'Gallery', 'gallery', '', '<p>The Widgetkit Gallery provides a smart and automated way to publish images on your website. You only need to select the image folders and the whole gallery is generated automatically.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Comes with image wall, slider and slideshow styles</li>\r\n	<li>Folder based image selection</li>\r\n	<li>Support for multiple image folders</li>\r\n	<li>Automatic thumbnail creation</li>\r\n	<li>Support for image captions and custom links</li>\r\n	<li>Uses the Widgetkit Spotlight and Lightbox</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>Showcase Box Example</h2>\r\n<p>This is an image showcase with eye-catching transition effects and a thumbnail navigation.</p>\r\n[widgetkit id=39]\r\n\r\n<h2>Image Wall Example</h2>\r\n<p>This is an image wall with zoom effect, no margins and squared corners using the lightbox.</p>\r\n[widgetkit id=24]\r\n\r\n<h2>Polaroid Example</h2>\r\n<p>This is an image wall with scattered polaroid pictures using the lightbox.</p>\r\n[widgetkit id=25]\r\n\r\n<h2>Slider Example 1</h2>\r\n<p>This is an image slider where the image centers automatically during the effect. It also features a spotlight caption and the lightbox.</p>\r\n[widgetkit id=27]\r\n\r\n<h2>Slider Example 2</h2>\r\n<p>This is an image slider where the image stays left during the effect.</p>\r\n[widgetkit id=31]\r\n\r\n<h2>Slideshow Example</h2>\r\n<p>This is an image gallery using all the features from the slideshow widget.</p>\r\n[widgetkit id=19]\r\n\r\n<h2>Showcase Example</h2>\r\n<p>This is a simple image showcase mashing up all the features from the slideshow and slideset widget.</p>\r\n[widgetkit id=40]\r\n\r\n<h2>Spotlight Example</h2>\r\n<p>This is an image wall with some margins and rounded corners using the spotlight and lightbox.</p>\r\n[widgetkit id=23]\r\n\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>The Widgetkit Gallery comes with a user-friendly administration user interface which let''s you create new galleries with just a few clicks. The integrated directory browser let''s you easily add or remove source directories of your images. All galleries can be loaded anywhere in your theme using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 2, '2011-07-31 16:30:30', 42, '', '2011-09-29 15:15:49', 42, 0, '0000-00-00 00:00:00', '2011-07-31 16:30:30', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 3, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 53, 'Map', 'map', '', '<p>The Widgetkit Map provides a simple solution for adding a map to your website. Various features let you customize the map like changing colors and adding markers or directions.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Location selection with auto geocoding</li>\r\n	<li>Support for multiple map markers with text popups</li>\r\n	<li>Option to get the direction to the active marker</li>\r\n	<li>Support for custom map styles and colors</li>\r\n	<li>Uses the latest Google Maps API</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>Direction Example</h2>\r\n<p>This map features all map controls, multiple markers and you can get the direction.</p>\r\n[widgetkit id=26]\r\n\r\n<h2>Color Scheme Example</h2>\r\n<p>Set or invert the hue, saturation, lightness and gamma of a map.</p>\r\n[widgetkit id=28]\r\n\r\n<h2>Minimal Example</h2>\r\n<p>This map has a fixed width, no controls and no markers.</p>\r\n[widgetkit id=29]\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>With the Widgetkit Map you can quickly create and manage simple maps with features like multiple markers, text popups and custom color schemes. Once you have created a map you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 2, '2011-07-31 16:30:42', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-07-31 16:30:42', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 54, 'Accordion', 'accordion', '', '<p>The Widgetkit Accordion enables you to display a set of items in a compact space, by clicking on each items header it expands or collapses it''s content section.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Clean and very lightweight code</li>\r\n	<li>Smooth transitions on content section toggle</li>\r\n	<li>Option to match automatically the height of varying content</li>\r\n	<li>Option to auto collapse or allow multiple opened items</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>Example</h2>\r\n\r\n[widgetkit id=30]\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>The Widgetkit Accordion lets you easily create and manage all the accordions contents through the user-friendly Widgetkit administration user interface. After you have created an accordion you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 2, '2011-07-31 16:30:54', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-07-31 16:30:54', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 55, 'Slideset', 'slideset', '', '<p>The Widgetkit Slideset takes your product showcase to the next level. It provides a sleek way to show multiple sets of items and uses smooth effects while looping through them.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Clean and very lightweight code</li>\r\n	<li>Eye-catching transition effects</li>\r\n	<li>Support of named custom sets</li>\r\n	<li>Swipe navigation on mobile phones</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla and WordPress</li>\r\n</ul>\r\n\r\n<h2>Slide Example</h2>\r\n<p>The sets are auto generated (4 items per set), item names are shown and it uses the slide effect and navigation buttons.</p>\r\n[widgetkit id=32]\r\n\r\n<h2>Zoom Example</h2>\r\n<p>The sets are arranged manually, the sets names are used as navigation and it uses the zoom effect.</p>\r\n[widgetkit id=33]\r\n\r\n<h2>Deck Example</h2>\r\n<p>This auto generated sets uses prev/next buttons as navigation and the deck effect.</p>\r\n[widgetkit id=43]\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>The Widgetkit Slideset takes full advantage of the very user-friendly Widgetkit administration user interface. You can create and manage all the slidesets and their different items in one place. After you have created a slideset you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 2, '2011-07-31 16:31:07', 42, '', '2011-09-29 15:15:39', 42, 0, '0000-00-00 00:00:00', '2011-07-31 16:31:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 0, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `kl984_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kl984_content_frontpage`
--

INSERT INTO `kl984_content_frontpage` (`content_id`, `ordering`) VALUES
(8, 5),
(9, 4),
(10, 3),
(11, 2),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_content_rating`
--

CREATE TABLE IF NOT EXISTS `kl984_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `kl984_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_extensions`
--

CREATE TABLE IF NOT EXISTS `kl984_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned DEFAULT NULL,
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10019 ;

--
-- Dumping data for table `kl984_extensions`
--

INSERT INTO `kl984_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"contact_layout":"_:default","show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","count_clicks":"1","icons":1,"link_icons":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","show_pagination_limit":"1","show_headings":"1","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"1","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"1","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"right","float_fulltext":"right","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"porter_en"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 0, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.11","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet","extended_elements":",@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight]","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `kl984_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.28","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.28","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"December 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.28","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(900, 'PLG_EOSNOTIFY', 'plugin', 'eosnotify', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"PLG_EOSNOTIFY","type":"plugin","creationDate":"October 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"End of Support Notifier","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Widgetkit', 'module', 'mod_widgetkit', '', 0, 1, 0, 0, '{"legacy":true,"name":"Widgetkit","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Widgetkit module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"widget_id":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Widgetkit Twitter', 'module', 'mod_widgetkit_twitter', '', 0, 1, 0, 0, '{"legacy":true,"name":"Widgetkit Twitter","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Twitter module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"style":"list","from_user":"","to_user":"","ref_user":"","hashtag":"","word":"","nots":"","limit":"5","image_size":"48","show_image":"1","show_author":"1","show_date":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'System - Widgetkit', 'plugin', 'widgetkit_system', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Content - Widgetkit', 'plugin', 'widgetkit_content', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'widgetkit', 'component', 'com_widgetkit', '', 1, 1, 0, 0, '{"legacy":false,"name":"Widgetkit","type":"component","creationDate":"February 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.1","description":"Widgetkit - A widget toolkit by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'System - Widgetkit ZOO', 'plugin', 'widgetkit_zoo', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Widgetkit ZOO","type":"plugin","creationDate":"June 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"ZOO plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'yoo_revista', 'template', 'yoo_revista', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_revista","type":"template","creationDate":"February 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Revista is the February 2012 theme of the YOOtheme club. It is based on YOOtheme''s Warp theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"config":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'System - Widgetkit Joomla', 'plugin', 'widgetkit_joomla', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Widgetkit Joomla","type":"plugin","creationDate":"December 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Joomla Content plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Social GK5', 'module', 'mod_social_gk5', '', 0, 1, 0, 0, '{"legacy":false,"name":"Social GK5","type":"module","creationDate":"08\\/03\\/2015","author":"GavickPro","copyright":"Copyright (C) 2011-2015 GavickPro. All rights reserved.","authorEmail":"info@gavick.com","authorUrl":"www.gavickpro.com","version":"1.2.5","description":"\\n\\t\\t<style type=\\"text\\/css\\">\\n\\t\\t\\tspan.readonly { padding: 10px; font-family: Arial; font-size:13px !important; font-weight: normal !important; text-align: justify; color: #4d4d4d; line-height: 24px; }\\n\\t\\t\\tspan.readonly h1 { clear:both; font-family: Georgia, sans-serif; font-size:38px; margin:30px 20px 23px; padding:0px 0px 24px 10px; color:#333; border-bottom: 1px solid #eee; font-weight: normal; }\\n\\t\\t\\tspan.readonly p { margin: 0 26px 10px }\\n\\t\\t\\tspan.readonly p a { color: #2F4C6D }\\n\\t\\t\\tspan.readonly p.homepage { margin-top: 30px }\\n\\t\\t\\tspan.readonly p.license { border-top: 1px solid #eee; font-size: 11px; margin: 30px 26px 0; padding: 6px 0; }\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t\\t<span class=\\"readonly\\"><h1>Social GK5<small>ver. 1.2.5<\\/small><\\/h1><p>GK5 is one product of the next generation of GavickPro extensions designed exclusively for Joomla 2.5+.<\\/p><p>Social GK5 combines functionalities from FB GK4, Gplus GK4 and completely new support for data source from a Twitter portal. Social GK5 supports the most popular services like: Facebook, Google+ and Twitter. This module allows visitors to connect directly and to promote your brand on the most popular social portals.<\\/p> <p class=\\"homepage\\"><a target=\\"_blank\\" href=\\"https:\\/\\/www.gavick.com\\/social-gk5.html\\">Learn more at the Social GK5 project website.<\\/a><\\/p><p class=\\"license\\">Social GK5 is released under the <a href=\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\" target=\\"_blank\\">GNU\\/GPL v2 license.<\\/a><\\/p><\\/span><\\/span>\\n\\t","group":""}', '{"automatic_module_id":"1","module_id":"gk-social-1","moduleclass_sfx":"","cookie_conset":"0","module_data_source":"fb","twitter_consumer_key":"Please visit twitter.com to generate keys","twitter_consumer_secret":"Please visit twitter.com to generate keys","twitter_user_token":"Please visit twitter.com to generate keys","twitter_user_secret":"Please visit twitter.com to generate keys","twitter_search_query":"gavickpro","twitter_tweet_amount":"10","twitter_tweet_style":"search","twitter_rows":"5","twitter_columns":"1","twitter_use_css":"1","twitter_show_uname":"1","twitter_show_fname":"1","twitter_show_actions":"1","twitter_show_avatar":"1","twitter_time_mode":"cdate","twitter_cache":"1","twitter_cache_time":"10","gplus_user":"https:\\/\\/plus.google.com\\/+gavickpro","gplus_badge_style":"standard_badge","gplus_badge_layout":"portrait","gplus_cover_photo":"true","gplus_tagline":"true","gplus_badge_width":"300","gplus_badge_color":"light","gplus_lang_code":"en","gplus_custom_name":"","gplus_icon_size":"before","fb_auto_url":"false","fb_site":"www.yourdomain.com","fb_data_source":"activity_feed","fb_code_type":"HTML5","fb_language":"en_US","fb_width":"300","fb_height":"300","fb_header":"true","fb_colorscheme":"light","fb_recommendations":"false","fb_link_target":"_blank","fb_max_age":"0","fb_number_comments":"10","fb_width_comments":"500","fb_only_number":"false","fb_comments_colorscheme":"light","fb_only_number_add":"awesome comments","fb_only_number_url":"false","fb_facepile_width":"200","fb_facepile_num_rows":"2","fb_facepile_colorscheme":"light","fb_facepile_size":"medium","fb_likebox_width":"300","fb_likebox_height":"600","fb_likebox_colorscheme":"light","fb_likebox_header":"true","fb_likebox_show_border":"true","fb_likebox_faces":"true","fb_likebox_stream":"true","fb_rec_width":"300","fb_rec_height":"500","fb_rec_header":"true","fb_rec_colorscheme":"light","fb_rec_max_age":"0","fb_rec_link_target":"_blank"}', '', '{"compatibility":{"installed":{"value":["2.5"],"version":"1.2.5"},"available":{"value":["2.5"],"version":"1.2.5"}}}', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'News Show SP2', 'module', 'mod_news_show_sp2', '', 0, 1, 0, 0, '{"legacy":false,"name":"News Show SP2","type":"module","creationDate":"Feb 2012","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2014 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"2.6","description":"JoomShaper News Display\\/Slider Module for 2.5 and 3.2","group":""}', '{"uniqid":"","content_source":"joomla","catids":"","k2catids":"all","vmcat":"all","vmordering":"latest","ordering":"a.created","ordering_direction":"ASC","user_id":"0","show_featured":"","article_column":"1","article_row":"1","article_col_padding":"3px 3px 3px 3px","article_showtitle":"1","article_linkedtitle":"1","article_title_text_limit":"1","article_count_title_text":"0","article_introtext":"1","article_intro_text_limit":"0","article_count_intro_text":"30","article_date_format":"DATE_FORMAT_LC3","article_show_author":"0","article_show_category":"0","article_linked_category":"1","article_show_ratings":"0","article_show_image":"1","article_linked_image":"1","article_image_pos":"bottom","article_image_float":"float:left","article_image_margin":"0 0 0 0","article_thumb_width":"50","article_thumb_height":"50","article_thumb_ratio":"0","article_extra_fields":"0","article_show_more":"1","article_more_text":"Read More...","article_comments":"1","article_hits":"1","btn_like":"0","btn_twitter":"0","btn_gplus":"0","art_show_price":"0","art_show_cart_button":"0","article_animation":"cover-horizontal-push","article_slide_count":"2","article_controllers_style":"nssp2-default","article_pagination":"1","article_arrows":"0","article_autoplay":"1","article_play_button":"0","article_activator":"click","article_animation_speed":"300","article_animation_interval":"5000","article_animation_transition":"linear","links_block":"0","links_count":"3","links_col_padding":"3px 3px 3px 3px","links_position":"bottom","links_more":"1","links_more_text":"MORE","links_title_text_limit":"1","links_title_count":"0","links_show_intro":"0","links_intro_text_limit":"0","links_intro_count":"20","links_show_image":"0","links_linked_image":"1","links_image_pos":"bottom","links_image_float":"float:left","links_image_margin":"0 0 0 0","links_thumb_width":"50","links_thumb_height":"50","links_thumb_ratio":"0","links_show_price":"0","links_show_cart_button":"0","links_animation":"cover-horizontal-push","links_slide_count":"2","links_controllers_style":"nssp2-default","links_pagination":"1","links_arrows":"0","links_autoplay":"1","links_play_button":"0","links_activator":"click","links_animation_speed":"300","links_animation_interval":"5000","links_animation_transition":"linear","custom_js":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Unite Horizontal Carousel', 'module', 'mod_unite_hcarousel', '', 0, 1, 0, 0, '{"legacy":false,"name":"Unite Horizontal Carousel","type":"module","creationDate":"May 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"1.4","description":"\\n\\t\\t\\t<div style=\\"font-weight:normal;\\">\\n\\t\\t\\t<p><strong>Unite Horizontal Carousel<\\/strong> module. Put the carousel on any page. All the carousel configuration located in Component.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tFor support please turn to <a href=\\"http:\\/\\/unitecms.net\\/free-joomla-extensions\\/unite-horizontal-carousel\\/unite-horizontal-carousel-support\\" target=\\"_blank\\">Unite Horizontal Carousel Support Page<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<small style=\\"float:right\\">ver. 1.4<\\/small>\\n\\t\\t\\t<\\/div>\\n     \\n\\t ","group":""}', '{"include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'com_unitehcarousel', 'component', 'com_unitehcarousel', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_unitehcarousel","type":"component","creationDate":"August 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"1.5","description":"\\n\\t\\tUnite Horizontal Carousel extension and module installation success!\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Creative Image Slider', 'module', 'mod_creativeimageslider', '', 0, 1, 0, 0, '{"legacy":false,"name":"Creative Image Slider","type":"module","creationDate":"Februrary 2014","author":"Creative Solutions Company","copyright":"Copyright (\\u00a9) 2008-2014 Creative Solutions company. All rights reserved.","authorEmail":"info@creative-solutions.net","authorUrl":"http:\\/\\/creative-solutions.net","version":"2.0.0","description":"MOD_CREATIVEIMAGESLIDER_DESCRIPTION","group":""}', '{"slider_id":"","class_suffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'Creative Image Slider', 'plugin', 'creativeimageslider', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"Creative Image Slider","type":"plugin","creationDate":"Februrary 2014","author":"Creative Solutions Company","copyright":"Copyright (\\u00a9) 2008-2014 Creative Solutions company. All rights reserved.","authorEmail":"info@creative-solutions.net","authorUrl":"http:\\/\\/creative-solutions.net","version":"2.0.0","description":"PLG_CREATIVEIMAGESLIDER_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'com_creativeimageslider', 'component', 'com_creativeimageslider', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_CREATIVEIMAGESLIDER","type":"component","creationDate":"Februrary 2014","author":"Creative Solutions Company","copyright":"Copyright (\\u00a9) 2008-2014 Creative Solutions company. All rights reserved.","authorEmail":"info@creative-solutions.net","authorUrl":"http:\\/\\/creative-solutions.net","version":"2.0.0","description":"COM_CREATIVEIMAGESLIDER_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Images Crawler', 'module', 'mod_imgscrawler', '', 0, 1, 0, 0, '{"legacy":false,"name":"Images Crawler","type":"module","creationDate":"Jun 2009","author":"Jesus Vargas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"http:\\/\\/joomlahill.com","authorUrl":"chuzky@gmail.com","version":"2.2","description":"This module scrolls horizontaly one or more images. Optional links and captions have to separated by new lines","group":""}', '{"folder":"images","substoo":"0","limit":"","random":"0","direction":"left","links":"","repeat":"0","target":"0","caps":"","width":"100%","height":"100px","bgcolor":"","speed":"1","valign":"top","iwidth":"","iheight":"","margin":"3","mouse":"pause","@spacer":"OnMouseOver Cursor Driven Options","moveatleast":"1","neutral":"50","savedirection":"1","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'Facebook FanBox', 'module', 'mod_fbfanbox', '', 0, 1, 0, 0, '{"legacy":false,"name":"Facebook FanBox","type":"module","creationDate":"July 2009","author":"Khawaib Ahmed","copyright":"Copyright (C) 2009 - Present. www.Khawaib.co.uk. All rights reserved.","authorEmail":"khawaib@khawaib.co.uk","authorUrl":"www.khawaib.co.uk","version":"2.0","description":"FANBOX_INSTALLED_SUCCESSFULLY","group":""}', '{"page_url":"","boxwidth":"250","boxheight":"550","show_faces":"1","show_stream":"1","show_header":"1","force_wall":"1","@spacer":"","connect_script_call":"1","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_filters`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kl984_finder_taxonomy`
--

INSERT INTO `kl984_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_terms`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kl984_finder_terms_common`
--

INSERT INTO `kl984_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_finder_types`
--

CREATE TABLE IF NOT EXISTS `kl984_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_languages`
--

CREATE TABLE IF NOT EXISTS `kl984_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kl984_languages`
--

INSERT INTO `kl984_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_menu`
--

CREATE TABLE IF NOT EXISTS `kl984_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=171 ;

--
-- Dumping data for table `kl984_menu`
--

INSERT INTO `kl984_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 163, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 57, 62, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 58, 59, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 60, 61, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 63, 68, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 64, 65, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 66, 67, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 69, 74, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 70, 71, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 72, 73, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 83, 84, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 75, 76, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 77, 82, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 78, 79, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 80, 81, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 47, 48, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Sri Lanka Broadcasting Corporation","show_page_heading":0,"page_heading":"","pageclass_sfx":"home columns-2 columnwidth-200","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 28, 1, '*', 0),
(102, 'mainmenu', 'About SLBC', 'features', '', 'features', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 34, 0, '*', 0),
(103, 'mainmenu', 'Module Variations', 'module-variations', '', 'features/module-variations', 'index.php?option=com_content&view=article&id=1', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 30, 31, 0, '*', 0),
(104, 'mainmenu', 'Typography', 'typography', '', 'features/typography', 'index.php?option=com_content&view=article&id=4', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 32, 33, 0, '*', 0),
(105, 'mainmenu', 'Services', 'icons', '', 'icons', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(106, 'mainmenu', 'Training & Workshops', 'zoo', '', 'zoo', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(107, 'mainmenu', 'Stations', 'joomla', '', 'joomla', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_joomla.png","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 114, 0, '*', 0),
(108, 'topmenu', 'News Hub', '2011-05-02-12-32-40', '', '2011-05-02-12-32-40', 'index.php?option=com_content&view=article&id=6&Itemid=102', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 115, 116, 0, '*', 0),
(109, 'topmenu', 'Gallery ', '2011-05-02-12-33-12', '', '2011-05-02-12-33-12', 'index.php?option=com_content&view=article&id=4&Itemid=104', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 117, 118, 0, '*', 0),
(110, 'topmenu', 'Programes', '2011-05-02-12-33-35', '', '2011-05-02-12-33-35', 'index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 119, 120, 0, '*', 0),
(111, 'sidebarmenu', 'Sample Levels', 'sample-levels', '', 'sample-levels', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 121, 132, 0, '*', 0),
(112, 'sidebarmenu', 'Level 2', 'level-2', '', 'sample-levels/level-2', 'index.php?option=com_content&view=article&id=5', 'component', 1, 111, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 122, 123, 0, '*', 0),
(113, 'sidebarmenu', 'Level 2', 'level-21', '', 'sample-levels/level-21', 'index.php?option=com_content&view=article&id=5', 'component', 1, 111, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 124, 129, 0, '*', 0),
(114, 'sidebarmenu', 'Level 3', 'level-3', '', 'sample-levels/level-21/level-3', 'index.php?option=com_content&view=article&id=5', 'component', 1, 113, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 125, 128, 0, '*', 0),
(115, 'sidebarmenu', 'Level 4', 'level-4', '', 'sample-levels/level-21/level-3/level-4', 'index.php?option=com_content&view=article&id=5', 'component', 1, 114, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 126, 127, 0, '*', 0),
(116, 'sidebarmenu', 'Level 2', 'level-22', '', 'sample-levels/level-22', 'index.php?option=com_content&view=article&id=5', 'component', 1, 111, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 130, 131, 0, '*', 0),
(117, 'sidebarmenu', 'Accordion A', 'accordion-a', '', 'accordion-a', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 133, 140, 0, '*', 0),
(118, 'sidebarmenu', 'Level 2', 'level-2', '', 'accordion-a/level-2', 'index.php?option=com_content&view=article&id=5', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 134, 135, 0, '*', 0),
(119, 'sidebarmenu', 'Level 2', 'level-21', '', 'accordion-a/level-21', 'index.php?option=com_content&view=article&id=5', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 136, 137, 0, '*', 0),
(120, 'sidebarmenu', 'Level 2', 'level-22', '', 'accordion-a/level-22', 'index.php?option=com_content&view=article&id=5', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 138, 139, 0, '*', 0),
(121, 'sidebarmenu', 'Accordion B', 'accordion-b', '', 'accordion-b', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 141, 146, 0, '*', 0),
(122, 'sidebarmenu', 'Level 2', 'level-2', '', 'accordion-b/level-2', 'index.php?option=com_content&view=article&id=5', 'component', 1, 121, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 142, 143, 0, '*', 0),
(123, 'sidebarmenu', 'Level 2', 'level-21', '', 'accordion-b/level-21', 'index.php?option=com_content&view=article&id=5', 'component', 1, 121, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 144, 145, 0, '*', 0),
(124, 'mainmenu', 'Content||All com_content views', 'contentall-comcontent-views', '', 'joomla/contentall-comcontent-views', '', 'separator', 1, 107, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 88, 95, 0, '*', 0),
(125, 'mainmenu', 'Other Components||Remaining component views', 'loginall-comuser-views', '', 'joomla/loginall-comuser-views', '', 'separator', 1, 107, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 102, 113, 0, '*', 0),
(126, 'mainmenu', 'Category List', 'category-list', '', 'joomla/contentall-comcontent-views/category-list', 'index.php?option=com_content&view=category&id=7', 'component', 1, 124, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Blog","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(127, 'mainmenu', 'List All Categories', 'list-all-categories', '', 'joomla/contentall-comcontent-views/list-all-categories', 'index.php?option=com_content&view=categories&id=0', 'component', 1, 124, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Blog","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(128, 'mainmenu', 'Featured Articles', 'featured-articles', '', 'joomla/contentall-comcontent-views/featured-articles', 'index.php?option=com_content&view=featured', 'component', 1, 124, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(129, 'mainmenu', 'Login', 'login', '', 'joomla/loginall-comuser-views/login', 'index.php?option=com_users&view=login', 'component', 1, 125, 3, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Login","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 105, 106, 0, '*', 0),
(130, 'mainmenu', 'Registration', 'registration', '', 'joomla/loginall-comuser-views/registration', 'index.php?option=com_users&view=registration', 'component', 1, 125, 3, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Registration","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 107, 108, 0, '*', 0),
(131, 'mainmenu', 'Blue', '2011-05-06-15-22-51', '', 'home/2011-05-06-15-22-51', '?profile=blue', 'url', 1, 101, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_profile_blue.png","menu_text":1}', 12, 13, 0, '*', 0),
(132, 'mainmenu', 'Red', '2011-05-06-15-24-05', '', 'home/2011-05-06-15-24-05', '?profile=red', 'url', 1, 101, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_profile_red.png","menu_text":1}', 14, 15, 0, '*', 0),
(133, 'mainmenu', 'Rose', '2011-05-06-15-24-54', '', 'home/2011-05-06-15-24-54', '?profile=rose', 'url', 1, 101, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_profile_rose.png","menu_text":1}', 16, 17, 0, '*', 0),
(134, 'mainmenu', 'Olive', '2011-05-06-15-25-15', '', 'home/2011-05-06-15-25-15', '?profile=olive', 'url', 1, 101, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_profile_olive.png","menu_text":1}', 18, 19, 0, '*', 0),
(135, 'mainmenu', 'Dove', '2011-05-06-15-25-45', '', 'home/2011-05-06-15-25-45', '?profile=dove', 'url', 1, 101, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_profile_dove.png","menu_text":1}', 20, 21, 0, '*', 0),
(137, 'mainmenu', 'CD’s & Cassettes', 'widgetkit', '', 'widgetkit', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 54, 0, '*', 0),
(138, 'mainmenu', 'Slideshow', 'slideshow', '', 'widgetkit/slideshow', 'index.php?option=com_content&view=article&id=14', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 36, 37, 0, '*', 0),
(139, 'mainmenu', 'Lightbox', 'lightbox', '', 'widgetkit/lightbox', 'index.php?option=com_content&view=article&id=15', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
(140, 'mainmenu', 'Spotlight', 'spotlight', '', 'widgetkit/spotlight', 'index.php?option=com_content&view=article&id=16', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 48, 49, 0, '*', 0),
(141, 'mainmenu', 'Twitter', 'twitter', '', 'widgetkit/twitter', 'index.php?option=com_content&view=article&id=17', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(145, 'mainmenu', 'Media Player', 'media-player', '', 'widgetkit/media-player', 'index.php?option=com_content&view=article&id=18', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 52, 53, 0, '*', 0),
(146, 'mainmenu', 'Map', 'map', '', 'widgetkit/map', 'index.php?option=com_content&view=article&id=20', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 42, 43, 0, '*', 0),
(147, 'mainmenu', 'Slideset', 'slideset', '', 'widgetkit/slideset', 'index.php?option=com_content&view=article&id=22', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 38, 39, 0, '*', 0),
(148, 'mainmenu', 'Accordion', 'accordion', '', 'widgetkit/accordion', 'index.php?option=com_content&view=article&id=21', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0),
(149, 'mainmenu', 'Gallery', 'gallery', '', 'widgetkit/gallery', 'index.php?option=com_content&view=article&id=19', 'component', 1, 137, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 40, 41, 0, '*', 0),
(155, 'mainmenu', 'Contact || All com_contact views', 'contact--all-comcontact-views', '', 'joomla/contact--all-comcontact-views', '', 'separator', 1, 107, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 96, 101, 0, '*', 0),
(156, 'mainmenu', 'Contact Category', 'contact-category', '', 'joomla/contact--all-comcontact-views/contact-category', 'index.php?option=com_contact&view=category&id=8', 'component', 1, 155, 3, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_items":"","show_pagination_limit":"","show_headings":"","show_position_headings":"","show_email_headings":"","show_telephone_headings":"","show_mobile_headings":"","show_fax_headings":"","show_suburb_headings":"","show_state_headings":"","show_country_headings":"","show_pagination":"","show_pagination_results":"","initial_sort":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(157, 'mainmenu', 'Contact Item', 'contact-item', '', 'joomla/contact--all-comcontact-views/contact-item', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 155, 3, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0),
(158, 'mainmenu', 'Web Links', 'web-links', '', 'joomla/loginall-comuser-views/web-links', 'index.php?option=com_weblinks&view=categories&id=0', 'component', 1, 125, 3, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"We are regularly out on the Web. When we find a great site we list it.","maxLevelcat":"-1","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_links_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Web Links","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 103, 104, 0, '*', 0),
(159, 'mainmenu', 'Remind', 'remind', '', 'joomla/loginall-comuser-views/remind', 'index.php?option=com_users&view=remind', 'component', 1, 125, 3, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Forgot your Username?","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
(160, 'mainmenu', 'Reset', 'reset', '', 'joomla/loginall-comuser-views/reset', 'index.php?option=com_users&view=reset', 'component', 1, 125, 3, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Forgot your Password?","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
(161, 'mainmenu', 'Turquoise', '2012-01-30-17-51-18', '', 'home/2012-01-30-17-51-18', '?profile=turquoise', 'url', 1, 101, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_profile_turquoise.png","menu_text":1}', 22, 23, 0, '*', 0),
(162, 'mainmenu', 'Green', '2012-01-30-17-52-31', '', 'home/2012-01-30-17-52-31', '?profile=green', 'url', 1, 101, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_profile_green.png","menu_text":1}', 24, 25, 0, '*', 0),
(163, 'mainmenu', 'Yellow', '2012-01-30-17-53-26', '', 'home/2012-01-30-17-53-26', '?profile=yellow', 'url', 1, 101, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menu\\/icon_profile_yellow.png","menu_text":1}', 26, 27, 0, '*', 0),
(164, 'main', 'COM_WIDGETKIT', 'com-widgetkit', '', 'com-widgetkit', 'index.php?option=com_widgetkit', 'component', 0, 1, 1, 10005, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_widgetkit/images/widgetkit_16.png', 0, '', 149, 150, 0, '', 1),
(165, 'mainmenu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_content&view=article&id=17', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 151, 152, 0, '*', 0),
(166, 'topmenu', 'Events', 'events', '', 'events', 'index.php?option=com_content&view=article&id=19', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 153, 154, 0, '*', 0),
(167, 'main', 'COM_UNITEHCAROUSEL', 'com-unitehcarousel', '', 'com-unitehcarousel', 'index.php?option=com_unitehcarousel', 'component', 0, 1, 1, 10013, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_unitehcarousel/assets/images/icon-16-star.png', 0, '', 155, 156, 0, '', 1),
(168, 'main', 'COM_CREATIVEIMAGESLIDER_MENU', 'com-creativeimageslider-menu', '', 'com-creativeimageslider-menu', 'index.php?option=com_creativeimageslider', 'component', 0, 1, 1, 10016, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_creativeimageslider/assets/images/project_16.png', 0, '', 157, 162, 0, '', 1),
(169, 'main', 'COM_CREATIVEIMAGESLIDER_SUBMENU_SLIDERS', 'com-creativeimageslider-submenu-sliders', '', 'com-creativeimageslider-menu/com-creativeimageslider-submenu-sliders', 'index.php?option=com_creativeimageslider&view=creativesliders', 'component', 0, 168, 2, 10016, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_creativeimageslider/assets/images/poll_16.png', 0, '', 158, 159, 0, '', 1),
(170, 'main', 'COM_CREATIVEIMAGESLIDER_SUBMENU_IMAGES', 'com-creativeimageslider-submenu-images', '', 'com-creativeimageslider-menu/com-creativeimageslider-submenu-images', 'index.php?option=com_creativeimageslider&view=creativeimages', 'component', 0, 168, 2, 10016, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_creativeimageslider/assets/images/answer_16.png', 0, '', 160, 161, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_menu_types`
--

CREATE TABLE IF NOT EXISTS `kl984_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kl984_menu_types`
--

INSERT INTO `kl984_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'topmenu', 'Top Menu', ''),
(3, 'sidebarmenu', 'Sidebar Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_messages`
--

CREATE TABLE IF NOT EXISTS `kl984_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `kl984_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_modules`
--

CREATE TABLE IF NOT EXISTS `kl984_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `kl984_modules`
--

INSERT INTO `kl984_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(6, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(17, 'Breadcrumbs', '', '', 1, 'breadcrumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(19, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>icon-download</code>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-download","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(20, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>icon-twitter</code>', 2, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-twitter","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(21, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>icon-mail</code>', 3, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-mail","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(22, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>icon-bubble</code>', 4, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-bubble","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(23, 'Home Teaser Fast', '', '<img class="align-left" src="images/yootheme/features_icon_lightweight.png" width="42" height="42" />\r\n<div class="bfc-o">\r\n	<h3 class="remove-margin">Fast and lightweight</h3>\r\n	<p class="remove-margin-b">Well designed and coded to provide optimal loading times.</p>\r\n</div>', 5, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(24, 'Home Teaser Mobile', '', '<img class="align-left" src="images/yootheme/features_icon_mobile.png" width="42" height="50" />\r\n<div class="bfc-o">\r\n	<h3 class="remove-margin">Mobile Theme included</h3>\r\n	<p class="remove-margin-b">Dedicated theme for mobile devices with Retina support.</p>\r\n</div>', 6, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(25, 'Home Teaser HTML5', '', '<img class="align-left" src="images/yootheme/features_icon_html5.png" width="42" height="50" />\r\n<div class="bfc-o">\r\n	<h3 class="remove-margin">Latest web techniques</h3>\r\n	<p class="remove-margin-b">Completely built with HTML5, CSS3, PHP 5.2+ and jQuery.</p>\r\n</div>', 7, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(26, 'Home Teaser Demo', '', '<img class="align-left" src="images/yootheme/features_icon_demo_package.png" width="42" height="46" />\r\n<div class="bfc-o">\r\n	<h3 class="remove-margin">Demo Package available</h3>\r\n	<p class="remove-margin-b">Sample data for Joomla and WordPress is available.</p>\r\n</div>', 8, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(27, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>badge-hot</code>', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-hot","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-grey</code> <code>badge-new</code>', 2, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-grey badge-new","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>badge-live</code>', 3, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-live","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-grey</code> <code>badge-top</code>', 4, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-grey badge-top","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(31, 'Footer Menu', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"topmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(32, 'Footer', '', '<p>Software Development Unit - University of Colombo School Of Computing <a href="http://www.yootheme.com" target="_blank">YOOtheme</a></p>', 2, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(33, 'Headerbar', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 'headerbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(34, 'Inner Bottom', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-black</code> <code>icon-login</code>', 1, 'innerbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-login color-black","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(35, 'Inner Bottom', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-black</code> <code>icon-cart</code>', 2, 'innerbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-cart color-black","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(36, 'Inner Top', '', '<p>ashdgas</p>', 1, 'innertop', 42, '2015-12-11 08:35:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-color","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Inner Top', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-color</code>', 2, 'innertop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-color","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(38, 'Logo', '', '<p>                               <img src="images/12380043_822737594588935_506571094_n.jpg" border="0" alt="" width="828" height="143" /></p>', 1, 'logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Login || Module Position', '', '', 2, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 'Search', '', '', 0, 'search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(41, 'Sub Menu', '', '', 9, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"2","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(42, 'Sidebar Menu', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"sidebarmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(43, 'Sidebar A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 2, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 'Sidebar A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 2, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(45, 'List Line', '', '<p>Use the CSS class <code>line</code> to create this list style.</p>\r\n\r\n<ul class="line">\r\n	<li>Item 1</li>\r\n	<li>Item 2</li>\r\n	<li>Item 3</li>\r\n	<li>Item 4</li>\r\n	<li>Item 5</li>\r\n</ul>', 10, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-black","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(46, 'List Zebra', '', '<p>Use the CSS class <code>zebra</code> to create this list style.</p>\r\n\r\n<ul class="zebra">\r\n	<li class="odd">Item 1</li>\r\n	<li>Item 2</li>\r\n	<li class="odd">Item 3</li>\r\n	<li>Item 4</li>\r\n	<li class="odd">Item 5</li>\r\n</ul>', 11, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(47, 'List Check', '', '<p>Use the CSS class <code>check</code> to create this list style.</p>\r\n\r\n<ul class="check">\r\n	<li>Item 1</li>\r\n	<li>Item 2</li>\r\n	<li>Item 3</li>\r\n	<li>Item 4</li>\r\n	<li>Item 5</li>\r\n</ul>', 16, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(48, 'Latest News', '', '', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["7"],"count":"5","show_featured":"","ordering":"p_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"color-color","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(49, 'Login', '', '', 9, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(50, 'Download ZOO', '', '<a class="display-block text-center" href="http://www.yootheme.com/zoo" target="_blank"><img class="size-auto" src="images/yootheme/zoo_icon.png" alt="A flexible and powerful content application builder to manage your content" title="A flexible and powerful content application builder to manage your content" width="140" height="130" /></a>\r\n\r\n<p>A flexible and powerful content application builder to manage your content.</p>\r\n\r\n<p><a class="button-more" href="http://www.yootheme.com/zoo" target="_blank">Download ZOO</a></p>', 10, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"badge-free","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(51, 'App Bundle', '', '<p>The ZOO app bundle contains the following apps:</p>\r\n\r\n<ul class="line">\r\n	<li><a href="index.php?option=com_zoo&amp;view=frontpage&amp;Itemid=9">Blog</a></li>\r\n	<li><a href="index.php?option=com_zoo&amp;view=frontpage&amp;Itemid=10">Product Catalog</a></li>\r\n	<li><a href="index.php?option=com_zoo&amp;view=frontpage&amp;Itemid=11">Download Archive</a></li>\r\n	<li><a href="index.php?option=com_zoo&amp;view=frontpage&amp;Itemid=12">Business Directory</a></li>\r\n	<li><a href="index.php?option=com_zoo&amp;view=frontpage&amp;Itemid=13">Movie Database</a></li>\r\n	<li><a href="index.php?option=com_zoo&amp;view=frontpage&amp;Itemid=14">Cookbook</a></li>\r\n	<li><a href="index.php?option=com_zoo&amp;view=frontpage&amp;Itemid=15">Documentation</a></li>\r\n	<li><a href="index.php?option=com_zoo&amp;view=item&amp;Itemid=16">Pages</a></li>\r\n</ul>', 11, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Icon Freebies', '', '<ul class="line text-center">\r\n	<li>\r\n		<a href="http://www.yootheme.com/icons" target="_blank">\r\n			<figure>\r\n				<img class="size-auto" height="120" width="180" src="images/yootheme/icons_socialbookmarks.png" alt="Social Bookmarks Icons" />\r\n				<figcaption>Social Bookmarks Icons</figcaption>\r\n			</figure>\r\n		</a>\r\n	</li>\r\n	<li>\r\n		<a href="http://www.yootheme.com/icons" target="_blank">\r\n			<figure>\r\n				<img class="size-auto" height="120" width="180" src="images/yootheme/icons_halloween.png" alt="Halloween Icons" />\r\n				<figcaption>Halloween Icons</figcaption>\r\n			</figure>\r\n		</a>\r\n	</li>\r\n	<li>\r\n		<a href="http://www.yootheme.com/icons" target="_blank">\r\n			<figure>\r\n				<img class="size-auto" height="120" width="180" src="images/yootheme/icons_html5geekmatt.png" alt="HTML5 Geek Icon" />\r\n				<figcaption>HTML5 Geek Icon</figcaption>\r\n			</figure>\r\n		</a>\r\n	</li>\r\n</ul>', 12, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"badge-free","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(53, 'Warp Framework', '', '<a class="display-block text-center" href="http://www.yootheme.com/warp" target="_blank"><img class="size-auto" src="images/yootheme/features_warp_icon.png" alt="Warp is a fast and slick theme framework which provides a rich tool set to develop cross-platform themes" title="Warp is a fast and slick theme framework which provides a rich tool set to develop cross-platform themes" width="140" height="130" /></a>\r\n\r\n<p>A fast and slick theme framework built on the latest web techniques like HTML5, CSS3 and PHP 5.2+</p>\r\n\r\n<p><a class="button-more" href="http://www.yootheme.com/warp" target="_blank">Visit Website</a></p>', 13, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(54, 'Warp Features', '', '<p>All Warp features are available in this theme:</p>\r\n\r\n<ul class="check">\r\n	<li>Fast and Lightweight</li>\r\n	<li>Mobile Theme</li>\r\n	<li>Update Notifications</li>\r\n	<li>HTML5 markup</li>\r\n	<li>RTL Support</li>\r\n	<li>CSS Framework</li>\r\n	<li>Nice Admin UI</li>\r\n	<li>File Minification</li>\r\n</ul>', 14, 'sidebar-a', 42, '2015-12-11 08:31:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(55, 'JavaScript Library', '', 'All client side effects use the JavaScript framework <a href="http://www.jquery.com" target="_blank">jQuery</a> which offers most reliable functionality and compact size!', 15, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-color","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(56, 'Warp6 Blog Posts', '', '<ul class="line">\r\n	<li><a href="http://www.yootheme.com/blog/item/root/warp6-engage" target="_blank">Warp6 - Engage</a></li>\r\n	<li><a href="http://www.yootheme.com/blog/item/root/inside-the-warp6-framework" target="_blank">Inside the Framework</a></li>\r\n	<li><a href="http://www.yootheme.com/blog/item/root/warp6-styles" target="_blank">Warp6 Styles</a></li>\r\n	<li><a href="http://www.yootheme.com/blog/item/root/warp6-and-html5" target="_blank">Warp6 and HTML5</a></li>\r\n	<li><a href="http://www.yootheme.com/blog/item/root/warp6-css-framework" target="_blank">Warp6 CSS Framework</a></li>\r\n	<li><a href="http://www.yootheme.com/blog/item/root/warp6-administration" target="_blank">Warp6 Administration</a></li>\r\n	<li><a href="http://www.yootheme.com/blog/item/root/warp6-mobile-theme" target="_blank">Warp6 Mobile Theme</a></li>\r\n</ul>', 16, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(57, 'Sidebar B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 1, 'sidebar-b', 42, '2015-12-11 06:09:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(58, 'Sidebar B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 2, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(59, 'Sidebar B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 3, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(60, 'Joomla & WordPress', '', '<img class="size-auto" width="205" height="90" src="images/yootheme/features_icon_cross_platform.png" />\r\n<p>This theme is available for Joomla and WordPress including the same features on each system.</p>', 4, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(61, 'Top Menu', '', '', 0, 'toolbar-l', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"topmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(62, 'Top A', '', '<p><img src="images/4fb59ee8e-1.jpg" border="0" alt="" /></p>', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 'Top A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 2, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(64, 'Top A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 3, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 'Top A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 4, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(66, 'Icons Shipping', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n	<figure class="remove-margin">\r\n		<img class="size-auto" height="120" width="180" src="images/yootheme/icons_shipping.png" alt="Shipping Icons" />\r\n		<figcaption>Shipping Icons</figcaption>\r\n	</figure>\r\n</a>', 5, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(67, 'Icons E-Commerce', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n	<figure class="remove-margin">\r\n		<img class="size-auto" height="120" width="180" src="images/yootheme/icons_ecommerce.png" alt="E-Commerce Icons" />\r\n		<figcaption>E-Commerce Icons</figcaption>\r\n	</figure>\r\n</a>', 6, 'top-a', 42, '2015-12-11 05:39:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(68, 'Icons Action', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n	<figure class="remove-margin">\r\n		<img class="size-auto" height="120" width="180" src="images/yootheme/icons_actions.png" alt="Action Icons" />\r\n		<figcaption>Action Icons</figcaption>\r\n	</figure>\r\n</a>', 7, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 'Icons Box', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n	<figure class="remove-margin">\r\n		<img class="size-auto" height="120" width="180" src="images/yootheme/icons_box.png" alt="Box Icons" />\r\n		<figcaption>Box Icons</figcaption>\r\n	</figure>\r\n</a>', 8, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(70, 'Warp Teaser', '', '<div class="text-center"><img class="size-auto" src="images/yootheme/home_warp_teaser.jpg" border="0" width="915" height="300" />\r\n<h1 style="margin: 15px 0 10px 0; letter-spacing: 2px;">Introducing Warp6</h1>\r\n<p style="margin: 0; font-size: 26px; color: #999999;">The fast and slick theme framework</p>\r\n</div>', 9, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(71, 'Top B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-grey</code>', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-grey","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(72, 'Top B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-grey</code>', 2, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-grey","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 'Top B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-grey</code>', 3, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-grey","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 'Top B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>color-grey</code>', 4, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-grey","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 'Widgetkit', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit', 1, 1, '', 0, '*'),
(76, 'Twitter List', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit_twitter', 1, 0, '{"style":"list","from_user":"yootheme","to_user":"","ref_user":"","hashtag":"","word":"","nots":"","limit":"4","image_size":"48","show_image":"1","show_author":"1","show_date":"1","moduleclass_sfx":""}', 0, '*'),
(77, 'Get Widgetkit', '', '<a class="display-block text-center" href="http://www.yootheme.com/blog/item/root/introducing-widgetkit" target="_blank"><img class="size-auto" src="images/yootheme/widgetkit_icon.png" alt="The next generation tool set for Joomla and WordPress" title="The next generation tool set for Joomla and WordPress" width="140" height="130" /></a>\r\n\r\n<p>The next generation tool set for Joomla and WordPress</p>\r\n\r\n<p><a class="button-more" href="http://www.yootheme.com/blog/item/root/introducing-widgetkit" target="_blank">Visit Website</a></p>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-color badge-new","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(78, 'Twitter Bubbles', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit_twitter', 1, 0, '{"style":"bubbles","from_user":"yootheme","to_user":"","ref_user":"","hashtag":"","word":"","nots":"","limit":"4","image_size":"48","show_image":"1","show_author":"1","show_date":"1","moduleclass_sfx":""}', 0, '*'),
(79, 'Twitter Single', '', '', 1, 'innerbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit_twitter', 1, 0, '{"style":"single","from_user":"yootheme","to_user":"","ref_user":"","hashtag":"","word":"","nots":"","limit":"4","image_size":"48","show_image":"1","show_author":"1","show_date":"1","moduleclass_sfx":""}', 0, '*'),
(80, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(81, 'Frontpage Gallery Slideshow', '', '', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit', 1, 0, '{"widget_id":"48","moduleclass_sfx":""}', 0, '*'),
(82, 'News Ticker', '', '', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit', 1, 1, '{"widget_id":"49","moduleclass_sfx":""}', 0, '*'),
(83, 'Frontpage Demo Tabs', '', '', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit', 1, 0, '{"widget_id":"47","moduleclass_sfx":"style-blank"}', 0, '*'),
(84, 'Frontpage Slideset Demo', '', '', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit', 1, 0, '{"widget_id":"46","moduleclass_sfx":""}', 0, '*'),
(85, 'Twitter Frontpage', '', '', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit_twitter', 1, 0, '{"style":"bubbles","from_user":"","to_user":"","ref_user":"","hashtag":"","word":"joomla","nots":"","limit":"4","image_size":"32","show_image":"1","show_author":"1","show_date":"1","moduleclass_sfx":"style-blank"}', 0, '*'),
(86, 'Hot News', '', '<p><img src="images/NIE_WEB_Minister.jpg" border="0" alt="" width="110" height="116" /> The education ministry is going to introduce new vouchers for school children ..sunken ship.</p>\r\n<p><a class="button-more" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102">read more</a></p>', 1, 'innertop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"images\\/985579237.jpg","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(87, 'World News', '', '<p><img src="images/BN-CB317_obarut_E_20140324105800.jpg" border="0" alt="" width="121" height="95" /> Several people are wounded as protesters attack security forces. The Police stated the situation is under control.</p>\r\n<p><a class="button-more" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102">read more</a></p>', 1, 'innertop', 42, '2015-12-11 04:26:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, 'Video Stream', '', '<p><iframe src="https://www.youtube.com/embed/GkuZXw28BlQ" frameborder="0" width="180" height="150"></iframe></p>\r\n<p><a class="system-pagebreak" href="https://www.youtube.com/watch?v=GkuZXw28BlQ">watch More &gt;&gt;&gt;</a></p>', 3, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-live","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'Menu Sidebar', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"sidebarmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(90, 'Social Icons Special', '', '<div class="frontpage-social"><img src="images/download 8.jpg" border="0" alt="" width="161" height="61" /></div>', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-color","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Popular Articles', '', '<ul>\r\n<li><span style="text-indent: -0.25in; font-size: 10pt; line-height: 107%; font-family: Symbol;"><span style="font-stretch: normal; font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';"> </span></span><span style="text-indent: -0.25in; font-size: 10pt; line-height: 107%; font-family: ''Calibri Light'', sans-serif;"><strong><span style="color: #333333; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><a href="http://www.slbc.lk/index.php/en/tamil-news-update/2725-president-promises-to-build-a-society-devoid-of-bribery,-corruption-or-fraud.html" target="_parent" title=" President promises to build a society devoid of bribery, corruption or fraud.">President promises to build a society devoid of bribery</a> </span></strong></span></li>\r\n<li><span style="text-indent: -0.25in; font-size: 10pt; line-height: 107%; font-family: Symbol;"><span style="font-stretch: normal; font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';"> </span></span><span style="text-indent: -0.25in; font-size: 10pt; line-height: 107%; font-family: ''Calibri Light'', sans-serif;"><strong><span style="color: #333333; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><a href="http://www.slbc.lk/index.php/en/tamil-news-update/2723-a-total-of-83-sri-lankan-women-who-were-stranded-in-kuwait-have-returned-to-sri-lanka.html" target="_parent" title=" A total of 83 Sri Lankan women who were stranded in Kuwait have returned to Sri Lanka.">A total of 83 Sri Lankan women who were stranded in Kuwait</a> </span></strong></span></li>\r\n<li><span style="text-indent: -0.25in; font-size: 10pt; line-height: 107%; font-family: ''Calibri Light'', sans-serif;"><strong><span style="color: #333333; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><a href="http://www.slbc.lk/index.php/en/tamil-news-update/2722-an-international-financial-centre-will-be-set-up-in-colombo.html" target="_parent" title=" An international financial centre will be set up in Colombo">An international financial centre will be set up in Colombo</a> </span></strong></span></li>\r\n</ul>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(92, 'Holiday Bunglow', '', '<p><img src="images/banner.jpg" border="0" alt="" width="165" height="109" /> <span style="font-family: open_sanslight; font-size: 14px; line-height: 20px;">The Sri Lanka Bradcasting Corporation holiday bungalows are situated at Ambewela </span><a class="button-more" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102">read more</a></p>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(93, 'Recorded Programmes ', '', '<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><a href="##########"><img src="images/download 12.jpg" border="0" alt="" width="178" height="82" /></a></p>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(94, 'Revista #258', '', '<p>\r\n	<strong>Cover story of this issue:</strong>\r\n	We focus on the global finacial crisis and the power of rating agencies. And we will have a look at the latest 3D TV technologies.\r\n</p>\r\n\r\n<div class="frontpage-newspaper">\r\n	<img src="images/yootheme/home_newspaper.png" alt="Demo" width="94" height="74" />\r\n	<div>\r\n		<h4>Revista #258</h4>\r\n		February 2012<br />\r\n		<a href="#">now available</a>\r\n	</div>\r\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-new","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(95, 'Services', '', '<ul class="blank">\r\n<li><a href="#">Headlines</a></li>\r\n<li><a href="#">RSS Feed</a></li>\r\n<li><a href="#">Newsletter</a></li>\r\n<li><a href="#">Mobile View</a></li>\r\n</ul>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(96, 'Video', '', '<ul class="blank">\r\n<li><a href="#">Video Archive</a></li>\r\n<li><a href="#">Live Stream</a></li>\r\n<li><a href="#">Tv Guide</a></li>\r\n<li><a href="#">Podcasts</a></li>\r\n</ul>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(97, 'Media', '', '<ul class="blank">\r\n<li><a href="#">Media Library</a></li>\r\n<li><a href="#">iOS App</a></li>\r\n<li><a href="#">Android App</a></li>\r\n<li><a href="#">Print Version</a></li>\r\n</ul>', 1, 'bottom-c', 42, '2015-12-11 06:07:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(98, 'Magazine', '', '<ul class="blank">\r\n<li><a href="#">Revista Nueva</a></li>\r\n<li><a href="#">Revista Classic</a></li>\r\n<li><a href="#">Revista History</a></li>\r\n<li><a href="#">Revista Science</a></li>\r\n</ul>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 'Network', '', '<ul class="blank">\r\n<li><a href="#">Subscription</a></li>\r\n<li><a href="#">Online Shop</a></li>\r\n<li><a href="#">Blog</a></li>\r\n<li><a href="#">Partners</a></li>\r\n</ul>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 'Support', '', '<ul class="blank">\r\n<li><a href="#">Contact</a></li>\r\n<li><a href="#">F.A.Q.</a></li>\r\n<li><a href="#">Privacy</a></li>\r\n<li><a href="#">Disclaimer</a></li>\r\n</ul>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 'Bottom C', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-plain</code>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(102, 'Bottom C', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-plain</code>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 'Balance Theme', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-plain</code>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, 'Bottom C', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-plain</code>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(105, 'Bottom C', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-plain</code>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"style-plain","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, 'List Line Icon', '', '<p>Use the CSS class <code>line line-icon</code> to create this list style.</p>\r\n\r\n<ul class="line line-icon">\r\n	<li>Item 1</li>\r\n	<li>Item 2</li>\r\n	<li>Item 3</li>\r\n	<li>Item 4</li>\r\n	<li>Item 5</li>\r\n</ul>', 10, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"color-color","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 'Login Frontpage', '', '', 1, 'headerbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(108, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');
INSERT INTO `kl984_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(109, 'connect the world', '', '<p><img src="images/32669666.gif" border="0" alt="" width="35" height="35" /> <span style="font-size: 12.16px; line-height: 1.3em;"><img src="images/12361424_822696771259684_733222217_n.gif" border="0" alt="" width="213" height="45" /><img src="images/32669666.gif" border="0" alt="" width="35" height="35" style="font-size: 12.16px; line-height: 15.808px;" /><span style="font-size: 12.16px; line-height: 1.3em;">     </span></span></p>\r\n<p><span style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #1f4e79; mso-themecolor: accent1; mso-themeshade: 128; mso-style-textfill-fill-color: #1F4E79; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=50000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Radio Srilanka</span></strong><strong><span style="font-size: 14pt; line-height: 107%; font-family: Forte;">                     </span></strong><strong> <a href="http://220.247.227.51/live"><img src="images/listen_live_button.gif" border="0" alt="" width="58" height="19" /></a></strong></span></p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #2e75b6; mso-themecolor: accent1; mso-themeshade: 191; mso-style-textfill-fill-color: #2E75B6; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=75000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Sinhala National Service</span></strong><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #c00000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">    </span></strong><strong><span style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;">  </span><a href="http://220.247.227.1/live"><img src="images/listen_live_button.gif" border="0" alt="" width="61" height="20" style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;" /></a></strong></p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #1f4e79; mso-themecolor: accent1; mso-themeshade: 128; mso-style-textfill-fill-color: #1F4E79; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=50000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">City FM</span></strong><strong><span style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;">                                                       </span><a href="http://220.247.227.6/live/"><img src="images/listen_live_button.gif" border="0" alt="" width="58" height="19" style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;" /></a></strong></p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;"><strong style="font-size: 12.16px; line-height: 15.808px;"><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #2e75b6; mso-themecolor: accent1; mso-themeshade: 191; mso-style-textfill-fill-color: #2E75B6; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=75000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Sinhala Commercial Service</span></strong><strong style="font-size: 12.16px; line-height: 15.808px;"><span style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;">   </span><a href="http://220.247.227.2/live"><img src="images/listen_live_button.gif" border="0" alt="" width="58" height="19" style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;" /></a></strong></p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;"><strong style="font-size: 12.16px; line-height: 15.808px;"><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #1f4e79; mso-themecolor: accent1; mso-themeshade: 128; mso-style-textfill-fill-color: #1F4E79; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=50000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Thendral </span></strong><strong style="font-size: 12.16px; line-height: 15.808px;"><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #c00000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> </span></strong><strong style="font-size: 12.16px; line-height: 15.808px;"><span style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;">                                                  </span><a href="http://220.247.227.3/live"><img src="images/listen_live_button.gif" border="0" alt="" width="61" height="20" style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;" /></a></strong></p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;"><strong style="font-size: 12.16px; line-height: 15.808px;"><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #2e75b6; mso-themecolor: accent1; mso-themeshade: 191; mso-style-textfill-fill-color: #2E75B6; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=75000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Tamil National Service </span></strong><strong style="font-size: 12.16px; line-height: 15.808px;"><span style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;">             </span><a href="http://220.247.227.4/live"><img src="images/listen_live_button.gif" border="0" alt="" width="61" height="20" style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;" /></a></strong></p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;"><span style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #1f4e79; mso-themecolor: accent1; mso-themeshade: 128; mso-style-textfill-fill-color: #1F4E79; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=50000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Yaal FM</span></strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #1f4e79; mso-themecolor: accent1; mso-themeshade: 128; mso-style-textfill-fill-color: #1F4E79; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=50000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> </span><span style="font-size: 14pt; line-height: 107%; font-family: Forte;"> </span>                                                </span><a href="http://220.247.227.7/live"><img src="images/listen_live_button.gif" border="0" alt="" width="61" height="20" style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;" /></a></p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;"><strong style="font-size: 12.16px; line-height: 15.808px;"><span style="font-size: 9.0pt; line-height: 107%; font-family: ''Cooper Std Black'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Tahoma; color: #c00000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: SI-LK;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Forte; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; color: #2e75b6; mso-themecolor: accent1; mso-themeshade: 191; mso-style-textfill-fill-color: #2E75B6; mso-style-textfill-fill-themecolor: accent1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: lumm=75000; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Asia Service</span></strong><strong><span style="font-size: 9pt; line-height: 107%; font-family: Forte;">                                 </span></strong>          </span></strong><a href="http://220.247.227.5/live"><img src="images/listen_live_button.gif" border="0" alt="" width="61" height="20" style="color: #c00000; font-family: ''Cooper Std Black'', serif; font-size: 12px; line-height: 12.84px;" /></a></p>', 5, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 'Sports News', '', '<p><img src="images/phoca_thumb_l_DSC1387x.jpg" border="0" alt="" width="153" height="102" /> </p>\r\n<p>srilanka vs India 2020 match postponed due to the rain... the rain was so </p>\r\n<p><a class="button-more" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102" style="font-size: 12.16px; line-height: 15.808px;">read more</a></p>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(111, 'Social GK5', '', '', 1, 'sidebar-b', 42, '2015-12-11 07:36:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_social_gk5', 1, 1, '{"automatic_module_id":"1","module_id":"gk-social-1","moduleclass_sfx":"","cookie_conset":"0","module_data_source":"fb","twitter_consumer_key":"Please visit twitter.com to generate keys","twitter_consumer_secret":"Please visit twitter.com to generate keys","twitter_user_token":"Please visit twitter.com to generate keys","twitter_user_secret":"Please visit twitter.com to generate keys","twitter_search_query":"gavickpro","twitter_tweet_amount":"10","twitter_tweet_style":"style1","twitter_rows":"5","twitter_columns":"1","twitter_use_css":"1","twitter_show_uname":"1","twitter_show_fname":"1","twitter_show_actions":"1","twitter_show_avatar":"1","twitter_time_mode":"cdate","twitter_cache":"1","twitter_cache_time":"10","gplus_user":"https:\\/\\/plus.google.com\\/+gavickpro","gplus_badge_style":"standard_badge","gplus_badge_layout":"portrait","gplus_cover_photo":"true","gplus_tagline":"true","gplus_badge_width":"300","gplus_badge_color":"light","gplus_lang_code":"en","gplus_custom_name":"","gplus_icon_size":"16","fb_auto_url":"true","fb_site":"www.yourdomain.com","fb_app_id":"802935103124368","fb_data_source":"like_box","fb_code_type":"HTML5","fb_language":"en_US","fb_width":"300","fb_height":"300","fb_header":"true","fb_colorscheme":"light","fb_recommendations":"false","fb_link_target":"_blank","fb_max_age":"0","fb_number_comments":"10","fb_width_comments":"500","fb_only_number":"false","fb_comments_colorscheme":"light","fb_only_number_add":"awesome comments","fb_only_number_url":"false","fb_comments_admin_id":"","fb_facepile_width":"200","fb_facepile_num_rows":"2","fb_facepile_colorscheme":"light","fb_facepile_size":"medium","fb_likebox_width":"300","fb_likebox_height":"600","fb_likebox_colorscheme":"light","fb_likebox_header":"true","fb_likebox_show_border":"true","fb_likebox_faces":"true","fb_likebox_stream":"true","fb_rec_width":"300","fb_rec_height":"500","fb_rec_header":"true","fb_rec_colorscheme":"light","fb_rec_max_age":"0","fb_rec_link_target":"_blank"}', 0, '*'),
(112, 'News Show SP2', '', '', 1, 'top-a', 42, '2015-12-17 11:22:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_news_show_sp2', 1, 0, '{"uniqid":"67","content_source":"joomla","catids":["2"],"vmcat":"all","vmordering":"latest","ordering":"a.created","ordering_direction":"ASC","user_id":"0","show_featured":"","article_column":"1","article_row":"1","article_col_padding":"3px 3px 3px 3px","article_showtitle":"1","article_linkedtitle":"1","article_title_text_limit":"1","article_count_title_text":"0","article_introtext":"1","article_intro_text_limit":"0","article_count_intro_text":"30","article_date_format":"DATE_FORMAT_LC3","article_show_author":"0","article_show_category":"0","article_linked_category":"1","article_show_ratings":"0","article_show_image":"1","article_linked_image":"1","article_image_pos":"bottom","article_image_float":"float:left","article_image_margin":"3px 3px 3px 3px","article_thumb_width":"400","article_thumb_height":"270","article_thumb_ratio":"0","article_extra_fields":"0","article_show_more":"1","article_more_text":"Read More...","article_comments":"1","article_hits":"1","btn_like":"0","btn_twitter":"0","btn_gplus":"0","art_show_price":"0","art_show_cart_button":"0","article_animation":"cover-horizontal-push","article_slide_count":"4","article_controllers_style":"nssp2-default","article_pagination":"1","article_arrows":"0","article_autoplay":"1","article_play_button":"0","article_activator":"click","article_animation_speed":"300","article_animation_interval":"5000","article_animation_transition":"linear","links_block":"0","links_count":"3","links_col_padding":"3px 3px 3px 3px","links_position":"bottom","links_more":"1","links_more_text":"MORE","links_title_text_limit":"1","links_title_count":"0","links_show_intro":"0","links_intro_text_limit":"0","links_intro_count":"20","links_show_image":"0","links_linked_image":"1","links_image_pos":"bottom","links_image_float":"float:left","links_image_margin":"0 0 0 0","links_thumb_width":"50","links_thumb_height":"50","links_thumb_ratio":"0","links_show_price":"0","links_show_cart_button":"0","links_animation":"cover-horizontal-push","links_slide_count":"2","links_controllers_style":"nssp2-default","links_pagination":"1","links_arrows":"0","links_autoplay":"1","links_play_button":"0","links_activator":"click","links_animation_speed":"300","links_animation_interval":"5000","links_animation_transition":"linear","layout":"_:default","custom_js":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(113, 'Unite Horizontal Carousel', '', '', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_unite_hcarousel', 1, 1, '{"include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(114, 'Creative Image Slider', '', '', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_creativeimageslider', 1, 1, '{"slider_id":"1","class_suffix":""}', 0, '*'),
(115, 'Images Crawler', '', '', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imgscrawler', 1, 0, '{"folder":"images\\/fm","substoo":"0","limit":"7","random":"0","direction":"left","links":"","repeat":"1","target":"1","caps":"","width":"100%","height":"150px","bgcolor":"","speed":"1","valign":"top","iwidth":"200px","iheight":"150px","margin":"3","mouse":"pause","moveatleast":"1","neutral":"50","savedirection":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(116, 'Facebook FanBox', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_fbfanbox', 1, 1, '{"page_url":"https:\\/\\/www.facebook.com\\/srilankabc\\/","boxwidth":"150","boxheight":"200","show_faces":"1","show_stream":"1","show_header":"1","force_wall":"0","connect_script_call":"1","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(117, 'Advertisement', '', '<p><img src="images/12387930_823006174562077_680911212_n.jpg" border="0" alt="" width="211" height="33" /></p>', 1, 'sidebar-b', 42, '2015-12-18 10:02:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_modules_menu`
--

CREATE TABLE IF NOT EXISTS `kl984_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kl984_modules_menu`
--

INSERT INTO `kl984_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, 102),
(17, 103),
(17, 104),
(17, 105),
(17, 106),
(17, 107),
(17, 108),
(17, 109),
(17, 110),
(17, 111),
(17, 112),
(17, 113),
(17, 114),
(17, 115),
(17, 116),
(17, 117),
(17, 118),
(17, 119),
(17, 120),
(17, 121),
(17, 122),
(17, 123),
(17, 124),
(17, 125),
(17, 126),
(17, 127),
(17, 128),
(17, 129),
(17, 130),
(17, 137),
(17, 138),
(17, 139),
(17, 140),
(17, 141),
(17, 145),
(17, 146),
(17, 147),
(17, 148),
(17, 149),
(17, 155),
(17, 156),
(17, 157),
(17, 158),
(17, 159),
(17, 160),
(19, 103),
(20, 103),
(21, 103),
(22, 103),
(23, 101),
(24, 101),
(25, 101),
(26, 101),
(27, 103),
(28, 103),
(29, 103),
(30, 103),
(31, 0),
(32, 0),
(33, 103),
(34, 103),
(35, 103),
(36, 103),
(37, 103),
(38, 0),
(39, 0),
(40, 0),
(41, 102),
(41, 104),
(41, 107),
(41, 123),
(41, 124),
(41, 125),
(41, 126),
(41, 127),
(41, 128),
(41, 129),
(41, 130),
(41, 137),
(41, 138),
(41, 139),
(41, 140),
(41, 145),
(41, 146),
(41, 147),
(41, 148),
(41, 149),
(41, 155),
(41, 156),
(41, 157),
(41, 158),
(41, 159),
(41, 160),
(42, 103),
(42, 108),
(42, 109),
(42, 110),
(42, 111),
(42, 112),
(42, 113),
(42, 114),
(42, 115),
(42, 116),
(42, 117),
(42, 118),
(42, 119),
(42, 120),
(42, 121),
(42, 122),
(42, 123),
(43, 103),
(44, 103),
(45, 104),
(46, 104),
(47, 104),
(48, 107),
(48, 124),
(48, 128),
(49, 107),
(49, 124),
(49, 128),
(50, 106),
(51, 106),
(52, 105),
(53, 102),
(54, 102),
(55, 102),
(56, 101),
(57, 103),
(58, 103),
(59, 103),
(60, 101),
(61, 0),
(62, 103),
(63, 103),
(64, 103),
(65, 103),
(66, 105),
(67, 105),
(68, 105),
(69, 105),
(70, 101),
(71, 103),
(72, 103),
(73, 103),
(74, 103),
(76, 141),
(77, 108),
(77, 109),
(77, 110),
(77, 111),
(77, 112),
(77, 113),
(77, 114),
(77, 115),
(77, 116),
(77, 117),
(77, 118),
(77, 119),
(77, 120),
(77, 121),
(77, 122),
(77, 123),
(77, 137),
(77, 138),
(77, 139),
(77, 140),
(77, 145),
(77, 146),
(77, 147),
(77, 148),
(77, 149),
(78, 141),
(79, 141),
(80, 0),
(81, 101),
(82, 101),
(83, 101),
(84, 101),
(85, 101),
(86, 101),
(87, 101),
(88, 101),
(89, 101),
(90, 101),
(91, 101),
(92, 101),
(93, 101),
(94, 101),
(95, -103),
(96, -103),
(97, -103),
(98, -103),
(99, -103),
(100, -103),
(101, 103),
(102, 103),
(103, 103),
(104, 103),
(105, 103),
(106, 104),
(107, 101),
(108, 0),
(109, 0),
(110, 0),
(112, 101),
(113, 101),
(114, -101),
(115, 101),
(116, 101),
(117, 101),
(117, 102),
(117, 103),
(117, 104),
(117, 105),
(117, 106),
(117, 107),
(117, 108),
(117, 109),
(117, 110),
(117, 111),
(117, 112),
(117, 113),
(117, 114),
(117, 115),
(117, 116),
(117, 117),
(117, 118),
(117, 119),
(117, 120),
(117, 121),
(117, 122),
(117, 123),
(117, 124),
(117, 125),
(117, 126),
(117, 127),
(117, 128),
(117, 129),
(117, 130),
(117, 131),
(117, 132),
(117, 133),
(117, 134),
(117, 135),
(117, 137),
(117, 138),
(117, 139),
(117, 140),
(117, 141),
(117, 145),
(117, 146),
(117, 147),
(117, 148),
(117, 149),
(117, 155),
(117, 156),
(117, 157),
(117, 158),
(117, 159),
(117, 160),
(117, 161),
(117, 162),
(117, 163),
(117, 165),
(117, 166);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `kl984_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_overrider`
--

CREATE TABLE IF NOT EXISTS `kl984_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_redirect_links`
--

CREATE TABLE IF NOT EXISTS `kl984_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_schemas`
--

CREATE TABLE IF NOT EXISTS `kl984_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kl984_schemas`
--

INSERT INTO `kl984_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.28');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_session`
--

CREATE TABLE IF NOT EXISTS `kl984_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kl984_session`
--

INSERT INTO `kl984_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('37dc237d5d7051197a6f6f881bed8a43', 0, 1, '1451895956', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1451895950;s:18:"session.timer.last";i:1451895950;s:17:"session.timer.now";i:1451895950;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '', ''),
('aeb65f49ec75b80906b16687873f4cca', 1, 1, '1451645223', '__default|a:8:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1451645223;s:18:"session.timer.last";i:1451645223;s:17:"session.timer.now";i:1451645223;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";N;s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"7f6a44c526c5908752928e1aec9f100a";}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_template_styles`
--

CREATE TABLE IF NOT EXISTS `kl984_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `kl984_template_styles`
--

INSERT INTO `kl984_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default-Fruit Shop', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Matuna Market ","sitedescription":"Fruit Shop Sample Site","navposition":"left","html5":"0"}'),
(8, 'yoo_revista', 0, '1', 'yoo_revista - Default', '{"config":""}');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_unitehcarousel_sliders`
--

CREATE TABLE IF NOT EXISTS `kl984_unitehcarousel_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `visual` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_unitehcarousel_slides`
--

CREATE TABLE IF NOT EXISTS `kl984_unitehcarousel_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_updates`
--

CREATE TABLE IF NOT EXISTS `kl984_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=64 ;

--
-- Dumping data for table `kl984_updates`
--

INSERT INTO `kl984_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(2, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.3', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(3, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(4, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(5, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(6, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(7, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(8, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(9, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(10, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(11, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(12, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(13, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(14, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(17, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(18, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(19, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(23, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(24, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(25, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(26, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(27, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.2', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(28, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(29, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(30, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(31, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(32, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(33, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(34, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(35, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(36, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(37, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(38, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(39, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(40, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(41, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(42, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(43, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(44, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(45, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(46, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(47, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(48, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(49, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(50, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(51, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(52, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(53, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(54, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(55, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(56, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(57, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(58, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(59, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(60, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(61, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(62, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(63, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_update_categories`
--

CREATE TABLE IF NOT EXISTS `kl984_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_update_sites`
--

CREATE TABLE IF NOT EXISTS `kl984_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kl984_update_sites`
--

INSERT INTO `kl984_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1450414552),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1450414552),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1450414552),
(4, 'Social GK5 Updates', 'extension', 'https://www.gavick.com/update_server/joomla25/social_gk5.xml', 0, 1450414550);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `kl984_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `kl984_update_sites_extensions`
--

INSERT INTO `kl984_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10010);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_usergroups`
--

CREATE TABLE IF NOT EXISTS `kl984_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `kl984_usergroups`
--

INSERT INTO `kl984_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_users`
--

CREATE TABLE IF NOT EXISTS `kl984_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `kl984_users`
--

INSERT INTO `kl984_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(42, 'Super User', 'admin', 'sameerakodituwakku@gmail.com', '$P$DFCb/eIBA6o8YFJCmhiuVj4IATTomW0', 'deprecated', 0, 1, '2015-12-08 10:01:23', '2015-12-18 09:31:34', '0', '{}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_user_notes`
--

CREATE TABLE IF NOT EXISTS `kl984_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kl984_user_profiles`
--

CREATE TABLE IF NOT EXISTS `kl984_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `kl984_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `kl984_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kl984_user_usergroup_map`
--

INSERT INTO `kl984_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Table structure for table `kl984_viewlevels`
--

CREATE TABLE IF NOT EXISTS `kl984_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kl984_viewlevels`
--

INSERT INTO `kl984_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_weblinks`
--

CREATE TABLE IF NOT EXISTS `kl984_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kl984_weblinks`
--

INSERT INTO `kl984_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 9, 0, 'Icons', 'icons', 'http://www.yootheme.com/icons', '', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-01-23 15:41:46', 42, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 9, 0, 'YOOtheme', 'yootheme', 'http://www.yootheme.com', '', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-01-23 15:42:03', 42, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 9, 0, 'ZOO', 'zoo', 'http://www.yootheme.com/zoo', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-01-23 15:42:18', 42, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kl984_widgetkit_widget`
--

CREATE TABLE IF NOT EXISTS `kl984_widgetkit_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `kl984_widgetkit_widget`
--

INSERT INTO `kl984_widgetkit_widget` (`id`, `type`, `style`, `name`, `content`, `created`, `modified`) VALUES
(10, 'slideshow', 'default', 'Demo Default', '{"type":"slideshow","id":10,"name":"Demo Default","settings":{"style":"default","autoplay":1,"interval":5000,"width":600,"height":300,"duration":500,"index":0,"order":"default","navigation":1,"buttons":1,"slices":15,"animated":"randomFx","caption_animation_duration":500},"style":"default","items":{"4dd00c3ee01f3":{"title":"Slide 1","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 01\\" \\/><\\/a>","caption":""},"4dd00c473c0f2":{"title":"Slide 2","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 02\\" \\/><\\/a>","caption":"This is a HTML caption with a <a href=\\"#\\">link<\\/a>."},"4dd00c4eb7982":{"title":"Slide 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 03\\" \\/><\\/a>","caption":"This is another HTML caption with a <a href=\\"#\\">link<\\/a>."},"4de3f1aa49f9a":{"title":"Slide 4","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 04\\" \\/><\\/a>","caption":""},"4de3f1ab9f6c9":{"title":"Slide 5","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 05\\" \\/><\\/a>","caption":""}}}', '2011-05-15 17:24:01', '2011-09-05 14:17:41'),
(19, 'gallery', 'default', 'Demo Slideshow', '{"type":"gallery","id":19,"name":"Demo Slideshow","settings":{"style":"default","width":600,"height":300,"order":"default","autoplay":0,"interval":5000,"duration":500,"index":0,"navigation":1,"buttons":1,"slices":15,"animated":"randomFx","caption_animation_duration":500,"lightbox":0},"style":"default","paths":["\\/yootheme\\/widgetkit\\/slideshow"],"captions":{"\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg":"This is a HTML caption with a <a href=\\"#\\">link<\\/a>.","\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg":"This is another HTML caption with a <a href=\\"#\\">link<\\/a>.","\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg":""},"links":{"\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg":""}}', '2011-06-29 17:52:08', '2011-09-12 15:47:24'),
(23, 'gallery', 'wall', 'Demo Wall Spotlight', '{"type":"gallery","id":23,"name":"Demo Wall Spotlight","settings":{"style":"wall","width":200,"height":150,"effect":"spotlight","margin":"margin","corners":"round","lightbox":1,"lightbox_caption":1,"spotlight_effect":""},"style":"wall","paths":["\\/yootheme\\/widgetkit\\/gallery"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image6.jpg":""},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image6.jpg":""}}', '2011-07-03 16:53:00', '2011-07-28 16:18:08'),
(24, 'gallery', 'wall', 'Demo Wall Zoom', '{"type":"gallery","id":24,"name":"Demo Wall Zoom","settings":{"style":"wall","width":200,"height":150,"effect":"zoom","margin":"","corners":"","lightbox":1,"lightbox_caption":1,"spotlight_effect":""},"style":"wall","paths":["\\/yootheme\\/widgetkit\\/gallery\\/zoom"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image1.jpg":"Model 1","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image2.jpg":"Model 2","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image3.jpg":"Model 3","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image4.jpg":"Model 4","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image5.jpg":"Model 5","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image6.jpg":"Model 6"},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image6.jpg":""}}', '2011-07-07 15:41:12', '2011-07-29 10:38:06'),
(25, 'gallery', 'wall', 'Demo Wall Polaroid', '{"type":"gallery","id":25,"name":"Demo Wall Polaroid","settings":{"style":"wall","width":200,"height":150,"effect":"polaroid","margin":"","corners":"","lightbox":1,"lightbox_caption":1,"spotlight_effect":""},"style":"wall","paths":["\\/yootheme\\/widgetkit\\/gallery\\/polaroid"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image1.jpg":"Tony","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image2.jpg":"Susan","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image3.jpg":"Jennifer","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image4.jpg":"Kim","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image5.jpg":"Vanessa","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image6.jpg":"Clark"},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image6.jpg":""}}', '2011-07-07 15:44:32', '2011-07-29 10:43:01'),
(26, 'map', 'default', 'Demo Default', '{"type":"map","id":26,"name":"Demo Default","settings":{"style":"default","width":"auto","height":500,"mapTypeId":"roadmap","zoom":13,"mapCtrl":1,"typeCtrl":1,"popup":2,"directions":1,"styler_invert_lightness":0,"styler_hue":"","styler_saturation":0,"styler_lightness":0,"styler_gamma":0},"style":"default","items":{"4e16d63a2bc97":{"title":"Museum of Modern Art","location":"Museum of Modern Art, New York, NY 10019, USA","lat":"40.7613983","lng":"-73.9776179","icon":"red-dot","popup":"<h3>Museum of Modern Art<\\/h3>\\r\\n11 W 53rd St\\r\\n<br \\/>New York, NY 10019\\r\\n<br \\/>(212) 708-9400\\r\\n<br \\/><a href=\\"http:\\/\\/www.moma.org\\">moma.org<\\/a>"},"4e16d65531670":{"title":"Madison Square Garden","location":"Penn Station, New York, NY 10001, USA","lat":"40.75058","lng":"-73.99358","icon":"red-dot","popup":"<h3>Madison Square Garden<\\/h3>\\r\\n2 Penn Plz # 15\\r\\n<br \\/>New York, NY 10121\\r\\n<br \\/>Get Directions\\r\\n<br \\/>(212) 465-6000\\r\\n<br \\/><a href=\\"http:\\/\\/www.msg.com\\">msg.com<\\/a>"},"4e16d5e1740d8":{"title":"Rockefeller Center","location":"Rockefeller Plaza, Rockefeller Center, New York, NY 10112, USA","lat":"40.7584384","lng":"-73.9789121","icon":"red-dot","popup":"<h3>Rockefeller Center<\\/h3>\\r\\n25 W 51st St\\r\\n<br \\/>New York, NY 10019\\r\\n<br \\/>(212) 262-1600\\r\\n<br \\/><a href=\\"http:\\/\\/www.rockefellercenterhotel.com\\">rockefellercenterhotel.com<\\/a>"},"4e16d6476a880":{"title":"Empire State Building","location":"Empire State Bldg, 350 5th Ave, New York, NY 10001, USA","lat":"40.748379","lng":"-73.98555999999999","icon":"red-dot","popup":"<h3>Empire State Building<\\/h3>\\r\\n350 5th Ave # 3210\\r\\n<br \\/>New York, NY 10118\\r\\n<br \\/>(212) 736-3100\\r\\n<br \\/><a href=\\"http:\\/\\/www.esbnyc.com\\">esbnyc.com<\\/a>"}}}', '2011-07-08 10:05:25', '2011-07-31 15:23:06'),
(27, 'gallery', 'slider', 'Demo Slider Center', '{"type":"gallery","id":27,"name":"Demo Slider Center","settings":{"style":"slider","width":300,"height":200,"total_width":600,"spacing":3,"center":1,"sticky":0,"duration":400,"lightbox":1,"lightbox_caption":1,"spotlight":1,"spotlight_effect":"bottom"},"style":"slider","paths":["\\/yootheme\\/widgetkit\\/gallery\\/slider2"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image1.jpg":"This is a caption for the first image.","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image2.jpg":"This is a caption for the second image.","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image3.jpg":"This is a caption for the third image.","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image4.jpg":"This is a caption for the fourth image."},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image4.jpg":""}}', '2011-07-08 15:28:38', '2011-07-29 08:28:24'),
(28, 'map', 'default', 'Demo Black', '{"type":"map","id":28,"name":"Demo Black","settings":{"style":"default","width":"auto","height":300,"mapTypeId":"roadmap","zoom":13,"mapCtrl":1,"typeCtrl":0,"popup":1,"directions":0,"styler_invert_lightness":1,"styler_hue":"#ff3300","styler_saturation":-50,"styler_lightness":0,"styler_gamma":0.91},"style":"default","items":{"4e19a7ec5f75a":{"title":"London","location":"Westminster, London, UK","lat":"51.5001524","lng":"-0.1262362","icon":"purple-dot","popup":""}}}', '2011-07-10 13:25:58', '2011-07-12 08:24:47'),
(29, 'map', 'default', 'Demo Minimal', '{"type":"map","id":29,"name":"Demo Minimal","settings":{"style":"default","width":400,"height":200,"mapTypeId":"roadmap","zoom":13,"mapCtrl":0,"typeCtrl":0,"popup":0,"directions":0,"styler_invert_lightness":0,"styler_hue":"","styler_saturation":0,"styler_lightness":0,"styler_gamma":0},"style":"default","items":{"4e1ac310cf33e":{"title":"Hamburg","location":"Hamburg, Germany","lat":"53.553813","lng":"9.991586","icon":"red-dot","popup":""}}}', '2011-07-11 09:33:05', '2011-07-31 15:08:57'),
(30, 'accordion', 'default', 'Demo Default', '{"type":"accordion","id":30,"name":"Demo Default","settings":{"style":"default","collapseall":1,"matchheight":1,"index":0,"duration":500,"width":500},"style":"default","items":{"4e1ac6fe6a20d":{"title":"Slide 1","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/accordion\\/image1.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 01\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"},"4e1ac708561be":{"title":"Slide 2","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/accordion\\/image2.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 02\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"},"4e1ac70cb840e":{"title":"Slide 3","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/accordion\\/image3.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 03\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"},"4e1ac711bbabe":{"title":"Slide 4","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/accordion\\/image4.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 04\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"}}}', '2011-07-11 09:49:12', '2011-08-23 15:05:56'),
(31, 'gallery', 'slider', 'Demo Slider Left', '{"type":"gallery","id":31,"name":"Demo Slider Left","settings":{"style":"slider","width":300,"height":200,"total_width":600,"spacing":3,"center":0,"sticky":0,"duration":400,"lightbox":0,"lightbox_caption":1,"spotlight":0,"spotlight_effect":""},"style":"slider","paths":["\\/yootheme\\/widgetkit\\/gallery\\/slider1"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image4.jpg":""},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image4.jpg":""}}', '2011-07-12 18:23:44', '2011-07-29 07:48:55'),
(32, 'slideset', 'default', 'Demo Slide', '{"type":"slideset","id":32,"name":"Demo Slide","settings":{"style":"default","width":"auto","height":"auto","effect":"slide","index":0,"autoplay":1,"interval":5000,"items_per_set":4,"navigation":1,"buttons":0,"title":1,"duration":300},"style":"default","items":{"4e30070bb3f2c":{"title":"Radio","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image1.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 01\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071628817":{"title":"Camera","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image2.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 02\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071b515e1":{"title":"Calendar","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image3.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 03\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300720a131e":{"title":"Volume","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image4.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 04\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300725404e2":{"title":"Chat","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image5.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 05\\" \\/><\\/a>","group":"","set":"Set 2"},"4e301094b3b19":{"title":"Tunes","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image6.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 06\\" \\/><\\/a>","set":"Set 2"},"4e301099469eb":{"title":"E-Mail","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image7.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 07\\" \\/><\\/a>","set":"Set 2"},"4e30109dc7253":{"title":"Google+","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image8.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 08\\" \\/><\\/a>","set":"Set 2"},"4e30109faa62d":{"title":"Player","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image9.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 09\\" \\/><\\/a>","set":"Set 3"},"4e3010a16c585":{"title":"Like","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image10.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 10\\" \\/><\\/a>","set":"Set 3"},"4e329ee00dfeb":{"title":"Twitter","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image11.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 12\\" \\/><\\/a>"},"4e329ee198f40":{"title":"Weather","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image12.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 12\\" \\/><\\/a>"}}}', '2011-07-27 12:40:13', '2011-09-05 17:13:42'),
(33, 'slideset', 'default', 'Demo Zoom', '{"type":"slideset","id":33,"name":"Demo Zoom","settings":{"style":"default","width":"auto","height":"auto","effect":"zoom","index":0,"autoplay":1,"interval":7000,"items_per_set":"set","navigation":1,"buttons":0,"title":0,"duration":300},"style":"default","items":{"4e30070bb3f2c":{"title":"Icon 1","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image1.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 01\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071628817":{"title":"Icon 2","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image2.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 02\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071b515e1":{"title":"Icon 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image3.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 03\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300720a131e":{"title":"Icon 4","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image4.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 04\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300725404e2":{"title":"Item 5","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image5.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 05\\" \\/><\\/a>","group":"","set":"Set 2"},"4e301094b3b19":{"title":"Icon 6","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image6.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 06\\" \\/><\\/a>","set":"Set 2"},"4e301099469eb":{"title":"Icon 7","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image7.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 07\\" \\/><\\/a>","set":"Set 2"},"4e30109dc7253":{"title":"Icon 8","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image8.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 08\\" \\/><\\/a>","set":"Set 2"},"4e30109faa62d":{"title":"Icon 9","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image9.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 09\\" \\/><\\/a>","set":"Set 3"},"4e3010a16c585":{"title":"Icon 10","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image10.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 10\\" \\/><\\/a>","set":"Set 3"},"4e329ee00dfeb":{"title":"Icon 11","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image11.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 12\\" \\/><\\/a>"},"4e329ee198f40":{"title":"Icon 12","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image12.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 12\\" \\/><\\/a>"}}}', '2011-07-29 11:53:34', '2011-09-05 17:12:13'),
(34, 'slideshow', 'tabs_bar', 'Demo Tabs Bar', '{"type":"slideshow","id":34,"name":"Demo Tabs Bar","settings":{"style":"tabs_bar","autoplay":0,"interval":5000,"width":"auto","height":"auto","duration":500,"index":0,"order":"default","navigation":"left","animated":"scroll"},"style":"tabs_bar","items":{"4e511fb86001b":{"title":"Tab One","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image1.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 01\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>","caption":""},"4e511fd616557":{"title":"Tab Two","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image2.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 02\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"},"4e511fd6eeb3b":{"title":"Tab Three","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image3.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 03\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"}}}', '2011-08-21 15:09:51', '2011-09-12 12:38:06'),
(35, 'slideshow', 'tabs', 'Demo Tabs', '{"type":"slideshow","id":35,"name":"Demo Tabs","settings":{"style":"tabs","autoplay":0,"interval":5000,"width":"auto","height":"auto","duration":500,"index":0,"order":"default","navigation":"left","animated":"scroll"},"style":"tabs","items":{"4e511fb86001b":{"title":"Tab One","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image4.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 04\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>","caption":""},"4e511fd616557":{"title":"Tab Two","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image5.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 05\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"},"4e511fd6eeb3b":{"title":"Tab Three","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image6.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 06\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"}}}', '2011-08-22 13:43:01', '2011-09-09 15:54:58'),
(36, 'slideshow', 'list', 'Demo List', '{"type":"slideshow","id":36,"name":"Demo List","settings":{"style":"list","autoplay":0,"interval":5000,"width":"auto","height":"auto","duration":500,"index":0,"order":"default","navigation":200,"animated":"scroll"},"style":"list","items":{"4e511fb86001b":{"title":"Item One","content":"<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image9.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 09\\" \\/>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>","caption":""},"4e511fd616557":{"title":"Item Two","content":"<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image8.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 08\\" \\/>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"},"4e511fd6eeb3b":{"title":"Item Three","content":"<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image7.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 07\\" \\/>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"}}}', '2011-08-23 09:54:41', '2011-09-05 12:36:22'),
(37, 'slideshow', 'showcase_box', 'Demo Showcase Box', '{"type":"slideshow","id":37,"name":"Demo Showcase Box","settings":{"style":"showcase_box","autoplay":0,"interval":5000,"width":600,"height":270,"duration":500,"index":0,"order":"default","buttons":0,"slices":20,"animated":"scroll","caption_animation_duration":500,"effect":"slide","slideset_buttons":1,"items_per_set":4,"slideset_effect_duration":400},"style":"showcase_box","items":{"4dd00c3ee01f3":{"title":"Slide 1","content":"<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image1.png\\" width=\\"210\\" height=\\"220\\" alt=\\"Image 01\\" \\/>\\r\\n<h2 class=\\"remove-margin-t\\">Headline<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<a href=\\"#\\" class=\\"button-more\\">Read more<\\/a>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image1_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 01\\" \\/> Item 1"},"4dd00c473c0f2":{"title":"Slide 2","content":"<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image2.png\\" width=\\"210\\" height=\\"220\\" alt=\\"Image 02\\" \\/>\\r\\n<h2 class=\\"remove-margin-t\\">Headline<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<a href=\\"#\\" class=\\"button-more\\">Read more<\\/a>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image2_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 02\\" \\/> Item 2"},"4dd00c4eb7982":{"title":"Slide 3","content":"<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image3.png\\" width=\\"210\\" height=\\"220\\" alt=\\"Image 03\\" \\/>\\r\\n<h2 class=\\"remove-margin-t\\">Headline<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<a href=\\"#\\" class=\\"button-more\\">Read more<\\/a>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image3_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 03\\" \\/> Item 3"},"4de3f1aa49f9a":{"title":"Slide 4","content":"<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image4.png\\" width=\\"210\\" height=\\"220\\" alt=\\"Image 04\\" \\/>\\r\\n<h2 class=\\"remove-margin-t\\">Headline<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<a href=\\"#\\" class=\\"button-more\\">Read more<\\/a>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image4_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 04\\" \\/> Item 4"},"4de3f1ab9f6c9":{"title":"Slide 5","content":"<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image5.png\\" width=\\"210\\" height=\\"220\\" alt=\\"Image 05\\" \\/>\\r\\n<h2 class=\\"remove-margin-t\\">Headline<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<a href=\\"#\\" class=\\"button-more\\">Read more<\\/a>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image5_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 05\\" \\/> Item 5"},"4e65eda9682e1":{"title":"Slide 6","content":"<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image6.png\\" width=\\"210\\" height=\\"220\\" alt=\\"Image 06\\" \\/>\\r\\n<h2 class=\\"remove-margin-t\\">Headline<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<a href=\\"#\\" class=\\"button-more\\">Read more<\\/a>","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image6_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 06\\" \\/> Item 6","caption":""},"4e65edadd0d97":{"title":"Slide 7","content":"<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image7.png\\" width=\\"210\\" height=\\"220\\" alt=\\"Image 07\\" \\/>\\r\\n<h2 class=\\"remove-margin-t\\">Headline<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<a href=\\"#\\" class=\\"button-more\\">Read more<\\/a>","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image7_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 07\\" \\/> Item 7","caption":""},"4e65edb02bf73":{"title":"Slide 8","content":"<img class=\\"align-right\\" src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image8.png\\" width=\\"210\\" height=\\"220\\" alt=\\"Image 08\\" \\/>\\r\\n<h2 class=\\"remove-margin-t\\">Headline<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n<a href=\\"#\\" class=\\"button-more\\">Read more<\\/a>","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image8_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 08\\" \\/> Item 8","caption":""}}}', '2011-08-23 15:51:42', '2011-09-29 15:17:56'),
(39, 'gallery', 'showcase_box', 'Demo Showcase Box', '{"type":"gallery","id":39,"name":"Demo Showcase Box","settings":{"style":"showcase_box","width":600,"height":"auto","order":"default","thumb_width":85,"thumb_height":55,"autoplay":1,"interval":5000,"duration":400,"index":0,"buttons":0,"slices":15,"animated":"randomFx","caption_animation_duration":500,"effect":"zoom","slideset_buttons":1,"items_per_set":4,"slideset_effect_duration":300},"style":"showcase_box","paths":["\\/yootheme\\/widgetkit\\/gallery\\/showcase1"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image2.jpg":"This is a HTML caption with a <a href=\\"#\\">link<\\/a>.","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image3.jpg":"This is another HTML caption with a <a href=\\"#\\">link<\\/a>.","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image6.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image7.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image8.jpg":""},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image6.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image7.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image8.jpg":""}}', '2011-09-07 16:58:35', '2011-09-12 15:46:18'),
(40, 'gallery', 'showcase', 'Demo Showcase', '{"type":"gallery","id":40,"name":"Demo Showcase","settings":{"style":"showcase","width":600,"height":"auto","order":"default","thumb_width":80,"thumb_height":45,"autoplay":0,"interval":5000,"duration":500,"index":0,"buttons":0,"slices":15,"animated":"randomSimple","caption_animation_duration":500,"effect":"zoom","slideset_buttons":1,"items_per_set":5,"slideset_effect_duration":300},"style":"showcase","paths":["\\/yootheme\\/widgetkit\\/gallery\\/showcase2"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image01.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image02.jpg":"This is a HTML caption with a <a href=\\"#\\">link<\\/a>.","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image03.jpg":"This is another HTML caption with a <a href=\\"#\\">link<\\/a>.","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image04.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image05.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image06.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image07.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image08.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image09.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image10.jpg":""},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image01.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image02.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image03.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image04.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image05.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image06.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image07.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image08.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image09.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image10.jpg":""}}', '2011-09-09 15:18:41', '2011-09-12 15:47:48'),
(41, 'slideshow', 'showcase_buttons', 'Demo Showcase Buttons', '{"type":"slideshow","id":41,"name":"Demo Showcase Buttons","settings":{"style":"showcase_buttons","autoplay":0,"interval":5000,"width":600,"height":300,"duration":500,"index":0,"order":"default","buttons":1,"slices":20,"animated":"randomFx","caption_animation_duration":500,"effect":"zoom","slideset_buttons":0,"items_per_set":4,"slideset_effect_duration":400},"style":"showcase_buttons","items":{"4dd00c3ee01f3":{"title":"Slide 1","content":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase2\\/image1.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 01\\" \\/>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image1_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 01\\" \\/> Item 1"},"4dd00c473c0f2":{"title":"Slide 2","content":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase2\\/image2.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 02\\" \\/>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image2_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 02\\" \\/> Item 2"},"4dd00c4eb7982":{"title":"Slide 3","content":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase2\\/image3.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 03\\" \\/>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image3_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 03\\" \\/> Item 3"},"4de3f1aa49f9a":{"title":"Slide 4","content":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase2\\/image4.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 04\\" \\/>","caption":"","navigation":"<img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image4_thumb.png\\" width=\\"35\\" height=\\"35\\" alt=\\"Image 04\\" \\/> Item 4"}}}', '2011-09-12 15:52:19', '2011-09-13 10:04:58'),
(43, 'slideset', 'default', 'Demo Deck', '{"type":"slideset","id":43,"name":"Demo Deck","settings":{"style":"default","width":"auto","height":"auto","effect":"deck","index":0,"autoplay":1,"interval":9000,"items_per_set":4,"navigation":0,"buttons":1,"title":0,"duration":300},"style":"default","items":{"4e30070bb3f2c":{"title":"Radio","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image1.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 01\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071628817":{"title":"Camera","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image2.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 02\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071b515e1":{"title":"Calendar","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image3.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 03\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300720a131e":{"title":"Volume","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image4.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 04\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300725404e2":{"title":"Chat","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image5.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 05\\" \\/><\\/a>","group":"","set":"Set 2"},"4e301094b3b19":{"title":"Tunes","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image6.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 06\\" \\/><\\/a>","set":"Set 2"},"4e301099469eb":{"title":"E-Mail","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image7.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 07\\" \\/><\\/a>","set":"Set 2"},"4e30109dc7253":{"title":"Google+","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image8.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 08\\" \\/><\\/a>","set":"Set 2"},"4e30109faa62d":{"title":"Player","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image9.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 09\\" \\/><\\/a>","set":"Set 3"},"4e3010a16c585":{"title":"Like","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image10.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 10\\" \\/><\\/a>","set":"Set 3"},"4e329ee00dfeb":{"title":"Twitter","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image11.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 12\\" \\/><\\/a>"},"4e329ee198f40":{"title":"Weather","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image12.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 12\\" \\/><\\/a>"}}}', '2011-09-12 18:34:35', '2011-09-12 18:39:02'),
(46, 'slideset', 'revista', 'Frontpage Slideset', '{"type":"slideset","id":46,"name":"Frontpage Slideset","settings":{"style":"revista","width":"auto","height":"auto","effect":"zoom","index":0,"autoplay":0,"interval":5000,"items_per_set":3,"navigation":0,"buttons":1,"title":0,"duration":300},"style":"revista","items":{"4f15a669391ed":{"title":"News 01","set":"01","content":"<div class=\\"frontpage-slideset\\">\\r\\n\\t<img class=\\"border-box\\" src=\\"images\\/yootheme\\/demo\\/slideset\\/01.jpg\\" alt=\\"Demo\\" width=\\"50\\" height=\\"50\\" \\/>\\r\\n\\t<div class=\\"slideset-content\\">\\r\\n\\t\\t<small>Feb 01, 2012<\\/small>\\r\\n\\t\\t<h3><a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">L.A. Coast Guard<\\/a><\\/h3>\\r\\n\\t\\tposted in <a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Stories<\\/a>\\r\\n\\t<\\/div>\\r\\n<\\/div>"},"4f15a6746fa8a":{"title":"News 02","set":"01","content":"<div class=\\"frontpage-slideset\\">\\r\\n\\t<img class=\\"border-box\\" src=\\"images\\/yootheme\\/demo\\/slideset\\/02.jpg\\" alt=\\"Demo\\" width=\\"50\\" height=\\"50\\" \\/>\\r\\n\\t<div class=\\"slideset-content\\">\\r\\n\\t\\t<small>Feb 12, 2012<\\/small>\\r\\n\\t\\t<h3><a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Growing Exports<\\/a><\\/h3>\\r\\n\\t\\tposted in <a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Economics<\\/a>\\r\\n\\t<\\/div>\\r\\n<\\/div>"},"4f15a6833a0e0":{"title":"News 03","set":"01","content":"<div class=\\"frontpage-slideset\\">\\r\\n\\t<img class=\\"border-box\\" src=\\"images\\/yootheme\\/demo\\/slideset\\/03.jpg\\" alt=\\"Demo\\" width=\\"50\\" height=\\"50\\" \\/>\\r\\n\\t<div class=\\"slideset-content\\">\\r\\n\\t\\t<small>Feb 15, 2012<\\/small>\\r\\n\\t\\t<h3><a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Princess of Pop<\\/a><\\/h3>\\r\\n\\t\\tposted in <a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">People<\\/a>\\r\\n\\t<\\/div>\\r\\n<\\/div>"},"4f15a69353316":{"title":"News 04","set":"02","content":"<div class=\\"frontpage-slideset\\">\\r\\n\\t<img class=\\"border-box\\" src=\\"images\\/yootheme\\/demo\\/slideset\\/04.jpg\\" alt=\\"Demo\\" width=\\"50\\" height=\\"50\\" \\/>\\r\\n\\t<div class=\\"slideset-content\\">\\r\\n\\t\\t<small>Feb 21, 2012<\\/small>\\r\\n\\t\\t<h3><a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Oil Prices rise<\\/a><\\/h3>\\r\\n\\t\\tposted in <a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Economics<\\/a>\\r\\n\\t<\\/div>\\r\\n<\\/div>"},"4f15ae9e276df":{"title":"News 05","set":"02","content":"<div class=\\"frontpage-slideset\\">\\r\\n\\t<img class=\\"border-box\\" src=\\"images\\/yootheme\\/demo\\/slideset\\/05.jpg\\" alt=\\"Demo\\" width=\\"50\\" height=\\"50\\" \\/>\\r\\n\\t<div class=\\"slideset-content\\">\\r\\n\\t\\t<small>Feb 25, 2012<\\/small>\\r\\n\\t\\t<h3><a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">2012 Festival Guide<\\/a><\\/h3>\\r\\n\\t\\tposted in <a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Culture<\\/a>\\r\\n\\t<\\/div>\\r\\n<\\/div>"},"4f15aea70b334":{"title":"News 06","set":"02","content":"<div class=\\"frontpage-slideset\\">\\r\\n\\t<img class=\\"border-box\\" src=\\"images\\/yootheme\\/demo\\/slideset\\/06.jpg\\" alt=\\"Demo\\" width=\\"50\\" height=\\"50\\" \\/>\\r\\n\\t<div class=\\"slideset-content\\">\\r\\n\\t\\t<small>Feb 28, 2012<\\/small>\\r\\n\\t\\t<h3><a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Delicious Recipes<\\/a><\\/h3>\\r\\n\\t\\tposted in <a href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">Health & Food<\\/a>\\r\\n\\t<\\/div>\\r\\n<\\/div>"}}}', '2012-01-17 16:49:53', '2012-01-30 15:32:57'),
(47, 'slideshow', 'revista_tabs', 'Frontpage Tabs', '{"type":"slideshow","id":47,"name":"Frontpage Tabs","settings":{"style":"revista_tabs","autoplay":0,"interval":5000,"width":"auto","height":182,"duration":500,"index":0,"order":"default","navigation":"left","animated":"scroll"},"style":"revista_tabs","items":{"4f169c2e90c70":{"title":"Weather","content":"<div class=\\"frontpage-weather\\">\\r\\n\\t<span class=\\"temp\\">12\\u00b0<\\/span>\\r\\n\\t<span class=\\"icon\\"><img src=\\"images\\/yootheme\\/icon_cloud.png\\" alt=\\"Icon\\" width=\\"38\\" height=\\"38\\" \\/><\\/span>\\r\\n\\t<h5>New York<\\/h5>\\r\\n\\t<span class=\\"high\\">H: 17\\u00b0<\\/span> <span class=\\"low\\">L: 8\\u00b0<\\/span>\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-weather\\">\\r\\n\\t<span class=\\"temp\\">7\\u00b0<\\/span>\\r\\n\\t<span class=\\"icon\\"><img src=\\"images\\/yootheme\\/icon_rain.png\\" alt=\\"Icon\\" width=\\"38\\" height=\\"38\\" \\/><\\/span>\\r\\n\\t<h5>Washington DC<\\/h5>\\r\\n\\t<span class=\\"high\\">H: 11\\u00b0<\\/span> <span class=\\"low\\">L: 4\\u00b0<\\/span>\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-weather\\">\\r\\n\\t<span class=\\"temp\\">24\\u00b0<\\/span>\\r\\n\\t<span class=\\"icon\\"><img src=\\"images\\/yootheme\\/icon_sun.png\\" alt=\\"Icon\\" width=\\"38\\" height=\\"38\\" \\/><\\/span>\\r\\n\\t<h5>Los Angeles<\\/h5>\\r\\n\\t<span class=\\"high\\">H: 27\\u00b0<\\/span> <span class=\\"low\\">L: 22\\u00b0<\\/span>\\r\\n<\\/div>","caption":""},"4f169c59405c3":{"title":"Stocks","content":"<div class=\\"frontpage-stocks\\">\\r\\n\\t<span class=\\"down\\"><\\/span>\\r\\n\\t<span class=\\"name\\">Dow Jones<\\/span>\\r\\n\\t<span class=\\"points\\"><strong>2.578,95<\\/strong><\\/span>\\r\\n\\t<span class=\\"percent red\\">-0,8%<\\/span>\\t\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-stocks\\">\\r\\n\\t<span class=\\"up\\"><\\/span>\\r\\n\\t<span class=\\"name\\">NASDAQ 100<\\/span>\\r\\n\\t<span class=\\"points\\"><strong>2.425,96<\\/strong><\\/span>\\r\\n\\t<span class=\\"percent green\\">+1,4%<\\/span>\\t\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-stocks\\">\\r\\n\\t<span class=\\"up\\"><\\/span>\\r\\n\\t<span class=\\"name\\">DAX<\\/span>\\r\\n\\t<span class=\\"points\\"><strong>6.390,07<\\/strong><\\/span>\\r\\n\\t<span class=\\"percent green\\">+0,6%<\\/span>\\t\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-stocks\\">\\r\\n\\t<span class=\\"down\\"><\\/span>\\r\\n\\t<span class=\\"name\\">TecDAX<\\/span>\\r\\n\\t<span class=\\"points\\"><strong>749,65<\\/strong><\\/span>\\r\\n\\t<span class=\\"percent red\\">-0,8%<\\/span>\\t\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-stocks\\">\\r\\n\\t<span class=\\"down\\"><\\/span>\\r\\n\\t<span class=\\"name\\">MDAX<\\/span>\\r\\n\\t<span class=\\"points\\"><strong>9.814,86<\\/strong><\\/span>\\r\\n\\t<span class=\\"percent red\\">-0,9%<\\/span>\\t\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-stocks\\">\\r\\n\\t<span class=\\"up\\"><\\/span>\\r\\n\\t<span class=\\"name\\">SDAX<\\/span>\\r\\n\\t<span class=\\"points\\"><strong>4.596,00<\\/strong><\\/span>\\r\\n\\t<span class=\\"percent green\\">+1,2%<\\/span>\\t\\r\\n<\\/div>"},"4f169c621aff0":{"title":"Tags","content":"<ul class=\\"tagcloud\\">\\r\\n\\t<li><a href=\\"#\\">News<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Sport<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Economy<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Science<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">History<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">People<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Politics<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Stocks<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Travel<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Technology<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Cars<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Movies<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Smartphones<\\/a><\\/li>\\r\\n<\\/ul>"}}}', '2012-01-18 10:17:42', '2012-01-30 13:06:14'),
(48, 'gallery', 'revista_default', 'Frontpage Gallery Slideshow', '{"type":"gallery","id":48,"name":"Frontpage Gallery Slideshow","settings":{"style":"revista_default","width":618,"height":292,"autoplay":1,"order":"default","interval":10000,"duration":1000,"index":0,"navigation":1,"buttons":1,"slices":20,"animated":"kenburns","caption_animation_duration":500,"lightbox":0},"style":"revista_default","paths":["\\/yootheme\\/demo\\/gallery"],"captions":{"\\/yootheme\\/demo\\/gallery\\/01.jpg":"<h2>Tulane gets first win as no1<\\/h2><p>It was the first highlight of the season for coach Matt Aalhuis'' team.<\\/p><p>The team was in trail by 8 points at the beginning of the fourth quarter but managed to win.<\\/p><p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>","\\/yootheme\\/demo\\/gallery\\/02.jpg":"<h2>Presidential Election 2012<\\/h2><p>The United States presidential election will be held on November 6, 2012.<\\/p><p>Barack Obama has announced that he will seek nomination to be the Democratic Party''s candidate in this election.<\\/p><p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>","\\/yootheme\\/demo\\/gallery\\/03.jpg":"<h2>International Documentary Award<\\/h2><p>2011 has been a great year for documentaries, so picking a list of bests is a daunting task. On February 4, 2012 the best documentaries will be honored by the Movie Association.<\\/p><p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>"},"links":{"\\/yootheme\\/demo\\/gallery\\/01.jpg":"","\\/yootheme\\/demo\\/gallery\\/02.jpg":"","\\/yootheme\\/demo\\/gallery\\/03.jpg":""}}', '2012-01-18 17:32:35', '2012-02-01 15:05:58');
INSERT INTO `kl984_widgetkit_widget` (`id`, `type`, `style`, `name`, `content`, `created`, `modified`) VALUES
(49, 'slideshow', 'revista_articles', 'Frontpage Slideshow Articles', '{"type":"slideshow","id":49,"name":"Frontpage Slideshow Articles","settings":{"style":"revista_articles","autoplay":0,"interval":5000,"width":"auto","height":260,"duration":500,"index":0,"order":"default","navigation":1,"buttons":1,"slices":20,"animated":"scroll","caption_animation_duration":500},"style":"revista_articles","items":{"4f17db4fd65e8":{"title":"News 1","content":"<div class=\\"frontpage-news\\">\\r\\n\\t<h4>Widgetkit 1.0 Released<\\/h4>\\r\\n\\tToday we are very proud to release Widgetkit 1.0, finally! We kept Widgetkit in BETA status for a long time now.\\r\\n\\t<p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-news\\">\\r\\n\\t<h4>YOOtheme Relaunch<\\/h4>\\r\\n\\tSince we launched YOOtheme back in 2007 we''ve used our website design for almost 5 years now. We thought it''s time for a change.\\r\\n\\t<p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>\\r\\n<\\/div>","caption":""},"4f17db610e4a2":{"title":"News 2","content":"<div class=\\"frontpage-news\\">\\r\\n\\t<h4>New Company Pages<\\/h4>\\r\\n\\tWith our new company pages we want you to meet the YOOtheme team and the support crew. Check it out now.\\r\\n\\t<p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-news\\">\\r\\n\\t<h4>Warp 6.1 Released<\\/h4>\\r\\n\\tWe are proud to announce the next milestone: Our Warp 6.1 framework version is released. Let''s have a closer look at it.\\r\\n\\t<p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>\\r\\n<\\/div>","caption":""},"4f17db69ba0cd":{"title":"News 3","content":"<div class=\\"frontpage-news\\">\\r\\n\\t<h4>ZOO 2.5 STABLE released<\\/h4>\\r\\n\\tToday we are excited to announce that ZOO 2.5 is stable now! As always a big thank you to all of our BETA testers! \\r\\n\\t<p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\"frontpage-news\\">\\r\\n\\t<h4>Blog Icon Set<\\/h4>\\r\\n\\tWe are proud to present a new club icon set release. It includes some very nice icons. Check them out now!\\r\\n\\t<p><a class=\\"button-more\\" href=\\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107\\">read more<\\/a><\\/p>\\r\\n<\\/div>","caption":""}}}', '2012-01-19 08:58:58', '2012-01-30 15:28:12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
