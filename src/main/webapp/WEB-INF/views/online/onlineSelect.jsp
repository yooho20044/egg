<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- 헤더 적용 문구 -->
<%@include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{margin:0;}
body{
    width:1800px;
    height: auto;
    margin:0 auto;
}

h2{text-align:center;}
	
	.class{
   height: auto;
   width:1800px;
}

.mediaBox{
	height:auto;
	width:100%;
	 float:left;
	 margin:auto;
	 background-color:#6DCEF520;
}
.content{
	height:400px;
	width:420px;
	margin:12px;
	background-color:white;
	padding-right:0;
	padding-left:0;
	
}
.mediaPhoto{
   height: 75%;
   width:100%;
   margin-right:0;
   margin-left:0;
   overflow: hidden;
}
.photo{
	width:100%;
	height:100%;
	padding-left:0;
	padding-right:0;
	transform:scale(1.0);    
    transition: transform .5s;
}
.photo:hover{
   transform:scale(1.1);            /* 이미지 확대 */
   transition: transform .5s; 	/*  시간 설정  */
}
.mediaText{
	display:table;
   height: 25%;
   width:100%;
   padding-left:10px;
   text-decoration-line: none;
   text-align:left;
   vertical-align: middle;
}
.mediaText>span{
	display:table-cell;
	font-size: large;
	vertical-align: middle;
}
a{
	text-decoration-line: none;
	color:black;
}
</style>
</head>
<body>
		<div class="row mt-3 littleTitle">
			<h2>검색결과 : ${search} </h2>
		</div>      
        <div class="row main">
         <!-- 최신 강의 -->
            <div class="col-12 mt-5 class">
                <div class="row mediaBox">
                	<c:forEach items="${listRecent }" var="recent">
                		<div class="col-3 content">
	                			<a href="${pageContext.request.contextPath}/onlinePost/toDetail.do?post_no=${recent.POST_NO}">
			                		<div class="row mediaPhoto">
			                			<img class="photo" src="${pageContext.request.contextPath}/onlinePostThumbNail/${recent.SYSTEM_NAME }">
			                		</div>
			                		<div class="row mediaText">
			             				<span>${recent.TITLE }</span>
			                		</div>
		                		</a>
	                		</div>
                	</c:forEach>
                </div>
            </div>             
 
</body>
</html>