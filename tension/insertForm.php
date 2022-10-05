<div class="container">
        <form action="./functions/insert.php" method="post" name="insert">
            <table>
                <thead></thead>
                <tbody>
                    <tr>
                        <td><label for="idUser">Id de Usuario: </label></td>
                        <td><input type="text" name="idUser" autofocus></td>
                    </tr>
                    <tr>
                        <td><label>Pulsaciones: </label></td>
                        <td><input type="text" name="pulsaciones"></td>
                    </tr>
                    <tr>
                        <td><label>Alta: </label></td>
                        <td><input type="text" name="alta"> </td>
                    </tr>
                    <tr>
                        <td><label>Baja: </label></td>
                        <td><input type="text" name="baja"></td>
                    </tr>
                    <tr>
                        <td><label>Fecha: </label></td>
                        <td><input type="datetime" name="fecha"></td>
                    </tr>
                    <tr>
                        <td id="submitrow" colspan="2">
                            <button type="submit">Enviar</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>