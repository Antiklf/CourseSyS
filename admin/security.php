<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" class="h-100">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="../style.css">
<script type="text/javascript" src="../bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.bundle.js"></script>

<title>修改密保</title>

</head>

<body class="d-flex flex-column h-100">
<?php include("header.php"); ?>

<?php
if (!session_id()) session_start();
if(! isset($_SESSION["username"])){
	header("Location:..//login.php");
	exit();
	}else if($_SESSION["role"]<>"admin"){
		header("Location:..//login.php");
		exit();
		}
?>

<div class="wrap">
	<div class="contain-wrap">
      	<div id="myForm" class="myForm">
			<form  method="post" action="security.php" enctype="multipart/fromdata">
          		<fieldset>
            			<legend>修改密保</legend>
						<div class="form-group">
						<label for="oldPwd" class="form-label mt-4">请输入密码：</label>
						<input type="password" class="form-control" id="password" aria-describedby="emailHelp"
							placeholder="请输入密码" name="password">
						</div>
						<div class="form-group">
							<label for="Pwd" class="form-label mt-4">请选择密保问题：</label>
							<select id="exampleSelect1" name="que">
							<option value="">==请选择==</option>
							<option value="你的生日">你的生日</option>
							<option value="你最喜欢的颜色">你最喜欢的颜色</option>
							<option value="你的好朋友的名字">你的好朋友的名字</option>
							<option value="你家小狗的名字">你家小狗的名字</option>
                    </select>
						</div>
						<div class="form-group">
							<label for="repPwd" class="form-label mt-4">请输入密保答案：</label>
							<input type="text" class="form-control" id="answer" aria-describedby="emailHelp"
								placeholder="密保答案在20字以内" name="answer" maxlength='20'>
						</div>
						<hr>
						<div class="form-group set-center" id="buttons">
							<button type="submit" name="B1" id="B1" class="btn btn-primary set-padding" >提交修改</button>
						</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>


</body>
</html>
<?php
//include('./conn/db_conn.php');
if ($_SERVER["REQUEST_METHOD"] == "POST"){//更改密保
	$adminNo=$_SESSION["username"];
	$password=sha1($_POST['password']);
	$que=($_POST['que']=='')?0:$_POST['que'];
	$answer=$_POST['answer'];
	
	$ok = mysql_query("select * from admin  where adminNo='$adminNo';");
	$row=mysql_fetch_array($ok);
	
	if($row['Pwd']==$password){
		$ok = mysql_query("update admin set answer='$answer' where adminNo='$adminNo';");//更新密保答案
		if($que){//密保问题跟新
			$ok = mysql_query("update admin set que='$que' where adminNo='$adminNo';");
		}
		echo"<script>";
		echo"alert('密保修改成功');";
		//echo"location. href='Changepwd.php'";
		echo"</script>";
	
	}
	
	
	else{
		echo"<script>";
	echo"alert('密码错误，修改密保失败');";
	//echo"location. href='security.php'";
	echo"</script>";
	} 
	
	
}
?>