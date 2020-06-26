<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reportar Accidente</title>
</head>
<body>

	<form action="#" method="post">
		<!-- acá va el servlet que recibirá la información -->

		<label for="accidente">Accidente</label> 
		<input type="text" name="accidente" id="accidente"> 
		
		<label for="trabajador">Trabajador</label>
		<input type="text" name="trabajador" id="trabajador"> 
		
		<label for="fecha">Fecha</label> 
		<input type="date" name="fecha" id="fecha">
		
		<label for="empresa">Empresa</label> 
		<input type="text" name="empresa" id="empresa">
		
		<button>Enviar</button>

	</form>

</body>
</html>