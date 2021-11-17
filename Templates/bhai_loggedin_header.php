
<?php
require("db/dbcon.php");
require("classes/user.php");
require("classes/product.php");
require("classes/order.php");
require("classes/administrator.php");
if(isset($_POST["btnLogin"])){

//$user=new User();
//$user->logIn($_POST["cnic"],$_POST["password"]);
//header('Location:main1.php');
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
<li><a href="update_user1.php">Update Account</a></li>

</ul>
</nav>
<form  method="post">
<nav class="col-lg-5 col-md-5 col-sm-5">
<ul class="pull-right">


<li class="purple"><a href="Templates/logout_action.php" name="logout" ><i class="icons icon-user-3"></i> Logout</a>

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
<a href="bhai_panel.php"><img src="img/logo6.png" alt="Logo6"></a>
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


