<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<link href = "${root}/resources/CSS/collection.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		var collectionButton = $(".collection-nav");
		var testBox = $(".test");
		var collectionWrapper = $(".collection-main-wrapper");
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
			//testBox.children("section").addClass("hidden");
			view.removeClass("hidden");
			//collectionWrapper.removeClass("hidden");
		});
		
		//newFolder 만들 때
		
	});
	$(function(){
	var newFolderButton = $(".collection-sort > input");
	var newFolderBox = $(".new-folder-box");
	
	newFolderButton.click(function(evt){
		if(newFolderBox.hasClass("show")){
			newFolderBox.remove(".show");
			
		}
		else{
			newFolderBox.addClass("show");
			
		}
		evt.preventDefault();
		});
	});
</script>
	<article class="main">
		<div class="collection-info">
			<div class="profile-pic">
				<c:choose>
					<c:when test="${member.photo ne null}">
						<img src="${root}${member.photo}" />
					</c:when>

					<c:otherwise>
						<img src="${root}/resources/images/comment-profile.png" />
					</c:otherwise>
				</c:choose>
			</div>
			<div class="collection-header">
				<span class="collection-header-nick">${member.nickname}</span> <span
					class="collection-header-id">${member.id}</span>
				<p class="collection-header-intro">"${member.intro}"</p>
			</div>
	
			<div class="collection-heart-img">
				<div class="heart-icon-wrapper">
					<img src="${root}/resources/images/heart-icon.png" />
				</div>
			</div>
		</div>
	
		<nav class="collection-nav">
			<div class="collection-nav-daymaking" data-view-name="myday">
				<a href="">MAKING DAY</a>
			</div>
	
			<div class="collection-nav-makedday" data-view-name="mylike">
				<a href="">LIKED DAY</a>
			</div>
		</nav>

		<div class="test">
			<div class="collection-main-wrapper">
				<div class="collection-main-header">
					<div class="collection-main-img">
						<img src="${root}/resources/images/makingday-icon.png" />
					</div>
					<p class="collection-category">MAKING DAY</p>
					<p><span>${member.nickname}</span>님의 진행중인 DAY가 총 0개 있습니다.</p>
					
					<div class="collection-sort">
						<input type="button" name="newfolder" value="새폴더"/>
						<span>등록순</span> <span>DAY일 순</span>
					</div>
				</div>
	
			</div>
	
	
			<div class="myday-content">
				<div class="collection-box">
					<a href=""> <img src="${root}/resources/images/exer.png" />
						<div class="collection-box-info">
							<span class="collection-box-name"> 2018년 약속 운동!!!! </span>
						</div>
					</a>
	
				</div>
			</div>
		</div>
		
		<!-- hidden 해야 할 new-folder -->
		<div class=new-folder-box>
			<form action="${root}/member/collection/myday" method="post" enctype="multipart/form-data">
				<p><label class="input-label">폴더명</label></p>
				<p><input class="input-box" type="text" name="title" placeholder="폴더이름"/></p>		
				<p><input class="submit-button" type="submit" value="추가"/></p>
			</form>
		</div>
</article>
