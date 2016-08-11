<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/form.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.login{
      text-align: center;
      background: #fff;
      width:40%;
      heigth:40%;
      border-radius:12px;
      border:1px black solid;
      margin: 20% auto;
      }
      
      .form {
      margin:10%;
      }

</style>
</head>

<body style="background:#DCDCDC">
<div class="login">
<div class="form">
<h2>Login</h2>
<form action="efetuaLogin" method="post">
Login: <input type="text" name="login"><br>
Senha: <input type="password" name="senha"><br>
<input type="submit" value="Entrar nas tarefas"><br>
</form>
</div>
</div>
</body>
</html>