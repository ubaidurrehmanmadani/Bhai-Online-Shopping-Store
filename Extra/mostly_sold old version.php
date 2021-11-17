<!DOCTYPE html>

<html>

    
<!-- Mirrored from velikorodnov.com/html/homeshop/category_v1.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jan 2016 16:29:21 GMT -->
<head>
        
        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Title -->
        <title>HomeShop - HTML Template</title>
        
		<!-- Fonts -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,900,700italic,500italic' rel='stylesheet' type='text/css'>
		
        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/perfect-scrollbar.css">
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/fontello.css">
        <link rel="stylesheet" href="css/select.css">
   		<link rel="stylesheet" href="css/animation.css">
        <link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/owl.theme.css">
		<link rel="stylesheet" href="css/chosen.css">
        
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<link rel="stylesheet" href="css/ie.css">
        <![endif]-->
		<!--[if IE 7]>
			<link rel="stylesheet" href="css/fontello-ie7.css">
		<![endif]-->
        
    </head>
    
    
    <body>
		<script src="js/validation.js"></script>
		<!-- Container -->
		<div class="container">
			
							   <?php   
		$p="";
		if(basename(__DIR__)!="bhai"){
				 $p="../";
			}  
		session_start();	
		if(isset($_SESSION['user'])){include($p."Templates/loggedin_header.php");}
		 else {include($p."Templates/header.php");}
		?>
		<form method="post" name="form2" id="form2">
		
			<input type="text" id="quantity1" name="setquantity" hidden/>
			<input type="text" id="p_id" name="txtIdAddToCart" hidden/>
			
			<!-- Content -->
			<div class="row content">
				
                <div class="col-lg-12 col-md-12 col-sm-12">
                	<div class="breadcrumbs">
                    	<p><a href="main1.php">Home</a> <i class="icons icon-right-dir"></i> Mostly Sold Items</p>
                    </div>
                </div>
               
                <div class="col-md-3"> <?php include($p."Templates/sidebar.php"); ?></div>
				<!-- Main Content -->
				
			<?php	 $product=new Product();
	    if(!empty($_POST["category_id"])){ $productInfo=$product->getProductByCategory($_POST["category_id"],$_POST["category_id"]);}								 ?>
		
				
				
				<section class="main-content col-lg-9 col-md-9 col-sm-9 ">
                    
                    <div class="row">
                     
                    	<!-- Heading --><br>
						<div class="col-lg-12 col-md-12 col-sm-12">
							
							<div class="carousel-heading">
								<h4>Mostly Sold Items</h4>
							</div>
							
						</div>
						<!-- /Heading -->
                        
                     
                   
                 <div class="row"> 
                        <!-- Product Item -->
						<?php  //require("product.php"); 
										$count=0;
                                   $product=new Product();
									  //echo "<pre>";
									   $productInfo=$product->mostlySoldProducts(); 
									  //echo "</pre>";
										foreach($productInfo as $key => $value){
											/* echo "<pre>";
											print_r($value);
											echo "</pre>"; */
											$result= $product->viewProductsByID($key);
											foreach($result as $data){ ?>
                        <div class="col-lg-4 col-md-4 col-sm-4 product">
                            
                            <div class="product-image" onclick="window.location.href='productdetail.php?name=<?php echo $data["product_id"]; ?>'">
                                <img src="<?php echo $data["img_src"];  ?>" alt="images/Grapes.jpg" onerror="this.src='images/Grapes.jpg';">
                                <a href="products_page_v1.html" class="product-hover">
														<i class="icons icon-eye-1"></i> Quick View
													</a>
                            </div>
                            
                            <div class="product-info" >
                                <h5><a href="products_page_v1.html"><?php echo $data["product_name"];  ?></a></h5>
                                <span class="price"><?php echo "PKR: ".$data["product_price"];  ?></span>
                                <div class="rating readonly-rating" data-score="4"></div>
								<div class="col-md-12">
															<tr>
																<td>Quantity:</td>
																<td>
																	<div class="numeric-input">
																		<input type="text"  name="quantity"  onblur="setQuantity(this.id)" onkeypress="return isNumber(event)" id="quantity<?php echo $data["product_id"] ?>" maxlength="2" />
																		<span class="arrow-up"><i class="icons icon-up-dir"></i></span>
																		<span class="arrow-down"><i class="icons icon-down-dir"></i></span>
																	</div>
																	
																</td>
															</tr>
														</div>
                            </div>
                            
                            <div class="product-actions">
													<span class="add-to-cart" onclick="setId(<?php echo $data["product_id"]; ?>)">
                                                       <span class="action-wrapper" >
															<div class="action-name " style="font-size:16px; text-align:center;" ><i class="icons icon-basket-2" ></i>Add to cart</div>
														</span >
                                                    </span>
													
												</div>
                            
                        </div>
						<?php $count++;if($count==30){break;}}}?>	
             
                      
                        
                    </div>
					
					
					
				</section>
				<!-- /Main Content -->
				
				
				
				
				
				
			</div>
			<!-- /Content -->
			
			

			<!-- Banner -->
			<?php include($p."Templates/footer.php");?>
			<!-- Footer -->
			
            
            <div id="back-to-top">
            	<i class="icon-up-dir"></i>
            </div>
         </form>   
		</div>
    	<!-- Container -->
		
		
		
		<!-- JavaScript -->
		<script src="js/modernizr.min.js"></script>
		<script src="js/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/jquery.raty.min.js"></script>
		
		<!-- Scroll Bar -->
		<script src="js/perfect-scrollbar.min.js"></script>
		
		<!-- Cloud Zoom -->
		<script src="js/zoomsl-3.0.min.js"></script>
		
		<!-- FancyBox -->
		<script src="js/jquery.fancybox.pack.js"></script>
		
		<!-- jQuery REVOLUTION Slider  -->
		<script type="text/javascript" src="js/jquery.themepunch.plugins.min.js"></script>
		<script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>

		<!-- FlexSlider -->
		<script defer src="js/flexslider.min.js"></script>
		
		<!-- IOS Slider -->
		<script src = "js/jquery.iosslider.min.js"></script>
		
		<!-- noUi Slider -->
		<script src="js/jquery.nouislider.min.js"></script>
		
		<!-- Owl Carousel -->
		<script src="js/owl.carousel.min.js"></script>
		
		<!-- Cloud Zoom -->
		<script src="js/zoomsl-3.0.min.js"></script>
		
		<!-- SelectJS -->
        <script src="js/chosen.jquery.min.js" type="text/javascript"></script>
        
        <!-- Main JS -->
        <script defer src="js/bootstrap.min.js"></script>
        <script src="js/main-script.js"></script>
        
    </body>
    

		<script type=text/javascript>
	function setQuantity(id){

	var quantity=$("#"+id).val();

	$('#quantity1').val(quantity);
	//window.location.replace("addtocart.php");
	}
	function setId(id){
		$("#p_id").val(id);
		
	$("#form2").attr("action","addtocart.php");

		
		
		
	  
	  
	  $("#form2").submit();
	}
	</script>
<!-- Mirrored from velikorodnov.com/html/homeshop/category_v1.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jan 2016 16:29:23 GMT -->
</html>