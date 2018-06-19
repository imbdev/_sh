<?php 

/**
 *
 * Plugin Name: MPF [Replace]
 * Plugin URI:	https://htmlfivedev.com 
 * Description: Display a short notice above the post content.
 * Version: 	1.0
 * Author URI: 	https://www.linkedin.com/in/ahmedmusawir
 * License: 	GPL-2.0+ 
 *
 */

//If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die("Cannot Access Directly");
}

define( "[REPLACE]PLUGIN_DIR", plugin_dir_path( __FILE__ ) );


// require_once( plugin_dir_path( __FILE__ ) . 'class-[replace].php' );
require_once( plugin_dir_path( __FILE__ ) . 'class-enqueue.php' );

function mpf_[replace]_start() {

	$setup_styles = new MPF[Replace]Enqueue();
	$setup_styles->initialize();

}

mpf_[replace]_start();

// Activation
require_once plugin_dir_path( __FILE__ ) . 'inc/Base/class-activate.php';
register_activation_hook( __FILE__, array( '[Replace]Activate', 'activate' ) );

// Activation
require_once plugin_dir_path( __FILE__ ) . 'inc/Base/class-deactivate.php';
register_deactivation_hook( __FILE__, array( '[Replace]Deactivate', 'deactivate' ) );