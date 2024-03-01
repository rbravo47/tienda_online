<?php
//Rebem els parameteres del formulari
$nombre = htmlspecialchars($_POST['nombre']);
$edad = (int)htmlspecialchars($_POST['edad']);
$email = htmlspecialchars($_POST['email']);
?>
Hola <?php echo $nombre; ?>.
Usted tiene <?php echo $edad; ?> años.
Su email es <?php echo $email; ?>