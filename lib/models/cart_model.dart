import 'package:shopease_ecom_app/models/product_model.dart';

class CartModel {
  ProductModel product;
  int quantity;

  CartModel({
    required this.product,
    required this.quantity,
  });
}
