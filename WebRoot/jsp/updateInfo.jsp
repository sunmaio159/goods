<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>修改信息</title>

	<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" >
	<link rel="stylesheet" href="../css/animate.css" type="text/css" >
	<link rel="stylesheet" href="../css/style1.css" type="text/css" >

	<!-- Modernizr JS -->
	<script src="../js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body class="style-2">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<form id="update" class="fh5co-form animate-box" data-animate-effect="fadeInLeft" method="post"  >
						<h2>修改个人信息</h2>
						<div class="form-group">
							<span style="color:red">${requestScope.msg}</span>
							<input id="id" name="id" type="hidden" value="${user.id}">
							<label for="name" class="sr-only">用户名</label>
							<div class="alert alert-success" role="alert"><span>用户名长度为4～18个字符 *只能以字母开头，包含字符 数字 下划线</span></div>
							<input type="text" class="form-control" id="userid" name="userid" placeholder="用户名" value="${user.userid}" autocomplete="off" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="name" class="sr-only">单位名称</label>
							<input type="text" class="form-control" id="danwei" name="danwei" placeholder="单位名称" value="${user.danwei}" autocomplete="off" required>
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="userpass" name="userpass" placeholder="密码" autocomplete="off" required></input>
						</div>
						<div class="form-group">
							<label for="re-password" class="sr-only">密码确认</label>
							<input type="password" class="form-control" id="password" placeholder="密码确认" autocomplete="off" required>
						</div>
						<div class="form-group">
							<input type="button" value="修改信息" class="btn btn-primary" onclick="check(this.form)"/>
						</div>
					</form>
				</div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="../js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="../js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="../js/main.js"></script>

	</body>
</html>
<script>
function check(form){
	 var pass = form.password.value;
	 var pass2 = form.userpass.value;
	 var userid = form.userid.value;
	 var patten = /^[a-zA-Z]\w{3,15}$/ig;
	 if(!patten.test(userid)){
		 alert('用户名输入不合法！');
		 return false;
	 }
	 if(pass!=pass2){
		 alert("两次输入密码不一致");
		 return false;
	 }else{
		 form.action="/goods/user/update.htm";
		 form.submit();
		 return true; 
	 }	 
}
</script>
