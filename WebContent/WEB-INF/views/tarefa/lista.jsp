<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
	<head>
	<link href="css/lista.css" rel="stylesheet">
	<link href="css/jquery-ui.css" rel="stylesheet">
	<script type='text/javascript' src='js/jquery.js'></script>
	<script type='text/javascript' src='js/jquery-ui.js'></script>
	

	</head>
<body>

	<script type="text/javascript">
		function finalizaAgora(id) {
		$.post("finalizaTarefa", {'id' : id}, function(resposta) {
		$("#tarefa_"+id).html(resposta);
		});
		}
	</script>

	
	<br /><br />
	<caption><h3>Lista de Tarefas</h3></caption>
    <table border="1px" cellpadding="5px" cellspacing="0" ID="alter">
	<tr>

	<th>Id</th>
	<th>Descrição</th>
	<th>Finalizado</th>
	<th>Data de finalização</th>
	<th>Remover</th>
	<th>Alterar</th>
	</tr>
	
	<c:forEach items="${tarefas}" var="tarefa">
	<tr id="tarefa_${tarefa.id}">
	<td>${tarefa.id}</td>
	<td>${tarefa.descricao}</td>
	<c:if test="${tarefa.finalizado eq true}">
	<td>Finalizado</td>
	</c:if>

    <c:if test="${tarefa.finalizado eq false}">
	<td><a href="#" onClick="finalizaAgora(${tarefa.id})">Finalizar</a></td>
	</c:if>
	
	<td>
  	<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/></td>
	
	<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
	<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
	
		</c:forEach>
		
</table>
<br>
<a href="novaTarefa" class="av">Criar nova tarefa</a>
</body>
</html>