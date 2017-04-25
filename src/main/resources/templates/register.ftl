<#--<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>-->
<#--<%-->
<#--String path = request.getContextPath();-->
<#--String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";-->
<#--%>-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
</head>
<body>

 </div>
    <form onsubmit="return false">
        <div class="pop-content accountPage">
            <div class="form_item">
                <div class="item_tip">用户名</div>
                <input type="text" tabindex="1" value="" name="username" data-type="username" data-minlength="5" class="form_input" id="username" onfocus="focusInputLoginArea($(this))" onblur="blurInputLoginArea($(this))" autocomplete="off"/>
                <span class="error">不能为空</span>
                <i class="icon-loginright"></i>
                <span class="grey">允许用中英文、数字、下划线，提交后不可修改</span>
            </div>
            <div class="form_item">
                <div class="item_tip">邮箱</div>

                <input type="text" tabindex="2" value="" data-type="email" name="email" class="form_input" id="mailbox" onfocus="focusInputLoginArea($(this))" onblur="blurInputLoginArea($(this))" autocomplete="off"/>
                <span class="error">不能为空</span>	
                <i class="icon-loginright"></i>
            </div>		
            <div class="form_item">
                <div class="item_tip">密码</div>
                <input type="password" tabindex="3" name="password" id="password" data-minlength="6" data-maxlength="20" class="form_input"   onfocus="focusInputLoginArea($(this))" onblur="blurInputLoginArea($(this))" autocomplete="off"/>
                <span class="error">不能为空</span>
                <span class="grey">6 - 20位</span>
                <i class="icon-loginright"></i>
            </div>			
            <div class="form_item">
                <div class="item_tip">确认密码</div>
                <input type="password" tabindex="4" name="password2" data-equal="#password" data-equal-error="两次输入的密码不一致" class="form_input" id="password2"  onfocus="focusInputLoginArea($(this))" onblur="blurInputLoginArea($(this))" autocomplete="off"/>
                <span class="error">不能为空</span>
                <i class="icon-loginright"></i>
            </div>
            <div class="form_item" style="margin:30px  0 0">
                <input type="submit" tabindex="7" value="注&nbsp;&nbsp;册" class="btn_reg btn" id="btn_reg" onclick="subReg()"/>
            </div>

        </div>
    </form>
</div>


 <form action="register" method="post">
		用户名:<input type="text" name= "username" />
		密码:<input type ="password"name = "password">
		邮箱:<input type ="text" name="mailbox">
		电话:<input type ="text" name="telephone">
		<input type="submit" value ="注册">
	</form>
<script src="js/fullplay.js" type="text/javascript">
</script><script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>

<div class="mmsg-box mmsg-box-info" id='msg-box' style="margin-top: -23.5px; margin-left: -96.5px;">
    <div class="mmsg-content">
        <i class="mmsg-icon"></i>
        <p id='msg-box-content'></p>
    </div>
    <div class="mmsg-background"></div>
</div>

<script type="text/javascript">
    function subReg() {
        /* blurInputLoginArea($("#username"), 1);
        blurInputLoginArea($("#mailbox"), 1);
        blurInputLoginArea($("#password"));
        blurInputLoginArea($("#password"));
        var i = 0;
        $(".error").each(function() {
            if ($(this).css("display") == 'inline') {
                i++;
            }
        })
 */
 		var username = $("#username").val();
 		var password = $("#password").val();
 		var password2= $("#password2").val();
 		var mailbox =  $("#mailbox").val();
 		
        var obj = $("#btn_reg");
        obj.addClass('disabled').val('注册中...');
        $.ajax({
			
			type:'post',
			url: 'register',
			timeout: 3000,
			data: {username : username, mailbox : $("#mailbox").val(), password : $("#password").val()},
			dataType:'json',
			success:function(data){
				if(data.status == 0){
					
					window.location.href='toIndex';
				}
			}
		});
    }
</script>
</body>
</html>