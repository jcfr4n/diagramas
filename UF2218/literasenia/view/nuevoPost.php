<?php include("encabezado.php") ?>
<!-- Navigation-->
<?php include("navegacion.php") ?>
<!-- Page Header-->
<?php include("header.php") ?>

<?php include("/literasenia/controller/post.php") ?>

<!-- Main Content-->
<div class="container">
    <div class="col-md-10 col-lg-8 col-xl-7 justify-content-center">
        <form class="row g-3" action="/literasenia/controller/post.php" method="post">
            <div class="col-md-6">
                <label for="title" class="form-label">Título:</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="col-md-6">
                <label for="imgPath" class="form-label">Path de la imagen:</label>
                <input type="text" class="form-control" id="imgPath" name="imgPath">
            </div>
            <div class="col-12">
                <label for="review" class="form-label">Reseña:</label>
                <input type="textarea" class="form-control" id="review" name="review" width="100%" height="4" placeholder="Escribe tu reseña aquí...">
                <hr class="my-4">
                <div class="row" id="buttons">
                    <div class="col-6">
                        <button type="submit" class="btn btn-primary post" name="submit" id="submit">Publicar</button>
                    </div>
                    <div class="col-6">
                        <button type="reset" class="btn btn-warning post">Limpiar formulario</button>
                    </div>
                </div>
        </form>
    </div>
</div>
<!-- footer -->
<?php include("footer.php") ?>