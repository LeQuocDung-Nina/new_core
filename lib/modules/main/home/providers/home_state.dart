import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product_list_model.dart';
import '../repositories/product_repositories.dart';
import 'home_provider.dart';



class ProductListState {
  final List<ProductListModel>? listProductList;
  final bool isLoading;
  ProductListState({this.listProductList,this.isLoading = true});
  ProductListState copyWith({List<ProductListModel>? listProductList, bool? isLoading}) {
    return ProductListState(isLoading: isLoading ?? this.isLoading, listProductList: listProductList ?? this.listProductList);
  }
}

final productListRepositoryProvider = Provider<ProductRepositories>((ref) {
  return ProductRepositories();
});

final productListProvider = StateNotifierProvider<ProductListController, ProductListState>(
      (ref) => ProductListController(ref.watch(productListRepositoryProvider)),
);
