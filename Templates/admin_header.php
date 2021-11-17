
<?php
//session_start();
require("db/dbcon.php");
require("classes/user.php");
require("classes/product.php");
require("classes/order.php");
require("classes/administrator.php");
if(isset($_POST["btnLogin"])){

//$user=new User();
//$user->logIn($_POST["cnic"],$_POST["password"]);
header('Location:login/admin_login.php');
}
$product=new Product();

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
<li><a href="register_user.php">My Account</a></li>
<li><a href="order_list.php">Order List</a></li>
<li><a href="order_info.php">Checkout</a></li>
<li><a href="order_info.php">Feedback</a></li>
<li><a href="text_page.php">About Us</a></li>
<li><a href="contact.php">Contact</a></li>
</ul>
</nav>
<form  method="post">
<nav class="col-lg-5 col-md-5 col-sm-5">
<ul class="pull-right">
<li class="purple"><a href="login/login_admin.php"><i class="icons icon-user-3"></i> Login</a>

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
	unset($_SESSION["userType"]);
	
	}
?>



<!-- Main Header -->
<div id="main-header">

	<div class="row">

		<div id="logo" class="col-lg-4 col-md-4 col-sm-4">
		<a href=""><img src="img/logo6.png" alt="Logo6"></a>
		</div>
		
		<form method="post" >



		</form>

	</div>

</div>
<!-- /Main Header -->


<!-- Main Navigation -->

<!-- /Main Navigation -->

</div>

</header>
<!-- /Header -->


