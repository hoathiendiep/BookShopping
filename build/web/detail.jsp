<%-- 
    Document   : detail
    Created on : Mar 26, 2020, 8:20:05 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>

        <meta charset="utf-8" />
        <title>BookHouse</title>
        <link rel="stylesheet" href="Project.css" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
                                    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
                                        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
                                            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                                <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
                                                    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
                                                    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
                                                    <style>
                                                        * {
                                                            margin: 0px;
                                                            padding: 0px;
                                                        }

                                                        body {
                                                            background: #F0F0F0;
                                                            margin: 0;
                                                        }

                                                        h1 {
                                                            margin-right: 40px;
                                                        }

                                                        .menu {
                                                            width: 100%;
                                                            height: 100%;
                                                            padding-bottom: 20px;
                                                            background-color: #343a40 !important;
                                                        }

                                                        .leftmenu {
                                                            width: 25%;
                                                            line-height: 100px;
                                                            float: left;
                                                        }

                                                        .leftmenu h4 {
                                                            padding-left: 70px;
                                                            font-weight: bold;
                                                            color: #fff;
                                                            font-size: 60px;
                                                            font-family: cursive;
                                                        }

                                                        .rightmenu ul li {
                                                            font-family: 'Montserrat', sans-serif;
                                                            display: inline-block;
                                                            list-style: none;
                                                            font-size: 15px;
                                                            color: rgba(255,255,255,.5);
                                                            font-weight: bold;
                                                            line-height: 100px;
                                                            margin-left: 90px;
                                                            text-transform: uppercase;
                                                        }

                                                        .menu a{
                                                            color: rgba(255,255,255,.5);
                                                        }
                                                        .menu a:hover{
                                                            color: #f2f2f2;
                                                            text-decoration: none;
                                                        }
                                                        .menu .dropdown-content a {
                                                            color: black;
                                                            padding: 5px 10px;
                                                            text-decoration: none;
                                                            display: block;
                                                            font-size: 10px;
                                                            font-family: 'Montserrat', sans-serif;
                                                            border-radius: 25px;
                                                        }
                                                        .rightmenu ul {
                                                            margin-left: 423px;
                                                        }

                                                        .rightmenu ul li:hover {
                                                            color: #f2f2f2;
                                                            cursor: pointer;
                                                        }

                                                        .rightmenu ul li:active {
                                                            cursor: pointer;
                                                        }


                                                        * {
                                                            box-sizing: border-box
                                                        }

                                                        .dpdwn .dropdown-content {
                                                            display: none;
                                                        }

                                                        .dpdwn:hover .dropdown-content {
                                                            display: block;
                                                        }

                                                        .dropdown-content {
                                                            display: none;
                                                            position: absolute;
                                                            background-color: #f1f1f1;
                                                            min-width: 160px;
                                                            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                                                            z-index: 1;
                                                            border-radius: 25px;
                                                        }

                                                        .dropdown-content a {
                                                            color: black;
                                                            padding: 5px 10px;
                                                            text-decoration: none;
                                                            display: block;
                                                            font-size: 10px;
                                                            font-family: 'Montserrat', sans-serif;
                                                            border-radius: 25px;
                                                        }

                                                        .dropdown-content a:hover {
                                                            background-color: #ddd;
                                                        }

                                                        /* Show the dropdown menu on hover */
                                                        .dropdown:hover .dropdown-content {
                                                            display: block;
                                                        }

                                                        /* Change the background color of the dropdown button when the dropdown content is shown */
                                                        .dropdown:hover .dropbtn {
                                                            background-color: #3e8e41;
                                                        }


                                                        a {
                                                            text-decoration: none;
                                                        }


                                                        .footer {
                                                            background-color: #303036;
                                                            color: #d3d3d3;
                                                            height: 400px;
                                                            position: relative;
                                                            left: 0;
                                                            bottom: 0;
                                                            width: 100%;
                                                            background-color: black;
                                                            height: 200px;
                                                            color: white;
                                                            text-align: center;
                                                            padding-top: 20px;
                                                            clear: both;
                                                        }

                                                        .dropdown-container {
                                                            display: none;
                                                            padding-left: 8px;
                                                        }

                                                        .col-md-8 {
                                                            flex: 0 0 66.666667%;
                                                            /* max-width: 66.666667%; */
                                                            width: 700px;
                                                            /* padding: 18px; */
                                                            padding-top: 10px;
                                                        }

                                                        ul > li {
                                                            margin-right: 25px;
                                                            font-weight: lighter;
                                                            cursor: pointer
                                                        }

                                                        li.active {
                                                            border-bottom: 3px solid silver;
                                                        }

                                                        .item-photo {
                                                            display: flex;
                                                            justify-content: center;
                                                            align-items: center;
                                                            border-right: 1px solid #f6f6f6;
                                                        }

                                                        .menu-items {
                                                            list-style-type: none;
                                                            font-size: 11px;
                                                            display: inline-flex;
                                                            margin-bottom: 0;
                                                            margin-top: 20px
                                                        }

                                                        .btn-success {
                                                            width: 100%;
                                                            border-radius: 0;
                                                        }

                                                        .section {
                                                            width: 100%;
                                                            /* margin-left: -15px; */
                                                            padding: 2px;
                                                            padding-left: 15px;
                                                            padding-right: 15px;
                                                            background: #f8f9f9;
                                                        }

                                                        .title-price {
                                                            margin-top: 30px;
                                                            margin-bottom: 0;
                                                            color: black
                                                        }

                                                        .title-attr {
                                                            margin-top: 0;
                                                            margin-bottom: 0;
                                                            color: black;
                                                        }

                                                        .btn-minus {
                                                            cursor: pointer;
                                                            font-size: 7px;
                                                            display: flex;
                                                            align-items: center;
                                                            padding: 5px;
                                                            padding-left: 10px;
                                                            padding-right: 10px;
                                                            border: 1px solid gray;
                                                            border-radius: 2px;
                                                            border-right: 0;
                                                        }

                                                        .btn-plus {
                                                            cursor: pointer;
                                                            font-size: 7px;
                                                            display: flex;
                                                            align-items: center;
                                                            padding: 5px;
                                                            padding-left: 10px;
                                                            padding-right: 10px;
                                                            border: 1px solid gray;
                                                            border-radius: 2px;
                                                            border-left: 0;
                                                        }

                                                        div.section > div {
                                                            width: 100%;
                                                            display: inline-flex;
                                                        }

                                                        div.section > div > input {
                                                            margin: 0;
                                                            padding-left: 5px;
                                                            font-size: 10px;
                                                            padding-right: 5px;
                                                            max-width: 18%;
                                                            text-align: center;
                                                        }

                                                        .attr, .attr2 {
                                                            cursor: pointer;
                                                            margin-right: 5px;
                                                            height: 20px;
                                                            font-size: 10px;
                                                            padding: 2px;
                                                            border: 1px solid gray;
                                                            border-radius: 2px;
                                                        }

                                                        .attr.active, .attr2.active {
                                                            border: 1px solid orange;
                                                        }

                                                        @media (max-width: 426px) {
                                                            .container {
                                                                margin-top: 0px !important;
                                                            }

                                                            .container > .row {
                                                                padding: 0 !important;
                                                            }

                                                            .container > .row > .col-xs-12.col-sm-5 {
                                                                padding-right: 0;
                                                            }

                                                            .container > .row > .col-xs-12.col-sm-9 > div > p {
                                                                padding-left: 0 !important;
                                                                padding-right: 0 !important;
                                                            }

                                                            .container > .row > .col-xs-12.col-sm-9 > div > ul {
                                                                padding-left: 10px !important;
                                                            }

                                                            .section {
                                                                width: 104%;
                                                            }

                                                            .menu-items {
                                                                padding-left: 0;
                                                            }
                                                        }

                                                        .row {
                                                            display: -ms-flexbox;
                                                            display: flex;
                                                            -ms-flex-wrap: wrap;
                                                            flex-wrap: wrap;
                                                            margin-left: 63px;
                                                        }

                                                        .container {
                                                            max-width: 1140px;
                                                            margin: 10px;
                                                            display: inline;
                                                        }

                                                        .section {
                                                            width: 100%;
                                                            /* margin-left: -15px; */
                                                            padding: 2px;
                                                            padding-left: 15px;
                                                            padding-right: 15px;
                                                            background: white;
                                                        }

                                                        li.active {
                                                            border-bottom: 3px solid silver;
                                                            font-size: 30px;
                                                        }
                                                        .qoute {
                                                            color: black;
                                                            display: -webkit-box;
                                                            margin-top: 10px;
                                                        }
                                                        .qoute img {
                                                            width: 130px;
                                                            height: 150px;
                                                            margin-right: 13px;
                                                        }
                                                        .footer {
                                                            background-color: #303036;
                                                            color: #d3d3d3;
                                                            height: 400px;
                                                            position: relative;
                                                            left: 0;
                                                            bottom: 0;
                                                            width: 100%;
                                                            background-color: black;
                                                            height: 200px;
                                                            color: white;
                                                            text-align: center;
                                                            padding-top: 20px;
                                                            clear: both;
                                                        }
                                                        .rightmenu ul li {
    margin-left: 68px;
}
                                                    </style>
                                                    </head>
                                                    <body>

                                                        <div class="menu">
                                                            <div class="leftmenu">
                                                                <h4>BookHouse</h4>
                                                            </div>
                                                            <div class="rightmenu">
                                                                <ul>
                                                                    <li><a href="home">Trang Chủ</a></li>
                                                                    <li class="dpdwn">Danh Mục<div class="dropdown-content" >
                                                                            <a href="list?page=1">Tất Cả</a>
                                                                            <c:forEach items="${requestScope.cateList}" var="category">
                                                                                <a href="list?cateId=${category.id}&page=1">${category.name}</a>
                                                                            </c:forEach>   
                                                                        </div></li>
                                                                    <li><a href="introduce">Giới Thiệu</a></li>
                                                                        <c:choose>
                                                                            <c:when test="${sessionScope.user eq null}">
                                                                            <li><a href="login">Đăng Nhập</a></li>
                                                                            <li><a href="signup">Đăng Kí</a></li>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                            <li><i class="fa fa-shopping-cart" style="font-size:30px"></i> <a href="cart">Giỏ Hàng</a></li>
                                                                            <li class="dpdwn"><i class="fa fa-home" style="font-size:30px"></i> Tài Khoản<div class="dropdown-content" ><a href="edit">Thông tin tài khoản</a><a href="history">Đơn Hàng</a><a href="logout">Thoát</a></div></li>
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                </ul>
                                                            </div>
                                                        </div>

                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-xs-4 item-photo" style="border:0px solid white;background:white;margin:10px">
                                                                    <img style="max-width:100%;" src="${p.pic}" />
                                                                </div>
                                                                <div class="col-xs-5" style="border:0px solid white;background:white;margin:10px;width: 800px;padding:30px">
                                                                    <!-- Datos del vendedor y titulo del producto -->
                                                                    <h3>${p.name}</h3>
                                                                    <h5 style="display:inline">Tác Giả: </h5><h4 style="color:#337ab7;display:inline"> ${p.author.firstname} ${p.author.lastname}</h4><hr />
                                                                    <h5 style="display:inline">Ngày Xuất Bản: </h5><h4 style="color:#337ab7;display:inline"> <fmt:formatDate value="${p.date}" pattern="dd/MM/yyyy"/></h4><hr />
                                                                    <h5 style="display:inline">Nhà Xuất Bản: </h5><h4 style="color:#337ab7;display:inline"> ${p.publisher.name}</h4><hr />

                                                                    <!-- Precios -->
                                                                    <h5 class="title-price"><small>Trị Giá</small></h5>
                                                                    <h3 style="margin-top:0px;"><fmt:formatNumber value = "${p.price}" minFractionDigits = "3"/> VND</h3>

                                                                    <div class="section" style="padding-bottom:20px;background:white">
                                                                        <h5 class="title-attr"><small>Số Lượng</small></h5>
                                                                        <div>
                                                                            <div class="btn-minus" onclick="modifyInput(0)"><span class="glyphicon glyphicon-minus"></span></div>
                                                                            <input id="quantity" name="quantity" value="1" />
                                                                            <div class="btn-plus" onclick="modifyInput(1)"><span class="glyphicon glyphicon-plus"></span></div>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Botones de compra -->
                                                                    <div class="section" style="padding-bottom:20px;">
                                                                            <button class="btn btn-success" onclick="myFunction()">
                                                                                <span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Thêm Vào Giỏ Hàng
                                                                            </button>
                                                                    </div>
                                                                </div>

                                                                <div class="col-xs-9">
                                                                    <ul class="menu-items">
                                                                        <li class="active">Thông Tin Chi Tiết</li>
                                                                    </ul>
                                                                    <div style="width:100%;border-top:1px solid silver;padding:15px;">
                                                                        <b>Nội Dung</b>
                                                                        <p>${p.info}</p>

                                                                        <c:if test="${p.author.des !=null}">
                                                                            <br />
                                                                            <b>Về Tác Giả</b>
                                                                            <div class="qoute">
                                                                                <img class="qoutepic" src="${p.author.pic}" />
                                                                                <p>${p.author.des}</p>
                                                                            </div>
                                                                        </c:if>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="footer">
                                                            <p>Posted by: Thien</p>
                                                            <p>
                                                                Contact information: <a href="mailto:hoathiendiep@gmail.com">
                                                                    hoathiendiep@gmail.com
                                                                </a>
                                                            </p>
                                                        </div>
                                                        <script>
                                                            function myFunction() {
                                                            <c:choose>
                                                                <c:when test="${sessionScope.user eq null}">
                                                               alert("Vui lòng đăng nhập tài khoản trước khi mua hàng! ");
                                                                </c:when>
                                                                <c:otherwise>
                                                                document.location.href = "add?id=${param.id}&quantity="+document.getElementById("quantity").value;
                                                                </c:otherwise>
                                                            </c:choose>
                                                            }
                                                            function modifyInput(x){
                                                                var y = Number(document.getElementById("quantity").value);
                                                                if (x === 1) {
                                                                    document.getElementById("quantity").value= y+1;
                                                                }else if(x === 0 && y > 1){
                                                                    document.getElementById("quantity").value= y-1;
                                                            }
                                                        }
                                                        </script>
                                                    </body>
</html>
