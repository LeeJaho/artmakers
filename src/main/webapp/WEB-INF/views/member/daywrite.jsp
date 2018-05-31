<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <c:set var="root" value="${pageContext.request.contextPath }" /> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- include libraries(jQuery, bootstrap) -->

<c:set var="root" value="${pageContext.request.contextPath }" />
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

<main class="main">
	<div>
		<form action="${root}/member/daywrite" method="post" enctype="multipart/form-data">
		  <p class="write-content-wrapper">
		  	
		  	<select name="folderName">
		  		<option selected>--폴더선택--</option>
		  		<c:forEach var="dayfolders" items="${dayfolders}">
			  		<option>${dayfolders.title}</option>
		  		</c:forEach>
		  	</select>
		  	<label>Day</label>
		  	<input name="day"/>
		  </p>
		  <p class="write-content-wrapper">
		 	 <input class="title-write-box" type="text" name="title" placeholder="제목"/>
		  </p>
		  	<textarea id="summernote" name="content"></textarea>
		  <p class="write-content-wrapper"><input class="submit-button" type="submit" value="등록"> </p>	
		</form>
	</div>
</main>

<script>

   $('#summernote').summernote({
      tabsize : 2,
      height : 400,
      minHeight : null,
      maxHeight : null,
      focus : true,   
      lang : 'ko-KR' // 기본 메뉴언어 US->KR로 변경
   });
   
     $(document).ready(function() {
         $('#summernote').summernote({
            lang : 'ko-KR',
            height : 300,
            fontNames: ['fontA',  'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
            fontNamesIgnoreCheck: ['fontA']
         });
      }); 
</script>
