<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'eamghar' );

/** Database password */
define( 'DB_PASSWORD', '1337' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'Sh<nz$K~]-w[s+F8{B Cm<V<f3[AN8N:*Zrv93,?Dx3YXj3&6ags`d7X,jpd~<^A' );
define( 'SECURE_AUTH_KEY',   '}|FK2E4a~3pDt`O/Ld@.A8JcHAj~d)1oQe*R+ayBS6tSIZCr16+H#T9pgXzMf05-' );
define( 'LOGGED_IN_KEY',     ']?b(H[lwhvHoAD&(?qv/R&*JukUhpA;RaxiYx+x2:5Kr)sLbi)~s(XDl|QdgmR(o' );
define( 'NONCE_KEY',         '7(9ZPMerC}aNOGigh Wsnf2H,$hyup94c1^u`;$JBK!A$@e~5ckvBnl</pz?]qFH' );
define( 'AUTH_SALT',         'n_24Y2UNg?~-XSAC^hF|L)iY~(I^z~WtT*fTw@1hCn=WfI$[zqqN58m4/d9`iHsX' );
define( 'SECURE_AUTH_SALT',  '{G1,vV@i#owgk#mVqy)gY~Fcag$,gA6>i;`$Y]<T7g!h[@YtIxS,<3vJIh#IZ_z{' );
define( 'LOGGED_IN_SALT',    '0$IPl>/:t*t2~}o|:2I%VGIEZH1W7HbM$%HvG{zxb$<Q|5K[LL1|7~WxR<?lJDl<' );
define( 'NONCE_SALT',        'nb}(4K7KjRlc/?J)H`8p]`_!(z5USr8}p3tKij=-0BW5?7`_k#P2g)TIS&jfnXAA' );
define( 'WP_CACHE_KEY_SALT', '4&$%cm) 3?,uAX~oR-vSp=VqE9^O~yc>2 :[x4OEw6mahiz<[i2O&O-f^FL^^fl}' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_PORT', 6379 );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
