class TPricingCalculator {
  // Calculate  Price based on Tax and Shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

// ---Calculate Shipping cost
  static String calculateShippinCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // -----Calculate Tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Look for the appropriate tax rate for the given location from a taxrate database or API pu it below
    return 0.10; //example of 10% taxrate
  }

  static double getShippingCost(String location) {
    // Calculate the shipping cost based on various factors like distance, weight
    return 5.00; //example shipping cost of $5
  }

  // Sum of all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  // return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice +)}"
  // }
}
