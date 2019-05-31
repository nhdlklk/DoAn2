<?php
require_once("/autoload/autoload.php");
$category = $db -> fetchAll("category");
//var_dump($category);
?>
<?php require_once __DIR__. "/layouts/header.php" ?>
 <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="index.php">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Blank Page</li>
        </ol>
        <!-- Page Content -->
        <h1>Xin Chào bạn đến với trang quản tri</h1>
        <img src="<?php echo base_url() ?>public/frontend/images/admin.jpg" width="800px" height="400px">
        <hr>
        	<?php
        //	var_dump($category);
        	?>
      </div>
      <!-- /.container-fluid -->

     <?php require_once __DIR__. "/layouts/footer.php" ?>