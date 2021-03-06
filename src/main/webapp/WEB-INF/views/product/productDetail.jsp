<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

    <title>Document</title>
    <style>
        @font-face {
            font-family: 'BMHANNAAir';
            src:
                url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.0/BMHANNAAir.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .container {
            width: 900px;
            /* border: 1px solid black; */
            text-align: center;
        }

        .buttons {
            text-align: right;
            height: 30px;
        }

        i {
            margint-right: 10px;
        }

        #title {

            font-family: 'BMHANNAAir';
            padding: 30px;
            vertical-align: middle;
            height: 100px;
            /* border: 1px solid; */
        }

        #thumbNail {
            height: 500px;
            /* border: 1px solid black; */
        }

        #storeTitle {
            padding-left: 10px;
            border-top: 1px dotted #5f5d5d;
            margin-top: 30px;
            padding: 10px;
            height: 60px;
            /* border: 1px solid black; */
            font-size: 20px;
        }

        .storeTitleP {
            font-family: 'BMHANNAAir';
            font-size: 30px;
        }

        #storeTitleSpan {
            color: red;
        }

        #thumbNailImg {
            width: 100%;
           height : 450px;
           object-fit: contain;

        }

        #productImg {
            width: 100%;
            height: 100%;
        }

        #storeLink {
            height: 250px;
            /* border: 1px solid black; */
            text-align: center;
            padding-left: 35%;
            border-bottom: 1px dotted #5f5d5d;
        }

        #product {
            height: 100%;
            width: 260px;
        }

        #productPic {
            padding: 2px;
            height: 55%;
            /* border: 1px solid; */
        }

        .productInfo {
            margin-top : 30px;
            height: 45%;
            /* border: 1px solid black; */
        }

        #productName {
            font-family: 'BMHANNAAir';
            height: 65%;
            font-size: 17px;
            /* border: 1px solid black; */
            padding-top: 10px;
            padding-left: 8px;
            text-align: left;
        }

        #productPrice {
            font-family: 'BMHANNAAir';
            /* border: 1px solid black; */
            padding-bottom: 10px;
            font-size: 18px;
            text-align: left;
            padding-left: 8px;
            margin-top: 5px;

        }

        #upperBlank {
            height: 90px;
        }

        #productName {
            font-family: 'BMHANNAAir';
            font-size: 23px;
            font-weight: bold;
        }

        #productQuantity {
            font-family: 'BMHANNAAir';
            text-align: left;
            padding-left: 8px;
        }

        #quantityController {
            display: inline-block;
            width: 60%;
            height: 30px;
        }

        .priceTitle {
            font-family: 'BMHANNAAir';
            font-size: 15px;
        }

        #price {
            font-family: 'BMHANNAAir';
            font-size: 25px;
        }

        .productTotalArea {
            height: 60px;
            padding-top: 10px;
            margin-top: 20px;
            border-top: 1px dotted grey;
            text-align: left;
            padding-left: 8px;
        }

        .productButtons {
            width: 100%;
            border: 1px solid grey;
            height: 70px;
        }

        .parchaseBtn,
        .cart_buttons {
            float: left;
            font-family: 'BMHANNAAir';
            font-size: 20px;
        }

        .cart_buttons {
            width: 50%;
            height: 100%;
        }

        .parchaseBtn {
            vertical-align: middle;
            width: 50%;
            border: 1px solid grey;
            height: 100%;
            background-color: #FFBD3550;
            padding-top: 8px;
            cursor: pointer
        }


        #cartBtn {
            background-color: #F2789F50;
            padding-top: 8px;
            border: 1px solid grey;
            width: 100%;
            height: 100%;
            cursor: pointer;
        }

        /* 
        #likeFullBtn {
            display: none;
        }

        #heart {
            color: red;
        } */
        .likeClass {
            position: fixed;
            left: 370px;
            top: 230px;
            height: 62px;
            width: 60px;
            padding: 3px;
            text-align: center;
            cursor: pointer;
            font-size: 15px;
            font-family: 'BMHANNAAir';
            border: 3px solid #e05885;
            border-radius: 10px;
        }

        #likeEmpty {
            color: #e05885;
        }

        #likefull {
            color: white;
        }

        #likeBtnTitle {
            color: #e05885;
        }

        #likeFullBtnTitle {
            color: white;
        }

        .likeClass:hover {
            background-color: #e05885;
        }

        .likeClass:hover #likeEmpty {
            color: white;
        }

        .likeClass:hover #likeBtnTitle {
            color: white;
        }

        .likeFullClass {
            position: fixed;
            left: 370px;
            top: 230px;
            height: 62px;
            width: 60px;
            padding: 3px;
            text-align: center;
            cursor: pointer;
            font-size: 15px;
            font-family: 'BMHANNAAir';
            border: 3px solid #e05885;
            border-radius: 10px;
            background-color: #e05885;
            display: none;
        }

        #naviTab {
            font-size: 22px;
            font-family: 'BMHANNAAir';
        }

        #detailContent {
            margin-top: 70px;
        }

        .comments {
            /* width: 100%; */
            margin-top: 50px;
            /* border: 1px solid black; */
            height: 800px;
            font-family: 'BMHANNAAir';
        }

        .comment {
            position: relative;
        }

        .modifyComment {
            height: 100%;
            width: 100%;
            position: absolute;
            z-index: 1;
            /* border: 1px solid black; */
            border-top: 1px dotted black;
            /* border-bottom: 1px dotted black; */
        }

        .commentsModifyInput {
            padding-top: 5px;
            /* border-bottom: 1px dotted black; */
            padding-bottom: 5px;
        }

        .tab-content {
            height: 0;
        }

        .commentsInputArea {
            height: 300px;
            /* border: 1px solid black; */
        }

        .commentsLabel {
            text-align: left;
            font-size: 25px;
            height: 50px;
            /* border: 1px solid black; */
            vertical-align: middle;
            padding-left: 5px;
            padding-top: 10px;
            /* margin-bottom: 10px; */
            margin-bottom: 5px;
        }

        #commentsInput {
            height: 180px;
            width: 100%;
            resize: none;
            padding: 8px;
            font-size: 20px;
        }

        #commentsInput_cnt {
            height: 20px;
            text-align: left;
            padding-right: 10px;
        }

        #commentInsertBtn {
            text-align: right;
            margin-top: 10px;
            padding-right: 5px;
        }


        #commentModifyBtn {
            margin-top: 5px;
            text-align: right;
            padding-right: 5px;
        }

        .user_nickname {
            text-align: left;
            padding-left: 10px;
            padding-top: 10px;
            height: 22px;
            /* border: 1px solid black; */
            font-size: 20px;
            border-top: 1px dotted #494646;
            font-weight: bold;
            display: flex;
        }

        #user_id {
            padding-top: 5px;
        }

        .written_date {
            font-size: 15px;
            margin-left: 8px;
        }

        .comment_content {
            text-align: left;
            padding-left: 13px;
            padding-right: 10px;
            margin-top: 25px;
            font-size: 22px;
        }

        .divGroup {
            flex: 1;
        }

        #commentChange {
            text-align: right;
            font-size: 12px;
            color: #494646;
            padding-right: 10px;
            /* padding-top: 5px; */
            margin-bottom: 10px;
        }

        .dropdown {
            vertical-align: top;
            text-align: right;
        }

        #editComments {
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
        }

        .reactions {
            height: 33px;
            /* border: 1px solid black; */
            margin-top: 10px;
            padding-right: 63%;
            padding-left: 10px;
            margin-bottom: 10px;
            text-align: left;
            cursor: pointer;
        }

        .reaction {
            /* width: 40px; */
            /* border: 1px solid black; */
            height: 100%;
            float: left;
            margin-right: 15px;
        }

        .icon {
            /* border: 1px solid black; */
            /* width: 40px; */
            height: 100%;
            float: left;
        }

        .title {
            float: left;
            padding-left: 5px;
            font-size: 20px;
        }

        i {
            height: 50%;
            width: 100%;
            font-family: 'BMHANNAAir';
        }

        #likeTitle {
            text-align: left;
        }

        .blank {
            height: 20px;
            /* border-bottom: 1px dotted black; */
        }

        .modifyInput {
            height: 70px;
            width: 100%;
            resize: none;
            font-size: 20px;
            /* border-top : 1px dotted black; */
        }


        .replyInputDiv input {
            width: 100%;
            padding-left: 10px;
            padding-right: 10px;
            border-top: 0px;
            border-left: 0px;
            border-right: 0px;
            font-size: 20px;
            border-radius: 0px;

        }

        .replyInputDiv input:focus {
            outline: none;
            box-shadow: none;
        }

        .InsertReplyBtnArea {
            margin-top: 10px;
            text-align: right;
            /* margin-right: 10px; */
        }

        .reply_nickname,
        .reply_written_date,
        .reference_nickname {
            margin-left: 20px;
        }

        .reply_reactions div {
            float: left;
            margin-left: 20px;
        }

        .commentReply {
            text-align: left;
            margin-top: 10px;
        }

        .reply_nickname {
            font-size: 18px;
            font-weight: bold;
        }

        .reply_written_date {
            font-size: 14px;
            margin-left: 8px;
        }

        .deleteReply {
            font-size: 14px;
            margin-left: 10px;
            color: red;
            cursor: pointer;
        }

        .reply_content,
        .reference_nickname {
            font-size: 20px;
            font-family: 'BMHANNAAir';
        }

        .reply_content {
            padding-left: 15px;
        }

        .reply_content div {
            padding-left: 15px;

        }

        .reference_nickname {
            font-size: 20px;
            color: #6495ed;
            padding: 0;

        }

        .reply_replyArea:after {
            position: absolute;
        }

        .commentReply {
            padding-top: 5px;
            border-top: 1px dotted grey;
            border-bottom: 1px dotted grey;
        }
        .bottomBlank{
            height : 200px;
        }
    </style>
    <script>
    //????????? ????????? ?????? ?????? ????????? ????????????
    function selectLike_comment(comment_no){
    	let bid='${loginSession.user_id}';
    	let post_no = comment_no;
    		$.ajax({
                url: "${pageContext.request.contextPath}/like/selectLike.do?post_no=" + post_no + "&user_id=" + bid + "&type=5",
                type: "get"
            }).done(function (data) {
                if (data == "available") {
                	$("#likeBtn"+comment_no).css("color", "#e05885"); 
                    $("#likeArea"+comment_no).attr("value","1");
                }
            }).fail(function (e) {
                console.log(e);
            });
    }
    </script>
