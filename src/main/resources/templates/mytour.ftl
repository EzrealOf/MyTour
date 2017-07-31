<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8" />
<title>Tour</title>

<!-- Mobile Specific
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- CSS
================================================== -->
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/boxed.css" id="layout" />
<link rel="stylesheet" type="text/css" href="css/colors/green.css" id="colors" />

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
<#--<div class="container">

	<div class="sixteen columns">

		<!-- Page Title &ndash;&gt;
		<div id="page-title">
			<h2>Maritime Details <span>/ Single Project</span></h2>

			<!-- Portfolio Navi &ndash;&gt;
			<div id="portfolio-navi">
				<ul>
					<li><a class="prev" href="#"></a></li>
					<li><a class="next" href="#"></a></li>
				</ul>
			</div>
			<div class="clear"></div>

			<div id="bolded-line"></div>
		</div>
		<!-- Page Title / End &ndash;&gt;

	</div>
</div>-->
<!-- 960 Container / End -->


<!-- 960 Container -->
<#--<div class="container">

	<!-- Slider &ndash;&gt;
	<div class="sixteen columns">
		<div class="flexslider home">
			<ul class="slides">
				<li><img src="images/portfolio/portoflio-single-01.jpg" alt="" /></li>
				<li><img src="images/portfolio/portoflio-single-02.jpg" alt="" /></li>
			 </ul>
		</div>
	</div>
	
</div>-->
<!-- End 960 Container -->


<!-- 960 Container -->
<#--<div class="container" style="margin-top: 30px;">

	<div class="four columns">
		<ul class="project-info">
			<li><strong>Client:</strong> Google</li>
			<li><strong>Date:</strong> August 2012</li>
		</ul>
		<a href="#" class="button color launch">Launch Project</a>
	</div>

	<div class="twelve columns tooltips">
		<div class="six columns alpha"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula felis euismod semper. Donec ullamcorper nulla non metus auctor fringilla. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.Nullam quis risus eget urna mollis ornare.</p></div>
		<div class="six columns alpha"><p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Cras mattis consectetur purus sit amet fermentum. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor.</p></div>
	</div>
	
</div>-->
<!-- End 960 Container -->
<#--

<#list tourList as tourList>
${tourList.spotname}
    <br>

</#list>
<#list timeTourList as timeTourList>
${timeTourList.spotname}
    <br>

</#list>

<#list maxStarSpotList as maxStarSpotList>
${maxStarSpotList.spotname}
    <br>

</#list>
-->

<!-- 960 Container -->
<div class="container">

	<div class="sixteen columns">
		<!-- Headline -->
		<div class="headline" style="margin-top: 5px;"><h3>基于时间和距离考虑的旅游线路</h3></div>
	</div>
<#list tourList as tourList>

		
	<!-- 1/4 Column -->
	<div class="four columns">
		<div class="picture"><a href="toSpot?name=${tourList.spotname}"><img src="${tourList.spoturl}" alt="" /><div class="image-overlay-link"></div></a></div>
		<div class="item-description related">
			<h5><a href="single_project.html">${tourList.spotname}</a></h5>
			<#--<p>Mauris sit amet ligula est, eget conseact etur lectus maecenas hendrerit suscipit</p>-->
		</div>
	</div>
</#list>
    <div class="container">

        <div class="sixteen columns">
            <!-- Headline -->
            <div class="headline" style="margin-top: 5px;"><h3>基于时间考虑的旅游线路</h3></div>
        </div>


	<#list timeTourList as timeTourList>


        <!-- 1/4 Column -->
        <div class="four columns">
            <div class="picture"><a href="toSpot?name=${timeTourList.spoturl}"><img src="${timeTourList.spoturl}" alt="" /><div class="image-overlay-link"></div></a></div>
            <div class="item-description related">
                <h5><a href="#">${timeTourList.spotname}</a></h5>
			<#--<p>Mauris sit amet ligula est, eget conseact etur lectus maecenas hendrerit suscipit</p>-->
            </div>
        </div>
	</#list>
        <div class="container">

            <div class="sixteen columns">
                <!-- Headline -->
                <div class="headline" style="margin-top: 5px;"><h3>基于景点价值考虑的旅游线路</h3></div>
            </div>
	<#list maxStarSpotList as maxStarSpotList>


        <!-- 1/4 Column -->
        <div class="four columns">
            <div class="picture"><a href="toSpot?name=${maxStarSpotList.spotname}"><img src="${maxStarSpotList.spoturl}" alt="" /><div class="image-overlay-link"></div></a></div>
            <div class="item-description related">
                <h5><a href="single_project.html">${maxStarSpotList.spotname}</a></h5>
			<#--<p>Mauris sit amet ligula est, eget conseact etur lectus maecenas hendrerit suscipit</p>-->
            </div>
        </div>
	</#list>

    </div>
	
</div>
<!-- 960 Container / End -->


</div>
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