<?php
session_start();
require_once("/../../libraries/Database.php");
require_once("/../../libraries/Function.php");
$db = new Database ;
define("ROOT",$_SERVER['DOCUMENT_ROOT']."/shopgiay/public/uploads/");
if(!isset($_SESSION['admin_id']))
{
	header("location: /DoAn2/login/");
}
?>