import 'package:grocart/models/productmodel.dart';

class CartItem{
  final ProductModel product;
  int count;

  CartItem({required this.product,this.count=1});
}