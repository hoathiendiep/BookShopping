<%-- 
    Document   : login.jsp
    Created on : Mar 22, 2020, 1:52:30 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login</title>
    <style>
                html, body, h1, h2, h3, h4, h5 {
            font-family: "Raleway", sans-serif
        }
        body {
            text-align: center;
            background-color: #20bf55;
            background-image: linear-gradient(90deg, #20bf55, #01baef);
        }

        form {
            border: 1px solid #f1f1f1;
            display: inline-block;
            width: 390px;
            padding: 77px 55px 33px 55px;
            margin-top: 30px;
            background: #fff;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #75A3FF;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 25px;
        }
            button:hover {
                opacity: 0.8;
            }
        .container {
            padding: 16px;
        }
        .welcom {
            display: block;
            font-size: 30px;
            color: #333333;
            line-height: 1.2;
            text-align: center;
        }
    </style>
</head>
<body class="w3-light-grey">
    <form action="login" method="post">
        <span class="welcom">Welcom to BookHouse</span>
        <div class="w3-main container">
            <label for="uname"><b>Tên Đăng Nhập</b></label>
            <input name="username" type="text" class="form-control" placeholder="Enter Username" required>

            <label for="psw"><b>Mật Khẩu</b></label>
            <input type="password" name="password" class="form-control" placeholder="Enter Password" required>

            <button type="submit">Đăng Nhập</button>
            <label>
                Chưa Có Tài Khoản? <a href="signup">Đăng Ký</a>
            </label>
        </div>
    </form>
    <script>
        <%if (request.getParameter("correct")!=null&&request.getParameter("correct").equals("no")) {%>
        alert("Tên Đăng Nhập hoặc Mật Khẩu chưa đúng!");   
            <%}%>
    </script>
</body>
</html>
