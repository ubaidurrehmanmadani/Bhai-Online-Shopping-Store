<!doctype html>
<html>
<head>
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
		<link rel="stylesheet" type="text/css" href="css/settings.css" media="screen" />
   		<link rel="stylesheet" href="css/animation.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/owl.theme.css">
		<link rel="stylesheet" href="css/chosen.css">
	</head>
	<body>

<?php
require("db/dbcon.php");
require("user.php");
session_start();
if(isset($_POST["btnLogin"])){

$user=new User();
$user->logIn($_POST["cnic"],$_POST["password"]);
header('Location:main1.php');
}


?>





<!-- Container -->
<div class="container">

<!-- Header -->
<header class="row">

<div class="col-lg-12 col-md-12 col-sm-12">

<!-- Top Header -->
<div id="top-header">

<div class="row">

<nav id="top-navigation" class="col-lg-7 col-md-7 col-sm-7">
<ul class="pull-left">
<li><a href="create_an_account.html">My Account</a></li>
<li><a href="orders_list.html">List Order</a></li>
<li><a href="order_info.html">Checkout</a></li>
<li><a href="text_page.html">About Us</a></li>
<li><a href="contact.html">Contact</a></li>
</ul>
</nav>

<nav class="col-lg-5 col-md-5 col-sm-5">
								<ul class="pull-right">
									<li class="purple"><a href="login/login.php"><i class="icons icon-user-3"></i> Login</a>
                                            	
									</li>
									<li><a href="create_an_account.php"><i class="icons icon-lock"></i> Create an Account</a></li>
								</ul>
							</nav>

</div>

</div>
<!-- /Top Header -->
<?php 

if(isset($_POST["logged out"])){
	echo "Logout";
	unset($_SESSION["user"]);
	}
?>
<!-- Main Header -->
<div id="main-header">

<div class="row">

<div id="logo" class="col-lg-4 col-md-4 col-sm-4">
<a href="home_v1.html"><img src="../img/logo.png" alt="Logo"></a>
</div>

<nav id="middle-navigation" class="col-lg-8 col-md-8 col-sm-8">
<ul class="pull-right">
<li class="blue">
<a href="compare_products.html"><i class="icons icon-docs"></i>0 Items</a>
</li>
<li class="blue" method="post" >
	<a ><i  type="submit" value="Feedback" name="feedback" class="icons icon-user"></i>Feedback</a>
</li>

<li class="orange"><a href="order_info.html"><i class="icons icon-basket-2"></i>17 Items</a>
<ul id="cart-dropdown" class="box-dropdown parent-arrow">
<li>
<div class="box-wrapper parent-border">
<p>Recently added item(s)</p>

<table class="cart-table">
<tr>
<td><img src="img/products/sample1.jpg" alt="product"></td>
<td>
<h6>Lorem ipsum dolor</h6>
<p>Product code PSBJ3</p>
</td>
<td>
<span class="quantity"><span class="light">1 x</span> $79.00</span>
<a href="#" class="parent-color">Remove</a>
</td>
</tr>
<tr>

<td><img src="img/products/sample1.jpg" alt="product"></td>
<td>
<h6>Lorem ipsum dolor</h6>
<p>Product code PSBJ3</p>
</td>
<td>
<span class="quantity"><span class="light">1 x</span> $79.00</span>
<a href="#" class="parent-color">Remove</a>
</td>
</tr>
<tr>
<td><img src="img/products/sample1.jpg" alt="product"></td>
<td>
<h6>Lorem ipsum dolor</h6>
<p>Product code PSBJ3</p>
</td>
<td>
<span class="quantity"><span class="light">1 x</span> $79.00</span>
<a href="#" class="parent-color">Remove</a>
</td>
</tr>
</table>

<br class="clearfix">
</div>

<div class="footer">
<table class="checkout-table pull-right">
<tr>
<td class="align-right">Tax:</td>
<td>$0.00</td>
</tr>
<tr>
<td class="align-right">Discount:</td>
<td>$37.00</td>
</tr>
<tr>
<td class="align-right"><strong>Total:</strong></td>
<td><strong class="parent-color">$999.00</strong></td>
</tr>
</table>
</div>

<div class="box-wrapper no-border">
<a class="button pull-right parent-background" href="#">Checkout</a>
<a class="button pull-right" href="order_info.html">View Cart</a>
</div>
</li>
</ul>
</li>
<li><a class="flag" href="#"><span class="english-flag"></span>English</a>
<ul class="box-dropdown parent-arrow">
<li>
<div class="box-wrapper no-padding parent-border">
<table class="language-table">
<tr>
<td class="flag"><span class="english-flag"></span></td>
<td class="country"><a href="#">English</a></td>
</tr>
<tr>
<td class="flag"><span class="german-flag"></span></td>
<td class="country"><a href="#">German</a></td>
</tr>
<tr>
<td class="flag"><span class="french-flag"></span></td>
<td class="country"><a href="#">French</a></td>
</tr>
<tr>
<td class="flag"><span class="italian-flag"></span></td>
<td class="country"><a href="#">Italian</a></td>
</tr>
<tr>
<td class="flag"><span class="spanish-flag"></span></td>
<td class="country"><a href="#">Spanish</a></td>
</tr>
</table>
</div>
</li>
</ul>

