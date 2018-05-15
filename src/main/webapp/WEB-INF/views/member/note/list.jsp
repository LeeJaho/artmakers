<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/notelist.css" type="text/css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,  user-scalable=1"/>

	<main class="main">
		<section class="note-list">
			<h1 class="hidden">노트목록</h1>
			<ul class="">
			<%-- 	<c:forEach begin="0" end ="9"> --%>
					<li class="note-content-box">
						<div class="note-list-left">
							<a href="${root}/member/note/detail">
								<span class="note-list-title">맨손 운동으로 인한 변화</span>
								<p class="note-list-content">
								  아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1
								  아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1
								</p>
							</a>	
							<div class="note-list-info"><span>2018-03-22 15:23</span></div>
						</div>
						<div class="note-list-img">
						<a href="#">
							<img src="${root}/resources/images/puppy.png" />
						</a>
						</div>
					</li>
					
					<li class="note-content-box">
						<div class="note-list-left">
							<a href="#">
								<span class="note-list-title">맨손 운동으로 인한 변화</span>
								<p class="note-list-content">
								  아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1
								  아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1
								</p>
							</a>	
							<div class="note-list-info"><span>2018-03-22 15:23</span></div>
						</div>
						<div class="note-list-img">
						<a href="#">
							<img src="${root}/resources/images/puppy.png" />
						</a>
						</div>
					</li>
					
					<li class="note-content-box">
						<div class="note-list-left">
							<a href="#">
								<span class="note-list-title">맨손 운동으로 인한 변화</span>
								<p class="note-list-content">
								  아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1
								  아무 생각없이 운동을 하곤 했지만 제대로 운동
								  해보자는 생각으로 시작했습니다. 별 것도 없지만
								  그냥 맨 손 하나만 믿고 시작한 변화 기록합니다.
								  DAY1
								</p>
							</a>	
							<div class="note-list-info"><span>2018-03-22 15:23</span></div>
						</div>
						<div class="note-list-img">
						<a href="#">
							<img src="${root}/resources/images/puppy.png" />
						</a>
						</div>
					</li>
				<%-- </c:forEach> --%>
			</ul>
		</section>
	</main>
