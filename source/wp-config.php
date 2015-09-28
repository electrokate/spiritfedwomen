<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'spiritfedwomen');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'dAdZ%Ei+>wWVm@g2tJ}8vt%g*#k&P&eOK6j}S7[s|Zxay8uc2PeLIC>%O>!IbX+b');
define('SECURE_AUTH_KEY',  '_LQ&nU,+8uB!dQE#bSC?d>fO;gRlK}k3FiQ^&qJ?rpbX=fKG3I|=+7/y$bKSH+ij');
define('LOGGED_IN_KEY',    'zv{&,(qEAJ/rM+FMY$F(4~ZokE#X3]$~Qs0(,%73<EcXPb=,(8jeqd5:6T0MeW_+');
define('NONCE_KEY',        'S@2V|O-TL/^zWv<wJ>g<0=c?JP{EF0Ij9Tm8N1*-c=X9V`lc(|4!?Z5_f]% 9&|/');
define('AUTH_SALT',        '`C3b1J|Y4[u98{=g-ZHCjd(JN)km)C  JM&4rMN+P2aQ&eB2LW%3V-0:xUY0)e0(');
define('SECURE_AUTH_SALT', 'E7=s5,l4o)$O(rF^%Vrq%ZF9e$nu~}T|ibIeybp`]0-yo_}G.zop{uGZ&+v1e9P`');
define('LOGGED_IN_SALT',   '4qef&N$PDK+VA[,c}3>Au4myP<i,c}kYW*?f6uYjXJ[YF<!A>{|w88|W!kYd)?{r');
define('NONCE_SALT',       'URLxi,u*NMBYaq-+4+,rZ;%3CW Q:PH6Myik#WoNLK8aK[SOO5@l/L(BLEEb4ta5');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
