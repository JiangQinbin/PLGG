<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<script type="text/javascript">
function fun() {
	alert("密码或用户名错误，请从新输入！")
}
</script>
<body>
	<script type="text/javascript">
		fun();
</script>
	<%response.setHeader("refresh", "0;URL=yici11.jsp"); %>
</body>
</html>