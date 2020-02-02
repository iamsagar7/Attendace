<?php
//Code Monster Project HLCC 2017
require_once 'admin/connect.php';
if(isset($_POST['search'])){
$student = $_POST['student'];
date_default_timezone_set("Australia/Sydney");
$time = date("h:i A",strtotime("+0 HOURS"));
$date = date("M-d-Y");
$q_student = $conn->query("SELECT * FROM `student` WHERE student_no = '$student'") or die(mysql_error());							
$f_student = $q_student->fetch_array();
$id = $f_student['student_id'];
	if($f_student['student_no']==$student){
		if($f_student['schedule'] == date('l A')){
		if($time <= "08:30 AM"){
				echo"<h1>On Time</h1>";
					$student_name = $f_student['firstname']." ".$f_student['lastname']." of ".$f_student['course']." ".$f_student['schedule'];;
						echo "<h3 class = 'text-muted'>".$student_name." <label class = 'text-info'>at  ".date("h:i A", strtotime($time))." ".$date."</label></h3>";
							$conn->query("INSERT INTO `late` VALUES('','$student','$student_name','On Time','$time','$date','$id')") or die(mysqli_error());
			}elseif
			  ($time == "08:31 PM"
			|| $time == "08:32 AM"
			|| $time == "08:33 AM"
			|| $time == "08:34 AM"
			|| $time == "08:35 AM"
			|| $time == "08:36 AM"
			|| $time == "08:37 AM"
			|| $time == "08:38 AM"
			|| $time == "08:39 AM"
			|| $time == "08:40 AM"
			|| $time == "08:41 AM"
			|| $time == "08:42 AM"
			|| $time == "08:43 AM"
			|| $time == "08:44 AM"
			|| $time == "08:45 AM"
			|| $time == "08:46 AM"
			|| $time == "08:47 AM"
			|| $time == "08:48 AM"
			|| $time == "08:49 AM"
			|| $time == "08:50 AM"
			|| $time == "08:51 AM"
			|| $time == "08:52 AM"
			|| $time == "08:53 AM"
			|| $time == "08:54 AM"
			|| $time == "08:55 AM"
			|| $time == "08:56 AM"
			|| $time == "08:57 AM"
			|| $time == "08:58 AM"
			|| $time == "08:59 AM"
			|| $time == "09:00 AM"){	
				echo"<h1  style='color:red;'>You're Late !</h1>";
					$student_name = $f_student['firstname']." ".$f_student['lastname']." of ".$f_student['course']." ".$f_student['schedule'];
						echo "<h3 class = 'text-muted'>".$student_name." <label class = 'text-info'>at  ".date("h:i A",strtotime($time))." ".$date."</label></h3>";
							$conn->query("INSERT INTO `late` VALUES('','$student','$student_name','Late','$time','$date','$id')") or die(mysqli_error());
			}elseif($time >= "09:01 AM"){
			echo"<h1  style='color:red;'>Sorry You're Now Absent !</h1>";
			$student_name = $f_student['firstname']." ".$f_student['lastname']." of ".$f_student['course']." ".$f_student['schedule'];	
			echo"<h2  style='color:red;'>You're 15mins Grace Period is Done.</h2>";			
			}
		}elseif($f_student['schedule'] == date('l A')){	
			if($time <= "05:30 PM"){
				echo"<h1>On Time</h1>";
					$student_name = $f_student['firstname']." ".$f_student['lastname']." of ".$f_student['course']." ".$f_student['schedule'];
						echo "<h3 class = 'text-muted'>".$student_name." <label class = 'text-info'>at  ".date("h:i A", strtotime($time))." ".$date."</label></h3>";
							$conn->query("INSERT INTO `late` VALUES('','$student','$student_name','On Time','$time','$date','$id')") or die(mysqli_error());
			}elseif($time == "05:31 PM"
			|| $time == "05:32 PM"
			|| $time == "05:33 PM"
			|| $time == "05:34 PM"
			|| $time == "05:34 PM"
			|| $time == "05:36 PM"
			|| $time == "05:37 PM"
			|| $time == "05:38 PM"
			|| $time == "05:39 PM"
			|| $time == "05:40 PM"
			|| $time == "05:41 PM"
			|| $time == "05:42 PM"
			|| $time == "05:43 PM"
			|| $time == "05:44 PM"
			|| $time == "05:45 PM"
			|| $time == "05:46 PM"
			|| $time == "05:47 PM"
			|| $time == "05:48 PM"
			|| $time == "05:49 PM"
			|| $time == "05:50 PM"
			|| $time == "05:51 PM"
			|| $time == "05:53 PM"
			|| $time == "05:54 PM"
			|| $time == "05:55 PM"
			|| $time == "05:56 PM"
			|| $time == "05:57 PM"
			|| $time == "05:58 PM"
			|| $time == "05:59 PM"
			|| $time == "06:00 PM"){
				echo"<h1  style='color:red;'>You're Late !</h1>";
					$student_name = $f_student['firstname']." ".$f_student['lastname']." of ".$f_student['subject']." ".$f_student['schedule'];
						echo "<h3 class = 'text-muted'>".$student_name." <label class = 'text-info'>at  ".date("h:i A",strtotime($time))." ".$date."</label></h3>";
							$conn->query("INSERT INTO `late` VALUES('','$student','$student_name','Late','$time','$date','$id')") or die(mysqli_error());
		}elseif($time>="06:01 PM"){
			echo"<h1  style='color:red;'>Sorry You're Now Absent !".$date."</h1>";
			echo"<h2  style='color:red;'>You're 15mins Grace Period is Done.</h2>";
		}
			}else{
						echo
						"<h2 style='color:red;'>
							<span class = 'glyphicon glyphicon-calendar'></span></h2>
								<div style='color:red;'><h3>You Enter A Wrong Schedule !</h3></div>";
		}
		}else{
						echo"
						<h2 style='color:red;'>
							<span class = 'glyphicon glyphicon-warning-sign'></span></h2>
								<div style='color:red;'><h3>Invalid Barcode ID !</h3></div>";
	}
	}
?>