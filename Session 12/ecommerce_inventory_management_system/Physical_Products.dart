import 'ecommerce_inventory_management_system.dart';

class PhysicalProduct extends Product {
  Category category;

  PhysicalProduct({
    required super.productPrice,
    required this.category,
    super.discountPercentage = 0.0});

  @override
  double getPrice() => getDiscountedPrice();
}