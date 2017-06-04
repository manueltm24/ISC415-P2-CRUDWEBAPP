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
    <form action="/home" method="get">
        <div class="form-group">
        <label for="Matricula">Matricula: </label>
        <label>${estudiante.getMatricula()?string["0"]}</label>
        </div>

        <div class="form-group">
        <br><label for="nombre">Nombre: </label>
        <label>${estudiante.getNombre()}</label>
        </div>

        <div class="form-group">
        <br><label for="nombre">Apellido: </label>
        <label>${estudiante.getApellido()}</label>
        </div>

        <div class="form-group">
        <br><label for="nombre">Telefono: </label>
        <label>${estudiante.getTelefono()}</label>
        </div>

        <div class="form-group">
        <br><button class="btn btn-success" type="submit" >ATRAS</button>

    </form>
</body>

</html>