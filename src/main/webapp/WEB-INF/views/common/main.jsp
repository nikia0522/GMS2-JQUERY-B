<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  

<div class="container">
		<div class="row">
		      <div class="jumbotron text-center">
         <h1>Grade Management System</h1>
      </div>

		<div class="col-sm-4">
		<h3>학생관리</h3>
		 <ul id="main_ul_stu" >
            <li><a>학생정보 추가</a></li>
            <li><a>학생정보 목록</a></li>
            <li><a>학생정보 검색</a></li>
            <li><a>학생정보 수정</a></li>
            <li><a>학생정보 삭제</a></li>
            </ul>
	    </div>
		
		<div class="col-sm-4">
		 	<h3>성적관리</h3>
		 	 <ul id="main_ul_grade">
	               <li ><a>성적 입력</a></li>
	               <li><a>성적 목록</a></li>
	               <li ><a>성적 상세</a></li>
	               <li ><a >성적 수정</a></li>
	               <li ><a >성적 삭제</a></li>
	            </ul>   
		</div>
		<div class="col-sm-4">
	    <h3>게시글 관리</h3>
	     <ul id="main_ul_board">
	               <li><a>게시글쓰기</a></li>
	               <li ><a >게시글목록</a></li>
	               <li><a >게시글수정</a></li>
	              <li ><a >게시글삭제</a></li>
	            </ul>
		</div>
		</div>
	</div>
<script>
app.main.init();
</script>
