<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link href = "${ctx}/resources/CSS/style.css" type="text/css" rel="stylesheet"/>
 <footer class="footer">
	 <div class="footer-table">
	 	<h1>footer</h1>
	 	<div class="footer-company">
	 		<h1 class="hidden">footer 메뉴</h1>
	 			<p class="footer-info">
	 				<span class="info-line">상호명 : 데이메이커스 </span>
	 				<span class="info-line">／ 대표 : 이자호</span><br>
	 				<span class="info-line">주소 : 쌍용</span><br>
	 				
	 			</p>
	 	</div>
	 	<div class="footer-company">
	 		<p>
	 			<span class="info-line"><img src ="${ctx}/resources/images/phone_icon.png"/>010 - 3358 - 8497</span>
	 			<span class="info-line"><img src ="${ctx}/resources/images/mail_icon.png"/>daymakers@gmail.com</span>
	 		</p>
	 	</div>
	 </div>
 </footer>