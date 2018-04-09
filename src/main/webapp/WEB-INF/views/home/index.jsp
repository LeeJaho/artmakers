<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<%-- <link href = "${ctx}/resources/CSS/style.css" type="text/css" rel="stylesheet"/> --%>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,  user-scalable=1"/> -->

	<main class="main">
		<section class="note-list">
			<h1 class="hidden">메인</h1>
			<div class="main-visual"><%-- <img src ="${ctx}/resources/images/furniture.png"/> --%></div>
			<div class="top-main-wrapper">
				<div class="main-wrapper">
					<ul class="main-content">
						<c:forEach begin="1" end ="12">
							<li class="content-box">
								
									<div class="content-day">Day7</div>
									<div class="content-name">
										수제책상만들기
									</div>
							
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</section>
	</main>
