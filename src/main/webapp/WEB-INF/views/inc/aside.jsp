<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로를 쓰기 위해서 -> 왜 절대경로를 써? -->
<c:set var="root" value="${pageContext.request.contextPath }" />
<nav class="aside">
	<h1></h1>
	
	<div class=aside-box>
		
		<div class="profile-wrap">	
			<div class="profile-pic">
				
			</div>
			<div class="profile-name">
				트깔
			</div>
		</div>
		
		<div class="aside-button home-wrap">
			데이메이커스 홈
		</div>
		<div class="aside-button feed-wrap">
			피드
		</div>
		<div class="aside-button myday-wrap">
			내 Day
		</div>
		
		<div class="aside-button mycollection-wrap">
			내 collection
		</div>
		
		
		
		<div class="login-wrap">
			<div class="aside-button login-box">
				<div>
					<a href="${root}/member/login">로그인</a>
				</div>
				<div class="hidden">
					<a href="${root}/logout">로그아웃</a>
				</div>
	
				<div>
					<a href="${root}/member/join">회원가입</a>
				</div>
			</div>
	
		</div>
	</div>
</nav>