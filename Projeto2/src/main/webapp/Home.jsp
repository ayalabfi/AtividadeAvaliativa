<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<center>
	<title>Login Project 2</title>
</center>
</head>
<%
	String erro= null;
if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null) {
	String usuario = request.getParameter("usuario");
	String senha = request.getParameter("senha");
	if ("admin".equalsIgnoreCase(usuario) && "admin".equalsIgnoreCase(senha)) {

	} else {
		erro = "Usuário ou senha invalidos. Tente novamente.";
	}
}
%>
<body>
	<h2>
		<center>Login (Projeto 2)</center>
	</h2>
	<%
		if (erro != null) {
	%>
	<spam style="color: red;">out.print(erro);</spam>
	<%
		}
	%>
	<form method="post">
		<center>
			User: <input type="text" name="usuario"><br> Pass: <input
				type="password" name="senha"><br>
			<button type="submit" name="submit">Entrar</button>
			<button type="submit" name="restorePass">Esqueci a senha</button>
			<br>
			<button type="reset">Reset</button>
		</center>
	</form>
</body>
</html>