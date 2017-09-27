<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div id="container">
<div class="row">
  <div class="col-lg-6" style="width: 500px; margin 0 auto;">
    <div class="input-group" style="margin:0 auto">
      <input type="text" id="searchName" name="searchName" class="form-control" placeholder="Search">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" onclick="app.controller.searchStudent()">Go!</button>
      </span>
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
</div><!-- /.row -->
<div style="height: 40px; width:300px;">
 회원수 : ${count}
</div>
<table id="member_list_tab" >
		<tr>
		<th style="width: 5%;">NO</th>
		<th style="width: 10%;">아이디</th>
		<th style="width: 10%;">이름</th>
		<th style="width: 10%;">생년월일</th>
		<th style="width: 15%;">이메일</th>
		<th style="width: 15%;">수강과목</th>
		<th style="width: 10%;">등록일</th>
		<th style="width: 10%;">전화번호</th>
		<th style="width: 10%;">수정/삭제</th>
		</tr>
		
		<c:forEach var="i" items="${list}">
		<tr>
		<td><fmt:formatNumber value="${i.num}" pattern="."></fmt:formatNumber></td>
		<td>${i.id}</td>
		<td ><a onclick="app.controller.detailStudent('${i.id}')" >${i.name}</a></td>
		<td >${i.ssn }</td>
		<td >${i.email}</td>
		<td >${i.subjects}</td>
		<td >${i.regdate }</td>
		<td >${i.phone }</td>
		<td>
		<a onclick="app.controller.updateStudent()" >수정</a>
		/
		<a onclick="app.controller.deleteStudent('${i.id}')">삭제</a>
		</td>
		</tr>
		</c:forEach>
		</table>
		<nav aria-label="Page navigation" style="width: 500px; margin: 0 auto;">
	  <ul class="pagination">
	   
	   <c:if test="${prevBlock gt 0}">
	        <li><a onclick="app.member.list('1')">
	     <span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span>
	     </a>
	     </li>
	    	    <li>
	      <a onclick="app.member.list('${startPage-1}')" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    </c:if>
	    
	    <c:forEach varStatus="i" begin="${startPage}" end="${endPage}" step="1">
	        <c:choose  >
        
         <c:when  test="${i.index eq pageNumber}">
         <li  class="active"><a href="#">${i.index}</a></li>
     	 </c:when>
        
            <c:otherwise>
          <li ><a onclick="app.member.list('${i.index}')" >${i.index}</a></li>
     		</c:otherwise>
              </c:choose>
	    
	      </c:forEach>
		<c:if test="${nextBlock le theNumberOfPages}">
	    <li><a onclick="app.member.list('${endPage+1}')"  aria-label="Next">
	      <span aria-hidden="true">&raquo;</span>
	      </a>
	     </li>
	      <li><a onclick="app.member.list('${theNumberOfPages}')">
	       <span class="glyphicon glyphicon-step-forward" aria-hidden="true"></span>
	       </a></li>
	  </c:if>
	  </ul>
	</nav>
</div>

