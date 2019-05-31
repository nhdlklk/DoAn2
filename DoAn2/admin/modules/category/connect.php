<?php
require_once("/../libraries/Database.php");
$db = new Database ;
$category = $db -> fetchAll("category");
var_dump($category);
?>