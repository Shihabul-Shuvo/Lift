<?php

?>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap 5 Checkout Form Example</title>
	<!-- Bootstrap 5 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">


	<!-- Demo CSS (No need to include it into your project) -->
	<link rel="stylesheet" href="css/demo.css">

</head>

<body>

	<main>

		<!-- DEMO HTML -->
		<div class="container">
			<div>
				<a href="list.php">Back to shopping</a><br><br>
			</div>

			<div class="row">
				<div class="col-md-12 order-md-2 mb-4">
					<h4 class="d-flex justify-content-between align-items-center mb-3">
						<span class="text-muted">Your cart</span>
						<span class="badge badge-secondary badge-pill">3</span>
					</h4>
					<ul class="list-group mb-3">

						<?php
						include 'dataShow_cart_module.php';
						?>
						<li class="list-group-item d-flex justify-content-between">
							<span>Total (Taka)</span>
							<strong><?php echo $total; ?></strong>
						</li>
					</ul>


					<h4 class="mb-3">Payment</h4>

					<div class="d-block my-3">
						<div class="custom-control custom-radio">
							<input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
							<label class="custom-control-label" for="credit">Credit card</label>
						</div>
						<div class="custom-control custom-radio">
							<input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
							<label class="custom-control-label" for="debit">Debit card</label>
						</div>
						<div class="custom-control custom-radio">
							<input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
							<label class="custom-control-label" for="paypal">PayPal</label>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="cc-name">Name on card</label>
							<input type="text" class="form-control" id="cc-name" placeholder="" required>
							<small class="text-muted">Full name as displayed on card</small>
							<div class="invalid-feedback">
								Name on card is required
							</div>
						</div>

						<hr class="mb-4">
						<button id="chk" class="btn btn-primary btn-lg btn-block" type="submit">Checkout</button>
						</form>
					</div>
				</div>

			</div>
			<!-- End Demo HTML -->

	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  
	<script>
		$(document).ready(function() {
			$('#chk').click(function(e) {

				$.ajax({
					type: "POST",
					url: "checkout_module.php",
					data: {



					},
					success: function(result, status, xhr) {
						location.replace('mtcart.php')

					}
				});
			});




		});
	</script>
</body>

</html>