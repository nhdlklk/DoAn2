          <div class="container">
                    <div class="col-md-4 bottom-content">
                        <a href=""><img src="<?php echo base_url()?>public/frontend/images/free-shipping.png"></a>
                    </div>
                    <div class="col-md-4 bottom-content">
                        <a href=""><img src="<?php echo base_url()?>public/frontend/images/guaranteed.png"></a>
                    </div>
                    <div class="col-md-4 bottom-content">
                        <a href=""><img src="<?php echo base_url()?>public/frontend/images/deal.png"></a>
                    </div>
                    
                </div>
                <div class="container-pluid">
                <section id="footer">
                    <div class="container">
                        <div class="col-md-3" id="shareicon">
                            <ul>

                                <li>
                                    <a href="https://www.facebook.com/duy.nguyenhoang.0410"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href=""><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href=""><i class="fa fa-google-plus"></i></a>
                                </li>
                                <li>
                                    <a href=""><i class="fa fa-youtube"></i></a>
                                </li>
                            </ul>

                        </div>
                        <div class="col-md-8" id="title-block">
                            <div class="pull-left">
                                
                            </div>
                            <div class="pull-right">
                                
                            </div>
                        </div>
                       
                    </div>
                </section>
                <section id="footer-button">
                    <div class="container-pluid">
                        <div class="container">
                            <div class="col-md-3" id="ft-about">
                            
                            </div>
                           
                            
                        </div>
                    </div>
                </section>
                <section id="ft-bottom">
                    <p class="text-center">Copyright © 2019 . Design by HCMUTE ... !!! </p>
                </section>
            </div>
        </div>      
    </div>
            </div>      
        </div>
    <script  src="<?php echo base_url() ?>fronted/js/slick.min.js"></script>

    </body>
        
</html>

<script type="text/javascript">
    $(function() {
        $hidenitem = $(".hidenitem");
        $itemproduct = $(".item-product");
        $itemproduct.hover(function(){
            $(this).children(".hidenitem").show(100);
        },function(){
            $hidenitem.hide(500);
        })
    })
    $(function(){
        $updatecart=$(".updatecart");
        $updatecart.click(function(e){
            e.preventDefault();
            $qty=$(this).parents("tr").find(".qty").val();
            $key=$(this).attr("data-key");
            $.ajax({
                url:'cap-nhat-gio-hang.php',
                type:'GET',
                data:{'qty':$qty,'key':$key},
                success:function(data)
                {
                    if(data==1)
                    {
                        alert("Cập nhật giỏ hàng thành công");
                        location.href='gio-hang.php';
                    }
                }
            });
        })
    })
</script>