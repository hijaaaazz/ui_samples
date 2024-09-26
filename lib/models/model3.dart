// Define a model for your data

class Order {
  final String orderId;
  final String price;
  final String status;
  final String description;
  final String imageUrl;
  final String pdetails;

  Order({
    required this.orderId,
    required this.price,
    required this.status,
    required this.description,
    required this.imageUrl,
    required this.pdetails,
  });
}

// Example list of orders (sample data)
List<Order> orders = [
  Order(
    orderId: "Order 122356652",
    price: "₹799",
    status: "Successful",
    description: "July 12, 02:06 PM",
    imageUrl: "assets/tshirt.webp",
    pdetails:"₹799 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹397.4",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/mug.jpg",
    pdetails:"₹397.4 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹686.42",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/tshirt_folded.jpg",
    pdetails:"₹686.42 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹1123.5",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/folded2.jpg",
    pdetails:"₹1123.5 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹1722.75",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/t_shirt.jpeg",
    pdetails:"₹1722.75 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹884.17",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/t_shirt.jpeg",
    pdetails:"₹884.17 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹599.25",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/folded2.jpg",
    pdetails:"₹599.25 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹524.25",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/t_shirt2.jpeg",
    pdetails:"₹599.25 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹699",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/t_shirt3.jpeg",
    pdetails:"₹699 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹1123.5",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/t_shirt.jpeg",
    pdetails:"₹1123.5 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹799",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/t_shirt2.jpeg",
    pdetails:"₹799 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹524.25",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/t_shirt.jpeg",
    pdetails:"₹524.25 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹799",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/folded2.jpg",
    pdetails:"₹799 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹1122",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/t_shirt.jpeg",
    pdetails:"₹1123 deposited to 4598745632145236"
  ),
  Order(
    orderId: "Order 1223566",
    price: "₹524.25",
    status: "Successful",
    description: "text in in",
    imageUrl: "assets/tshirt.webp",
    pdetails:"₹524.25 deposited to 4598745632145236"
  ),
];


