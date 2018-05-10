<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/login.css" type="text/css" rel="stylesheet"/>

	<main class="main">
		<section class="container">
			<div class="inner">
				<h1>로그인</h1>
				<div class="inner-regist">
					<form method="post">
					
						<p><input class="input-box" type="text" name="username" placeholder="아이디"/></p>
						<p><input class="input-box" type="text" name="password" placeholder="비밀번호"/></p>
						<p><input class="submit-button" type="submit" value="로그인"> </p>
					</form>
				</div>
				
			</div>
		</section>
	</main>

