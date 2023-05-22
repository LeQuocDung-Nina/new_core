import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final productFavouritesProvider = NotifierProvider<ProductFavouritesNotifier, List<String>>(() {
  return ProductFavouritesNotifier();
});

class ProductFavouritesNotifier extends Notifier<List<String>> {
  ProductFavouritesNotifier() : super(){
    _init();
  }
  
  late final Box _box;
  
  _init() async{
    _box = await Hive.openBox('product_favourites');
    final List<String> list = [];
    for(var item in _box.get('all_product_favourites')){
      list.add(item);
    }
    state = list;
  }
  
  @override
  List<String> build() {
    return [];
  }

  bool checkExit(dynamic idProduct){
    return state.contains(idProduct);
  }

  tongleFav(String idProduct){
    if(state.contains(idProduct)){
      state.removeWhere((element) => element == idProduct);
    }else{
      state.add(idProduct);
    }
    updateFav();
  }

  updateFav(){
    _box.clear();
    final List<String> list = [];
    for(var item in state){
      list.add(item);
    }
    _box.put('all_product_favourites',list);
  }
}