<?php

$connection = mysqli_connect ('localhost','root','','products_order');


if($connection === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}




$phone = mysqli_real_escape_string($connection,$_REQUEST['phone']);
$mail = mysqli_real_escape_string($connection,$_REQUEST['email']);
$name = mysqli_real_escape_string($connection,$_REQUEST['fullName']);
$father = mysqli_real_escape_string($connection,$_REQUEST['fatherName']);
$mother = mysqli_real_escape_string($connection,$_REQUEST['motherName']);
$tshirt = mysqli_real_escape_string($connection,$_REQUEST['Address']);
$blood = mysqli_real_escape_string($connection,$_REQUEST['tShirtSize']);
$address = mysqli_real_escape_string($connection,$_REQUEST['bloodGroup']);
$education = mysqli_real_escape_string($connection,$_REQUEST['educationStatus']);
$profession = mysqli_real_escape_string($connection,$_REQUEST['professions']);
$insttute = mysqli_real_escape_string($connection,$_REQUEST['institute']);
$payment = mysqli_real_escape_string($connection,$_REQUEST['cash']);
$agrement = mysqli_real_escape_string($connection,$_REQUEST['agreement']);


$edate=mysqli_real_escape_string($connection,strtotime($_REQUEST['date'])); 
$edate=date("Y-m-d",$edate);






$sql = "INSERT INTO registration_form(phone_number,mail_address,full_name,f_name,m_name,date_of_birth,tshirt_size,blood_group,address,education_status,profesion_name,institute_name,payment_way,agrement_status) VALUES('$phone','$mail','$name','$father','$mother','$edate','$tshirt','$blood','$address','$education','$profession','$insttute','$payment','$agrement')";



if(mysqli_query($connection, $sql))
{
	echo "You Are Successfully Insert Data";
}else
{
	echo "You are already Inserted Data , ".mysqli_error($connection);
}


























?>