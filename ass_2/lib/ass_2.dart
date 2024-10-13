// exercise 2
void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'vegetarian','pepperoni', 'gigi'];
  double Total = 0.0;
  for (var item in order) {
    if (pizzaPrices.containsKey(item)) {
      Total += pizzaPrices[item]!;
      print('$item : ${pizzaPrices[item]}');
    } else {
      print('$item is not avalaible on the menu');
    }

  }
  print('\$${Total}');
}
