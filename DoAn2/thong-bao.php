<?php
		require_once("/autoload/autoload.php"); 
  
      
?>
<?php
		require_once("/layouts/header.php"); 
?>

                    <div class="col-md-9 ">
                        <section class="box-main1">
                            <h3 class="title-main"><a href=""> Thông báo thanh toán</a> </h3>
                            <?php if(isset($_SESSION['success'])): ?>
                              <div class="alert alert-success" >
                                  <?php echo $_SESSION['success'] ;unset($_SESSION['success']) ?>
                              </div>  
                            <?php endif ?>
                            
                            <a href="index.php" class="btn btn-success"> Trở về trang chủ</a>
                           
                            
                        </section>

                    </div>
                </div>

       <?php
		require_once("/layouts/footer.php"); 
?>
