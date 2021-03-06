import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';

class Product {
  final String image;
  final String name;
  final String description;
  final double price;
  final ProductType type;
  final LocationType location;

  Product(
      {this.image,
      this.name,
      this.description,
      this.price,
      this.type,
      this.location});
}
