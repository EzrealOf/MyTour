<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8" />
<title>City</title>

<!-- Mobile Specific
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- CSS
================================================== -->
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/boxed.css" id="layout" />
	<link rel="stylesheet" type="text/css" href="css/colors/green.css" id="colors" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<!-- Java Script
================================================== -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/selectnav.js"></script>
<script src="js/flexslider.js"></script>
<script src="js/twitter.js"></script>
<script src="js/tooltip.js"></script>
<script src="js/effects.js"></script>
<script src="js/fancybox.js"></script>
<script src="js/carousel.js"></script>
<script src="js/isotope.js"></script>

<!-- Styles Switcher
================================================== -->
<link rel="stylesheet" type="text/css" href="css/switcher.css" />
<script src="js/switcher.js"></script>

<style type="text/css">
	@media only screen and (min-width: 960px) {#portfolio-wrapper img {min-height: 139px;}} 
	@media only screen and (min-width: 768px) and (max-width: 959px) {#portfolio-wrapper img {min-height: 108px;}}
</style>

<script src='/google_analytics_auto.js'></script><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">


<!-- Header
================================================== -->

<!-- 960 Container -->
<div class="container ie-dropdown-fix">
	<#include "headbar.ftl">
	<#include "navigation.ftl">


</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->

<!-- 960 Container -->
<div class="container">

	<div class="sixteen columns">
	
		<!-- Page Title -->
		<div id="page-title">
			<h2>${city.cityname}<span>/${city.citydes}</span></h2>
			
			<!-- Filters -->
			<#--<div id="filters">-->
				<#--<ul class="option-set" data-option-key="filter">-->
					<#--<li><a href="#filter" class="selected" data-option-value="*">All</a></li>-->
					<#--<li><a href="#filter" data-option-value=".interior-design">Interior Design</a></li>-->
					<#--<li><a href="#filter" data-option-value=".architecture">Architecture</a></li>-->
					<#--<li><a href="#filter" data-option-value=".scenery">Scenery</a></li>-->
					<#--<li><a href="#filter" data-option-value=".real-estate">Real Estate</a></li>-->
				<#--</ul>-->
			<#--</div>-->
			<div class="clear"></div>
			
			<div id="bolded-line"></div>
		</div>
		<!-- Page Title / End -->

	</div>
</div>
<!-- 960 Container / End -->

<!-- 960 Container -->
<div class="container">
	
	<!-- Portfolio Content -->
	<div id="portfolio-wrapper">
	<#list spotList as list>
		<!-- 1/4 Column -->
		<div class="four columns portfolio-item interior-design architecture real-estate">
			<div class="picture"><a href="${list.spoturl}" rel="image" title="${list.spotenglishname}"><img src="${list.spoturl}" alt="" /><div class="image-overlay-zoom"></div></a></div>
			<div class="item-description alt">
				<h5><a href="toSpot?name=${list.spotname}">${list.spotname}</a></h5>
				<#--<p>Mauris sit amet ligula est, eget conseact etur lectus maecenas hendrerit suscipit</p>-->
			</div>
		</div>
	</#list>
	</div>
	<!-- End Portfolio Content -->
		
</div>
<!-- End 960 Container -->
<#if user?exists>
	<div class="sixteen columns">
		<div class="headline no-margin">
			<h3>创建行程</h3>
			<#--<br>-->
			<form action="myTour" method="post">
            天数:<input id="days" name ="days" value="0" type="number" class="rating" min=1 max=8 step=1 data-size="xl" data-stars="8">
            等级:<input id="types" name="types" value="0" type="number" class="rating" min=1 max=3 step=1 data-size="xl" data-stars="8">
            <input type="hidden" class="form-control" name="cityid" value="${city.cityid}">
            <input type="submit" class="form-control" />
            </form>
           <#-- <input type="text" class="form-control" name="types" />-->
			<#--<input>-->

		</div>
	</div>
	<div class="clear"></div>
</#if>




<!-- Wrapper / End -->

<!-- Footer
================================================== -->

<#include "footbar.ftl">


<!-- Styles Switcher
================================================== -->
<div id="style-switcher">
	<h2>Style Switcher <a href="#"></a></h2>
	
	<div><h3>Predefined Colors</h3>
		<ul class="colors" id="color1">
			<li><a href="#" class="green" title="Green"></a></li>
			<li><a href="#" class="blue" title="Blue"></a></li>
			<li><a href="#" class="orange" title="Orange"></a></li>
			<li><a href="#" class="navy" title="Navy"></a></li>
			<li><a href="#" class="yellow" title="Yellow"></a></li>
			<li><a href="#" class="peach" title="Peach"></a></li>
			<li><a href="#" class="beige" title="Beige"></a></li>
			<li><a href="#" class="purple" title="Purple"></a></li>
			<li><a href="#" class="red" title="Red"></a></li>
			<li><a href="#" class="pink" title="Pink"></a></li>
			<li><a href="#" class="celadon" title="Celadon"></a></li>
			<li><a href="#" class="brown" title="Brown"></a></li>
			<li><a href="#" class="cherry" title="Cherry"></a></li>
			<li><a href="#" class="gray" title="Gray"></a></li>
			<li><a href="#" class="dark" title="Dark"></a></li>
			<li><a href="#" class="cyan" title="Cyan"></a></li>
			<li><a href="#" class="olive" title="Olive"></a></li>
			<li><a href="#" class="dirty-green" title="Dirty Green"></a></li>
		</ul>
		
	<h3>Layout Style</h3>
	<div class="layout-style">
		<select id="layout-switcher">
			<option value="css/boxed" />Boxed
			<option value="css/wide" />Wide
		</select>
	</div>
	
	<h3>Background Image</h3>
		 <ul class="colors bg" id="bg">
			<li><a href="#" class="bg1"></a></li>
			<li><a href="#" class="bg2"></a></li>
			<li><a href="#" class="bg3"></a></li>
			<li><a href="#" class="bg4"></a></li>
			<li><a href="#" class="bg5"></a></li>
			<li><a href="#" class="bg6"></a></li>
			<li><a href="#" class="bg7"></a></li>
			<li><a href="#" class="bg8"></a></li>
			<li><a href="#" class="bg9"></a></li>
			<li><a href="#" class="bg10"></a></li>
			<li><a href="#" class="bg11"></a></li>
			<li><a href="#" class="bg12"></a></li>
			<li><a href="#" class="bg13"></a></li>
			<li><a href="#" class="bg14"></a></li>
			<li><a href="#" class="bg15"></a></li>
			<li><a href="#" class="bg16"></a></li>
			<li><a href="#" class="bg17"></a></li>
			<li><a href="#" class="bg18"></a></li>
		</ul>
		
	<h3>Background Color</h3>
		<ul class="colors bgsolid" id="bgsolid">
			<li><a href="#" class="green-bg" title="Green"></a></li>
			<li><a href="#" class="blue-bg" title="Blue"></a></li>
			<li><a href="#" class="orange-bg" title="Orange"></a></li>
			<li><a href="#" class="navy-bg" title="Navy"></a></li>
			<li><a href="#" class="yellow-bg" title="Yellow"></a></li>
			<li><a href="#" class="peach-bg" title="Peach"></a></li>
			<li><a href="#" class="beige-bg" title="Beige"></a></li>
			<li><a href="#" class="purple-bg" title="Purple"></a></li>
			<li><a href="#" class="red-bg" title="Red"></a></li>
			<li><a href="#" class="pink-bg" title="Pink"></a></li>
			<li><a href="#" class="celadon-bg" title="Celadon"></a></li>
			<li><a href="#" class="brown-bg" title="Brown"></a></li>
			<li><a href="#" class="cherry-bg" title="Cherry"></a></li>
			<li><a href="#" class="gray-bg" title="Gray"></a></li>
			<li><a href="#" class="dark-bg" title="Dark"></a></li>
			<li><a href="#" class="cyan-bg" title="Cyan"></a></li>
			<li><a href="#" class="olive-bg" title="Olive"></a></li>
			<li><a href="#" class="dirty-green-bg" title="Dirty Green"></a></li>
		</ul></div>
	
		<div id="reset"><a href="#" class="button color green boxed">Reset</a></div>
		
</div>


<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>