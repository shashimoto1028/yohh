<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MOCK</title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <!-- BootstrapのCSS読み込み -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <!-- jQuery読み込み -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- BootstrapのJS読み込み -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>

<body>
    <div class="container">
        <h1>Login</h1>
        <hr>
        <form>
            <div class="form-group">
                <label>name</label>
                <input type="text" name="email" class="form-control">
            </div>
            <div class="form-group">
                <label>password</label>
                <input type="text" name="password" class="form-control">
            </div>
            <div class="checkbox">
                <label>
                         <input type="checkbox">remember
                </label>
            </div>
        </form>
                <a href="home.jsp"><button type="submit">ログイン</button></a>
                <a href="resister.jsp">&nbsp;新規会員登録はこちら</a>
        <div class="col-xs-12"></div>
        <hr>
        <div class="center-block">
            <p>&copy;Copyright Lumiere.All rights reserved.</p>
        </div>
    </div>
</body>
</html>
