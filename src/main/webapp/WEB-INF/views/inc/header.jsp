<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로를 쓰기 위해서 -> 왜 절대경로를 써? -->
<c:set var="root" value="${pageContext.request.contextPath }" />
	<header class="header">
		<h1 class="hidden"></h1>
		<nav class="main-menu">
			<h1 class="hidden">메인메뉴</h1>
				<ul>
					<li id="ham-button"><a href=""><img id="hamburg" src ="${root}/resources/images/downbutton.png"/></a></li>
					<li><a href=""><img src ="${root}/resources/images/daymakers_logo.png"/></a></li>
					<%-- <li><a href=""><img src ="${root}/resources/images/login_icon.png"/></a></li> --%>
					<li><a href=""><img src ="${root}/resources/images/search_icon.png"/></a></li>
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
					hamburg.src = "${root}/resources/images/downbutton.png";
				}
				else{
					aside.classList.add("show");
					hamburg.src = "${root}/resources/images/upbutton.png";
				}
				e.preventDefault();


			};	
			

		});
	
	</script>