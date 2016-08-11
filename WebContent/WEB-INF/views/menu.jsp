<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

	    ul{
	    list-style-type: none;
	    margin: 0 auto;
	    padding: 0;
	    overflow: hidden;
	    background-color: #333;
	    
	    }

	    li {
	    float: left;
	    }
	
	    li a {
	    display: block;
	    color: white;
	    text-align: center;
	    padding: 14px 16px;
	    text-decoration: none;
	    }

	   li a:hover {
	    background-color: #111;
	  }

</style>
</head>

<body>

<div>
<ul>
<li><a href="#">Home</a></li>
<li><a href="listaTarefas">Lista de Tarefas</a></li>
<li><a href="logout">Deseja sair, ${usuarioLogado.login} ?</a></li>
</ul>
</div>


</body>
</html>