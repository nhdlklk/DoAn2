<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Trang Admin</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="index.php">Xin Chào Admin <?php echo $_SESSION['admin_name']?></a>

   

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <div class="input-group">
        
      </div>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      
      
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $_SESSION['admin_name']?>
          <i class="fas fa-user-circle fa-fw"> </i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="/DoAn2/dang-xuat.php" >Logout</a>
        </div>
      </li>
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8012/DoAn2/admin/index.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Bảng Điều Khiển</span>
            <li class="<?php echo isset($open) && $open == 'category' ? 'active' : '' ?>">
            <a href="<?php echo modules("category/index.php") ?>"><i class="fa fa-list"></i> Danh Muc Sản Phẩm </a>
          </li>
           <li class="<?php echo isset($open) && $open == 'product' ? 'active' : '' ?>">
            <a href="<?php echo modules("product/index.php") ?>"><i class="fas fa-database"></i> Sản phẩm </a>
          </li>
          <li class="<?php echo isset($open) && $open == 'user' ? 'active' : '' ?>">
            <a href="<?php echo modules("user/index.php") ?>"><i class="fas fa-users-cog"></i> Thành viên </a>
          </li>
          <li class="<?php echo isset($open) && $open == 'admin' ? 'active' : '' ?>">
            <a href="<?php echo modules("admin/index.php") ?>"><i class="fas fa-users-cog"></i> Admin </a>
          </li>
          <li class="<?php echo isset($open) && $open == 'transaction' ? 'active' : '' ?>">
            <a href="<?php echo modules("transaction/index.php") ?>"><i class="fas fa-users-cog"></i> Quản lí đơn hàng </a>
          </li>
            <
            <a href="https://app.subiz.com/activities/usqfaycsqpyazfrjlvico/convo/csqfayczycrtiyovny"><i class="fas fa-users-cog"></i> Hỗ trợ khách hàng </a>
          </li>
        </a>
      </li>
     
      <!-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">Login Screens:</h6>
          <a class="dropdown-item" href="login.html">Login</a>
          <a class="dropdown-item" href="register.html">Register</a>
          <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header">Other Pages:</h6>
          <a class="dropdown-item" href="404.html">404 Page</a>
          <a class="dropdown-item active" href="http://localhost:8012/DoAn2/admin/modules/category/index.php">Danh Muc San pham</a>
        
        </div> -->
      </li>
      
     
    </ul>

   