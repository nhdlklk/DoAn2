<?php
$open = "category";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);
$id = intval(getInput('id'));
  //_debug($id);
$Deleteadmin = $db->fetchID("users",$id); 
  if(empty($Deleteadmin))
  {
    $_SESSION['error']=" Dữ liệu không tồn tại";
    redirectAdmin("user");
  }
  
  $num = $db->delete("users",$id);
  if($num > 0)
  {
       $_SESSION['success']=" Xoá thành công";
            redirectAdmin("user");
  }
  else
  {
      $_SESSION['error']="Xóa Thất bại ";
            redirectAdmin("user");
  }
?>
