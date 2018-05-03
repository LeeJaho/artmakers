<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<link href = "${root}/resources/CSS/collection.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		var collectionButton = $(".collection-nav");
		var testBox = $(".test");
		collectionButton.click(function(e){
			if(e.target === e.currentTarget)
				return;
			
			var target = e.target;
			if(target.nodeName == "A"){
				target = target.parentNode;
				//alert(target);
				e.preventDefault(); 
				
			}
			var viewName = target.dataset.viewName;
			//alert(viewName);
			
			var view = $("."+viewName);
			//alert(view);
			//view.css("border", "1px solid red");
			
			if(view.length == 0){
         		
         		$.get(viewName+"-partial", function(data){
             		var html = testBox.html();
             		
         			testBox.html(html+data);
					view = testBox.find("."+viewName);
         		});
         		
         		
         	}
			
			testBox.children("div").addClass("hidden");
			
			view.removeClass("hidden");
			
		});
	});
</script>
	<article class="main">
			<div class="collection-info">
				<div class="collection-header"> 
					<span class="collection-header-nick">트깔</span>
					<span class="collection-header-id">jaho45245</span>
					<p class="collection-header-intro">"제발 운동을 하고자 DAYMAKERS를 시작합니다"</p>
				</div>
				
				<div class="collection-heart-img">
					<div class="heart-icon-wrapper"><img src="${root}/resources/images/heart-icon.png" /></div>
				</div>
			</div>
			
			<nav class="collection-nav">
				<div class="collection-nav-daymaking" data-view-name="myday">
					<a href="">MAKING DAY</a>
				</div>
				
				<div class="collection-nav-makedday" data-view-name="mylike" >
					<a href="">LIKED DAY</a>
				</div>
			</nav>
			
			<section class="collection-main-wrapper">
				<div class="collection-main-header">
					<div class="collection-main-img"><img src="${root}/resources/images/makingday-icon.png" /></div>
					<p class="collection-category">MAKING DAY</p>
					<p>트깔님의 진행중인 DAY가 총 0개 있습니다.</p>
					<div class="collection-sort"><span>등록순</span> <span>DAY일 순</span></div>
				</div>
				
			</section>
			
			<div class="test">
				<div class="myday">
						<div class="collection-box">
							<a href="">
								<img src="${root}/resources/images/exer.png" />
								<div class="collection-box-info">
									<span class="collection-box-name">
										2018년 약속 운동!!!!
									</span>
								</div>
							</a>
							
						</div>
				</div>
			</div>
	</article>
