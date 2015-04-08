-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2015 at 10:56 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `we2015`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-03-16 16:41:36', '2015-03-16 16:41:36', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/we2015', 'yes'),
(2, 'home', 'http://localhost/we2015', 'yes'),
(3, 'blogname', 'Lara Jade', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luka.manola@hotmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '4', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:59:"D:\\xampp\\htdocs\\we2015/wp-content/themes/LaraJade/style.css";i:1;s:0:"";}', 'no'),
(41, 'template', 'LaraJade', 'yes'),
(42, 'stylesheet', 'LaraJade', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1428554500;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1428564720;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1428597830;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1428599632;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.1";s:7:"version";s:5:"4.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1428511333;s:15:"version_checked";s:5:"4.1.1";s:12:"translations";a:0:{}}', 'yes'),
(103, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1428524922;s:7:"checked";a:4:{s:8:"LaraJade";s:0:"";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(104, '_transient_random_seed', '75c7dfbad101c02634e49f5b71db143d', 'yes'),
(106, '_site_transient_timeout_browser_449494f0a2343fa58d5b61f42652b0f9', '1427129029', 'yes'),
(107, '_site_transient_browser_449494f0a2343fa58d5b61f42652b0f9', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"41.0.2272.89";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'can_compress_scripts', '1', 'yes'),
(118, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1426524233;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(119, 'current_theme', '', 'yes'),
(120, 'theme_mods_LaraJade', 'a:1:{i:0;b:0;}', 'yes'),
(121, 'theme_switched', '', 'yes'),
(143, '_site_transient_timeout_browser_b96cd9f83287661b914828235f74b697', '1428531309', 'yes'),
(144, '_site_transient_browser_b96cd9f83287661b914828235f74b697', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.101";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(163, '_transient_twentyfifteen_categories', '1', 'yes'),
(171, '_site_transient_timeout_browser_28a852a08789958a28a252919317792b', '1428570427', 'yes'),
(172, '_site_transient_browser_28a852a08789958a28a252919317792b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.118";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(195, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1428524893;}', 'yes'),
(221, 'recently_activated', 'a:0:{}', 'yes'),
(225, 'auto_updater.lock', '1428524893', 'no'),
(235, 'category_children', 'a:0:{}', 'yes'),
(243, 'WPLANG', '', 'yes'),
(248, '_transient_timeout_plugin_slugs', '1428576681', 'no'),
(249, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(250, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1428533481', 'no'),
(251, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: A valid URL was not provided.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Failed to connect to planet.wordpress.org port 443: Timed out</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(255, '_transient_doing_cron', '1428524892.5846290588378906250000', 'yes'),
(257, '_site_transient_timeout_theme_roots', '1428526722', 'yes'),
(258, '_site_transient_theme_roots', 'a:4:{s:8:"LaraJade";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1428428002:1'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1428276126:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1428276119:1'),
(8, 1, '_edit_lock', '1428360595:1'),
(9, 10, '_wp_attached_file', '2015/03/b4.png'),
(10, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:1667;s:4:"file";s:14:"2015/03/b4.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"b4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"b4-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:15:"b4-1024x683.png";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(11, 11, '_wp_attached_file', '2015/03/b1.jpg'),
(12, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:966;s:6:"height";i:543;s:4:"file";s:14:"2015/03/b1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"b1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"b1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(13, 12, '_wp_attached_file', '2015/03/b2.png'),
(14, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:196;s:6:"height";i:195;s:4:"file";s:14:"2015/03/b2.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"b2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(15, 13, '_wp_attached_file', '2015/03/b3.jpg'),
(16, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:580;s:6:"height";i:326;s:4:"file";s:14:"2015/03/b3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"b3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"b3-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(17, 1, '_thumbnail_id', '11'),
(18, 1, '_edit_last', '1'),
(21, 16, '_edit_last', '1'),
(22, 16, '_edit_lock', '1428360628:1'),
(23, 16, '_thumbnail_id', '12'),
(25, 18, '_edit_last', '1'),
(26, 18, '_edit_lock', '1428360658:1'),
(27, 18, '_thumbnail_id', '13'),
(29, 20, '_edit_last', '1'),
(30, 20, '_edit_lock', '1428363876:1'),
(31, 20, '_thumbnail_id', '10'),
(33, 22, '_edit_last', '1'),
(35, 22, '_edit_lock', '1426528431:1'),
(36, 22, '_wp_trash_meta_status', 'publish'),
(37, 22, '_wp_trash_meta_time', '1426528576'),
(38, 2, '_edit_lock', '1428524847:1'),
(39, 27, '_edit_last', '1'),
(41, 27, '_edit_lock', '1427978710:1'),
(42, 27, '_wp_trash_meta_status', 'publish'),
(43, 27, '_wp_trash_meta_time', '1428272972'),
(44, 2, '_edit_last', '1'),
(49, 48, '_edit_last', '1'),
(50, 48, '_edit_lock', '1428361661:1'),
(52, 48, '_wp_trash_meta_status', 'publish'),
(53, 48, '_wp_trash_meta_time', '1428361810'),
(54, 50, '_edit_last', '1'),
(55, 50, '_edit_lock', '1428422833:1'),
(56, 52, '_edit_last', '1'),
(58, 52, '_edit_lock', '1428453749:1'),
(59, 54, '_edit_last', '1'),
(61, 54, '_edit_lock', '1428453765:1'),
(62, 56, '_edit_last', '1'),
(64, 56, '_edit_lock', '1428453782:1'),
(65, 58, '_edit_last', '1'),
(67, 58, '_edit_lock', '1428454421:1'),
(68, 58, '_wp_trash_meta_status', 'publish'),
(69, 58, '_wp_trash_meta_time', '1428490296'),
(70, 56, '_wp_trash_meta_status', 'publish'),
(71, 56, '_wp_trash_meta_time', '1428490296'),
(72, 54, '_wp_trash_meta_status', 'publish'),
(73, 54, '_wp_trash_meta_time', '1428490296'),
(74, 52, '_wp_trash_meta_status', 'publish'),
(75, 52, '_wp_trash_meta_time', '1428490296'),
(76, 50, '_wp_trash_meta_status', 'publish'),
(77, 50, '_wp_trash_meta_time', '1428490296'),
(78, 60, '_edit_last', '1'),
(79, 60, '_edit_lock', '1428490280:1'),
(80, 61, '_wp_attached_file', '2015/04/aa2.jpg'),
(81, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:425;s:4:"file";s:15:"2015/04/aa2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"aa2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"aa2-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(82, 60, '_thumbnail_id', '61'),
(84, 63, '_edit_last', '1'),
(85, 63, '_edit_lock', '1428490456:1'),
(86, 64, '_wp_attached_file', '2015/04/blog_Mockup.png'),
(87, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1364;s:6:"height";i:1056;s:4:"file";s:23:"2015/04/blog_Mockup.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"blog_Mockup-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"blog_Mockup-300x232.png";s:5:"width";i:300;s:6:"height";i:232;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"blog_Mockup-1024x793.png";s:5:"width";i:1024;s:6:"height";i:793;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(91, 68, '_wp_attached_file', '2015/04/contactme_Mockup.png'),
(92, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1372;s:6:"height";i:1056;s:4:"file";s:28:"2015/04/contactme_Mockup.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"contactme_Mockup-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"contactme_Mockup-300x231.png";s:5:"width";i:300;s:6:"height";i:231;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"contactme_Mockup-1024x788.png";s:5:"width";i:1024;s:6:"height";i:788;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(93, 63, '_thumbnail_id', '68'),
(95, 69, '_edit_last', '1'),
(96, 69, '_edit_lock', '1428490514:1'),
(97, 69, '_thumbnail_id', '64'),
(99, 71, '_edit_last', '1'),
(100, 71, '_edit_lock', '1428490548:1'),
(101, 72, '_wp_attached_file', '2015/04/index_Mockup.png'),
(102, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1372;s:6:"height";i:1068;s:4:"file";s:24:"2015/04/index_Mockup.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"index_Mockup-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"index_Mockup-300x234.png";s:5:"width";i:300;s:6:"height";i:234;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"index_Mockup-1024x797.png";s:5:"width";i:1024;s:6:"height";i:797;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(103, 71, '_thumbnail_id', '72'),
(105, 74, '_edit_last', '1'),
(106, 74, '_edit_lock', '1428490598:1'),
(107, 75, '_wp_attached_file', '2015/04/portfolio_Mockup.png'),
(108, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1388;s:6:"height";i:1072;s:4:"file";s:28:"2015/04/portfolio_Mockup.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"portfolio_Mockup-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"portfolio_Mockup-300x232.png";s:5:"width";i:300;s:6:"height";i:232;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"portfolio_Mockup-1024x791.png";s:5:"width";i:1024;s:6:"height";i:791;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(109, 74, '_thumbnail_id', '75'),
(110, 77, '_edit_last', '1'),
(111, 77, '_edit_lock', '1428509456:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-03-16 16:41:36', '2015-03-16 16:41:36', 'Over the previous year, the Polymer team has spent a lot of time teaching developers how to create their own elements. This has lead to a rapidly growing ecosystem, buoyed in large part by Polymer’s Core and Paper elements, and the Brick elements created by the team at Mozilla.!\r\n\r\n<!--more-->', 'Let’s build some apps with Polymer!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-06 22:52:08', '2015-04-06 22:52:08', '', 0, 'http://kerr.ethz.ch/we2015/?p=1', 0, 'post', '', 1),
(2, 1, '2015-03-16 16:41:36', '2015-03-16 16:41:36', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more-->is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-04-06 23:08:17', '2015-04-06 23:08:17', '', 0, 'http://kerr.ethz.ch/we2015/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-03-16 17:14:01', '2015-03-16 17:14:01', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2015-03-16 17:14:01', '2015-03-16 17:14:01', '', 0, 'http://kerr.ethz.ch/we2015/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-03-16 17:14:01', '2015-03-16 17:14:01', '', 'Blog', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-03-16 17:14:01', '2015-03-16 17:14:01', '', 4, 'http://kerr.ethz.ch/we2015/?p=5', 0, 'revision', '', 0),
(6, 1, '2015-03-16 17:14:06', '2015-03-16 17:14:06', '', 'Portfolio', '', 'publish', 'open', 'open', '', 'portfolio', '', '', '2015-03-16 17:14:06', '2015-03-16 17:14:06', '', 0, 'http://kerr.ethz.ch/we2015/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-03-16 17:14:06', '2015-03-16 17:14:06', '', 'Portfolio', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-03-16 17:14:06', '2015-03-16 17:14:06', '', 6, 'http://kerr.ethz.ch/we2015/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-03-16 17:14:14', '2015-03-16 17:14:14', '', 'Contact us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2015-03-16 17:14:14', '2015-03-16 17:14:14', '', 0, 'http://kerr.ethz.ch/we2015/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-03-16 17:14:14', '2015-03-16 17:14:14', '', 'Contact us', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-03-16 17:14:14', '2015-03-16 17:14:14', '', 8, 'http://kerr.ethz.ch/we2015/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-03-16 17:41:11', '2015-03-16 17:41:11', '', 'b4', '', 'inherit', 'open', 'open', '', 'b4', '', '', '2015-03-16 17:41:11', '2015-03-16 17:41:11', '', 1, 'http://kerr.ethz.ch/we2015/wp-content/uploads/2015/03/b4.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2015-03-16 17:41:12', '2015-03-16 17:41:12', '', 'b1', '', 'inherit', 'open', 'open', '', 'b1', '', '', '2015-03-16 17:41:12', '2015-03-16 17:41:12', '', 1, 'http://kerr.ethz.ch/we2015/wp-content/uploads/2015/03/b1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2015-03-16 17:41:12', '2015-03-16 17:41:12', '', 'b2', '', 'inherit', 'open', 'open', '', 'b2', '', '', '2015-03-16 17:41:12', '2015-03-16 17:41:12', '', 1, 'http://kerr.ethz.ch/we2015/wp-content/uploads/2015/03/b2.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2015-03-16 17:41:12', '2015-03-16 17:41:12', '', 'b3', '', 'inherit', 'open', 'open', '', 'b3', '', '', '2015-03-16 17:41:12', '2015-03-16 17:41:12', '', 1, 'http://kerr.ethz.ch/we2015/wp-content/uploads/2015/03/b3.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2015-03-16 17:41:18', '2015-03-16 17:41:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-03-16 17:41:18', '2015-03-16 17:41:18', '', 1, 'http://kerr.ethz.ch/we2015/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-03-16 17:44:18', '2015-03-16 17:44:18', 'Over the previous year, the Polymer team has spent a lot of time teaching developers how to create their own elements. This has lead to a rapidly growing ecosystem, buoyed in large part by Polymer’s Core and Paper elements, and the Brick elements created by the team at Mozilla.!', 'Let’s build some apps with Polymer!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-03-16 17:44:18', '2015-03-16 17:44:18', '', 1, 'http://kerr.ethz.ch/we2015/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-03-16 17:44:56', '2015-03-16 17:44:56', 'Earlier this year, Chrome 36 landed the element.animate method as a part of the broader Web Animations spec. This allows for efficient, native animations written imperatively - giving developers the choice to build their animations and transitions with the most suitable.\r\n\r\n<!--more-->', 'Web Animations Playback Control in Chrome 39', '', 'publish', 'open', 'open', '', 'web-animations-playback-control-in-chrome-39', '', '', '2015-04-06 22:52:44', '2015-04-06 22:52:44', '', 0, 'http://kerr.ethz.ch/we2015/?p=16', 0, 'post', '', 0),
(17, 1, '2015-03-16 17:44:56', '2015-03-16 17:44:56', 'Earlier this year, Chrome 36 landed the element.animate method as a part of the broader Web Animations spec. This allows for efficient, native animations written imperatively - giving developers the choice to build their animations and transitions with the most suitable.', 'Web Animations Playback Control in Chrome 39', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-03-16 17:44:56', '2015-03-16 17:44:56', '', 16, 'http://kerr.ethz.ch/we2015/?p=17', 0, 'revision', '', 0),
(18, 1, '2015-03-16 17:45:14', '2015-03-16 17:45:14', 'At Chrome Dev Summit 2014 there was a whole host of topics and brand spanking new API’s covered, but its not all about the new and shiny. If you are a new Web Developer or even an experienced developer about to embark on exploring new APIs, chances are you’ll follow these three steps: learn, build and iterate.\r\n\r\n<!--more-->', 'Fundamentals of Mobile Web Development', '', 'publish', 'open', 'open', '', 'fundamentals-of-mobile-web-development', '', '', '2015-04-06 22:53:13', '2015-04-06 22:53:13', '', 0, 'http://kerr.ethz.ch/we2015/?p=18', 0, 'post', '', 0),
(19, 1, '2015-03-16 17:45:14', '2015-03-16 17:45:14', 'At Chrome Dev Summit 2014 there was a whole host of topics and brand spanking new API’s covered, but its not all about the new and shiny. If you are a new Web Developer or even an experienced developer about to embark on exploring new APIs, chances are you’ll follow these three steps: learn, build and iterate.', 'Fundamentals of Mobile Web Development', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-03-16 17:45:14', '2015-03-16 17:45:14', '', 18, 'http://kerr.ethz.ch/we2015/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-03-16 17:45:27', '2015-03-16 17:45:27', 'As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\n<!--more-->\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?', 'image-rendering: pixelated', '', 'publish', 'open', 'open', '', 'image-rendering-pixelated', '', '', '2015-04-06 22:54:33', '2015-04-06 22:54:33', '', 0, 'http://kerr.ethz.ch/we2015/?p=20', 0, 'post', '', 0),
(21, 1, '2015-03-16 17:45:27', '2015-03-16 17:45:27', 'As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?', 'image-rendering: pixelated', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-03-16 17:45:27', '2015-03-16 17:45:27', '', 20, 'http://kerr.ethz.ch/we2015/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-03-16 17:46:03', '2015-03-16 17:46:03', '', 'test', '', 'trash', 'open', 'open', '', 'test', '', '', '2015-03-16 17:56:16', '2015-03-16 17:56:16', '', 0, 'http://kerr.ethz.ch/we2015/?p=22', 0, 'post', '', 0),
(23, 1, '2015-03-16 17:46:03', '2015-03-16 17:46:03', '', 'test', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2015-03-16 17:46:03', '2015-03-16 17:46:03', '', 22, 'http://kerr.ethz.ch/we2015/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-03-16 18:29:29', '2015-03-16 18:29:29', 'As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\n&nbsp;\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\n&nbsp;\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?', 'image-rendering: pixelated', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-03-16 18:29:29', '2015-03-16 18:29:29', '', 20, 'http://kerr.ethz.ch/we2015/?p=24', 0, 'revision', '', 0),
(25, 1, '2015-03-16 18:30:11', '2015-03-16 18:30:11', 'As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?', 'image-rendering: pixelated', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-03-16 18:30:11', '2015-03-16 18:30:11', '', 20, 'http://kerr.ethz.ch/we2015/?p=25', 0, 'revision', '', 0),
(26, 1, '2015-04-01 22:15:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-01 22:15:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/we2015/?p=26', 0, 'post', '', 0),
(27, 1, '2015-04-02 12:45:27', '2015-04-02 12:45:27', 'Test', 'Test', '', 'trash', 'open', 'open', '', 'test-2', '', '', '2015-04-05 22:29:32', '2015-04-05 22:29:32', '', 0, 'http://localhost/we2015/?p=27', 0, 'post', '', 0),
(28, 1, '2015-04-02 12:45:27', '2015-04-02 12:45:27', 'Test', 'Test', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-04-02 12:45:27', '2015-04-02 12:45:27', '', 27, 'http://localhost/we2015/?p=28', 0, 'revision', '', 0),
(29, 1, '2015-04-06 00:00:25', '2015-04-06 00:00:25', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more-->is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\n\n&nbsp;\n\nThat´s enough of talking about myself in the third person.\n\n&nbsp;\n\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\n\n&nbsp;\n\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2015-04-06 00:00:25', '2015-04-06 00:00:25', '', 2, 'http://localhost/we2015/?p=29', 0, 'revision', '', 0),
(30, 1, '2015-04-05 22:48:19', '2015-04-05 22:48:19', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 22:48:19', '2015-04-05 22:48:19', '', 2, 'http://localhost/we2015/?p=30', 0, 'revision', '', 0),
(31, 1, '2015-04-05 22:55:13', '2015-04-05 22:55:13', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 22:55:13', '2015-04-05 22:55:13', '', 2, 'http://localhost/we2015/?p=31', 0, 'revision', '', 0),
(32, 1, '2015-04-05 23:01:35', '2015-04-05 23:01:35', 'is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 23:01:35', '2015-04-05 23:01:35', '', 2, 'http://localhost/we2015/?p=32', 0, 'revision', '', 0),
(33, 1, '2015-04-05 23:01:59', '2015-04-05 23:01:59', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 23:01:59', '2015-04-05 23:01:59', '', 2, 'http://localhost/we2015/?p=33', 0, 'revision', '', 0),
(34, 1, '2015-04-05 23:04:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-05 23:04:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/we2015/?page_id=34', 0, 'page', '', 0),
(35, 1, '2015-04-05 23:15:28', '2015-04-05 23:15:28', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more--> is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 23:15:28', '2015-04-05 23:15:28', '', 2, 'http://localhost/we2015/?p=35', 0, 'revision', '', 0),
(36, 1, '2015-04-05 23:18:09', '2015-04-05 23:18:09', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more--> is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.\r\n\r\n&nbsp;\r\n\r\nTEST', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 23:18:09', '2015-04-05 23:18:09', '', 2, 'http://localhost/we2015/?p=36', 0, 'revision', '', 0),
(37, 1, '2015-04-05 23:19:04', '2015-04-05 23:19:04', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more--> is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 23:19:04', '2015-04-05 23:19:04', '', 2, 'http://localhost/we2015/?p=37', 0, 'revision', '', 0),
(38, 1, '2015-04-05 23:35:43', '2015-04-05 23:35:43', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and<!--more-->is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 23:35:43', '2015-04-05 23:35:43', '', 2, 'http://localhost/we2015/?p=38', 0, 'revision', '', 0),
(39, 1, '2015-04-05 23:47:06', '2015-04-05 23:47:06', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more-->is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 23:47:06', '2015-04-05 23:47:06', '', 2, 'http://localhost/we2015/?p=39', 0, 'revision', '', 0),
(40, 1, '2015-04-05 23:59:22', '2015-04-05 23:59:22', 'Luka is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more-->is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-05 23:59:22', '2015-04-05 23:59:22', '', 2, 'http://localhost/we2015/?p=40', 0, 'revision', '', 0),
(41, 1, '2015-04-06 00:00:28', '2015-04-06 00:00:28', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more-->is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-06 00:00:28', '2015-04-06 00:00:28', '', 2, 'http://localhost/we2015/?p=41', 0, 'revision', '', 0),
(42, 1, '2015-04-06 22:52:08', '2015-04-06 22:52:08', 'Over the previous year, the Polymer team has spent a lot of time teaching developers how to create their own elements. This has lead to a rapidly growing ecosystem, buoyed in large part by Polymer’s Core and Paper elements, and the Brick elements created by the team at Mozilla.!\r\n\r\n<!--more-->', 'Let’s build some apps with Polymer!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-04-06 22:52:08', '2015-04-06 22:52:08', '', 1, 'http://localhost/we2015/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-04-06 22:52:44', '2015-04-06 22:52:44', 'Earlier this year, Chrome 36 landed the element.animate method as a part of the broader Web Animations spec. This allows for efficient, native animations written imperatively - giving developers the choice to build their animations and transitions with the most suitable.\r\n\r\n<!--more-->', 'Web Animations Playback Control in Chrome 39', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-04-06 22:52:44', '2015-04-06 22:52:44', '', 16, 'http://localhost/we2015/?p=43', 0, 'revision', '', 0),
(44, 1, '2015-04-06 22:53:13', '2015-04-06 22:53:13', 'At Chrome Dev Summit 2014 there was a whole host of topics and brand spanking new API’s covered, but its not all about the new and shiny. If you are a new Web Developer or even an experienced developer about to embark on exploring new APIs, chances are you’ll follow these three steps: learn, build and iterate.\r\n\r\n<!--more-->', 'Fundamentals of Mobile Web Development', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-04-06 22:53:13', '2015-04-06 22:53:13', '', 18, 'http://localhost/we2015/?p=44', 0, 'revision', '', 0),
(45, 1, '2015-04-06 22:54:33', '2015-04-06 22:54:33', 'As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\n<!--more-->\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?\r\n\r\nAs web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?', 'image-rendering: pixelated', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-06 22:54:33', '2015-04-06 22:54:33', '', 20, 'http://localhost/we2015/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-04-06 23:07:35', '2015-04-06 23:07:35', 'Luka is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more-->is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-06 23:07:35', '2015-04-06 23:07:35', '', 2, 'http://localhost/we2015/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-04-06 23:08:17', '2015-04-06 23:08:17', 'Lara is a freelance web designer with satisfied clients worldwide. Lara has been designing websites professionally for over eight years, and <!--more-->is very keen on personal service. I would describe Lara as a spiritual fast learning generalist with a passion for remarkable design.\r\n\r\n&nbsp;\r\n\r\nThat´s enough of talking about myself in the third person.\r\n\r\n&nbsp;\r\n\r\nAt first I intended to be an animator and went to design school fully motivated to become just that. One thing led to another and 2 years went by and I was a (almost) fully fledged freelance web designer without ever planning to become one.\r\n\r\n&nbsp;\r\n\r\nI have sucessfully been a freelance web designer now for a while and it has given me even more love for this work. I have worked with ad agencies, web developers, diaper makers, pension funds, furniture makers, businiess women &amp; men, friends &amp; family.', 'Homepage', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-06 23:08:17', '2015-04-06 23:08:17', '', 2, 'http://localhost/we2015/?p=47', 0, 'revision', '', 0),
(48, 1, '2015-04-06 23:09:24', '2015-04-06 23:09:24', 'test', 'Test', '', 'trash', 'open', 'open', '', 'test-3', '', '', '2015-04-06 23:10:10', '2015-04-06 23:10:10', '', 0, 'http://localhost/we2015/?p=48', 0, 'post', '', 0),
(49, 1, '2015-04-06 23:09:24', '2015-04-06 23:09:24', 'test', 'Test', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-04-06 23:09:24', '2015-04-06 23:09:24', '', 48, 'http://localhost/we2015/?p=49', 0, 'revision', '', 0),
(50, 1, '2015-04-07 16:03:57', '2015-04-07 16:03:57', 'this is a testing post', 'Test', '', 'trash', 'open', 'open', '', 'test-4', '', '', '2015-04-08 10:51:36', '2015-04-08 10:51:36', '', 0, 'http://localhost/we2015/?p=50', 0, 'post', '', 0),
(51, 1, '2015-04-07 16:03:57', '2015-04-07 16:03:57', 'this is a testing post', 'Test', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-04-07 16:03:57', '2015-04-07 16:03:57', '', 50, 'http://localhost/we2015/?p=51', 0, 'revision', '', 0),
(52, 1, '2015-04-08 00:44:45', '2015-04-08 00:44:45', '', 'Test2', '', 'trash', 'open', 'open', '', 'test2', '', '', '2015-04-08 10:51:36', '2015-04-08 10:51:36', '', 0, 'http://localhost/we2015/?p=52', 0, 'post', '', 0),
(53, 1, '2015-04-08 00:44:45', '2015-04-08 00:44:45', '', 'Test2', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2015-04-08 00:44:45', '2015-04-08 00:44:45', '', 52, 'http://localhost/we2015/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-04-08 00:45:02', '2015-04-08 00:45:02', '', 'Test3', '', 'trash', 'open', 'open', '', 'test3', '', '', '2015-04-08 10:51:36', '2015-04-08 10:51:36', '', 0, 'http://localhost/we2015/?p=54', 0, 'post', '', 0),
(55, 1, '2015-04-08 00:45:02', '2015-04-08 00:45:02', '', 'Test3', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2015-04-08 00:45:02', '2015-04-08 00:45:02', '', 54, 'http://localhost/we2015/?p=55', 0, 'revision', '', 0),
(56, 1, '2015-04-08 00:45:18', '2015-04-08 00:45:18', '', 'Test4', '', 'trash', 'open', 'open', '', 'test4', '', '', '2015-04-08 10:51:36', '2015-04-08 10:51:36', '', 0, 'http://localhost/we2015/?p=56', 0, 'post', '', 0),
(57, 1, '2015-04-08 00:45:18', '2015-04-08 00:45:18', '', 'Test4', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-04-08 00:45:18', '2015-04-08 00:45:18', '', 56, 'http://localhost/we2015/?p=57', 0, 'revision', '', 0),
(58, 1, '2015-04-08 00:45:37', '2015-04-08 00:45:37', '', 'Test5', '', 'trash', 'open', 'open', '', 'test5', '', '', '2015-04-08 10:51:36', '2015-04-08 10:51:36', '', 0, 'http://localhost/we2015/?p=58', 0, 'post', '', 0),
(59, 1, '2015-04-08 00:45:37', '2015-04-08 00:45:37', '', 'Test5', '', 'inherit', 'open', 'open', '', '58-revision-v1', '', '', '2015-04-08 00:45:37', '2015-04-08 00:45:37', '', 58, 'http://localhost/we2015/?p=59', 0, 'revision', '', 0),
(60, 1, '2015-04-08 10:53:19', '2015-04-08 10:53:19', 'Last semester I had more free time and could travel.', 'Beautiful Scenery', '', 'publish', 'open', 'open', '', 'beautiful-scenery', '', '', '2015-04-08 10:53:19', '2015-04-08 10:53:19', '', 0, 'http://localhost/we2015/?p=60', 0, 'post', '', 0),
(61, 1, '2015-04-08 10:52:45', '2015-04-08 10:52:45', '', 'aa2', '', 'inherit', 'open', 'open', '', 'aa2', '', '', '2015-04-08 10:52:45', '2015-04-08 10:52:45', '', 60, 'http://localhost/we2015/wp-content/uploads/2015/04/aa2.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2015-04-08 10:53:19', '2015-04-08 10:53:19', 'Last semester I had more free time and could travel.', 'Beautiful Scenery', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-04-08 10:53:19', '2015-04-08 10:53:19', '', 60, 'http://localhost/we2015/?p=62', 0, 'revision', '', 0),
(63, 1, '2015-04-08 10:55:00', '2015-04-08 10:55:00', 'This is how Contact Us page was designed in designer studio. Using my skills I coded the page.', 'Contact Us Mockup', '', 'publish', 'open', 'open', '', 'blog-mockup', '', '', '2015-04-08 10:56:38', '2015-04-08 10:56:38', '', 0, 'http://localhost/we2015/?p=63', 0, 'post', '', 0),
(64, 1, '2015-04-08 10:54:51', '2015-04-08 10:54:51', '', 'blog_Mockup', '', 'inherit', 'open', 'open', '', 'blog_mockup', '', '', '2015-04-08 10:54:51', '2015-04-08 10:54:51', '', 63, 'http://localhost/we2015/wp-content/uploads/2015/04/blog_Mockup.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2015-04-08 10:55:00', '2015-04-08 10:55:00', 'This is how Blow page was designed in designer studio. Using my skills I coded the page.', 'Blog Mockup', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2015-04-08 10:55:00', '2015-04-08 10:55:00', '', 63, 'http://localhost/we2015/?p=65', 0, 'revision', '', 0),
(66, 1, '2015-04-08 10:55:20', '2015-04-08 10:55:20', 'This is how Contact Us page was designed in designer studio. Using my skills I coded the page.', 'Contact Us Mockup', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2015-04-08 10:55:20', '2015-04-08 10:55:20', '', 63, 'http://localhost/we2015/?p=66', 0, 'revision', '', 0),
(67, 1, '2015-04-08 10:55:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-08 10:55:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/we2015/?p=67', 0, 'post', '', 0),
(68, 1, '2015-04-08 10:56:27', '2015-04-08 10:56:27', '', 'contactme_Mockup', '', 'inherit', 'open', 'open', '', 'contactme_mockup', '', '', '2015-04-08 10:56:27', '2015-04-08 10:56:27', '', 63, 'http://localhost/we2015/wp-content/uploads/2015/04/contactme_Mockup.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2015-04-08 10:57:03', '2015-04-08 10:57:03', 'This is how Blog page was designed in designer studio. Using my skills I coded the page.', 'Blog Mockup', '', 'publish', 'open', 'open', '', 'blog-mockup-2', '', '', '2015-04-08 10:57:03', '2015-04-08 10:57:03', '', 0, 'http://localhost/we2015/?p=69', 0, 'post', '', 0),
(70, 1, '2015-04-08 10:57:03', '2015-04-08 10:57:03', 'This is how Blog page was designed in designer studio. Using my skills I coded the page.', 'Blog Mockup', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2015-04-08 10:57:03', '2015-04-08 10:57:03', '', 69, 'http://localhost/we2015/?p=70', 0, 'revision', '', 0),
(71, 1, '2015-04-08 10:58:08', '2015-04-08 10:58:08', 'This is how Index page was designed in designer studio. Using my skills I coded the page.', 'Index Mockup', '', 'publish', 'open', 'open', '', 'index-mockup', '', '', '2015-04-08 10:58:08', '2015-04-08 10:58:08', '', 0, 'http://localhost/we2015/?p=71', 0, 'post', '', 0),
(72, 1, '2015-04-08 10:58:02', '2015-04-08 10:58:02', '', 'index_Mockup', '', 'inherit', 'open', 'open', '', 'index_mockup', '', '', '2015-04-08 10:58:02', '2015-04-08 10:58:02', '', 71, 'http://localhost/we2015/wp-content/uploads/2015/04/index_Mockup.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2015-04-08 10:58:08', '2015-04-08 10:58:08', 'This is how Index page was designed in designer studio. Using my skills I coded the page.', 'Index Mockup', '', 'inherit', 'open', 'open', '', '71-revision-v1', '', '', '2015-04-08 10:58:08', '2015-04-08 10:58:08', '', 71, 'http://localhost/we2015/?p=73', 0, 'revision', '', 0),
(74, 1, '2015-04-08 10:58:39', '2015-04-08 10:58:39', 'This is how Portfolio page was designed in designer studio. Using my skills I coded the page.', 'Portfolio Mockup', '', 'publish', 'open', 'open', '', 'portfolio-mockup', '', '', '2015-04-08 10:58:39', '2015-04-08 10:58:39', '', 0, 'http://localhost/we2015/?p=74', 0, 'post', '', 0),
(75, 1, '2015-04-08 10:58:34', '2015-04-08 10:58:34', '', 'portfolio_Mockup', '', 'inherit', 'open', 'open', '', 'portfolio_mockup', '', '', '2015-04-08 10:58:34', '2015-04-08 10:58:34', '', 74, 'http://localhost/we2015/wp-content/uploads/2015/04/portfolio_Mockup.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2015-04-08 10:58:39', '2015-04-08 10:58:39', 'This is how Portfolio page was designed in designer studio. Using my skills I coded the page.', 'Portfolio Mockup', '', 'inherit', 'open', 'open', '', '74-revision-v1', '', '', '2015-04-08 10:58:39', '2015-04-08 10:58:39', '', 74, 'http://localhost/we2015/?p=76', 0, 'revision', '', 0),
(77, 1, '2015-04-08 16:13:17', '2015-04-08 16:13:17', '', 'Blog Single Post', '', 'publish', 'open', 'open', '', 'blog-single-post', '', '', '2015-04-08 16:13:17', '2015-04-08 16:13:17', '', 0, 'http://localhost/we2015/?page_id=77', 0, 'page', '', 0),
(78, 1, '2015-04-08 16:13:17', '2015-04-08 16:13:17', '', 'Blog Single Post', '', 'inherit', 'open', 'open', '', '77-revision-v1', '', '', '2015-04-08 16:13:17', '2015-04-08 16:13:17', '', 77, 'http://localhost/we2015/?p=78', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 1, 0),
(18, 1, 0),
(20, 1, 0),
(22, 1, 0),
(27, 1, 0),
(48, 1, 0),
(50, 1, 0),
(52, 1, 0),
(54, 1, 0),
(56, 1, 0),
(58, 1, 0),
(60, 1, 0),
(63, 1, 0),
(69, 1, 0),
(71, 1, 0),
(74, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'Blog posts', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:7:{s:64:"b3abbaf38cce8a645067944c3395ba84e0e453b4c0cff9f262a39846bec65c20";a:4:{s:10:"expiration";i:1429480049;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428270449;}s:64:"edb99d06f78a68e29516e3e1af3d7dbc09cd5c0f24645085ba6676b9df822537";a:4:{s:10:"expiration";i:1428532785;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428359985;}s:64:"0fba9135b8d3f6640e5bc6ae3b87b5342ae6c4e7ec65c158f23198928800f503";a:4:{s:10:"expiration";i:1428595407;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428422607;}s:64:"5fa02eae955ed3ceda3152cd6c5f680cfd31baa7a76c557a3ce07c7d63af9dd1";a:4:{s:10:"expiration";i:1428618467;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428445667;}s:64:"686c1c3806712e46d27e20a328b2a117dcf63b37dc7c1174b5430cc0412f732f";a:4:{s:10:"expiration";i:1428663070;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428490270;}s:64:"b833446179d9552db5512ad63d2ef12568019de824beb992408b89bc6243bf60";a:4:{s:10:"expiration";i:1428682371;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428509571;}s:64:"8a2c5491e2deea0d41176fbdb651aae492a10316fa8caef1df7d5ec926c35d3f";a:4:{s:10:"expiration";i:1428697766;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428524966;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '26'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&post_dfw=off&editor=tinymce&hidetb=1'),
(17, 1, 'wp_user-settings-time', '1428445663');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BqBAQE1jupOfaRRA.DUBkCoR96KBC11', 'admin', 'asfnafnasf@agaf.com', '', '2015-03-16 16:41:36', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=259;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
