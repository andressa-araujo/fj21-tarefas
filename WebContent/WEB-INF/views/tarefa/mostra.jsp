<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib tagdir="/WEB-INF/tags/" prefix="caelum" %>
<html>
	<head>
	<link href="css/jquery-ui.css" rel="stylesheet">
    <script type='text/javascript' src='js/jquery-1.4.2.min.js'></script>
	<script type='text/javascript' src='js/jquery-ui-1.8.2.custom.min.js'></script>
	
	<script>
	    $( function() {
	      $( "#dataFinalizacao" ).datepicker({
	        changeMonth: true,
	        changeYear: true
	      });
	    } );
  </script>
  
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<style>
	
        .co {
    padding:5px;
    background-color:#036;
    border:1px solid #000;
    color:#fff;
    font-weight:bold;
}
      form {
     width: 800px; 
     padding: 20px;    
     background: #f0f0f0;     
     border-radius:12px;
    
}
		</style>
	</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" />
		Descrição:<br />
		<textarea name="descricao" cols="100" rows="5">
		${tarefa.descricao}
		</textarea>
		<br />
		Finalizado? <input type="checkbox" name="finalizado"
		value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />
		Data de finalização: <br/>
	  	<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" var="dataFormatada"/>
	  	<caelum:campoData id="dataFinalizacao" val="${dataFormatada}"/>
			
	   <input class="co" type="submit" value="Alterar"/>
	</form>
</body>
</html>