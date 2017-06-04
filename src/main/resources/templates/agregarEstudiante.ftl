<!DOCTYPE html>
<html>


<head>
    <meta charset="UTF-8">
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">NUEVO ESTUDIANTE</h3>
    </div>
    <div class="panel-body">
        <form action="/agregarEstudiante" method="post">
            <div class="form-group">
                <label for="Matricula">Matricula</label>
                <input type="number" name="Mat" id="Matricula"><br>
            </div>

            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" name="Nom" id="Nombre"><br>
            </div>

            <div class="form-group">
                <label for="apellido">Apellido</label>
                <input type="text" name="Ape" id="Apellido"><br>
            </div>

            <div class="form-group">
                <label for="telefono">Telefono</label>
                <input type="text" name="Tel" id="Telefono"><br>
            </div>


            <button class="btn btn-success" type="submit" >Guardar</button>
        </form>
    </div>
</div>


</body>

</html>