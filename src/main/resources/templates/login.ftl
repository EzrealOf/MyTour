<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8" />
<title>Centum</title>

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
<div class="container">

	<div class="sixteen columns">
	
		<!-- Page Title -->
		<div id="page-title">
			<h2>Contact</h2>
			<div id="bolded-line"></div>
		</div>
		<!-- Page Title / End -->

	</div>
</div>
<!-- 960 Container / End -->


<!--  960 Container Start -->
<div class="container">

	<!-- Text -->
	<div class="sixteen columns">
		<p>欢迎来到本站，在这里你可以了解全世界。</p>
		<br />
	</div>

	<!-- Contact Form -->
	<div class="twelve columns">
		<div class="headline no-margin"><h4>登陆</h4></div>
		
		<div class="form-spacer"></div>
		
		<!-- Success Message -->
		<div class="success-message">
			<div class="notification success closeable">
				<p><span>Success!</span> Your message has been sent.</p>
			</div>
		</div>

		<!-- Form -->
		<div id="contact-form">
			<form method="post" action="contact.php" />
				
				<div class="field">
					<label>Name:</label>
					<input type="text" id ="username" name="username" class="text" />
				</div>
				
				<div class="field">
					<label>Password: <span>*</span></label>
					<input type="password" id ="password" name="password" class="text" />
				</div>
				
				<#--<div class="field">
					<label>Message: <span>*</span></label>
					<textarea name="message" class="text textarea"></textarea>
				</div>-->
				
				<div class="field">
                    <input type="button"  value="登&nbsp;&nbsp;录" class="button" id="btn_reg" onclick="subLogin($(this))"/>
					<#--<input type="button" id="btn_reg" value="Send Message" onclick="subLogin($(this)) />-->
					<div class="loading"></div>
				</div>
				
			</form>
		</div>

</div>
    <script  type="text/javascript">
    function subLogin(obj) {
    var username = $.trim($('#username').val());
    var password = $.trim($('#password').val());
    if (username == '') {
    showLoginError("请输入用户名或邮箱");
    return false;
    }
    if (password == '') {
    showLoginError("请输入密码");
    return false;
    }

    obj.addClass('disabled').val('登录中...');

    $.ajax({

    type:'post',
    url: 'login',
    timeout: 3000,
    data: {username : username, password : password},
    dataType:'json',
    success:function(data){
    if(data.status == 1){

    //	            showSuccessTip(data.message);
    window.location.href='toIndex';
    }else{

    showLoginError(data.message);
    }
    obj.removeClass('disabled').val('登录');
    }
    });

    }
    function showLoginError(tip) {
    $("#notice_error").text(tip);
    $("#notice_error").fadeOut(2500);
    }
    </script>
	<!-- Contact Details -->
	<div class="four columns google-map">

		<div class="headline no-margin"><h4>Our Location</h4></div>
			
		<!-- Google Maps -->
		<div id="googlemaps" class="google-map google-map-full" style="height:250px"></div>

		<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
		<script src="js/jquery.gmap.min.js"></script>
		
		<script type="text/javascript">
		jQuery('#googlemaps').gMap({
			maptype: 'ROADMAP',
			scrollwheel: false,
			zoom: 13,
			markers: [
				{
					address: 'New York, United States', // Your Adress Here
					html: '',
					popup: false,
				}

			],
			
		});
		</script>
		
	</div>
		
	<!-- Contact Details -->
	<div class="four columns">
		<div class="headline low-margin"><h4>Social</h4></div>
		<div id="social" class="tooltips">
			<a href="#" rel="tooltip" title="Facebook" class="facebook">Facebook</a>
			<a href="#" rel="tooltip" title="Evernote" class="evernote">Evernote</a>
			<a href="#" rel="tooltip" title="LinkedIn" class="linkedin">LinkedIn</a>
			<a href="#" rel="tooltip" title="Google Plus" class="googleplus">Google Plus</a>
			<a href="#" rel="tooltip" title="Vimeo" class="vimeo">Vimeo</a>
		</div>
		
	</div>

</div>
<!-- End 960 Container -->

</div>
<!-- Wrapper / End -->

<!-- Footer
================================================== -->

<!-- Footer Start -->
<#include "footbar.ftl">
<!-- Footer / End -->


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