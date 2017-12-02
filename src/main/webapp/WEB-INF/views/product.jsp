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
<body 　style="width: 100%">
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
						</div>
					</div>
				</div>
	</header>

	<div id="content">

		<!-- 商品詳細情報 -->
		<div class="commonBox">
			<div class="ttl">
				<h1>商品詳細情報</h1>
			</div>

			<c:if test="${not empty result}">
				<div class="detailBox clearfix">
					<ul class="imgL">
						<li><img src="${result.img_path}" width="300" height="300" /></li>
						<li>
							<div id="sb_news_add" class="clearfix">
								<div id="detail_twitter_add" class="datLi">
									<a href="http://twitter.com/share" class="twitter-share-button"
										data-text="TOMOYO HARADA / 原田知世 / music &amp; me (LP/180g)"
										data-count="horizontal" data-lang="ja">Tweet</a>
									<script type="text/javascript"
										src="http://platform.twitter.com/widgets.js"></script>
								</div>
								<div id="detail_facebook_add" class="datLi">
									<iframe
										src="http://www.facebook.com/v2.0/plugins/like.php?href=http%3A%2F%2Fdiskunion.net%2Fjp%2Fct%2Fdetail%2F1007433535&amp;layout=button_count&amp;show_faces=false&amp;width=120&amp;action=like&amp;colorscheme=light&amp;height=21"
										scrolling="no" frameborder="0"
										style="border: none; overflow: hidden; width: 120px; height: 21px;"
										allowTransparency="true"></iframe>
								</div>
							</div>
						</li>
					</ul>

					<h3>
						<a href="#">${result.artist_name_kj}</a>
					</h3>

					<p class="title">${result.prod_name}</p>
					<p class="price">${result.disp_price}円(税込)</p>

					<p>
						<c:if test="${result.stock > 0}">
							<a href="cart.html"><img
								src="resources/images/bt_03_s2_on.png" class="img-responsive"
								width="120" height="120" alt=""></a>
						</c:if>
						<c:if test="${result.stock == 0}">
							<p style="color: red">在庫がありません。</p>
							<img src="resources/images/bt_03_s2_on.png"
								class="img-responsive imgcart" id="imgcart" width="120"
								height="120" alt=""disabled">
						</c:if>
					</p>

					<!-- <span class="stock">
					<dl>
						<dt>
							<img src="/portal/templates/v2/img/common/zaikoari.gif"
								border="0" alt="新品在庫あり(翌日～翌々日に発送)" title="新品在庫あり(翌日～翌々日に発送)" />
						</dt>
					</dl>
				</span> -->
				</div>
			</c:if>
			<c:if test="${empty result}">
				<div class="alert alert-danger" role="alert">
					<p>${message}</p>
				</div>
			</c:if>
		</div>


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
</body>
</html>
