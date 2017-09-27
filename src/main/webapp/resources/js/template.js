var introUI={
	
	login : i=>{
		return '<div id="container">'
		+'<div id="login_box">'
		+	'<img src="'+i+'/zootopia.jpg" alt="" /><br />'
		+	'<span id="login_id">ID</span>'
		+	'<input id="login_input" type="text"  /> <br />'
		+	'<span id="login_pass">PASSWORD</span> '
		+	'<input type="text" /> <br />'
		+'</div>'
	+'</div>';
	},
	navbar : ()=>{
		return'<nav class="navbar navbar-inverse">'
		+'  <div class="container-fluid">'
		+'    <div class="navbar-header">'
		+'      <a class="navbar-brand" href="#">GMS</a>'
		+'    </div>'
		+'    <ul class="nav navbar-nav">'
		+'      <li class="active"><a ><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>'
		+'      <li class="dropdown">'
		+'        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">회원관리 <span class="caret"></span></a>'
		+'          <ul id="navbar_ul_stu" class="dropdown-menu">'
		+'            <li><a>학생추가</a></li>'
		+'            <li><a>학생목록</a></li>'
		+'            <li><a>학생조회</a></li>'
		+'            <li></li>'
		+'            <li><a>학생삭제</a></li>'
		+'          </ul>'
		+'        </li>'
		+'      <li class="dropdown">'
		+'          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">성적관리 <span class="caret"></span></a>'
		+'          <ul id="navbar_ul_grade" class="dropdown-menu">'
		+'            <li><a>성적추가</a></li>'
		+'            <li><a>성적목록</a></li>'
		+'            <li><a>성적조회</a></li>'
		+'            <li></li>'
		+'            <li><a>성적삭제</a></li>'
		+'          </ul>'
		+'        </li>'
		+'      <li class="dropdown">'
		+'          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">게시판관리 <span class="caret"></span></a>'
		+'          <ul id="navbar_ul_board" class="dropdown-menu">'
		+'           <li><a>게시글추가</a></li>'
		+'            <li><a>게시글목록</a></li>'
		+'            <li><a>게시글조회</a></li>'
		+'            <li></li>'
		+'            <li><a>게시글삭제</a></li>'
		+'          </ul>'
		+'        </li>'
		+'      <li class="dropdown">'
		+'          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">수 열 <span class="caret"></span></a>'
		+'          <ul id="navbar_ul_board" class="dropdown-menu">'
		+'           <li><a id="arithBtn">등차수열</a></li>'
		+'            <li><a id="switchBtn">스위치수열</a></li>'
		+'            <li><a id="differBtn">계차수열</a></li>'
		+'            <li><a id="facBtn">팩토리얼</a></li>'
		+'            <li><a id="fiboBtn">피보나치</a></li>'
		+'          </ul>'
		+'        </li>'
		+'      <li class="dropdown">'
		+'          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">배 열 <span class="caret"></span></a>'
		+'          <ul id="navbar_ul_board" class="dropdown-menu">'
		+'           <li><a id="selBtn">선택 정렬</a></li>'
		+'            <li><a id="bubbleBtn">버블 정렬</a></li>'
		+'            <li><a id="insertBtn">삽입 정렬</a></li>'
		+'            <li><a id="rankBtn">석차</a></li>'
		+'            <li><a id="binSearchBtn">이분검색</a></li>'
		+'            <li><a id="mergeBtn">병합</a></li>'
		+'            <li><a id="stackBtn">스택</a></li>'
		+'          </ul>'
		+'        </li>'
		+'      <li class="dropdown">'
		+'          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">행 렬 <span class="caret"></span></a>'
		+'          <ul id="navbar_ul_board" class="dropdown-menu">'
		+'           <li><a id="five">기본 5열</a></li>'
		+'            <li><a id="rightTri">직각삼각형</a></li>'
		+'            <li><a id="zigzag">지그재그</a></li>'
		+'            <li><a id="diamond">다이아몬드</a></li>'
		+'            <li><a id="sandglass">모래시계</a></li>'
		+'            <li><a id="beanTri">오른쪽 빈 삼각형</a></li>'
		+'            <li><a id="twosameTri">이등변 삼각형</a></li>'
		+'            <li><a id="roatate90">90도 회전</a></li>'
		+'            <li><a id="snail">달팽이</a></li>'
		+'            <li><a id="diagonal ">대각선채우기</a></li>'
		+'            <li><a id="magicSquare">마방진</a></li>'
		+'            <li><a id="matrixChange">행렬변환</a></li>'
		+'          </ul>'
		+'        </li>'
		+'    </ul>'
		+'    <span class="float-right">${user.name} &nbsp;'
		+'    	<a id="logout" >로그아웃</a></span>'
		+'  </div>'
		+'</nav>';
	}
};
var compUI={
	    br    :()=>{return $('<br/>');},
	      div   : x=>{return $('<div/>',{id:x});},
	      h1    : x=>{return $('<h1/>',{id:x});},
	      span  : x=>{return $('<span/>',{id:x});},
	      iTxt  : x=>{return $('<input/>',{id:x,type:'text'});},
	      aBtn  : x=>{return $('<a>',{href:'#', role: 'button', id:x});},
	      iBtn  : x=>{return $('<input/>',{id:x,type:'button'});},
	      image : (x,y)=>{return $('<img/>',{id:x,src:y});},
	      input : (x,y)=>{return $('<input/>',{id:x,type:y});},
	      table : x=>{return $('<table/>',{id:x , class:'table'});},
	      thead : x=>{return $('<thead/>',{id:x})},
	      tbody : x=>{return $('<tbody/>',{id:x})},
	      tr : x=>{return $('<tr/>',{id:x})},
	      th : ()=>{return $('<th/>')},
	      td : ()=>{return $('<td/>')},
	      idTag : (x)=>{return $('<'+x+'/>')},
	      tag : (x,y)=> {return $('<'+x+'/>')
	         id:y
	      }
	
};
var bbsUI={
	   search :()=>{
	         return '<div style="width:100%; margin: 30px auto;">'
	            +'<div id="board" style="width:80%;margin:0 auto;">'
	            +'<div id="search-box" style="width:100%;margin:0 auto;text-align:center;">'
	            +'<select id="search-opt" name="searchOpt" class="form-control" style="width:15%; display:inline-block; margin-right:20px">'
	            +'<option value="writer">작성자</option>'
	            +'<option value="title">제목</option>'
	            +'</select>'
	            +'<input id="search-txt" type="text" class="form-control" style="width:60%; display:inline-block;  margin-right:20px;" name="searchTxt" placeholder="작성자 또는 제목을  검색 ++">'
	            +'<input class="btn btn-primary" style="width:15%" name="search" type="submit"  value="검색!"/>'
	            +'<input type="hidden" name="action" value="search"/>'
	            +'<input type="hidden" name="pageName" value="list" />'
	            +'<input type="hidden" name="pageNumber" value="1" />'
	            +'</div>'
	            +'<div style="width: 90%; margin: 50px auto 20px auto;">'
	            +'<span id="total" style="font-size: 20px;"> 총 게시글 수: </span>'
	            +'<input id="writeBtn" class="btn btn-warning" style="float:right" name="search" type="submit"  value="글쓰기!"/>'
	            +'</div>'
	      },
		tbl : ()=>{
	         var tbl='<table id="board_tab" border=1>'
	         +' 			<thead><tr style="height: 25px;">';
	         var a=[{width: '5%', txt: 'No'},
	        	 {width: '20%', txt: '제목'},
	        	 {width: '30%', txt: '내용'},
	        	 {width: '5%', txt: '글쓴이'},
	        	 {width: '10%', txt: '등록일'},
	        	 {width: '5%', txt: '조회수'}]
	         $.each(a,(i,j)=>{
	        	 tbl+='<th style="width:'+j.width
	        	 +'; text-align: center;">'+j.txt+'</th>'
	         });
	        	 tbl+='</tr></thead><tbody id="tbody">';
	        	 tbl+='</tbody></table></div>'
	        	 return tbl;
	      },
	      pagination : ()=>{
	    	  return 		'<nav aria-label="Page navigation" style="width: 500px; margin: 0 auto;">'
	    	  +' <ul class="pagination">'
	    	  +' 	  <li><a >'
	    	  +' 	     <span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span>'
	    	  +' 	     </a>'
	    	  +' 	  </li>'
	    	  +' 	  <li> <a aria-label="Previous">'
	    	  +' 	     <span aria-hidden="true">&laquo;</span>'
	    	  +' 	     </a>'
	    	  +' 	  </li>'
	    	  +'      <li  class="active"><a href="#">1</a></li>'			           
	    	  +'      <li ><a >2</a></li>'
	    	  +'      <li ><a >3</a></li>'
	    	  +'      <li ><a >4</a></li>'
	    	  +'      <li ><a >5</a></li>'
	    	  +' 	  <li><a aria-label="Next">'
	    	  +' 	  	 <span aria-hidden="true">&raquo;</span>'
	    	  +' 	  	 </a>'
	    	  +' 	  </li>'
	    	  +' 	  <li><a >'
	    	  +' 	      <span class="glyphicon glyphicon-step-forward" aria-hidden="true"></span>'
	    	  +' 	      </a></li>'
	    	  +' </ul>'
	    	  +'</nav>'
	      },
	      detail : ()=>{
	    	  return '<div class="page-header">'
	    	  +'	<h1 style="display:inline; margin-left:50px">게시판</h1>'
	    	  +'		<a style="font-size:largel;">목록가기</a>'
	    	  +'</div>'
	    	  +'<div class="container">'
	    	  +'	<div class="row">'
	    	  +'		<div class="col-md-12">'
	    	  +'			<div class="well well-sm">'
	    	  +'				<form class="form-horizontal" method="post">'
	    	  +'					<fieldset>'
	    	  +'						<legend id="legend" class="text-center header">게시글쓰기</legend>'
	    	  +'						<div class="form-group">'
	    	  +'							<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>'
	    	  +'							<div class="col-md-12">'
	    	  +'								<input id="fname" name="title" type="text" placeholder="제 목" class="form-control"/>'
	    	  +'							</div>'
	    	  +'						</div>		'
	    	  +'						<div class="form-group">'
	    	  +'							<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>'
	    	  +'							<div class="col-md-12">'
	    	  +'								<input id="lname" name="name" type="text" placeholder="글쓴이" class="form-control"/>'
	    	  +'							</div>'
	    	  +'						</div>	'
	    	  +'						<div class="form-group">'
	    	  +'							<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>'
	    	  +'							<div class="col-md-12">'
	    	  +'								<input id="regdate" name="regdate" type="text" class="form-control"/>'
	    	  +'							</div>'
	    	  +'						</div>	'
	    	  +'						<div class="form-group">'
	    	  +'							<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>'
	    	  +'							<div class="col-md-12">'
	    	  +'								<textarea class="form-control" id="message" name="message" rows="10"></textarea>'
	    	  +'							</div>'
	    	  +'						</div>'
	    	  +'						<div class="form-group">'
	    	  +'							<div class="col-md-12 text-center">'
	    	  +'								<button id="submitBtn" type="submit" style="width:200px" class="btn btn-primary btn-lg">확 인</button>'
	    	  +'								<button id="cancelBtn" type="reset" style="width:200px" class="btn btn-danger btn-lg">취 소</button>'
	    	  +'							</div>'
	    	  +'						</div>'
	    	  +'					</fieldset>'
	    	  +'				</form>'
	    	  +'			</div>'
	    	  +'		</div>'
	    	  +'	</div>'
	    	  +'</div>'	   
	    	  +'<div class="modal fade alert" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">'
	    	  +'<div class="modal-dialog">'
	    	  +'<div class="modal-content">'
	    	  +'<div class="modal-header">'	  
	    	  +'<button type="button" class="close" data-dismiss="modal">'
	    	  +'<span aria-hidden="true">x</span>'
	    	  +'<span class="sr-only">Close</span></button>'
	    	  +'<h3 class="modal=title" id="modalLabel">정말 삭제하시겠습니까?</h3>'
	    	  +'</div>'
	    	  +'<div class="modal-body">'
	    	  +'<form>'
	    	  +'<div class="form-group">'
	    	  +'<label for="inputPass">Password</label>'
	    	  +'<input type="password" class="form-control" id="uder-email2" placeholder="Enter Password">'
	    	  +'</div>'
	    	  +'<button type="submit" style="width:200px" class="btn btn-primary center-block">확 인</button>'
	    	  +'</form>'
	    	  +'</div>'
	    	  +'</div>'
	    	  +'</div>'
	    	  +'</div>'
	      }
	}
