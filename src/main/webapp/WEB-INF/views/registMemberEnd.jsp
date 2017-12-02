<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>会員登録完了</title>
    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
    <!-- BootstrapのCSS読み込み -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery読み込み -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>
    <!-- jQueryのCSS読み込み -->
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/redmond/jquery-ui.css" >
    <!-- BootstrapのJS読み込み -->
    <script src="resources/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h3>会員登録が完了しました。</h3>
        <form:form action="${pageContext.request.contextPath}/">
        <div class="text-center" style="padding: 30px;">
            <button type="submit" class="btn btn-success">トップページへ戻る<span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
        </form:form>
        <a href="/Test">
            <span style="text-decoration: underline">トップページへ戻る</span>
        </a>
        <br />あなたのcontext.request.contextPathは
        ${pageContext.request.contextPath}
    </div>
</body>
</html>
