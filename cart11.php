<!--<form method="post" action="addtocart.php">
<input type="submit" name="place" value="placeorder"/>
<input type="submit" name="ok" value="unset">
</form> -->

<?php
 
 session_start(); 
 include("db/dbcon.php");
 include("product.php");

 class ShoppingCart{
	
	//$_SESSION["cart"]=array();
	
	
	public function addItemToCart(){
		$product=new Product();
		if(!empty($_POST["txtIdAddToCart"])){
	    $quantity=0;
	    if(!empty($_POST["setquantity"])){	    
			$quantity=$_POST["setquantity"];  
	    }
	    else{		  
		  $quantity=$_POST["quantity"];
	    }	  			
		$itemArr=$product->getSpecificProduct($_POST["txtIdAddToCart"]);
		$itemmyArr=array("product_id"=>$itemArr[0]["product_id"],"product_name"=>$itemArr[0]["product_name"],"quantity"=>$quantity,"product_price"=>$itemArr[0]["product_price"],"image_src"=>$itemArr[0]["img_src"]);		
		/*echo '<pre>';
		print_r($itemmyArr);
		echo '</pre>';*/
			$flag = false;			
		if(!empty($_SESSION["ca"])){		  
			$cart=$_SESSION["ca"];
			print_r($cart);
			for($i=0;$i<count($cart);$i++){
				if($cart[$i]["product_id"]==$_POST["txtIdAddToCart"]){
					$cart[$i]["quantity"]=$cart[$i]["quantity"]+$quantity;
					$_SESSION["ca"]=$cart;
					echo "already exist";
					$flag = true;
					break;
				}
			}	
		}
	
		if($flag){}
		else{
			$_SESSION["ca"][]=$itemmyArr;
			}
		echo "loop output";	
		}
	}
	
	public function getCartItems(){
		/*?>	
		<table border="2">
	
			<?php */

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
			     
				 <?php  $_SESSION["productId"]=$cart[$i]["product_id"] ; ?>
				 <?php  $_SESSION["productName"]=$cart[$i]["product_name"] ; ?>
				 <?php  $_SESSION["itemQuantity"]=$_SESSION["p_quantity"]=$cart[$i]["quantity"] ; ?>
				 <?php   $_SESSION["XQuantity"]=$cart[$i]["quantity"]*$cart[$i]["product_price"]; 
						$_SESSION["productPrice"]=$cart[$i]["product_price"];
						$_SESSION["image"]=$cart[$i]["image_src"];
				 ?>
			<?php    $_SESSION["total"]=$_SESSION["total"]; ?>
				 
				  <!--<td><a onclick="window.location.href='addtocart.php?removename=<?php  //echo $cart[$i]["product_id"]; ?>'"   >Remove Item</a></td>
			   </tr> -->

	<?php   } 
		}
		//unset($_SESSION["total"]);unset($_SESSION["ca"]);  
		if(!empty($_POST["ca"])){
			$total=0;
			$cart=$_SESSION["ca"];
			for($i=0;$i<count($cart);$i++){
				$total=$total+$cart[$i]["product_price"];
			}

		/*?>

			<tr><?php  //echo $total;
		*/} /*?></tr>

		</table>


		<?php */
	}
	
	public function removeCartItems(){
		 if(isset($_GET["removename"])){		
			$cart=$_SESSION["ca"];
			$flag = false;			
			/*echo "<pre>";
			print_r($_SESSION["ca"]);
			echo "<br><br>";
			print_r($cart);
			echo "</pre>";*/
			$count=0;
			foreach($cart as $itemArray=>$key){
				//echo "Item ID: ".$key[0]['product_id']."<br>";
				if($key['product_id']==$_GET["removename"]){
					unset($cart[$count]);
				}
			}
			//unset($cart[$_GET["removename"]][0]);					   
			$cart=array_values($cart);
			$_SESSION["ca"]=$cart;
			echo "removed item from cart";
			header("location:addtocart.php");		
		}

		}//removeCartItems()
	
	public function placeOrder(){
		if(isset($_POST["place"])){	
			if(isset($_SESSION["user"])){
				$a = new Product();
				$a->orderPlace($_SESSION["user"],$_SESSION["total"],1);
			}
			else{		
				echo "first log in";
			}			
		}
		if(isset($_POST["ok"])){
		unset($_SESSION["ca"]);
	}
	
	}//placeOrder()
}

//(new ShoppingCart)->{$_POST['addItemToCart']}();
?>