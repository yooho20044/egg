<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/offHeader.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <title>Write</title>
    <style>
	    *{margin:0;}
		body{
		    width:1800px;
		    height: 1000px;
		    margin:0 auto;
		}
        @font-face {
            font-family: 'BMHANNAAir';
            src:
                url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.0/BMHANNAAir.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .container {
            width: 1200px;
            font-family: 'BMHANNAAir';
            color: #2b2b2b;

        }

        .category_menu {
            height: 300px;
            text-align: center;
            background-color: #efefef;
        }

        .category_menu_title {
            font-size: 120px;
            margin: 0;
        }

        .category_menu_explain {
            font-size: 25px;
            margin-bottom: 5px;
        }

        form {
            margin-top: 30px;
        }

        .proTitle {
            font-size: 35px;
        }

        .question {
            font-size: 21px;
        }

        .buttonss {
            margin-top: 30px;
            font-size: 50px;
            text-align: right;

        }

        .btns {
            font-size: 25px;
        }

        textarea {
            width: 100%;
            height: 150px;
            resize: none;
        }

        #reservation_timeDiv {
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="category_menu">
            <span class="category_menu_title">"${parent_group}"</span><br>
            <span class="category_menu_explain">[???????????? ????????? <strong class="proTitle">"?????????"</strong>??? ????????????????????????!]</span><br>
            <span class="category_menu_explain"><strong>??????! ????????? ?????? ????????? ????????? ?????????!</strong></span>

        </div>
        <form action="/offlinePost/insertPost.do" method="post" id="writeForm">
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <strong class="question"> 1. ?????? ????????? ????????? ???????????????????</strong>
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                        data-bs-parent="#accordionExample" value="1">
                        <div class="accordion-body">
                            <c:forEach var="dto" items="${categoryList}">
                                <input type="radio" name="category_no" class="inputRadio" value="${dto.category_no}">
                                <label for="${dto.category_no}">${dto.child_group}</label><br>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed " type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <strong class="question"> 2. ?????? ???????????? ???????????? ????????????????? </strong>
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse " aria-labelledby="headingTwo"
                        data-bs-parent="#accordionExample" value="2">
                        <div class="accordion-body">
                            <input type="radio" name="method" class="inputRadio" value="?????? ?????? ????????? ???????????? ????????????."> ?????? ?????? ?????????
                            ???????????? ????????????.<br>
                            <input type="radio" name="method" class="inputRadio" value="??????/?????????????????? ???????????? ????????????."> ??????/??????????????????
                            ???????????? ????????????.<br>
                            <input type="radio" name="method" class="inputRadio" value="??????????????? ?????? ????????? ???????????????."> ??????????????? ??????
                            ????????? ???????????????.<br>
                            <input type="radio" name="method" class="inputRadio" value="?????????/?????? ????????? ????????????."> ?????????/?????? ?????????
                            ????????????.<br>
                            <input type="radio" name="method" class="inputRadio" value="????????? ?????? ?????????????????????."> ????????? ?????? ?????????????????????..<br>

                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            <strong class="question"> 3. ${loginSession.user_nickname}?????? ???????????? ????????? ????????????? (????????? ?????? ?????? ?????? ??????
                                ?????? ????????? ???????????????.)</strong>
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                        data-bs-parent="#accordionExample" value="3">
                        <div class="accordion-body">
                            <input type="radio" name="age" class="inputRadio" value="10??? ??????"> 10??? ??????<br>
                            <input type="radio" name="age" class="inputRadio" value="10???"> 10???<br>
                            <input type="radio" name="age" class="inputRadio" value="20???"> 20???<br>
                            <input type="radio" name="age" class="inputRadio" value="30???"> 30???<br>
                            <input type="radio" name="age" class="inputRadio" value="40???"> 40???<br>
                            <input type="radio" name="age" class="inputRadio" value="50??? ??????"> 50??? ??????<br>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingFour">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            <strong class="question"> 4. ${loginSession.user_nickname}?????? ????????? ????????? ????????????? (????????? ?????? ?????? ?????? ??????
                                ?????? ????????? ???????????????.)</strong>
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour"
                        data-bs-parent="#accordionExample" value="4">
                        <div class="accordion-body">
                            <input type="radio" name="gender" class="inputRadio" value="???"> ???<br>
                            <input type="radio" name="gender" class="inputRadio" value="???"> ???<br>
                            <input type="radio" name="gender" class="inputRadio" value="??????"> ??????<br>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingFive">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                            <strong class="question"> 5. ???????????? ???????????? ????????? ????????????????</strong>
                        </button>
                    </h2>
                    <div id="collapseFive" class="accordion-collapse collapse " aria-labelledby="headingFive"
                        data-bs-parent="#accordionExample" value="5">
                        <div class="accordion-body">
                            <input type="radio" name="class_time" class="inputRadio" value="???????????? ???????????? ????????????."> ???????????? ????????????
                            ????????????.<br>
                            <input type="radio" name="class_time" class="inputRadio" value="????????? ?????? ???????????? ????????????."> ????????? ??????
                            ???????????? ????????????.<br>
                            <input type="radio" name="class_time" class="inputRadio" value="????????? ????????? ???????????? ????????????."> ????????? ?????????
                            ???????????? ????????????.<br>
                            <input type="radio" name="class_time" class="inputRadio" id="settingTime"
                                value="????????? ????????? ?????? ?????????"> ????????? ????????? ?????? ?????????<br>
                            <div class="reservation_timeDiv" id="reservation_timeDiv" hidden>
                                <input type="date" name="reservation_time" id="datePicker">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingSix">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                            <strong class="question"> 6. ????????? ????????? ??????????????? ???????????????? </strong>
                        </button>
                    </h2>
                    <div id="collapseSix" class="accordion-collapse collapse " aria-labelledby="headingSix"
                        data-bs-parent="#accordionExample" value="6">
                        <div class="accordion-body">
                            <textarea id="wish" placeholder="??????????????? ??????????????? ???????????????."></textarea>
                        </div>
                    </div>
                </div>
                <input class="contentInput" id="content" name="content" hidden>
                <input class="titleInput" id="title" name="title" hidden>
                <div class="buttonss">
                    <button type="button" class="btn btn-warning btns" id="submitBtn">1:1 ?????? ??????</button>
                    <button type="button" class="btn btn-secondary btns" id="cancel">??????</button>
                </div>
        </form>
    </div>
    <script>
        // document.getElementById("openBtn").onclick = function () {
        //     // $(".accordion-collapse").collapse('toggle');
        //     $("#collapseSix").collapse('show');
        //     console.log($("input:radio:checked").length);
        // }
        
        //?????? ?????? ????????? ?????? ???????????? ????????????
    $("#cancel").on("click",function(){
    	goBackPage();
    })
    
    //?????? ???????????? ???????????? ??????
    function goBackPage(){
    	window.history.back();
    }
        
        $(document).ready(function () {
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0 so need to add 1 to make it 1!
            var yyyy = today.getFullYear();
            if (dd < 10) {
                dd = '0' + dd
            }
            if (mm < 10) {
                mm = '0' + mm
            }
            today = yyyy + '-' + mm + '-' + dd;
            document.getElementById("datePicker").setAttribute("min", today);


            $('#wish').on('keyup', function () {
                if ($(this).val().length > 200) {//150?????? ?????? ??????
                    $(this).val($(this).val().substring(0, 250)); //150???????????? ????????? ??????
                    alert("250??? ?????? ???????????? ??? ????????????.");
                }
            });
        });




        $(".inputRadio").on("click", function () {
            let parent = $(this).parent().parent()[0];
            let number = parent.getAttribute("value");
            if (number != "5") { //?????? ?????? ?????? ?????? ?????? (?????? ?????? ??????)
                openMenu(parseInt(number) + 1);
            } else {
                if ($(this).attr("id") == "settingTime") { // ????????? ????????? ?????? ?????? ?????? ????????? ????????????
                    $("#reservation_timeDiv")[0].hidden = false; //?????? ?????? ????????????
                    $("#datePicker").on("change", function () { //????????? ?????????
                        openMenu(parseInt(number) + 1); //?????? ???????????? ????????????
                    })
                } else { //?????? ?????? ??????X ?????? ???????????? ????????????
                    $("#datePicker").val(""); //????????? ????????? ????????? ?????????
                    $("#reservation_timeDiv")[0].hidden = true; //?????? ?????? ?????????
                    openMenu(parseInt(number) + 1); //?????? ?????? ??????
                }
            }
            //?????? ????????? ??????.
        })

        function openMenu(number) { //number??? ???????????? ???????????? ??????
            $("div[value='" + number + "']").collapse('show');
        }

        $("#submitBtn").on("click", function () {

            if (!$('input:radio[name=category_no]').is(':checked')) {
                alert("?????? ????????? ????????? ?????????.");
                $("#collapseOne").collapse('show');
                return;
            } else if (!$('input:radio[name=method]').is(':checked')) {
                alert("???????????? ?????? ????????? ????????? ?????????.");
                $("#collapseTwo").collapse('show');
                return;
            } else if (!$('input:radio[name=age]').is(':checked')) {
                alert("${loginSession.user_nickname}?????? ????????? ????????? ?????????.");
                $("#collapseThree").collapse('show');
                return;
            } else if (!$('input:radio[name=gender]').is(':checked')) {
                alert("${loginSession.user_nickname}??? ????????? ????????? ?????????.");
                $("#collapseFour").collapse('show');
                return;
            } else if (!$('input:radio[name=class_time]').is(':checked')) {
                alert("?????? ?????? ????????? ????????? ?????????.");
                $("#collapseFive").collapse('show');
                return;
            } else if ($('input[name="class_time"]:checked').val() == "????????? ????????? ?????? ?????????" && $("#datePicker").val() == "") {
                //????????? ????????? ????????? ????????? ????????? ?????? ??????!
                alert("????????? ????????? ?????????.");
                $("#collapseFive").collapse('show');
                return;
            } else if ($("#wish").val() == "") {
                if (!confirm("??????????????? ?????? ???????????????. ????????? ?????????????????????????")) {
                    $("#collapseSix").collapse('show');
                    return
                } else {
                    submitForm();
                }
            } else {//?????? ?????? ??? ???????????? ??????
                submitForm();

            }
        })


        function submitForm() { //????????? ?????? ?????? ?????????
        	var id = '${loginSession.user_id}'
            //1.title??? ?????? 
            //title??? "JAVA(?????????)??? ?????? ???????????????" ???????????? ?????? ??????;
            var category_no = $('input[name="category_no"]:checked').val(); //????????? ?????? category_no
            var category_text = $("label[for='" + category_no + "']").text(); //category_no??? ???????????? text???
            $("#title").attr("value", "\"" + category_text + "\"??? ?????? ???????????????."); //????????? ??? ??????
            console.log($("#title").attr("value")); //title??? ??????

            //2. ?????? ?????????
            //?????? ???????????? ?????? ?????? ????????? ???????????? ???????????? ????????? ?????? ??????
            var method = $('input[name="method"]:checked').val();
            var age = $('input[name="age"]:checked').val();
            var gender = $('input[name="gender"]:checked').val();
            var class_time = $('input[name="class_time"]:checked').val();
            var wish = $("#wish").val();
            var reservation_time = $("#datePicker").val();
           /*  if(reservation_time=="undefined"){
            	reservation_time="";
            } */
            console.log(reservation_time);
            //content??? ?????????
            var content = "<h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'><span style='font-weight: 700;'>1. ?????? ????????? ????????? ???????????????????</span></h4><h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'>:&nbsp; " + category_text + "</h4><p style='text-align: left;'><br></p>\
                 <h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'><span style='font-weight: 700;'>2. ?????? ???????????? ???????????? ????????????????</span></h4><h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'>:&nbsp; "+ method + "</h4><p style='text-align: left;'><br></p>\
                 <h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'><span style='font-weight: 700;'>3. ???????????? ???????????? ????????? ??????????</span></h4><h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'>:&nbsp; "+ age + "</h4><p style='text-align: left;'><br></p>\
                 <h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'><span style='font-weight: 700;'>4. ???????????? ????????? ????????????????</span></h4><h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'>:&nbsp; "+ gender + "</h4><p style='text-align: left;'><br></p>\
                 <h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'><span style='font-weight: 700;'>5. ????????? ????????? ??????????</span></h4><h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'>:&nbsp;"+ class_time +"<br>"+ reservation_time +"</h4><p style='text-align: left;'><br></p>\
                 <h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'><span style='font-weight: 700;'>6. ?????? ?????? ??????????????? ??????????</span></h4><h4 style='font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 37, 41); text-align: left;'>:&nbsp; "+ wish + "</h4>";
 
            $("#content").attr("value", content);
            let write_form = $("#writeForm").serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/offlinePost/insertPost.do"
                , data: write_form
                , type: "post"
            }).done(function (data) {
                if (data == "success") {
                    alert("?????? ?????????????????????.");
                    if('${loginSession.type}'==2){
               		 location.href="${pageContext.request.contextPath}/offline/toMainEx.do?expert_id="+id
	               	 }else{
	               		 location.href="${pageContext.request.contextPath}/offline/toMain.do"
	               	 }
                } else {
                    console.log("nono");
                    alert("??? ??? ?????? ????????? ?????????????????????. ??????????????? ?????? ?????? ????????????.");
                }
            }).fail(function (rs) {
                alert("??? ??? ?????? ????????? ?????????????????????. ??????????????? ?????? ?????? ????????????.");
            }) 
        }

    </script>

</body>

</html>