<!DOCTYPE html>
<html>

<body>
<form action="/home" method="get">
    <label for="Matricula">Matricula: </label>
    <label>${estudiante.getMatricula()?string["0"]}</label>
    <br><label for="nombre">Nombre: </label>
    <label>${estudiante.getNombre()}</label>
    <br><label for="nombre">Apellido: </label>
    <label>${estudiante.getApellido()}</label>
    <br><label for="nombre">Telefono: </label>
    <label>${estudiante.getTelefono()}</label>
    <br><input type="submit" value="ATRAS">

</form>
</body>

</html>