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
    <header id="header" style="width:100%">
      <div class="row">
        <div class="col-sm-12">
          <div id="headerFirstWrap">
            <div id="headerFirst">
              <div id="headerInfo">
                <p id="headerTxt01">幅広いジャンルの音楽をお届けするCD通販サイト</p>
                <div id="headerInfoIn">
                  <a href="index.html"><p id="headerLogo">MOCK</p></a>
                  <div id="headerFortune">
                    <p id="guest01" class="wb">こんにちは<span>ゲスト様</span></p>
                  </div>
                </div>
              </div>
              <div id="headerLinkBox">
                <ul id="headerLink01">
                  <li id="qa"><a href="#"><span style="text-decoration: underline">よくある質問</span></a></li>
                  <li id="guide"><a href="#"><span style="text-decoration: underline">ご利用ガイド</span></a></li>
                </ul>
                <ul id="headerLink02">
                  <li id="resister"><a href="resister.html"><span style="text-decoration: underline">新規登録</span></a></li>
                  <li id="login"><a href="login.html"><span style="text-decoration: underline">ログイン</span></a></li>
                  <li id="cart"><span style="text-decoration: underline"><a href="#">カート</span></a></li>
                  <li id="mypage"></a></li>
                  <div class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="text-decoration: underline">マイページ</span></a>
                    <ul class="dropdown-menu">
                  <li><a href="mymenu.html">プロフィールの変更</a></li>
                      <li><a href="rireki.html">購入履歴</a></li>
                    </ul>
                  </div>
                </ul>
                <form method="get" action="#" class="">
                  <div class="search">
                    <input style="width:90px;" type="text" class="textbox se" placeholder="キーワード">
                    <button type="button" class="btn btn-primary btn-xs">検索</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          </header>
        <div class="row">
          <div class="col-sm-9">
            <h3 class="h2_basic01">ショッピングカートのご確認</h3>
            <div class="cartTable01">
            <table>
                <thead>
                  <tr>
                    <th class="col-sm-3">&nbsp;</th>
                    <th class="col-sm-3">商品名</th>
                    <th class="col-sm-1">数量</th>
                    <th class="col-sm-2">価格(税込)</th>
                    <th class="col-sm-3">削除</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="cartTableInner01">
                    <td class="col-sm-3 img01">
                      <a href=""><img src="../images/musume.jpeg" alt="なんちゃって恋愛"  width="115" height="115"></a>
                    </td>
                    <td class="col-sm-3">
                      <p class="prod_cd">なんちゃって恋愛</p>
                    </td>
                    <td class="col-sm-1">
                      <p>
                        <input name="JUCHU_LINE_NO1" type="hidden" value="1">
                        <select name="QT1" class=" efoReq efoMaxLen[5] efoMinLen[] efoFixLen[] efoMaxVal[99999] efoMinVal[1] efoType[1]" onchange="recal();" selectval="1"><option value="1">1</option><option value="2">2</option><option value="3">3</option></select>
                      </p>
                    </td>
                    <td class="col-sm-2">
                      <p>980円</p>
                    </td>
                    <td class="col-sm-3">
                      <input name="action@@@pDel|1|WEBREGLR|26501901|-fxOegsGfG6Th4ArCZ4nxYbupDOlNHCnxQHy-rIgvT_YgPZ5JBULbdD4l-HN0AuT13akvtZgLsZNAPVAhNlpVA" type="submit" value="カートから出す" class="btnCard01">
                    </td>
                  </tr>
                </tbody>
              </table>
              <div class="cartTable02Box01" style="text-align:right;">
                <div class="cartTable03">

                  <p class="td01">合計(税込)
                    <span>¥980</span></p>
                    <p class="td01">送料
                      <span>¥0</span></p>
                    </div>
                    <div class="cart04">
                      <p class="td01">お支払金額(税込)
                        <span>¥980</span></p>
                      </div>
                    </div>
                    <div style="text-align:center">
                      <p id="cart_btn_area">
                        <a href="index.html" class="btn_return PageAction" pageaction="Back">買い物を続ける &gt;</a>
                        <a href="kessai.html" class="btn_buy PageAction" pageaction="nNext">ご購入手続きへ &gt;</a>
                      </p>
                    </div>
                    <!-- /section -->
                  </div>
                </div>
              </div>
            </div>
            <hr>
          </div>
        </body>
        </html>
