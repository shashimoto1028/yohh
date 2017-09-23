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
    <h3>注文のご確認</h3>
    <hr>
    <p>
      <font color="red">この画面ではまだご注文は完了しておりません。</font>
      <br>内容をご確認いただき、ご注文内容が確定しましたら「注文の確定」をクリックして下さい。
    </p>
    <div class="row">
      <div class="table-responsive">
        <table class="table table-bordered">
          <tr class="info">
            <td colspan="7"><strong>ご注文明細</strong></td>
          </tr>
          <tr class="active">
            <td class="col-sm-5" colspan="2">商品</td>
            <td class="col-sm-1">単価</td>
            <td class="col-sm-1">個数</td>
            <td class="col-sm-1">小計(税込)</td>
            <td class="col-sm-1">送料</td>
            <td class="col-sm-1">合計</td>
          </tr>
          <tr>
            <td class="col-sm-1">
              <img src="../images/4988002738120.jpg" class="img-responsive img-margin" width="120" height="120" alt="">
            </td>
            <td class="col-sm-4">注文番号:01897-20170528-0726810159
              <br>
              <br><a>CRAZY KEN BAND ALL TIME BEST “愛の世界”</a>
              <br>
              <br>
            </td>
            <td class="col-sm-1">13,980円</td>
            <td class="col-sm-1">1</td>
            <td class="col-sm-1">13,980円</td>
            <td class="col-sm-1">無料</td>
            <td class="col-sm-1">13,980円</td>
          </tr>
        </table>
      </div>
      <p>■お支払い方法</p>
      <div class="table-responsive">
        <table class="table table-bordered">
          <tr>
            <td class="col-sm-2 active">お支払い方法</td>
            <td class="col-sm-10">クレジットカード決済</td>
          </tr>
        </table>
      </div>
      <p>■お客様情報</p>
      <div class="table-responsive">
        <table class="table table-bordered">
          <tr>
            <td class="col-sm-2 active">お名前</td>
            <td class="form-inline">橋本 真治</td>
          </tr>
          <tr>
            <td class="col-sm-2 active">フリガナ</td>
            <td class="">ハシモト　シンジ</td>
          </tr>
          <tr>
            <td class="col-sm-2 active">郵便番号</td>
            <td class="">123-1234</td>
          </tr>
          <tr>
            <td class="col-sm-2 active">住所</td>
            <td>埼玉県aaa市安積1-2-111</td>
          </tr>
          <tr>
            <td class="col-sm-2 active">生年月日</td>
            <td class="form-inline">1990年10月28日</td>
            <tr>
              <td class="col-sm-2 active">電話番号</td>
              <td class="form-inline">065-0123-0987</td>
            </tr>
          </tr>
          <tr>
            <td class="col-sm-2 active">E-mail</td>
            <td>xxxxxxxx@yahaa.co.jp</td>
          </tr>
        </table>
      </div>
      <p>■お届け先、配送</p>
      <div class="table-responsive">
        <table class="table table-bordered">
          <tr>
            <td class="col-sm-2 active">配送方法</td>
            <td class="col-sm-10">宅配便</td>
          </tr>
          <tr>
            <td class="col-sm-2 active">注文者情報、お届け先</td>
            <td class="col-sm-10">橋本　
              <br>郵便番号：
              <br>住所：埼玉県 aaa市 安積1-2-111
            </td>
          </tr>
          <tr>
            <td class="col-sm-2 active">配送の日時の指定・その他ご要望</td>
            <td class="col-sm-10">配送日時指定：11月27日 午前中
              <br>
              <br>
              <br>
              <br>
              <br>
            </td>
          </tr>
        </table>
      </div>
      <div class="text-center" style="padding: 30px;">
        <button type="button" class="btn btn-success">注文の確定<span class="glyphicon glyphicon-chevron-right"></span></button>
      </div>
    </div>
  </div>
</body>
</html>
