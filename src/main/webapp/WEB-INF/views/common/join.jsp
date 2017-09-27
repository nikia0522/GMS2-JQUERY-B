<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

		<hr />
		<div id="container">
			<form id="join_form" action="${ctx}/member/service_add.jsp" method="get">
				<fieldset>
					<div><h4 style="font_size:20px;color:red;">${result}</h4></div>
					<span id="join_id">ID</span> 
					<input name="id" type="text" placeholder="아이디" /><br /> 
					<span id="join_pass">PASSWORD</span> 
					<input name="password" type="password" placeholder="비밀번호" /><br /> 
					<span id="join_name">NAME</span> 
					<input name="name" type="text" 	placeholder="이름" /><br />
					<span id="join_ssn">SSN</span> 
					<input name="ssn" type="text" placeholder="ssn" /><br />
					<span id="join_phone">Phone</span> 
					<input name="phone" type="text" placeholder="전화번호" /><br />
					<p></p>
					<input type="radio" name="gender" value="male" checked>Male
					<input type="radio" name="gender" value="female">Female <br />
					E-mail<input type="email" name="email" /> <br />
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
					<p></p>
					<input id="join_yes_btn" type="submit" value="회원가입">
					<input id="join_no_btn" type="reset" value="취소">
				</fieldset>
			</form>
		</div>
