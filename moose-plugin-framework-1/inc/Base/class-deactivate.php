<?php 

/**
* PLUGIN DEACTIVATION CLASS
*/
class MPFStarterDeactivate
{
	function __construct()
	{
		# code...
	}

	public static function deactivate() {

		flush_rewrite_rules();

	}

}
