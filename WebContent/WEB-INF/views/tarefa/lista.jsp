<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastrar Registro</title>
	<script type="text/javascript" src="resources/js/jquery.js"></script>
</head>
<body>

	<script type="text/javascript">
		function finalizaAgora(id) {
			$.post("finalizaTarefa", {'id' : id}, function() {
				// selecionando o elemneot html através do ID e alterando o HTML dele
				$("#tarefa_" + id).html("Finalizado!");
			});
		}
	</script>
	

	<a href="novaTarefa">Criar nova Tarefa</a>
	</br></br>
	
	<table>
		<tr>
			<th> Id </th>
			<th> Descrição </th>
			<th> Finalizado? </th>
			<th> Data de FInalização </th>
			<th> Opções </th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr>
				<td> ${tarefa.id} </td>
				<td> ${tarefa.descricao} </td>
				
				<c:if test="${tarefa.finalizado eq false }">
					<td id="tarefa_${tarefa.id }">
						<a href="#" onclick="finalizaAgora(${tarefa.id})">
							Finaliza Agora!
							</td>
						</a>
				</c:if>
				
				<td> <fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/> </td>
				<td> <a href="removeTarefa?id=${tarefa.id}">Remover</a>
					<a href="mostraTarefa?id=${tarefa.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>