</li>
<li><a href="#"><i class="icons icon-dollar"></i>PKR</a>
<ul class="box-dropdown parent-arrow">
<li>
<div class="box-wrapper no-padding parent-border">
<table class="currency-table">
<tr>
<td><a href="#">PKR</a></td>
</tr>
<tr>
<td><a href="#">€ Euro</a></td>
</tr>
<tr>
<td><a href="#">£ Pound</a></td>
</tr>
</table>
</div>
</li>
</ul>
</li>
</ul>
</nav>

</div>

</div>
<!-- /Main Header -->


<!-- Main Navigation -->
<nav id="main-navigation" class="style1">
<ul>

<li class="home-green current-item">
<a>
<i class="icons icon-shop-1"></i>
<span class="nav-caption">Home</span>
<span class="nav-description">Variety of Layouts</span>
</a>

<ul class="normal-dropdown normalAnimation">
<li><a href="#">Layouts <i class="icons icon-right-dir"></i></a>
<ul class="normal-dropdown normalAnimation">
<li>
<a href="home_v1.html">Layout 1</a>
<ul class="normalAnimation">
<li><a href="#">Link in third level</a></li>
<li><a href="#">Link in third level</a></li>
<li><a href="#">Link in third level</a></li>
</ul>
</li>
<li><a href="home_v2.html">Layout 2</a></li>
<li><a href="home_v3.html">Layout 3</a></li>
</ul>
</li>
<li><a href="#">Headers <i class="icons icon-right-dir"></i></a>
<ul class="normalAnimation">
<li><a href="home_v1.html">Header 1</a></li>
<li><a href="home_v2.html">Header 2</a></li>
<li><a href="home_v3.html">Header 3</a></li>
<li><a href="category_v1.html">Header 4</a></li>
<li><a href="category_v2.html">Header 5</a></li>
<li><a href="products_page_v1.html">Header 6</a></li>
</ul>
</li>
<li><a href="#">Footers <i class="icons icon-right-dir"></i></a>
<ul class="normalAnimation">
<li><a href="home_v1.html#footer">Footer 1</a></li>
<li><a href="home_v2.html#footer">Footer 2</a></li>
<li><a href="home_v3.html#footer">Footer 3</a></li>
<li><a href="category_v1.html#footer">Footer 4</a></li>
<li><a href="category_v2-2.html#footer">Footer 5</a></li>
<li><a href="products_page_v1.html#footer">Footer 6</a></li>
</ul>
</li>
<li><a href="#">Sliders <i class="icons icon-right-dir"></i></a>
<ul class="normalAnimation">
<li><a href="home_v1.html">Revolution Slider</a></li>
<li><a href="home_v2.html">IOS Slider</a></li>
<li><a href="home_v3.html">Flex Slider</a></li>
</ul>
</li>
</ul>
</li>

<li class="red">
<a href="category_v1.html">
<i class="icons icon-camera-7"></i>
<span class="nav-caption">Cameras</span>
<span class="nav-description">Photo & Video</span>
</a>

<ul class="wide-dropdown normalAniamtion">
<li>
<ul>
<li><span class="nav-caption">Digital Cameras</span></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Digital SLR</a></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Point &amp; Shoot</a></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Spy, Miniature</a></li>
</ul>
</li>
<li>
<ul>
<li><span class="nav-caption">Digital Cameras</span></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Background Material</a></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Continuous Lighting</a></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Flash Lighting</a></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Light Meters</a></li>
</ul>
</li>
<li>
<ul>
<li><span class="nav-caption">Digital Cameras</span></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Batteries</a></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Cables &amp; Adapters</a></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Camcorder Tapes &amp; Discs</a></li>
<li><a href="#"><i class="icons icon-right-dir"></i> Cases, Bags &amp; Covers</a></li>
</ul>
</li>
</ul>

</li>

<li class="blue">
<a href="category_v2.html">
<i class="icons icon-desktop-3"></i>
<span class="nav-caption">Computers</span>
<span class="nav-description">Laptops & Tablets</span>
</a>
</li>

<li class="orange">
<a href="category_v1.html">
<i class="icons icon-mobile-6"></i>
<span class="nav-caption">Cell phones</span>
<span class="nav-description">Phones & Accessories</span>
</a>
</li>

<li class="green">
<a href="blog.html">
<i class="icons icon-pencil-7"></i>
<span class="nav-caption">Blog</span>
<span class="nav-description">News & Reviews</span>
</a>
</li>

<li class="purple">
<a href="contact.html">
<i class="icons icon-location-7"></i>
<span class="nav-caption">Contact</span>
<span class="nav-description">Store Locations</span>
</a>
</li>

<li class="nav-search">
<i class="icons icon-search-1"></i>
</li>

</ul>

<div id="search-bar">

<div class="col-lg-12 col-md-12 col-sm-12">
<table id="search-bar-table">
<tr>
<td class="search-column-1">
<p><span class="grey">Popular Searches:</span> <a href="#">accessories</a>, <a href="#">audio</a>, <a href="#">camera</a>, <a href="#">phone</a>, <a href="#">storage</a>, <a href="#">more</a></p>
<input type="text" placeholder="Enter your keyword">
</td>
<td class="search-column-2">
<p class="align-right"><a href="#">Advanced Search</a></p>
<select class="chosen-select-search">
<option>All Categories</option>
<option>All Categories</option>
<option>All Categories</option>
<option>All Categories</option>
<option>All Categories</option>
</select>
</td>
</tr>
</table>
</div>
<div id="search-button">
<input type="submit" value="">
<i class="icons icon-search-1"></i>
</div>
</div>

</nav>
<!-- /Main Navigation -->

</div>

</header>
<!-- /Header -->

</html>