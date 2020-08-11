<%-- 
    Document   : list
    Created on : Mar 22, 2020, 4:17:47 PM
    Author     : Lenovo
--%>
<%@page import="dao.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                                    /* Show the dropdown menu on hover */
                                                    .dropdown:hover .dropdown-content {
                                                        display: block;
                                                        border-radius: 25px;
                                                    }

                                                    /* Change the background color of the dropdown button when the dropdown content is shown */
                                                    .dropdown:hover .dropbtn {
                                                        background-color: #3e8e41;
                                                    }


                                                    /*Resize the wrap to see the search bar change!*/
                                                    .wrap {
                                                        width: 47%;
                                                        position: absolute;
                                                        height: 60%;
                                                        top: 50%;
                                                        left: 50%;
                                                        transform: translate(-50%, -50%);
                                                    }

                                                    .sidebar {
                                                        margin: 10px;
                                                        padding: 0;
                                                        width: 350px;
                                                        background-color: #fff;
                                                        position: absolute;
                                                        height: 100%;
                                                        float: left;
                                                        overflow: hidden;
                                                    }

                                                    .sidebar a {
                                                        display: block;
                                                        color: black;
                                                        padding: 16px;
                                                        text-decoration: none;
                                                    }

                                                    .sidebar a.active {
                                                        color: black;
                                                        font-weight: bolder;
                                                    }

                                                    .sidebar a:hover:not(.active) {
                                                        background-color: #f1f1f1;
                                                        color: black;
                                                    }

                                                    div.content {
                                                        margin-left: 200px;
                                                        padding: 1px 16px;
                                                        height: 1000px;
                                                    }

                                                    @media screen and (max-width: 700px) {
                                                        .sidebar {
                                                            width: 100%;
                                                            height: auto;
                                                            position: relative;
                                                            margin: 10px;
                                                            overflow: auto;
                                                        }

                                                        .sidebar a, .dropdown-btn {
                                                            float: left;
                                                        }

                                                        div.content {
                                                            margin-left: 0;
                                                        }
                                                    }

                                                    @media screen and (max-width: 400px) {
                                                        .sidebar a, .dropdown-btn {
                                                            text-align: center;
                                                            float: none;
                                                        }
                                                    }

                                                    .centered {
                                                        width: 75%;
                                                        float: right;
                                                        background: #fff;
                                                        margin: 10px;
                                                    }



                                                    a {
                                                        text-decoration: none;
                                                    }


                                                    .search {
                                                        width: 30%;
                                                        position: relative;
                                                        display: flex;
                                                        margin-top: 0px;
                                                    }

                                                    .option-box {
                                                        margin-left: 106px;
                                                        margin-right: 50px;
                                                        padding: 10px;
                                                    }

                                                    .list {
                                                        width: 75%;
                                                        float: right;
                                                        background: #fff;
                                                        margin: 10px;
                                                        margin-top: 1px;
                                                    }

                                                    .card {
                                                        float: left;
                                                        width: 50%;
                                                        padding: 10px;
                                                    }

                                                    /* Clear floats after the columns */
                                                    .row:after {
                                                        content: "";
                                                        display: table;
                                                        clear: both;
                                                    }
                                                    /* Style the buttons */
                                                    .btn {
                                                        border: none;
                                                        outline: none;
                                                        padding: 12px 16px;
                                                        background-color: #f1f1f1;
                                                        cursor: pointer;
                                                    }

                                                    .btn:hover {
                                                        background-color: #ddd;
                                                    }

                                                    .btn.active {
                                                        background-color: #666;
                                                        color: white;
                                                    }

                                                    .card {
                                                        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                                                        max-width: 300px;
                                                        margin: auto;
                                                        text-align: center;
                                                        /* padding-left: 16px; */
                                                        margin-left: 63px;
                                                        margin-top: 15px;
                                                    }

                                                    .price {
                                                        color: grey;
                                                        font-size: 22px;
                                                    }

                                                    .card button {
                                                        border: none;
                                                        outline: 0;
                                                        padding: 12px;
                                                        color: white;
                                                        background-color: #000;
                                                        text-align: center;
                                                        cursor: pointer;
                                                        width: 100%;
                                                        font-size: 18px;
                                                    }

                                                    .card button:hover {
                                                        opacity: 0.7;
                                                    }

                                                    .row {
                                                        margin-bottom: 10px;
                                                    }

                                                    .card p {
                                                        height: 89.6px;
                                                    }

                                                    .price p {
                                                        height: 45px;
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


                                                    .dropdown-btn {
                                                        background: none !important;
                                                        border: none;
                                                        padding: 0 !important;
                                                        cursor: pointer;
                                                        margin: 16px;
                                                    }

                                                    .pagination {
                                                        width: 75%;
                                                        float: right;
                                                        margin: 10px;
                                                        margin-left: 650px;
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

                                                    .menu .dropdown-content a:hover {
                                                        background-color: #ddd;
                                                    }
                                                    .namebook{
                                                        font-family: 'Baloo 2', cursive;
                                                        font-weight: bolder;
                                                        font-size: 25px;
                                                        padding-top: 14px;
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
                                                                        <li class="dpdwn"><i class="fa fa-home" style="font-size:30px"></i> Tài Khoản<div class="dropdown-content" ><a  href="edit">Thông tin tài khoản</a><a href="history">Đơn Hàng</a><a href="logout">Thoát</a></div></li>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <div class="sidebar">
                                                        <div class="w3-bar" style="width:350px;margin:10px;z-index:1">
                                                            <br>
                                                                <div class="w3-container w3-row">
                                                                    <h3>Tìm Kiếm: ${requestScope.sizelist} kết quả</h3>
                                                                </div>
                                                                <hr>
                                                                    <div class="w3-container">
                                                                        <h5>Ưu tiên</h5>
                                                                    </div>
                                                                     <form action="list?page=1" method="POST">
                                                                    <div class="w3-bar-block">
                                                                        <a href="list?page=1" class="w3-bar-item w3-button w3-padding">Chọn Lọc</a>
                                                                        <a href="list?asc=1&page=1" class="w3-bar-item w3-button w3-padding">Giá Thấp</a>
                                                                        <a href="list?desc=1&page=1" class="w3-bar-item w3-button w3-padding">Giá Cao</a>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    <div class="centered">
                                                                        <div class="option-box">
                                                                           
                                                                                <!--go to search controller-->
                                                                                <div class="w3-row-padding" style="margin:0 -16px;">
                                                                                    <div class="w3-half w3-margin-bottom">
                                                                                        <label><i class="fa fa-tag"></i> Thể Loại</label>
                                                                                        <select class="w3-select w3-border"  name="brand">
                                                                                            <option value="">Tất Cả</option>
                                                                                            <c:forEach items="${requestScope.brandList}" var="brandList">
                                                                                                <option value="${brandList.id}" <c:if test="${brandList.id == requestScope.brand}">selected="selected"</c:if>>${brandList.name}</option>
                                                                                            </c:forEach>
                                                                                            <!--load tu database ra cac category-->
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="w3-half">
                                                                                        <label><i class="fa fa-male"></i> Tác Giả</label>
                                                                                        <select class="w3-select w3-border" name="author">
                                                                                            <option value="">Tất Cả</option>
                                                                                            <c:forEach items="${requestScope.authorList}" var="authorList">
                                                                                                <option value="${authorList.id}" <c:if test="${authorList.id == requestScope.author}">selected="selected"</c:if>>${authorList.firstname} ${authorList.lastname}</option>
                                                                                            </c:forEach>
                                                                                            <!--load tu database ra cac category-->
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="w3-row-padding" style="margin:8px -16px;">
                                                                                    <div class="w3-half">
                                                                                       <label><i class="fa fa-group"></i> Nhà Xuất Bản</label>
                                                                                        <select class="w3-select w3-border" name="publish">
                                                                                            <option value="">Tất Cả</option>
                                                                                            <c:forEach items="${requestScope.publishList}" var="publishList">
                                                                                                <option value="${publishList.id}" <c:if test="${publishList.id == requestScope.publish}">selected="selected"</c:if>>${publishList.name}</option>
                                                                                            </c:forEach>
                                                                                            <!--load tu database ra cac category-->
                                                                                        </select>
                                                                                    </div>

                                                                                    <div class="w3-half">
                                                                                        <label><i class="fa fa-search"></i> Tìm Kiếm</label>
                                                                                        <input class="w3-input w3-border" name="book" value="${requestScope.book}" type="text" placeholder="Ví dụ: Rừng Na Uy">
                                                                                    </div>

                                                                                </div>
                                                                                <input class="w3-button w3-dark-grey" type="submit" value="Search"/>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list">
                                                                        <div class="row">
                                                                            <c:forEach items="${requestScope.productsList}" var ="p" begin="0" end="2">
                                                                                <div class="card">
                                                                                    <img src="${p.pic}" alt="Denim Jeans" style="width:100%">
                                                                                        <p class="namebook">${p.name}</p>
                                                                                        <p class="price"><fmt:formatNumber value = "${p.price}" minFractionDigits = "3"/> VND</p>
                                                                                        <p><button><a href="detail?id=${p.id}">Xem Thêm</a></button></p>

                                                                                </div>
                                                                            </c:forEach>
                                                                        </div>

                                                                        <div class="row">
                                                                            <c:forEach items="${requestScope.productsList}" var ="p" begin="3" end="5">
                                                                                <div class="card">
                                                                                    <img src="${p.pic}" alt="Denim Jeans" style="width:100%">
                                                                                        <p class="namebook">${p.name}</p>
                                                                                        <p class="price"><fmt:formatNumber value = "${p.price}" minFractionDigits = "3"/> VND</p>
                                                                                            <p><button><a href="detail?id=${p.id}">Xem Thêm</a></button></p>
                                                                                </div>
                                                                            </c:forEach>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pagination">
                                                                        <nav aria-label="Page navigation example">
                                                                            <ul class="pagination justify-content-center">
                                                                                <li class="page-item disabled">
                                                                                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                                                                                </li>
                                                                                <c:forEach var="counter" begin="1" end="${requestScope.totalPage}">
                                                                                    <li class="page-item"><a class="page-link" <c:if test="${param.page eq counter}">style="font-weight: 800;"</c:if> href="http://localhost:8084/ProjectPRJ321/list?page=${counter}">${counter}</a></li>    
                                                                                    </c:forEach>
                                                                                <li class="page-item">
                                                                                    <a class="page-link" href="#">Next</a>
                                                                                </li>
                                                                            </ul>
                                                                        </nav>
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
                                                                        var dropdown = document.getElementsByClassName("dropdown-btn");
                                                                        var i;

                                                                        for (i = 0; i < dropdown.length; i++) {
                                                                            dropdown[i].addEventListener("click", function () {
                                                                                this.classList.toggle("active");
                                                                                var dropdownContent = this.nextElementSibling;
                                                                                if (dropdownContent.style.display === "block") {
                                                                                    dropdownContent.style.display = "none";
                                                                                } else {
                                                                                    dropdownContent.style.display = "block";
                                                                                }
                                                                            });
                                                                        }
                                                                    </script>
                                                                    </body>
                                                                    </html>
