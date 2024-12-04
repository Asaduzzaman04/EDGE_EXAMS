//* main function
void main() {
  // Define a map of fruit names and their prices
  Map<String, double> fruitDetails = {
    'Apple': 1.50,
    'Banana': 0.50,
    'Cherry': 3.00,
    'Orange': 1.20,
    'Mango': 2.50,
    'Pineapple': 4.00,
    'Grapes': 2.80,
    'Watermelon': 5.00,
    'Peach': 2.00,
    'Strawberry': 4.50
  };

  //?define a variable for store prices
  double price = 0.0;

//! Iterate through the map and print each fruit's name and price
  fruitDetails.forEach((_, value) => price += value);
  print("\$"+'$price');
}
