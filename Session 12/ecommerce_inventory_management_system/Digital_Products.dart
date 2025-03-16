import 'ecommerce_inventory_management_system.dart';

class DigitalProduct extends Product {
  Category category;

  DigitalProduct({
    required super.productPrice,
    required this.category,
    super.discountPercentage = 0.0});

  @override
  double getPrice() => getDiscountedPrice();
}