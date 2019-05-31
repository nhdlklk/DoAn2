<?php
$open = "category";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);
$id = intval(getInput('id'));
  //_debug($id);
$Editadmin = $db->fetchID("admin",$id); 
  if(empty($Editadmin))
  {
    $_SESSION['error']=" Dữ liệu không tồn tại";
    redirectAdmin("admin");
  }
 
  if($_SERVER["REQUEST_METHOD"] == "POST")
  {
    $data = 
        [
          "name" => postInput('name'),
          "email" => postInput("email"),
          "phone" => postInput("phone"),
        
          "address" => postInput("address"),
          "phone" =>postInput("phone"),
          "level" => postInput("level")
        ];
    /*  if(isset($_POST['name']) && $_POST['name'] != NULL)
        {
          $name= $_POST['name'];
        }
        echo $name;
        */
       
      //  $name = postInput("name");
     //   echo $name;
        $error=[];
        if(postInput('name')=='')
        {
          $error['name']=" Mời bạn nhập đầy đủ ";
        }
        if(postInput('email')=='')
        {
          $error['email']=" Mời bạn nhập email";
        }
        else
        {
          if(postInput("email") != $Editadmin['email'])
          {
            $is_check = $db->fetchOne("admin"," email = '".$data['email']."' ");
            if($is_check!=NULL)
            {
                $error['email']=" Email đã tồn tại";
            }
         }
        }
        if(postInput('phone')=='')
        {
          $error['phone']=" Mời bạn nhập số điện thoại";
        }
        
        if(postInput('address')=='')
        {
          $error['address']=" Mời bạn nhập địa chỉ";
        }
       if(postInput('password') != NULL && postInput('re_password') !=NULL )
          {
              if(postInput('password')!= postInput('re_password'))
              {
                $error['password'] = "Mật khẩu thay đổi không khớp";
              }
              else
              {
                $data['password'] = MD5(postInput("password"));
              }
          }
        if(empty($error))
        {
          
            $id_update=$db->update("admin",$data,array("id"=>$id));
            if($id_update>0)
            {

              $_SESSION['success'] = "Cập nhật thành công";
              redirectAdmin("admin");
            }
            else
            {
              $_SESSION['error']="Cập nhật thất bại";
              redirectAdmin("admin");
            }
          
        }
  }
?>
<?php require_once __DIR__. "/../../layouts/header.php" ?>
 <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="index.html">Dashboard</a>
          </li>
          <li class="breadcrumb-item">
            <a href="">Admin</a>
          </li>
          <li class="breadcrumb-item active">Thêm mới</li>
        </ol>
        <div class="clearfix"></div>
         <?php require_once("/../../../partials/nofication.php"); ?>
        <!-- Page Content -->
        <h1>Thêm mới admin</h1>
        <hr>
        <p>This is a great starting point for new custom pages.</p>
       
      </div>
      <!-- /.container-fluid -->
<div class="row">
   <div class="col-md-12">
       <form class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
        
        <div class="form-group">
           <div class="col-md-8">
          <label for="exampleInputEmail1">Họ và tên</label>
         
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tên danh mục" name="name" value="<?php echo $Editadmin['name'] ?>">
          <?php if(isset($error['name'])) : ?>
               <p class="text-danger">  <?php echo $error['name'] ?></p>
             
            <?php endif ?>
        </div>
          <div class="form-group">
        <div class="col-md-8">
          <label for="exampleInputEmail1">Email</label>
         
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"name="email" value="<?php echo $Editadmin['email'] ?>" >
          <?php if(isset($error['email'])) : ?>
               <p class="text-danger">  <?php echo $error['email'] ?></p>
             
            <?php endif ?>
        </div>
        </div>
         <div class="form-group">
        <div class="col-md-8">
          <label for="exampleInputEmail1">Phone</label>
         
          <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phone" value="<?php echo $Editadmin['phone'] ?>">
          <?php if(isset($error['phone'])) : ?>
               <p class="text-danger">  <?php echo $error['phone'] ?></p>
             
            <?php endif ?>
        </div>
        </div>

         <div class="form-group">
        <div class="col-md-8">
          <label for="exampleInputEmail1">Password</label>
         
          <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="password">
          <?php if(isset($error['password'])) : ?>
               <p class="text-danger">  <?php echo $error['password'] ?></p>
             
            <?php endif ?>
        </div>
        </div>
         <div class="form-group">
        <div class="col-md-8">
          <label for="exampleInputEmail1"> Re-Password</label>
         
          <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="re_password" >
          <?php if(isset($error['re_password'])) : ?>
               <p class="text-danger">  <?php echo $error['re_password'] ?></p>
             
            <?php endif ?>
        </div>
        </div>
         <div class="form-group">
           <div class="col-md-8">
          <label for="exampleInputEmail1">Address</label>
         
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Địa chỉ" name="address" value="<?php echo $Editadmin['address'] ?>">
          <?php if(isset($error['address'])) : ?>
               <p class="text-danger">  <?php echo $error['address'] ?></p>
             
            <?php endif ?>
        </div>

       
        </div>
        </div>

           <div class="form-group">
           <div class="col-md-8">
          <label for="exampleInputEmail1">Level</label>
         
            <select class="form-control" name ="level">
              <option value="1" <?php isset($Editadmin['level']) && $Editadmin['level'] == 1 ? "selected = 'selected'" : '' ?>>CTV</option>
              <option value="2" <?php isset($Editadmin['level']) && $Editadmin['level'] == 2 ? "selected = 'selected'" : '' ?>>Admin</option>
            </select>

          <?php if(isset($error['level'])) : ?>
               <p class="text-danger">  <?php echo $error['level'] ?></p>
             
            <?php endif ?>
        </div>

       
        </div>
        </div>

        <div class="form-check">
          <div class="col-md-10">
          
        </div>
        <button type="submit" class="btn btn-primary">Lưu</button>
      </div>
      </form>
  </div>
</div>
     <?php require_once __DIR__. "/../../layouts/footer.php" ?>