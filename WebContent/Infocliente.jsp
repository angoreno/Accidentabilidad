<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Información Cliente</title>
</head>
<body>


		<form action="controladorDatosCliente" method="post">

		<label for="nombre">Nombre Empresa</label> 
		<input type="text" name="nombre" id="nombre">

		<label for="rutempresa">RUT empresa</label> 
		<input type="text" name="rutempresa" id="rutempresa">
		
		<label for="giro">Giro</label> 
		<input type="text" name="giro" id="giro">
		
		<label for="direccionempresa">Dirección empresa</label> 
		<input type="text" name="direccionempresa" id="direccionempresa">
		
		<label for="telefonoempresa">Teléfono</label> 
		<input type="text" name="telefonoempresa" id="telefonoempresa">
		
		<label for="correo">Email de contacto</label> 
		<input type="text" name="correo" id="correo">
		
		<label for="contrasena">Contraseña</label> 
		<input type="text" name="contrasena" id="contrasena">
		
		
		
		<button> Modificar</button>
		<button>Consultar</button>
		<button>Eliminar</button>


</body>
</html>