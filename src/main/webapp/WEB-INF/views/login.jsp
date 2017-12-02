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
    <title>ログイン</title>
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
        <form:form modelAttribute="loginForm" action="${pageContext.request.contextPath}/check" method="POST">
            <div class="form-group">
                <label name="mail">mail</label>
                <form:input path="mail" class="form-control"/>
    				<form:errors path="mail" cssStyle="color:red" />
                <!--<form:input path="mail" class="form-control"/>-->
            </div>
            <div class="form-group">
                <label name="password">password</label>
                <form:input type="text" path="password" class="form-control"/>
                <form:errors path="password" cssStyle="color:red" />
            </div>
            <c:if test="${message != ''}" var="flg">
            		<p style="color:red">${message}</p>
            </c:if>
			<button type="submit">ログイン</button>
			<a href="${pageContext.request.contextPath}/registMember">&nbsp;新規会員登録はこちら</a>
        </form:form>


        <div class="col-xs-12"></div>
        <hr>
        <div class="center-block">
            <p>&copy;Copyright Lumiere.All rights reserved.</p>
        </div>
    </div>
</body>
</html>
