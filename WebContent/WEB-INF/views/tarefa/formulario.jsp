<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<style>
		textarea {
	    
	    border: 1px solid #CCC;
	    box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
	    display: block;
}
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

	<h3><font face="Arial"> Adicionar tarefas </font></h3> <br />
	<form:errors path="tarefa.descricao"/>
	<form action="/fj21-tarefas/adicionaTarefa" method="post">
		Descrição: <br />
		<textarea name="descricao" rows="5" cols="100"></textarea><br/>
		<input class="co" type="submit" value="Adicionar">
	</form>
</body>
</html>	