<?php
include("classes/cart1.php");
//session_start(); 
include("db/dbcon.php");
include("classes/product.php");
print_r($_POST);
die;
$product=new Product();
$cart=new ShoppingCart();

	$cart->addItemToCart();
	$cart->removeCartItems();
	
	echo "<script type='text/javascript'>location.replace('main1.php')</script>";
?>
