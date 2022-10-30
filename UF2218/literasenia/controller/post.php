<?php

if ($_POST != '') {
    insertar();
}

function insertar() {

    include("../model/conexion.php");

    $title = $_POST["title"];
    $imgPath = $_POST["imgPath"];
    $review = $_POST["review"];

    $sql = "INSERT INTO posts VALUES (NULL, '" . $title . "', '" . $imgPath . "', current_timestamp(), '" . $review . "');";
    
    try {
        mysqli_query($conn, $sql);
        header("Location: http://localhost/literasenia/index.php");
        die();
    } catch (\Throwable $th) {
        //throw $th;
        echo "Error insertando Post: " . mysqli_error($conexion);
    }
    
    mysqli_close($conn);

}

function listar($id = '')
{

    include_once("model/conexion.php");

    $sql = ($id != '') ? "SELECT * FROM posts WHERE id=" . $id . ";" : "";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        // output data of each row
        while ($row = mysqli_fetch_assoc($result)) {
            echo ('<div class="post-preview">
                <a href="post.html">
                    <h2 class="post-title">' . $row["title"] . '</h2>
                </a>
                <p class="post-meta">
                    Publicado por:
                    <a href="#!">Start Bootstrap</a>
                    el ' . $row["date"] . '
                </p>
                <img src="' . $row["imgPath"] . '" width="100%">
                <p>' .
                $row["review"] .
                '</p>
            </div>
            <!-- Divider-->
            <hr class="my-4" />
            <!-- Post preview-->');
        }
    } else {
        echo "0 results";
    }

    mysqli_close($conn);
}
function listarTodos()
{

    include_once("model/conexion.php");
    $sql = "SELECT * FROM posts ORDER BY date DESC, id DESC;";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        // output data of each row
        while ($row = mysqli_fetch_assoc($result)) {
            echo ('<div class="post-preview">
                <a href="/literasenia/index.php?view= ' . $row["id"] . '">
                    <h2 class="post-title">' . $row["title"] . '</h2>
                </a>
                <p class="post-meta">
                    Publicado por:
                    <a href="#!">Start Bootstrap</a>
                    el ' . $row["date"] . '
                </p>
            </div>
            <!-- Divider-->
            <hr class="my-4" />
            <!-- Post preview-->');
        }
    } else {
        echo "0 results";
    }

    mysqli_close($conn);
}
function posting(){
    echo(var_dump($_POST));
    die();
}
