
   <?php
    require_once("db/dbcon.php");
//session_start();

    class User{
		private $db;
		private $query;
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
				if($row=$this->db->executeQuery($this->query,array($user_name,$user_DOB,$cnic,$password,$user_phone,$user_gender,$user_type,$user_date,$user_status,$user_province,$user_district,$user_city,$user_tehsil,$user_comAddress,$user_img),"create")){
				echo "user registered";}
				else{
					echo "error occured during user regestration";					
				}
			}
		  
	    public function logIn($cnic,$password){	
          
			session_start();
		    $this->query="select * from user where cnic=? AND password=?";			   
			   if($row=$this->db->executeQuery($this->query,array($cnic,$password),"cread")){				   
				  $_SESSION["user"]=$row[0]["user_id"];
				  echo "login ".$_SESSION["user"];	
				   header('Location: ..\main1.php');
				}				
				else{
					$message = "Username and/or Password incorrect.\\nTry again.";
					
  									//echo "<script >show();</script>";
					
			    }				   
			}
		
		
		 function  viewUser($userId){
			 $this->query="select * from user where user_id=?";
			 $result=$this->db->executeQuery($this->query,array($userId),"cread");
			 return $result;
			}
	
 function updateUser($user_name,$user_DOB,$cnic,$password,$user_phone,$user_gender,$user_type,$user_date,$user_status,$user_province,$user_district,$user_city,$user_tehsil,$user_comAddress,$user_img,$userId){
			$this->query="update user set user_name=?,user_DOB=?,cnic=?,password=?,user_phone=?,user_gender=?,user_type=?,user_date=?,user_status=?,user_province=?,user_district=?,user_city=?,user_tehsil=?,user_comAddress=?,user_img=? where user_id=?";
				if($row=$this->db->executeQuery($this->query,array($user_name,$user_DOB,$cnic,$password,$user_phone,$user_gender,$user_type,$user_date,$user_status,$user_province,$user_district,$user_city,$user_tehsil,$user_comAddress,$user_img,$userId),"update")){
				echo "user Updated";}
				else{
					echo "error occured during user Updation";					
				}
			}
			
			
	}
	 
	
	/*class Customer extends User{
		function __construct(){
			
		}
		
		public function register(){}
	}*/
	//$t= new DATE();
	//$b = new User();
	//$b->registerUser("ubaid","12/12/12","1234567890","asd",3344246365,1,1,'Y-m-d H:i:s',1,"KPK","Abbottabad","Havailian","Havailian","mera pain PO Bodla","");
	
	
?>






