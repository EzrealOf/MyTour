<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8" />
<title>Spot</title>

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
	<link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="js/star-rating.js" type="text/javascript"></script>

    <script src="js/switcher.js"></script>

<script src='/google_analytics_auto.js'></script><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">


<!-- Header
================================================== -->

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
			<h2>${spot.spotname} <span>/${spot.spotenglishname}</span></h2>
			<div id="bolded-line"></div>
		</div>
		<!-- Page Title / End -->

	</div>
</div>
<!-- 960 Container / End -->


<!-- Blog Posts
================================================== -->
<!-- 960 Container -->
<div class="container">

<div class="twelve columns">
	
	<!-- Post -->
	<div class="post post-page">
		<div class="post-img picture"><a href=${spot.spoturl} rel="image" title="${spot.spotenglishname}"><img src=${spot.spoturl} alt="" /><div class="image-overlay-zoom"></div></a></div>
		<a href="#" class="post-icon standard"></a>
		<div class="post-content">
			<div class="post-title"><h2><a href="#">${spot.spotname}的介绍</a></h2></div>
			<#--<div class="post-meta"><span><i class="mini-ico-calendar"></i>On 10 August, 2012</span> <span><i class="mini-ico-user"></i>By <a href="#">admin</a></span> <span><i class="mini-ico-comment"></i>With <a href="#">12 Comments</a></span></div>-->
			<div class="post-description">
				<p> ${spot.spotdes}</p>
				<p> 景点地址：${spot.spotlocation}</p>
                <p> 如何到达：${spot.spotarrive}</p>
                <p> 开放时间：${spot.spotopeningtime}</p>
                <p> 门票：${spot.spotticket}</p>
                <p> 电话：${spot.spotphone}</p>
                <p> 网址： <a href="${spot.spotinformurl}">${spot.spotinformurl}</a></p>

				<#--<p>Maecenas dolor est, interdum a euismod eu, accumsan posuere nisl. Nam sed iaculis massa. Sed nisl lectus, tempor sed euismod quis, sollicitudin nec est. Suspendisse dignissim bibendum tempor. Nam erat felis, commodo sed semper commodo vel mauris suspendisse dignissim bibendum tempus.</p>-->
				<#--<p>Sed auctor, sem et volutpat facilisis, risus leo venenatis leo, ultricies accumsan urna ante vel nisl. Integer feugiat risus nec nisl dictum vestibulum. Vestibulum nec purus orci. Mauris ornare dolor eget purus malesuada vitae convallis dui dapibus. Donec sed leo magna, ac pellentesque lorem. Vivamus sapien tortor, lobortis ut ultrices vel, tempus non metus. Suspendisse id est id elit commodo pellentesque non non lorem. Aenean sed blandit sapien. Nullam risus sapien, dignissim tempor auctor non, porta congue mi. </p>-->
				<blockquote>小贴士： ${spot.spottips} </blockquote>
				<#--<p>Cras varius enim ac tellus gravida aliquet. Praesent nec ante odio, at egestas lorem. Phasellus nec velit sit amet leo pellentesque tempor. Vivamus molestie fringilla nulla, at egestas magna tempor nec. Suspendisse potenti. Vivamus metus massa, viverra sit amet bibendum ac, consequat porta sem. Nullam venenatis faucibus sem. Donec non mi et felis iaculis tempor sed at dolor. </p>-->
			</div>
		</div>
	</div>
	
	<!-- Comments -->
	<div class="headline no-margin"><h4>评论 <span class="comments-amount"></span></h4></div>
	<div class="comments-sec">
	<#list infoList as list>
		<ol class="commentlist">

			<#--<li>-->
				<#--<div class="comments">-->
					<#--<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" width="50" height="50" border="0" /> </div>-->
					<#--<div class="comment-des">-->
					<#--<div class="comment-by"><strong>${list.username}</strong><span class="reply"><span style="color:#aaa">/ </span><a href="#">Reply</a></span> <span class="date">${list.spotinfoid}</span></div>-->
						<#--<p> ${list.spotdes} </p>-->
					<#--</div>-->
				<#--</div>-->

				<#--<ol class="childlist">-->
					<#--</ol></li>-->

		<li>
					<div class="comments">
										<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" border="0" /> </div>
						<div class="comment-des">
						<div class="comment-by"><strong>${list.username}</strong><span class="reply"><span style="color:#aaa">/ </span><a href="#">Reply</a></span> <span class="date">${list.spotinfoid}</span></div>
						<p> ${list.spotdes}</p>
						</div>
					</div>
					</li>
						
			
						
			<#--<li>-->
				<#--<div class="comments">-->
					<#--<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" border="0" /> </div>-->
					<#--<div class="comment-des">-->
					<#--<div class="comment-by"><strong>Kathy Brown</strong><span class="reply"><span style="color:#aaa">/ </span><a href="#">Reply</a></span><span class="date">August 12, 2012</span></div>-->
						<#--<p>Morbi velit eros, sagittis in facilisis non, rhoncus et erat. Nam posuere tristique sem, eu ultricies tortor imperdiet vitae. Curabitur lacinia neque non metus</p>-->
					<#--</div>-->
				<#--</div>-->
			<#--</li>-->
						<#---->
			<#--<li>-->
				<#--<div class="comments">-->
					<#--<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" border="0" /> </div>-->
					<#--<div class="comment-des">-->
					<#--<div class="comment-by"><strong>John Doe</strong><span class="reply"><span style="color:#aaa">/ </span><a href="#">Reply</a></span><span class="date">August 12, 2012</span></div>-->
						<#--<p>Commodo est luctus eget. Proin in nunc laoreet justo volutpat blandit enim. Sem felis, ullamcorper vel aliquam non, varius eget justo. Duis quis nunc tellus. Mauris a felis arcu, vitae sollicitudin mauris.</p>-->
					<#--</div>-->
				 <#--</div>-->
			<#--</li>-->
		 
					 
	</ol>
	</#list></div>
	<div class="clear"></div>
				
	<!-- Add Comment -->
