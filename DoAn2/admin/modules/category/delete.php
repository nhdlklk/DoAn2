<?php
$open = "category";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);
$id = intval(getInput('id'));
  //_debug($id);
$EditCategory = $db->fetchID("category",$id); 
  if(empty($EditCategory))
  {
    $_SESSION['error']=" Dữ liệu không tồn tại";
    redirectAdmin("category");
  }
    $is_product= $db -> fetchOne("product","category_id = $id ");
    if($is_product == NULL)
    {
                $num = $db->delete("category",$id);
          if($num > 0)
          {
               $_SESSION['success']=" Xoá thành công";
                    redirectAdmin("category");
          }
          else
          {
              $_SESSION['error']="Xóa Thất bại ";
                    redirectAdmin("category");
          }
    }
    else
    {
       $_SESSION['error']="Danh mục có sản phẩm ! Bạn không thể xóa ";
            redirectAdmin("category");
    }
  
?>
