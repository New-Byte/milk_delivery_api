<?php  
	include_once '../database/db.php';

	$database = new Database();
	$db = $database->getConnection();

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