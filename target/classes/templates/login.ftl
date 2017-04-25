<#--<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>-->
<#--<%-->
<#--String path = request.getContextPath();-->
<#--String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";-->
<#--%>-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<#--<base href="<%=basePath%>">-->
<!-- <script type="text/javascript" src="jquery.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆</title>
</head>
<body>
<div class="wrap">
	    <div class="pop-title clearfix">
	        <a class="a_underline" href="register.ftl">注册</a>
	        <div class="pop_name">
	            登录<span class="grey"></span>
	        </div>
	
	    </div>
	    <form onsubmit="return false">
	        <div class="pop-content accountPage">
	            <div class="form_item">
	                <div class="item_tip">用户名/邮箱</div>
	                <input type="text" tabindex="1" value="" name="username"  class="form_input" id="username" onblur="blurInputLoginBox($(this))"  onfocus ="focusInputLoginBox($(this))" autocomplete="off"/>
	                <span class="error">不能为空</span>
	                <i class="icon-loginright"></i>
	                <span class="grey">允许用中英文、数字、下划线，提交后不可修改</span>
	            </div>	
	            <div class="form_item">
	                <div class="item_tip">密码</div>
	                <input type="password" tabindex="3" name="pwd" class="form_input" id="pwd" onblur="blurInputLoginBox($(this))"  onfocus ="focusInputLoginBox($(this))" autocomplete="off"/>
	                <span class="error">不能为空</span>
	                <span class="grey">6 - 20位</span>
	                <i class="icon-loginright"></i>
	            </div>
	            <div class="twoWeeks">
	                <input type="checkbox" class="ckeckBox" name="rememberme" id="rememberme"/>
	                <label for="rememberme">记住我</label>
	            </div>
	            <p class="notice_error" id="notice_error"></p>
	            <input type="submit" tabindex="7" value="登&nbsp;&nbsp;录" class="btn_reg btn" id="btn_reg" onclick="subLogin($(this))"/>
	        </div>
	    </form>
	</div>
	
	<script src="/MyTourDesign/static/js/fullplay.js" type="text/javascript"></script>
	<script src="/MyTourDesign/static/js/jquery-1.9.1.min.js" type="text/javascript"></script>

<div class="mmsg-box mmsg-box-info" id='msg-box' style="margin-top: -23.5px; margin-left: -96.5px;">
    <div class="mmsg-content">
        <i class="mmsg-icon"></i>
        <p id='msg-box-content'></p>
    </div>
    <div class="mmsg-background"></div>
</div>
<script  type="text/javascript">

function subLogin(obj) {
    var username = $.trim($('#username').val());
    var pwd = $.trim($('#password').val());
    if (username == '') {
        showLoginError("请输入用户名或邮箱");
        return false;
    }
    if (pwd == '') {
        showLoginError("请输入密码");
        return false;
    }

    obj.addClass('disabled').val('登录中...');
    
    $.ajax({
		
		type:'post',
		url: 'login',
		timeout: 3000,
		data: {userName : username, password : password},
		dataType:'json',
		success:function(data){
			if(data.status == 1){
				
//	            showSuccessTip(data.message);
				window.location.href='index';
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



	<%-- <form> <!--onsubmit="return false"-->
		用户名:<input type="text" name= "username" />
		密码:<input type ="password"name = "password">
		    <input type="submit" value ="登陆" onclick ="subLogin($(this))">
	</form>
	<br>
	<a href="register">没有账号</a>
	
	
	
	<script type="text/javascript">
	function subLogin(obj){
		var username = $.trim($('#username').val());
	    var password = $.trim($('#password').val());
	    if (username == '') {
	        showLoginError("请输入用户名或邮箱");
	        return false;
	    }
	    if (pwd == '') {
	        showLoginError("请输入密码");
	        return false;
	    }
	    obj.addClass('disabled').val('登录中...');
	}
	$.ajax({
    			//post或者get
    			type:'post',
    			url:'<%=basePath%>login',
    			timeout: 3000,
    			data: {userName : $("#username").val(), password : $("#password").val()},
    			dataType:'json',
    			success:function(data){
                                //成功回调
    				if(data.status == 1){
    				   //跳转页面
    				   window.location.href='index';
    				}
    			}
    		});
	</script> --%>
</body>
</html>