<!DOCTYPE html>

<html>

    
<!-- Mirrored from velikorodnov.com/html/homeshop/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jan 2016 16:29:15 GMT -->
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
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/fontello.css">
   		<link rel="stylesheet" href="css/animation.css">
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
		
		<!-- Container -->
		<div class="container">
			
			<!-- Header -->
			
					<?php   
			$p="";
			if(basename(__DIR__)!="bhai"){
					 $p="../";
				}  
			session_start();	
			if(isset($_SESSION['user'])){include($p."Templates/loggedin_header.php");}
			 else {include($p."Templates/header.php");}			  
			?>
			<!-- /Header -->
			
			
			<!-- Content -->
			<div class="row content">
				
                <div class="col-lg-12 col-md-12 col-sm-12">
                	<div class="breadcrumbs">
                    	<p><a href="#">Home</a> <i class="icons icon-right-dir"></i> Wishlist</p>
                    </div>
                </div>
                
				<!-- Main Content -->
				<section class="main-content col-lg-9 col-md-9 col-sm-9">
					
                    <div class="row">
                    
                        <!-- Heading -->
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            
                            <div class="carousel-heading">
                                <h4>My wishlist</h4>
                            </div>
                            
                        </div>
                        <!-- /Heading -->
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                        	<div class="category-results">
                            	<p>Results 1-6 of 6</p>
                                <p>Show 
                                <select class="chosen-select">
                                	<option>1</option>
                                   	<option>2</option>
                                    <option>6</option>
                                    <option>P10</option> 
                                </select>
                                per page
                                </p>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                        	<div class="pagination">
                            	<a href="#"><div class="previous"><i class="icons icon-left-dir"></i></div></a>
                                <a href="#"><div class="page-button">1</div></a>
                                <a href="#"><div class="page-button">2</div></a>
                                <a href="#"><div class="page-button">3</div></a>
                                <a href="#"><div class="next"><i class="icons icon-right-dir"></i></div></a>
                            </div>
                        </div>
					
					</div>	
                    
                    
                    <div class="row">
                    	
                        <div class="col-lg-12 col-md-12 col-sm-12">
                        	
                            <table class="wishlist-table">
                            	
                                <tr>
                                	<th class="wishlist-image">Product Images</th>
                                    <th>Title/Category</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>
                                
                                <tr>
                                	<td class="wishlist-image">
                                    	<a href="#"><img src="img/products/sample1.jpg" alt="Product1"></a>
                                    </td>
                                    <td class="wishlist-info">
                                    	<h5><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                        <span class="product-category"><a href="#">Computers &amp; Tablets</a></span>
										<div class="rating readonly-rating" data-score="4"></div>
                                    </td>
                                    <td class="wishlist-price">
                                    	<span class="price">$281.00</span>
                                    </td>
                                    <td class="wishlist-actions">
                                    
                                    	<div class="numeric-input">
											<input type="text" value="1">
											<span class="arrow-up"><i class="icons icon-up-dir"></i></span>
											<span class="arrow-down"><i class="icons icon-down-dir"></i></span>
										</div>
                                        <a href="#">
                                            <span class="add-to-cart">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-basket-2"></i>
                                                    <span class="action-name">Add to cart</span>
                                                </span>
                                            </span>
                                        </a>
                                        <a href="#">
                                            <span class="add-to-trash">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-trash-8"></i>
                                                    <span class="action-name">Remove</span>
                                                </span>
                                            </span>
                                        </a>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                	<td class="wishlist-image">
                                    	<a href="#"><img src="img/products/sample2.jpg" alt="Product1"></a>
                                    </td>
                                    <td class="wishlist-info">
                                    	<h5><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                        <span class="product-category"><a href="#">Computers &amp; Tablets</a></span>
										<div class="rating readonly-rating" data-score="4"></div>
                                    </td>
                                    <td class="wishlist-price">
                                    	<span class="price">$281.00</span>
                                    </td>
                                    <td class="wishlist-actions">
                                    
                                    	<div class="numeric-input">
											<input type="text" value="1">
											<span class="arrow-up"><i class="icons icon-up-dir"></i></span>
											<span class="arrow-down"><i class="icons icon-down-dir"></i></span>
										</div>
                                        <a href="#">
                                            <span class="add-to-cart">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-menu"></i>
                                                    <span class="action-name">Select Option</span>
                                                </span>
                                            </span>
                                        </a>
                                        <a href="#">
                                            <span class="add-to-trash">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-trash-8"></i>
                                                    <span class="action-name">Remove</span>
                                                </span>
                                            </span>
                                        </a>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                	<td class="wishlist-image">
                                    	<a href="#"><img src="img/products/sample3.jpg" alt="Product1"></a>
                                    </td>
                                    <td class="wishlist-info">
                                    	<h5><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                        <span class="product-category"><a href="#">Computers &amp; Tablets</a></span>
										<div class="rating readonly-rating" data-score="4"></div>
                                    </td>
                                    <td class="wishlist-price">
                                    	<span class="price">$281.00</span>
                                    </td>
                                    <td class="wishlist-actions">
                                    
                                    	<div class="numeric-input">
											<input type="text" value="1">
											<span class="arrow-up"><i class="icons icon-up-dir"></i></span>
											<span class="arrow-down"><i class="icons icon-down-dir"></i></span>
										</div>
                                        <a href="#">
                                            <span class="add-to-cart">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-basket-2"></i>
                                                    <span class="action-name">Add to cart</span>
                                                </span>
                                            </span>
                                        </a>
                                        <a href="#">
                                            <span class="add-to-trash">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-trash-8"></i>
                                                    <span class="action-name">Remove</span>
                                                </span>
                                            </span>
                                        </a>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                	<td class="wishlist-image">
                                    	<a href="#"><img src="img/products/sample4.jpg" alt="Product1"></a>
                                    </td>
                                    <td class="wishlist-info">
                                    	<h5><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                        <span class="product-category"><a href="#">Computers &amp; Tablets</a></span>
										<div class="rating readonly-rating" data-score="4"></div>
                                    </td>
                                    <td class="wishlist-price">
                                    	<span class="price">$281.00</span>
                                    </td>
                                    <td class="wishlist-actions">
                                    
                                    	<div class="numeric-input">
											<input type="text" value="1">
											<span class="arrow-up"><i class="icons icon-up-dir"></i></span>
											<span class="arrow-down"><i class="icons icon-down-dir"></i></span>
										</div>
                                        <a href="#">
                                            <span class="add-to-cart">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-basket-2"></i>
                                                    <span class="action-name">Add to cart</span>
                                                </span>
                                            </span>
                                        </a>
                                        <a href="#">
                                            <span class="add-to-trash">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-trash-8"></i>
                                                    <span class="action-name">Remove</span>
                                                </span>
                                            </span>
                                        </a>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                	<td class="wishlist-image">
                                    	<a href="#"><img src="img/products/sample5.jpg" alt="Product1"></a>
                                    </td>
                                    <td class="wishlist-info">
                                    	<h5><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                        <span class="product-category"><a href="#">Computers &amp; Tablets</a></span>
										<div class="rating readonly-rating" data-score="4"></div>
                                    </td>
                                    <td class="wishlist-price">
                                    	<span class="price">$281.00</span>
                                    </td>
                                    <td class="wishlist-actions">
                                    
										<div class="numeric-input">
											<input type="text" value="1">
											<span class="arrow-up"><i class="icons icon-up-dir"></i></span>
											<span class="arrow-down"><i class="icons icon-down-dir"></i></span>
										</div>
                                        <a href="#">
                                            <span class="add-to-cart">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-basket-2"></i>
                                                    <span class="action-name">Add to cart</span>
                                                </span>
                                            </span>
                                        </a>
                                        <a href="#">
                                            <span class="add-to-trash">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-trash-8"></i>
                                                    <span class="action-name">Remove</span>
                                                </span>
                                            </span>
                                        </a>
                                        
                                    </td>
                                </tr>
                                
                            </table>
                            
                        </div>
                        
                    </div>
                    
                    <div class="row">
                    
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="category-results">
                                <p>Results 1-6 of 6</p>
                                <p>Show 
                                <select class="chosen-select">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>6</option>
                                    <option>P10</option> 
                                </select>
                                per page
                                </p>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="pagination">
                                <a href="#"><div class="previous"><i class="icons icon-left-dir"></i></div></a>
                                <a href="#"><div class="page-button">1</div></a>
                                <a href="#"><div class="page-button">2</div></a>
                                <a href="#"><div class="page-button">3</div></a>
                                <a href="#"><div class="next"><i class="icons icon-right-dir"></i></div></a>
                            </div>
                        </div>
                    
                    </div>
                    
				</section>
				<!-- /Main Content -->
				
				
				
				
				<!-- Sidebar -->
				<aside class="sidebar col-lg-3 col-md-3 col-sm-3 right-sidebar">
					
					<!-- Categories -->
					<?php include($p."Templates/sidebar.php"); ?>
					<!-- /Categories -->
					
					
					<!-- Compare Products -->
				
					<!-- /Compare Products -->
					
					
					<!-- Carousel -->
					<div class="row sidebar-box">
						
						<div class="col-lg-12 col-md-12 col-sm-12 sidebar-carousel">
							
							<!-- Slider -->
							<section class="sidebar-slider">
								<div class="sidebar-flexslider">
									<ul class="slides">
										<li>
											<a href="#"><img src="img/sidebar-slide1.jpg" alt="Slide1"/></a>
										</li>
										<li>
											<a href="#"><img src="img/sidebar-slide2.jpg" alt="Slide1"/></a>
										</li>
										<li>
											<a href="#"><img src="img/sidebar-slide3.jpg" alt="Slide1"/></a>
										</li>
									</ul>
								</div>
								<div class="slider-nav"></div>
							</section>
							<!-- /Slider -->
                            
						</div>
						
					</div>
					<!-- /Carousel -->
					
					
				</aside>
				<!-- /Sidebar -->
				
			</div>
			<!-- /Content -->
			
			
			


			
			<!-- Banner -->
			<?php include($p."Templates/footer.php")?>
			<!-- Footer -->
			
            
            <div id="back-to-top">
            	<i class="icon-up-dir"></i>
            </div>
            
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
    

<!-- Mirrored from velikorodnov.com/html/homeshop/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jan 2016 16:29:15 GMT -->
</html>