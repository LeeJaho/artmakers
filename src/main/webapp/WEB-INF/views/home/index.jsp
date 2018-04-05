<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<%-- <link href = "${ctx}/resources/CSS/style.css" type="text/css" rel="stylesheet"/> --%>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,  user-scalable=1"/>

	<main class="main">
		<section class="note-list">
			<h1 class="hidden">메인</h1>
			<div class="main-visual">visual</div>
			<ul class="main-content">
				<c:forEach begin="0" end ="20">
					<li>
						
							<div class="main-item">Day7</div>
							<div>
								수제책상만들기
							</div>
					
					</li>
				</c:forEach>
			</ul>
		</section>
	</main>
