<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로를 쓰기 위해서 -> 왜 절대경로를 써? -->
<c:set var="ctx" value="${pageContext.request.contextPath }" />
	<header class="header">
		<h1>책 제목</h1>
		<nav class="main-menu">
			<h1 class="hidden">메인메뉴</h1>
				<ul>
					<li><a href=""><img src ="${ctx}/resources/images/ic_dehaze_black_24dp_1x.png"/></a></li>
					<li><a href=""><img src ="${ctx}/resources/images/daymakers_logo.png"/></a></li>
					<li><a href=""><img src ="${ctx}/resources/images/ic_search_black_24dp_1x.png"/></a></li>
				</ul>
		</nav>
	</header>