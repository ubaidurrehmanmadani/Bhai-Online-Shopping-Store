
   <?php
    //require("../db/dbcon.php");
//session_start();

    class User{
		protected $db;
		protected $query;
		private $user_id;
		private $password;
		private $login_status;
		private $name;
		private $age;
		private $gender;
		private $address;
		private $dateOfBirth;
		private $createdDate;
		private $status;
		private $addressId;
		private $user_role;
	    public $message="";
		
	    function __construct(){
			$this->db=new databaseManager();
			
		}		


		public function registerUser($user_name,$user_DOB,$cnic,$password,$user_phone,$user_gender,$user_type,$user_date,$user_status,$user_province,$user_district,$user_city,$user_tehsil,$user_comAddress,$user_img){
			$this->query="insert into user (user_name,user_DOB,cnic,password,user_phone,user_gender,user_type,user_date,user_status,user_province,user_district,user_city,user_tehsil,user_comAddress,user_img) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				$row=$this->db->executeQuery($this->query,array($user_name,$user_DOB,$cnic,$password,$user_phone,$user_gender,$user_type,$user_date,$user_status,$user_province,$user_district,$user_city,$user_tehsil,$user_comAddress,$user_img),"create");
			if($row){
				echo "user registered";}
				else{
					echo "error occured during user regestration";					
				}
			}
		  
	    public function logIn($number,$password){	
          
			if ( session_status() == PHP_SESSION_NONE ) {
				session_start();
			} 
		    $this->query="select * from user where  user_phone=? AND password=? ";			   
			   if($row=$this->db->executeQuery($this->query,array($number,$password),"cread")){				   
				  $_SESSION["user"]=$row[0]["user_id"];
				  $_SESSION["username"]=$row[0]["user_name"];
			      $_SESSION["image"]=$row[0]["user_img"];
			      if($row[0]['user_type']==1)echo "<script type='text/javascript'>location.replace('main1.php')</script>";
			      elseif($row[0]['user_type']==2)echo "<script type='text/javascript'>location.replace('bhai_panel.php')</script>";
			      elseif($row[0]['user_type']==3)echo "<script type='text/javascript'>location.replace('admin_panel.php')</script>";
				  return true;
				}				
				else{
				    return false;
				/*	$message = "Username and/or Password incorrect.\\nTry again.";
						echo "<script type='text/javascript'>alert('Username and/or Password incorrect');</script>";*/
					
  									//echo "<script >show();</script>";
					
			    }				   
		}
		
		
		
		
		 function  viewUser($userId){
			 $this->query="select * from user where user_id=?";
			 $result=$this->db->executeQuery($this->query,array($userId),"cread");
			 return $result;
			}
	
 function updateUser($user_name,$user_DOB,$cnic,$password,$user_phone,$user_gender,$user_type,$user_status,$user_province,$user_district,$user_city,$user_tehsil,$user_comAddress,$user_img,$userId){
			$this->query="update user set user_name=?,user_DOB=?,cnic=?,password=?,user_phone=?,user_gender=?,user_type=?,user_status=?,user_province=?,user_district=?,user_city=?,user_tehsil=?,user_comAddress=?,user_img=? where user_id=?";
				if($row=$this->db->executeQuery($this->query,array($user_name,$user_DOB,$cnic,$password,$user_phone,$user_gender,$user_type,$user_status,$user_province,$user_district,$user_city,$user_tehsil,$user_comAddress,$user_img,$userId),"update")){
				echo "user Updated";}
				else{
					echo "error occured during user Updation";					
				}
			}
			
			
			public function getLastUserId(){
			$this->query="select user_id from user order by user_id desc limit 1";
			$data=$this->db->executeQuery($this->query,array(),"sread");
			return $data;
		}
			
				public function insertIntoUserRatingTable($userID,$itemID){
			$this->query="insert into rating(userID,itemID) values (?,?)";
				$row=$this->db->executeQuery($this->query,array($userID,$itemID),"create");
			if($row){
				//echo "inserted into rating table";
				}
				else{
					echo "error occured";					
				}
			}
			
			
	}
	 
	
	/*class Customer extends User{
		function __construct(){
			
		}
		
		public function register(){}
	}*/
	//$t= new DATE();
	
	//$b->registerUser("ubaid","12/12/12","1234567890","asd",3344246365,1,1,'Y-m-d H:i:s',1,"KPK","Abbottabad","Havailian","Havailian","mera pain PO Bodla","");
	
	
?>






