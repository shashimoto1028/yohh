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
    <h3>お支払い方法、配送方法</h3>
    <hr>
    <div class="row">
      <div class="table-responsive">
        <table class="table table-bordered asd">
          <tr>
            <td class="col-sm-2 active">お支払い方法</td>
            <td class="col-sm-10">クレジットカード決済
              <br>VISA
              <br>カード番号：XXXX-XXXX-XXXX-0700
              <br>お支払い回数：一括
              <br>カード有効期限：10年18月
            </td>
          </tr>
          <tr>
            <td class="col-sm-2 active">配送方法</td>
            <td class="col-sm-10">宅配便</td>
          </tr>
          <tr>
            <td class="col-sm-2 active">注文者情報</td>
            <td class="col-sm-10">橋本 真治
              <br>住所：埼玉県 志木市 中宗岡2-19-35サンフィオーレ204
              <br>電話：080-0123-0909
              <br>メールアドレス：xxxxxx@gmail.com
            </td>
          <tr>
              <td class="col-sm-2 active">備考</td>
              <td class="col-sm-10">[配送日時指定:]
                <br>
                <br>
                <br>
                <br>
                <br>
              </td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</body>
</html>