var algoUI={
	series : ()=>{
		return '<div id="content">'
			+'<h1>시작값부터 끝값까지 등차수열의 합</h1>'
			+'<span id="start_txt">시작값: &nbsp;&nbsp;</span>'
			+'<br/><span id="end_txt">끝   값:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br/>'
			+'<div id="result"></div>';
	},	
	sort : ()=>{
		return '<div id="content">'
		+'<h1>selection 배열</h1>'
		+'<span id="start_txt">값: &nbsp;&nbsp;</span>'
		+'<div id="add"></div>'
		+'<div id="result"></div>';
	}
}
var pageUI={
		paging:()=>{
			return '<nav aria-label="Page navigation">'
			+'  <ul class="pagination">'
			+'    <li>'
			+'      <a href="#" aria-label="Previous">'
			+'        <span aria-hidden="true">&laquo;</span>'
			+'      </a>'
			+'    </li>'
			+'    <li><a href="#">1</a></li>'
			+'    <li><a href="#">2</a></li>'
			+'    <li><a href="#">3</a></li>'
			+'    <li><a href="#">4</a></li>'
			+'    <li><a href="#">5</a></li>'
			+'    <li>'
			+'      <a href="#" aria-label="Next">'
			+'        <span aria-hidden="true">&raquo;</span>'
			+'      </a>'
			+'    </li>'
			+'  </ul>'
			+'</nav>'
		}
}


;