<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flappy Bird Game</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
        
        <style>
            body {
                background: #87CEEB; /* Màu nền bầu trời */
                color: #333;
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }
            
            .background {
                background-image: url('https://example.com/path/to/flappy-bird-background.jpg'); /* Hình nền của game */
                background-size: cover;
                background-position: center;
                height: 100vh;
                width: 100vw;
                position: absolute;
                top: 0;
                left: 0;
                z-index: -1;
            }

            .container {
                background: rgba(255, 255, 255, 0.9);
                border-radius: 15px;
                padding: 2rem;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                max-width: 500px;
                margin: 5rem auto; /* Căn giữa và tạo khoảng cách từ trên xuống */
                text-align: center;
            }

            a {
                text-decoration: none; /* Loại bỏ gạch chân mặc định của liên kết */
            }

            .custom-btn {
                font-size: 1.5rem;
                padding: 1rem 2rem;
                border-radius: 10px;
                text-transform: uppercase;
                font-weight: bold;
                display: inline-block;
                margin: 0.5rem;
            }

            .btn-play {
                background: #FFCC00;
                color: #333;
                border: none;
            }

            .btn-play:hover {
                background: #FFD700;
                color: #fff;
            }

            .btn-login {
                background: #32CD32;
                color: #fff;
                border: none;
            }

            .btn-login:hover {
                background: #228B22;
            }

            .btn-register {
                background: #1E90FF;
                color: #fff;
                border: none;
            }

            .btn-register:hover {
                background: #4682B4;
            }

            .btn-rank {
                background: #FF4500;
                color: #fff;
                border: none;
            }

            .btn-rank:hover {
                background: #FF6347;
            }

            .form-container {
                background: rgba(255, 255, 255, 0.8);
                padding: 1.5rem;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                margin: 1rem auto;
                max-width: 400px;
            }

            .form-control {
                border-radius: 5px;
                border: 1px solid #ddd;
            }

            .custom-spacing {
                margin-bottom: 1.2rem;
            }

            h1, h2 {
                color: #333;
                margin-bottom: 1.5rem;
            }

            .hidden {
                display: none;
            }

            .btn-group {
                display: flex;
                justify-content: center;
                gap: 1rem;
            }

            .btn-row {
                display: flex;
                justify-content: center;
                gap: 1rem;
                margin-bottom: 1.5rem;
            }

            .text-center {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="background"></div>
        
        <div class="container">
            <h1>Welcome To Flappy Bird</h1>

            <div class="btn-row">
                <a href="gameWindow.jsp" class="btn custom-btn btn-play">Play the game</a>
                <a href="Rank.jsp" class="btn custom-btn btn-rank">Rank</a>
            </div>

            <div class="btn-group">
                <button class="btn custom-btn btn-login" onclick="showForm('loginForm')">Login</button>
                <button class="btn custom-btn btn-register" onclick="showForm('registerForm')">Register</button>
            </div>

            <div id="loginForm" class="hidden mt-3 form-container">
                <h2>Login</h2>
                <form>
                    <div class="custom-spacing">
                        <input type="email" class="form-control" id="loginEmail" placeholder="Email address">
                    </div>
                    <div class="custom-spacing">
                        <input type="password" class="form-control" id="loginPassword" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
            </div>

            <div id="registerForm" class="hidden mt-3 form-container">
                <h2>Register</h2>
                <form>
                    <div class="custom-spacing">
                        <input type="email" class="form-control" id="registerEmail" placeholder="Email address">
                    </div>
                    <div class="custom-spacing">
                        <input type="password" class="form-control" id="registerPassword" placeholder="Password">
                    </div>
                    <div class="custom-spacing">
                        <input type="password" class="form-control" id="registerConfirmPassword" placeholder="Confirm Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Register</button>
                </form>
            </div>

            <div class="mt-5 text-center">
                <h2>Quảng cáo</h2>
                <div class="text-center">
                    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4313795108841422" crossorigin="anonymous"></script>
                    <ins class="adsbygoogle"
                         style="display:inline-block;width:728px;height:90px"
                         data-ad-client="ca-pub-4313795108841422"
                         data-ad-slot="2239422319"></ins>
                    <script>
                         (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
            </div>
        </div>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
        
        <script>
            function showForm(formId) {
                document.getElementById('loginForm').classList.add('hidden');
                document.getElementById('registerForm').classList.add('hidden');
                document.getElementById(formId).classList.remove('hidden');
            }
        </script>
    </body>
</html>
