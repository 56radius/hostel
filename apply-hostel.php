<?php
session_start();
include('includes/config.php');
date_default_timezone_set('Asia/Kolkata');
include('includes/checklogin.php');
check_login();
if(isset($_POST['submit']))
{
$regno=$_POST['regno'];
$fname=$_POST['fname'];
$mname=$_POST['mname'];
$lname=$_POST['lname'];
$gender=$_POST['gender'];
$contactno=$_POST['contact'];
$emailid=$_POST['email'];
$department=$_POST['department'];
$level=$_POST['level'];
$hostelname=$_post['hostelname'];
$level=$_POST['level'];
$hostelname=$_POST['hostelname'];
$roomno=$_POST['roomno'];
$query="insert into allocation (regNo,firstName,middleName,lastName,gender,contactNo,email,password) values(?,?,?,?,?,?,?,?)";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('sssssiss',$regno,$fname,$mname,$lname,$gender,$contactno,$emailid,$password);
$stmt->execute();
echo"<script>alert('Student Succssfully register');</script>";
}
?>

<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">

	<title> Apply Hostel </title>

	<!-- styling -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">

	<!-- styling -->
	<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
	<script type="text/javascript" src="js/validation.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<?php	
					$aid=$_SESSION['id'];
					$ret="select * from userregistration where id=?";
						$stmt= $mysqli->prepare($ret) ;
				 	$stmt->bind_param('i',$aid);
				 	$stmt->execute() ;//ok
				 	$res=$stmt->get_result();
				 	//$cnt=1;
				   	while($row=$res->fetch_object())
				  	{
				?>	
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title"> Fill Hostel Details </h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-primary">
									<div class="panel-heading">
										Fill all info
									</div>				

							<div class="panel-body">
								<form method="post" action="" name="registration" class="form-horizontal" onSubmit="return valid();">	
									<div class="form-group">
										<label class="col-sm-2 control-label"> Matric No : </label>
											<div class="col-sm-8">
									<input type="text" name="regno" id="regno"  class="form-control" required="required" value="<?php echo $row->regNo;?>" readonly >
									</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label">First Name : </label>
											<div class="col-sm-8">
									<input type="text" name="fname" id="fname"  class="form-control" value="<?php echo $row->firstName;?>"   required="required" >
									</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Middle Name : </label>
											<div class="col-sm-8">
									<input type="text" name="mname" id="mname"  class="form-control" value="<?php echo $row->middleName;?>"  >
									</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Last Name : </label>
											<div class="col-sm-8">
									<input type="text" name="lname" id="lname"  class="form-control" value="<?php echo $row->lastName;?>" required="required">
									</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Gender : </label>
											<div class="col-sm-8">
												<select name="gender" class="form-control" required="required">
													<option value="<?php echo $row->gender;?>"><?php echo $row->gender;?></option>
													<option value="male">Male</option>
													<option value="female">Female</option>
													<option value="others">Others</option>
												</select>
											</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Contact No : </label>
											<div class="col-sm-8">
									<input type="text" name="contact" id="contact"  class="form-control" maxlength="10" value="<?php echo $row->contactNo;?>" required="required">
									</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label">Email id: </label>
											<div class="col-sm-8">
												<input type="email" name="email" id="email"  class="form-control" value="<?php echo $row->email;?>" readonly>
												<span id="user-availability-status" style="font-size:12px;"></span>
											</div>
									</div>
									<?php } ?>

									<div class="col-md-10">
										<div class="panel panel-default">
											<div class="panel-heading">
												Hostel Info
										</div>

									<div class="form-group">
										<label class="col-sm-2 control-label"> Department: </label>
											<div class="col-sm-8">
												<input type="text" name="department" id="department"  class="form-control" required="required" readonly>
											</div>
									</div>

									<div class="form-group">
												<label class="col-sm-2 control-label"> Level: </label>
													<div class="col-sm-8">
														<input type="text" name="level" id="level"  class="form-control" required="required" readonly>
													</div>
									</div>

									<div class="form-group">
												<label class="col-sm-2 control-label"> Hostel Name: </label>
													<div class="col-sm-8">
														<input type="text" name="hostelname" id="hostelname"  class="form-control" required="required" readonly>
													</div>
									</div>

									<div class="form-group">
												<label class="col-sm-2 control-label"> Room No: </label>
													<div class="col-sm-8">
														<input type="text" name="roomno" id="roomno"  class="form-control" required="required" readonly>
													</div>
									</div>
								</div>

									<div class="col-sm-6 col-sm-offset-4">
										<button class="btn btn-default" type="submit">Cancel</button>
										<input type="submit" name="submit" Value="Submit" class="btn btn-primary">
									</div>
								</form>

									</div>
									</div>
								</div>
							</div>
						</div>
							</div>
						</div>
					</div>
				</div> 	
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
<script type="text/javascript">
	$(document).ready(function(){
        $('input[type="checkbox"]').click(function(){
            if($(this).prop("checked") == true){
                $('#paddress').val( $('#address').val() );
                $('#pcity').val( $('#city').val() );
                $('#pstate').val( $('#state').val() );
                $('#ppincode').val( $('#pincode').val() );
            } 
            
        });
    });
</script>
	<script>
function checkAvailability() {

$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'emailid='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>

</html>