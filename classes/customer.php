<?php

require("user.php");
class Customer extends User {
	
	
		
		
		public function __construct(){
			$this->db=new databaseManager();
		}
		


	public function giveFeedBackToBhai($type,$description,$customerId,$bhaiId,$orderId,$stars){
		
	 	
	      $this->query="insert into feedback(feedback_type,feedback_description,customer_id,bhai_id,order_id,rating) values(?,?,?,?,?,?)";
		
			$result=$this->db->executeQuery($this->query,array($type,$description,$customerId,$bhaiId,$orderId,$stars),"create");
			
			if($result>0){
				echo "insert feedback Succeccfull";
				
				}
			else{
				
				echo "Not insert";
			}	
		
	}
}	
	
//$customer=new Customer();
//$customer->giveFeedBackToBhai(1,"good",51,52,53,1);	



?>