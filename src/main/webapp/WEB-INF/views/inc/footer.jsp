<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />

 <footer class="footer">
	 <div class="footer-table">
	 	<h1 class=hidden>footer</h1>
	 	<div class="footer-company">
	 		<h1 class="hidden">footer 메뉴</h1>
	 			<p class="footer-info">
	 				<span>About Us</span>
	 			</p>
	 			<p class="footer-about">
	 				<span class="info-line">상호명 : 데이메이커스 </span>
	 				<span class="info-line"> | 대표 : 이자호</span><br>
	 				<span class="info-line">주소 : 은평구 와산교 다리다리다리다리다리 밑밑</span><br>
	 			</p>
	 			
	 	</div>
	 	<div class="footer-company">
	 		<p class="footer-info">Contact Us</p>
	 		<div class="info-wrap">
	 			
	 			<div class="info-line"><img src ="${ctx}/resources/images/phone.png"/><p>010-3358-8497</p></div>
	 			<div class="info-line"><img src ="${ctx}/resources/images/email.png"/><p>daymakers@gmail.com</p></div>	
	 		</div>
	 		
	 		
	 		<p class="footer-info">Follow Us</p>
	 		<ul class="sns-link">	
	 			<li><img src ="${ctx}/resources/images/kakaotalk.png"/></li>
	 			<li><img src ="${ctx}/resources/images/instagram.png"/></li>
	 			<li><img src ="${ctx}/resources/images/facebook.png"/></li>	 		
	 		</ul>
	 		
	 	</div>
	 </div>
 </footer>