<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/notedetail.css" type="text/css" rel="stylesheet"/>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,  user-scalable=1"/> -->

	<article class="main">
			<div class="note-detail-info detail-container">
				<div class="detail-name">
					<h3>Day 30</h3>
					<h2>당신도 할 수 있다</h2>
				</div>
				<div class="detail-date">
					<span>운동 / </span>
					<span>2018-04-18</span>
					<span>트깔</span>
				</div>
			</div>
			<div class="detail-container">
				<div class="detail-content-info">
					<div>
						<img src="${root}/resources/images/view-icon.png" />
						1301
					</div>
						
					<div>
						<img src="${root}/resources/images/comment-icon.png" />
						2
					</div>
					
					<div>
						<img src="${root}/resources/images/like-icon.png" />
						22	
					</div>
				</div>
			</div>
			<section class="note-detail-wrapper">
				<c:forEach begin="0" end ="9">
					<div class="note-detail-content">
						<div class="note-detail-title">
							<h2>Day1</h2>
							<div>운동 처음 시작한 모습입니다.</div>
						</div>
						<div class="note-detail-img">
							<img src="${root}/resources/images/detail-exer.png" />
						</div>
						<div class="detail-write">
							<p>오랜만에 운동하니까 힘드네요 ㅎ히ㅡ희흐히희희흐히ㅡ하흐ㅏㅣㅎ하ㅣ허하ㅣ허ㅏㅣ</p>
							<p>전 진짜로 운동 안했어요 으아하하앟아항하앟앟아</p>
							<p>운동했을까요 안했을까요~~!~!~!!!~~~!</p>
						</div>
					</div>
				</c:forEach>
			</section>
				<!-- <div>
					<h1>5. CPU의 기능</h1>	
					<span>컴퓨터 프로그래밍</span><br>
					<span>newlec</span>  <span>2018.03.14.15:36</span>
				</div>
				
				<div>
					content
				</div> -->
	</article>
