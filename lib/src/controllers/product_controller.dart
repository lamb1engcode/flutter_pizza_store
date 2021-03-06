import 'package:flutter_pizza_store/src/factory/food_factory.dart';
import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  LocationType location = LocationType.hanoi;
  ProductType productType = ProductType.burger;

  List<Product> currentProducts = [];

  filter() {
    final products = FoodFactory.getFood(productType);
    products.initial();
    products.filterByLocation(location);
    currentProducts.clear();
    currentProducts.addAll(products.products());
    update();
  }

  setLocation(currentLocation) {
    location = currentLocation;
    filter();
    update();
  }

  setProductType(currentProductType) {
    productType = currentProductType;
    filter();
    update();
  }
}
