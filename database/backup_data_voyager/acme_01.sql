-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table acme_01.categories: ~2 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, NULL, 1, 'Category 1', 'category-1', '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(2, NULL, 1, 'Category 2', 'category-2', '2019-03-31 08:21:11', '2019-03-31 08:21:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping data for table acme_01.data_rows: ~74 rows (approximately)
DELETE FROM `data_rows`;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
	(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
	(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
	(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
	(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
	(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
	(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
	(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
	(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
	(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
	(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
	(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
	(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
	(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
	(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
	(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
	(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
	(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
	(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
	(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
	(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
	(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
	(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
	(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
	(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
	(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
	(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
	(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
	(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
	(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
	(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
	(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
	(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
	(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
	(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(58, 7, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{"palceholder":"1","validation":{"rule":"required|numeric"}}', 2),
	(59, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{"palceholder":"Laptop,PC,..","validation":{"rule":"required|unique:product_categories"}}', 3),
	(60, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true},"validation":{"rule":"required|unique:product_categories"}}', 4),
	(61, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 1, '{}', 5),
	(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
	(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
	(64, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(65, 8, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{"validation":{"rule":"required|numeric"}}', 2),
	(66, 8, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required|unique:products"}}', 3),
	(67, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required|unique:products"}}', 4),
	(68, 8, 'brief', 'text', 'Brief', 0, 1, 1, 1, 1, 1, '{}', 5),
	(69, 8, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
	(70, 8, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{"validation":{"rule":"required|numeric"}}', 7),
	(71, 8, 'size', 'select_dropdown', 'Size', 1, 1, 1, 1, 1, 1, '{"default":"x","options":{"x":"X","xl":"XL","xxl":"XXL","l":"L"}}', 8),
	(72, 8, 'color', 'select_dropdown', 'Color', 1, 1, 1, 1, 1, 1, '{"default":"red","options":{"red":"Red","blue":"Blue","yellow":"Yellow","white":"White"}}', 9),
	(73, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
	(74, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
	(75, 8, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":null},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 12);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Dumping data for table acme_01.data_types: ~8 rows (approximately)
DELETE FROM `data_types`;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-03-31 08:21:08', '2019-03-31 08:21:08'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-03-31 08:21:08', '2019-03-31 08:21:08'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-03-31 08:21:08', '2019-03-31 08:21:08'),
	(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(7, 'product_categories', 'product-categories', 'Product Category', 'Product Categories', 'voyager-folder', 'App\\ProductCategory', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2019-04-27 05:32:03', '2019-04-27 06:09:25'),
	(8, 'products', 'products', 'Product', 'Products', 'voyager-window-list', 'App\\Product', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2019-04-27 06:17:55', '2019-04-27 06:39:02');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Dumping data for table acme_01.menus: ~0 rows (approximately)
DELETE FROM `menus`;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2019-03-31 08:21:09', '2019-03-31 08:21:09');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Dumping data for table acme_01.menu_items: ~16 rows (approximately)
DELETE FROM `menu_items`;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.dashboard', NULL),
	(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.media.index', NULL),
	(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-03-31 08:21:09', '2019-03-31 08:21:09', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-03-31 08:21:09', '2019-03-31 08:21:09', 'voyager.settings.index', NULL),
	(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-03-31 08:21:11', '2019-03-31 08:21:11', 'voyager.categories.index', NULL),
	(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-03-31 08:21:12', '2019-03-31 08:21:12', 'voyager.posts.index', NULL),
	(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-03-31 08:21:12', '2019-03-31 08:21:12', 'voyager.pages.index', NULL),
	(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-03-31 08:21:13', '2019-03-31 08:21:13', 'voyager.hooks', NULL),
	(15, 1, 'Product Categories', '', '_self', NULL, NULL, NULL, 15, '2019-04-27 05:32:04', '2019-04-27 05:32:04', 'voyager.product-categories.index', NULL),
	(16, 1, 'Products', '', '_self', 'voyager-window-list', NULL, NULL, 16, '2019-04-27 06:17:56', '2019-04-27 06:17:56', 'voyager.products.index', NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Dumping data for table acme_01.migrations: ~29 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_01_01_000000_add_voyager_user_fields', 1),
	(4, '2016_01_01_000000_create_data_types_table', 1),
	(5, '2016_01_01_000000_create_pages_table', 1),
	(6, '2016_01_01_000000_create_posts_table', 1),
	(7, '2016_02_15_204651_create_categories_table', 1),
	(8, '2016_05_19_173453_create_menu_table', 1),
	(9, '2016_10_21_190000_create_roles_table', 1),
	(10, '2016_10_21_190000_create_settings_table', 1),
	(11, '2016_11_30_135954_create_permission_table', 1),
	(12, '2016_11_30_141208_create_permission_role_table', 1),
	(13, '2016_12_26_201236_data_types__add__server_side', 1),
	(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(15, '2017_01_14_005015_create_translations_table', 1),
	(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
	(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(21, '2017_08_05_000000_add_group_to_settings_table', 1),
	(22, '2017_11_26_013050_add_user_role_relationship', 1),
	(23, '2017_11_26_015000_create_user_roles_table', 1),
	(24, '2018_03_11_000000_add_user_settings', 1),
	(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
	(26, '2018_03_16_000000_make_settings_value_nullable', 1),
	(27, '2018_12_29_225554_create_product_categories_table', 1),
	(28, '2019_01_02_232631_create_product_category_relations_table', 1),
	(31, '2019_04_24_065519_create_products_table', 2),
	(32, '2019_04_27_062623_alter_image_products_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping data for table acme_01.pages: ~0 rows (approximately)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-03-31 08:21:12', '2019-03-31 08:21:12');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping data for table acme_01.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping data for table acme_01.permissions: ~51 rows (approximately)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(2, 'browse_bread', NULL, '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(3, 'browse_database', NULL, '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(4, 'browse_media', NULL, '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(5, 'browse_compass', NULL, '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(6, 'browse_menus', 'menus', '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(7, 'read_menus', 'menus', '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(8, 'edit_menus', 'menus', '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(9, 'add_menus', 'menus', '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(10, 'delete_menus', 'menus', '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(11, 'browse_roles', 'roles', '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(12, 'read_roles', 'roles', '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(13, 'edit_roles', 'roles', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(14, 'add_roles', 'roles', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(15, 'delete_roles', 'roles', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(16, 'browse_users', 'users', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(17, 'read_users', 'users', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(18, 'edit_users', 'users', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(19, 'add_users', 'users', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(20, 'delete_users', 'users', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(21, 'browse_settings', 'settings', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(22, 'read_settings', 'settings', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(23, 'edit_settings', 'settings', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(24, 'add_settings', 'settings', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(25, 'delete_settings', 'settings', '2019-03-31 08:21:10', '2019-03-31 08:21:10'),
	(26, 'browse_categories', 'categories', '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(27, 'read_categories', 'categories', '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(28, 'edit_categories', 'categories', '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(29, 'add_categories', 'categories', '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(30, 'delete_categories', 'categories', '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(31, 'browse_posts', 'posts', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(32, 'read_posts', 'posts', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(33, 'edit_posts', 'posts', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(34, 'add_posts', 'posts', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(35, 'delete_posts', 'posts', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(36, 'browse_pages', 'pages', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(37, 'read_pages', 'pages', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(38, 'edit_pages', 'pages', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(39, 'add_pages', 'pages', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(40, 'delete_pages', 'pages', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(41, 'browse_hooks', NULL, '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(42, 'browse_product_categories', 'product_categories', '2019-04-27 05:32:04', '2019-04-27 05:32:04'),
	(43, 'read_product_categories', 'product_categories', '2019-04-27 05:32:04', '2019-04-27 05:32:04'),
	(44, 'edit_product_categories', 'product_categories', '2019-04-27 05:32:04', '2019-04-27 05:32:04'),
	(45, 'add_product_categories', 'product_categories', '2019-04-27 05:32:04', '2019-04-27 05:32:04'),
	(46, 'delete_product_categories', 'product_categories', '2019-04-27 05:32:04', '2019-04-27 05:32:04'),
	(47, 'browse_products', 'products', '2019-04-27 06:17:56', '2019-04-27 06:17:56'),
	(48, 'read_products', 'products', '2019-04-27 06:17:56', '2019-04-27 06:17:56'),
	(49, 'edit_products', 'products', '2019-04-27 06:17:56', '2019-04-27 06:17:56'),
	(50, 'add_products', 'products', '2019-04-27 06:17:56', '2019-04-27 06:17:56'),
	(51, 'delete_products', 'products', '2019-04-27 06:17:56', '2019-04-27 06:17:56');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping data for table acme_01.permission_role: ~50 rows (approximately)
DELETE FROM `permission_role`;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 1),
	(49, 1),
	(50, 1),
	(51, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping data for table acme_01.posts: ~4 rows (approximately)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
	(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-03-31 08:21:12', '2019-03-31 08:21:12');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping data for table acme_01.products: ~0 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `order`, `code`, `name`, `brief`, `description`, `price`, `size`, `color`, `created_at`, `updated_at`, `images`) VALUES
	(1, 1, 'code1', 'laptop 01', NULL, 'desc', 123.00, 'x', 'red', '2019-04-27 06:42:30', '2019-04-27 06:42:30', '["products\\\\April2019\\\\lrdmfqfvSjlqWQbWYRmK.jpg","products\\\\April2019\\\\MWEPTYG7Tly4VP0z5HPY.jpg"]');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping data for table acme_01.product_categories: ~2 rows (approximately)
DELETE FROM `product_categories`;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`id`, `order`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'laptop 01', 'laptop-01', NULL, '2019-04-27 05:55:48', '2019-04-27 05:55:48'),
	(2, 2, 'laptop 02', 'laptop-02', NULL, '2019-04-27 05:57:45', '2019-04-27 05:57:45');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;

-- Dumping data for table acme_01.product_category_relations: ~0 rows (approximately)
DELETE FROM `product_category_relations`;
/*!40000 ALTER TABLE `product_category_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_category_relations` ENABLE KEYS */;

-- Dumping data for table acme_01.roles: ~2 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2019-03-31 08:21:09', '2019-03-31 08:21:09'),
	(2, 'user', 'Normal User', '2019-03-31 08:21:09', '2019-03-31 08:21:09');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping data for table acme_01.settings: ~10 rows (approximately)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping data for table acme_01.translations: ~30 rows (approximately)
DELETE FROM `translations`;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-03-31 08:21:12', '2019-03-31 08:21:12'),
	(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-03-31 08:21:13', '2019-03-31 08:21:13'),
	(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-03-31 08:21:13', '2019-03-31 08:21:13');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Dumping data for table acme_01.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$lcbP17vaEwKSChS54HWetOD/XfH5FJqg.LiNOTa63IqRnRJt5Dx6a', 'rdzrZwL1lWsajEPQBLOK4FhPSG6hqAguNPB5dtk3DuUYqKMSqLYNbxINhsfA', NULL, '2019-03-31 08:21:11', '2019-03-31 08:21:11'),
	(2, 2, 'Dat-Normal', 'normal@gmail.com', 'users/default.png', NULL, '$2y$10$RbJXFUkO/rZknfmASFL9dOmpgI3IPU1dxnCErgotPzPq3A/yhEETG', NULL, '{"locale":"en"}', '2019-03-31 08:31:57', '2019-03-31 08:31:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping data for table acme_01.user_roles: ~0 rows (approximately)
DELETE FROM `user_roles`;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
	(2, 2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
