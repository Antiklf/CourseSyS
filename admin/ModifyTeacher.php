<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="h-100">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="../style.css">
<script type="text/javascript" src="../bootstrap/js/bootstrap.bundle.js"></script>



<title>修改教师信息</title>
</head>

<body class="d-flex flex-column h-100">
<?php include("header.php") ?>
<?php
if (!session_id()) session_start();
if(! isset($_GET['TeaNo']))
  {$TeaNo=001;}
 else{$TeaNo=$_GET['TeaNo'];} 
if(! isset($_SESSION["username"])){
  header("Location:../login.php");
  exit();
  }
$ShowDetail_sql="select * from teacher where TeaNo='$TeaNo'";
$ShowDetailResult=db_query($ShowDetail_sql);
$row=db_fetch_array($ShowDetailResult);
?>


<div class="contain-wrap">
  <div class="myForm">
    <form method="post" action="ModifyTeacher1.php">
        <fieldset>
          <legend>教师信息</legend>
          <div class="form-group">
          <label for="exampleSelect1" class="form-label mt-4">教师工号：</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"placeholder=""  name="TeaNo" value="<?php echo $row['TeaNo']?>"/>

          <label for="exampleSelect1" class="form-label mt-4">教师姓名：</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"placeholder="" name="TeaName" value="<?php echo $row['TeaName']?>" />

		<label for="exampleSelect1" class="form-label mt-4">重置密码：</label>
          <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"placeholder="" name="Pwd"  />
		  
          <label for="exampleSelect1" class="form-label mt-4">所属学院：</label>
			<select id="exampleSelect1" name="DepartNo">
			<option value="">==请选择学院==</option>
			<option value="01">数学与信息科学学院</option>
			<option value="02">外国语学院</option>
			<option value="03">土木建筑学院</option>
			<option value="04">计算机学院</option>
			<option value="05">电气与工程学院</option>
			<option value="06">化学与材料学院</option>
			<option value="07">经济与统计学院</option>
			<option value="08">汉语文学学院</option>
			<option value="09">体育学院</option>
			
			</select>
			</br>

          <div class="form-group set-center">
          <button type="submit" name="B1" id="button" class="btn btn-primary set-padding">确定</button>
          <button type="reset" name="B2" id="button" class="btn btn-primary set-padding">重置</button>
        </div>
          </div>
         </div>
        </fieldset>
    </form>
 </div>
</div>
<?php include("../footer.php"); ?>  
</body>
</html>