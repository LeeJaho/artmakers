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
				<%-- <c:forEach begin="0" end ="9"> --%>
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
				<%-- </c:forEach> --%>
			</section>
			
			<section class="note-detail-wrapper">
				<%-- <c:forEach begin="0" end ="9"> --%>
					<div class="note-detail-content">
						<div class="note-detail-title">
							<h2>Day2</h2>
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
				<%-- </c:forEach> --%>
			</section>
			
			
			<section class="detail-author-info">
				<div class="profile-pic">사진</div>
				<span>트깔</span>
				<p>"제발 운동을 하고자 DAYMAKERS를 시작합니다"</p>
				<div class="heart-icon-wrapper">
					<img src="${root}/resources/images/heart-icon.png" />
				</div>
			</section>
			
			
			<!-- 회원이 보는 note detail / 로그인 필요X -->
			<section class="comment-box">
				<div><span>댓글 0개</span></div>
					<ul>
						<li class="comment-content-wrapper">
							<div class="comment-profile">
								<img src="${root}/resources/images/comment-profile.png" />
							</div>
							
							<div class="comment-content">
								<span>선호아이디아아이디</span>
								<span>2018-04-03</span>
								<span class="comment-context">
								운동이 하고 싶어지는 그런 글이네요 !!!!!
								</span>
							</div>
						</li>
					</ul>		
				<form class="after-login-comment">
						<div class="comment-profile">
							<img src="${root}/resources/images/comment-profile.png" />
							<span>트깔</span>
						</div>
						<textarea rows="30" cols="8" placeholder="댓글을 입력하세요."></textarea>
						<input class="submit-button" type="submit" value="등록"/>
				</form>
				
			</section>
	</article>
