<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/collection.css" type="text/css" rel="stylesheet"/>
<div class="mylike">
			<section class="collection-main-wrapper">
					<div class="collection-main-header">
						<div class="collection-main-img"><img src="${root}/resources/images/liked.png" /></div>
						<p class="collection-category">LIKED DAY</p>
						<p><span>${member.nickname}</span>님의 목표로 정한 DAY가 총 0개 있습니다.</p>
						<div class="collection-sort">
						<input type="button" name="newfolder" value="새폴더"/>
						<span>등록순</span> <span>DAY일 순</span>
						</div>
					</div>
					
				</section>
				
				<div class="mylike-content">
					<c:forEach begin="0" end ="9">
						<div class="collection-box">
							<a href="">
								<img src="${root}/resources/images/exer.png" />
								<div class="collection-box-info">
									<span class="collection-box-name">
										내가 좋아요 누른 목록들!
									</span>
								</div>
							</a>
							
						</div>
					</c:forEach>
				</div>
</div>
