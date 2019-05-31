<?php
	session_start();
	unset($_SESSION['admin_name']);
	unset($_SESSION['admin_id']);
	header("location: http://localhost:8012/DoAn2/login");
 ?>