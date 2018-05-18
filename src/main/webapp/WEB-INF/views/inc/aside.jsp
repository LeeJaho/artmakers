<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로를 쓰기 위해서 -> 왜 절대경로를 써? -->
<c:set var="root" value="${pageContext.request.contextPath }" />
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="aside">
	<h1></h1>
	
	<div class=aside-box>
		
		<!-- authenticated 인증되었을 때-->
		<sec:authorize access="isAuthenticated()">
			<div class="profile-wrap">	
				<div class="profile-pic">
					<c:if test="${member.photo == ''} ">
						<img src="${root}/resources/images/comment-profile.png"/>
					</c:if>
					
					<c:if test="${member.photo != null} ">
						<img src="${root}${member.photo}" />
					</c:if>
				</div>
				<div class="profile-name">
					<span>${member.nickname}</span>
				</div>
			</div>
		</sec:authorize>
		
		<!-- not authenticated -->
		<sec:authorize access="!isAuthenticated()">
			<div class="profile-wrap">	
				<p>로그인 정보가 필요합니다.</p>
			</div>
		</sec:authorize>
		
		<div class="aside-button home-wrap">
			<a href="${root}/home/index">
				데이메이커스 홈
			</a>
		</div>
		
		
		<div class="aside-button feed-wrap">
			<a href="${root}/member/note/list">
				피드
			</a>
		</div>
		
		
		
		<div class="aside-button myday-wrap">
				<a href="${root}/member/collection/myday">
					내 Day
				</a>
		</div>
		
		
		<div class="aside-button mycollection-wrap">
				<a href="">
				내 collection
				</a>
		</div>
		
		<!-- not authenticated -->
		<sec:authorize access="!isAuthenticated()">
			<div class="login-wrap">
				<div class="aside-button login-box">
					<div class="login">
						<a href="${root}/member/login">로그인</a>
					</div>
		
					<div class="regist">
						<a href="${root}/member/join">회원가입</a>
					</div>
				</div>
			</div>
		</sec:authorize>
		
		<!-- authenticated 인증되었을 때-->
		<sec:authorize access="isAuthenticated()">
			<div class="login-wrap">
					<div class="aside-button">
						<a href="${root}/logout">로그아웃</a>
					</div>
			</div>
		</sec:authorize>
	</div>
</nav>