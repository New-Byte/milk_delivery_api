<?php  
	include_once '../database/db.php';
	include_once 'product.php';

	$database = new Database();
	$db = $database->getConnection();

	$product = new Product($db);

	$product->email = $_POST['email'];
	$product->id = $_POST['id'];
	$product->product = $_POST['product'];
	$product->quantity = $_POST['quantity'];
	$product->price = $_POST["price"];

	if ($product->add_to_cart()) {
		$product_arr = array(
			"status" => true,
			"message" => "Added to Cart!",
			"Product ID" => $product->id,
			"E-mail" => $product->email
		);
	}
	else{
		$product_arr = array(
			"status" => false,
			"message" => "Something went wrong!"
		);
	}
	print_r(json_encode($product_arr));
?>