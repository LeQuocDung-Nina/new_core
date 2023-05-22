import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product_model.dart';
import 'product_favourites_provider.dart';

import '../repositories/product_repositories.dart';


final productProvider = NotifierProvider<ProductNotifier, List<ProductModel>>(() => ProductNotifier(),);

class ProductNotifier extends Notifier<List<ProductModel>> {
  final ProductRepositories _productRepositories = ProductRepositories();

  @override
  List<ProductModel> build() {
    return [];
  }

  Future<List<ProductModel>?> getAllProduct() async{


    state = await _productRepositories.getAllProduct();
    return Future(() => state);
  }

  tongleFav(String idProduct){
    state = [
      for(var product in state)
        if(product.id == idProduct)
            product.copyWith(isFavourite: !product.isFavourite)
        else
          product
    ];
    ref.read(productFavouritesProvider.notifier).tongleFav(idProduct);
  }
}

