<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../bootstrap/bootstrap.css" />
	<link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.css" />
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="stylesheet" href="../css/footer.css" />
	<script type="text/javascript" src="./bootstrap/js/bootstrap.js"></script>
<title>查看成绩</title>
</head>

<body>

<div class="header">
			<?php include("header.php"); ?>
			<hr>
		</div>
    <?php
session_start();
if(!isset($_SESSION['username']))
{
	header("Location:../login.php");
	exit();
}
include("../conn/db_conn.php");
include("../conn/db_func.php");
$StuNo=$_SESSION['username'];
$sql="select * from course,score where course.CouNo=score.CouNo and StuNo='$StuNo' ";
$result=db_query($sql);
?>
    <div class="contain-wrap">
			<div class="myTable">
<table class="table table-hover" width="610" border="0" align="center" cellpadding="0" cellspacing="1">
					<thead>
						<tr class="table-primary" bgcolor="#0066CC">
							<th width="80" align="center">
								<font color="#FFFFFF">课程编码</font>
							</th>
							<th width="220" align="center">
								<font color="#FFFFFF">课程名称</font>
							</th>
							<th width="80">
								<font color="#FFFFFF" align="center">课程类型</font>
							</th>
							<th width="50">
								<font color="#FFFFFF" align="center">学分</font>
							</th>
							<th width="80">
								<font color="#FFFFFF" align="center">任课教师</font>
							</th>
							<th width="100">
								<font color="#FFFFFF" align="center">成绩</font>
							</th>
						</tr>
					</thead>
  <?php
	$number=db_num_rows($result);
	for($i=0;$i<$number;$i++)
	{
		$row=db_fetch_array($result);
		
			if($i%2==0)
			echo "<tr bgcolor='#dddddd'>";
			else
			 echo "<tr>";
			 echo "<td width='80'><a href='CourseDetail.php?CouNo=".$row['CouNo']."'>".$row['CouNo']."</a></td>";
 ?>       
    <td width="108" align="center"><?php echo $row['CouName'] ?></td>
    <td width="127"><?php echo $row['Kind']  ?></td>
    <td width="105"><?php echo $row['Credit']  ?></td>
    <td width="56"><?php echo $row['Teacher'] ?></td>
    <td width="83"><?php echo $row['score']  ?></td>
    </tr>
    
<?php		
}
?>
</table>
</div>
</div>
<hr>

<div class="footer">
<?php include("../footer.php"); ?>   
</div>

</body>
</html>