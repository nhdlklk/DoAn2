<?php
$open = "category";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);
$id = intval(getInput('id'));
  //_debug($id);
$Editproduct = $db->fetchID("product",$id); 
  if(empty($Editproduct))
  {
    $_SESSION['error']=" Dữ liệu không tồn tại";
    redirectAdmin("product");
  }
  
  $num = $db->delete("product",$id);
  if($num > 0)
  {
       $_SESSION['success']=" Xoá thành công";
            redirectAdmin("product");
  }
  else
  {
      $_SESSION['error']="Xóa Thất bại ";
            redirectAdmin("product");
  }
?>
