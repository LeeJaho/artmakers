<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/login.css" type="text/css" rel="stylesheet"/>

	<main class="main">
		<section class="container">
			<div class="inner">
				<h1>회원가입</h1>
				<div class="inner-regist">
				 	<form action="${root}/member/join" method="post" enctype="multipart/form-data">
					 	<ul>
					 		<li>
					 			<label class="input-label">이메일(아이디)</label>
					 			<p><input class="input-box" type="text" name="id" placeholder="이메일"/></p>
					 		</li>
					 		
					 		<li>
					 			<label class="input-label">닉네임</label>
					 			<p><input class="input-box" type="text" name="nickname" placeholder="닉네임"/></p>
					 		</li>
					 		
					 		<li>
					 			<label class="input-label">비밀번호</label>
					 			<p><input class="input-box" type="password" name="pwd" placeholder="비밀번호"/></p>
					 			<p><input class="input-box" type="password" name="pwd" placeholder="비밀번호 재입력"/></p>
					 		</li>
					 		
					 		<li>
					 			<label class="input-label">프로필 사진</label>
					 			<div class="photo-input">
						 			<p><input class="input-box" type="file" name="file"/></p>
						 			<div class="join-profile"></div>
					 			</div>
					 		</li>
					 		
					 		<li>
					 			<p><input class="submit-button" type="submit" value="가입"/></p>
					 		</li>
					 		
					 	</ul>
				 	</form>
				</div>
			</div>
		</section>
	</main>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		$(function(){
		    
		    var okButton = $("#ex1 .btn-default");
		    okButton.val("호호호");
		});
	
	</script>
