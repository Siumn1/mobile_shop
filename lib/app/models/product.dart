class Product {
  final String uid;
  final String name;
  final int quantity;
  final double rating;
  final String? nutritionVal;
  final String? description;
  final double? price;

  Product({
    required this.uid,
    required this.name,
    required this.quantity,
    required this.rating,
    required this.nutritionVal,
    required this.description,
    required this.price,
  });
  //firebase юзает мап, типо джейсон, сериализация
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'quantity': quantity,
      'rating': rating,
      'nutritionVal': nutritionVal,
      'description': description,
      'price': price,
    };
  }

  //Десиреализация
  factory Product.fromMap(Map<String, dynamic> map) {
    if (map.isEmpty) {
      return Product(
        uid: 'none',
        name: 'none',
        quantity: 0,
        rating: 0.0,
        nutritionVal: 'none',
        description: 'none',
        price: 0,
      );
    }
    return Product(
      uid: map['uid'],
      name: map['name'],
      quantity: map['quantity'],
      rating: map['rating'],
      nutritionVal: map['uid'],
      description: map['description'],
      price: map['price'],
    );
  }
}
