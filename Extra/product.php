<?php
	require("../db/dbcon.php");
	//session_start();
	class Product{
		private $query;
		private $db;
		private $productId;
		private $parentId;
		
		public function __construct(){
			$this->db=new databaseManager();
		}
		
		
		
		public function viewProducts(){
			$this->query="select * from product";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
		}
		
		public function viewRecentProducts(){
			$this->query="SELECT * FROM PRODUCT ORDER BY PRODUCT_DATE DESC LIMIT 30;";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;			
		}
		
		public function viewProductsWithCategory(){
			$this->query="SELECT  p.product_name,p.product_id, c.category_name FROM product AS p,category AS c where p.category_id=c.category_id ";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
		}
		
		public function viewOrderDetails($orderId){
			$this->query ="select o.order_id'SKU',u.user_name'User',p.product_name'Product',o.order_status'Order Status',c.category_name'Category',p.product_price'Unit Price',oi.quantity'Quantity',p.product_price*oi.quantity'XPrice',o.total_price'Total Price' from user as u,category as c,product as p,orderitems as oi,order1 as o where p.product_id=oi.product_id and o.order_id=oi.order_id and c.category_id=p.category_id and u.user_id=o.user_id and o.order_id=? ";
			 $result=$this->db->executeQuery($this->query,array($orderId),"cread");
			return $result;
		}
		
		
		public function getProductsByCategory($catagoryId){
			$this->query ="select * from product WHERE category_id=?";
			 $result=$this->db->executeQuery($this->query,array($catagoryId),"cread");
			return $result;
		}
		
		public function getProductsByName($productName){
			$this->query ="select * from product WHERE product_name=?";
			 $result=$this->db->executeQuery($this->query,array($productName),"cread");
			return $result;
		}
		
		public function getCategoryId($categoryName){
			$this->query ="select catagory_id from category WHERE category_name=?";
			 $result=$this->db->executeQuery($this->query,array($categoryName),"cread");
			return $result;
		}
		
		function getCategory(){
			$this->query ="select category_name,category_id from category WHERE parent_id=0";
			 $result=$this->db->executeQuery($this->query,array(),"sread");
			return $result;
		}
		
		function getChildCategories($parentId){
			$this->query ="select category_name from category WHERE parent_id=?";
			 $result=$this->db->executeQuery($this->query,array($parentId),"cread");
			return $result;
		}
		
		function getParentCategories(){
			$this->query="SELECT distinct c.category_id,c.category_name from category as c,category as ct where c.category_id=ct.parent_id";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;	
		}
		
	
		
		public function viewCategories(){
			$this->query="select * from category";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
		}
		
		public function viewPackings(){
			$this->query="select * from packing";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
		}
		
		public function getSpecificProduct($productId){
			$this->query="select * from product where product_id=?";
			$data=$this->db->executeQuery($this->query,array($productId),"cread");
			return $data;
			
			
		}
		
		
		
		public function orderPlace($userId,$total,$orderStatus,$shipName,$shipPhone,$shipAddress){
	 	
	      $this->query="insert into order1(user_id,total_price,order_status,ship_name,ship_phone,ship_address) values(?,?,?,?,?,?)";
		
			$result=$this->db->executeQuery($this->query,array($userId,$total,$orderStatus,$shipName,$shipPhone,$shipAddress),"create");
			
			if($result>0){
				echo "<script type='text/javascript'>alert('Order Placed successfully!')</script></br>";
				$this->itemInsert($result);
				}
		
	    }
		
		
		public function addCategory($categoryName,$parentId){
	 	
	      $this->query="insert into category(category_name,parent_id) values(?,?)";
		
			$result=$this->db->executeQuery($this->query,array($categoryName,$parentId),"create");
			
			if($result){
				echo "Category Added Successfully!!!</br>";				
			}
			else{
				echo "Category not Added Successfully!!!";
			}
		
	    }
		
		
		public function itemInsert($orderId){
	    $cart=$_SESSION["ca"];	
			for($i=0;$i<count($cart);$i++) {				
			    $this->query="insert into orderitems(product_id,order_id,quantity)  values(?,?,?)";
			    $result=$this->db->executeQuery($this->query,array($cart[$i]["product_id"],$orderId,$cart[$i]["quantity"]),"create");
		        
			}
			if($result>0){
					echo count($_SESSION["ca"])."item inserted in orderline items";		
					return true;
			}
		}
		
		
		public function getOrderOfSpecificUser($userId){
			
			  $this->query="select * from order where user_id=?";
			  $data=$this->db->executeQuery($this->query,array($userId),"cread");
		      return $data;	  
	    }
		
		
		function addProduct($productName,$productPrice,$productDescription,$productPacking,$productCategory,$productUnit,$productImage){			
			$this->query="insert into product(product_name,product_price,product_description,packing_type,category_id,product_unit,img_src) value(?,?,?,?,?,?,?)";
			$result=$this->db->executeQuery($this->query,array($productName,$productPrice,$productDescription,$productPacking,$productCategory,$productUnit,$productImage),"create");
				if($result){echo " Product Added";}
			    else{echo "Product not added";}
		}
		
		
		function fileUpload(){
			
			
			if(isset($_FILES["image"])){
				$fileName = $_FILES["image"]["name"];
				$fileType = $_FILES["image"]["type"];
				$fileSize = $_FILES["image"]["size"];
				$fileTemp = $_FILES["image"]["tmp_name"];
				
				move_uploaded_file($fileTemp,"images/".$fileName);
				$fileInfo[0] = true;
				$fileInfo[1] ="images/".$fileName;
				return $fileInfo;
			}
		}
		
		
		
		function updateProduct($productName,$productPrice,$productDescription,$productPacking,$productCategory,$productUnit,$productImage,$productId){			
			$this->query="update product set product_name=?,product_price=?,product_description=?,packing_type=?,category_id=?,product_unit=?,img_src=? where product_id=?";
			$result=$this->db->executeQuery($this->query,array($productName,$productPrice,$productDescription,$productPacking,$productCategory,$productUnit,$productImage,$productId),"update");
				if($result){echo "Product updated";}
			    else{echo "Product update Fail";}
		}
		
		
			function deleteProduct($productId){			
			$this->query="delete from product where product_id = ?";
			$result=$this->db->executeQuery($this->query,array($productId),"delete");
				if($result){echo "Product deleted";}
			    else{echo "Product delete Fail";}
		}
		
		
		/*public function viewProducts(){
			$this->query="select * from product";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
		}
		
		public function getSpecificProduct($productId){
			$this->query="select * from product where product_id=?";
			$data=$this->db->executeQuery($this->query,array($productId),"cread");
			return $data;
			
			
		}
		
		
		
		public function orderPlace($userId,$total,$orderStatus){
	 	
	      $this->query="insert into order1(user_id,total_price,order_status) values(?,?,?)";
		
			$result=$this->db->executeQuery($this->query,array($userId,$total,$orderStatus),"create");
			
			if($result>0){
				echo "order place successfully";
				$this->itemInsert($result);
				}
		
	    }
		
		
		
		public function itemInsert($orderId){
	    $cart=unserialize(serialize($_SESSION["ca"]));	
		for($i=0;$i<count($cart);$i++) {
			   $this->query="insert into orderitems(product_id,order_id,quantity)  values(?,?,?)";
			    $result=$this->db->executeQuery($this->query,array($cart[$i][0]["product_id"],$orderId,$cart[$i][0]["quantity"]),"create");
		        if($result>0){
					echo "insert item in orderline items";
					
					}
		}
		}
		
		
		public function getOrderOfSpecificUser($userId){
			
			  $this->query="select * from order1 where user_id=?";
			  $data=$this->db->executeQuery($this->query,array($userId),"cread");
		      return $data;	  
	    }*/
		
		
		function category(){
			$this->query ="select category_name,category_id from category  order by category_id";
			 $result=$this->db->executeQuery($this->query,array(),"sread");
			return $result;}
		
		public function getProductByCategory($categoryId){
			
			  $this->query="select * from product where category_id=?";
			  $data=$this->db->executeQuery($this->query,array($categoryId),"cread");
		      return $data;	  
	    }
		
		
		function getPacking(){
			$this->query ="select * from packing";
			 $result=$this->db->executeQuery($this->query,array(),"sread");
			return $result;}
		
		function getAllCategory(){
			$this->query ="select sub_category,category_name,category_id from category;   ";
			 $result=$this->db->executeQuery($this->query,array(),"sread");
			return $result;}
	
	
		function getAllCategoryWithSubcategory($categoryId){
	       $this->query="select distinct  category2.category_name,category2.category_id from category category1,category category2  where category2.category_id=category1.sub_category and category1.category_id=? ";
		   $result=$this->db->executeQuery($this->query,array($categoryId),"cread");
		   return $result;
     		
		}
		
		
		
		public function getUnit(){
			$this->query ="select * from unit";
			 $result=$this->db->executeQuery($this->query,array(),"sread");
			return $result;
		}
		
		
	}

 $p=new Product();
$unit=$p->getUnit();
print_r($unit);
     
?>