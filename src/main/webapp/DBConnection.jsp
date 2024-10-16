<%--
    Document   : DBConnection
    Created on : Jun 22, 2024, 9:41:10 AM
    Author     : Qi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- This jsp will act like a normal DBConnection like thay Huong did. -->
<sql:setDataSource
    var="conn"
    driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
    url="jdbc:sqlserver://QUSY\\SQLZ:1433;databaseName=FlappyBird;encrypt=true;trustServerCertificate=true;"
    user="sa"
    password="040104"
    />

<c:set var="DBC" value="${conn}" scope="application" />
