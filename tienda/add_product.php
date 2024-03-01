<?php include("_header.php"); ?>
	<?php 
		if(isset($_POST['send_contact'])){
			$name = $_POST['name'];
			$price = $_POST['price'];

			if (isset($nombre) && isset($price)){
				echo "Guardar producto";
			}else{
				echo "Faltan datos";
			}
		}
	?>
    <!-- Page Content -->
<div class="container flex-shrink-0">
	<div class="row my-4">
	  <div class="col-md-6 offset-md-3">
		  <form action="" method="post">
			<h2>Añadir producto</h2>
	
			<!-- Name input-->
			<div class="row mb-3">
			  <label class="col-md-3 control-label" for="name">Nombre</label>
			  <div class="col-md-9">
				<input id="name" name="name" type="text" placeholder="" class="form-control" required>
			  </div>
			</div>
	
			<!-- Email input-->
			<div class="row mb-3">
			  <label class="col-md-3 control-label" for="email">Price</label>
			  <div class="col-md-9">
				<input id="price" name="price" type="text" placeholder="" class="form-control" required>
			  </div>
			</div>
	
			<!-- Form actions -->
			<div class="row mb-3">
			  <div class="col-md-12 text-right">
				<button type="submit" name="send_contact" value="send_contact" class="btn btn-primary">Enviar</button>
			  </div>
			</div>
		  </form>
	  </div>
	</div>
</div>
<?php include("_footer.php"); ?>
