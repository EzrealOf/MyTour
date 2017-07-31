<#--
<style>
    .login-btn{
        display: inline-block;
        height: 2rem;
        line-height: 2rem;
        padding: .5rem;
        color: wheat;
        font-size: 1.2rem;
    }

    div.text-right{
        background-color: darkgray;
        padding-right: 2rem;
        text-align: right;
    }
    div.container{
        margin-top: 2rem;
    }
</style>

   <div class="text-right">
    <#if user?exists>
        Hello,${user.username}
        <a class="login-btn" href="toDisRegister">退出登录</a>

    <#else>
    <a class="login-btn" href="toLogin">登陆</a>
    <a class="login-btn" href="toRegister">注册</a>
    </#if>

   </div>
-->
<!-- 960 Container -->
<div class="container ie-dropdown-fix">

    <!-- Header -->
    <div id="header">

        <!-- Logo -->
        <div class="eight columns">
            <div id="logo">
                <a href="index"><img src="images/logo.png" alt="logo" /></a>
                <div id="tagline">旅游攻略</div>
                <div class="clear"></div>
            </div>
        </div>

        <!-- Social / Contact -->
        <div class="eight columns">

            <!-- Social Icons -->
            <ul class="social-icons">
                <li class="facebook"><a href="#">Facebook</a></li>
                <li class="twitter"><a href="#">Twitter</a></li>
                <li class="dribbble"><a href="#">Dribbble</a></li>
                <li class="linkedin"><a href="#">LinkedIn</a></li>
                <li class="pintrest"><a href="#">Pintrest</a></li>
            </ul>

            <div class="clear"></div>

            <!-- Contact Details -->

        <div id="contact-details">
<#if user?exists>
    <ul>
        <li><i class="mini-ico-user"></i>${user.username}</li>
        <li><i class="mini-ico-remove"></i><a href="toDisRegister">退出登陆</a></li>

    </ul>

    <#else>
            <ul>
                <li><i class="mini-ico-user"></i><a href="toLogin">登陆</a></li>
                <li><i class=" mini-ico-hand-right"></i><a href="toRegister">注册</a></li>
                <#--<li><i class="mini-ico-user"></i>+48 880 450 120</li>-->
            </ul>
</#if>
        </div>

        </div>

    </div>
    <!-- Header / End -->