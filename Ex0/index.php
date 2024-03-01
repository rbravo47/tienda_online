<b>Hola  soy  yo</b>
<p>  Parrafo </p>
<ul>
  <li></li>
  <li></li>
  <li></li>
  <li></li>
</ul> 

<ol>
<li></li>
  <li></li>
  <li></li>
  <li></li>
</ol>


<a href="https:// google.es">Ir a Google</a>
<img src="pelota.jpg"/>

<style>
  #titulo{
  color:red;
  font-size: 25px;
  margin-bottom: 10px;
}
  #subtitulo{
  color:#1DB7EE;
  font-size: 25px;
  }
  .verd {
    color: #33db13;
  }
  .lila {
    color: #7900f2;
}
</style>
/**************************************************************** */
<?php
$producte = "la pelota";
$preu = "3.65";
?>
/**************************************************************** */

<?php
$nota= "5";

if ($nota > 5) echo "Has aprobado el examen";
else echo "Has suspendido el examen";

?>
<br>

<?php if ($nota>=5) :?>
  Has aprobado el examen con un  <? $nota ?>
<?php else : ?>
    Has Suspendido el examen
<?php endif; ?>


<br>

<div class="verd"> 
  El preu de 
 <span class= "lila"><?= $producte ?> </span>
 es de  <?= $preu ?> euros.
</div>
<br><br>
/**************************************************************** */
<br><br>

<?php
$hoy =date("d/m/Y H:i:s");
echo $hoy;

$fecha_original = "2023-06-16"; 
$fecha_modificada = date("d-m-Y", strtotime($fecha_original));
echo $fecha_modificada;
?>




