
<?php
//session_start();
require("db/dbcon.php");
require("classes/user.php");
require("classes/product.php");
require("classes/order.php");
require("classes/administrator.php");
require("classes/cart1.php");
require("classes/recommendor.php");
if(isset($_POST["btnLogin"])){

//$user=new User();
//$user->logIn($_POST["cnic"],$_POST["password"]);
	
header('Location:main1.php');
}
$product=new Product();
unset($_SESSION['ca']);

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

<li><a href="text_page.php">About Us</a></li>
<li><a href="contact.php">Contact</a></li>
</ul>
</nav>
<form  method="post">
<nav class="col-lg-5 col-md-5 col-sm-5">
<ul class="pull-right">
<li class="purple"><a href="login.php"><i class="icons icon-user-3"></i> Login</a>


<!--<li class="purple"><a href="login/login.php"><input type="submit" name="logout" value="logout"/><i class="icons icon-user-3"></i></a>
<ul id="login-dropdown" class="box-dropdown">
<li>
<div class="box-wrapper">
<h4>LOGIN</h4>

<div class="iconic-input">
<input type="text" placeholder="ID card number or Mobile number" name="cnic">
<i class="icons icon-user-3"></i>
</div>
<div class="iconic-input">
<input type="text" placeholder="Password"   name="password">
<i class="icons icon-lock"></i>
</div>
<input type="checkbox" id="loginremember"> <label for="loginremember">Remember me</label>
<br>
<br>
<div class="pull-left">
<input type="submit" class="orange" value="Login" name="btnLogin">
</div>
</form>
<div class="pull-right">
<a href="#">Forgot your password?</a>
<br>
<a href="#">Forgot your username?</a>
<br>
</div>
<br class="clearfix">
</div>
<div class="footer">
<h4 class="pull-left">NEW CUSTOMER?</h4>
<a class="button pull-right" href="register_user.php">Create an account</a>
</div>
</li>
</ul>
</li>-->
<li><a href="register_user.php"><i class="icons icon-lock"></i> Create an Account</a></li>
</ul>
</nav>

</div>

</div>
<!-- /Top Header -->
<?php 

if(isset($_POST["logout"])){
	
	echo "Logged out";
	unset($_SESSION["user"]);
	unset($_SESSION['userType']);
	unset($_SESSION["ca"]);
	unset($_SESSION["total"]);
	/*if(empty($_SESSION["ca"])){
				unset($_SESSION["total"]);
			}*/
	
	}
?>



<!-- Main Header -->
<div id="main-header">

<div class="row">

<div id="logo" class="col-lg-4 col-md-4 col-sm-4">
<a href="main1.php"><img src="img/logo6.png" alt="Logo6"></a>
</div>

<nav id="middle-navigation" class="col-lg-8 col-md-8 col-sm-8">
<ul class="pull-right">
<li class="blue">
<!--<a href="compare_products.php"><i class="icons icon-docs"></i>0 Items</a>
</li>
<li class="red">
<a href="wishlist.php"><i class="icons icon-heart-empty"></i>2 Items</a>
</li>-->
<li class="orange"><a href="order_info.php"><i class="icons icon-basket-2"></i><?php  if(!empty($_SESSION["ca"])) {echo  count($_SESSION["ca"]);}else{echo "0";}?> Items</a>
<ul id="cart-dropdown" class="box-dropdown parent-arrow">
<li>
<div class="box-wrapper parent-border">
<p>Recently added item(s)</p>

<table class="cart-table">

