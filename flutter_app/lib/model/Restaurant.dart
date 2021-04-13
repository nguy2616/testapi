class Restaurant {
  String id;
  String name;
  String image;
  // int price;
  // int rates;
  // double rating;
  // String restaurant;
  // int restaurantId;

   Food(String id, String name, String image/*, int price, int rates, double rating, String restaurant, int restaurantId*/) {
    this.id = id;
    this.name = name;
    this.image = image;
    // this.price = price;
    // this.rates = rates;
    // this.rating = rating;
    // this.restaurant = restaurant;
    // this.restaurantId = restaurantId;
  }

  Restaurant.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        image = json['image'];
        // price = json['price'],
        // rates = json['rates'],
        // rating = json['rating'],
        // restaurant = json['restaurant'],
        // restaurantId = json['restaurantId'];

  Map toJson() {
    return {'id': id, 'name': name, 'image': image/*, 'price': price, 'rating': rating, 'restaurant': restaurant, 'restaurantId': restaurantId*/};
  }
}