<#if user?exists>
    <input type="hidden" id="spotid" value="${spot.spotid}">
    <input type="hidden" id="userid" value=" ${user.userid}">
    <input type="hidden" id="username" value="${user.username}">
	<div class="headline no-margin"><h4>评价</h4></div>
		<div class="form-spacer"></div>
		<!-- Form -->
		<div id="contact-form">
			<form method="post" />
				<#--<div class="field">
					<label>Name:</label>
					<input type="text" class="text" />
				</div>

				<div class="field">
					<label>Email: <span>*</span></label>
					<input type="text" class="text" />
				</div>-->

            	<div class="field">
					<label>Star: <span>*</span></label>
                    <input id="star" value="0" type="number" class="rating" min=0 max=8 step=1 data-size="xl" data-stars="8">
            	</div>

				<div class="field">
					<label>Message: <span>*</span></label>
					<textarea id="text" class="text textarea"></textarea>
				</div>
				
				<div class="field">
                    <#--<input type="submit" id="spotInfoButton" tabindex="7" class ="btn" onclick="subClick($(this))" value="发&nbsp;&nbsp;表"/>-->
					<input type="button" id="send" value="评论"  onclick="subClick($(this))" />
				</div>
				
			</form>
		</div>
	
</div>
	</#if>
    <script>

        jQuery(document).ready(function () {

            $(".rating-kv").rating();

        });

    </script>


    <script type="text/javascript">
    function subClick(obj) {
    //        var username = $.trim($('#username').val());
    var spotstar =$('#star').val();
    var spotdes =$.trim($('#text').val());
    var userid = $('#userid').val();
    var spotid = $('#spotid').val();
    var username =$('#username').val();
    if(spotdes == null){
    show("please write the ");
    return false;
    }
    obj.addClass('disabled').val('评论中...');
    $.ajax({
    type:'post',
    url:'addSpotInfo',
    timeout: 3000,
    data: {spotdes: spotdes,userid:userid,spotid:spotid,spotstar:spotstar,username:username},
    dataType:'json',
    success:function(data){
    if(data.status == 1){

    //	            showSuccessTip(data.message);
    //                    window.location.href='toIndex';
    }else{

    //                    showLoginError(data.message);
    }
    obj.removeClass('disabled').val('评论');
    }
    })

    }
    </script>

<!-- Widget
================================================== -->
<div class="four columns">

	<!-- Search -->
	<#--<div class="widget first">-->
		<#--<div class="headline no-margin"><h4>Search</h4></div>-->
		<#--<div class="search">-->
			<#--<input type="text" onblur="if(this.value=='')this.value='';" onfocus="if(this.value=='')this.value='';" value="" class="text" />-->
		<#--</div>-->
	<#--</div>-->
	
	<!-- Categories -->
	<#--<div class="widget">-->
		<#--<div class="headline no-margin"><h4>Categories</h4></div>-->
			<#--<ul class="links-list-alt">-->
				<#--<li><a href="#">Photography</a></li>-->
				<#--<li><a href="#">Motion Graphic</a></li>-->
				<#--<li><a href="#">WordPress</a></li>-->
				<#--<li><a href="#">Video Gallery</a></li>-->
				<#--<li><a href="#">Technology</a></li>-->
			<#--</ul>-->
	<#--</div>-->
	
	<!-- Tags -->
	<#--<div class="widget">
		<div class="headline no-margin"><h4>Tags</h4></div>
		<div class="tags">
			<a href="#">Photography</a>
			<a href="#">Motion Graphics</a>
			<a href="#">Java Script</a>
			<a href="#">Video Gallery</a>
			<a href="#">Blog</a>
			<a href="#">WordPress</a>
			<a href="#">Business</a>
		</div>
	</div>-->
	
	<!-- Popular Posts -->
<#--	<div class="widget">
		<div class="headline no-margin"><h4>Popular Posts</h4></div>
		
		<div class="latest-post-blog">
			<a href="#"><img src="images/popular-post-01.png" alt="" /></a>
			<p><a href="#">Maecenas metus lorem nulla, pretium lipsum.</a> <span>12 August 2012</span></p>
		</div>
	
		<div class="latest-post-blog">
			<a href="#"><img src="images/popular-post-02.png" alt="" /></a>
			<p><a href="#">Tetus lorem maecenas facili lipsum pretium.</a> <span>26 July 2012</span></p>
		</div>
			
		<div class="latest-post-blog">
			<a href="#"><img src="images/popular-post-03.png" alt="" /></a>
			<p><a href="#">Lorem pretium metusnula lorem ipsum dolor.</a> <span>16 June 2012</span></p>
		</div>

	</div>-->
	
	<!-- Twitter -->
	<div class="widget">
		<div class="headline no-margin"><h4></h4></div>
		<ul id="twitter-blog"></ul>
			<script type="text/javascript">
				jQuery(document).ready(function($){
				$.getJSON('http://api.twitter.com/1/statuses/user_timeline/envato.json?count=2&callback=?', function(tweets){
				$("#twitter-blog").html(tz_format_twitter(tweets));
				}); });
			</script>
		<div class="clearfix"></div>
	</div>
		
	<!-- Flickr -->
	<div class="widget">
		<div class="headline no-margin"><h4></h4></div>
		<div class="flickr-widget-blog">
			
			<div class="clearfix"></div>
		</div>
	</div>
	
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