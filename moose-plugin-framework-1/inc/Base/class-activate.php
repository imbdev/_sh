<?php 

/**
* PLUGIN ACTIVATION CLASS
*/
class MPFStarterActivate
{
	function __construct()
	{
		# code...
	}

	public static function activate() {

		flush_rewrite_rules();
	}
}