<?php
	if(!empty($_SESSION["ca"])){
			$cart=$_SESSION["ca"];
			for($i=0;$i<count($cart);$i++) { 
				$_SESSION["counter"]=0;
				if($i>$_SESSION["counter"]){
					$_SESSION["total"]+=$cart[$i]["quantity"]*$cart[$i]["product_price"];
				}
				else if($i==$_SESSION["counter"]){
					$_SESSION["total"]=$cart[$i]["quantity"]*$cart[$i]["product_price"];
				}
				 
					?>
			  
				 
				 
				  
			   

		





<tr>
<td><img src="<?php echo $cart[$i]["image_src"]; ?>" alt="product"></td>
<td>
<h6><b><?php echo $cart[$i]["product_name"] ; ?></b></h6>
<p>Product Total : <?php  echo $cart[$i]["quantity"]*$cart[$i]["product_price"]; ?></p>
</td>
<td>
<span class="quantity"><span class="light"><?php echo $cart[$i]["quantity"]; ?> x</span> <?php  echo $cart[$i]["product_price"]; ?></span>
<a  onclick="window.location.href='addtocart.php?removename=<?php  echo $cart[$i]["product_id"]; ?>'" class="parent-color">Remove</a>
</td>
</tr>
	<?php } }if(!empty($_SESSION["ca"])){
				$total=0;
				$cart=$_SESSION["ca"];
				for($i=0;$i<count($cart);$i++){
					$total=$total+$cart[$i]["product_price"];
				}
			}?>
</table>

<br class="clearfix">
</div>

<div class="footer">
<table class="checkout-table pull-right">

<tr>
<td class="align-right"><strong>Total:</strong></td>
<td><strong class="parent-color"><?php 
	
		if(!empty($_SESSION["total"])) {
			echo  $_SESSION["total"];
		}else{echo "0";
	
	
	}
		?>.00</strong></td>
</tr>
</table>
</div>

<div class="box-wrapper no-border">
<!-- <a class="button pull-right parent-background" href="#">Checkout</a> -->
<a class="button pull-right" href="cart.php">View Cart</a>
</div>
</li>
</ul>
</li>
	<!--<li><a class="flag" href="#"><span class="english-flag"></span>English</a>
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
<!--
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
-->
</ul>
</nav>

</div>

</div>
<!-- /Main Header -->


<!-- Main Navigation -->
<nav id="main-navigation" class="style1">
<ul>

<li class="home-green current-item">
<a href="main1.php">
<i class="icons icon-shop-1"></i>
<span class="nav-caption" >Home</span>
<span class="nav-description">Page</span>
</a>







<li class="red">
<a href="category_v1.php">
<i class="icons icon-camera-7"></i>
<span class="nav-caption">Recent Items</span>
<span class="nav-description">New</span>
</a>
<!--
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
-->
</li>

<!--<li class="blue">
<a href="category_v2.php">
<i class="icons icon-desktop-3"></i>
<span class="nav-caption">Recommended</span>
<span class="nav-description">Grocery Items</span>
</a>
</li>-->

<li class="orange">
<a href="mostly_sold.php">
<i class="icons icon-mobile-6"></i>
<span class="nav-caption">Mostly Sold</span>
<span class="nav-description">Items</span>
</a>
</li>

<li class="green">
<a href="terms.php">
<i class="icons icon-pencil-7"></i>
<span class="nav-caption">Terms And Conditions</span>
<span class="nav-description">Must Read Once</span>
</a>
</li>

<!--<li class="purple">
<a href="contact.html">
<i class="icons icon-location-7"></i>
<span class="nav-caption">Contact</span>
<span class="nav-description">Store Locations</span>
</a>
</li>-->

<li class="nav-search">
<i class="icons icon-search-1"></i>
</li>

</ul>

<div id="search-bar">

<div class="col-lg-12 col-md-12 col-sm-12">
<form method="post" >
<table id="search-bar-table">
<tr>
<td class="search-column-1">
<p><span class="grey">Popular Searches:</span> <a href="#">vegetables</a>, <a href="#">friuts</a>, <a href="#">cleaners</a>, <a href="#">meat</a>, <a href="#">more</a></p>
<input type="text" placeholder="Enter your keyword" name="search_input">
</td>
<td class="search-column-2">
<p class="align-right"><a href="#">Advanced Search</a></p>

<select class="chosen-select-search" name="category_ui" >
<?php 
$productInfo=$product->viewCategories();
foreach($productInfo as $data){
?><option  value="<?php echo $data["category_id"];?>" ><?php echo $data["category_name"];?></option>

<?php } ?>

</select>
</td>
</tr>
</table>

</div>
<div id="search-button">
<input type="submit" value="" name="search_submit" />
<i class="icons icon-search-1"></i>
</div>
</div>
</form>
</nav>
<!-- /Main Navigation -->

</div>

</header>
<!-- /Header -->


