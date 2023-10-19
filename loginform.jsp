<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="loginstyle1.css" rel="stylesheet" type="text/css">
	 <meta name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
</head>
		
	<body > 
	<br></br><br></br><br></br>
	<!-- Heading -->
	 
	 <header>
 		
 		 <h1>LOGIN</h1>
	 </header>
		
		<form>
<%--		<form action="/market/welcome.jsp">       						submit 클릭시 해당 파일로 이동             --%>
		
				<div class="input-box" >
				 <input id="userid" type="text" name="userid" placeholder="아이디" required autofocus >   	
				 <label for="userid">아이디</label>  
				
				<div class="input-box">
				 <input id="password" type="password" name="password" placeholder="비밀번호">   	
				 <label for="password">비밀번호</label> 
				
				</div>
				<button type= "submit"> Login</botton>
			
				
				
				</form>
	 
	</body>
</html>