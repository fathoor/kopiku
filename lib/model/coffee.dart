class Coffee {
  final name;
  final detail;
  final price;
  final image;
  final category;

  Coffee({
    required this.name,
    required this.detail,
    required this.price,
    required this.image,
    required this.category,
  });
}

var categoryList = [
  'Semua',
  'Espresso',
  'Brewed',
  'Blended',
  'Lainnya',
];

var coffeeList = [
  Coffee(
    name: 'Cappuccino',
    detail: 'Espresso with steamed milk, topped with a deep layer of foam.',
    price: '14.999',
    image: 'assets/images/cappuccino.jpg',
    category: 'Espresso',
  ),
  Coffee(
    name: 'Caramel Macchiato',
    detail:
        'Espresso combined with vanilla-flavoured syrup, milk and caramel sauce over ice.',
    price: '19.999',
    image: 'assets/images/caramel.jpg',
    category: 'Espresso',
  ),
  Coffee(
    name: 'Espresso Macchiato',
    detail:
        'With the slight dab of foam we set atop our signature espresso in this classic European-style beverage.',
    price: '17.999',
    image: 'assets/images/espresso.jpg',
    category: 'Espresso',
  ),
  Coffee(
    name: 'Caffè Americano',
    detail: 'Rich, full-bodied espresso with hot water.',
    price: '12.999',
    image: 'assets/images/americano.jpg',
    category: 'Espresso',
  ),
  Coffee(
    name: 'Brewed Coffee',
    detail: 'Brewed perfectly for those who enjoy their coffee black.',
    price: '11.999',
    image: 'assets/images/brewed.jpg',
    category: 'Brewed',
  ),
  Coffee(
    name: 'Misto',
    detail: 'Equal parts fresh filter coffee and frothy steamed milk.',
    price: '14.999',
    image: 'assets/images/misto.jpg',
    category: 'Brewed',
  ),
  Coffee(
    name: 'Cold Brew',
    detail: 'Slow-steeped, small-batch and super smooth.',
    price: '17.999',
    image: 'assets/images/coldbrew.jpg',
    category: 'Brewed',
  ),
  Coffee(
    name: 'Coffee Frappuccino',
    detail: 'Blended with nonfat milk and ice for a sip on the light side.',
    price: '19.999',
    image: 'assets/images/coffeefrap.jpg',
    category: 'Blended',
  ),
  Coffee(
    name: 'Mocha Frappuccino',
    detail: 'Roast coffee, milk, and ice all come together for a mocha flavor.',
    price: '19.999',
    image: 'assets/images/mochafrap.jpg',
    category: 'Blended',
  ),
  Coffee(
    name: 'Signature',
    detail:
        'Chocolate and dairy milk, steamed together to create a hot chocolate fit for a chocaholic!',
    price: '23.999',
    image: 'assets/images/signature.jpg',
    category: 'Lainnya',
  ),
];

var espressoList = [
  Coffee(
    name: 'Cappuccino',
    detail: 'Espresso with steamed milk, topped with a deep layer of foam.',
    price: '14.999',
    image: 'assets/images/cappuccino.jpg',
    category: 'Espresso',
  ),
  Coffee(
    name: 'Caramel Macchiato',
    detail:
        'Espresso combined with vanilla-flavoured syrup, milk and caramel sauce over ice.',
    price: '19.999',
    image: 'assets/images/caramel.jpg',
    category: 'Espresso',
  ),
  Coffee(
    name: 'Espresso Macchiato',
    detail:
        'With the slight dab of foam we set atop our signature espresso in this classic European-style beverage.',
    price: '17.999',
    image: 'assets/images/espresso.jpg',
    category: 'Espresso',
  ),
  Coffee(
    name: 'Caffè Americano',
    detail: 'Rich, full-bodied espresso with hot water.',
    price: '12.999',
    image: 'assets/images/americano.jpg',
    category: 'Espresso',
  ),
];

var brewedList = [
  Coffee(
    name: 'Brewed Coffee',
    detail: 'Brewed perfectly for those who enjoy their coffee black.',
    price: '11.999',
    image: 'assets/images/brewed.jpg',
    category: 'Brewed',
  ),
  Coffee(
    name: 'Misto',
    detail: 'Equal parts fresh filter coffee and frothy steamed milk.',
    price: '14.999',
    image: 'assets/images/misto.jpg',
    category: 'Brewed',
  ),
  Coffee(
    name: 'Cold Brew',
    detail: 'Slow-steeped, small-batch and super smooth.',
    price: '17.999',
    image: 'assets/images/coldbrew.jpg',
    category: 'Brewed',
  ),
];

var blendedList = [
  Coffee(
    name: 'Coffee Frappuccino',
    detail: 'Blended with nonfat milk and ice for a sip on the light side.',
    price: '19.999',
    image: 'assets/images/coffeefrap.jpg',
    category: 'Blended',
  ),
  Coffee(
    name: 'Mocha Frappuccino',
    detail: 'Roast coffee, milk, and ice all come together for a mocha flavor.',
    price: '19.999',
    image: 'assets/images/mochafrap.jpg',
    category: 'Blended',
  ),
];

var otherList = [
  Coffee(
    name: 'Signature',
    detail:
        'Chocolate and dairy milk, steamed together to create a hot chocolate fit for a chocaholic!',
    price: '23.999',
    image: 'assets/images/signature.jpg',
    category: 'Lainnya',
  ),
];
