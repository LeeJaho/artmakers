<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<%-- <link href = "${ctx}/resources/CSS/style.css" type="text/css" rel="stylesheet"/> --%>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,  user-scalable=1"/>

	<main class="main">
		<section class="note-list">
			<h1 class="hidden">노트목록</h1>
			<ul class="">
				<c:forEach begin="0" end ="9">
					<li>
						<div class="content-box">
							<div>
								<span>DAY 30</span>
								<div><a href="detail">운동 DAY30 변화</a></div>
								<div>
								  운동은 나에게 너무나 어려운것~! 허나 ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
								</div>
							</div>
							<div>사진</div>
						</div>
						<div><span>분류</span> <span>2018-03-22 15:23</span></div>
					</li>
				</c:forEach>
			</ul>
		</section>
	</main>
