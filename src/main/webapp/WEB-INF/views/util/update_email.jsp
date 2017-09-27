<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file = "../constants/db.jsp"%>

	<script>
alert('이메일 수정 완료');
location.herf="<%=request.getContextPath()%>"/index.jsp;
	</script>

	<script>
alert('이메일 수정 실패');
location.herf="<%=request.getContextPath()%>"/index.jsp;
</script>

