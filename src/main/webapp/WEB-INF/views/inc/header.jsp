<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- 절대경로를 쓰기 위해서 -> 왜 절대경로를 써? -->
<c:set var="root" value="${pageContext.request.contextPath }" />
	<header class="header">
		<nav class="main-menu">
				<ul>
					<li id="ham-button"><a href=""><img id="hamburg" src ="${root}/resources/images/menu.png"/></a></li>
					<sec:authorize access="!isAuthenticated()">
						<li id ="logo"><a href="${root}/home/index"><img src ="${root}/resources/images/logo.png"/></a></li>
					</sec:authorize>
					
					<sec:authorize access="isAuthenticated()">
						<li id ="logo"><a href="${root}/member/index"><img src ="${root}/resources/images/logo.png"/></a></li>
					</sec:authorize>
					<li><a href="${root}/member/daywrite"><img src ="${root}/resources/images/write.png"/></a></li>
					<li><a href=""><img src ="${root}/resources/images/search.png"/></a></li>
				</ul>
		</nav>
	</header>

	<script>
		window.addEventListener("load", function(event){
			var hamButton = document.querySelector("#ham-button");
			var aside = document.querySelector(".aside");
			var hamburg = document.querySelector("#hamburg");
			hamButton.onclick=function(e){
				if(aside.classList.contains("show")){
					aside.classList.remove("show");
					hamburg.src = "${root}/resources/images/menu.png";
				}
				else{
					aside.classList.add("show");
					hamburg.src = "${root}/resources/images/upbutton.png";
				}
				e.preventDefault();


			};	
			

		});
	
	</script>