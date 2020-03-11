<!DOCTYPE html>
<html lang="<{$xoops_langcode}>">
  <head>
    <!--目前$_SESSION['bootstrap']="<{php}>echo $_SESSION['bootstrap'];<{/php}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var=theme_name value=$xoTheme->folderName}>

    <!--載入由使用者設定的各項佈景變數-->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/get_var.tpl"}>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>

    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename}> - <{$xoops_pagetitle}></title>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/link_css.tpl"}>

    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header}>
    <script src="<{$xoops_url}>/browse.php?Frameworks/jquery/jquery.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/ui/jquery-ui.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/fancyBox/lib/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" media="all"  href="<{xoImgUrl css/style.css}>" />
    <link rel="stylesheet" type="text/css" media="all"  href="<{xoImgUrl css/navbar.css}>" />
    <link rel="stylesheet" type="text/css" media="all"  href="<{xoImgUrl css/slider.css}>" />

    <style type="text/css">
      body{
        font-family: <{$font_family}>;
        <{if $background_cover}>
          background-size: cover;
        <{/if}>
      }
    </style>
    <script type="text/javascript" src="<{xoImgUrl js/jquery.easing.1.3.js}>"></script>
    <script type="text/javascript" src="<{xoImgUrl js/jquery.CarouSlide.min.js}>"></script>

    <script type='text/javascript'>
      $(function(){

      // 移在第二層項目時,讓該第一層的項目加上樣式(呈現背景反白)
      $( ".sub" ).children().hover(
        function() {
          $(this ).parent().parent().children().addClass("selected");
        }, function() {
          $( this ).parent().parent().children().removeClass("selected");
        }
      );
      // 滑動圖片
      $(".s1").CarouSlide({
       animType:"slide-vertical",
                  autoAnim:true,
                  slideTime:3000,
                  animTime:1000,
                  alwaysNext:true
      });

      //選單箭頭
      // $(".navbar > ul > li:has(ul) > a").append('<div class="arrow-bottom"></div>');
      $(".navbar > ul > li ul li:has(ul) > a").append('<div class="arrow-right"></div>');
      //區塊標題加入向下箭頭和樣式(於xoops.css設定顏色和位置)
      $(".blockTitle").append('<i class="fa fa-caret-down sidebar-arrow-down"></i>');
    })
    </script>


    <style>
      body{
        background-color: <{$bg_color}>;
        background-image: url('<{$bg_img}>');
        background-repeat: repeat;
        background-position: left top;
        background-attachment: fixed;
      }

      .wrapper{
        margin: 0 auto;
        width: <{$theme_width}>px;
        background-color: <{$base_color}>;
      }



      #header a{
        font-size: 1.75em;
        width: <{$theme_width}>px;
        margin: 20px auto;
        font-weight: bold;
        color:#615F5F;

      }



      .topinfobar{
        width: <{$theme_width}>px;
        /*margin: 0 auto;*/
        background-color:<{$top_infobar_bgcolor}>;

        /*color:#fff;*/
        /*color:transparent;*/
      }

      #header{
        background:url(<{$header_img}>) no-repeat;
        /*background-color: transparent;*/
        /*background: transparent;*/

      }

      .navbar li a.selected,.navbar li a:hover {
        /*background-color: #EC5515;*/
        background-color: <{$navbar_color_hover}>;
        color:<{$navbar_color}>;
      }

      /*選單第二層移過連結顏色*/
      .navbar ul li ul li a:hover{
        /*background-color:rgba(255, 255, 255, 0.4);*/
      }

      /*選單第二層移過項目*/
      .navbar ul li ul li:hover{
        border: none;
      }



      /*區塊標題*/
      div.blockTitle{
        border-bottom: 2px solid <{$bt_sepline_color}>;

        position: relative;/*搭配向下箭頭位置*/
      }

      /*區塊標題的向下箭頭*/
      div.blockTitle .sidebar-arrow-down{
        position: absolute;
        left: 23px;
        bottom: -13px;
        color: <{$bt_sepline_color}>;
      }


      /*xoops主選單,目前所在項目*/
      div#mainmenu a.maincurrent{
       color:<{$header_bgcolor}>;
      }

      div#mainmenu a.menuMain:hover{
       color:#08C;
       transform: translateX(15px);
       /*chrome*/
       -webkit-transform: translateX(15px);
       margin-right: 15px;
      }


      .slider-wrapper , .s1 .slider-wrapper , div.slider , .slider-holder li a img {
        <{if $slide_width}>width:<{$slide_width}>px;<{/if}>
        <{if $slide_height}>height:<{$slide_height}>px;<{/if}>
      }

    </style>

  </head>

  <body>

    <div class="wrapper">
      <!-- 頁首 -->
      <div class="topinfobar">
        <div class="row">

          <div class="col-sm-2 col-sm-2">
            <!-- 社群網站連結 -->
            <ul class="social_logos">
              <{if $facebook_url}>
                <li>
                  <a href="<{$facebook_url}>" target="_blank"><span class="fa fa-facebook"></span></a>
                </li>
              <{/if}>
              <{if $twitter_url}>
              <li>
                <a href="<{$twitter_url}>" target="_blank"><span class="fa fa-twitter"></span></a>
              </li>
              <{/if}>
              <{if $google_url}>
              <li>
                <a href="<{$google_url}>" target="_blank"><span class="fa fa-google-plus"></span></a>
              </li>
              <{/if}>
            </ul>
          </div>

          <div class="col-sm-6 col-sm-6">
            <span class="info"><{$top_infobar_text}></span>
          </div>
        </div>
      </div>

      <!-- 標題 -->
      <!-- logo -->
      <{includeq file="$theme_name/tpl/logo.tpl"}>

      <!-- 導覽列 -->
      <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/menu/cssmenu/menu.tpl"}>

      <{if $slide_width}>
        <!-- 滑動圖片 -->
        <div class="CarouSlide slider s1">
          <ul class="slider-holder">
            <{foreach from=$slider_var item=slide}>
              <li id="a<{$slide.sort}>">
                <a href="<{$slide.slide_url}>">
                  <img src="<{$slide.file_url}>" alt="<{$slide.text_description}>"  title="<{$slide.text_description}>">
                </a>
              </li>
            <{/foreach}>
          </ul>
          <ul class="slider-nav">
            <{foreach from=$slider_var item=slide}>
              <li>
                <a href="#a<{$slide.sort}>">
                  <{$slide.text_description|substr:0:30}><i class="fa fa-caret-left slider-arrow-left"></i>
                </a>
              </li>
            <{/foreach}>
          </ul>
        </div>
        <!-- 滑動圖片區下方陰影 -->
        <div class="slider_shadow"></div>
      <{/if}>


      <!-- 內容 -->
      <div class="main">
        <div id="xoops_theme_content">
          <!-- 載入布局 -->
          <div class="row">
              <div class="col-sm-12">
                  <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/siteclosed_login.tpl"}>
              </div>
          </div>
        </div>
      </div>

      <!-- 頁尾 -->
      <div id="footer">
        <div id="copyright">
          <{$xoops_footer}>
        </div>
      </div>

    </div>

    <!-- 載入 BootStrap所需的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/bootstrap_js.tpl"}>

    <!-- 載入自訂的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/my_js.tpl"}>

    <!-- 是否顯示樣板變數資訊 -->
    <{if $show_var==1}>
      <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>

  </body>
</html>
