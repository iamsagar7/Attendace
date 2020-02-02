<?php
	require_once 'connect.php';
	if(ISSET($_POST['save'])){
		$name = $_POST['name'];
		$month = $_POST['month'];
		$day = $_POST['day'];
		$year = $_POST['year'];
		$sche = $_POST['schedule'];
		if($sche=="Friday AM" ||$sche=="Friday PM"){
			$conn->query("INSERT INTO `calen` VALUES('', '$name', '$month', '$day', '$year','$sche')") or die(mysqli_error());
			echo '
				<script type = "text/javascript">
					alert("Saved Calendar Record Friday Class");
					window.location = "calendar.php";
				</script>
			';
		}elseif($sche=="Saturday AM" || $sche=="Saturday PM"){
			$conn->query("INSERT INTO `calen_saturday` VALUES('', '$name', '$month', '$day', '$year','$sche')") or die(mysqli_error());
			echo '
				<script type = "text/javascript">
					alert("Saved Calendar Record Saturday Class");
					window.location = "calendar.php";
				</script>
			';
		}elseif($sche=="Sunday AM" || $sche=="Sunday PM"){
			$conn->query("INSERT INTO `calen_sunday` VALUES('', '$name', '$month', '$day', '$year','$sche')") or die(mysqli_error());
			echo '
				<script type = "text/javascript">
					alert("Saved Calendar Record Sunday Class");
					window.location = "calendar.php";
				</script>
			';	
		}else{
			echo '
				<script type = "text/javascript">
					alert("There is An Error Found, Contact The Programmer To Fixed");
					window.location = "calendar.php";
				</script>
			';
		}		
		}
	