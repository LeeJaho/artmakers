<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/collection.css" type="text/css" rel="stylesheet"/>

	<article class="main">
				<div class="collection-mylike-content">
					<c:forEach begin="0" end ="9">
						<div class="collection-box">
							<a href="">
								<img src="${root}/resources/images/exer.png" />
								<div class="collection-box-info">
									<span class="collection-box-name">
										2018년 약속 운동!!!!!!!!!!!!!!!
									</span>
								</div>
							</a>
							
						</div>
					</c:forEach>
				</div>
	</article>
