<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>한국관광100선 지도</title>
<meta content='width=device-width, initial-scale=1.0' name='viewport'>
<meta content='IE=edge' http-equiv='X-UA-Compatible'>
<meta content='전국,한국관광100선,지도,주말,가족,여행,아빠,wowmap,map,국내여행,딸내미' name='keywords'>
<meta content='전국 한국관광공사에서 매년 추천하는
관광100선을 지도에 표시합니다.. 이번 주말엔 가족이랑 어디로 놀러갈까? 하는 고민에 만들기 시작한 아빠지도 wow map. 틈나는대로 주제를 추가해나갈 예정입니다.' name='description'>
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />
<link rel="stylesheet" media="all" href="/assets/application-a177fec8b644cd5793933080bd291dbcdbb284bf71425a35a0fd7a8b7e219a80.css" data-turbolinks-track="reload" />

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=iH3JPEiBnRvVUXvRbBpd&submodules=geocoder"></script>
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="/assets/application-559130b9ba9ae5c3710a5709c41deab18895b59d862d9f5d0e85380267010622.js" data-turbolinks-track="reload"></script>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="sWHn4Xsxt+W85+62HD/RUo67qi4tjVNiD/m5Qpws9VH7UZxh5ogL5QfQdSJkao2IG7BswNUeT4KhQkOJqyJ5qw==" />
<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" media="screen" href="https://cdn.rawgit.com/openhiun/hangul/14c0f6faa2941116bb53001d6a7dcd5e82300c3f/nanumbarungothic.css" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  
  ga('create', 'UA-59075818-6', 'auto');
  ga('send', 'pageview');
</script>
</head>
<body class='wowmap index'>
<div id='wrapper'>
<!-- Sidebar -->
<nav class='navbar navbar-default navbar-fixed-top' role='navigation'>
<div class='navbar-header'>
<button class='navbar-toggle collapsed' data-target='.navbar-collapse' data-toggle='collapse'>
<span class='sr-only'>
Toogle Navigation
</span>
<span class='icon-bar'></span>
<span class='icon-bar'></span>
<span class='icon-bar'></span>
</button>
<a class="navbar-brand navbar-brand-wowmap nocalendar" href="/tour100">한국관광100선 지도
<span class='small' id='spots_count'>()</span>
</a><!-- .dropdown-local -->
<!-- /%button{ onclick: "alert_center()" } -->
<!-- /   center -->
<!-- = select_tag "target_local", options_for_select(@local_info.map {|k, lo| [ lo[:title], k ] }, @target_local), class: "form-control input-sm", onchange: "mapChangeLocal(this.value)" -->
<div class='navbar-brand navbar-today nocalendar'>
2018.07.24(화)
</div>
</div>
<div class='navbar-collapse collapse navbar-right'>
<ul class='nav navbar-nav'>
<li class='active'>
<a href="/tour100"><!-- %i.fa.fa-map-o -->
<i class='ion-map ion'></i>
&nbsp;지도보기
</a></li>
<li class=''>
<a href="/tour100/list"><i class='fa fa-list'></i>
&nbsp;목록보기
</a></li>
<li class=''>
<a href="/tour100/articles"><!-- %i.fa.fa-pencil-square-o -->
<i class='ion-compose ion'></i>
&nbsp;블로그
</a></li>
<li>
<a data-toggle="modal" data-target="#modalDetail" href=""><i class='fa fa-sliders'></i>
&nbsp;상세조건
</a></li>
<li>
<a role="button" href="/"><i class='fa fa-home'></i>
&nbsp;HOME
</a></li>
</ul>
</div>
</nav>

<div class='container' id='page-wrapper'>
<div class='row map-wrap'>
<div id='mapWow'></div>
</div>
<!-- Modal -->
<div aria-hidden='true' aria-labelledby='modal-Calendar' class='modal fade' id='modalCalendar' role='dialog' tabindex='-1'>
<div class='modal-dialog modal-sm'>
<div class='modal-content'>
<div class='modal-header'>
<button class='close' data-dismiss='modal' type='button'>
<span aria-hidden='true'>×</span>
<span class='sr-only'>Close</span>
</button>
<h4 class='modal-title' id='myModalLabel'>날짜 변경</h4>
</div>
<div class='modal-body' id='calendar-container'>
<div class='center-block'></div>
</div>
</div>
</div>
</div>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<div class='bottom-fixed row' id='footer'>
<div class='close-button'>
<button class='btn btn-gray btn-sm pull-left'>
광고
&times;
</button>
<button class='btn btn-gray btn-sm pull-right'>
광고
&times;
</button>
<div class='clearfix'></div>
</div>
<div class='google-ad'>
<!-- WOWMAP_관광100선 -->
<ins class="adsbygoogle google-ad2" style="display:block" data-ad-client="ca-pub-7784044298292889" data-ad-slot="5868126212" data-ad-format="auto"></ins>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>


