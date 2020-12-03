<?php
require "../model/contactoModel.php";
$flag = $_POST["flag"];
$cont = new Usuarios();

switch ($flag) {
    /**
     * DEVUELVE TODOS LOS REGISTROS
     */
    case 1:
        $email = $_POST['email'];
        $contrasena = $_POST['password']
        $resultado = $cont->readUsuarios($email, $contrasena);
        if($resultado){
            session_start();
            $_SESSION["email"] = $email;
            session_id("secreto");
            echo 0;
        };
        else{
            echo 1;
        }
        break;
    /**
     * BORRA UN REGISTRO
     */
    case 2:
        $email = $_POST["email"];
        $contrasena = $_POST["contrasena"]
        $resultado = $cont->deleteUsuario($email,$contrasena);
        echo $resultado;
        break;
    /**
     * ACTUALIZA UN REGISTRO
     */
    case 3:
        $email = $_POST["email"];
        $password = $_POST["contrasena"];
        $nuevo_email = $_POST["nuevo_email"];
        $nuevo_password = $_POST["nuevo_password"]
        $resultado = $cont->updateUsuario($email,$contrasena,$nuevo_email, $nuevo_password);
        echo $resultado;
        break;
    /**
     * CREA UN REGISTRO
     */
    case 4:
        $email = $_POST["email"];
        $password = $_POST["password"];
        $resultado = $cont->createUsuario($email, $password);
        echo $resultado;
        break;
}
?>