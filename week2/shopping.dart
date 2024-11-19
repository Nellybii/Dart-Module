void main() {
  List<double> prices = [20.0, 18.0, 5.0, 10.0, 3.0];

  double threshold = 10.0;
  List<double> filteredPrices = prices.where((price) => price >= threshold).toList();
  print("Filtered prices (>= \$10): $filteredPrices");

  double discountPercent = 5.0; 
  List<double> discountedPrices = applyDiscount(filteredPrices, (price) => price - (price * (discountPercent / 100)));
  print("Prices after discount: $discountedPrices");

  double taxPercent = 5.0;
  double totalPrice = calculateTotal(discountedPrices, tax: taxPercent);
  print("Total price after discount and tax: \$${totalPrice.toStringAsFixed(2)}");

  int itemCount = discountedPrices.length;
  double factorialDiscountPercent = calculateFactorialDiscount(itemCount);
  double finalPrice = totalPrice - (totalPrice * (factorialDiscountPercent / 100));
  print("Final price after applying factorial discount ($factorialDiscountPercent%): \$${finalPrice.toStringAsFixed(2)}");
}

// Function to calculate the total price with optional tax
double calculateTotal(List<double> prices, {double tax = 0}) {
  double subtotal = prices.reduce((a, b) => a + b);
  return subtotal + (subtotal * (tax / 100));
}

// Higher-order function to apply a discount to all items in the cart
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

// Recursive function to calculate a factorial-based discount percentage
double calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}
