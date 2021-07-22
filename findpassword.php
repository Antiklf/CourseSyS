<?php
include('./conn/db_conn.php');
if ($_SERVER["REQUEST_METHOD"] == "GET"){//搜密保问题
	$adminNo=$_GET['adminNo'];
	$result = mysql_query("select que from admin where adminNo='$adminNo';");
	$row = mysql_fetch_array($result);
	if ($row){
	echo $row['que'];	}
	else
	echo '没有设置密保问题';
}
if ($_SERVER["REQUEST_METHOD"] == "POST"){//更改密码
	$adminNo=$_POST['adminNo'];
	$password=sha1($_POST['password']);
	$answer=$_POST['answer'];
	$ok = mysql_query("select * from admin  where adminNo='$adminNo';");
	$row=mysql_fetch_array($ok);
	if($row['answer']==$answer){
		$ok = mysql_query("update admin set Pwd='$password' where adminNo='$adminNo';");
	if($ok){
		echo"<script>";
		echo"alert('密码修改成功，请用新密码登录');";
		echo"location. href='admin.php'";
		echo"</script>";
	}
	}
	
	else{
		echo"<script>";
	echo"alert('密保答案错误，修改密码失败');";
	echo"location. href='forgive.html'";
	echo"</script>";
	} 
	
	
}
?>