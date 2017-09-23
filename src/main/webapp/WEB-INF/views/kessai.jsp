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
		<h3>決済画面</h3>
		<hr>
		<div class="row">
			<form class="form-horizontal" action="/hoge/foo" method="post">
				<h4>支払い方法を選択</h4>
				<hr>
				<div class="radio">
					<label><input type="radio" name="radio" id="radio1" value="radio1"><strong>クレジットカード</strong></label>
				</div>
				<table class="table table-bordered table-striped">
					<tr>
						<td class="col-sm-2">カード会社</td>
						<td>
							<div class="form-group">
								<div class="col-sm-2">
									<select class="form-control input-sm" id="usage1select3">
										<option value="0">選択してください</option>
										<option value="1">VISA</option>
										<option value="2">MASTER</option>
										<option value="3">JCB</option>
									</select>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="col-sm-2">クレジットカード名義<br>(半角)</td>
						<td class="form-inline">
							<input type="text" class="form-control input-sm" value="" size="20">
						</td>
					</tr>
					<tr>
						<td class="col-sm-2">クレジットカード番号<br>(半角)</td>
						<td class="form-inline">
							<input type="text" class="form-control input-sm" value="" size="20">
						</td>
					</tr>
					<tr>
						<td class="col-sm-2">有効期限</td>
						<td>
							<div class="form-group">
								<div class="col-sm-2">
									<select class="form-control input-sm" id="usage1select3">
										<option value="0">--</option>
										<option value="1">01</option>
										<option value="2">02</option>
										<option value="3">03</option>
										<option value="4">04</option>
										<option value="5">05</option>
										<option value="6">06</option>
										<option value="7">07</option>
										<option value="8">08</option>
										<option value="9">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select>
								</div>
								<div class="col-sm-2">
									<select class="form-control input-sm" id="usage1select3">
										<option value="0">--</option>
										<option value="1">2017</option>
										<option value="2">2018</option>
										<option value="3">2019</option>
										<option value="4">2020</option>
										<option value="5">2021</option>
										<option value="6">2022</option>
										<option value="7">2023</option>
										<option value="8">2024</option>
										<option value="9">2025</option>
										<option value="10">2026</option>
										<option value="11">2027</option>
										<option value="12">2028</option>
									</select>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="col-sm-2">お支払い方法</td>
						<td>
							<div class="form-group">
								<div class="col-sm-2">
									<select class="form-control input-sm" id="usage1select3">
										<option value="0">一括払い</option>
									</select>
								</div>
							</div>
						</td>
					</tr>
				</table>
				<div class="radio">
					<label><input type="radio" name="radio" id="radio2" value=""><strong>クレジットカード以外(代金引換)</strong></label>
				</div>
			</div>
		</form>
				<div class="row">
		<hr>
		<br>
		<br>
		<br>
		<h4>配送方法を選択</h4>
		<hr>
		<form>
		<div class="radio">
			<label><input type="radio" name="radio" id="radio3" value="" checked>宅配便(佐川急便)</label>
		</div>
		</form>
		<hr>
		<p>お届け日指定</p>
		<from>
		<div class="radio">
			<label><input type="radio" name="radio" id="radio4" value="">日付指定なし</label>
		</div>
		<div class="">
			<div class="radio">
				<label><input type="radio" name="radio" id="radio5" value="">日付指定</label>
			</div>
			<div class="col-sm-2">
				<select class="form-control input-sm" id="usage1select3">
					<option value="0">--</option>
					<option value="1">11月27日(月)</option>
					<option value="2">11月27日(月)</option>
					<option value="3">11月27日(月)</option>
					<option value="4">11月27日(月)</option>
					<option value="5">11月27日(月)</option>
					<option value="6">11月27日(月)</option>
				</select>
			</div>
		</div>
		</from>
		<br>
		<br>
		<p>お届け時間</p>
		<form>
		<div class="radio">
			<label><input type="radio" name="radio" id="radio5" value="">指定なし</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="radio" id="radio5" value="">午前中</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="radio" id="radio5" value="">12時〜14時</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="radio" id="radio5" value="">14時〜16時</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="radio" id="radio5" value="">16時〜18時</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="radio" id="radio5" value="">18時〜21時</label>
		</div>
		</form>
		<hr>
		<div class="text-center" style="padding: 30px;">
			<a href="buy_check.html">
				<button type="button" class="btn btn-success">注文確認画面へ
					<span class="glyphicon glyphicon-chevron-right"></span>
				</button>
			</a>
		</div>
		</div>
	</div>
</body>

</html>
