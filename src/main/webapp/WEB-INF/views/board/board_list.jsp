<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<br />
<body>

		<header>
			<h1 id=title>리스트</h1>
		</header>
		<hr />
		<table id="board_tab" border=1>
			<tr class="backcolor-yellow">
				<th style="width: 5%;">No</th>
				<th style="width: 20%;">제목</th>
				<th style="width: 30%;">내용</th>
				<th style="width: 5%;">글쓴이</th>
				<th style="width: 10%;">등록일</th>
				<th style="width: 5%;">조회수</th>
			</tr>
			<tr style="width: 10%;">
				<td class="border-black"></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			
		</table>
		<br />
		<%@ include file="../common/footer.jsp" %>