<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<#--<base href="<%=basePath%>">-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <title>注册</title>
</head>
<body>
<script src="js/fullplay.js" type="text/javascript">
</script><script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
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








</body>
</html>