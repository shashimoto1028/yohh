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
                                    <li id="cart"><span style="text-decoration: underline"><a href="cart.html">カート</span></a></li>
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

            <div class="row body_size">
            <div class="col-sm-3">
                <ul class="list-group">
				<c:forEach var="map" items="${categoryMap}">
					 <a href="${pageContext.request.contextPath}/category?category_id=${map.key}" class="list-group-item list-group-item-action"><c:out value="${map.value.value}"/><br></a>
				</c:forEach>
                </ul>
            </div>
            <div class="col-sm-9">
                            	<c:forEach var="category" items="${categoryList}">
                <div class="table-responsive">
                    <table>
                        <tr>
                            <td class="col-sm-7">
                                <div class="discographyTableImg01">
                                    <p>
                                        <a href="product.html"><img src="${category.imgPath}" class="img-responsive" width="120" height="120" alt=""></a>
                                    </p>
                                </div>
                                <div class="discographyTable01In">
                                    <p><a href="product.html"><c:out value="${category.prodName}"/></a></p>
                                    <p><a href="product.html"><c:out value="${category.artistNameKj}"/></a></p>
                                    <p>発売日:<c:out value="${category.salesStartDate}"/>
                                    </p>
                                </div>
                            </td>
                            <td class="col-sm-2" valign="top">
                                <p class="bbbb">価格：<c:out value="${category.dispPrice}"/>円</p>
                                <p class="aaaa">
                                    <a href="cart.html"><img src="resources/images/bt_03_s2_on.png" class="img-responsive" width="120" height="120" alt=""></a>
                                </p>
                            </td>
                        </tr>
                    </table>
                </div>
                <hr>
				</c:forEach>
                <div class="text-center">
                    <ul class="pagination">
                        <li class="disabled">
                            <a href="#" aria-label="前のページへ">
                                <span aria-hidden="true">«</span>
                            </a>
                        </li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">...</a></li>
                        <li>
                            <a href="#" aria-label="次のページへ">
                                <span aria-hidden="true">»</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <hr>
        <div class="center-block">
            <p>&copy;Copyright Lumiere.All rights reserved.</p>
        </div>

    </body>
    </html>
