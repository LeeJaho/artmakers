<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link href = "${ctx}/resources/CSS/style.css" type="text/css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,  user-scalable=1"/>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,  user-scalable=1"/> -->

<!-- <link href = "resources/CSS/style.css" type="text/css" rel="stylesheet"/> -->
<!-- <title>Insert title here</title>
</head>

<body> -->
 <!-- <header class="header">
		<h1>책 제목</h1>
		<nav class="main-menu">
			<h1 class="hidden">메인메뉴</h1>
				<ul>
					<li><a href=""><img src ="resources/images/ic_dehaze_black_24dp_1x.png"/></a></li>
					<li><a href=""><img src ="resources/images/ic_search_black_24dp_1x.png"/></a></li>
					<li></li>
				</ul>
		</nav>
	</header> -->
	
	<main class="main">
		<section class="note-list">
			<h1 class="hidden">노트목록</h1>
			<ul class="">
				<c:forEach begin="0" end ="9">
					<li>
						<div>노트 제목</div>
						<div>
						</div>
						<div><span>분류</span> <span>2018-03-22 15:23</span></div>
					</li>
				</c:forEach>
			</ul>
		</section>
	</main>
<!-- </body>
</html> -->