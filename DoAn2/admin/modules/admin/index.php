<?php
$open = "admin";
require_once("/../../autoload/autoload.php");
//$category = $db -> fetchAll("category");
//var_dump($category);

$admin = $db->fetchAll("admin");
if(isset($_GET['page']))
{
  $p=$_GET['page'];
}
else
{
  $p=1;
}
$sql = "SELECT admin.* From admin ORDER By ID DESC ";
        $admin=$db->fetchJone('admin',$sql,$p,5,true);
        if(isset($admin['page']))
        {
          $sotrang=$admin['page'];
          unset($admin['page']);
        }
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
        <h1>Thêm mới admin</h1>
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
                <div class="dataTables_length" id="dataTable_length">
                   
                </div>
            </div>
           
        </div>
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                    <thead>
                        <tr role="row">
                            <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 55px;">STT</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 63px;">Name</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 63px;">Email</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 63px;">Phone</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 31px;">Action</th>
                        </tr>
                    </thead>
                   
                    <tbody>
                        <?php $stt = 1; foreach ($admin as $item): ?>
                        <tr>
                          <td> <?php echo $stt ?></td>
                          <td> <?php echo $item['name'] ?></td>
                          <td> <?php echo $item['email'] ?></td>
                           <td> <?php echo $item['phone'] ?></td>
                      
                           <td>
                             <a class="btn btn-xs btn-info" href="edit.php?id=<?php echo $item['id'] ?>"> Sửa </a>
                             <a class="btn btn-xs btn-danger" href="delete.php?id=<?php echo $item['id'] ?>"> Xóa </a>
                           </td>
                        </tr>
                      <?php  $stt ++; endforeach ?>
                    </tbody>
                </table>
                <div class="pull-right">
                  <nav aria-label="Page navigation" class="clearfix">
    <ul class="pagination">
            <a href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
       <?php for($i =1 ; $i <= $sotrang;$i++) : ?>
        <?php 
            if(isset($_GET['page']))
            {
              $p=$_GET['page'];
            }
            else
            {
              $p=1;
            }

         ?>
         
         <li class="<?php echo ($i==$p) ? 'active' : '' ?>" >
          <a class= ""href="?page=<?php echo $i ;?>"><?php echo $i; ?></a>
        </li>
      </li>
      <?php endfor; ?>
            <a href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
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