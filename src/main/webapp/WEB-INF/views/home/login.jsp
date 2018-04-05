<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/login.css" type="text/css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,  user-scalable=1"/>

	<main class="main">
		
		<section class="container">
			<div class="inner">
				<h1>로그인</h1>
				<div class="inner-login">
					<form action="${root}/login" method="post">
					
						<p><input class="input-box" type="text" name="username" placeholder="ID"/></p>
						<p><input class="input-box" type="text" name="password" placeholder="Password"/></p>
						<div class="login-button"><input name="login" type="submit" value="로그인"> </div>
					</form>
				</div>
				
				<div class="inner-regist">
				 	회원가입창
				</div>
			</div>
		</section>
	</main>
