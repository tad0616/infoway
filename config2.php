<?php

//是否顯示佈景變數
$theme_config[]=array(
  "name"=>"show_var",
  "text"=>TF_SHOW_VAR,
  "desc"=>TF_SHOW_VAR_DESC,
  "type"=>"yesno",
  "default"=>"0"
);


// 上方資訊列背景色
$theme_config[]=array(
  "name"=>"top_infobar_bgcolor",
  "text"=>TF_INFOBAR_BGCOLOR,
  "desc"=>TF_INFOBAR_BGCOLOR,
  "type"=>"color",
  "default"=>"#E85A05",
);

// 上方資訊列文字
$theme_config[]=array(
  "name"=>"top_infobar_text",
  "text"=>TF_INFOBAR_TEXT,
  "desc"=>TF_INFOBAR_TEXT_DESC,
  "type"=>"text",
  "default"=>"您可以從後台修改這裏的文字",
);




// 社群網站連結網址
$theme_config[]=array(
  "name"=>"facebook_url",
  "text"=>TF_FACEBOOK_URL,
  "desc"=>TF_FACEBOOK_URL_DESC,
  "type"=>"text",
  "default"=>"http://www.facebook.com",
);

$theme_config[]=array(
  "name"=>"twitter_url",
  "text"=>TF_TWITTER_URL,
  "desc"=>TF_TWITTER_URL_DESC,
  "type"=>"text",
  "default"=>"http://twitter.com",
);

$theme_config[]=array(
  "name"=>"google_url",
  "text"=>TF_GOOGLE_URL,
  "desc"=>TF_GOOGLE_URL_DESC,
  "type"=>"text",
  "default"=>"http://plus.google.com",
);


// 頁首背景圖
$theme_config[]=array(
  "name"=>"header_img",
  "text"=>TF_HEADER_IMG,
  "desc"=>TF_HEADER_IMG_DESC,
  "type"=>"file",
  // "default"=>XOOPS_URL."/themes/infoway/images/header.jpg",
);


// 區塊標題內容分隔線
$theme_config[]=array(
  "name"=>"bt_sepline_color",
  "text"=>BT_SEPLINE_COLOR,
  "desc"=>BT_SEPLINE_COLOR_DESC,
  "type"=>"color",
  "default"=>"#E85A05",
);


?>
