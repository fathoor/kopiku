class Coffee {
  String name;
  String detail;
  String price;
  String image;

  Coffee({
    required this.name,
    required this.detail,
    required this.price,
    required this.image,
  });
}

var coffeeList = [
  Coffee(
    name: 'Cappuccino',
    detail: 'Espresso with steamed milk, topped with a deep layer of foam.',
    price: '14.999',
    image: 'assets/images/cappuccino.jpg',
  ),
  Coffee(
    name: 'Caramel Macchiato',
    detail:
        'Espresso combined with vanilla-flavoured syrup, milk and caramel sauce over ice.',
    price: '19.999',
    image: 'assets/images/caramel.jpg',
  ),
  Coffee(
    name: 'Espresso Macchiato',
    detail:
        'With the slight dab of foam we set atop our signature espresso in this classic European-style beverage.',
    price: '17.999',
    image: 'assets/images/espresso.jpg',
  ),
];
