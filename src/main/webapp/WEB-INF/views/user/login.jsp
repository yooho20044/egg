<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>login</title>
    <style>
* {
	margin: 0;
	text-align: center;
}

body {
	background-color: #6DCEF520;
}

.container {
	background-color: white;
	width: 800px;
	padding: 120px;
	border: 1px solid black;
	border-radius: 10px;
}

a {
	color: black;
	text-decoration: none;
}

#backBtn {
	position: absolute;
	top: 10px;
}

#loginBtn {
	width: 165px;
	height: 44px;
}

#kakaoLoginBtn {
	cursor: pointer;
}



	label {
		line-height: 40px;
		position: absolute;
		right: 120px;
		top: 0;
		bottom: 0;
		-moz-transition: 0.3s right ease;
		-ms-transition: 0.3s right ease;
		-o-transition: 0.3s right ease;
		-webkit-transition: 0.3s right ease;
		transition: 0.3s right ease;
		z-index: 0
	}
	
	input {
		color: transparent;
		font-size: 12px;
		height: 35px;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		border-radius: 3px;
		-moz-transition: 0.3s all ease;
		-ms-transition: 0.3s all ease;
		-o-transition: 0.3s all ease;
		-webkit-transition: 0.3s all ease;
		transition: 0.3s all ease;
	}
	
	input[type="text"], input[type="password"] {
		border: 1px solid #ccc;
		height: 35px;
		padding: 0 10px;
		width: 550px;
		position: relative;
		-moz-box-shadow: inset 0 0 10px rgba(0, 0, 0, .06);
		-webkit-box-shadow: inset 0 0 10px rgba(0, 0, 0, .06);
		box-shadow: inset 0 0 10px rgba(0, 0, 0, .06);
		z-index: 2;
	}
	
	input[type="text"], input[type="password"] {
		color: rgba(47, 130, 194, .8);
	}
	
	input[type="text"]:-moz-placeholder {
		color: rgba(47, 130, 194, .6);
	}
	
	input[type="text"]:-ms-input-placeholder {
		color: rgba(47, 130, 194, .6);
	}
	
	input[type="text"]::-webkit-input-placeholder {
		color: rgba(47, 130, 194, .6);
	}
	
	input[type="password"]:-moz-placeholder {
		color: rgba(47, 130, 194, .6);
	}
	
	input[type="password"]:-ms-input-placeholder {
		color: rgba(47, 130, 194, .6);
	}
	
	input[type="password"]::-webkit-input-placeholder {
		color: rgba(47, 130, 194, .6);
	}
	
	
</style>
</head>
<body>
    <div class="container">
    	<button type="button" class="btn-close" id="backBtn" aria-label="Close"></button>
        <div class="row mb-4">
            <img src="/resources/img/logoBig.png">
        </div>
        <form id="loginForm">
        <div class="row mb-3">
            <div class="col-12">
              <input type="text" class="form-control" id="user_id" name="user_id" placeholder="???????????? ??????????????????.">
            </div>
            
        </div>
        <div class="row mb-3">
            <div class="col">
                <input type="password" class="form-control" id="password" name="password" placeholder="??????????????? ??????????????????.">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">
				<input type="checkbox" class="form-check-input" id="rememberId" name="rememberId"> ????????? ????????????
			</div>
        </div>
        <div class="row">
            <div class="col">
				<button type="button" class="btn btn-dark" id="loginBtn">?????????</button>
			</div>
        </div>
        <div class="row mt-3">
            <div class="col">
                <a href="${pageContext.request.contextPath}/toSignup.do">????????????</a> // 
                <a href="${pageContext.request.contextPath}/member/idFind.do" onclick="window.open(this.href,'_black', 'width=800, height=600'); return false;">?????????</a> * <a href="${pageContext.request.contextPath}/member/pwFind.do" onclick="window.open(this.href,'_black', 'width=800, height=600'); return false;">????????????</a>??????
            </div>
        </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script>

    	$("#password").on('keypress', function(e){
        	if(e.keyCode == '13'){
        		$('#loginBtn').click();
        	}
        });
        
        $("#user_id").on('keypress', function(e){
        	if(e.keyCode == '13'){
        		$('#loginBtn').click();
        	}
        });
        
     	// ?????? ??????????????? ?????? ?????? ??????
    	// ?????? ??? ????????? id ???????????? ??????
//     	console.log(document.cookie);
    	let regex = /rememberId=(.*)/;
    	if (regex.test(document.cookie)) {
    		let id = RegExp.$1;
    		$("#user_id").val(id);
    	}
    	
    	if(document.cookie) {
    		$("#rememberId").attr("checked", true);
    	}
		
    	
    	// ????????? ??????
    	$("#loginBtn").on("click", function(){
    		let loc = '${location}'
    		// ????????? ???????????? ?????? ??????
    		if($("#rememberId:checked").length == 1){ // ?????? ???.
    		 	rememberId();
    		}else{ //?????? ??????.
    			deleteRememberId();
    		}	
    		
    		let data = $("#loginForm").serialize();
    		let id = $("#user_id").val();
    		console.log(id);
 //    		console.log(data);
    		$.ajax({
    			url : "${pageContext.request.contextPath}/member/login.do"
    			, type : "post"
    			, data : data
    		}).done(function(rs){
    			if(rs != "Y") {
    				if(rs == "??????") {
    					if(loc == "on"){
    						location.href="${pageContext.request.contextPath}/online/toMain.do"
    					}else if(loc == "off"){
    						if('${loginSession.type}==2'){
    			        		 location.href="${pageContext.request.contextPath}/offline/toMainEx.do?expert_id="+id
    						}else{
    			        		 location.href="${pageContext.request.contextPath}/offline/toMain.do";
    			        	 }
    					}else{
    						location.href="${pageContext.request.contextPath}/online/toMain.do"
    					}
    				}else if(rs == "?????????") {
    					location.href = "${pageContext.request.contextPath}/admin/toAdminMain"
    				}else if(rs == "??????"){
    					alert("????????? ?????? ??????????????? ???????????? ????????????.");
    				}
    			}else {
    				alert("??????????????? ???????????? ???????????? ??????????????? ??????????????? ??????????????????.");
    			}
    				
    		}).fail(function(e){
    			console.log(e);
    		}) 
    	});
        

	// ????????? ?????? ??????
	function deleteRememberId() {
		// ?????? ?????? : ????????? ?????? X -> ????????? ???????????? ????????? ????????? ???
		// ???????????? ??????????????? ???????????? ??????.
		// ????????? ?????? ?????? 2022-02-03T10:06:42.000Z
		// ????????? : 1??? 1???
		// Sat, 01 Jan 2022 00:00:10 GMT
		document.cookie = "rememberId=;Expires=Sat, 01 Jan 2022 00:00:10 GMT";
	}
	function divideType(){
		
	}

	// ????????? ?????? ??????
	function rememberId() {
		let expiryDate = new Date();
// 		console.log("?????? ?????? ", expiryDate);
		expiryDate.setDate(expiryDate.getDate() + 30);
// 		console.log("30??? ???", expiryDate);
			
		let key = "rememberId";
		let value = $("#user_id").val();
		document.cookie = key + "=" + value + ";Expires=" + expiryDate;
	}
    
    
    $("#backBtn").click(function(){
    	let loc = '${location}'
    	if(loc == "on"){
			location.href="${pageContext.request.contextPath}/online/toMain.do"
		}else if(loc == "off"){
        	location.href="${pageContext.request.contextPath}/offline/toMain.do";
		}else{
			location.href="${pageContext.request.contextPath}/online/toMain.do"
		}
    }) 
    </script>
</body>
</html>