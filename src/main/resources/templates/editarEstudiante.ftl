<!DOCTYPE html>
<html>

<body>
<form action="/editarEstudiante" method="post">
    <label for="Matricula">Matricula</label>
    <input type="number" name="Mat" value="${estudiante.getMatricula()?string["0"]}" id="Matricula"><br>
    <label for="nombre">Nombre</label>
    <input type="text" name="Nom" value="${estudiante.getNombre()}" id="Nombre"><br>
    <label for="nombre">Apellido</label>
    <input type="text" name="Ape" value="${estudiante.getApellido()}" id="Nombre"><br>
    <label for="nombre">Telefono</label>
    <input type="text" name="Tel" value="${estudiante.getTelefono()}" id="Nombre"><br>
    <input type="submit" value="GUARDAR">

</form>
</body>

</html>-