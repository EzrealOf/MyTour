<#--<<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>-->
<#--<%-->
<#--String path = request.getContextPath();-->
<#--String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";-->
<#--%>-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
  <style>
	html{ margin: 0; padding:0; }
	body{ margin:0; padding:0; }
	#bodyPage{ width:100%; min-height:100%; height:auto !important; height:100%; position:fixed; top:0; left:0; }
	img.bg { position:absolute; top: 0px; left: 0px; z-index:1; display:none;}
  </style>
	<script src="http://www.jq22.com/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/fullplay.js"></script>
      <script src='js/horsey.js'></script>
      <script src='js/example.js'></script>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  </head>

    <#--<body>-->
  		<#--<h1>-->
  		<#--<form action="select" method="post">-->
			<#--搜索:-->
			<#--<input type="text" name="cityname">-->
			<#--<input type="submit" value="提交"/>-->
		<#--</form>-->
  		<#--</h1>-->
  	<#--<div class="slideshow">-->
	<#--<div class="slideshow-image" style="background-image: url('img/1.jpg')"></div>-->
	<#--<div class="slideshow-image" style="background-image: url('img/2.jpg')"></div>-->
	<#--<div class="slideshow-image" style="background-image: url('img/3.jpg')"></div>-->
	<#--<div class="slideshow-image" style="background-image: url('img/4.jpg')"></div>-->
	<#--</div>-->
  <#--</body>-->
  <#---->
  
  <body>

<div id="bodyBox">
	<div id = "front">
		<#include "topbar.ftl">
	</div >
	<h1>

      <#--  <div class='parent'>
            <label for='ly'</label>
            <div><i id='lyr'>Being lazy...</i></div>
            <input id='ly'/>
            <pre>
			      <code>
			&lt;#&ndash;horsey(input, {
			  suggestions: function (done) {
			    setTimeout(function () {
			      done(['banana', 'apple', 'orange','cmyk','ddrom','ebay','four','good','html','item','jack','kfack']);
			    }, 2000);
			  }
			});&ndash;&gt;
			      </code>
			    </pre>
        </div>-->
  		<form action="toCity" method="get">
			搜索:
			<input type="text" name="cityname" id="cityname"">
			<input type="submit" value="提交" />
		</form>
	</h1>
	<div id="bodyPage">
   	  <img src="img/bg1.png" class="bg">
      <img src="img/bg2.png" class="bg">
      <img src="img/bg3.png" class="bg">
    </div>
    
</div>

<script type="text/javascript">

    function showLoginError(tip) {
        $("#notice_error").text(tip);
        $("#notice_error").fadeOut(2500);
    }
$(document).ready(function(e) {
    
   $("#bodyPage").fullImages({
	   ImgWidth: 1920,
	   ImgHeight: 980,
	   autoplay :  3500,
	   fadeTime : 1500
   });
	
});
</script>

</body>
  
</html>
