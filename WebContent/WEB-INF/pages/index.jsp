<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>陈燕亭</title>
</head>
<body>
	账号：<input type="text" id="name" name="name"  value="">
	密码：<input type="password" id="password" name="password" value="">
	<button id="but">登录</button>
</body>

 <script type="text/javascript" src="<%=basePath%>/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		$("#but").click(function(){
			var name=$("#name").val();
			var password=$("#password").val();
			if(name==null || name==""){
				alert("用户名不能为空")
				$("#name").focus();
				return;
			} else if(password==null || password=="" ){
				alert("密码错误")
				$("#password").focus();
				return;
			}
			
			$.ajax({
				type:'POST',
				url:'<%=basePath%>/ti/test',
				data:{"name":name,"password":password},
				dataType:"JSON",
				success:function(relust){
					if(relust){
						window.location.href="<%=basePath%>/jsp/succss.jsp";
					}
				}
				
				
			})
			
		})


	</script>



</html>