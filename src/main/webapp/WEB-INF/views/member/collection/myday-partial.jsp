<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/collection.css" type="text/css" rel="stylesheet"/>
	<div class="myday">
				<section class="collection-main-wrapper">
					<div class="collection-main-header">
						<div class="collection-main-img"><img src="${root}/resources/images/makingday-icon.png" /></div>
						<p class="collection-category">MAKING DAY</p>
						<p>트깔님의 진행중인 DAY가 총 0개 있습니다.</p>
						<div class="collection-sort"><span>등록순</span> <span>DAY일 순</span></div>
					</div>
					
				</section>
				
				<div class="myday-content">
						<div class="collection-box">
							<a href="">
								<img src="${root}/resources/images/exer.png" />
								<div class="collection-box-info">
									<span class="collection-box-name">
										2018년 약속 운동
									</span>
								</div>
							</a>
							
						</div>
				</div>
</div>
