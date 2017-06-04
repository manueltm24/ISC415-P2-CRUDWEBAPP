<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="panel panel-default" >
    <div class="panel-heading">
        <h3 class="panel-title">DETALLES DEL ESTUDIANTE</h3>
    </div>
<div class="panel-body">
<form action="/editarEstudiante" method="post">
    <div class="form-group">
    <label for="Matricula">Matricula</label>
    <input type="number" name="Mat" value="${estudiante.getMatricula()?string["0"]}" id="Matricula"><br>
    </div>

    <div class="form-group">
    <label for="nombre">Nombre</label>
    <input type="text" name="Nom" value="${estudiante.getNombre()}" id="Nombre"><br>
    </div>

    <div class="form-group">
    <label for="nombre">Apellido</label>
    <input type="text" name="Ape" value="${estudiante.getApellido()}" id="Nombre"><br>
    </div>

    <div class="form-group">
    <label for="nombre">Telefono</label>
    <input type="text" name="Tel" value="${estudiante.getTelefono()}" id="Nombre"><br>
    </div>


    <br><button class="btn btn-success" type="submit" >GUARDAR</button>

</form>
</body>

</html>-