<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

		<hr />
		<div id="container">
			<form id="join_form">
				<fieldset>
					<legend>Personal information</legend>
					
					<span >ID</span> 
					<input name="id" id="join_id" type="text" placeholder="아이디" /><br /> 
					
					<span >PASSWORD</span> 
					<input name="password" id="join_pass" type="password" placeholder="비밀번호" /><br /> 
					
					<span >NAME</span> 
					<input name="name" id="join_name" type="text" value="정약용"	placeholder="이름" /><br />
					
					<span>SSN</span> 
					<input name="ssn" id="join_ssn" type="text" placeholder="ssn" /><br />
					
					<span >Phone</span> 
					<input name="phone" id="join_phone" type="text" placeholder="전화번호" /><br />
					<p></p>
					<input type="radio" name="gender" value="male" checked/>Male
					<input type="radio" name="gender" value="female">Female <br />
					E-mail<input type="email" name="email" value="jyy@text.com"/> <br />
					<h3>전 공</h3>
					<select name="major_id">
						<option value="computer">컴퓨터공학</option>
						<option value="economics" selected>경제학</option>
						<option value="tourism">관광학</option>
						<option value="art">미술학</option>
					</select><br />
					<h3>수강과목</h3>
					<input type="checkbox" name="subject" value="java" checked />자바<br />
					<input type="checkbox" name="subject" value="c" />c <br /> <input
						type="checkbox" name="subject" value="html" />html<br /> <input
						type="checkbox" name="subject" value="sql" />sql<br /> <input
						type="checkbox" name="subject" value="javascript" />javascript<br />
					<input type="checkbox" name="subject" value="python" />python<br />

					<button id="join_yes_btn" type="submit" >회원가입</button>
					<button id="join_no_btn" type="reset" >취소</button>
				</fieldset>
			</form>
		</div>
		<script>
		app.member.init();
		</script>