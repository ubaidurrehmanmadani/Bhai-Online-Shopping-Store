<?php
//require_once("../db/dbcon.php");
class Order{
	private $query;
	private $db;
	
		
		
		public function __construct(){
			$this->db=new databaseManager();
		}
		
	
	
	public function placeOrder($shipName,$shipPhone,$shipAddress){
		if(isset($_POST["place"])){	
			if(isset($_SESSION["user"])){
				$a = new Product();
				$orderPlace1=$a->orderPlace($_SESSION["user"],$_SESSION["total"],0,$shipName,$shipPhone,$shipAddress);
				if($orderPlace1){
					unset($_SESSION["ca"]);
					unset($_SESSION["total"]);
				}
			}
			else{		
				echo "<script type='text/javascript'>alert('First Login To Place An Order');</script>";
				//header('location:login/login.php');
			}			
		}		
	
	}//placeOrder()
	
	public function getNewOrders(){
		
			$this->query="select * from order1 as o where day(o.ordertime)=(select day(now())) and order_status=0";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
		
	}
	
	public function getNewOrdersDetails(){
		
			$this->query="select o.order_id'ID',o.ordertime'time',o.ship_name'name',o.order_status,o.ship_phone'phone',o.ship_address'address',o.total_price'price' from order1 as o where day(o.ordertime)=(select day(now())) ";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
		
	}
	
	public function getNewOrdersDetails1($userId){
		
			$this->query="select o.order_id'ID',o.ordertime'time',o.order_status'status',o.order_deliverytime'dtime',o.ship_name'name',o.ship_phone'phone',o.ship_address'address',o.total_price'price' from order1 as o where o.user_id=?";
			$data=$this->db->executeQuery($this->query,array($userId),"cread");
			return $data;
		
	}
	
	public function getOrderDetails($orderId){
		
			$this->query="select ordertime'time',order_status'status',order_deliverytime'dtime',total_price'price' from order1 where order_id=?";
			$data=$this->db->executeQuery($this->query,array($orderId),"cread");
			return $data;
		
	}
	
	public function updateOrderStatus($orderStatus,$bhaiId,$orderId){
		$this->query="update order1 set order_status=?,order_deliverytime=now(),bhai_id=? where order_id=?";
		$data=$this->db->executeQuery($this->query,array($orderStatus,$bhaiId,$orderId),"update");
	}
	
	
	
	
	
public function getDeliveryboyName($orderId){
		
			$this->query="select u.user_name'bhai',u.user_id'id' from user as u,order1 as o where u.user_id=o.bhai_id and o.order_id=?";
	//$this->query="select u.user_name'bhai',u.user_id'id' from user as u,order1 as o where o.order_id=? and ";
			$data=$this->db->executeQuery($this->query,array($orderId),"cread");
			return $data;
		
	}
	
	public function getOrderPersonDetails($orderId){
		
			$this->query="select u.user_id'uId',u.user_gender'ugender',u.user_name'uname',u.user_phone'uphone',u.user_comAddress'uaddress',o.ship_name'cname',o.ship_gender'cgender',o.ship_phone'cphone',o.ship_address'caddress' from user as u,order1 as o where o.user_id=u.user_id and o.order_id=?";
			$data=$this->db->executeQuery($this->query,array($orderId),"cread");
			return $data;
		
	}
	
	public function deliveredOrderList(){
		$this->query="select user.user_name,user.user_comAddress,order1.*  from order1,user where order1.order_status=1 and user.user_id=order1.user_id";
		$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
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
	
	public function uploadOrderRecipt($reciptSource,$orderId){
		echo "<br>";
		echo $orderId;
		$this->query="update order1 set recipt_src=? where order_id=?";
		$data=$this->db->executeQuery($this->query,array($reciptSource,$orderId),"update");
	}
		
		
	public function getOrderRecipt($orderId){		
		$this->query="select distinct recipt_src from order1 where order_id=?";
		$data=$this->db->executeQuery($this->query,array($orderId),"cread");
		//print_r($data);
		return $data;
	}
	
	
	
	
}

//$order = new Order();
//$p  = $order->viewCancelOrder(2,2);
//print_r($p);
?>