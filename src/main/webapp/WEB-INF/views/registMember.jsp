<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>会員登録</title>
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
            <h3>新規登録</h3>
        <hr>
        <form:form modelAttribute="registMemberForm" action="${pageContext.request.contextPath}/registMemberInsert" method="POST">
        <div class="row">
        		<div class="form-group">
            		<label>お名前</label>
            		<form:input path="name" class="form-control"/>
            		<form:errors path="name" cssStyle="color:red"/>
        		</div>
        </div>
        <div class="row">
        		<div class="form-group">
            		<label>フリガナ</label>
            		<form:input path="kana" class="form-control"/>
            		<form:errors path="kana" cssStyle="color:red"/>
            	</div>
        </div>
        <div class="row">
        		<div class="form-group">
            		<label>生年月日</label>
            		<form:input path="birthday" class="form-control"/>
            		<form:errors path="birthday" cssStyle="color:red"/>
        		</div>
        </div>
        <div class="row">
        		<div class="form-group">
            		<label>郵便番号</label>
            		<form:input path="zip" class="form-control"/>
            		<form:errors path="zip" cssStyle="color:red"/>
            	</div>
        </div>
        <div class="row">
        		<div class="form-group">
            		<label>住所</label>
            		<form:input path="address" class="form-control"/>
            		<form:errors path="address" cssStyle="color:red"/>
            </div>
        </div>
        <div class="row">
        		<div class="form-group">
            		<label>電話番号</label>
            		<form:input path="tel" class="form-control"/>
            		<form:errors path="tel" cssStyle="color:red"/>
        		</div>
        </div>
        <div class="row">
        		<div class="form-group">
            		<label>メール</label>
            		<form:input path="mail" class="form-control"/>
            		<form:errors path="mail" cssStyle="color:red"/>
        		</div>
        </div>
        <div class="text-center" style="padding: 30px;">
            <button type="submit" class="btn btn-success">登録 <span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
		</form:form>
    </div>
</body>
<script>
  // 郵便番号から住所を取得
  function setState() {
    var zip = $('#zip').val();

    // ここでzipのバリデーションを行ってください

    $.ajax({
      type : 'get',
      url : 'https://maps.googleapis.com/maps/api/geocode/json',
      crossDomain : true,
      dataType : 'json',
      data : {
        address : zip,
        language : 'ja',
        sensor : false
      },
      success : function(resp){
        if(resp.status == "OK"){
          // APIのレスポンスから住所情報を取得
          var obj = resp.results[0].address_components;
          if (obj.length < 5) {
            alert('正しい郵便番号を入力してください');
            return false;
          }
          $resultValue = obj[3]['long_name'] + obj[2]['long_name'] + obj[1]['long_name']
          $('#address').val($resultValue);
        }else{
          alert('住所情報が取得できませんでした');
          return false;
        }
      }
    });
  }

  $(function() {
   $("#birthday").datepicker();
  });
</script>
</html>
