<?php

include '../config/db.php';

$usuario = addslashes($_POST['usuario']);
$senha = addslashes($_POST['senha']);

$query = "SELECT * FROM USUARIOS WHERE USUARIO = '$usuario' and SENHA = '$senha'";

$consulta = mysqli_query($conexao, $query);

if(mysqli_num_rows($consulta) == 1){
    session_start();
    $_SESSION['login'] = true;
    $_SESSION['usuario'] = $usuario;
    header('location:../public/index.php');
}
else{
    header('location:../public/index.php?erro');
}