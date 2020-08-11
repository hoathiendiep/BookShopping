<%-- 
    Document   : signup.jsp
    Created on : Mar 22, 2020, 1:53:48 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <meta charset="utf-8" />
        <title>Sign Up</title>
        <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
                    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                            <style>
                                html, body, h1, h2, h3, h4, h5 {
                                    font-family: "Raleway", sans-serif
                                }

                                body {
                                    background-color: #20bf55;
                                    background-image: linear-gradient(90deg, #20bf55, #01baef);
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
                            </style>
                            </head>
                            <body class="w3-light-grey">
                                <form onSubmit = "return checkPassword(this)" method="post">
                                    <!-- !PAGE CONTENT! -->
                                    <div class="w3-main">
                                        <div class="w3-container w3-white">
                                            <h2>Đăng Kí Tài Khoản</h2>
                                            <hr>
                                                <!--profile-->
                                                <div class="w3-row-padding" style="margin:0 -16px;">
                                                    <div class="w3-half w3-margin-bottom">
                                                        <label> Tên Đăng Nhập</label>
                                                        <input class="w3-input w3-border" value="${requestScope.username}"  name="username" type="text" required>
                                                    </div>
                                                    <div class="w3-half w3-margin-bottom">
                                                        <label> Mật Khẩu</label>
                                                        <input class="w3-input w3-border" value="${requestScope.password}" name="password" type="password" required>
                                                            <label>Xác Nhận Lại Mật Khẩu</label>
                                                            <input class="w3-input w3-border" type="password" name="repassword" required>
                                                                </div>
                                                                </div>
                                                                </div>
                                                                <div class="w3-container w3-white">
                                                                    <h2>Thông Tin</h2>
                                                                    <hr>
                                                                        <div class="w3-row-padding" style="margin:0 -16px;">
                                                                            <div class="w3-half w3-margin-bottom">
                                                                                <label> Tên</label>
                                                                                <input class="w3-input w3-border" value="${requestScope.firstname}"  name="firstname" type="text" required> 
                                                                            </div>
                                                                            <div class="w3-half w3-margin-bottom">
                                                                                <label> Họ</label>
                                                                                <input class="w3-input w3-border" value="${requestScope.lastname}" name="lastname" type="text" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="w3-row-padding" style="margin:0 -16px;">
                                                                            <div class="w3-quarter w3-margin-bottom">
                                                                                <label>Giới Tính</label><br>
                                                                                    <input class="w3-radio" name="gender" value="male" type="radio" checked> Nam
                                                                                        <c:choose>
                                                                                            <c:when test="${requestScope.gender eq 'False'}">
                                                                                                <input class="w3-radio" name="gender" value="female" type="radio" checked> Nữ
                                                                                                </c:when>
                                                                                                <c:otherwise>
                                                                                                    <input class="w3-radio" name="gender" value="female" type="radio"> Nữ
                                                                                                    </c:otherwise>
                                                                                                </c:choose>
                                                                                                </div>
                                                                                                <div class="w3-quarter w3-margin-bottom">
                                                                                                    <label> Số Điện Thoại</label>
                                                                                                    <input class="w3-input w3-border" value="${requestScope.phone}" name="phone" type="text" pattern="^\d{10}$" required>
                                                                                                </div>
                                                                                                <div class="w3-quarter w3-margin-bottom">
                                                                                                    <label> Ngày Sinh</label>
                                                                                                    <input class="w3-input w3-border" value="${requestScope.dob}" name="dob" type="date" required>
                                                                                                </div>
                                                                                                <div class="w3-quarter w3-margin-bottom">
                                                                                                    <label> Địa Chỉ</label>
                                                                                                    <input class="w3-input w3-border" value="${requestScope.address}"  name="address" type="text" required>
                                                                                                </div>
                                                                                                <div class="w3-half w3-margin-bottom">
                                                                                                    <label> Email</label>
                                                                                                    <input class="w3-input w3-border" type="text" value="${requestScope.email}" name="email" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
                                                                                                </div>
                                                                                                </div>
                                                                                                </div>
                                                                                                <div class="w3-container w3-white">
                                                                                                    <hr><span style="margin-left: 35%"></span>
                                                                                                        <input class="w3-button" type="submit" id="btnstyle" value="Đăng Ký Tài Khoản" onclick="" /><br><br>
                                                                                                                </div>
                                                                                                                </div>
                                                                                                                </form>
                                                                                                                </body>
                                                                                                                <script>
                                                                                                                    <%if (request.getAttribute("error") != null) {%>
                                                                                                                    alert("Account name has existed! Please choose other username");
                                                                                                                    <%}%>
                                                                                                                    function checkPassword(form) {
                                                                                                                        password1 = form.password.value;
                                                                                                                        password2 = form.repassword.value;
                                                                                                                        if (password1 !== password2) {
                                                                                                                            alert("Mật Khẩu Không Trùng Nhau");
                                                                                                                            return false;
                                                                                                                        }
                                                                                                                        else {
                                                                                                                            javascript:form.action = "signup";
                                                                                                                        }
                                                                                                                    }
                                                                                                                </script>
                                                                                                                </html>
