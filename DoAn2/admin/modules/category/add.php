<?php
$open = "category";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);
  if($_SERVER["REQUEST_METHOD"] == "POST")
  {
    /*  if(isset($_POST['name']) && $_POST['name'] != NULL)
        {
          $name= $_POST['name'];
        }
        echo $name;
        */
        $data = 
        [
          "name" => postInput('name'),
          "slug" => to_slug(postInput("name"))
        ];
      //  $name = postInput("name");
     //   echo $name;
        $error=[];
        if(postInput('name')=='')
        {
          $error['name']=" Mời bạn nhập đầy đủ ";
        }
        if(empty($error))
        {

         // $id_insert = $db -> insert("category",$data);
          $isset=$db->fetchOne("category","name='".$data['name']."'");
         // if($id_insert>0)
          if(count($isset)>0)
          {
            $_SESSION['error']="Tên danh mục đã tồn tại";
          }
          else
          {
            $id_insert = $db -> insert("category",$data);
            if($id_insert>0)
            {

            $_SESSION['success']="Thêm mới thành công";
            redirectAdmin("category");
            }
          
            else
           {
            //Loi ko them dc
            $_SESSION['error']="Thêm mới thất bại";
              redirectAdmin("category");
           }
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
            <a href="">Danh Mục</a>
          </li>
          <li class="breadcrumb-item active">Thêm mới</li>
        </ol>
        <div class="clearfix"></div>
         <?php require_once("/../../../partials/nofication.php"); ?>
        <!-- Page Content -->
        <h1>Thêm mới comment</h1>
        <hr>
        <p>This is a great starting point for new custom pages.</p>
       
      </div>
      <!-- /.container-fluid -->
<div class="row">
   <div class="col-md-12">
       <form class="form-horizontal" action="" method="POST">
        <div class="form-group">
           <div class="col-md-8">
          <label for="exampleInputEmail1">Nội dung commemt</label>
         
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tên danh mục" name="name">
          <?php if(isset($error['name'])) : ?>
               <p class="text-danger">  <?php echo $error['name'] ?></p>
             
            <?php endif ?>
         
          <small id="emailHelp" class="form-text text-muted">Please enter</small>
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