class Pizza {
  int? id;
  String? pizzaName;
  String? description;
  double? price;
  String? imageUrl;
  double? rating;

  Pizza(
      {this.id,
      this.pizzaName,
      this.description,
      this.price,
      this.imageUrl,
      this.rating});

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: json['id'],
      pizzaName: json['pizzaName'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      rating: json['rating'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pizzaName': pizzaName,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'rating': rating,
    };
  }
}
