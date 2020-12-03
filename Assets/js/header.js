$(function () {
    $("#h-quienes-somos").click(function (e) { 
        $("#main").load('view/QuienesSomos.php');
    });
});

$(function () {
    $("#h-principal").click(function (e) { 
        $("#main").load('view/main.php');
    });
});

$(function () {
    $("#h-casos-exito").click(function (e) { 
        $("#main").load('view/casosexito.php');
    });
});