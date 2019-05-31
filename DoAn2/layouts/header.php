<!DOCTYPE html>
<html>
    <head>
        <title>CNPM</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/bootstrap.min.css">
        
        <script  src="<?php echo base_url() ?>public/frontend/js/jquery-3.2.1.min.js"></script>
        <script  src="<?php echo base_url() ?>public/frontend/js/bootstrap.min.js"></script>
        <!---->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/slick.css"/>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/slick-theme.css"/>
        <!--slide-->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/style.css">
        
    </head>
    <body>
        <!-- Subiz --> <script> (function(s, u, b, i, z){ u[i]=u[i]||function(){ u[i].t=+new Date(); (u[i].q=u[i].q||[]).push(arguments); }; z=s.createElement('script'); var zz=s.getElementsByTagName('script')[0]; z.async=1; z.src=b; z.id='subiz-script'; zz.parentNode.insertBefore(z,zz); })(document, window, 'https://widgetv4.subiz.com/static/js/app.js', 'subiz'); subiz('setAccount', 'acqfaybwlpezxcekfbfp'); </script> <!-- End Subiz -->
        <div id="wrapper">
            <!---->
            <!--HEADER-->
            <div id="header">
                <div id="header-top">
                    <div class="container">
                        <div class="row clearfix">
                            <div class="col-md-6" id="header-text">
                                <!-- <a>Rain</a><b>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do </b> -->
                            </div>
                            <div class="col-md-6">
                                <nav id="header-nav-top">
                                    <ul class="list-inline pull-right" id="headermenu">
                                        <?php if (isset($_SESSION['name_user'])): ?>
                                            <li style="color: blue">Xin Chào: <?php echo $_SESSION['name_user']; ?></li>
                                            <li>
                                            <a href="#"><i class="fa fa-user"></i> My Account <i class="fa fa-caret-down"></i></a>
                                            <ul id="header-submenu">
                                                <li><a href="gio-hang.php">Cart</a></li>
                                                <li><a href="thoat.php"><i class="fa fa-share-square-o"></i>Log out</a></li>
                                            </ul>
                                        </li>
                                       
                                        <?php else : ?>
                                            <li>
                                            <a href="dang-nhap.php"><i class="fa fa-unlock"></i> Đăng nhập</a>
                                        </li>                                    
                                            <a href="dang-ky.php"><i class="fa fa-unlock"></i> Đăng ký</a>
                                        </li>
                                    <?php endif ; ?>
                                        
                                        
                                        
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row" id="header-main">
                        <div class="col-md-5">
                           
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="<?php echo base_url() ?>public/frontend/images/logo.png" width="80px">
                            </a>
                        </div>
                        
                        </div>
                    </div>
                </div>
            </div>
            <!--END HEADER-->


            <!--MENUNAV-->
            <div id="menunav">
                <div class="container">
                    <nav>
                        <div class="home pull-left">
                            <a href="index.php">Trang chủ</a>
                        </div>
                        <!--menu main-->

                       

                        <!--Shopping-->
                        <?php if (isset($_SESSION['name_user'])): ?>
                        <ul class="pull-right" id="main-shopping">
                            <li>
                                
                                <a href="gio-hang.php"><i class="fa fa-shopping-basket"></i> My Cart </a>
                            </li>
                        <?php endif ; ?>
                        </ul>
                        <!--end Shopping-->
                    </nav>
                </div>
            </div>
            <!--ENDMENUNAV-->
            
            <div id="maincontent">
                <div class="container">
                    <div class="col-md-3  fixside" >
                        <div class="box-left box-menu" >
                            <h3 class="box-title"><i class="fa fa-list"></i>  Danh mục</h3>
                           
                            <ul>
                                <?php foreach($category as $item) :?>
                                <li><a href="danh-muc-san-pham.php?id=<?php echo $item['id'] ?>"><?php echo $item['name'] ?></a>
                                </li>
                                <?php endforeach; ?>
                            
                            </ul>
                        </div>

                        <div class="box-left box-menu">
                            <h3 class="box-title"><i class="fa fa-warning"></i>  Sản phẩm mới </h3>
                           <!--  <marquee direction="down" onmouseover="this.stop()" onmouseout="this.start()"  > -->
                            <ul>
                                <?php foreach($productNew as $item) :?>
                                <li class="clearfix">
                                    <a href="chi-tiet-san-pham.php?id=<?php echo $item['id'] ?>">
                                        <img src="<?php echo uploads() ?>product/<?php echo $item['thunbar'] ?> " class="img-responsive pull-left" width="80" height="80">
                                        <div class="info pull-right">
                                            <p class="name"><?php echo $item['name'] ?> </p >
                                            <?php if ($item['sale'] >0): ?>
                                            <b class="price"><?php echo formatPrice($item['price'])  ?></b><br>
                                            <b class="sale"><?php echo formatpricesale($item['price'],$item['sale'])  ?></b><br>

                                             <?php else : ?>
                                                 <b class="price"><?php echo formatPrice($item['price'])  ?></b><br>
                                             <?php endif ?>
                                            <span class="view"><i class="fa fa-eye"></i> 2999 : <i class="fa fa-heart-o"></i> 10</span>

                                        </div>
                                    </a>
                                </li>
                                <?php endforeach; ?>
                               

                               </ul>  
                            <!-- </marquee> -->
                        </div>
                        <div class="box-left box-menu">
                            <h3 class="box-title"><i class="fa fa-warning"></i>  Sản phẩm bán chạy </h3>
                           <!--  <marquee direction="down" onmouseover="this.stop()" onmouseout="this.start()"  > -->
                            <ul>
                                <?php foreach($productPay as $item) :?>
                                <li class="clearfix">
                                    <a href="chi-tiet-san-pham.php?id=<?php echo $item['id'] ?>">
                                        <img src="<?php echo uploads() ?>product/<?php echo $item['thunbar'] ?> " class="img-responsive pull-left" width="100" height="80">
                                        <div class="info pull-right">
                                            <p class="name"><?php echo $item['name'] ?> </p >
                                            <?php if ($item['sale'] >0): ?>
                                            <b class="price"><?php echo formatPrice($item['price'])  ?></b><br>
                                            <b class="sale"><?php echo formatpricesale($item['price'],$item['sale'])  ?></b><br>

                                             <?php else : ?>
                                                 <b class="price"><?php echo formatPrice($item['price'])  ?></b><br>
                                             <?php endif ?>
                                            <span class="view"><i class="fa fa-eye"></i> 2999 : <i class="fa fa-heart-o"></i> 10</span>

                                        </div>
                                    </a>
                                </li>
                                <?php endforeach; ?>
                               

                               </ul>  
                            <!-- </marquee> -->
                        </div>

                        
                    </div>