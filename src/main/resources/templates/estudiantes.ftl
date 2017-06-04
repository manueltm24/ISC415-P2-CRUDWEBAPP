<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Listado Estudiantes</title>



    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="panel panel-default" >
    <!-- Default panel contents -->
    <div class="panel-heading">
        <table>
            <th>
                <img width="75" height="75" src="/logopucmm.png">
            </th>
            <th>
            <h1>
                LISTADO ESTUDIANTES</h1></td>
            </th>

            
        </table>

    </div>
    <table class="table" >

            <tr><thApellido</th><th>Matricula</th><th>Nombre</th><th>Telefono</th></tr>
        <#-- Iterando elementos.-->
        <#list estudiantes as estudiante>
            <tr>
                <td>${estudiante.getApellido()}</td>
                <td>${estudiante.getMatricula()?string["0"]}</td>
                <td>${estudiante.getNombre()}</td>
                <td>${estudiante.getTelefono()}</td>
                <td>
                    <div class="btn-group" role="group" aria-label="...">
                            <button type="button" class="btn btn-default">
                                <a href="/verEstudiante/${estudiante.getMatricula()?string.computer}">Ver</a></button>
                            <button type="button" class="btn btn-default">
                                <a href="/editarEstudiante/${estudiante.getMatricula()?string.computer}">Editar</a></button>
                            <button type="button" class="btn btn-danger">
                                <a href="/eliminarEstudiante/${estudiante.getMatricula()?string.computer}">Eliminar</a></button>
                            </button>
                        </div>
                    </div>
                </td>
            </tr>
        </#list>
        </table>
</div>

</p>
<form action="agregarEstudiante">
    <div class="btn-group" role="group" aria-label="...">
        <button type="submit" class="btn btn-default" aria-label="Left Align">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Agregar Estudiante
        </button>
    </div>
</form>


</body>
</html>