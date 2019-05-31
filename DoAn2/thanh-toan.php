<?php
		require_once("/autoload/autoload.php"); 
        $user=$db->fetchID("users",intval($_SESSION['name_id'])); 
      if($_SERVER["REQUEST_METHOD"] == "POST")
      {
            $data=
            [
                'amount' => $_SESSION['total'],
                'users_id' => $_SESSION['name_id'],
                'note' => postInput("note")
            ];
          
                $idtran = $db->insert("transaction",$data);
               
                if($idtran > 0)
                {
                    foreach ($_SESSION['cart'] as $key => $value) 
                    {
                        $data2=
                        [
                            'transaction_id'=> $idtran,
                            'product_id' => $key,
                            'qty' => $value['qty'],
                            'price' => $value['price']
                        ];
                       
                        $id_insert= $db->insert("orders",$data2);
                    }
                      unset($_SESSION['cart']);
                      unset($_SESSION['total']);
                    $_SESSION['success']="Đã lưu thông tin đơn hàng ! Chúng tôi sẽ liên hệ với bạn nhanh nhất";
                    header("location: thong-bao.php");
                }
            }
      ?>
<?php
		require_once("/layouts/header.php"); 
?>

                    <div class="col-md-9">
                        <section class="box-main1">
                            <h3 class="title-main"><a href="">Thanh toán đơn hàng</a> </h3>
                            
                            <form action="" method="POST" class="form-horizontal" role="form" style="margin-top: 20px">
                                    
                                    <div class="form-group">
                                       <label class="col-md-3 control-label"> Tên thành viên</label>
                                       <div class="col-md-8">
                                           <input type="text" readonly="" name="name" class="form-control" value="<?php echo $user['name'] ?>">
                                          
                                       </div>
                                    </div>

                                    <div class="form-group">
                                       <label class="col-md-3 control-label"> Email </label>
                                       <div class="col-md-8">
                                           <input type="email" readonly="" name="email" class="form-control"value="<?php echo $user['email'] ?>">
                                           
                                       </div>
                                    </div>

                               

                                     <div class="form-group">
                                       <label class="col-md-3 control-label"> Số điện thoại</label>
                                       <div class="col-md-8">
                                           <input type="number" readonly="" name="phone" class="form-control"value="<?php echo $user['phone'] ?>">
                                           
                                       </div>
                                    </div>


                                     <div class="form-group">
                                       <label class="col-md-3 control-label"> Địa chỉ</label>
                                       <div class="col-md-8">
                                           <input type="text" name="address" class="form-control"value="<?php echo $user['address'] ?>">
                                           
                                       </div>
                                    </div>
                                         <div class="form-group">
                                       <label class="col-md-3 control-label"> Số tiền</label>
                                       <div class="col-md-8">
                                           <input type="text" readonly="" name="address" class="form-control"value="<?php echo formatPrice($_SESSION['total']) ?>">
                                           
                                       </div>
                                    </div>



                                    <div class="form-group">
                                       <label class="col-md-3 control-label"> Ghi chú</label>
                                       <div class="col-md-8">
                                           <input type="text" name="note" class="form-control">
                                           
                                       </div>
                                    </div>

                                    <button type="submit" class ="btn btn-success col-md-2 col-md-offset-5" style="margin-bottom: 20px"> Xác nhận</button>
                            </form>
                                    
                            
                        </section>

                    </div>
                </div>

       <?php
		require_once("/layouts/footer.php"); 
?>
