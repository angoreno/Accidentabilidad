<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Caso Asesoría</title>
</head>
<body>


	<form action="casoAsesoria" method="post"> <!-- acá va el servlet que recibirá la información -->
	
	<label for="asesoria">Asesoría</label>
	<input type="text" name="asesoria" id="asesoria">
	
	<label for="motivo">Motivo</label>
	<input type="text" name="motivo" id="motivo"> 
	
	<label for="profesional">Profesional</label>
	<input type="text" name="profesional" id="profesional">
	
	<label for="empresa">Empresa</label>
	<input type="text" name="empresa" id="empresa">
	
	<button>Enviar</button>
	
	</form>

</body>
</html>