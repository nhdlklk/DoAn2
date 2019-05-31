<?php
$open = "category";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);
if(isset($_GET['page']))
{
  $p=$_GET['page'];
}
else
{
  $p=1;
}
$sql = "SELECT * From category
     ";
        $category=$db->fetchJone('category',$sql,$p,2,true);
        if(isset($category['page']))
        {
          $sotrang=$category['page'];
          unset($category['page']);
        }
$category = $db->fetchAll("category");
?>
<?php require_once ("/../../layouts/header.php") ?>
 <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="index.php">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Danh Mục</li>
        </ol>
        <!-- Page Content -->
        <h1>Danh Sách danh mục</h1>
        <a href="add.php" class="btn btn-info"> Thêm mới</a>
        <hr>
       
        	<div class="clearfix"></div>
         <?php require_once("/../../../partials/nofication.php"); ?>
      </div>

      <!-- /.container-fluid -->
    <div class="row">
        <div class="col-md-12">
              <div class="table-responsive">
    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                
            </div>
            
        </div>
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                    <thead>
                        <tr role="row">
                            <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 55px;">STT</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 63px;">Name</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 48px;">Slug</th>
                             <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 48px;">Home</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 48px;">Created</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 31px;">Action</th>
                        </tr>
                    </thead>
                   
                    <tbody>
                        <?php $stt = 1; foreach ($category as $item): ?>
                        <tr>
                          <td> <?php echo $stt ?></td>
                          <td> <?php echo $item['name'] ?></td>
                           <td> <?php echo $item['slug'] ?></td>
                            <td>
                                <a href="home.php?id=<?php echo $item['id'] ?>" class="btn btn-xs <?php echo $item['home']==1? 'btn-info': 'btn-default' ?>">
                                  <?php echo $item['home'] == 1 ? 'Hiển thị' : 'Không'?>
                                    
                                  </a>
                            </td>
                           <td> <?php echo $item['created_up'] ?></td>
                           <td>
                             <a class="btn btn-xs btn-info" href="edit.php?id=<?php echo $item['id'] ?>"> Sửa </a>
                             <a class="btn btn-xs btn-danger" href="delete.php?id=<?php echo $item['id'] ?>"> Xóa </a>
                           </td>
                        </tr>
                      <?php  $stt ++; endforeach ?>
                    </tbody>
                </table>

</nav>
                </div>
            </div>
        </div>
        
        </div>
    </div>
        </div>
    </div>
  
</div>
     <?php require_once ("/../../layouts/footer.php") ?>