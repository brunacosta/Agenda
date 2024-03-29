<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Tarefa</title>
</head>
<body>

	<h3>Altera tarefa - ${tarefa.id }</h3>
	
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id }"/>
		
		Descrição: <br/>
		<textarea rows="5" cols="100" name="descricao">${tarefa.descricao}</textarea>
		<br/>
		
		Finalizado? <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : '' }> </br>
		
		Data de Finalização: <br/>
		<input type="text" name="dataFinalizacao" value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}"
			pattern="dd/MM/yyyy"/>"/>
		<br/>
		
		<input type="submit" value="Alterar"/>
		
	</form>
	
</body>
</html>