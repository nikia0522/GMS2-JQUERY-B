<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<body>
		<header>
			<h1 id="title">학생 관리 </h1>
		</header>
		<div id="container">
	
		<form id="Login-box" name="Login-box" method="get">
			<img id="login_img" src="${path.img}/보.jpg" alt=""/><br />
			<span id="login_id">ID</span>
			<input type="text" id="input_id" name="id" value="2" /><br />
			<mark>ID는 숫자 포함 8자리 이내</mark><br />
			
			<span id="login_pass">PASSWORD</span>
			<input name="password" id="input_pass"	type="password" value="2" /><br />
			<input id="loginBtn" type="submit" value="login" />	
			<input type="reset" value="cancel" />	
			<div><h4 style="font_size:20px;color:red;">${result}</h4></div>
		</form>
		</div>
		<script>
			app.auth.init();
			</script>
			</body>
			</html>
