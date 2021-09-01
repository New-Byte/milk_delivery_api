<?php  
	class Product{
		private $conn;
		private $table_name = "cart";

		public $email;
		public $id;
		public $product;
		public $quantity;
		public $price;
		public $total;

		public function __construct($db)
		{
			$this->conn = $db;
		}

		function add_to_cart(){

			$this->total = $this->price * $this->quantity;

			$query = "INSERT INTO ".$this->table_name." SET id=:id,product=:product,quantity=:quantity,price=:price,total=:total,email=:email";
			$stmt = $this->conn->prepare($query);

			$this->email = htmlspecialchars(strip_tags($this->email));
			$this->id = htmlspecialchars(strip_tags($this->id));
			$this->product = htmlspecialchars(strip_tags($this->product));
			$this->quantity = htmlspecialchars(strip_tags($this->quantity));
			$this->price = htmlspecialchars(strip_tags($this->price));
			$this->total = htmlspecialchars(strip_tags($this->total));

			$stmt->bindParam(":id", $this->id);
			$stmt->bindParam(":product", $this->product);
			$stmt->bindParam(":quantity", $this->quantity);
			$stmt->bindParam(":price", $this->price);
			$stmt->bindParam(":total", $this->total);
			$stmt->bindParam(":email", $this->email);

			if ($stmt->execute()) {
				return true;
			}
			else{
				return false;
			}

		}
	}
?>
