import 'dart:io';

void main() {
  List<Map<String, dynamic>> products = [];
  double total = 0.0;

  print("To quit type 'q'.");

  while (true) {
    // Get the product name from the user
    print("Enter product name: ");
    String? productName = stdin.readLineSync();

    // Check if the user wants to quit
    if (productName == null || productName.toLowerCase() == 'q') {
      break;
    }

    // Get the product price from the user
    print("Enter product price: ");
    String? priceInput = stdin.readLineSync();
    double productPrice = double.tryParse(priceInput ?? '') ?? 0.0;

    // Add the product to the list and update the total
    products.add({'name': productName, 'price': productPrice});
    total += productPrice;

    // Display the list of products and the current total
    print("\nProducts so far:");
    for (var product in products) {
      print(" - ${product['name']} - \$${product['price']}");
    }
    print("Total so far: \$${total.toStringAsFixed(2)}\n");
  }

  print("Final Total: \$${total.toStringAsFixed(2)}");
  print("Thank you for adding products!");
}
