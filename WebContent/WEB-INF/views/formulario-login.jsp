<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

	<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet"/>

</head>
<body>

	<h2> Página de Login das Tarefas</h2>
	
	<form action="efetuaLogin" method="post">
		Login: <input type="text" name="login" /> </br>
		Senha : <input type="password" name="senha" /> </br>
		
		<input type="submit" value="Entrar nas Terfas" />
	</form>

</body>
</html>