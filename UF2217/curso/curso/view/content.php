
<div class="collapse" id="collapse1">
    <div class="card card-body">
        <h5 class="card-title text-center">Insertar Alumno</h5>
        <form action="./controller/alumno.php" method="post" class="row g-3">
            <div class="col-md-6">
                <label for="name" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="name" name="name">
            </div>
            <div class="col-md-6">
                <label for="last_name1" class="form-label">Primer Apellido:</label>
                <input type="text" class="form-control" id="last-name1" name="last_name1">
            </div>
            <div class="col-md-6">
                <label for="last_name2" class="form-label">Segundo Apellido</label>
                <input type="text" class="form-control" id="last_name2" name="last_name2">
            </div>
            <div class="col-md-6">
                <label for="phone" class="form-label">Telefono</label>
                <input type="phone" class="form-control" id="phone" name="phone">
            </div>
            <div class="col-12">
                <label for="dni" class="form-label">DNI/NIE:</label>
                <input type="text" class="form-control" id="dni" name="dni">
            </div>
            <br>
            <div class="col-12">
                <button type="submit" class="btn btn-primary" name="submit" value="1">Insertar</button>
            </div>
        </form>
    </div>
    <?php
//    $alumnos = new AlumnoController();
//    $alumnos->list();
    ?>
</div>
<div class="collapse" id="collapse2">
    <div class="card card-body">
        Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.
    </div>
</div>