<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Rank</title>
        <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('../images/background-img.png');
            background-color: #eee;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }   
        .leaderboard {
            width: 50%;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
        }
        .leaderboard-header {
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .leaderboard-item {
            background-color: #9575cd;
            color: white;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
        }
        .top3 {
            display: flex;
            justify-content: space-around;
            margin-bottom: 10px;
        }
        .top3 div {
            background-color: #b39ddb;
            padding: 10px;
            border-radius: 50%;
            width: 70px;
            height: 70px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .top3 div span {
            display: block;
        }
    </style>
    </head>
    <body>
        <sql:setDataSource var="conn"
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://LAPTOP-AHF1EMO4:1433;databaseName=Flappybird;encrypt=true;trustServerCertificate=true;"
                           user="sa"
                           password="L692003"
                           />

        <sql:query var="result" dataSource="${conn}">
            SELECT a.nickname, s.score 
            FROM account a
            JOIN score s ON a.id = s.account_id
            ORDER BY s.score DESC;
        </sql:query>

    <div class="leaderboard">
        <div class="leaderboard-header">LEADERBOARD</div>
        <div class="top3">
            <c:forEach var="user" items="${result.rows}" varStatus="status">
                <c:if test="${status.index < 3}">
                    <div>
                        <span><c:out value="${status.index + 1}"/></span>
                        <span><c:out value="${user.nickname}"/></span>
                        <span><c:out value="${user.score}"/></span>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <c:forEach var="user" items="${result.rows}" varStatus="status">
            <c:if test="${status.index >= 3}">
                <div class="leaderboard-item">
                    <span><c:out value="${status.index + 1}"/>. <c:out value="${user.nickname}"/></span>
                    <span><c:out value="${user.score}"/></span>
                </div>
            </c:if>
        </c:forEach>
    </div>
    </body>
</html>
