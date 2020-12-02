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
                    <h1>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe autem nobis minus quidem suscipit ex, eos nisi aliquam laudantium eligendi exercitationem ab adipisci accusamus dolor, alias provident dolores in aliquid?</h1>
                    <h1>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum facilis ut vel distinctio necessitatibus corporis adipisci rem quos, eligendi quasi! Quos modi recusandae ducimus obcaecati fugit ipsum aliquid exercitationem expedita!</h1>
                    <h1>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Distinctio maxime sequi temporibus error vero eum accusantium magni iusto ipsa culpa et dicta ab veniam sed voluptate, quas provident dignissimos? Consequatur!</h1>
                </div>

            </div>
        </div>
        <!-- FOOTER -->
        <?php require "view/footer.php"?>
    </div>
<?php require "view/linksjs.php";?>
</body>
</html>