import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_core/modules/main/product_detail/repositories/product_detail_repositories.dart';

import '../../product_detail/models/product_model.dart';
import '../models/color_model.dart';
final productDetailProvider = StateNotifierProvider.autoDispose.family<ProductDetailNotifier, Future<ProductModel?>?, int>((ref, id) {
  return ProductDetailNotifier(id);
},);

class ProductDetailNotifier extends StateNotifier<Future<ProductModel?>?> {
  ProductDetailNotifier(this.id) : super(null) {
    state = _productDetailRepositories.getProduct(id: id);
  }


  final int id;
  final ProductDetailRepositories _productDetailRepositories = ProductDetailRepositories();



}



