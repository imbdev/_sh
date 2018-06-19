<?php 

/**
* PLUGIN DEACTIVATION CLASS
*/
class MPF[Replace]Deactivate
{
	function __construct()
	{
		# code...
	}

	public static function deactivate() {

		flush_rewrite_rules();

	}

}
