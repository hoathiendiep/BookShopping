<%-- 
    Document   : history
    Created on : Mar 31, 2020, 4:29:02 PM
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
            /* height: 100%; */
            padding-bottom: 20px;
            background-color: #343a40 !important;
            display: block;
            /* max-height: 135px; */
            position: relative;
            height: 135px;
            margin-top: -16px;
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
            float: left;
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

        .shopping-cart button:active {
            transform: scale(.9);
        }

        .shopping-cart {
            background: #FFF;
            box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.10);
            border-radius: 0.5em;
            display: flex;
            align-items: center;
            flex-direction: column;
            margin: 10px;
            margin-left: 50px;
            margin-right: 50px;
            overflow: auto;
        }

        /* item styling */
        .title {
            height: 3.75em;
            border-bottom: 1px solid #E1E8EE;
            padding: 1.25em 1.75em;
            color: #5E6977;
            font-size: 1.125em;
            font-weight: 400;
        }

        .item {
            padding: 1.25em 1.75em;
            height: 9.5em;
            display: flex;
        }

            .item:nth-child(3) {
                border-top: 1px solid #E1E8EE;
                border-bottom: 1px solid #E1E8EE;
            }

        .buttons {
            position: relative;
            padding-top: 1.75em;
            margin-right: 3.5em;
        }

        .delete-btn,
        .like-btn {
            display: inline-block;
            cursor: pointer;
        }

        .delete-btn {
            width: 18px;
            height: 17px;
            background: url("https://designmodo.com/demo/shopping-cart/delete-icn.svg") no-repeat center;
        }

        .like-btn {
            position: absolute;
            top: 9px;
            left: 15px;
            background: url("https://designmodo.com/demo/shopping-cart/twitter-heart.png");
            width: 60px;
            height: 60px;
            background-size: 2900%;
            background-repeat: no-repeat;
        }

        .is-active {
            animation-name: animate;
            animation-duration: .8s;
            animation-iteration-count: 1;
            animation-timing-function: steps(28);
            animation-fill-mode: forwards;
        }

        @keyframes animate {
            0% {
                background-position: left;
            }

            50% {
                background-position: right;
            }

            100% {
                background-position: right;
            }
        }

        .image {
            margin-right: 50px;
        }

        .description {
            padding-top: 10px;
            margin-right: 60px;
            width: 392px;
        }

            .description span {
                display: block;
                font-size: 1em;
                color: #43484D;
                font-weight: 400;
            }

                .description span:first-child {
                    margin-bottom: 5px;
                }

                .description span:last-child {
                    font-weight: 300;
                    margin-top: 8px;
                    color: #86939E;
                }

        .quantity {
            padding-top: 20px;
            margin-right: 50px;
        }

            .quantity input {
                -webkit-appearance: none;
                border: none;
                text-align: center;
                width: 32px;
                font-size: 1em;
                color: #43484D;
                font-weight: 300;
            }

        button[class*=btn] {
            width: 30px;
            height: 30px;
            background-color: #E1E8EE;
            border-radius: 6px;
            border: none;
            cursor: pointer;
        }

        .minus-btn img {
            margin-bottom: 3px;
        }

        .plus-btn img {
            margin-top: 2px;
        }

        button:focus,
        input:focus {
            outline: 0;
        }

        .total-price {
            width: 83px;
            padding-top: 27px;
            text-align: center;
            font-size: 1em;
            color: #43484D;
            font-weight: 300;
        }


        /* media queries */
        @media (max-width: 800px) {

            .item {
                height: auto;
                flex-wrap: wrap;
                justify-content: center;
            }

            .image img {
                width: 50%;
            }

            .image,
            .quantity,
            .description {
                padding-top: 10px;
                margin-right: 60px;
                width: 289px;
            }

            img {
                width: 110px;
                height: 110px;
            }

            .buttons {
                margin-right: 20px;
            }
        }

        .total {
            background: #FFF;
            box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.10);
            border-radius: 0.5em;
            display: flex;
            align-items: center;
            flex-direction: column;
            margin: 10px;
            margin-left: 50px;
            margin-right: 50px;
            padding: 10px;
        }

        .shopping-cart {
            background: #FFF;
            box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.10);
            border-radius: 0.5em;
            display: flex;
            align-items: center;
            flex-direction: column;
            margin: 10px;
            margin-left: 50px;
            margin-right: 50px;
            overflow: auto;
            height: 500px;
        }

        .cart-page-footer__summary {
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -webkit-flex-direction: column;
            -moz-box-orient: vertical;
            -moz-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
        }

        .cart-page-footer__first-summary {
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: end;
            -webkit-justify-content: flex-end;
            -moz-box-pack: end;
            -ms-flex-pack: end;
            justify-content: flex-end;
        }

        .cart-page-footer-summary__subtotal {
            margin-left: 1.25rem;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .cart-page-footer-summary__subtotal-amount {
            font-size: 1.875rem;
            line-height: 1.875rem;
            margin-left: .3125rem;
            color: #ee4d2d;
        }

        .cart-page-footer .shopee-button-solid {
            padding: 13px 36px;
            margin: 0 22px 0 15px;
            text-transform: capitalize;
            font-weight: 300;
            height: 2.5rem;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            font-size: .875rem;
            border-radius: 2px;
            width: 13.125rem;
        }

        .return:link, .return:visited {
            background-color: #f44336;
            color: white;
            padding: 14px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }

        .return:hover, .return:active {
            background-color: red;
        }

        .clearer {
            height: 0;
            clear: both;
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
    <div class="body">
        <div class="shopping-cart">
           
                <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Mã số</th>
                        <th scope="col">Ngày Mua</th>
                        <th scope="col">Tổng Tiền</th>
                        <th scope="col">Kiểm Duyệt</th>
                        <th scope="col">Tùy Chọn</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.lst}" var="s">
                        <tr>
                            <td>${s.id}</td>
                            <td><fmt:formatDate value="${s.date}" pattern="dd/MM/yyyy"/></td>
                            <td><fmt:formatNumber value = "${s.total}" minFractionDigits = "3"/> VND</td>
                            <td>
                                <c:choose>
                                    <c:when test="${s.status eq 'False'}">
                                        Chưa
                                    </c:when>
                                    <c:otherwise>
                                        Đã Kiểm Duyệt
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td><form action="items?oid=${s.id}" method="POST"><button type="submit" style="width:180px;background-color: #343a40" class="btn btn-dark">Xem Chi Tiết</button></form></td>
                        </tr>
                            
                    </c:forEach>
                </tbody>
            </table>
            </form>
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

</body>
</html>
