<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mantenedor cliente</title>
</head>
<body>

	<form action="controladorMantenedorCliente" method="post">
	
	
		<!-- Estos botones nos envían a cada tabla  -->

		
		<label for="pagos">Datos cliente</label> 
		<input type="text" name="pagos" id="pagos">
		
			
		<label for="pagos">Pagos</label> 
		<input type="text" name="pagos" id="pagos">
		
				
		<label for="reportes">Reportes</label> 
		<input type="text" name="reportes" id="reportes">
		
		<label for="solicitud">Solicitudes</label> 
		<input type="text" name="solicitud" id="solicitud">
		
		
		<button>Enviar</button>

	</form>

</body>
</html>