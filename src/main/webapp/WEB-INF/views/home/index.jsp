<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />


	<main class="main">
		<section class="note-list">
			<h1 class="hidden">메인</h1>
			
				<div class="main-visual">
					<img src ="${root}/resources/images/furniture.png"/>
					<a href="#">
						<div class="visual-info">
							<div class="content-day">
								Day7
							</div>
							
							<div class="content-name">
								수제책상만들기
							</div>
						</div>
					</a>
				</div>
			
			<div class="top-main-wrapper">
				<div class="main-wrapper">
					<ul class="main-content">
						<c:forEach begin="1" end ="12">
						 
							<li class="content-box">
								<a href="#">
									<div class="content-day">Day7</div>
									<div class="content-name">
										수제책상만들기
									</div>
								 </a>
							</li>
					 	
						</c:forEach>
					</ul>
				</div>
			</div>
		</section>
	</main>
