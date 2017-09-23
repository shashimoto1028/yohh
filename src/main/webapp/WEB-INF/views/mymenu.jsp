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
        <h3>プロフィールの変更・登録</h3>
        <hr>
        <div class="row">
            <table class="table table-bordered table-striped">
                <tr>
                    <td class="col-sm-2">お名前</td>
                    <td class="form-inline">
                        <input type="text" class="form-control input-sm" value="橋本" size="20">
                        <input type="text" class="form-control input-sm" value="真治" size="20">
                    </td>
                </tr>
                <tr>
                    <td class="col-sm-2">フリガナ</td>
                    <td class="form-inline">
                        <input type="text" class="form-control input-sm" value="ハシモト" size="20">
                        <input type="text" class="form-control input-sm" value="シンジ" size="20">
                    </td>
                </tr>
                <tr>
                    <td class="col-sm-2">郵便番号</td>
                    <td class="form-inline">
                        <input type="text" class="form-control input-sm" value="123-1234" size="20">
                    </td>
                </tr>
                <tr>
                    <td class="col-sm-2">住所</td>
                    <td>
                        <input type="text" class="form-control input-sm" value="埼玉県志木市安積1-2-111" size="20">
                    </td>
                </tr>
                <tr>
                    <td class="col-sm-2">生年月日</td>
                    <td class="form-inline">
                        <input type="text" class="form-control input-sm" value="1990年10月28日" size="20">
                    </td>
                    <tr>
                        <td class="col-sm-2">電話番号</td>
                        <td class="form-inline">
                            <input type="tel" class="form-control input-sm" value="965-0123-0987" size="20">
                        </td>
                    </tr>
                </tr>
                <tr>
                    <td class="col-sm-2">E-mail</td>
                    <td>
                        <input type="text" class="form-control input-sm" value="xxxxxxxx@yahaa.co.jp" size="20">
                    </td>
                </tr>
            </table>
        </div>
        <div class="text-center" style="padding: 30px;">
            <button type="button" class="btn btn-success">変更<span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
    </div>
</body>

</html>
