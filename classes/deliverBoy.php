<?php


require("user.php");

class Bhai extends User {
	
	
		
		
		public function __construct(){
			$this->db=new databaseManager();
		}
		


	public function giveFeedBackToCustomer($type,$description,$bhaiId,$customerId,$orderId,$stars){
		
	 	
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
	
// $bhai=new Bhai();
// $bhai->giveFeedBackToCustomer(2,"good",52,51,53,1);	



?>