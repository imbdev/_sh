<?php 

/**
 *
 * Plugin Name: MPF Starter Kit 1.0
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

define( "PLUGIN_DIR", plugin_dir_path( __FILE__ ) );

// echo PLUGIN_DIR;
// echo plugin_dir_path( __FILE__ ) . '<br>';
// echo plugins_url( '/assets/js/admin.js', __FILE__ );
// die;

// require_once( plugin_dir_path( __FILE__ ) . 'class-moose-plugin-framework.php' );
require_once( plugin_dir_path( __FILE__ ) . 'class-enqueue.php' );

function mpf_start() {

	$setup_styles = new MPFStarterEnqueue();
	$setup_styles->initialize();

}

mpf_start();

// Activation
require_once plugin_dir_path( __FILE__ ) . 'inc/Base/class-activate.php';
register_activation_hook( __FILE__, array( 'MPFStarterActivate', 'activate' ) );

// Activation
require_once plugin_dir_path( __FILE__ ) . 'inc/Base/class-deactivate.php';
register_deactivation_hook( __FILE__, array( 'MPFStarterDeactivate', 'deactivate' ) );