<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Solicitud Asesoría Especial</title>
</head>
<body>

	<form action="#" method="post"> <!-- acá va el servlet que recibirá la información -->
	
	<label for="empresa">Empresa</label>
	<input type="text" name="empresa" id="empresa">
	<label for="motivo">Motivo</label>
	<input type="text" name="motivo" id="motivo"> 
	<label for="fecha">Fecha</label>
	<input type="date" name="fecha" id="fecha">
	<button>Enviar</button>
	
	</form>

</body>
</html>