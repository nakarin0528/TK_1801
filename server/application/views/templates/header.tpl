<!DOCTYPE html>
<html lang="ja">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta name="apple-mobile-web-app-title" content="LeadMe">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>{if isset($title)}{$title} - {/if}LeadMe</title>

<!-- Bootstrap -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/js/RateIt/rateit.css" rel="stylesheet" type="text/css" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
  <style media="screen">
    html { overflow:auto; }
    body {
        word-wrap: break-word;
        -webkit-overflow-scrolling: auto;
        overflow-scrolling: auto;
    }

    /* navbar 全体の背景色とボーダーカラー */
    .navbar-default {
    background-color: #FFE53B;
    background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);

    /* border-color: #3e6962; */
    }
    /* navbar テキストカラー */
    .navbar-default .navbar-nav > li > a {
    color: #ffffff;
    }
    /* navbar hover,focus時のテキストカラー */
    .navbar-default .navbar-nav > li > a:hover,
    .navbar-default .navbar-nav > li > a:focus {
    color: #26534c;
    background-color: transparent;
    }
    /* navbar active設定時のカラー */
    .navbar-default .navbar-nav>.active>a,
    .navbar-default .navbar-nav>.active>a:focus,
    .navbar-default .navbar-nav>.active>a:hover {
    color: #26534c;
    background-color: #FFE53B;
    background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);

    }
    /* navbar ドロップダウン(親)のカラー */
    .navbar-default .navbar-nav>.open>a,
    .navbar-default .navbar-nav>.open>a:focus,
    .navbar-default .navbar-nav>.open>a:hover {
    color: #3e6962;
    background-color: #FFE53B;
    background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);

    }
    /* navbar ドロップダウン(子)のボックスカラー */
    .dropdown-menu {
    background-color: #FFE53B;
    background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);

    border: 1px solid #3e6962;
    border: 1px solid #3e6962(0, 0, 0, .15);
    -webkit-box-shadow: 0 6px 12px rgba(94, 136, 129, 0.35);
    box-shadow: 0 6px 12px rgba(94, 136, 129, 0.35);
    }
    /* navbar ドロップダウン(子)テキストカラー */
    .dropdown-menu>li>a {
    color: #ffffff;
    }
    /* navbar ドロップダウン(子)focus,hover時のカラー */
    .dropdown-menu>li>a:focus,
    .dropdown-menu>li>a:hover {
    color: #26534c;
    background-color: #FFE53B;
    background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);

    }
    /* navbar ドロップダウン(子)内の区切り線(class=”divider”)のカラー */
    .dropdown-menu .divider {
    background-color: #3e6962;
    }
    /* navbar 画面サイズ767px以下の時のカラー */
    @media (max-width:767px) {
    .navbar-default .navbar-nav .open .dropdown-menu>li>a {
    color: #ffffff;
    }
    .navbar-default .navbar-nav .open .dropdown-menu>li>a:focus,
    .navbar-default .navbar-nav .open .dropdown-menu>li>a:hover {
    color: #26534c;
    background-color: transparent;
    }
    /* ドロップダウンactive設定時のカラー */
    .navbar-default .navbar-nav .open .dropdown-menu>.active>a,
    .navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus,
    .navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover {
    background-color: #FFE53B;
    background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);

    }
    }
    /* navbar ハンバーガー四角枠 */
    .navbar-default .navbar-toggle {
    border-color: #ffffff;
    }
    /* navbar ハンバーガー三本線 */
    .navbar-default .navbar-toggle .icon-bar {
    background-color: #ffffff;
    }
    /* navbar ハンバーガーボタン,タップとホバーした時の背景色 */
    .navbar-default .navbar-toggle:focus,
    .navbar-default .navbar-toggle:hover {
    background-color: #ffffff;
    }
    /* navbar ハンバーガーボタン,タップとホバーした時の四角枠 */
    .navbar-default .navbar-toggle:focus,
    .navbar-default .navbar-toggle:hover {
    border-color: #FFE53B;

    }
    /* navbar ハンバーガーボタン,タップとホバーした時の三本線 */
    .navbar-default .navbar-toggle:focus > .icon-bar,
    .navbar-default .navbar-toggle:hover > .icon-bar {
    background-color: #FFE53B;
    background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);

    }
    /* navbar Brandのカラー */
    .navbar-default .navbar-brand {
    color: #ffffff;;
    font-family: 'Oswald', sans-serif;
    font-size: 1.1em;
    }
    .navbar-default .navbar-brand:focus,
    .navbar-default .navbar-brand:hover {
    color: #ffffff;
    background-color: transparent;
    }
    .navbar-toggle {
      z-index: 2;
    }

    .navbar-brand-center {
      position: absolute;
      width: 100%;
      left: 0;
      top: 0;
      text-align:center;
      margin: auto;
    }

    @media (min-width: 768px) {
      .navbar-brand-center {
          margin-left: 0 !important;
      }

    }
    .logo{
    width: 60px;
    position: relative;
    top: -12px;
    }
    .u-pd-lr30{
      padding: 0 30px;
    }
    .u-pt10{
      padding-top: 10px;
    }
    .u-pt30{
      padding-top: 30px;
    }
    .u-pl30{
      padding-left: 30px;
    }
    .u-pt100{
      padding-top: 100px;
    }
    .u-pt50{
      padding-top: 50px;
    }
    .u-ml30{
      margin-left: 30px;
    }
    p,h1,h2,h3,h4{
      color: gray;
    }
  </style>
<!-- ページのコンテンツすべてをwrapする（フッター以外） -->
  <div id="wrap">
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <a class="navbar-brand navbar-brand-center " href="/"><span><img src="/images/logo_lead_me.png"  class="logo"></span></a>
        </div>
        <div class="navbar-text navbar-right text-right" style="padding-right:10px">
          {if isset($user)}
            <a href="/mypage">
              <span class="glyphicon glyphicon-user glyphicon_footer" style="color:white;margin-top:-4px" aria-hidden="true"></span>
              <span style="color:white" aria-hidden="true">{$user['name']|escape}</span>
            </a>
          {else}
            <a href="/login">
              <span style="color:white" aria-hidden="true">Login</span>
            </a>
          {/if}
        </div>
      </div><!-- /.container-fluid -->
    </nav>

    <div class="">
