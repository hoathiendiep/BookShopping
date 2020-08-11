<%-- 
    Document   : edit
    Created on : Mar 30, 2020, 11:38:39 PM
    Author     : Lenovo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
                                                    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
                                                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                                                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                                            <style>
                                                                * {
                                                                    margin: 0px;
                                                                    padding: 0px;
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


                                                                form {
                                                                    margin-left: 300px;
                                                                    margin-top: 43px;
                                                                    margin-right: 300px;
                                                                    border-radius:25px;
                                                                }
                                                                #btnstyle{
                                                                    background-color: #75A3FF;
                                                                    color: white;
                                                                    padding: 14px 20px;
                                                                    margin: 8px 0;
                                                                    border: none;
                                                                    cursor: pointer;
                                                                    border-radius: 25px;
                                                                    margin-left:90px;
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

                                                                .menu a {
                                                                    color: rgba(255,255,255,.5);
                                                                }

                                                                .menu a:hover {
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


                                                                .footer {
                                                                    background-color: #303036;
                                                                    color: #d3d3d3;
                                                                    height: 400px;
                                                                    position: relative;
                                                                }

                                                                * {
                                                                    box-sizing: border-box
                                                                }

                                                                /* Slideshow container */
                                                                .slideshow-container {
                                                                    max-width: 75%;
                                                                    position: relative;
                                                                    margin: auto;
                                                                }

                                                                /* Hide the images by default */
                                                                .mySlides {
                                                                    display: none;
                                                                }

                                                                /* Next & previous buttons */
                                                                .prev, .next {
                                                                    cursor: pointer;
                                                                    position: absolute;
                                                                    top: 50%;
                                                                    width: auto;
                                                                    margin-top: -22px;
                                                                    padding: 16px;
                                                                    color: white;
                                                                    font-weight: bold;
                                                                    font-size: 18px;
                                                                    transition: 0.6s ease;
                                                                    border-radius: 0 3px 3px 0;
                                                                    user-select: none;
                                                                }

                                                                /* Position the "next button" to the right */
                                                                .next {
                                                                    right: 0;
                                                                    border-radius: 3px 0 0 3px;
                                                                }

                                                                /* On hover, add a black background color with a little bit see-through */
                                                                .prev:hover, .next:hover {
                                                                    background-color: rgba(0,0,0,0.8);
                                                                }

                                                                /* Caption text */
                                                                .text {
                                                                    color: #f2f2f2;
                                                                    font-size: 15px;
                                                                    padding: 8px 12px;
                                                                    position: absolute;
                                                                    bottom: 8px;
                                                                    width: 100%;
                                                                    text-align: center;
                                                                }

                                                                /* The dots/bullets/indicators */
                                                                .dot {
                                                                    cursor: pointer;
                                                                    height: 15px;
                                                                    width: 15px;
                                                                    margin: 0 2px;
                                                                    background-color: #bbb;
                                                                    border-radius: 50%;
                                                                    display: inline-block;
                                                                    transition: background-color 0.6s ease;
                                                                }

                                                                .active, .dot:hover {
                                                                    background-color: #717171;
                                                                }

                                                                /* Fading animation */
                                                                .fade {
                                                                    -webkit-animation-name: fade;
                                                                    -webkit-animation-duration: 1.5s;
                                                                    animation-name: fade;
                                                                    animation-duration: 1.5s;
                                                                }

                                                                .qoute {
                                                                    margin: 20px;
                                                                    color: black;
                                                                    display: -webkit-box;
                                                                    text-align: center;
                                                                    align-items: center;
                                                                    padding: 50px;
                                                                    font-style: italic;
                                                                    border-radius: 25px;
                                                                    border: 2px solid #343a40 !important;
                                                                    background: #e9ecef;
                                                                }

                                                                .qoutepic {
                                                                    border-radius: 50%;
                                                                    width: 100px;
                                                                    height: 100px;
                                                                }

                                                                @-webkit-keyframes fade {
                                                                    from {
                                                                        opacity: .4
                                                                    }

                                                                    to {
                                                                        opacity: 1
                                                                    }
                                                                }

                                                                @keyframes fade {
                                                                    from {
                                                                        opacity: .4
                                                                    }

                                                                    to {
                                                                        opacity: 1
                                                                    }
                                                                }

                                                                .footer {
                                                                    left: 0;
                                                                    bottom: 0;
                                                                    width: 100%;
                                                                    background-color: black;
                                                                    height: 200px;
                                                                    color: white;
                                                                    text-align: center;
                                                                    padding-top: 20px;
                                                                }

                                                                img {
                                                                    width: 100%;
                                                                    height: 50%;
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

                                                                a {
                                                                    text-decoration: none;
                                                                }

                                                                .dropdown-content a:hover {
                                                                    background-color: #ddd;
                                                                }

                                                                /* Show the dropdown menu on hover */
                                                                .dropdown:hover .dropdown-content {
                                                                    display: block;
                                                                }

                                                                /* Change the background color of the dropdown button when the dropdown content is shown */

                                                                .row {
                                                                    display: -ms-flexbox; /* IE10 */
                                                                    display: flex;
                                                                    -ms-flex-wrap: wrap; /* IE10 */
                                                                    flex-wrap: wrap;
                                                                    margin: 0 -16px;
                                                                }

                                                                .col-25 {
                                                                    -ms-flex: 25%; /* IE10 */
                                                                    flex: 25%;
                                                                }

                                                                .col-50 {
                                                                    -ms-flex: 50%; /* IE10 */
                                                                    flex: 50%;
                                                                }

                                                                .col-75 {
                                                                    -ms-flex: 75%; /* IE10 */
                                                                    flex: 75%;
                                                                }

                                                                .col-25,
                                                                .col-50,
                                                                .col-75 {
                                                                    padding: 0 16px;
                                                                }

                                                                .container {
                                                                    background-color: #f2f2f2;
                                                                    padding: 5px 20px 15px 20px;
                                                                    border: 1px solid lightgrey;
                                                                    border-radius: 3px;
                                                                }

                                                                input[type=text] {
                                                                    width: 100%;
                                                                    margin-bottom: 20px;
                                                                    padding: 12px;
                                                                    border: 1px solid #ccc;
                                                                    border-radius: 3px;
                                                                }

                                                                label {
                                                                    margin-bottom: 10px;
                                                                    display: block;
                                                                }

                                                                .icon-container {
                                                                    margin-bottom: 20px;
                                                                    padding: 7px 0;
                                                                    font-size: 24px;
                                                                }

                                                                .btn {
                                                                    background-color: #4CAF50;
                                                                    color: white;
                                                                    padding: 12px;
                                                                    margin: 10px 0;
                                                                    border: none;
                                                                    width: 100%;
                                                                    border-radius: 3px;
                                                                    cursor: pointer;
                                                                    font-size: 17px;
                                                                }

                                                                .btn:hover {
                                                                    background-color: #45a049;
                                                                }

                                                                a {
                                                                    color: #2196F3;
                                                                }

                                                                hr {
                                                                    border: 1px solid lightgrey;
                                                                }

                                                                span.price {
                                                                    float: right;
                                                                    color: grey;
                                                                }

                                                                /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
                                                                @media (max-width: 800px) {
                                                                    .row {
                                                                        flex-direction: column-reverse;
                                                                    }

                                                                    .col-25 {
                                                                        margin-bottom: 20px;
                                                                    }
                                                                }

                                                                #pwd {
                                                                    border: none;
                                                                    padding: 13px 30px;
                                                                    text-align: center;
                                                                    text-decoration: none;
                                                                    display: inline-block;
                                                                    font-size: 16px;
                                                                    margin: 4px 2px;
                                                                    transition-duration: 0.4s;
                                                                    cursor: pointer;
                                                                    margin-left: 160px;
                                                                    margin-bottom: 10px;
                                                                    background-color: white;
                                                                    color: black;
                                                                    border: 2px solid #555555;
                                                                }

                                                                #pwd:hover {
                                                                    background-color: #555555;
                                                                    color: white;
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
                                                                            <li class="dpdwn">
                                                                                Danh Mục<div class="dropdown-content">
                                                                                    <a href="list?page=1">Tất Cả</a>
                                                                                    <c:forEach items="${requestScope.cateList}" var="category">
                                                                                        <a href="list?cateId=${category.id}&page=1">${category.name}</a>
                                                                                    </c:forEach>
                                                                                </div>
                                                                            </li>
                                                                            <li><a href="introduce">Giới Thiệu</a></li>
                                                                                <c:choose>
                                                                                    <c:when test="${sessionScope.user eq null}">
                                                                                    <li><a href="login">Đăng Nhập</a></li>
                                                                                    <li><a href="signup">Đăng Kí</a></li>
                                                                                    </c:when>
                                                                                    <c:otherwise>
                                                                                    <li><i class="fa fa-shopping-cart" style="font-size:30px"></i> <a href="cart">Giỏ Hàng</a></li>
                                                                                    <li class="dpdwn"><i class="fa fa-home" style="font-size:30px"></i> Tài Khoản<div class="dropdown-content"><a href="edit">Thông tin tài khoản</a><a href="history">Đơn Hàng</a><a href="logout">Thoát</a></div></li>
                                                                                    </c:otherwise>
                                                                                </c:choose>
                                                                        </ul>
                                                                    </div>
                                                                </div>


                                                                <div class="row" style="padding:30px;">
                                                                    <c:if test="${requestScope.update eq 'True'}">
                                                                        <h3 style="margin-left: 300px;color: #75A3FF;">Cập nhật thành công</h3>
                                                                    </c:if>
                                                                    <form onSubmit = "return checkPassword(this)" method="POST">
                                                                        <!-- !PAGE CONTENT! -->
                                                                        <div class="w3-main">
                                                                            <div class="w3-container w3-white">
                                                                                <h2>Thông Tin Tài Khoản</h2>
                                                                                <hr>
                                                                                    <div class="w3-row-padding" style="margin:0 -16px;">
                                                                                        <div class="w3-half w3-margin-bottom">
                                                                                            <label> Tên</label>
                                                                                            <input class="w3-input w3-border" name="fname" value="${sessionScope.user.firstname}" type="text">
                                                                                        </div>
                                                                                        <div class="w3-half w3-margin-bottom">
                                                                                            <label> Họ</label>
                                                                                            <input class="w3-input w3-border" name="lname" value="${sessionScope.user.lastname}" type="text">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="w3-row-padding" style="margin:0 -16px;">
                                                                                        <div class="w3-quarter w3-margin-bottom">
                                                                                            <label>Gender</label><br>
                                                                                                <input class="w3-radio" name="gender" value="male" type="radio" checked="true"> Male
                                                                                                    <input class="w3-radio" name="gender" value="female" type="radio" <c:if test="${sessionScope.user.gender eq 'False'}">checked</c:if>> Female
                                                                                                            </div>
                                                                                                            <div class="w3-quarter w3-margin-bottom">
                                                                                                                <label> Số Điện Thoại</label>
                                                                                                                <input class="w3-input w3-border" name="phone" value="${sessionScope.user.phone}" type="text" pattern="^\d{10}$">
                                                                                                        </div>
                                                                                                        <div class="w3-quarter w3-margin-bottom">
                                                                                                            <label> Ngày Sinh</label>
                                                                                                            <input class="w3-input w3-border" name="dob"  value="${sessionScope.user.dob}" type="date">
                                                                                                        </div>
                                                                                                        <div class="w3-quarter w3-margin-bottom">
                                                                                                            <label> Address</label>
                                                                                                            <input class="w3-input w3-border" name="address"  value="${sessionScope.user.address}" type="text">
                                                                                                        </div>
                                                                                                        <div class="w3-half w3-margin-bottom">
                                                                                                            <label> Email</label>
                                                                                                            <input class="w3-input w3-border" name="email" value="${sessionScope.user.email}" type="text" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
                                                                                                        </div>
                                                                                                        <div class="w3-half w3-margin-bottom">
                                                                                                            <label> Thay Đổi Mật Khẩu</label>
                                                                                                            <input class="w3-input w3-border" style="margin-bottom:5px" name="oldPwd" type="password" placeholder="Mật Khẩu Cũ">
                                                                                                                <input class="w3-input w3-border" style="margin-bottom:5px" name="pwd" type="password" placeholder="Mật Khẩu Mới">
                                                                                                                    <input class="w3-input w3-border" name="repwd" type="password" placeholder="Nhập Lại Mật Khẩu Mới">
                                                                                                                        </div>
                                                                                                                        </div>
                                                                                                                        </div>
                                                                                                                        <div class="w3-container w3-white">
                                                                                                                            <hr><span style="margin-left: 35%"></span>
                                                                                                                                <input class="w3-button" type="submit" id="btnstyle" value="Cập Nhật Thông Tin" /><br><br>
                                                                                                                                        </div>
                                                                                                                                        </div>
                                                                                                                                        </form>

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
                                                                                                                                            function checkPassword(form) {
                                                                                                                                                password1 = form.oldPwd.value;
                                                                                                                                                password2 = form.pwd.value;
                                                                                                                                                password3 = form.repwd.value;
                                                                                                                                                if (password2 !== "" || password3 !== "") {
                                                                                                                                                    if (password1 === '') {
                                                                                                                                                        alert("Vui lòng nhập mật khẩu cũ");
                                                                                                                                                        return false;
                                                                                                                                                    } else if (password1 !== "${sessionScope.user.password}") {
                                                                                                                                                        alert("Mật Khẩu Cũ Chưa Chính Xác");
                                                                                                                                                        return false;
                                                                                                                                                    } else if (password2 === '') {
                                                                                                                                                        alert("Vui lòng nhập mật khẩu mới");
                                                                                                                                                        return false;
                                                                                                                                                    } else if (password2 !== password3) {
                                                                                                                                                        alert("Mật khẩu mới không trùng nhau");
                                                                                                                                                        return false;
                                                                                                                                                    }
                                                                                                                                                } else {
                                                                                                                                                    javascript:form.action = "edit";
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        </script>
                                                                                                                                        </body>
                                                                                                                                        </html>