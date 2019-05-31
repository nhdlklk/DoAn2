<?php
		require_once("/autoload/autoload.php"); 
    if(isset($_SESSION['name_id']))
    {
       echo "<script>alert('Bạn đã có tài khoản'); location.href='index.php'</script>";
    }
   
    // if(mysqli_connect_errno())
    // {
    //   echo "lỗi ".mysqli_connect_errno();
    // }
    //$name=$email=$password=$address=$phone='';
    $data=
    [
        'name'=>postInput("name"),
        'email'=>postInput("email"),
        'password'=>postInput("password"),
        'address'=>postInput("address"),
        'phone'=>postInput("phone")
    ];
      $error=[];
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
      
      
      if($data['name']=='')
      {
        $error['name']=" Tên không được để trống";
      }
      
      if($data['email']=='')
      {
        $error['email']=" Email không được để trống";
      }
      else
      {
        $is_check=$db->fetchOne("users","email='".$data['email']."'");
        if($is_check!=NULL)
        {
          $error['email']=" Email đã tồn tại";
        }
      }

       
      if($data['phone']=='')
      {
        $error['phone']=" Số điện thoại không được để trống";
      }
       
      if($data['password']=='')
      {
        $error['password']=" Password không được để trống";
      }
      else
      {
        $data['password']=MD5(postInput('password'));
      }
      if($data['address']=='')
      {
        $error['address']=" Địa chỉ không được để trống";
      }
      if(empty($error))
      {
          // $sql ="INSERT INTO users(name,email,password,phone,address) VALUES('".$name."','".$email."','".MD5($password)."','".$phone."','".$address."') ";
          // $insert=mysqli_query($conn,$sql) or die ("Thêm mới thất bại");
        $idinsert=$db->insert("users",$data);
        if($idinsert>0)
        {
            $_SESSION['success']="Đăng ký thành công ! Mời bạn đăng nhập";
            header("location: dang-nhap.php");

        }
        else
          {
            
          }

      }

    }

?>
<?php
		require_once("/layouts/header.php"); 
?>

                    <div class="col-md-9 bor">
                        <section class="box-main1">
                            <h3 class="title-main"><a href=""> Đăng ký thành viên</a> </h3>
                                                        
                            <form action="" method="POST" class="form-horizontal" role="form" style="margin-top: 20px">
                                    
                                    <div class="form-group">
                                       <label class="col-md-3 control-label"> Tên thành viên</label>
                                       <div class="col-md-8">
                                           <input type="text" name="name" class="form-control" value="<?php echo $data['name'] ?>">
                                           <?php if (isset($error['name'])): ?>
                                             <p class="text-danger"><?php echo $error['name'] ?></p>
                                           <?php endif ?>
                                       </div>
                                    </div>

                                    <div class="form-group">
                                       <label class="col-md-3 control-label"> Email </label>
                                       <div class="col-md-8">
                                           <input type="email" name="email" class="form-control"value="<?php echo $data['email'] ?>">
                                           <?php if (isset($error['email'])): ?>
                                             <p class="text-danger"><?php echo $error['email'] ?></p>
                                           <?php endif ?>
                                       </div>
                                    </div>

                                    <div class="form-group">
                                       <label class="col-md-3 control-label"> Mật khẩu</label>
                                       <div class="col-md-8">
                                           <input type="password" name="password" class="form-control">
                                           <?php if (isset($error['password'])): ?>
                                             <p class="text-danger"><?php echo $error['password'] ?></p>
                                           <?php endif ?>
                                       </div>
                                    </div>

                                     <div class="form-group">
                                       <label class="col-md-3 control-label"> Số điện thoại</label>
                                       <div class="col-md-8">
                                           <input type="number" name="phone" class="form-control"value="<?php echo $data['phone'] ?>">
                                           <?php if (isset($error['phone'])): ?>
                                             <p class="text-danger"><?php echo $error['phone'] ?></p>
                                           <?php endif ?>
                                       </div>
                                    </div>


                                     <div class="form-group">
                                       <label class="col-md-3 control-label"> Địa chỉ</label>
                                       <div class="col-md-8">
                                           <input type="text" name="address" class="form-control"value="<?php echo $data['address'] ?>">
                                           <?php if (isset($error['address'])): ?>
                                             <p class="text-danger"><?php echo $error['address'] ?></p>
                                           <?php endif ?>
                                       </div>
                                    </div>

                                    <button type="submit" class ="btn btn-success col-md-2 col-md-offset-5" style="margin-bottom: 20px"> Đăng ký</button>
                            </form>
                                                        
                        </section>

                    </div>
                </div>

       <?php
		require_once("/layouts/footer.php"); 
?>
