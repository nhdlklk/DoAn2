<?php
session_start();
require_once("/../libraries/Database.php");
require_once("/../libraries/Function.php");
$db = new Database ;
define("ROOT",$_SERVER['DOCUMENT_ROOT']."/shopgiay/public/uploads/");


$category=$db->fetchAll("category");
$sqlNew="SELECT * FROM product WHERE 1 ORDER BY ID DESC LIMIT 3";
$productNew=$db->fetchsql($sqlNew);
$sqlPay="SELECT * FROM product WHERE 1 ORDER BY PAY DESC LIMIT 3";
$productPay=$db->fetchsql($sqlPay);
?>