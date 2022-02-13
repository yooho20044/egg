<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- 헤더 적용 문구 -->
<%@include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/onlineMain.css"> 
</head>
<body>
    <div class="container caroBox">
        <!--캐러샐-->
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active slidePhoto">
                <img src="/resources/img/main1.png" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item slidePhoto">
                <img src="/resources/img/main2.png" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item slidePhoto">
                <img src="/resources/img/main3.png" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item slidePhoto">
                <img src="/resources/img/main4.png" class="d-block w-100" alt="...">
              </div>
            </div>
            <button class="carousel-control-prev iconBox" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
              <span class="carousel-control-prev-icon iconPosition" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next iconBox" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
              <span class="carousel-control-next-icon iconPosition" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div class="row main">
         <!-- 인기 강의 -->
            <div class="col-12 mt-5 class" id="likePart">
            	<div class="row titleBox">
            		<div class="col-2 mt-2 mainTitle">
            			<label><h4><b>인기 강의</b></h4></label>
            		</div>
            		<div class="col-9">
            			<div class="plus" id="hot">HOT</div>
            		</div>
            		<div class="col-1 mt-2 mainbutton">
            			<span id="tolistLike">클래스 더보기</span>
            		</div>		
            	</div>
                <div class="row mediaBox">
                	<c:forEach items="${listLike }" var="recent">
                		<div class="col">
	                			<a href="${pageContext.request.contextPath}/onlinePost/toDetail.do?post_no=${recent.POST_NO}">
			                		<div class="row mediaPhoto">
			                			<img class="photo" src="${pageContext.request.contextPath}/onlinePostThumbNail/${recent.SYSTEM_NAME }">
			                		</div>
			                		<div class="row mediaText">
			             				<span><b>${recent.TITLE }</b></span>
			                		</div>
		                		</a>
	                		</div>
                	</c:forEach>
                </div>
            </div>    
        
        
        
        	<!-- 최신강의 -->
            <div class="col-12 mt-5 class">
            	<div class="row titleBox">
            		<div class="col-2 mt-2 mainTitle">
            			<label>
	            			<h4><b>최신 강의</b></h4>
            			</label>	
            		</div>
            		<div class="col-9">
            			<div class="plus" id="new">NEW</div>
            		</div>
            		<div class="col-1 mt-2 mainbutton">
            			<span id="tolistRecent">클래스 더보기</span>
            		</div>	
            	</div>
                <div class="row mediaBox">
                	<c:forEach items="${listRecent }" var="recent">
	                		<div class="col">
	                			<a href="${pageContext.request.contextPath}/onlinePost/toDetail.do?post_no=${recent.POST_NO}">
			                		<div class="row mediaPhoto">
			                			<img class="photo" src="${pageContext.request.contextPath}/onlinePostThumbNail/${recent.SYSTEM_NAME }">
			                		</div>
			                		<div class="row mediaText">
			             				<span><b>${recent.TITLE }</b></span>
			                		</div>
		                		</a>
	                		</div>
                	</c:forEach>
                </div>
            </div>
            
    
            
            <!-- 관리자 추천 강의 -->
            <div class="col-12 mt-5 class" id="adminPart">
            	<div class="row titleBox">
            		<div class="col-2 mt-2 mainTitle">
            			<label><h4><b>관리자 추천 강의</b></h4></label>
            		</div>	
            	</div>
                <div class="row mediaBox">
                	<c:forEach items="${listAdmin }" var="recent">
                		<div class="col">
	                			<a href="${pageContext.request.contextPath}/onlinePost/toDetail.do?post_no=${recent.POST_NO}">
			                		<div class="row mediaPhoto">
			                			<img class="photo" src="${pageContext.request.contextPath}/onlinePostThumbNail/${recent.SYSTEM_NAME }">
			                		</div>
			                		<div class="row mediaText">
			             				<span><b>${recent.TITLE }</b></span>
			                		</div>
		                		</a>
	                		</div>
                	</c:forEach>
                </div>
            </div>  
            
            <!-- 조회수강의 -->
            <div class="col-12 mt-5 class">
            	<div class="row titleBox">
            		<div class="col-2 mt-2 mainTitle">
            			<label>
	            			<h4><b>최다 조회수 강의</b></h4>
            			</label>	
            		</div>
            		<div class="col-9">
            			<div class="plus" id="view">VIEW</div>
            		</div>
            		<div class="col-1 mt-2 mainbutton">
            			<span id="tolistView">클래스 더보기</span>
            		</div>	
            	</div>
                <div class="row mediaBox">
                	<c:forEach items="${listView }" var="view">
	                		<div class="col">
	                			<a href="${pageContext.request.contextPath}/onlinePost/toDetail.do?post_no=${view.POST_NO}">
			                		<div class="row mediaPhoto">
			                			<img class="photo" src="${pageContext.request.contextPath}/onlinePostThumbNail/${view.SYSTEM_NAME }">
			                		</div>
			                		<div class="row mediaText">
			             				<span><b>${view.TITLE }</b></span>
			                		</div>
		                		</a>
	                		</div>
                	</c:forEach>
                </div>
            </div>    
        </div>
        <div class="row mt-2 footer">
      		<div class="row">
      			<span>(주)능력자들 | 대표 : 나승완 | 사업자등록번호 : 421-22-00218 </span>
      			<span>주소 : 올림픽로 92길 40-3 3층 (주)능력자들</span>
      		</div>    
        </div>
    </div> 
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
$("#tolistLike").click(function(){
	location.href="${pageContext.request.contextPath}/online/toLike.do"
})
$("#tolistRecent").click(function(){
	location.href="${pageContext.request.contextPath}/online/toRecent.do"
})
$("#tolistView").click(function(){
	location.href="${pageContext.request.contextPath}/online/toView.do"
})
</script>
</body>
</html>