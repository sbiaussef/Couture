SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE categories (
  id int(10) UNSIGNED NOT NULL,
  categoryname varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  description text COLLATE utf8mb4_unicode_ci,
  picture varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categories (id, categoryname, description, picture, created_at, updated_at) VALUES
(1, 'Caftans', NULL, NULL, '2020-02-23 11:51:10', '2020-02-23 11:51:10'),
(2, 'Djellabas', NULL, NULL, '2020-02-23 11:51:27', '2020-02-23 11:51:27'),
(3, 'Gandouras', NULL, NULL, '2020-02-23 11:51:40', '2020-02-23 11:51:40'),
(4, 'Combinaisons', NULL, NULL, '2020-02-23 11:51:56', '2020-02-23 11:51:56'),
(5, 'Robes', NULL, NULL, '2020-02-23 11:52:10', '2020-02-23 11:52:10'),
(6, 'Accessoires', NULL, NULL, '2020-02-23 11:52:27', '2020-02-23 11:52:27');

CREATE TABLE collections (
  id int(10) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  picture varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  slug varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO collections (id, `name`, created_at, updated_at, picture, slug) VALUES
(1, 'Ramadan 2019', '2020-02-23 14:54:00', '2020-02-24 12:07:07', 'collections\\February2020\\IPEjldu9fyVUNrRoVaY0.jpg', 'ramadan-2019'),
(2, 'Ramadan 2020', '2020-02-23 14:55:00', '2020-02-24 12:06:57', 'collections\\February2020\\z5GtA97j9Yqdkgj47Ihe.jpg', 'ramadan-2020'),
(3, 'Ramadan 2021', '2020-02-23 18:40:00', '2020-02-24 12:06:46', 'collections\\February2020\\OdiWLDNJ9DpAvbHMwkBD.jpg', 'ramadan-2021'),
(4, 'Ramadan 2022', '2020-02-23 18:40:00', '2020-02-24 12:06:28', 'collections\\February2020\\vjlDOpQ1LIyKcGS2IivE.jpg', 'ramadan-2022');

CREATE TABLE customers (
  id int(10) UNSIGNED NOT NULL,
  name varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  adress varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  city varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  state varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  postalCode varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  country varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  phone varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  email varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  password varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO customers (id, `name`, adress, city, state, postalCode, country, phone, email, `password`, created_at, updated_at) VALUES
(1, 'youssef SBIA', NULL, NULL, NULL, NULL, NULL, '+66554855222885', 'sbia.youssef@gmail.com', NULL, '2020-03-07 17:13:23', '2020-03-07 17:13:23'),
(2, 'youssef SBIA', NULL, NULL, NULL, NULL, NULL, '0665099242', 'sbia.ussef@gmail.com', NULL, '2020-03-09 16:56:00', '2020-03-09 16:56:00');

CREATE TABLE data_rows (
  id int(10) UNSIGNED NOT NULL,
  data_type_id int(10) UNSIGNED NOT NULL,
  field varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  type varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  display_name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  required tinyint(1) NOT NULL DEFAULT '0',
  browse tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  edit tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  details text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO data_rows (id, data_type_id, `field`, `type`, display_name, required, browse, `read`, edit, `add`, `delete`, details, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'categoryName', 'text', 'CategoryName', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 5, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 5, 'picture', 'image', 'Picture', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 6, 'firstName', 'text', 'First name', 1, 1, 1, 1, 1, 1, '{}', 2),
(28, 6, 'lastName', 'text', 'Last name', 1, 1, 1, 1, 1, 1, '{}', 3),
(29, 6, 'adress', 'text', 'Adress', 1, 1, 1, 1, 1, 1, '{}', 4),
(30, 6, 'city', 'select_dropdown', 'City', 1, 1, 1, 1, 1, 1, '{}', 5),
(31, 6, 'state', 'select_dropdown', 'State', 1, 1, 1, 1, 1, 1, '{}', 6),
(32, 6, 'postalCode', 'text', 'PostalCode', 1, 1, 1, 1, 1, 1, '{}', 7),
(33, 6, 'country', 'select_dropdown', 'Country', 1, 1, 1, 1, 1, 1, '{}', 8),
(34, 6, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 9),
(35, 6, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 10),
(36, 6, 'password', 'password', 'Password', 1, 1, 1, 1, 1, 1, '{}', 11),
(37, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(38, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(39, 8, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(44, 8, 'shipDate', 'timestamp', 'Ship Date', 0, 1, 1, 1, 1, 1, '{}', 5),
(45, 8, 'freight', 'number', 'Freight', 0, 0, 0, 1, 1, 1, '{}', 6),
(46, 8, 'tax', 'number', 'Tax', 0, 0, 0, 1, 1, 1, '{}', 7),
(47, 8, 'paymentDate', 'timestamp', 'Payment Date', 0, 0, 0, 1, 1, 1, '{}', 8),
(48, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 11),
(49, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(50, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(51, 9, 'paymentType', 'select_dropdown', 'Payment Type', 1, 1, 1, 1, 1, 1, '{}', 2),
(52, 9, 'allowed', 'number', 'Allowed', 1, 1, 1, 1, 1, 1, '{}', 3),
(53, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(54, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(55, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 10, 'productName', 'text', 'Product Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(59, 10, 'productDescription', 'text_area', 'Product Description', 0, 0, 0, 1, 1, 1, '{}', 5),
(60, 10, 'productQuantity', 'number', 'ProductQuantity', 0, 1, 1, 1, 1, 1, '{}', 6),
(61, 10, 'unitPrice', 'text', 'Unit Price', 0, 1, 1, 1, 1, 1, '{}', 7),
(62, 10, 'availableSize', 'select_multiple', 'Available Size', 0, 0, 0, 1, 1, 1, '{}', 8),
(63, 10, 'availableColor', 'select_multiple', 'Available Color', 0, 0, 0, 1, 1, 1, '{}', 9),
(64, 10, 'discount', 'number', 'Discount', 0, 0, 0, 1, 1, 1, '{}', 10),
(65, 10, 'unitWeight', 'number', 'Unit Weight', 0, 0, 0, 1, 1, 1, '{}', 11),
(67, 10, 'rank', 'number', 'Rank', 0, 0, 0, 1, 1, 1, '{}', 13),
(68, 10, 'note', 'number', 'Note', 0, 0, 0, 1, 1, 1, '{}', 14),
(69, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 11, 'companyName', 'text', 'Company Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 11, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 3),
(72, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(73, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(100, 5, 'category_hasmany_product_relationship', 'relationship', 'products', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"hasMany\",\"column\":\"categoryid\",\"key\":\"id\",\"label\":\"productname\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(103, 8, 'order_belongsto_customer_relationship', 'relationship', 'customers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(104, 8, 'order_belongsto_payment_relationship', 'relationship', 'payments', 0, 0, 0, 1, 1, 1, '{\"model\":\"App\\\\Payment\",\"table\":\"payments\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(105, 8, 'order_belongsto_shipper_relationship', 'relationship', 'shippers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Shipper\",\"table\":\"shippers\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"companyname\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(106, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 20, 'productID', 'select_dropdown', 'ProductID', 0, 1, 1, 1, 1, 1, '{}', 2),
(108, 20, 'orderID', 'select_dropdown', 'OrderID', 0, 1, 1, 1, 1, 1, '{}', 3),
(109, 20, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(110, 20, 'quantity', 'number', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 5),
(111, 20, 'discount', 'number', 'Discount', 0, 1, 1, 1, 1, 1, '{}', 6),
(112, 20, 'total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 7),
(115, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(116, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(117, 20, 'order_detail_belongsto_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"orderID\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(118, 20, 'order_detail_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"productID\",\"key\":\"id\",\"label\":\"productname\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(119, 8, 'order_hasmany_order_detail_relationship', 'relationship', 'order_details', 0, 0, 0, 1, 1, 1, '{\"model\":\"App\\\\OrderDetail\",\"table\":\"order_details\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(120, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{\"max\":4}', 16),
(121, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(122, 6, 'customer_hasmany_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"hasMany\",\"column\":\"costomerid\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 14),
(123, 9, 'payment_hasone_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"hasOne\",\"column\":\"paymentid\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 6),
(125, 10, 'product_belongsto_category_relationship', 'relationship', 'category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"categoryname\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18),
(126, 10, 'product_hasmany_order_detail_relationship', 'relationship', 'order_details', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\OrderDetail\",\"table\":\"order_details\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(127, 11, 'shipper_hasmany_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"hasMany\",\"column\":\"shipperid\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 6),
(129, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(130, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(131, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(132, 21, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(133, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(134, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(135, 10, 'product_belongsto_collection_relationship', 'relationship', 'collection', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Collection\",\"table\":\"collections\",\"type\":\"belongsTo\",\"column\":\"collection_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 20),
(137, 21, 'picture', 'image', 'Picture', 0, 1, 1, 1, 1, 1, '{}', 5),
(138, 10, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"productName\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:products,slug\"}}', 15),
(139, 21, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 6),
(140, 10, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(141, 10, 'collection_id', 'text', 'Collection Id', 0, 1, 1, 1, 1, 1, '{}', 16),
(150, 10, 'pictures', 'multiple_images', 'Pictures', 0, 1, 1, 1, 1, 1, '{}', 17),
(157, 20, 'details', 'text_area', 'Details', 0, 1, 1, 1, 1, 1, '{}', 8),
(158, 8, 'payment_id', 'text', 'Payment Id', 0, 0, 0, 1, 1, 1, '{}', 2),
(159, 8, 'shipper_id', 'text', 'Shipper Id', 0, 0, 0, 1, 1, 1, '{}', 3),
(160, 8, 'customer_id', 'text', 'Customer Id', 1, 0, 0, 1, 1, 1, '{}', 4),
(161, 8, 'token', 'text', 'Token', 1, 0, 0, 1, 1, 1, '{}', 10),
(162, 8, 'confirmed', 'text', 'Confirmed', 0, 1, 1, 1, 1, 1, '{}', 9);

CREATE TABLE data_types (
  id int(10) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  slug varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  display_name_singular varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  display_name_plural varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  icon varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  model_name varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  policy_name varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  controller varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  description varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  generate_permissions tinyint(1) NOT NULL DEFAULT '0',
  server_side tinyint(4) NOT NULL DEFAULT '0',
  details text COLLATE utf8mb4_unicode_ci,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO data_types (id, `name`, slug, display_name_singular, display_name_plural, icon, model_name, policy_name, controller, description, generate_permissions, server_side, details, created_at, updated_at) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(5, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-24 14:12:38', '2020-02-23 12:06:31'),
(6, 'customers', 'customers', 'Customer', 'Customers', NULL, 'App\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-24 14:24:10', '2019-12-24 14:24:10'),
(8, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-24 14:28:29', '2020-03-07 16:55:19'),
(9, 'payments', 'payments', 'Payment', 'Payments', NULL, 'App\\Payment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-24 14:29:07', '2019-12-24 14:29:07'),
(10, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-24 14:31:32', '2020-03-15 11:13:56'),
(11, 'shippers', 'shippers', 'Shipper', 'Shippers', NULL, 'App\\Shipper', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-24 14:31:57', '2019-12-24 14:31:57'),
(19, 'orderdetails', 'orderdetails', 'Orderdetail', 'Orderdetails', NULL, 'App\\OrderDetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-24 15:29:31', '2019-12-24 15:31:14'),
(20, 'order_details', 'order-details', 'Order Detail', 'Order Details', NULL, 'App\\OrderDetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-24 15:33:00', '2020-03-05 17:17:02'),
(21, 'collections', 'collections', 'Collection', 'Collections', NULL, 'App\\Collection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-23 14:48:45', '2020-02-24 12:06:11');

CREATE TABLE menus (
  id int(10) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO menus (id, `name`, created_at, updated_at) VALUES
(1, 'admin', '2019-11-11 21:49:55', '2019-11-11 21:49:55');

CREATE TABLE menu_items (
  id int(10) UNSIGNED NOT NULL,
  menu_id int(10) UNSIGNED DEFAULT NULL,
  title varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  url varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  target varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  icon_class varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  color varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  parent_id int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  route varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  parameters text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO menu_items (id, menu_id, title, url, target, icon_class, color, parent_id, `order`, created_at, updated_at, route, parameters) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-11-11 21:49:55', '2019-11-11 21:49:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-11-11 21:49:55', '2019-12-24 15:22:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2019-11-11 21:49:55', '2019-12-24 15:22:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-11-11 21:49:55', '2019-11-11 21:49:55', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2019-11-11 21:49:55', '2020-02-23 14:55:35', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-11-11 21:49:55', '2019-12-24 14:35:50', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-11-11 21:49:55', '2019-12-24 14:37:24', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-11-11 21:49:55', '2019-12-24 14:37:24', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-11-11 21:49:55', '2019-12-24 15:22:14', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2019-11-11 21:49:55', '2020-02-23 14:55:35', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-11-11 21:49:55', '2019-12-24 15:22:14', 'voyager.hooks', NULL),
(12, 1, 'Categories', '', '_self', NULL, NULL, 20, 3, '2019-12-24 14:12:38', '2020-02-23 14:55:59', 'voyager.categories.index', NULL),
(13, 1, 'Customers', '', '_self', NULL, NULL, 20, 1, '2019-12-24 14:24:10', '2020-02-23 14:55:46', 'voyager.customers.index', NULL),
(15, 1, 'Orders', '', '_self', NULL, NULL, 20, 5, '2019-12-24 14:28:29', '2020-02-23 14:55:46', 'voyager.orders.index', NULL),
(16, 1, 'Payments', '', '_self', NULL, NULL, 20, 7, '2019-12-24 14:29:07', '2020-02-23 14:55:46', 'voyager.payments.index', NULL),
(17, 1, 'Products', '', '_self', NULL, NULL, 20, 2, '2019-12-24 14:31:32', '2020-02-23 14:55:46', 'voyager.products.index', NULL),
(18, 1, 'Shippers', '', '_self', NULL, NULL, 20, 8, '2019-12-24 14:31:57', '2020-02-23 14:55:46', 'voyager.shippers.index', NULL),
(20, 1, 'Commerce', '', '_blank', 'voyager-shop', '#000000', NULL, 3, '2019-12-24 14:35:29', '2019-12-24 14:39:43', NULL, ''),
(27, 1, 'Order Details', '', '_self', NULL, NULL, 20, 6, '2019-12-24 15:33:01', '2020-02-23 14:55:46', 'voyager.order-details.index', NULL),
(28, 1, 'Collections', '', '_self', NULL, NULL, 20, 4, '2020-02-23 14:48:45', '2020-02-23 14:55:59', 'voyager.collections.index', NULL);

CREATE TABLE orders (
  id int(10) UNSIGNED NOT NULL,
  payment_id int(10) UNSIGNED DEFAULT NULL,
  shipper_id int(10) UNSIGNED DEFAULT NULL,
  customer_id int(10) UNSIGNED NOT NULL,
  shipDate date DEFAULT NULL,
  freight double DEFAULT NULL,
  tax double DEFAULT NULL,
  paymentDate date DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  token varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  confirmed tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO orders (id, payment_id, shipper_id, customer_id, shipDate, freight, tax, paymentDate, created_at, updated_at, token, confirmed) VALUES
(1, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-07 17:13:23', '2020-03-07 17:13:23', '$2y$10$fed2jlcJwKk6uMudKGU7L.8$q9tJfpvxmf8DD2wYv.FqmCFwgoIL2', 0),
(2, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-07 17:23:33', '2020-03-07 17:23:33', '$2y$10$9OADdFNnPnJmGOsoESYHUeu10GEPjoS2Qqnk0EeewWTn6Sb1zB7z2', 0),
(3, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-07 17:24:52', '2020-03-07 17:25:31', '$2y$10$I5NaX31PKeSYIs7MmlIopexsyWqgYujgKOc54mdqQTJd5hyt5fnEO', 1),
(4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-07 17:26:49', '2020-03-07 17:26:59', '$2y$10$FhwJTI.FZexWqx0ZFMA$x.c0ID8SC$5e7iS0rKBeCLiO3V83eOPpa', 1),
(5, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-07 17:27:27', '2020-03-07 17:27:38', '$2y$10$rGB0fB8cIAlUaxL3m.J5SOyvBjBWKUWVKKhmgWT89MBrv62G2NSr6', 1),
(6, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-07 19:12:49', '2020-03-07 19:16:51', '$2y$10$qsyf21DMfmshq2gaHUB47e6VlTYHXKjvdVAAutXz9U2ajY0BxX9US', 1),
(7, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-07 19:28:35', '2020-03-07 19:29:18', '$2y$10$dosKp6$wvMnA7gsJiFV5WO7oQzg1HCdjNAIr1t1HpvFW4WEL8QSFq', 1),
(8, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 12:06:11', '2020-03-09 12:06:11', '$2y$10$ngKhm0vTzqYuWSwLpy9RWu3dOwG2Gr02XTCKzm3gr1bA63Qdj4irG', 0),
(9, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:46:10', '2020-03-09 13:46:10', '$2y$10$ZkSAkcnCbF5k7IzLPgoYuei2mGtPMlEPA866EkJOStfBTnPMSX2yO', 0),
(10, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:47:52', '2020-03-09 13:47:52', '$2y$10$09k6fr.loPl9XADN2DFdHOioO29lZCtoi0TWZfoY1DcqiiRJ3.CA2', 0),
(11, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:48:22', '2020-03-09 13:48:22', '$2y$10$C6x8XiCjRems$gRstrhGZ.VzveOFN5GZ$dns5xz86qArJ66aUMavq', 0),
(12, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:50:28', '2020-03-09 13:50:28', '$2y$10$aZ7Z7S$SFxj1jhJsnQIi6uu05inGseHTar02wjCVcI$IE7w1uuDl6', 0),
(13, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:51:47', '2020-03-09 13:51:47', '$2y$10$yq8aSvr6W5IbfOVztT0gDe6sY8hQMIbm.34v.AAkh$T.$txVsESem', 0),
(14, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:52:39', '2020-03-09 13:52:39', '$2y$10$ZeVF8$wN4pdfWIDpLIbdtOXZ7xXjWzyaTkr7OhH6Wd5GG6CFIBxuG', 0),
(15, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:53:20', '2020-03-09 13:53:20', '$2y$10$rT9hh12WdLlg0K0VdYN3f.ebm5IOVqq$C2HeW1LFvdZeT5VOrRK3a', 0),
(16, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:54:12', '2020-03-09 13:54:12', '$2y$10$sOe$M2JNvh9QWhjMeQJB9uznAuHJSUI3nOgbxUiS$ehZQt7iRbfba', 0),
(17, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:54:51', '2020-03-09 13:54:51', '$2y$10$LUWmgUKEe3F9NBxyTFqoheN6bW4to1ffghpJl6EbLCR.0k.p4xdom', 0),
(18, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:55:08', '2020-03-09 13:55:08', '$2y$10$AC13rOttY2RcAhX$j.Ws.ej32DHwa$CyYmCe4ZDtso6ENoRLse8mG', 0),
(19, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:55:49', '2020-03-09 13:55:49', '$2y$10$1S7hpgH1x.Wfi4Pq5c997e6QBTJ7.uZwXr1SQUzMnmkvXyXgZjzDe', 0),
(20, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:56:24', '2020-03-09 13:56:24', '$2y$10$TmeF9JkQU4Si$wLg9PyVpegcLiF86wK7x.6GxNwZYH.LBWUsfqRYa', 0),
(21, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:58:48', '2020-03-09 13:58:48', '$2y$10$p2v5JPe3WZR.CZzChO5gJedWzlYIiUWmYmwGLaURN1KNZwg9gbs96', 0),
(22, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 13:59:26', '2020-03-09 13:59:26', '$2y$10$vkCzGul0X3OUTbkBUP555.cmYUmqZ6.1VkJoFu7YczJe92UGIb4tG', 0),
(23, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 14:01:55', '2020-03-09 14:01:55', '$2y$10$gP0kobLF.1DMnus5YOhtt.4ZJm8IXKRjfwq8PiaI705zTiBTSkk1W', 0),
(24, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 14:02:44', '2020-03-09 14:02:44', '$2y$10$8atXmgFBaC7A1Y5wdNChduDgOLtHc7vFVFTBdMS1AfE$cwEng6ibW', 0),
(25, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 14:06:20', '2020-03-09 14:06:20', '$2y$10$bWahPUrsi7JwqxJO0X90D.HP1$OWMg2UmFDjCbydO47U944jbfxkm', 0),
(26, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 14:08:35', '2020-03-09 14:09:32', '$2y$10$5rwzyloYy2Idpv6oOu0ao.ORLQmawZhfMwbhdWXJj$aylZfV8em0G', 1),
(27, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 14:26:22', '2020-03-09 14:26:35', '$2y$10$tVWAXih5PakA1zd.8XbMfe8DDSxcWJRDVGdsBwNMET8vL.Kwq5Vt.', 1),
(28, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 14:42:11', '2020-03-09 14:42:19', '$2y$10$MmLh$JwIlIMTV3sEa3FN1.of9ExJf.yaEIll$OqJs$WM4Cfr3Gikq', 1),
(29, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 14:44:11', '2020-03-09 16:55:16', '$2y$10$gMJ3s4jPZe0Fq2BH8UVZOOCA8sxMwwnDvWWHakgnjXVM0Kk2j517G', 1),
(30, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-09 15:16:33', '2020-03-09 15:16:33', '$2y$10$iQy8cXzqH5067zK8IMGMvObe8tImnxf5Py3QYN83csGTKJUKa6e6i', 0),
(31, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2020-03-09 16:56:00', '2020-03-09 16:56:08', '$2y$10$JhszomOuC0jSaFJ7ny23neXaGWlSZ1cyQjv2iwXckV9u.0t15InWe', 1),
(32, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-11 20:16:55', '2020-03-11 20:16:55', '$2y$10$74EzrDyiTCt1PA7q4oHBcujcqEiNnFOBUDJjLKjv9QRAO450PSbhe', 0),
(33, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-11 20:17:22', '2020-03-11 20:17:22', '$2y$10$Hi7ex0Rx4AcPmn1xYREQl.4kbA0QXPZNo.RsrqAHudjHDPBmdWeai', 0),
(34, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-11 20:17:58', '2020-03-11 20:20:33', '$2y$10$492fIUgvixwcaBgrKNvi7OaM29Fly6ZHxkm8P1cd8bKjOWw6feWrG', 1),
(35, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-19 19:11:20', '2020-03-19 19:11:20', '$2y$10$f4xtgf6vFCU2AiF2m7u.BexBtCJFp26AyHwwcLJo5WyD6EL8WjV9G', 0),
(36, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-03-19 19:12:22', '2020-03-19 19:15:02', '$2y$10$yav7gZdr95KiJfsLrQUnie4zzMGG0xdyG.DZnIbYpeOQShEFbxrLW', 1);

CREATE TABLE order_details (
  id int(10) UNSIGNED NOT NULL,
  product_id int(11) DEFAULT NULL,
  order_id int(11) DEFAULT NULL,
  price float DEFAULT NULL,
  quantity int(11) DEFAULT NULL,
  discount int(11) DEFAULT NULL,
  total float DEFAULT NULL,
  details text COLLATE utf8mb4_unicode_ci,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO order_details (id, product_id, order_id, price, quantity, discount, total, details, created_at, updated_at) VALUES
(3, 11, 1, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut-du-bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-07 17:13:23', '2020-03-07 17:13:23'),
(4, 11, 2, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut-du-bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-07 17:23:33', '2020-03-07 17:23:33'),
(5, 11, 3, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut-du-bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-07 17:24:52', '2020-03-07 17:24:52'),
(6, 11, 4, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut-du-bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-07 17:26:49', '2020-03-07 17:26:49'),
(7, 11, 5, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut-du-bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-07 17:27:27', '2020-03-07 17:27:27'),
(8, 11, 6, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut-du-bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-07 19:12:49', '2020-03-07 19:12:49'),
(9, 8, 7, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut-du-bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-07 19:28:35', '2020-03-07 19:28:35'),
(10, 11, 8, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 12:06:11', '2020-03-09 12:06:11'),
(11, 11, 9, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:46:10', '2020-03-09 13:46:10'),
(12, 11, 10, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:47:52', '2020-03-09 13:47:52'),
(13, 11, 11, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:48:22', '2020-03-09 13:48:22'),
(14, 11, 12, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:50:28', '2020-03-09 13:50:28'),
(15, 11, 13, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:51:47', '2020-03-09 13:51:47'),
(16, 11, 14, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:52:39', '2020-03-09 13:52:39'),
(17, 11, 15, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:53:20', '2020-03-09 13:53:20'),
(18, 11, 16, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:54:12', '2020-03-09 13:54:12'),
(19, 11, 17, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:54:51', '2020-03-09 13:54:51'),
(20, 11, 18, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:55:08', '2020-03-09 13:55:08'),
(21, 11, 19, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:55:49', '2020-03-09 13:55:49'),
(22, 11, 20, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:56:24', '2020-03-09 13:56:24'),
(23, 11, 21, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:58:48', '2020-03-09 13:58:48'),
(24, 11, 22, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 13:59:26', '2020-03-09 13:59:26'),
(25, 11, 23, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 14:01:55', '2020-03-09 14:01:55'),
(26, 11, 24, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 14:02:44', '2020-03-09 14:02:44'),
(27, 11, 25, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 14:06:20', '2020-03-09 14:06:20'),
(28, 11, 26, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 14:08:35', '2020-03-09 14:08:35'),
(29, 11, 27, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 14:26:22', '2020-03-09 14:26:22'),
(30, 11, 28, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 14:42:11', '2020-03-09 14:42:11'),
(31, 11, 29, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 14:44:11', '2020-03-09 14:44:11'),
(32, 11, 31, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-09 16:56:00', '2020-03-09 16:56:00'),
(33, 11, 32, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"10\",\"haut_du_bras\":\"11\",\"tour_du_poignet\":\"12\",\"longueur_des_manches\":\"13\",\"tour_des_hanches\":\"14\",\"tour_de_taille\":\"15\",\"tour_de_poitrine\":\"16\",\"profondeur_du_col\":\"17\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"18\",\"taille\":\"19\",\"taille_des_epaules\":\"10\"}', '2020-03-11 20:16:55', '2020-03-11 20:16:55'),
(34, 11, 33, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"10\",\"haut_du_bras\":\"11\",\"tour_du_poignet\":\"12\",\"longueur_des_manches\":\"13\",\"tour_des_hanches\":\"14\",\"tour_de_taille\":\"15\",\"tour_de_poitrine\":\"16\",\"profondeur_du_col\":\"17\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"18\",\"taille\":\"19\",\"taille_des_epaules\":\"10\"}', '2020-03-11 20:17:22', '2020-03-11 20:17:22'),
(35, 11, 34, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"10\",\"haut_du_bras\":\"11\",\"tour_du_poignet\":\"12\",\"longueur_des_manches\":\"13\",\"tour_des_hanches\":\"14\",\"tour_de_taille\":\"15\",\"tour_de_poitrine\":\"16\",\"profondeur_du_col\":\"17\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"18\",\"taille\":\"19\",\"taille_des_epaules\":\"10\"}', '2020-03-11 20:17:58', '2020-03-11 20:17:58'),
(36, 13, 35, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-19 19:11:20', '2020-03-19 19:11:20'),
(37, 13, 36, NULL, NULL, NULL, NULL, '{\"emmanchure\":\"15\",\"haut_du_bras\":\"16\",\"tour_du_poignet\":\"17\",\"longueur_des_manches\":\"18\",\"tour_des_hanches\":\"19\",\"tour_de_taille\":\"20\",\"tour_de_poitrine\":\"21\",\"profondeur_du_col\":\"22\",\"type_du_col\":\"rond\",\"longueur_poitrine\":\"23\",\"taille\":\"24\",\"taille_des_epaules\":\"25\"}', '2020-03-19 19:12:22', '2020-03-19 19:12:22');

CREATE TABLE password_resets (
  email varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  token varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE payments (
  id int(10) UNSIGNED NOT NULL,
  paymentType varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  allowed tinyint(1) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE permissions (
  id bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  table_name varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions (id, `key`, `table_name`, created_at, updated_at) VALUES
(1, 'browse_admin', NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(2, 'browse_bread', NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(3, 'browse_database', NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(4, 'browse_media', NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(5, 'browse_compass', NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(6, 'browse_menus', 'menus', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(7, 'read_menus', 'menus', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(8, 'edit_menus', 'menus', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(9, 'add_menus', 'menus', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(10, 'delete_menus', 'menus', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(11, 'browse_roles', 'roles', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(12, 'read_roles', 'roles', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(13, 'edit_roles', 'roles', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(14, 'add_roles', 'roles', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(15, 'delete_roles', 'roles', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(16, 'browse_users', 'users', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(17, 'read_users', 'users', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(18, 'edit_users', 'users', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(19, 'add_users', 'users', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(20, 'delete_users', 'users', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(21, 'browse_settings', 'settings', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(22, 'read_settings', 'settings', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(23, 'edit_settings', 'settings', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(24, 'add_settings', 'settings', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(25, 'delete_settings', 'settings', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(26, 'browse_hooks', NULL, '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(27, 'browse_categories', 'categories', '2019-12-24 14:12:38', '2019-12-24 14:12:38'),
(28, 'read_categories', 'categories', '2019-12-24 14:12:38', '2019-12-24 14:12:38'),
(29, 'edit_categories', 'categories', '2019-12-24 14:12:38', '2019-12-24 14:12:38'),
(30, 'add_categories', 'categories', '2019-12-24 14:12:38', '2019-12-24 14:12:38'),
(31, 'delete_categories', 'categories', '2019-12-24 14:12:38', '2019-12-24 14:12:38'),
(32, 'browse_customers', 'customers', '2019-12-24 14:24:10', '2019-12-24 14:24:10'),
(33, 'read_customers', 'customers', '2019-12-24 14:24:10', '2019-12-24 14:24:10'),
(34, 'edit_customers', 'customers', '2019-12-24 14:24:10', '2019-12-24 14:24:10'),
(35, 'add_customers', 'customers', '2019-12-24 14:24:10', '2019-12-24 14:24:10'),
(36, 'delete_customers', 'customers', '2019-12-24 14:24:10', '2019-12-24 14:24:10'),
(42, 'browse_orders', 'orders', '2019-12-24 14:28:29', '2019-12-24 14:28:29'),
(43, 'read_orders', 'orders', '2019-12-24 14:28:29', '2019-12-24 14:28:29'),
(44, 'edit_orders', 'orders', '2019-12-24 14:28:29', '2019-12-24 14:28:29'),
(45, 'add_orders', 'orders', '2019-12-24 14:28:29', '2019-12-24 14:28:29'),
(46, 'delete_orders', 'orders', '2019-12-24 14:28:29', '2019-12-24 14:28:29'),
(47, 'browse_payments', 'payments', '2019-12-24 14:29:07', '2019-12-24 14:29:07'),
(48, 'read_payments', 'payments', '2019-12-24 14:29:07', '2019-12-24 14:29:07'),
(49, 'edit_payments', 'payments', '2019-12-24 14:29:07', '2019-12-24 14:29:07'),
(50, 'add_payments', 'payments', '2019-12-24 14:29:07', '2019-12-24 14:29:07'),
(51, 'delete_payments', 'payments', '2019-12-24 14:29:07', '2019-12-24 14:29:07'),
(52, 'browse_products', 'products', '2019-12-24 14:31:32', '2019-12-24 14:31:32'),
(53, 'read_products', 'products', '2019-12-24 14:31:32', '2019-12-24 14:31:32'),
(54, 'edit_products', 'products', '2019-12-24 14:31:32', '2019-12-24 14:31:32'),
(55, 'add_products', 'products', '2019-12-24 14:31:32', '2019-12-24 14:31:32'),
(56, 'delete_products', 'products', '2019-12-24 14:31:32', '2019-12-24 14:31:32'),
(57, 'browse_shippers', 'shippers', '2019-12-24 14:31:57', '2019-12-24 14:31:57'),
(58, 'read_shippers', 'shippers', '2019-12-24 14:31:57', '2019-12-24 14:31:57'),
(59, 'edit_shippers', 'shippers', '2019-12-24 14:31:57', '2019-12-24 14:31:57'),
(60, 'add_shippers', 'shippers', '2019-12-24 14:31:57', '2019-12-24 14:31:57'),
(61, 'delete_shippers', 'shippers', '2019-12-24 14:31:57', '2019-12-24 14:31:57'),
(92, 'browse_orderdetails', 'orderdetails', '2019-12-24 15:29:31', '2019-12-24 15:29:31'),
(93, 'read_orderdetails', 'orderdetails', '2019-12-24 15:29:31', '2019-12-24 15:29:31'),
(94, 'edit_orderdetails', 'orderdetails', '2019-12-24 15:29:31', '2019-12-24 15:29:31'),
(95, 'add_orderdetails', 'orderdetails', '2019-12-24 15:29:31', '2019-12-24 15:29:31'),
(96, 'delete_orderdetails', 'orderdetails', '2019-12-24 15:29:31', '2019-12-24 15:29:31'),
(97, 'browse_order_details', 'order_details', '2019-12-24 15:33:01', '2019-12-24 15:33:01'),
(98, 'read_order_details', 'order_details', '2019-12-24 15:33:01', '2019-12-24 15:33:01'),
(99, 'edit_order_details', 'order_details', '2019-12-24 15:33:01', '2019-12-24 15:33:01'),
(100, 'add_order_details', 'order_details', '2019-12-24 15:33:01', '2019-12-24 15:33:01'),
(101, 'delete_order_details', 'order_details', '2019-12-24 15:33:01', '2019-12-24 15:33:01'),
(102, 'browse_collections', 'collections', '2020-02-23 14:48:45', '2020-02-23 14:48:45'),
(103, 'read_collections', 'collections', '2020-02-23 14:48:45', '2020-02-23 14:48:45'),
(104, 'edit_collections', 'collections', '2020-02-23 14:48:45', '2020-02-23 14:48:45'),
(105, 'add_collections', 'collections', '2020-02-23 14:48:45', '2020-02-23 14:48:45'),
(106, 'delete_collections', 'collections', '2020-02-23 14:48:45', '2020-02-23 14:48:45');

CREATE TABLE permission_role (
  permission_id bigint(20) UNSIGNED NOT NULL,
  role_id bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permission_role (permission_id, role_id) VALUES
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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1);

CREATE TABLE products (
  id int(10) UNSIGNED NOT NULL,
  category_id int(11) UNSIGNED DEFAULT NULL,
  productName varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  productDescription text COLLATE utf8mb4_unicode_ci,
  productQuantity int(11) DEFAULT NULL,
  unitPrice float DEFAULT NULL,
  availableSize text COLLATE utf8mb4_unicode_ci,
  availableColor text COLLATE utf8mb4_unicode_ci,
  discount int(11) DEFAULT NULL,
  unitWeight double DEFAULT NULL,
  rank int(11) DEFAULT NULL,
  note float DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  collection_id int(10) UNSIGNED DEFAULT NULL,
  slug varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  pictures text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products (id, category_id, productName, productDescription, productQuantity, unitPrice, availableSize, availableColor, discount, unitWeight, rank, note, created_at, updated_at, collection_id, slug, pictures) VALUES
(3, 1, 'caftan rouge', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, laborum', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-02-23 15:08:00', '2020-04-12 14:02:31', 1, 'caftan-rouge', '[\"products\\\\April2020\\\\pe8dRDbgipou8sJJLFay.jpg\",\"products\\\\April2020\\\\r9eujcN5XZ1MHwchCu3Z.jpg\",\"products\\\\April2020\\\\je6pKxA8kb0GRHhjf7CV.jpg\",\"products\\\\April2020\\\\0BIiax6j77P9bv4H81qQ.jpg\",\"products\\\\April2020\\\\k31d7wzOAQ4tHKO4mkf8.jpg\",\"products\\\\April2020\\\\nB8DNvtWLzJpkXJUf2I4.jpg\"]'),
(4, 1, 'caftan bleu', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, laborum', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-02-23 15:08:00', '2020-04-12 14:02:52', 2, 'caftan-bleu', '[\"products\\\\April2020\\\\ATg0yliviG1tnir8H0C8.jpg\",\"products\\\\April2020\\\\KOcBVGI5F81leSHGjW3b.jpg\",\"products\\\\April2020\\\\NdOaZQXdEeq9yCgHbmXi.jpg\",\"products\\\\April2020\\\\et49OLYHHqHDrTUIKMnA.jpg\",\"products\\\\April2020\\\\p0SUQBNmmtaMc7smClRo.jpg\",\"products\\\\April2020\\\\nSUdLK6gXq1dMSiu5Lg8.jpg\"]'),
(5, 1, 'caftan noire', 'Curabitur hendrerit mauris mollis ipsum vulputate rutrum.', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-02-23 15:18:00', '2020-04-12 14:02:08', 1, 'caftan-noire', '[\"products\\\\April2020\\\\QIYAM58B9ywOyXFaz1ul.jpg\",\"products\\\\April2020\\\\GmxRMywhLjeLor6u7ZLj.jpg\",\"products\\\\April2020\\\\NJFRIRYoQDxewK9fUqdd.jpg\",\"products\\\\April2020\\\\m7xP3Wcv0e8O89X7qbQ5.jpg\",\"products\\\\April2020\\\\KuC2keaxsaCo1yYYBdQT.jpg\",\"products\\\\April2020\\\\qtr0RxsS6ftPlvVSL8i9.jpg\"]'),
(6, 1, 'caftan jaune', 'Curabitur hendrerit mauris mollis ipsum vulputate rutrum.', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-02-23 15:19:00', '2020-04-12 14:01:38', 2, 'caftan-jaune', '[\"products\\\\April2020\\\\UTFY8x9t3YfQpvGAcYzf.jpg\",\"products\\\\April2020\\\\wioc4D7HAEKjtmC18Zrx.jpg\",\"products\\\\April2020\\\\pAS3bLjqITwgXdekU6kV.jpg\",\"products\\\\April2020\\\\JBfaUUhu3Ch8al2tlYNa.jpg\",\"products\\\\April2020\\\\qPy4v5A4wKseax3VdN8I.jpeg\"]'),
(7, 1, 'caftan blanc', 'Nam vel egestas nisi. Nullam lobortis magna at enim venenatis luctus. Nam finibus, mauris eu dictum iaculis, dolor tortor cursus quam, in volutpat augue', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-02-23 16:11:00', '2020-04-12 14:03:34', 2, 'caftan-blanc', '[\"products\\\\April2020\\\\qNbCxWka4cqeUsMLlFpU.jpg\",\"products\\\\April2020\\\\d0jtxpEWpkDV7GVRRAjy.jpg\",\"products\\\\April2020\\\\Kbmj1KrCrvY3CB1JGQ9A.jpg\",\"products\\\\April2020\\\\n4CijkdjEEvjwpcPw0VI.jpg\",\"products\\\\April2020\\\\Mpyp40qUdZM9vCQj7qXJ.jpg\",\"products\\\\April2020\\\\ntGrpohsi34LkQbFoP2m.jpg\",\"products\\\\April2020\\\\cw5ynV0zSjlnOrSg1CHq.jpg\"]'),
(8, 1, 'caftan vert', 'Nam vel egestas nisi. Nullam lobortis magna at enim venenatis luctus. Nam finibus, mauris eu dictum iaculis, dolor tortor cursus quam, in volutpat augue', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-02-23 16:11:00', '2020-04-12 14:01:17', 1, 'caftan-vert', '[\"products\\\\April2020\\\\xmq1Iwz8LOXEQIqIitd3.jpg\",\"products\\\\April2020\\\\HVyceGZiiXZuonFU8imt.jpg\",\"products\\\\April2020\\\\NRNfEZxZWKvzVny4T34I.jpg\",\"products\\\\April2020\\\\9lHyiHlvCIpAthyyV2sD.jpg\",\"products\\\\April2020\\\\g4MbgkQFNbDPblKHpEfs.jpg\"]'),
(11, 1, 'caftan noire 2019', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus, tempore dolor quia magni assumenda iste saepe voluptatibus', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-02-24 11:55:00', '2020-04-12 13:59:59', 1, 'caftan-noire-2019', '[\"products\\\\April2020\\\\HxxS1Yb8sHBykjXDplvt.jpg\",\"products\\\\April2020\\\\ePOBp0ltjxA1TzC5r6DE.jpg\",\"products\\\\April2020\\\\Sjq0ImTaGx4mUBOHbLSl.jpg\",\"products\\\\April2020\\\\Cf1F11vxBlLFQKJl1TjK.jpg\",\"products\\\\April2020\\\\fkCmhvXCaTrjD1gZsmq0.jpg\",\"products\\\\April2020\\\\R8GBkxSMLgRhEi50aRTK.jpg\"]'),
(12, 1, 'caftan rose', 'Curabitur hendrerit mauris mollis ipsum vulputate rutrum.', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-02-23 15:19:00', '2020-04-12 14:04:42', 3, 'caftan-rose', '[\"products\\\\April2020\\\\hmotVCiQQSLyCrJtBvNX.jpg\",\"products\\\\April2020\\\\DMknbrIKV4UZrDLhk7Os.jpg\",\"products\\\\April2020\\\\j8Z9PWBXnoxCn0tPN3dC.jpg\",\"products\\\\April2020\\\\0IxfNWTh6ve3VZL6AJ9E.jpg\",\"products\\\\April2020\\\\yagpvlnHBiEHdXiuSrLx.jpg\",\"products\\\\April2020\\\\NTobwTU9KRaQ7KbI8gJs.jpg\",\"products\\\\April2020\\\\bg6VGoOr3Opq1k1mkgvL.jpg\"]'),
(13, 1, 'caftan vert 2020', 'caftan vert 2020', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-03-15 11:26:00', '2020-04-12 14:00:55', 2, 'caftan-vert-2020', '[\"products\\\\April2020\\\\ueMixrOMB0gveTfuMyQw.jpg\",\"products\\\\April2020\\\\wdW0hWQ4eoGaAIuRTIYV.jpg\",\"products\\\\April2020\\\\iybOZcc9T1BK7cbCyczk.jpg\",\"products\\\\April2020\\\\FisA8vj86GSaQsYkolfw.jpg\",\"products\\\\April2020\\\\rglCLgp7dJLRgYUz3lfP.jpg\"]'),
(14, 2, 'white djellaba', 'white djellaba', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:03:09', '2020-04-12 17:03:09', 3, 'white-djellaba', '[\"products\\\\April2020\\\\Piy3pP6aB3VXKLI20vWc.jpg\",\"products\\\\April2020\\\\iq8IAjlCjU024oJ1IB7T.jpg\",\"products\\\\April2020\\\\Jz6Qfk9LMspr24xcJkIH.jpg\",\"products\\\\April2020\\\\Kb247CXODrcDrRT5CXR8.jpg\",\"products\\\\April2020\\\\41YiRuLQELHkWj2ZWS8E.jpg\"]'),
(15, 2, 'blue djellaba', 'blue djellaba', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:03:49', '2020-04-12 17:03:49', 3, 'blue-djellaba', '[\"products\\\\April2020\\\\KOkXgjxzWKZQnHnKWc6o.jpg\",\"products\\\\April2020\\\\XJsCDi3GcPLfx6Efd3W7.jpg\",\"products\\\\April2020\\\\Q89wS0XUk9GXIqvQMPki.jpg\",\"products\\\\April2020\\\\Rl9u1sk8Z4HIfcTfglPz.jpg\",\"products\\\\April2020\\\\ClhroMSk42YHQPtQOdl8.jpg\"]'),
(16, 2, 'yellow djellaba', 'yellow djellaba', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:04:36', '2020-04-12 17:04:36', 2, 'yellow-djellaba', '[\"products\\\\April2020\\\\BgPBaYuC3dQWOedAgHwF.jpg\",\"products\\\\April2020\\\\9waVS7eRwBNRCHhcuGdp.jpg\",\"products\\\\April2020\\\\L4YH8JDktHYyFV411Gt8.jpg\",\"products\\\\April2020\\\\kyn3jwWeem3uhLqYVVAB.jpg\",\"products\\\\April2020\\\\9OQCbankdRlVE4fbsdGz.jpg\"]'),
(17, 2, 'black djellaba', 'black djellaba', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:05:07', '2020-04-12 17:05:07', 3, 'black-djellaba', '[\"products\\\\April2020\\\\SoXG30LYWjrnhQfePDcl.jpg\",\"products\\\\April2020\\\\oQJqZP5GpRl3kZCuAkaA.jpg\",\"products\\\\April2020\\\\y1yfu7zxXjc0siiFYNqh.jpg\",\"products\\\\April2020\\\\kX7G4VTy4vmwdDeOzkho.jpg\",\"products\\\\April2020\\\\oMTAKjyQ19y0h3Rg34fN.jpg\"]'),
(18, 2, 'pink djellaba', 'pink djellaba', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:05:45', '2020-04-12 17:05:45', 3, 'pink-djellaba', '[\"products\\\\April2020\\\\M6e32vSBplV6dnbOgjhV.jpg\",\"products\\\\April2020\\\\h7KQqPfNR1Np6zbFemMW.jpg\",\"products\\\\April2020\\\\Itvd0eGXGiztXTNaj9t8.jpg\",\"products\\\\April2020\\\\mrPmEbn2Klrvdsm3Ua4f.jpg\",\"products\\\\April2020\\\\MvjDjgtwsYqBHraVo18K.jpg\"]'),
(19, 3, 'white gandoura', 'white gandoura', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:07:08', '2020-04-12 17:07:08', 3, 'white-gandoura', '[\"products\\\\April2020\\\\LnLxXzOuGgluIyPLSsKM.jpg\",\"products\\\\April2020\\\\7doCkjyN5EyfHjGLuQXF.jpg\",\"products\\\\April2020\\\\eInxXq2hrJEaZdBqK4wE.jpg\"]'),
(20, 3, 'blue gandoura', 'blue gandoura', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:07:56', '2020-04-12 17:07:56', 3, 'blue-gandoura', '[\"products\\\\April2020\\\\G5JDiDRNZhTWOkELj0FW.jpg\",\"products\\\\April2020\\\\3JOeLDlKlOZIbZC1QY4F.jpg\",\"products\\\\April2020\\\\i8RmhWhYbOxiHOTER42V.jpg\",\"products\\\\April2020\\\\M4PvyjMmSg8p3325M2sS.jpg\"]'),
(21, 3, 'yellow gandoura', 'yellow gandoura', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:08:39', '2020-04-12 17:08:39', 4, 'yellow-gandoura', '[\"products\\\\April2020\\\\yCZEaYK9i9uJtsmbzaDg.jpg\",\"products\\\\April2020\\\\Gm7tkqSxb4FfPfZNrMqe.jpg\",\"products\\\\April2020\\\\rtaU1V7Nv1XWLAfcdUZV.jpg\",\"products\\\\April2020\\\\mUt7XUZizbXehk9zk0th.jpg\",\"products\\\\April2020\\\\LkVR42IntbznCFO9SiPw.jpg\"]'),
(22, 3, 'green gandoura', 'green gandoura', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:09:16', '2020-04-12 17:09:16', 1, 'green-gandoura', '[\"products\\\\April2020\\\\IMKjtvyiQbwDLSexVzkZ.jpg\",\"products\\\\April2020\\\\RUgfjLMF4hZXdwUZBPoL.jpg\",\"products\\\\April2020\\\\UiWUPMeFW8zNdimGTv6u.jpg\",\"products\\\\April2020\\\\yRHySkQilNrS4WZ9kYfJ.jpg\",\"products\\\\April2020\\\\qJRwtYbSJHf3crm6GxUC.jpg\"]'),
(23, 4, 'blue combinison', 'blue combinison', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:10:14', '2020-04-12 17:10:14', 3, 'blue-combinison', '[\"products\\\\April2020\\\\sa4AfLzVJJbztDEttrMq.jpg\",\"products\\\\April2020\\\\rS1vnPFFI2em8Of16O7O.jpg\",\"products\\\\April2020\\\\3xf29YHnCieQ7lHDfB67.jpg\",\"products\\\\April2020\\\\9b7lJCUr1Ym97tpF1xyb.jpg\",\"products\\\\April2020\\\\cAlYBoMZC7ElMKwNqBoF.jpg\"]'),
(24, 4, 'yellow combinison', 'yellow combinison', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:10:57', '2020-04-12 17:10:57', 3, 'yellow-combinison', '[\"products\\\\April2020\\\\83q5a2RjYAyEQB4oYUJy.jpg\",\"products\\\\April2020\\\\rpGdfehUFLj7RYD2g1Gr.jpg\",\"products\\\\April2020\\\\BlpdNW7eZxyRmhWTGQdM.jpg\",\"products\\\\April2020\\\\aBwt1jked2Xzg2vR3cre.jpeg\",\"products\\\\April2020\\\\lGjwTfXK1iLabJ3eQvX6.jpg\",\"products\\\\April2020\\\\meWMxHdmcdSpVCVNQjB7.jpg\"]'),
(25, 4, 'black combinison', 'black combinison', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:11:36', '2020-04-12 17:11:36', 2, 'black-combinison', '[\"products\\\\April2020\\\\VidDL8qyzWOtRMuM6YDO.jpg\",\"products\\\\April2020\\\\C7aME707TZIAv9ROaMUY.jpg\",\"products\\\\April2020\\\\2wnnra1urMJQCsdRWeeZ.jpg\",\"products\\\\April2020\\\\2RQh0mv6e7A1UtqVqxpp.jpg\",\"products\\\\April2020\\\\mnGxv498MNlYVo6GnXZP.jpg\"]'),
(26, 4, 'red combinison', 'red combinison', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:12:17', '2020-04-12 17:12:17', 4, 'red-combinison', '[\"products\\\\April2020\\\\2xGWW1UqX6n9ya4duTpn.jpg\",\"products\\\\April2020\\\\uouhtXb0lRMHAOg5lHY2.jpg\",\"products\\\\April2020\\\\u19OLVk8z8DYK0PGiImr.jpg\",\"products\\\\April2020\\\\dOVLKYsuwpYubWeUIgZW.jpg\",\"products\\\\April2020\\\\pwFNiYgYfYo15o5qchvT.jpg\"]'),
(27, 5, 'white robe', 'white robe', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:13:15', '2020-04-12 17:13:15', 3, 'white-robe', '[\"products\\\\April2020\\\\Ny81imjursn3o7HGKLIO.jpg\",\"products\\\\April2020\\\\gI14zEm2ao3jaFUiy1If.jpg\",\"products\\\\April2020\\\\kvGqJn39hvXTzNiomkdS.jpg\",\"products\\\\April2020\\\\Tk4Jc5GfF326u2tCmh2V.jpg\",\"products\\\\April2020\\\\m8dMD86CB8C5ctrGFlQF.jpg\"]'),
(28, 5, 'black robe', 'black robe', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:13:47', '2020-04-12 17:13:47', 3, 'black-robe', '[\"products\\\\April2020\\\\RiSEVBxGB2ZaQFjRWwKN.jpg\",\"products\\\\April2020\\\\0BvZZFgXb7PoRXl6ApcF.jpg\",\"products\\\\April2020\\\\TuTed64okF3LJVSVEIKG.jpg\",\"products\\\\April2020\\\\z06uVUWL0OhF1ZrqN8J0.jpg\",\"products\\\\April2020\\\\3Y2EtHvH070Vy6nq9k9x.jpg\",\"products\\\\April2020\\\\9GaLar9FGT41GkxaPv8Y.jpg\"]'),
(29, 5, 'red robe', 'red robe', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:16:08', '2020-04-12 17:16:08', 2, 'red-robe', '[\"products\\\\April2020\\\\SrFogwe0YB1j6ryaFHvT.jpg\",\"products\\\\April2020\\\\4l4KnH01ij2gnK71cQs1.jpg\",\"products\\\\April2020\\\\d3RvzU4E4fhMEUeM0Vaq.jpg\",\"products\\\\April2020\\\\FrLQx8RgyeSqqVVn7o9S.jpg\",\"products\\\\April2020\\\\h0bV3MViTsBIxQ0LDASH.jpg\",\"products\\\\April2020\\\\K5YX8EXrT9oS6ZY9Ff12.webp\",\"products\\\\April2020\\\\bHYz5dHf9cPjjDgHRCQ9.webp\",\"products\\\\April2020\\\\NfvbhtLSzQzlyRhvMUMF.jpg\"]'),
(30, 6, 'bague', 'bague', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:17:06', '2020-04-12 17:17:06', 3, 'bague', '[\"products\\\\April2020\\\\XsbkJlqFuJWANBSc8DeC.jpg\",\"products\\\\April2020\\\\qmDxcMJ6k0UxZwIVxxRz.jpeg\",\"products\\\\April2020\\\\9zmZKG9umJDreNfSr3ni.jpg\",\"products\\\\April2020\\\\XRUyEeTwvX2HYFNFBIIH.jpg\",\"products\\\\April2020\\\\lYjIRz8VteF2qHA0yJQM.jpg\",\"products\\\\April2020\\\\D1jNC3galMIO9CtclLgw.jpg\"]'),
(31, 6, 'ceinture', 'ceinture', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:17:43', '2020-04-12 17:17:43', 2, 'ceinture', '[\"products\\\\April2020\\\\G1HWWv4578hVTpwAiSn3.jpg\",\"products\\\\April2020\\\\NDylAAtHgQsqvWBhlpVQ.jpg\",\"products\\\\April2020\\\\kmFXc4ZbWbbi28pR2jfc.jpg\",\"products\\\\April2020\\\\VXECoxFxrmraoe4Hw9S4.jpg\",\"products\\\\April2020\\\\2UpMEehwvAC8haUzyGII.jpg\"]'),
(32, 6, 'collier', 'collier', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:18:17', '2020-04-12 17:18:17', 3, 'collier', '[\"products\\\\April2020\\\\VEMtS91cFaTVF4Q7JFGZ.jpeg\",\"products\\\\April2020\\\\PW99gVtEmKQcGLnayJXC.jpg\",\"products\\\\April2020\\\\CeQHuEmbjzWdTPj8UBzV.jpg\",\"products\\\\April2020\\\\5ENV7DHK7Zho0TM20tDO.jpg\",\"products\\\\April2020\\\\vj81fQvV9bCLHcO7yhtm.jpg\",\"products\\\\April2020\\\\8WmgclPYaSKMZH8rBbSK.jpg\"]'),
(33, 6, 'montre', 'montre', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:18:48', '2020-04-12 17:18:48', 1, 'montre', '[\"products\\\\April2020\\\\pPqW7sDzBE0aO38GLCJR.jpg\",\"products\\\\April2020\\\\EAumS44lgSnDcvlScyYu.jpg\",\"products\\\\April2020\\\\DimVQvtvc9f89OhmefiN.jpg\",\"products\\\\April2020\\\\f3LhmU6MT6oQX59kFoMt.jpg\"]'),
(34, 6, 'sac', 'sac', NULL, NULL, '[]', '[]', NULL, NULL, NULL, NULL, '2020-04-12 17:19:15', '2020-04-12 17:19:15', 4, 'sac', '[\"products\\\\April2020\\\\topnNiA5qAdtwufAFyoG.jpg\",\"products\\\\April2020\\\\cFZbVRHip3KWHk7qpmCo.jpg\",\"products\\\\April2020\\\\Fx1zSL9BmokbOddtYh0b.jpg\",\"products\\\\April2020\\\\ANHWF534HM4m7CnJ9j1Y.jpg\",\"products\\\\April2020\\\\j4l8mJwDtJ1XlHJB97wF.jpg\"]');

CREATE TABLE roles (
  id bigint(20) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  display_name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO roles (id, `name`, display_name, created_at, updated_at) VALUES
(1, 'admin', 'Administrator', '2019-11-11 21:49:55', '2019-11-11 21:49:55'),
(2, 'user', 'Normal User', '2019-11-11 21:49:55', '2019-11-11 21:49:55');

CREATE TABLE settings (
  id int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  display_name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  value text COLLATE utf8mb4_unicode_ci,
  details text COLLATE utf8mb4_unicode_ci,
  type varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings (id, `key`, display_name, `value`, details, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Say Couture', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Luxury, Simplicity and Elegance..', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\December2019\\NJwnOFIflAAIhdSyKf0f.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\December2019\\eSPOWZ4Xfzs4zetz0l9U.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Say Couture', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Luxury, Simplicity and Elegance....', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\December2019\\BXlTq91c3OUURamZLnRp.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\December2019\\q8o55OYgA8pt17SogbfW.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.facebook', 'facebook', 'https://www.facebook.com/sbia.youssef/', NULL, 'text', 6, 'Site'),
(12, 'site.twitter', 'twitter', NULL, NULL, 'text', 7, 'Site'),
(13, 'site.instagram', 'instagram', NULL, NULL, 'text', 8, 'Site'),
(14, 'site.linkedin', 'linkedin', NULL, NULL, 'text', 9, 'Site'),
(15, 'site.gmail', 'gmail', NULL, NULL, 'text', 10, 'Site');

CREATE TABLE shippers (
  id int(10) UNSIGNED NOT NULL,
  companyName varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  phone varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO shippers (id, companyName, phone, created_at, updated_at) VALUES
(1, 'zara', '+66554855222885', '2020-02-23 12:12:57', '2020-02-23 12:12:57');

CREATE TABLE translations (
  id int(10) UNSIGNED NOT NULL,
  table_name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  column_name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  foreign_key int(10) UNSIGNED NOT NULL,
  locale varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  value text COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE users (
  id int(10) UNSIGNED NOT NULL,
  role_id bigint(20) UNSIGNED DEFAULT NULL,
  name varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  email varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  avatar varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  password varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  remember_token varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  settings text COLLATE utf8_unicode_ci,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users (id, role_id, `name`, email, avatar, `password`, remember_token, settings, created_at, updated_at) VALUES
(1, 1, 'youssef', 'admin@admin.com', 'users\\December2019\\qo32TBLMU8EXZpnI1v3a.jpg', '$2y$10$Ww.HCXBm3P0wfI82tE5Av.CdkAE12qJNXGZTuGf3uVS.A4KxUA6.u', 'paYj8r6KsfCibsWZVcoQ3gpoFWyexz5UHPJo1GcO876qRrKOtdlBjHTLdxYz', '{\"locale\":\"en\"}', '2019-11-11 21:57:29', '2019-12-25 23:14:24'),
(2, 1, 'youssef SBIA', 'sbia.youssef@gmail.com', 'users/default.png', '$2y$10$WFT6t.6Om7dU4NWPdvm49eNXD1BYUgi5/OrCQOAE47OCJVkJi5yOm', NULL, '{\"locale\":\"en\"}', '2020-03-07 13:31:23', '2020-03-07 13:31:23');

CREATE TABLE user_roles (
  user_id int(10) UNSIGNED NOT NULL,
  role_id bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE categories
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY categories_categoryname_unique (categoryname);

ALTER TABLE collections
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY collections_slug_unique (slug);

ALTER TABLE customers
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY customers_email_unique (email);

ALTER TABLE data_rows
  ADD PRIMARY KEY (id),
  ADD KEY data_rows_data_type_id_foreign (data_type_id);

ALTER TABLE data_types
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY data_types_name_unique (name),
  ADD UNIQUE KEY data_types_slug_unique (slug);

ALTER TABLE menus
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY menus_name_unique (name);

ALTER TABLE menu_items
  ADD PRIMARY KEY (id),
  ADD KEY menu_items_menu_id_foreign (menu_id);

ALTER TABLE orders
  ADD PRIMARY KEY (id);

ALTER TABLE order_details
  ADD PRIMARY KEY (id);

ALTER TABLE password_resets
  ADD KEY password_resets_email_index (email),
  ADD KEY password_resets_token_index (token);

ALTER TABLE payments
  ADD PRIMARY KEY (id);

ALTER TABLE permissions
  ADD PRIMARY KEY (id),
  ADD KEY permissions_key_index (`key`);

ALTER TABLE permission_role
  ADD PRIMARY KEY (permission_id,role_id),
  ADD KEY permission_role_permission_id_index (permission_id),
  ADD KEY permission_role_role_id_index (role_id);

ALTER TABLE products
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY products_slug_unique (slug),
  ADD KEY FK_products_categories (category_id),
  ADD KEY FK_products_collections (collection_id);

ALTER TABLE roles
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY roles_name_unique (name);

ALTER TABLE settings
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY settings_key_unique (`key`);

ALTER TABLE shippers
  ADD PRIMARY KEY (id);

ALTER TABLE translations
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY translations_table_name_column_name_foreign_key_locale_unique (table_name,column_name,foreign_key,locale);

ALTER TABLE users
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY users_email_unique (email),
  ADD KEY users_role_id_foreign (role_id);

ALTER TABLE user_roles
  ADD PRIMARY KEY (user_id,role_id),
  ADD KEY user_roles_user_id_index (user_id),
  ADD KEY user_roles_role_id_index (role_id);


ALTER TABLE categories
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE collections
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE customers
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE data_rows
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

ALTER TABLE data_types
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE menus
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE menu_items
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

ALTER TABLE orders
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

ALTER TABLE order_details
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

ALTER TABLE payments
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE permissions
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

ALTER TABLE products
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

ALTER TABLE roles
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE settings
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE shippers
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE translations
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE users
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE data_rows
  ADD CONSTRAINT data_rows_data_type_id_foreign FOREIGN KEY (data_type_id) REFERENCES data_types (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE menu_items
  ADD CONSTRAINT menu_items_menu_id_foreign FOREIGN KEY (menu_id) REFERENCES menus (id) ON DELETE CASCADE;

ALTER TABLE permission_role
  ADD CONSTRAINT permission_role_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES permissions (id) ON DELETE CASCADE,
  ADD CONSTRAINT permission_role_role_id_foreign FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE;

ALTER TABLE products
  ADD CONSTRAINT FK_products_categories FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT FK_products_collections FOREIGN KEY (collection_id) REFERENCES collections (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE users
  ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES roles (id);

ALTER TABLE user_roles
  ADD CONSTRAINT user_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE,
  ADD CONSTRAINT user_roles_user_id_foreign FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