</head>

<body>
    <!-- ????????? ?????? -->
    <div class="likeClass">
        <i class="far fa-heart fa-2x" id="likeEmpty"></i><br>
        <span id="likeBtnTitle">?????????</span>
    </div>
    <div class="likeFullClass">
        <i class="far fa-heart fa-2x" id="likefull"></i><br>
        <span id="likeFullBtnTitle">?????????</span>
    </div>
    <div class="container mt-3">
        <c:if test="${loginSession.type==0}">
            <div class="buttons">
                <button type="button" class="btn btn-warning" id="modify">??????
                    ??????</button>
                <button type="button" class="btn btn-danger" id="delete">??????
                    ??????</button>
            </div>
        </c:if>

        <div class="row" id="upperBlank">
        </div>
        <div class="row" id="thumbNail">
            <div class="col-8">
                <img src="${pageContext.request.contextPath}/productThumbnail/${ProductDTO.image_path}"
                    id="thumbNailImg">
            </div>
            <div class="col-4 productInfo">
                <div class="productInput">
                    <div id="productName">${ProductDTO.name}</div>
                    <div id="productPrice">?????? : <span id="product_price">${ProductDTO.price}</span><span> ???</span></div>
                    <div id="productQuantity"><span>?????? : </span><span><input type="number" value="1"
                                id="quantityController" class="form-control"></span></div>
                </div>
                <div class="productTotalArea">
                    <div class="productTotal"><span class="priceTitle">??? ??????(??????) : </span><span
                            id="price">${ProductDTO.price}???</span><span class="priceTitle" id="priceQuantity">
                            (1???)</span></div>
                </div>
                <div class="productButtons">
                    <div class="parchaseBtn"><i class="far fa-credit-card fa-1x"></i> ?????? ??????</div>
                    <div class="cart_buttons">
                        <!--                         <div id="likeBtn">
                            ?????????
                        </div>
                        <div id="likeFullBtn">
                            ?????????
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                id="heart" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
                                    d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
                            </svg>
                        </div> -->
                        <div id="cartBtn"><i class="fas fa-shopping-cart fa-1x"></i> ????????????</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="storeTitle">
            <p class="storeTitleP">
                <span class="storeTitleP" id="storeTitleSpan"></span>
            </p>
        </div>
        <div class="row" id="naviTab">

            <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="detail-tab" data-bs-toggle="tab" data-bs-target="#detail"
                        type="button" role="tab" aria-controls="detail" aria-selected="true">????????????</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="comments-tab" data-bs-toggle="tab" data-bs-target="#comments"
                        type="button" role="tab" aria-controls="comments" aria-selected="false">?????? ??????</button>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="detail" role="tabpanel" aria-labelledby="detail-tab">
                    <div id="detailContent">${ProductDTO.content}</div>
                     <div class="bottomBlank"></div>
                </div>
                <div class="tab-pane fade" id="comments" role="tabpanel" aria-labelledby="comments-tab">
                    <div class="comments">
                        <div class="commentsInputArea">
                            <div class="commentsLabel">
                                <label id="commentsLabel">?????? ??????</label>
                            </div>
                            <div class="commentsInput">
                                <!-- <textarea id="commentsInput"></textarea> -->
                                <textarea id="commentsInput" name="commentsInput" cols="30" rows="10"
                                    placeholder="?????? ?????? ?????? ????????? ?????? ???????????????! (150??? ??????)"></textarea>

                                <div id="commentInsertBtn">
                                    <span id="commentsInput_cnt">(0 / 150)</span>
                                    <button id="insertComment" class="btn btn-success">??????
                                        ??????</button>
                                </div>
                            </div>
                        </div>
                        <div class="allComments">
                            <div class="commentsLabel">
                                <label id="commentsLabel">?????? ?????? (${CommentList.size()})</label>
                            </div>
                            <c:forEach var="dto" items="${CommentList}">
                                <div class="comment">
                                    <div class="modifyComment" value="${dto.comment_no}" hidden>
                                        <div>
                                            <div class="commentsModifyInput">
                                                <!-- <textarea id="commentsInput"></textarea> -->
                                                <textarea class="modifyInput" name="${dto.comment_no}" cols="30"
                                                    rows="10">${dto.content}</textarea>

                                                <div id="commentModifyBtn">
                                                    <span class="modifyInput_cnt" name="${dto.comment_no}">(0
                                                        / 150)</span>
                                                    <button id="cancelModify" class="btn btn-warning"
                                                        onclick="commentFormVisible(${dto.comment_no})">??????</button>
                                                    <button id="updateComment" class="btn btn-primary"
                                                        onclick="updateComment(${dto.comment_no},'${dto.content}')">??????
                                                        ??????</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="commentForm" value="${dto.comment_no}">
                                        <div class="user_nickname">
                                            <div class="divGroup" id="user_id">
                                                <label>${dto.user_nickname} |</label><label class="written_date">
                                                    ${dto.written_date}</label>
                                            </div>
                                            <div class="divGroup"></div>
                                            <div class="divGroup" id="commentChange">
                                                <div class="dropdown">
                                                    <c:if
                                                        test="${dto.user_nickname eq loginSession.user_nickname || loginSession.type==0}">
                                                        <ul class="btn btn-default dropdown-toggle" type="button"
                                                            id="dropdownMenuButton1" data-bs-toggle="dropdown"
                                                            aria-expanded="false" aria-label="Left Align">
                                                            <!-- <span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span> -->
                                                            <label id="editComments">?????? ??????</label>
                                                        </ul>
                                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                            <li class="dropdown-item"
                                                                onclick="pressModify(${dto.comment_no},'${dto.content}')">
                                                                ??????</li>
                                                            <li class="dropdown-item"
                                                                onclick="checkDelete(${dto.comment_no})">??????</li>
                                                        </ul>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment_content">${dto.content}</div>

                                        <div class="reactions">
                                            <div class="reaction replyArea" id="${dto.comment_no}">
                                                <div class="icon" id="replyIcon">
                                                    <i class="far fa-comment-dots fa-2x"></i>
                                                </div>
                                                <div class="title" id="replyTitle">????????? ??????</div>
                                            </div>
                                            <div class="reaction" id="likeArea${dto.comment_no}" value="0" onclick="likeComment(${dto.comment_no})">
                                                <div class="icon" id="likeIcon">
                                                    <i class="fas fa-heart fa-2x" id="likeBtn${dto.comment_no}"></i>
                                                </div>
                                                <script>selectLike_comment(${dto.comment_no})</script>
                                                <!-- <i class="fas fa-heart"></i> -->
                                                <div class="title" id="likeTitle">????????????</div>
                                            </div>
                                        </div>


                                        <div class="replies" name="${dto.comment_no}" hidden>

                                            <!-- ???????????? ???????????? ?????? ????????? ??? ????????? ?????? -->
                                            <c:if test="${loginSession.type==0}">
                                                <div class="replyInputArea">
                                                    <div class="replyInputDiv">
                                                        <input type="text" class="form-control"
                                                            placeholder="????????? ????????? ?????????." name="${dto.comment_no}">
                                                    </div>
                                                    <div class="InsertReplyBtnArea">
                                                        <button type="button" class="btn btn-secondary insertReplyBtn"
                                                            name="${dto.comment_no}"
                                                            onclick="insertReply(${dto.comment_no})">?????? ??????</button>
                                                    </div>
                                                </div>
                                            </c:if>

                                            <div class="commentReplyArea" id="commentReplyArea${dto.comment_no}">
                                            </div>
                                            <div class="blank"></div>
                                        </div>
                                    </div>
                            </c:forEach>

                        </div>
                    </div>
                    <div class="bottomBlank"></div>
                </div>
            </div>
        </div>
    </div>
    <script>


        //????????? ????????? ??? ?????? ?????? + ?????? ????????????
        $("#quantityController").on("change", function () {
            let quantity = $(this).val();
            console.log(quantity);
            if (quantity < 0) {
                alert("1?????? ?????? ????????? ???????????? ??? ????????????.");
                $(this).val("1");
                $("#price").html(${ ProductDTO.price } + "???");
                $("#priceQuantity").html(" (1???)");
                return;
            } else if (quantity > ${ ProductDTO.stock }){
            alert(${ ProductDTO.stock } + " ?????? ????????? ??????????????????. ?????? ???????????? ?????? ???????????????.");
            $(this).val("1");
            $("#price").html(${ ProductDTO.price } + "???");
            $("#priceQuantity").html(" (1???)");
            return;
        }else {
            let price = $("#product_price")[0].innerHTML;
            console.log(price);
            let total = parseInt(quantity) * parseInt(price);
            console.log(total);
            $("#price").html(total + "???");
            $("#priceQuantity").html(" (" + quantity + "???)");
        }
        })

        //?????? ?????? ?????? ??? 
        $(".parchaseBtn").on("click", function () {
            console.log("????????????");
            let product_no = ${ ProductDTO.product_no }
            let quantity = $("#quantityController").val();
            console.log(product_no);
            location.href = "/order/toOrder.do?product_no=" + product_no + "&quantity=" + quantity;
        })

        //?????????????????? ????????? ???????????? ???????????? ??????
        //???????????? ?????? ?????????
        $("#cartBtn").click(function (e) {
            let num = ${ ProductDTO.product_no };
            let id = '${loginSession.user_id}';
            let quantity = $("#quantityController").val();


            $.ajax({
                url: "${pageContext.request.contextPath}/cart/insertCart.do?product_no=" + num + "&user_id=" + id + "&quantity=" + quantity,
                type: "get"
            }).done(function (data) {
                if (data == 1) {
                    let con = confirm("????????? ??????????????? ???????????????. ??????????????? ??????????????????????????");
                    if (con == true) {
                        location.href = "${pageContext.request.contextPath}/cart/selectCart.do?user_id=" + id;
                    }
                } else if (data == -1) {
                    let con = confirm("??????????????? ????????? ????????? ????????????. ??????????????? ??????????????????????????");
                    if (con == true) {
                        location.href = "${pageContext.request.contextPath}/cart/selectCart.do?user_id=" + id;
                    }
                }
            }).fail(function (e) {
                console.log(e);
            })
        })

        //?????? ?????? ?????? ?????? ??? ?????? ???????????? ??????
        $("#modify").on("click", function () {
            console.log("?????????");
            location.href = "/product/toModify.do?product_no=${ProductDTO.product_no}";
        })

        //?????? ?????? ?????? ??? ?????? ??? ???????????? ??????
        //?????? ??? ????????? "????????? ??????"?????? ?????? ???
        $("#delete").on("click", function () {
            if (confirm("?????? ????????? ?????? ???????????????. ?????? ?????????????????????????")) {
                let product_no = ${ ProductDTO.product_no }
                $.ajax({
                    url: "/product/deleteProduct.do"
                    , type: "post"
                    , data: { product_no: product_no }
                }).done(function (data) {
                    if (data == "success") {
                        location.href = "/admin/toProductManagement";
                    } else {
                        alert("??? ??? ?????? ????????? ???????????????. ??????????????? ?????? ?????? ????????????.");
                    }
                }).fail(function (rs) {
                    alert("??? ??? ?????? ????????? ???????????????. ??????????????? ?????? ?????? ????????????.");
                    console.log(rs);
                });
                location.href = "/product/deleteProduct.do?product_no=${ProductDTO.product_no}";
            }
        })


        //????????? ?????? ??????
        $('.likeClass').click(function () {
            let bid = '${loginSession.user_id}'
            let post_no = '${ProductDTO.product_no}'


            $(this).css("display", "none")
            $(".likeFullClass").css("display", "block");

            $.ajax({
                url: "${pageContext.request.contextPath}/like/plus.do?post_no=" + post_no + "&user_id=" + bid + "&type=3",
                type: "get"
            }).done(function (data) {
                if (data == "available") {
                    console.log("????????? ??????")
                } else if (data == "unavailable") {
                    alert("????????? ?????? ??????");
                }
            }).fail(function (e) {
                console.log(e);
            })
        })

        //????????? ?????? ??????
        $('.likeFullClass').click(function () {
            let bid = '${loginSession.user_id}'
            let post_no = '${ProductDTO.product_no}'


            $(this).css("display", "none")
            $(".likeClass").css("display", "block");

            $.ajax({
                url: "${pageContext.request.contextPath}/like/minus.do?post_no=" + post_no + "&user_id=" + bid + "&type=3",
                type: "get"
            }).done(function (data) {
                if (data == "available") {
                    console.log("????????? ?????? ??????")
                } else if (data == "unavailable") {
                    alert("????????? ?????? ?????? ??????");
                }
            }).fail(function (e) {
                console.log(e);
            })
        })

        //????????? ??? ???????????? ???????????? ????????? ?????? ?????????????????? ???????????? ??????
        $(document).ready(function () {
            selectLike();
        })

        //????????? ??? ???????????? ???????????? ????????? ?????? ?????????????????? ???????????? ??????
        function selectLike() {
            let bid = '${loginSession.user_id}'
            let post_no = '${ProductDTO.product_no}'
            $.ajax({
                url: "${pageContext.request.contextPath}/like/selectLike.do?post_no=" + post_no + "&user_id=" + bid + "&type=3",
                type: "get"
            }).done(function (data) {
                if (data == "available") {
                    $(".likeFullClass").css("display", "block")
                    $(".likeClass").css("display", "none");
                } else if (data == "unavailable") {
                    $(".likeFullClass").css("display", "none")
                    $(".likeClass").css("display", "block");
                }
            }).fail(function (e) {
                console.log(e);
            });
        }

        //?????? ?????? ??? ?????? ???????????? ???????????? ??????
        $(document).ready(function () {
            $('#commentsInput').on('keyup', function () {
                $('#commentsInput_cnt').html("(" + $(this).val().length + " / 150)");

                if ($(this).val().length > 150) {//150?????? ?????? ??????
                    $(this).val($(this).val().substring(0, 150)); //150???????????? ????????? ??????
                    $('#commentsInput_cnt').html("(150 / 150)");
                    alert("150??? ?????? ???????????? ??? ????????????.");
                }
            });
        });

        //?????? ?????? ????????? ???????????? ?????? ?????????
        $(document).ready(function () {
            $('.dropdown-toggle').dropdown()
            selectLike(); //????????? ???????????? ??????????????? ??????
        });

        //?????? ?????? ????????? ?????? ?????? ???????????? ??????
        $(document).on("keyup", ".modifyInput", function () {
            let name = this.name;
            console.log(name);
            commentCnt = $("span[name='" + name + "']")[0];
            console.log(commentCnt);
            commentCnt.innerHTML = "(" + $(this).val().length + " / 150)"
            if ($(this).val().length > 150) {
                $(this).val($(this).val().substring(0, 150));
                commentCnt.innerHTML = "(" + $(this).val().length + " / 150)"
                alert("150??? ?????? ???????????? ??? ????????????.");
            }
        });

        //?????? ?????? ?????? ?????? ??? ?????????
        //AJAX RETURN : ?????? ????????? ????????? ????????? ?????? ????????? ????????????
        $("#insertComment").on("click", function () {
            console.log("????????????");
            if ($("#commentsInput").val() != "") { //???????????? ???????????? ?????? ??????
                let content = $("#commentsInput").val(); //????????? ??????
                let post_no = ${ ProductDTO.product_no }; //product_no
                let type = 0;
                $.ajax({
                    url: "/comment/insertComment.do"
                    , type: "post"
                    , data: { content: content, post_no: post_no, type: type }
                }).done(function (data) {
                    console.log(data);
                    $("#commentsInput").val("");
                    printComment(data);
                }).fail(function (rs) {
                    console.log(rs);
                })
            } else {
                alert("????????? ????????? ?????????.");
            }
        })


        //?????? ?????? ?????? ????????? ?????????
        //?????? ??????????????????? ????????? --> OK????????? ?????? ??????
        //AJAX RETURN : ?????? ?????? ??? ?????? ?????? list ????????????
        function checkDelete(comment_no) {
            if (confirm("?????? ???????????????????")) {
                let post_no = ${ ProductDTO.product_no }
                let type = 0;
                $.ajax({
                    url: "/comment/deleteComment.do"
                    , type: "post"
                    , data: { comment_no: comment_no, post_no: post_no, type: type }
                }).done(function (data) {
                    console.log(data);
                    printComment(data);
                }).fail(function (rs) {
                    console.log(rs);
                });
            } else {
                console.log(comment_no);
                return false;
            }
        }

        //AJAX??? ?????? ????????? ???????????? ????????? ??????
        //?????? ?????? ????????? ???????????? ??????.
        //PARAMETER : Commentlist => ???????????? ????????? foreach ????????? ??????
        function printComment(Commentlist) {
            $(".allComments").empty();
            var option = "<div class='commentsLabel'><label id='commentsLabel'>?????? ?????? (" + Commentlist.length + ")</label></div>";
            $(".allComments").append(option);
            Commentlist.forEach(function (dto) {
                option = "<div class='comment'>\
                    <div class='modifyComment' value='"+ dto.comment_no + "' hidden>\
                        <div >\
                            <div class='commentsModifyInput'>\
                                <textarea class='modifyInput' name='"+ dto.comment_no + "' cols='30' rows='10'\
                                    >"+ dto.content + "</textarea>\
                                <div id='commentModifyBtn'>\
                                    <span class='modifyInput_cnt' name='"+ dto.comment_no + "'>(0 / 150)</span>\
                                    <button id='cancelModify' class='btn btn-warning' onclick='commentFormVisible("+ dto.comment_no + ")'>??????</button>\
                                    <button id='updateComment' class='btn btn-primary' onclick=\"updateComment("+ dto.comment_no + ",'" + dto.content + "')\">?????? ??????</button>\
                                </div>\
                            </div>\
                        </div>\
                    </div>\
                    <div class='commentForm' value='"+ dto.comment_no + "'>\
                        <div class='user_nickname'>\
                            <div class='divGroup' id='user_id'>\
                            <label>"+ dto.user_nickname + " |</label><label class='written_date'> " + dto.written_date + "</label>\
                            </div>\
                            <div class='divGroup'></div>\
                            <div class='divGroup' id='commentChange"+ dto.comment_no + "'>\
                            <div class='dropdown' id='dropdown"+ dto.comment_no + "'>\
                            </div>\
                            </div>\
                        </div>\
                        <div class='comment_content'>"+ dto.content + "</div>\
                        <div class='reactions' id='reactions"+ dto.comment_no + "'>\
                            <div class='reaction replyArea' id='"+ dto.comment_no + "'>\
                                <div class='icon' id='replyIcon'><i\
                                        class='far fa-comment-dots fa-2x'></i>\
                                </div>\
                                <div class='title' id='replyTitle'>??????</div>\
                            </div>\
                            <div class='reaction' id='likeArea"+dto.comment_no+"' value='0' onclick='likeComment("+dto.comment_no+")'>\
                                <div class='icon' id='likeIcon'> <i class='fas fa-heart fa-2x' id='likeBtn"+dto.comment_no+"'></i>\
                                </div>\
                                <div class='title' id='likeTitle'>????????????</div>\
                            </div>\
                        </div>\
                        <div class='replies' hidden>\
                        <div class='replyInputArea'>\
                        </div>\
                        <div class='commentReplyArea' id='commentReplyArea"+ dto.comment_no + "'>\
                        </div>\
                    </div>\
                        <div class='blank'></div>\
                    </div>\
                </div>"
                $(".allComments").append(option);
                if (dto.user_nickname == '${loginSession.user_nickname}' || ${ loginSession.type }== 0) {// ?????? ??? ??????????????? ???????????? ?????? ?????? ?????? ?????? ?????????
                $("div[id='dropdown" + dto.comment_no + "']").append("<ul class='btn btn-default dropdown-toggle' type='button'\
                            id='dropdownMenuButton1' data-bs-toggle='dropdown'\
                            aria-expanded='false' aria-label='Left Align'>\
                            <label id='editComments'>?????? ??????</label>\
                        </ul>\
                        <ul class='dropdown-menu' aria-labelledby='dropdownMenuButton1'>\
                        <li class='dropdown-item' onclick=\"pressModify("+ dto.comment_no + ",'" + dto.content + "')\">??????</li>\
                            <li class='dropdown-item'\
                                onclick='checkDelete("+ dto.comment_no + "," + dto.post_no + ")'>\
                                ??????\
                            </li>\
                        </ul>")
            }else if (${ loginSession.type == 0 }) { //????????? ???????????? ????????? ??? ??? ????????? ??????
                $("replyInputArea").append("<div class='replyInputDiv'>\
                                <input type='text' class='form-control' placeholder='????????? ????????? ?????????.' name='"+ dto.comment_no + "'>\
                            </div>\
                            <div class='InsertReplyBtnArea'>\
                                <button type='button' class='btn btn-secondary insertReplyBtn' name='"+ dto.comment_no + "' onclick='insertReply(" + dto.comment_no + ")'>?????? ??????</button>\
                            </div>");
            }
                var reference_no = dto.reference_no;
            selectLike_comment(dto.comment_no);
        })

        };


        // ?????? ?????? ????????? ?????? ?????? '??????'????????? ????????? ???
        // PARAMETER : comment_no, origin_comment (????????? ?????? ?????? + ?????? ?????? ????????? ?????????)
        function pressModify(comment_no, origin_comment) {
            console.log("????????????");
            let commentDiv = $("div[value='" + comment_no + "']");
            modifyComment = commentDiv[0];
            let modifyInput = $("textarea[name='" + comment_no + "']")
            commentForm = commentDiv[1];
            console.log(modifyComment);
            console.log(commentForm);
            modifyComment.hidden = false;
            commentForm.style.visibility = "hidden";
            let textarea = ($("textarea[name='" + comment_no + "']")[0])
            textarea.value = origin_comment;
            console.log((textarea.value).length);
            commentCnt = $("span[name='" + comment_no + "']")[0];
            console.log(commentCnt);
            commentCnt.innerHTML = "(" + (textarea.value).length + " / 150)"
            return;

        }

        //?????? ????????? ?????? ?????? ?????? ???????????? ????????????
        //???????????? ?????? ?????? ?????? ??? ??????
        function commentFormVisible(comment_no) {
            let commentDiv = $("div[value='" + comment_no + "']");
            modifyComment = commentDiv[0];
            commentForm = commentDiv[1];
            console.log(modifyComment);
            console.log(commentForm);
            commentForm.style.visibility = "visible"
            modifyComment.hidden = true;
            return
        }

        //????????? ????????? ???????????? ?????????
        function updateComment(comment_no, origin_content) {
            let textarea = $("textarea[name='" + comment_no + "']");
            let content = textarea[0].value;
            let post_no = ${ ProductDTO.product_no }
            let type = 0;
            console.log(textarea);
            console.log(content);
            if (content == "") { //???????????? ???????????? ?????? --> ????????? ????????? ?????????.
                alert("????????? ????????? ?????????.");
                return;
            }
            if (origin_content != content) { //??????????????? ?????? ????????? ?????? ????????? (?????? ????????????)
                $.ajax({
                    url: "/comment/modifyComment.do"
                    , type: "post"
                    , data: { comment_no: comment_no, content: content, post_no: post_no, type: type }
                }).done(function (data) {
                    console.log(data);
                    printComment(data);
                }).fail(function (rs) {
                    console.log(rs);
                })
            } commentFormVisible(comment_no);
        }

        //?????? ?????? ?????????
        function insertReply(comment_no) {
            let content = $("input[name='" + comment_no + "']")[0].value;
            console.log(content);
            let post_no = ${ ProductDTO.product_no }
            let type = 0;
            
          //????????? ??????
            let typed = 2;
            let from_NN = '${loginSession.user_nickname}';
            let sendType = 1;

            
            if (content == "") { //???????????? ????????? ?????????
                alert("????????? ????????? ?????????.");
                return;
            } else { //????????? ?????? ??????
                $.ajax({
                    url: "/comment/insertReply.do"
                    , type: "post"
                    , data: { comment_no, comment_no, post_no: post_no, content: content, type: type }
                }).done(function (data) {
                	
                	$.ajax({
                		url:"/comment/getReceiver.do?comment_no="+comment_no
                		, type:"get"
                	}).done(function(result){
                		console.log("?????????????????? ??????")
                		let receiver = result
                        //????????? ??????
          				let msg = typed+","+post_no+","+post_no+","+sendType+","+from_NN+","+receiver;
                        ws.send(msg);
                	}).fail(function(e){
                		console.log(e);
                	});
                    console.log(data);
                    $("input[name='" + comment_no + "']").val("");
                    getReplies(data, comment_no);
                }).fail(function (rs) {
                    console.log(rs);
                })
            }
        }

        //?????? ???????????? ????????? ??? ????????? ??????
        //?????? ????????? ?????? ?????? ????????????
        $(document).on("click", ".replyArea", function () {
            let comment_no = ($(this)).attr('id');
            let commentForm = ($(this).parent().parent())[0];
            if (commentForm.children[3].hidden) { //???????????? ?????? ?????? ??????
                $.ajax({
                    url: "/comment/getAllReplies.do"
                    , type: "post"
                    , data: { comment_no: comment_no }
                }).done(function (data) {
                    console.log(data);
                    getReplies(data, comment_no);
                }).fail(function (rs) {
                    console.log(rs);
                })
            } commentForm.children[3].hidden = !commentForm.children[3].hidden;
        })



        //printComment??? ?????? ???????????? ????????? ???????????? ?????????
        //PARAMETER : data, comment_no ==> ?????? ?????????, ?????? ?????? ??????(??? ???????????? ???????????? ?????????)
        function getReplies(data, comment_no) {
            $("div[id='commentReplyArea" + comment_no + "']").empty();
            if (data.length == 0) { //????????? ?????? ??????
                $("div[id='commentReplyArea" + comment_no + "']").append("????????? ????????? ????????????.");
                return;
            }
            data.forEach(function (dto) {
                var option = "<div class='commentReply'>\
                   <div class='reply_nickname' id='reply_nickname"+ dto.comment_no + "'><span>" + dto.user_nickname + " |</span>\
                                               <span class='reply_written_date'>"+ dto.written_date + "</span>\
                                               </div>\
                   <div class='reply_content' id='reply_content"+ dto.comment_no + "'>" + dto.content + "</div>\
                   <div class='reply_reactions' id='reply_reactions"+ dto.comment_no + "'>\
                   </div>\
               </div>\
          </div>"

                $("div[id='commentReplyArea" + comment_no + "']").append(option);
                if (${ loginSession.type }== 0) {
                $("div[id='reply_nickname" + dto.comment_no + "']").append("<span class='deleteReply' onclick='deleteReply(" + dto.comment_no + "," + dto.parent_no + ")'>??????</span>")
            }
        })
        }

        //?????????(????????? ??????)????????? ?????? ??????
        /*         //@?????? ???????????? ????????? input??? ?????????
                function reply_reply(comment_no, user_nickname) {
                    console.log($("div[id='reply_replyArea" + comment_no + "']"));
                    console.log($("Input[id='reply_replyInput" + comment_no + "']")[0]);
                    console.log($("Input[id='reply_replyInput" + comment_no + "']").attr("placeholder", "@" + user_nickname + " ????????? ????????? ?????????."));
                    $("div[id='reply_replyArea" + comment_no + "']")[0].hidden = !$("div[id='reply_replyArea" + comment_no + "']")[0].hidden
                } */

        //????????? ??????
        function insertReply_reply(parent_no, comment_no) {
            console.log(comment_no);
            let replyInput = $("Input[id='reply_replyInput" + comment_no + "']")[0];
            content = replyInput.value;
            console.log(content);
            let post_no = ${ ProductDTO.product_no }
            let type = 0;
            if (content == "") { //????????? ???????????? ???????????? ??????
                alert("????????? ????????? ?????????.");
            } else {
                $.ajax({
                    url: "/comment/insertReply_reply.do"
                    , type: "post"
                    , data: { comment_no: comment_no, parent_no: parent_no, content: content, post_no: post_no, type: type }
                }).done(function (data) {
                    console.log(data);
                    getReplies(data, parent_no);
                }).fail(function (rs) {
                    console.log(rs);
                })
            }
        }


        //?????? ??????
        //?????? ?????? ?????? ??????
        function deleteReply(comment_no, parent_no) {
            $.ajax({
                url: "/comment/deleteReply.do"
                , type: "post"
                , data: { comment_no: comment_no, parent_no: parent_no }
            }).done(function (data) {
                getReplies(data, parent_no);
            }).fail(function (rs) {
                console.log(rs);
            })
        }

        /*         function toReportPage(comment_no) {
                    location.href = "/report/toReportPage?comment_no=" + comment_no;
                }
         */
         
       //?????? ????????? ??????
         function likeComment(comment_no){
         	let bid = '${loginSession.user_id}';
         	let post_no = comment_no;
         	let value = $("#likeArea"+comment_no).attr("value");
         	
         	//????????? ?????? ?????? 
        	let from_NN = '${loginSession.user_nickname}';
        	let receiver;
        	let type=4;
        	let sendPostNO='${PostDTO.post_no}';
        	let sendType = 1;
        	
         	if(value=="0"){ //???????????? ???????????? ?????? ??????
         		$("#likeBtn"+comment_no).css("color", "#e05885"); 
                 $("#likeArea"+comment_no).attr("value","1");
                 console.log($("#likeArea"+comment_no).attr("value"));
             	$.ajax({
                     url: "${pageContext.request.contextPath}/like/plus.do?post_no=" + post_no + "&user_id=" + bid + "&type=5",
                     type: "get"
                 }).done(function (data) {
                     if (data == "available") {
                         console.log("????????? ??????")
                         receiver= data
                         
 						//????????? ??????
 						let msg = type+","+post_no+","+sendPostNO+","+sendType+","+from_NN+","+receiver;
                         ws.send(msg);
                     } else if (data == "unavailable") {
                         alert("????????? ?????? ??????");
                     }
                     return;
                 }).fail(function (e) {
                     console.log(e);
                 })
         	}else{//???????????? ???????????? ??????
         		$("#likeBtn"+comment_no).css("color", "black"); 
                 $("#likeArea"+comment_no).attr("value","0");
                 console.log($("#likeArea"+comment_no).attr("value"));
                 $.ajax({
                     url: "${pageContext.request.contextPath}/like/minus.do?post_no=" + post_no + "&user_id=" + bid + "&type=5",
                     type: "get"
                 }).done(function (data) {
                     if (data == "available") {
                         console.log("????????? ?????? ??????")
                     } else if (data == "unavailable") {
                         alert("????????? ?????? ?????? ??????");
                     }
                 }).fail(function (e) {
                     console.log(e);
                 })
         	}
         	
         	
         }
    </script>
</body>

</html>