<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Listado Estudiantes</title>
</head>
<body>
<p>
    <h1>LISTADO ESTUDIANTES</h1>
<table>
    <tr><th>Apellido</th><th>Matricula</th><th>Nombre</th><th>Telefono</th></tr>
<#-- Iterando elementos.-->
<#list estudiantes as estudiante>
    <tr>
        <td>${estudiante.getApellido()}</td>
        <td>${estudiante.getMatricula()?string["0"]}</td>
        <td>${estudiante.getNombre()}</td>
        <td>${estudiante.getTelefono()}</td>
        <td>
            <div class="btn-group">

                <ul class="dropdown-menu">
                    <li><a href="/verEstudiante/${estudiante.getMatricula()?string.computer}"><i class="fa fa-user"></i> Ver</a></li>
                    <li><a href="/editarEstudiante/${estudiante.getMatricula()?string.computer}"><i class="fa fa-pencil"></i> Editar</a></li>
                    <li><a href="/eliminarEstudiante/${estudiante.getMatricula()?string.computer}"><i class="fa fa-exclamation-triangle"></i> Eliminar</a></li>
                </ul>
            </div>
        </td>
    </tr>
</#list>
</table>
</p>
<form action="agregarEstudiante">
    <input type="submit" value="Agregar Estudiante">
</form>


</body>
</html>