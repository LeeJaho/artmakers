<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />


<main class="main">
	<div class="main-visual">
		<h2>하루를 만들어내는 Daymakers</h2>
		<p>
			과정을 기록하고</br> 기록을 통해 하루를 완성해보세요.</br> 모이면 ~~~~가 됩니다.
		</p>
		<a href="#">
			<div class="visual-info">
				<!-- <div class="content-day">
									Day7
								</div>
								
								<div class="content-name">
									수제책상만들기
								</div> -->
			</div>
		</a>
	</div>

	<section class="note-list">
		<h1 class="hidden">메인</h1>

		<div class="main-wrapper">
			<ul class="main-content">
				<%-- <c:forEach begin="1" end="12"> --%>
				<li class="content-box">
					<div class="content-img">
						<img src="${root}/resources/images/exer.png" />
						
					</div>
	
					<div class="content-info">
	
						<h2 class="content-day">
							Day30<img src="${root}/resources/images/day_line.png" />
						</h2>
	
	
						<h2 class="content-name">" 맨몸 운동 30일 기록 "</h2>
	
					</div>
				</li>
	
				<li class="content-box index-box">
					<div class="content-img">
						<img src="${root}/resources/images/furniture.png" />
						
					</div>
	
					<div class="content-info">
	
						<h2 class="content-day">
							Day7<img src="${root}/resources/images/day_line.png" />
						</h2>
	
	
						<h2 class="content-name">" 수제책상 만들기 "</h2>
					</div>
				</li>
	
				<li class="content-box index-box">
					<div class="content-img">
						<img src="${root}/resources/images/puppy-main.png" />
					
					</div>
	
					<div class="content-info">
	
						<h2 class="content-day">
							Day ing<img src="${root}/resources/images/day_line.png" />
						</h2>
	
	
						<h2 class="content-name">" 골드리트리버 키우는 재미 "</h2>
	
					</div>
				</li>
	
				<li class="content-box index-box">
					<div class="content-img">
					<img src="${root}/resources/images/bike.png" />
					
					</div>
	
					<div class="content-info">
	
						<h2 class="content-day">
							Day10<img src="${root}/resources/images/day_line.png" />
						</h2>
	
	
						<h2 class="content-name">" 천을 따라 자전거 여행 "</h2>
	
					</div>
				</li>
				<%-- <%-- </c:forEach> --%>
			</ul>
		</div>
	</section>
</main>
