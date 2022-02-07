<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- 헤더 적용 문구 -->
<%@include file="/WEB-INF/views/offHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Offline</title>
<style>
	*{margin:0;}
	body{
		margin:0 auto;
		width:1800px;
    	height: 1000px;
	}
	table{width:1400px; margin:auto; border:1px solid black}
	#header{margin-top:10px; height:100px;}
	.category{height:400px;}
	#btnBox{text-align:center}
	td{margin:auto;}
	img{width:300px; height:300px; margin:40px}
	h2,h4{text-align:center}
	.contentBox{width:100%; height:100%;}
	a{text-decoration-line: none;
	color:black;}
</style>
</head>
<body>
	<table>
		<thead>
		<c:if test="${loginSession.type==2}">
			<tr id="header">
				<th colspan="4"><h2>1:1 요청 보기</h2></th>
			</tr>
			<tr>
				<th colspan="4" id="btnBox">
					<c:forEach items="${ExpertCategory}" var="ex">
					<button type="button" class="btn btn-dark btn-lg" value="${ex.CATEGORY_NO}">${ex.PARENT_GROUP }</button>
					</c:forEach>
				</th>	
			</tr>
		</c:if>
		</thead>
		<tbody>
			<tr id="header">
				<td colspan="4"><h2>전문가에게 요청하기</h2></td>
			</tr>
			<tr class="category">
				<td>	
					<a href="${pageContext.request.contextPath}/offlinePost/toList.do?category_no=1">
						<img src="/resources/img/health.png">
						<h4><b>운동</b></h4>
					</a>
				</td>
				
				<td>
					<a href="${pageContext.request.contextPath}/offlinePost/toList.do?category_no=2">	
						<img src="/resources/img/cook.png">
						<h4><b>요리</b></h4>
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath}/offlinePost/toList.do?category_no=3">	
						<img src="/resources/img/speaking.png">
						<h4><b>외국어</b></h4>
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath}/offlinePost/toList.do?category_no=4">	
						<img src="/resources/img/IT.png">
						<h4><b>IT</b></h4>
					</a>
				</td>
			</tr>
			<tr class="category">
				<td>
					<a href="${pageContext.request.contextPath}/offlinePost/toList.do?category_no=5">	
						<img src="/resources/img/life.png">
						<h4><b>라이프</b></h4>
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath}/offlinePost/toList.do?category_no=6">	
						<img src="/resources/img/drawing.png">
						<h4><b>드로잉</b></h4>
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath}/offlinePost/toList.do?category_no=7">	
						<img src="/resources/img/crafts.png">
						<h4><b>공예</b></h4>
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath}/offlinePost/toList.do?category_no=8">	
						<img src="/resources/img/baby.png">
						<h4><b>아동교육</b></h4>
					</a>
				</td>
			</tr>
		</tbody>
	</table>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
	
</script>
</body>
</html>