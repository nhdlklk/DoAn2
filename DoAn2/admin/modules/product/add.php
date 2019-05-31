<?php
$open = "category";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);
$category = $db->fetchAll("category");
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
          "slug" => to_slug(postInput("name")),
          "category_id" => postInput("category_id"),
          "price" =>  postInput("price"),
          "sale" => postInput("sale"),
          "number" =>postInput("number"),
          "content" => postInput("content")
        ];
      //  $name = postInput("name");
     //   echo $name;
        $error=[];
        if(postInput('name')=='')
        {
          $error['name']=" Mời bạn nhập đầy đủ ";
        }
        if(postInput('category_id')=='')
        {
          $error['category_id']=" Mời bạn chọn tên danh mục";
        }
        if(postInput('price')=='')
        {
          $error['price']=" Mời bạn nhập giá";
        }
        if(postInput('content')=='')
        {
          $error['content']=" Mời bạn nhập nội dung";
        }
        if(postInput('number')=='')
        {
          $error['number']=" Mời bạn nhập SL";
        }
        if(!isset($_FILES['thunbar']))
        {
           $error['thunbar']=" Mời bạn chọn hình ảnh";
        }
        if(empty($error))
        {
            if(isset($_FILES['thunbar']))
            {
              $file_name=$_FILES['thunbar']['name'];
               $file_tmp=$_FILES['thunbar']['tmp_name'];
                $file_type=$_FILES['thunbar']['type'];
                  $file_erro=$_FILES['thunbar']['error'];
            }
            if($file_erro==0)
            {
              $part=ROOT ."product/";
              $data['thunbar']=$file_name;
            }
       //  _debug($data);
            $id_insert=$db->insert("product",$data);
            if($id_insert)
            {

              move_uploaded_file($file_tmp,$part.$file_name);
              $_SESSION['success'] = "Thêm mới thành công";
              redirectAdmin("product");
            }
            else
            {
              $_SESSION['error']="Thêm mới thất bại";
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
            <a href="">Sản phẩm</a>
          </li>
          <li class="breadcrumb-item active">Thêm mới</li>
        </ol>
        <div class="clearfix"></div>
         <?php require_once("/../../../partials/nofication.php"); ?>
        <!-- Page Content -->
        <h1>Thêm mới sản phẩm</h1>
        <hr>
        <p>This is a great starting point for new custom pages.</p>
       
      </div>
      <!-- /.container-fluid -->
<div class="row">
   <div class="col-md-12">
       <form class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
        <div class="form-group">
           <div class="col-md-8">
          <label for="exampleInputEmail1">Danh mục sản phẩm</label>
         
        <select class="form-control col-md-8" name="category_id">
          <option value="">Mời bạn chọn danh mục sản phẩm</option>
          <?php foreach ($category as $item): ?>
            <option value="<?php echo $item['id'] ?>"><?php echo $item['name'] ?> </option>
          <?php endforeach ?>
        </select>
          <?php if(isset($error['category_id'])) : ?>
               <p class="text-danger">  <?php echo $error['category_id'] ?></p>
             
            <?php endif ?>
        </div>
        <div class="form-group">
           <div class="col-md-8">
          <label for="exampleInputEmail1">Tên sản phẩm</label>
         
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tên danh mục" name="name">
          <?php if(isset($error['name'])) : ?>
               <p class="text-danger">  <?php echo $error['name'] ?></p>
             
            <?php endif ?>
        </div>
          <div class="form-group">
        <div class="col-md-8">
          <label for="exampleInputEmail1">Giá sản phẩm</label>
         
          <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="9.000" name="price">
          <?php if(isset($error['price'])) : ?>
               <p class="text-danger">  <?php echo $error['price'] ?></p>
             
            <?php endif ?>
        </div>
        </div>
         <div class="form-group">
        <div class="col-md-8">
          <label for="exampleInputEmail1">Số lượng</label>
         
          <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="number">
          <?php if(isset($error['number'])) : ?>
               <p class="text-danger">  <?php echo $error['number'] ?></p>
             
            <?php endif ?>
        </div>
        </div>
          <div class="form-group">
        <div class="col-sm-3">
          <label for="exampleInputEmail1">Giảm giá</label>
         
          <input type="number" class="col-sm-5 form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="10%" name="sale" value="0">
          <?php if(isset($error['sale'])) : ?>
               <p class="text-danger">  <?php echo $error['sale'] ?></p>
             
            <?php endif ?>
          <label for="exampleInputEmail1">Hình ảnh</label>
         <div class="col-sm-15">
          <input type="file" class="col-sm-12 form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="thunbar">
          <?php if(isset($error['thunbar'])) : ?>
               <p class="text-danger">  <?php echo $error['thunbar'] ?></p>
             
            <?php endif ?>
        </div>
      </div>

        <div class="form-group">
        <div class="col-md-8">
          <label for="exampleInputEmail1">Nội dung </label>
         
         <textarea class="form-control" name ="content" rows="4"></textarea>
          <?php if(isset($error['content'])) : ?>
               <p class="text-danger">  <?php echo $error['content'] ?></p>
             
            <?php endif ?>
        </div>
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