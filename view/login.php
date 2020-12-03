<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Assets/css/login.css">
    <script src="../Assets/js/jquery.min.js"></script>
    <script src="../Assets/js/sweetalert2.js"></script>
    <title>Document</title>
</head>
<body>
    <div class = "container">
        <div class = "login-box">
            <div class = "login-img">
                <img src="../Assets/img/logotipo.png" alt="">
                <h1>INICIO DE SESION</h1>
            </div>
            <form id = "form-login">
                <label for="email">Email</label>
                <input type="email" name = "email" id = "email" maxlength="45">

                <label for="password">Contraseña</label>
                <input type="password" name = "password" id="password" maxlenght="30">

                <input type="submit" value ="ENVIAR">

            </form>
            
        </div>
    </div>
    <script src= "../Assets/js/login.js"></script>
</body>
</html>