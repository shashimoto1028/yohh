<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MOCK</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <!-- BootstrapのCSS読み込み -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery読み込み -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>
    <!-- jQueryのCSS読み込み -->
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/redmond/jquery-ui.css" >
    <!-- BootstrapのJS読み込み -->
    <script src="../js/bootstrap.min.js"></script>
</head>

<body>

    <div class="container">
            <h3>新規登録</h3>
        <hr>
        <div class="row">
            <div class="col-sm-2">お名前</div>
            <div class="col-sm-10 form-inline" style="padding: 3px;">
                <input type="text" class="form-control input-sm" id="name" placeholder="お名前" size="20">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">フリガナ</div>
            <div class="col-sm-10 form-inline" style="padding: 3px;">
                <input type="text" class="form-control input-sm" id="kana" placeholder="フリガナ" size="20">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">生年月日</div>
            <div class="col-sm-2 form-inline" style="padding: 3px;">
                <input type="text" class="form-control input-sm" id="birthday" placeholder="生年月日" size="20">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">郵便番号</div>
            <div class="col-sm-2 form-inline" style="padding: 3px;">
              <span class="content_form">
                <input type="text" class="form-control input-sm" name="zip" id="zip" placeholder="1600002"/>
              </span>
            </div>
            <div class="col-sm-2" style="margin-left: 10px;">
              <span class="content_form">
                <button type="button" class="btn btn-address-search" onClick="setState()" />郵便番号から検索 </button>
              </span>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">住所</div>
            <div class="col-sm-10" style="padding: 3px;">
                <input type="text" class="form-control input-sm" id="address" placeholder="住所">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">電話番号</div>
            <div class="col-sm-2" style="padding: 3px;">
                <input type="tel" class="form-control input-sm" id="tel_number" placeholder="電話番号">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">Email</div>
            <div class="col-sm-10 form-inline" style="padding: 3px;">
                <input type="text" class="form-control input-sm" id="email" placeholder="Email" size="30">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">ご意見をどうぞ</div>
            <div class="col-sm-10" style="padding: 3px;">
                <textarea class="form-control  input-sm" rows="3" id="comment" placeholder="ご意見をどうぞ"></textarea>
            </div>
        </div>

        <div class="text-center" style="padding: 30px;">
            <button type="button" class="btn btn-success">登録 <span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
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
