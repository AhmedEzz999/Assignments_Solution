// E-commerce Inventory Management System
void main() {
  
}

enum Category {
  electronics, 
  clothing, 
  homeAccessories, 
  cosmetics, 
  downloadableContent, 
  digitalLicenses
}

abstract class Product {
  double discountPercentage;
  double productPrice;
  Product ({required this.productPrice, this.discountPercentage = 0});

  double getDiscountedPrice() {
    return this.productPrice * (1 - (this.discountPercentage/100));
  }

  double getPrice();
}

class InventoryManager {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double getAllPrices() {
    return products.fold(0, (sum, product) => sum + product.getPrice());
  }

  List<Product> filterByCategory(Category category) {
    return products.where((product) => (product as dynamic).category == category).toList();
  }
}