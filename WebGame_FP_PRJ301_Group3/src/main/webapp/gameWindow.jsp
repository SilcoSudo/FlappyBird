<%--
    Document   : index
    Created on : Jun 28, 2024, 8:38:45 PM
    Author     : hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flappy Bird Game</title>
        <link rel="icon" type="image/png" href="images/favicon.ico"/>
        <link rel="stylesheet" href="css/style.css">
        <script src="javaScript/script.js" defer></script>
    </head>

    <body>
        <div class="background"></div>
        <img src="images/Bird.png" alt="bird-img" class="bird" id="bird-1">
        <div class="message messageStyle">
            Enter To Start Game <p><span style="color: red;">&uarr;</span> ArrowUp to Control</p>
        </div>
        <div class="score">
            <span class="score_title">Score:</span>
            <span class="score_val">0</span>
        </div>
    </body>
</html>
