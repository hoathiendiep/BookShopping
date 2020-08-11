<%-- 
    Document   : home
    Created on : Mar 21, 2020, 9:43:33 PM
    Author     : Lenovo
--%>

<%@page import="control.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>BookHouse</title>
        <link href="https://fonts.googleapis.com/css?family=Baloo+2&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="Project.css" />
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                                background-color: #343a40!important;
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
                            .dpdwn .dropdown-content{
                                display: none;
                            }
                            .dpdwn:hover .dropdown-content {
                                display:block;
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
                                font-size:10px;
                                font-family: 'Montserrat', sans-serif;
                                border-radius: 25px;

                            }
                            a{
                                text-decoration: none;

                            }

                            .dropdown-content a:hover {background-color: #ddd;}

                            /* Show the dropdown menu on hover */
                            .dropdown:hover .dropdown-content {display: block;}

                            /* Change the background color of the dropdown button when the dropdown content is shown */

                        </style>
                        </head>
                        <body>

                            <div class="menu">
                                <div class="leftmenu">
                                    <h4>BookHouse</h4>
                                </div>
                                <div class="rightmenu">
                                    <ul>
                                        <li>Trang Chủ</li>
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
                                                <li><i class="fa fa-shopping-cart" style="font-size:30px"></i><a href="cart">Giỏ Hàng</a></li>
                                                <li class="dpdwn"><i class="fa fa-home" style="font-size:30px"></i> Tài Khoản<div class="dropdown-content" ><a  href="edit">Thông tin tài khoản</a><a href="history">Đơn Hàng</a><a href="logout">Thoát</a></div></li>
                                                </c:otherwise>
                                            </c:choose>
                                    </ul>
                                </div>
                            </div>
                            <div style="background:#fff">
                                <div class="slideshow-container">
                                    <!-- Full-width images with number and caption text -->
                                    <div class="mySlides fade">
                                        <img src="Picture\pic1.jpg">
                                    </div>

                                    <div class="mySlides fade">
                                        <img src="Picture\pic2.jpg">
                                    </div>

                                    <div class="mySlides fade">
                                        <img src="Picture\pic3.jpg">
                                    </div>

                                    <!-- Next and previous buttons -->
                                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                                </div>
                            </div>

                            <br>

                                <!-- The dots/circles -->
                                <div style="text-align:center">
                                    <span class="dot" onclick="currentSlide(1)"></span>
                                    <span class="dot" onclick="currentSlide(2)"></span>
                                    <span class="dot" onclick="currentSlide(3)"></span>
                                </div>
                                <div class="qoute">
                                    <img class="qoutepic" src="Picture\MarcusTulliusCicero.jpg" />
                                    <h1>
                                        “A room without books is like a body without a soul.”
                                        <br /><emsp>Marcus Tullius Cicero</emsp>
                                    </h1>
                                </div>
                                <div class="qoute">
                                    <img class="qoutepic" src="Picture\Mark Twain.jpg" />
                                    <h1>
                                        “Good friends, good books, and a sleepy conscience: this is the ideal life.”
                                        <br /><emsp>Mark Twain</emsp>
                                    </h1>

                                </div>
                                <div class="qoute">
                                    <img class="qoutepic" src="Picture\Jane Austen.jpg" />
                                    <h1>
                                        “The person, be it gentleman or lady, who has not pleasure in a good novel, must
                                        be intolerably stupid.”
                                        <br /><emsp>Jane Austen</emsp>
                                    </h1>
                                </div>
                                <div class="footer">
                                    <p>Posted by: Thien</p>
                                    <p>
                                        Contact information: <a href="mailto:hoathiendiep@gmail.com">
                                            hoathiendiep@gmail.com
                                        </a>.
                                    </p>
                                </div>
                                <script>
                                    var slideIndex = 1;
                                    showSlides(slideIndex);

                                    // Next/previous controls
                                    function plusSlides(n) {
                                        showSlides(slideIndex += n);
                                    }

                                    // Thumbnail image controls
                                    function currentSlide(n) {
                                        showSlides(slideIndex = n);
                                    }

                                    function showSlides(n) {
                                        var i;
                                        var slides = document.getElementsByClassName("mySlides");
                                        var dots = document.getElementsByClassName("dot");
                                        if (n > slides.length) {
                                            slideIndex = 1;
                                        }
                                        if (n < 1) {
                                            slideIndex = slides.length
                                        }
                                        for (i = 0; i < slides.length; i++) {
                                            slides[i].style.display = "none";
                                        }
                                        for (i = 0; i < dots.length; i++) {
                                            dots[i].className = dots[i].className.replace(" active", "");
                                        }
                                        slides[slideIndex - 1].style.display = "block";
                                        dots[slideIndex - 1].className += " active";
                                    }
                                </script>
                                </html>

