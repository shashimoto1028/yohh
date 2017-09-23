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
        <h3>購入履歴</h3>
        <hr>
        <!-- 購入履歴 1つ目 -->
        <div class="row">
            <div class="table-responsive">
                <table class="table table-bordered asd">
                    <tr>
                        <td class="col-sm-2 active">注文日</td>
                        <td class="col-sm-10">2017年5月28日</td>
                    </tr>
                    <tr>
                        <td class="col-sm-2 active">注文番号</td>
                        <td class="col-sm-10">301897-20170528-0726810159</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="table-responsive">
                <table class="table table-bordered asd">
                    <tr class="active">
                        <td class="col-sm-2">送付先</td>
                        <td class="col-sm-5" colspan="2">商品</td>
                        <td class="col-sm-1">単価</td>
                        <td class="col-sm-1">個数</td>
                        <td class="col-sm-1">小計(税込)</td>
                        <td class="col-sm-1">送料</td>
                        <td class="col-sm-1">合計</td>
                    </tr>
                    <tr>
                        <td class="col-sm-2">
                            <span>橋本 真治</span>
                            <br>
                            <span>〒 322-222222</span>
                            <br>
                            <span>埼玉県 西市 安積1-2-111</span>
                            <br>
                            <span>電話：02222-3222-222</span>
                        </td>
                        <td class="col-sm-1">

                            <img src="<c:url value="/images/4988002738120.jpg" /> class="img-responsive img-margin" width="120" height="120" alt="">
                        </td>
                        <td class="col-sm-4">
                            <a>CRAZY KEN BAND ALL TIME BEST “愛の世界”</a>
                            <br>
                            <br>
                            <p>お届けの目安：ご注文確認後1-5営業日以内に発送予定</p>
                            <br>
                            <p><a href="rireki_check.html">お支払い方法、配送方法を確認</a></p>
                        </td>
                        <td class="col-sm-1">13,980円</td>
                        <td class="col-sm-1">1</td>
                        <td class="col-sm-1">13,980円</td>
                        <td class="col-sm-1">無料</td>
                        <td class="col-sm-1">13,980円</td>
                    </tr>
                </table>
            </div>
        </div>
        <hr>
        <!-- 購入履歴 2つ目　ここから下はループで回す-->
        <div class="row">
            <div class="table-responsive">
                <table class="table table-bordered asd">
                    <tr>
                        <td class="col-sm-2 active">注文日</td>
                        <td class="col-sm-10">2017年5月28日</td>
                    </tr>
                    <tr>
                        <td class="col-sm-2 active">注文番号</td>
                        <td class="col-sm-10">301897-20170528-0726810159</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="table-responsive">
                <table class="table table-bordered asd">
                    <tr class="active">
                        <td class="col-sm-2">送付先</td>
                        <td class="col-sm-5" colspan="2">商品</td>
                        <td class="col-sm-1">単価</td>
                        <td class="col-sm-1">個数</td>
                        <td class="col-sm-1">小計(税込)</td>
                        <td class="col-sm-1">送料</td>
                        <td class="col-sm-1">合計</td>
                    </tr>
                    <tr>
                        <td class="col-sm-2">
                            <span>橋本 真治</span>
                            <br>
                            <span>〒 123-8433456</span>
                            <br>
                            <span>埼玉krgj</span>
                            <br>
                            <span>電話：03689456</span>
                        </td>
                        <td class="col-sm-1">
                            <img src="../images/4988002738120.jpg" class="img-responsive img-margin" width="120" height="120" alt="">
                        </td>
                        <td class="col-sm-4 left-none">
                            <a>CRAZY KEN BAND ALL TIME BEST “愛の世界”</a>
                            <br>
                            <br>
                            <p>お届けの目安：ご注文確認後1-5営業日以内に発送予定</p>
                            <br>
                            <p><a href="rireki_check.html">お支払い方法、配送方法を確認</a></p>
                        </td>
                        <td class="col-sm-1">13,980円</td>
                        <td class="col-sm-1">1</td>
                        <td class="col-sm-1">13,980円</td>
                        <td class="col-sm-1">無料</td>
                        <td class="col-sm-1">13,980円</td>
                    </tr>
                </table>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="table-responsive">
                <table class="table table-bordered asd">
                    <tr>
                        <td class="col-sm-2 active">注文日</td>
                        <td class="col-sm-10">2017年5月28日</td>
                    </tr>
                    <tr>
                        <td class="col-sm-2 active">注文番号</td>
                        <td class="col-sm-10">301897-20170528-0726810159</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="table-responsive">
                <table class="table table-bordered asd">
                    <tr class="active">
                        <td class="col-sm-2">送付先</td>
                        <td class="col-sm-5" colspan="2">商品</td>
                        <td class="col-sm-1">単価</td>
                        <td class="col-sm-1">個数</td>
                        <td class="col-sm-1">小計(税込)</td>
                        <td class="col-sm-1">送料</td>
                        <td class="col-sm-1">合計</td>
                    </tr>
                    <tr>
                        <td class="col-sm-2">
                            <span>橋本 真治</span>
                            <br>
                            <span>〒 123-8433456</span>
                            <br>
                            <span>埼玉krgj</span>
                            <br>
                            <span>電話：03689456</span>
                        </td>
                        <td class="col-sm-1">
                            <img src="../images/4988002738120.jpg" class="img-responsive img-margin" width="120" height="120" alt="">
                        </td>
                        <td class="col-sm-4 left-none">
                            <a>CRAZY KEN BAND ALL TIME BEST “愛の世界”</a>
                            <br>
                            <br>
                            <p>お届けの目安：ご注文確認後1-5営業日以内に発送予定</p>
                            <br>
                            <p><a href="rireki_check.html">お支払い方法、配送方法を確認</a></p>
                        </td>
                        <td class="col-sm-1">13,980円</td>
                        <td class="col-sm-1">1</td>
                        <td class="col-sm-1">13,980円</td>
                        <td class="col-sm-1">無料</td>
                        <td class="col-sm-1">13,980円</td>
                    </tr>
                </table>
            </div>
        </div>
        <hr>
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
        <hr>
    </div>
    <hr>
</div>
</body>
</html>
