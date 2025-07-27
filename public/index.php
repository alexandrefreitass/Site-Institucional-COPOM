<?php
session_start();
# Base de dados
include '../config/db.php';

# Cabeçalho
include '../includes/header.php';

# Conteúdo da página
    if(isset($_GET['pagina'])){
        $pagina = $_GET['pagina'];
    }
    else{
        $pagina = 'home';
    }

    switch($pagina){  
        case 'missoes': include '../modules/missoes.php'; break;
        case 'chamados': include '../modules/chamados.php'; break;
        case 'inventario': include '../modules/inventario.php'; break;
        case 'inserir_missao': include '../modules/inserir_missao.php'; break;
        case 'inserir_chamado': include '../modules/inserir_chamado.php'; break;
        case 'inserir_inventario': include '../modules/inserir_inventario.php'; break;
        case 'deleta_missao': include '../modules/deleta_missao.php'; break;
        default: include '../modules/home.php'; break;
    }

# Rodapé
include '../includes/footer.php';
