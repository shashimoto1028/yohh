<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MOCK</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<!-- BootstrapのCSS読み込み -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<!-- jQuery読み込み -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- BootstrapのJS読み込み -->
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>


<body>
	<div class="container">
		<header id="header" style="width: 100%">
			<div class="row">
				<div class="col-sm-12">
					<div id="headerFirstWrap">
						<div id="headerFirst">
							<div id="headerInfo">
								<p id="headerTxt01">幅広いジャンルの音楽をお届けするCD通販サイトああああ</p>
								<div id="headerInfoIn">
									<a href="index.html"><p id="headerLogo">MOCK</p></a>
									<div id="headerFortune">
										<c:if test="${not empty customer.customer_name_kj}">
											<p id="guest01" class="wb">
												こんにちは<span>${customer.customer_name_kj}様</span>
											</p>
										</c:if>
										<c:if test="${empty customer.customer_name_kj}">
											<p id="guest01" class="wb">
												こんにちは<span>ゲスト様</span>
											</p>
										</c:if>

									</div>
								</div>
							</div>
							<div id="headerLinkBox">
								<ul id="headerLink01">
									<li id="qa"><a href="#"><span
											style="text-decoration: underline">よくある質問</span></a></li>
									<li id="guide"><a href="#"><span
											style="text-decoration: underline">ご利用ガイド</span></a></li>
								</ul>
								<ul id="headerLink02">
									<li id="resister"><a
										href="${pageContext.request.contextPath}/registMember"> <span
											style="text-decoration: underline">会員登録</span>
									</a></li>
									<c:if test="${not empty customer.customer_name_kj}">
										<li id="login"><a
											href="${pageContext.request.contextPath}/logout"><span
												style="text-decoration: underline">ログアウト</span></a></li>
									</c:if>
									<c:if test="${empty customer.customer_name_kj}">
										<li id="login"><a
											href="${pageContext.request.contextPath}/login"><span
												style="text-decoration: underline">ログイン</span></a></li>
									</c:if>

									<li id="cart"><span style="text-decoration: underline"><a
											href="cart.html">カート</span></a></li>
									<li id="mypage"></a></li>
									<div class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
											style="text-decoration: underline">マイページ</span></a>
										<ul class="dropdown-menu">
											<li><a href="mymenu.html">プロフィールの変更</a></li>
											<li><a href="rireki.html">購入履歴</a></li>
										</ul>
									</div>
								</ul>
								<form method="get" action="#" class="">
									<div class="search">
										<input style="width: 90px;" type="text" class="textbox se"
											placeholder="キーワード">
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
						<a
							href="${pageContext.request.contextPath}/category?category_id=${map.key}"
							class="list-group-item list-group-item-action"><c:out
								value="${map.value.value}" /><br></a>
					</c:forEach>
				</ul>
			</div>
			<div class="col-sm-9">
				<a href="product.html"> <img
					src="resources/images/07_mizukinana.jpg" class="img-responsive"
					width="" height="" alt="">
				</a>
				<hr>
				<h3>News</h3>
				<hr>
				<table>
					<tr>
						<td class="col-sm-1"><a>2017/07/28</a></td>
						<td class="col-sm-8"><a>【イージーリスニング】銀座に似合う音楽を集めた山野楽器オリジナルCD第二弾『GINZA
								Feeling』発売決定</a></td>
					</tr>
				</table>

				<table>
					<tr>
						<td class="col-sm-1"><a>2017/07/28</a></td>
						<td class="col-sm-8"><a>【イージーリスニング】銀座に似合う音楽を集めた山野楽器オリジナルCD第二弾『GINZA
								Feeling』発売決定</a></td>
					</tr>
				</table>

				<table>
					<tr>
						<td class="col-sm-1"><a>2017/07/28</a></td>
						<td class="col-sm-8"><a>【イージーリスニング】銀座に似合う音楽を集めた山野楽器オリジナルCD第二弾『GINZA
								Feeling』発売決定</a></td>
					</tr>
				</table>
				<table>
					<tr>
						<td class="col-sm-1"><a>2017/07/28</a></td>
						<td class="col-sm-8"><a>【イージーリスニング】銀座に似合う音楽を集めた山野楽器オリジナルCD第二弾『GINZA
								Feeling』発売決定</a></td>
					</tr>
				</table>
				<table>
					<tr>
						<td class="col-sm-1"><a>2017/07/28</a></td>
						<td class="col-sm-8"><a>【イージーリスニング】銀座に似合う音楽を集めた山野楽器オリジナルCD第二弾『GINZA
								Feeling』発売決定</a></td>
					</tr>
				</table>
				<hr>
				<h3>Ranking</h3>
				8月5日(土)更新
				<hr>
				<table>
					<tr>
						<td class="col-sm-1"><img
							src="/resources/images/ranking1.gif" class="img-responsive"
							width="" height="" alt=""></td>
						<td class="col-sm-2"><a href="product.html"> <img
								src="resources/images/F56539E0.jpg" class="img-responsive"
								width="120" height="120" alt="">
						</a></td>
						<td>CRAZY KEN BAND<br>ALL TIME BEST “愛の世界”
						</td>
						<td class="col-sm-1"><img
							src="/resources/images/ranking2.gif" class="img-responsive"
							width="" height="" alt=""></td>
						<td class="col-sm-2"><a href="product.html"> <img
								src="resources/images/F5653691.jpg" class="img-responsive"
								width="120" height="120" alt="">
						</a></td>
						<td>CRAZY KEN BAND<br>ALL TIME BEST “愛の世界”
						</td>
						<td class="col-sm-1"><img src="resources/images/ranking3.gif"
							class="img-responsive" width="" height="" alt=""></td>
						<td class="col-sm-2"><a href="product.html"> <img
								src="resources/images/F5655F56.jpg" class="img-responsive"
								width="120" height="120" alt="">
						</a></td>
						<td>CRAZY KEN BAND <br>ALL TIME BEST “愛の世界”
						</td>
					</tr>
				</table>
				<hr>
				<h3>予約・発売中のおすすめ新作CD</h3>
				<hr>
				<table>
					<tr>
						<c:forEach var="obj" items="${newProdList}" varStatus="status">
							<c:if test="${status.index < 5}">
								<td class="col-sm-1.8" width="167px"><a href="product.html">
										<img src="${obj.img_path}" class="img-responsive" width="120"
										height="120" alt="">
								</a>
									<p>${obj.artist_name_kj}<br>${obj.prod_name}</p></td>
							</c:if>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="obj" items="${newProdList}" varStatus="status">
							<c:if test="${status.index >= 5}">
								<td class="col-sm-1.8" width="167px"><a href="product.html">
										<img src="${obj.img_path}" class="img-responsive" width="120"
										height="120" alt="">
								</a>
									<p>${obj.artist_name_kj}<br>${obj.prod_name}</p></td>
							</c:if>
						</c:forEach>
					</tr>

				</table>
			</div>
		</div>
		<hr>
		<footer id="footer">
			<!-- ▼▼▼ PC ▼▼▼-->
			<p class="pageTop pagetop-pc">
				<a href="#"><img
					src="/excludes/common/img/footer/btn_pagetop01.png" width="101"
					height="101" alt="TOP ページトップへ"></a>
			</p>
			<!-- ▲▲▲ PC ▲▲▲-->

			<div id="footerWrap">
				<div id="footerIn">
					<p id="copyright">Copyright (C) MOCK Corporation.All Rights
						Reserved.</p>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>