</div>
<div class='google-ad'>
<!-- WOWMAP_관광100선 -->
<ins class="adsbygoogle google-ad2" style="display:block" data-ad-client="ca-pub-7784044298292889" data-ad-slot="5868126212" data-ad-format="auto"></ins>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>


</div>
</div>
<script>
  var naver_map_key = "",
      ini_latitude = "36.8900569",
      ini_longitude = "127.8785232",
      ini_zoom = "4",
      ini_icon = '<i class="fa fa-thumbs-o-up"></i>';
      vMapSlug = "tour100",
      vMapDtitle = "",
      vReqStr = "",
      vTargetDate = "2018-07-24",
      vLinkEditSpot = "",
      vLinkAddArticle = "";
  
  $(document).on('turbolinks:load', function() {
  //$(function() {
    spotData = [];
  
    if(pinData.length!=spotsData.length) pinData = spotsData;
  
    ufMapInit();
  
    // $( "button:first" ).button({
    //           icons: { primary: "ui-icon-triangle-1-w" }, text: false
    //       }).next().button(
    //       ).next().button({
    //           icons: { primary: "ui-icon-triangle-1-e" }, text: false
    //       }).next().button();
          
    $( "button.date-prev" ).click(function() { ufSetDate('prev') });
    $( "button.date-next" ).click(function() { ufSetDate('next') });
  
    $("#current-location").click(function() {
      getLocation();
    });
  
    
  
    
    if(true) {
      showGoogleAd('tour100');
    }
    
    
    
  
    $(".close-button button").click(function() {
      close_map_ad("tour100");
    });
  
  });
</script>

</div>
<!-- Modal -->
<div aria-hidden='true' aria-labelledby='modal-Detail' class='modal fade' id='modalDetail' role='dialog' tabindex='-1'>
<div class='modal-dialog modal-sm'>
<div class='modal-content'>
<div class='modal-header'>
<button class='close' data-dismiss='modal' type='button'>
<span aria-hidden='true'>×</span>
<span class='sr-only'>Close</span>
</button>
<h4 class='modal-title' id='myModalLabel'>상세조건</h4>
</div>
<div class='modal-body'>
<div class='wrap-btn-action'>
<button class='btn btn-block btn-primary' id='btn-set-filter'>적용하기</button>
<button class='col-sm-8 btn btn-warning btn-c-all'>전체 선택취소</button>
<button class='col-sm-4 btn btn-default' data-dismiss='modal'>닫기</button>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
  var current_path = "/tour100";
  var vIsMobile = "false";
  var vToday = "20180724",
      vToday2 = "07-24-2018";
  
  var param_date = "",
      param_local = "",
      param_dates = "",
      param_tags = "";
  
  $(function () {
    $.fn.datepicker.defaults.language = "kr";
    $('#dtpicker').datepicker(
      "setDate", new Date(
        2018, 
        6, 
        24)
    ).on("changeDate", function(e) {
      param_date = e.format("yyyymmdd");
      // mapChangeDate(e.format("yyyymmdd"));
    });
    
    $("#header-wrapper,#wrapper,#footer").not("#wrapper .navbar-collapse").click(function() {
      if($('.navbar-collapse').hasClass('in')) $('.navbar-collapse').collapse('hide');
    });
  
    $(".wrap-btn-dates .btn-info").not(".disabled").on("click", function() {
      $(this).toggleClass("active");
      setParamFilters("dates");
    });
  
    $(".wrap-btn-tags .btn-info").not(".disabled").on("click", function() {
      $(this).toggleClass("active");
      setParamFilters("tags");
    });
  
    $(".wrap-btn-local .btn-info").not(".disabled").on("click", function() {
      $(".wrap-btn-local .btn-info").removeClass("active");
      $(this).addClass("active");
      param_local = $(this).attr("local-code");
    });
  
    // 필터 적용 클릭
    $("#btn-set-filter").on("click", function() {
      var tUrl = "/tour100";
      location.href = tUrl +"?"+ getParamFilters();
    });
  
    // 선택취소 버튼 클릭
    $(".btn-c-local").on("click", function() {
      cancelFilters("local");
    });
  
    $(".btn-c-dates").on("click", function() {
      cancelFilters("dates");
    });
  
    $(".btn-c-tags").on("click", function() {
      cancelFilters("tags");
    });
  
    $(".btn-c-all").on("click", function() {
      cancelFilters("all");
  
      var tUrl = "/tour100";
      location.href = tUrl +"?"+ getParamFilters();
    });
  
    $(".btn-today").click(function() {
      //$('#calendar-container div.datepicker').datepicker("setDate", "20140101" );
      $("#dtpicker").datepicker("setDate", vToday2);
      param_date = vToday; 
    });
  });
</script>
</body>
</html>