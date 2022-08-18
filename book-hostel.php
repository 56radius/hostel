<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
//code for registration
if(isset($_POST['submit']))
{
	$aid=$_SESSION['login'];

	$ret="select firstName, lastName, room_no,email from userregistration where email=?";
	$stmt= $mysqli->prepare($ret) ;
	$stmt->bind_param('s',$aid);
	$stmt->execute() ;//ok
	$res=$stmt->get_result();

	$rooom_no = NULL;
	$user_first_name = NULL;
	$user_last_name = NULL;
	$user_email = NULL;
	while($row=$res->fetch_object())
	{
		$rooom_no = "$row->room_no";
		$user_first_name= "$row->firstName";
		$user_last_name = "$row->lastName";
		$user_email = "$row->email";
	}

	if ($rooom_no != "") {
		echo "you already have a room";
	}

	else{
		$hostel_number=$_POST['level'];
		
		if ($hostel_number == 100) {

			$aid = 1;
			$ret="select count from ndha_room_count where id=?";
			$stmt= $mysqli->prepare($ret) ;
			$stmt->bind_param('i',$aid);
			$stmt->execute() ;//ok
			$res=$stmt->get_result();

			$room_count = NULL;
			while($row=$res->fetch_object())
			{
				$room_count = $row->count;
			}
			$ldate=date('d/m/Y h:i:s', time());
			$name = "$user_first_name $user_last_name";
			$query="UPDATE new_daniel_hall_a SET name=?, email=?, date_registered=? WHERE id=?";
			$stmt = $mysqli->prepare($query);
			$rc=$stmt->bind_param('sssi',$user_first_name, $user_email, $ldate, $room_count);
			$stmt->execute();
			

			$ret="select room_no from new_daniel_hall_a where email=?";
			$stmt= $mysqli->prepare($ret) ;
			$stmt->bind_param('s',$user_email);
			$stmt->execute() ;//ok
			$res=$stmt->get_result();

			$new_room_no = NULL;
			while($row=$res->fetch_object())
			{
				$new_room_no = $row->room_no;
			}


			$query="""
			UPDATE userregistration SET room_no=? WHERE email=?
			SELECT * FROM userregistration
			""";
			$stmt = $mysqli->prepare($query);
			$rc=$stmt->bind_param('ss',$new_room_no, $user_email);
			$stmt->execute();


			
			

		}
		else{
			$aid=$_SESSION['login'];

			$ret="select gender from userregistration where email=?";
			$stmt= $mysqli->prepare($ret) ;
			$stmt->bind_param('s',$aid);
			$stmt->execute() ;//ok
			$res=$stmt->get_result();

			$user_gender = NULL;
			while($row=$res->fetch_object())
			{
				$user_gender = "$row->gender";
			}
		
		}
	}

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

	<title> Hostel Booking </title>

	<!-- styling -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">

	<!-- scripting -->
	<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
	<script type="text/javascript" src="js/validation.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
</head>
<body>
	<?//php include('includes/header.php');?>
	<div class="ts-main-content">
		<? //php include('includes/sidebar.php');?> 
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title"> Booking </h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-primary">
									<div class="panel-heading">Fill all Info</div>
									<div class="panel-body">
										<form method="post" action="" class="form-horizontal">
											
											
											<div class="form-group">
												<label class="col-sm-2 control-label"> Level : </label>
													<div class="col-sm-8">
														<select name="level" class="form-control" required="required">
															<option value=""> Select Level </option>
															<option value="100"> 100 </option>
															<option value="200"> 200 </option>
															<option value="300"> 300 </option>
															<option value="400"> 400 </option>
															<option value="500"> 500 </option>
														</select>
													</div>
											</div>

											<!--<div class="form-group">
												<label class="col-sm-2 control-label">Gender : </label>
													<div class="col-sm-8">
														<select name="gender" class="form-control" required="required">
															<option value=""> Select Gender </option>
															<option value="male">Male</option>
															<option value="female">Female</option>
															<option value="others">Others</option>
														</select>
													</div>
											</div>-->

											<!--<div class="form-group">
												<label class="col-sm-2 control-label"> Hostel Name : </label>
													<div class="col-sm-8">
														<select name="hostelname" class="form-control" required="required">
															<option value=""> Select Hostel Name </option>
															<option value="newdanielhall"> New Daniel Hall</option>
															<option value="newelizabethhall"> New Elizabeth Hall </option>
															<option value="elizabeth2"> Elizabeth2 </option>
															<option value="elizabeth3"> Elizabeth3 </option>
															<option value="daniel1"> Daniel 1 </option>
															<option value="houseofdaniel"> House Of Daniel </option>
														</select>
													</div>
											</div>-->

											<div class="col-sm-6 col-sm-offset-4">
												<button class="btn btn-default" type="submit">Cancel</button>
												<input type="submit" name="submit" Value="Get Room No" class="btn btn-primary">
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
data:'roomno='+$("#room").val(),
type: "POST",
success:function(data){
$("#room-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>


<script type="text/javascript">

$(document).ready(function() {
	$('#duration').keyup(function(){
		var fetch_dbid = $(this).val();
		$.ajax({
		type:'POST',
		url :"ins-amt.php?action=userid",
		data :{userinfo:fetch_dbid},
		success:function(data){
	    $('.result').val(data);
		}
		});
})});
</script>
</html>