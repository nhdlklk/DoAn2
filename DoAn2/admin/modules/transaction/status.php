<?php
$open = "transaction";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);
$id = intval(getInput('id'));
  //_debug($id);
$Edittransaction = $db->fetchID("transaction",$id); 
  if(empty($Edittransaction))
  {
    $_SESSION['error']=" Dữ liệu không tồn tại";
    redirectAdmin("transaction");
  }
  if($Edittransaction['status']==1)
  {
     $_SESSION['error']=" Đơn hàng đã được xử lý rồi";
    redirectAdmin("transaction");
  }
  $status= 1;
  $update=$db->update("transaction",array("status"=>$status),array("id"=>$id));
           if($update>0)
                    {

                      $_SESSION['success']="Cập nhật thành công";
                      $sql="SELECT product_id,qty FROM orders WHERE transaction_id=$id";
                      $Oder=$db->fetchsql($sql);
                      foreach ($Oder as $item) 
                      {
                        $idproduct=intval($item['product_id']);
                        $product=$db->fetchID("product",$idproduct);
                        $number= $product['number']- $item['qty'];
                        $up_pro=$db->update("product",array("number"=>$number,"pay"=> $product['pay']+1),array("id"=>$idproduct));
                      }
                      redirectAdmin("transaction");
                    }
                    else
                    {
                      //Loi ko them dc
                      $_SESSION['error']="Dữ liệu không thay đổi";
                      redirectAdmin("transaction");
                    }
 ?>