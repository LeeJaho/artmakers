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
				 	<form action="${root}/join" method="post">
					 	<ul>
					 		<li>
					 			<label class="input-label">이메일(아이디)</label>
					 			<p><input class="input-box" type="text" name="username" placeholder="이메일"/></p>
					 		</li>
					 		
					 		<li>
					 			<label class="input-label">닉네임</label>
					 			<p><input class="input-box" type="text" name="nickname" placeholder="닉네임"/></p>
					 		</li>
					 		
					 		<li>
					 			<label class="input-label">비밀번호</label>
					 			<p><input class="input-box" type="text" name="password" placeholder="비밀번호"/></p>
					 		</li>
					 		
					 		<li>
					 			<label class="input-label">비밀번호 확인</label>
					 			<p><input class="input-box" type="text" name="password" placeholder="비밀번호 재입력"/></p>
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
