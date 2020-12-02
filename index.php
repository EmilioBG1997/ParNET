<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php require "view/linkscss.php";?>
</head>
<body>
    <div class="container">
        <!-- HEADER -->
        <?php require "view/header.php"?>

        <!-- ASIDE -->
        <div class = "container-fluid">
            <div class  ="row row-cols-12">
                <?php require "view/aside.php"?>

                <div class = "col-md-9 main-content">
                    <div class = "row">
                        <div class = "col-md-3 p-principal text-center">
                            <img src="Assets/img/Página Principal.png" class="img-fluid" alt="">
                        </div>
                    </div>
                    <div class = "row text-center">
                        <div class = "col-md-12 flash-rep">
                            <img src="Assets/img/representacion_flash.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class = "row text-left">
                        <div class = "col-md-12 bloque-content">
                            <img src="Assets/img/bloque 1 content.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class = "row text-left">
                        <div class = "col-md-12 bloque-content">
                            <img src="Assets/img/bloque 2 content.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class = "row text-left">
                        <div class = "col-md-12 bloque-content">
                            <img src="Assets/img/bloque 3 content.png" class="img-fluid" alt="">
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <!-- FOOTER -->
        <?php require "view/footer.php"?>
    </div>
<?php require "view/linksjs.php";?>
</body>
</html>