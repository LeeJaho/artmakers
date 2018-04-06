<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로를 쓰기 위해서 -> 왜 절대경로를 써? -->
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<nav class="aside">
	<h1></h1>
	
	<div class="aside-box">

		<div class="log-box">
			<div>
				<a href="${root}/member/login">로그인</a>
			</div>
			<div>
				<a href="${root}/logout">로그아웃</a>
			</div>

			<div>
				<a href="${root}/member/join">회원가입</a>
			</div>
		</div>

	</div>

</nav>