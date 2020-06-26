<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ingreso Actividad Mejora</title>
</head>
<body>

	<form action="#" method="post"> <!-- acá va el servlet que recibirá la información -->
	
	<label for="mejora">Mejora</label>
	<input type="text" name="mejora" id="mejora">
	<label for="descripcion">Descripción</label>
	<input type="text" name="descripcion" id="descripcion"> 
	<label for="profesional">Profesional</label>
	<input type="text" name="profesional" id="profesional">
	<label for="empresa">Empresa</label>
	<input type="text" name="empresa" id="empresa">
	<button>Enviar</button>
	
	</form>

</body>
</html>