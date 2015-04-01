<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'we2015');

/** MySQL database username */
define('DB_USER', 'we2015');

/** MySQL database password */
define('DB_PASSWORD', '1234');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '-0O%J/RKS+#,K6B-g|QeKWtv(z? e6H2_K/-cBIYE9(ePRx`g]AI}Rc*[wWE7]eN');
define('SECURE_AUTH_KEY',  '8DVi`{j|x)a2Qug>f]qxK#5c+hWX)k DK3WyN-|LnK;>3Z%^z?@*kr3|~ue0#q[A');
define('LOGGED_IN_KEY',    'H#otB//`&QR2ffG3H-j5hr&?gH^|wh<>)z ~=SJ6)npt/1=Lak^1uqN19</x`l,e');
define('NONCE_KEY',        'U!*/j7F#jW`cFU#GA=n< NWV2|ReZ:FHFwB[0qR,93c~^L16kDWm@_9C}HWFd@hx');
define('AUTH_SALT',        'ZBXC>%NHS#Lj68?h!6fu20oYZ46itKu-IFS;#s=N%DB<U[!iCjdr^uTd4$PW**uz');
define('SECURE_AUTH_SALT', 'of]H}*tMm&q*`O!TdF^6lpe~~T8dX*y5Z|,Yffs_J-;u{7+ir7+4VtUosm{k[)-t');
define('LOGGED_IN_SALT',   'SKp2-L &e=+>%^jY>*ZV/lB{.}[CX?^pQnE&f3%:OVVW<31FL//9H?+vm$b- i$}');
define('NONCE_SALT',       'D+u@  w!xlRp}g!% j^}}T`8HD}DdP@6}W  0@cq-`FVd&[y4:4a|IM*;<I}=F:r');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
