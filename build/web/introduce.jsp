<%-- 
    Document   : introduce
    Created on : Mar 31, 2020, 1:28:35 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>BookHouse</title>
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
            border-radius: 25px;
        }

        #btnstyle {
            background-color: #75A3FF;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            border-radius: 25px;
            margin-left: 90px;
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
        <div class="container" style="background-color: white;margin-bottom: 45px;padding-left: 77px;margin: 20px 30px 20px;">
            <div class="row" style="margin:0 auto;">
                <div>
                    <h1 style="padding: 15px 0 5px;">Giới thiệu về BookHouse</h1><hr />
                    <div class="content">
                        <p>BookHouse là một hệ sinh thái thương mại tất cả trong một, gồm các công ty thành viên như:</p>
                        <ul>
                            <li>BookHouse Smart Logistics cung cấp dịch vụ logistics đầu-cuối;</li>
                            <li>Ticketbox mang đến dịch vụ vé sự kiện, xem phim hàng đầu;</li>
                            <li>Đơn vị bán lẻ BookHouse Trading và Sàn Giao dịch cung cấp 10 triệu sản phẩm từ 26 ngành hàng phục vụ hàng triệu khách hàng trên toàn quốc.</li>
                        </ul>
                        <p>Với phương châm hoạt động “Tất cả vì Khách Hàng”, BookHouse luôn không ngừng nỗ lực nâng cao chất lượng dịch vụ và sản phẩm, từ đó mang đến trải nghiệm mua sắm trọn vẹn cho Khách Hàng Việt Nam với dịch vụ giao hàng nhanh trong 2 tiếng và ngày hôm sau BookHouseNOW lần đầu tiên tại Đông Nam Á, cùng cam kết cung cấp hàng chính hãng với chính sách hoàn tiền 111% nếu phát hiện hàng giả, hàng nhái.</p>
                        <p>Thành lập từ tháng 3/2010, BookHouse.vn hiện đang là trang thương mại điện tử lọt top 2 tại Việt Nam và top 6 tại khu vực Đông Nam Á.</p>
                        <p>BookHouse lọt Top 1 nơi làm việc tốt nhất Việt Nam trong ngành Internet/E-commerce 2018 (Anphabe bình chọn), Top 50 nơi làm việc tốt nhất châu Á 2019 (HR Asia bình chọn).</p>
                        <hr />
                        <p>Quý khách có nhu cầu liên lạc, trao đổi hoặc đóng góp ý kiến, vui lòng tham khảo các thông tin sau:</p>
                        <ul>
                            <li>Liên lạc qua điện thoại: 1900 6035</li>
                            <li>Liên lạc qua email: Truy cập <a target="_blank" href="http://hotro.tiki.vn/">hotro.bookhouse.vn</a></li>
                            <li>
                                Fanpage của BookHouse <a href="http://facebook.com/tiki.vn" target="_blank"> http://facebook.com/house.vn</a>
                            </li>
                            <li>
                                Đối tác có nhu cầu hợp tác quảng cáo hoặc kinh doanh: <a href="mailto:marketing@tiki.vn" title="Email đến Tiki">marketing@bookhouse.vn</a>
                            </li>
                            <li>Địa chỉ nhận hàng đổi/trả/bảo hành: Trung tâm xử lý đơn hàng BookHouse - 367/F370 Đường Bạch Đằng, P.2, Q.Tân Bình TP. Hồ Chí Minh (Tham khảo <a href="http://tiki.vn/hau-mai" target="_blank">hướng dẫn đổi, trả, bảo hành</a> hoặc liên hệ 1900-6035 để được hướng dẫn trước khi gửi sản phẩm về BookHouse)<p></p></li>
                        </ul><br>
                        <ul>
                            <li>Văn phòng chính: Tòa nhà Viettel, 285 Cách Mạng Tháng 8, Phường 12, Quận 10, Thành phố Hồ Chí Minh.</li>
                            <li>Văn phòng: 52 Út Tịch, Phường 4, Quận Tân Bình, Thành Phố Hồ Chí Minh.</li>
                        </ul>
                        <h3>Thông tin về công ty</h3>
                        <ul>
                            <li>Công ty Cổ Phần BookHouse</li>
                            <li>Địa chỉ đăng ký kinh doanh: 29/1, đường số 4, KP.3, P. Bình Khánh, Q.2, TPHCM, Việt Nam</li>
                            <li>Giấy chứng nhận Đăng ký Kinh doanh số 0309532909 do Sở Kế hoạch và Đầu tư Thành phố Hồ Chí Minh cấp ngày 06/01/2010</li>
                        </ul>
                        <br>
                        <h3>Văn phòng BookHouse</h3>
                        <div style="text-align:center;"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4274227543774!2d106.67782711451963!3d10.778539192320117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f2639b32e09%3A0x97169d1fc37df0b6!2sViettel%20Complex%20Building!5e0!3m2!1svi!2s!4v1580976130811!5m2!1svi!2s" width="800" height="450" frameborder="0" style="border:0" allowfullscreen=""></iframe></div>
                    </div>
                </div>
                <div class="col-lg-2"></div>
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
