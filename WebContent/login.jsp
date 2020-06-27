<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

	<form action="ControllerAccidenta" method="post">
		<!-- acá va el servlet que recibirá la información -->

		<label for="rut">RUT</label> 
		<input type="text" name="rut" id="rut">

		<label for="contrasena">Contraseña</label> 
		<input type="text" name="contrasena" id="contrasena">

		<button>Enviar</button>

	</form>

</body>
</html>