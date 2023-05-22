import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:new_core/_shared/app_setting/app_settings.dart';
import 'package:new_core/modules/main/cart/models/cart_hive.dart';

import '../models/cart_model.dart';
import '../models/cart_temp.dart';
import '../repositories/cart_repository.dart';

class CartState {
  late final List<CartTemp>? listCartTemp;
  late final List<CartModel>? listCartHive;
  late final bool loading;
  final double totalPrice;
  final int totalQuantity;

  CartState({
    this.listCartTemp,
    this.listCartHive,
    this.loading = true,
    this.totalPrice = 0,
    this.totalQuantity = 0,
  });

  CartState copyWith({
    List<CartTemp>? listCartTemp,
    List<CartModel>? listCartHive,
    bool? loading,
    double? totalPrice,
    int? totalQuantity,
  }) {
    return CartState(
      listCartTemp: listCartTemp ?? this.listCartTemp,
      listCartHive: listCartHive ?? this.listCartHive,
      loading: loading ?? this.loading,
      totalPrice: totalPrice ?? this.totalPrice,
      totalQuantity: totalQuantity ?? this.totalQuantity,
    );
  }
}

final cartProvider = StateNotifierProvider<CartController, CartState>((ref) {
  return CartController();
});

class CartController extends StateNotifier<CartState> {
  final ProductCartRepositories _cartRepository = ProductCartRepositories();
  late final Box _box;

  CartController() : super(CartState()) {
    _init();
  }

  Future<void> _init() async {

    state = state.copyWith(loading: true);
    _box = AppSettings.boxCart;

    final List<CartModel> listCartModel = [];

    final productList = _box.get('all_product_carts');
    if (productList != null && productList is List<dynamic>) {
      for (var item in productList) {
        final cartItem = item as ItemCartHive;
        //Danh sach cart
        listCartModel.add(CartModel(
          id: cartItem.id,
          quantity: cartItem.quantity,
          colorTemp: cartItem.colorTemp,
          sizeTemp: cartItem.sizeTemp,
        ));

      }
    }

    state = state.copyWith(
        loading: false, listCartHive: listCartModel);
    saveProductOnline();
    // updatePrice();

  }

  //them khi nhan vao san pham
  toggleCart({required CartModel item, int quantity = 1}) async {
    if (state.listCartHive?.length != null) {
      int index = state.listCartHive!.indexWhere((element) =>
          element.id == item.id &&
          element.sizeTemp == item.sizeTemp &&
          element.colorTemp == item.colorTemp);
      if (index > -1) {
        quantity = state.listCartHive![index].quantity + quantity;
        String? sizeTemp = state.listCartHive![index].sizeTemp;
        String? colorTemp = state.listCartHive![index].colorTemp;
        state.listCartHive![index] = state.listCartHive![index].copyWith(
            quantity: quantity, sizeTemp: sizeTemp, colorTemp: colorTemp);
      } else {
        state.listCartHive!.add(item);
      }
    } else {
      // state.listCartHive!.add(item);
      state = state.copyWith(listCartHive: [item]);
    }
    saveProductOnline();
  }

  //Them so luong
  increaseCart({required CartModel item, int quantity = 1}) {
    if (state.listCartHive?.length != null) {
      int index = state.listCartHive!.indexWhere((element) =>
          element.id == item.id &&
          element.sizeTemp == item.sizeTemp &&
          element.colorTemp == item.colorTemp);
      if (index > -1) {
        quantity = state.listCartHive![index].quantity + quantity;
        state.listCartHive![index] =
            state.listCartHive![index].copyWith(quantity: quantity);
      } else {
        state.listCartHive!.add(item);
      }
    } else {
      state.listCartHive!.add(item);
    }
    saveProductOnline();
  }

  //Giam so luong
  reduceCart({required CartModel item, int quantity = 1}) {
    if (state.listCartHive?.length != null) {
      int index = state.listCartHive!.indexWhere((element) =>
      element.id == item.id &&
          element.sizeTemp == item.sizeTemp &&
          element.colorTemp == item.colorTemp);
      if (index > -1) {
        quantity = state.listCartHive![index].quantity - quantity;
        state.listCartHive![index] =
            state.listCartHive![index].copyWith(quantity: quantity);
      } else {
        state.listCartHive!.add(item);
      }
    } else {
      state.listCartHive!.add(item);
    }
    saveProductOnline();
  }
  saveProductOnline() async {
    updateCart();
    final List<CartModel>? productList = state.listCartHive;
    final List<CartTemp> listTemp = [];
    state = state.copyWith(loading: true);
    if (productList != null && productList.isNotEmpty) {
      List<CartTemp> cartTemp = await _cartRepository.getProductModels(productList);

      for (var stateCart in state.listCartHive!) {
        int index = cartTemp.indexWhere((item) => item.id == stateCart.id);
        if (index != -1) {
          CartTemp updatedCart = CartTemp(
            id: stateCart.id,
            colorTemp: stateCart.colorTemp ?? '',
            sizeTemp: stateCart.sizeTemp ?? '',
            regular_price: (double.parse(cartTemp[index].regular_price.toString()) * stateCart.quantity).toString() ,
            namevi: cartTemp[index].namevi,
            photo: cartTemp[index].photo,
            quantity: stateCart.quantity,
            discount: cartTemp[index].discount,
            id_list: cartTemp[index].id_list,
            sale_price: cartTemp[index].sale_price,
          );
          listTemp.add(updatedCart);
        }
      }
      state = state.copyWith(loading: false,listCartTemp: listTemp);
    }
    updatePrice();
  }

  void updatePrice() {
    state = state.copyWith(
      loading: true,
    );
    double totalPrice = 0;
    int totalQuantity = 0;
    for (var product in state.listCartTemp!) {
      totalPrice += double.parse(product.regular_price.toString());
      totalQuantity += product.quantity;
    }
    state = state.copyWith(
        loading: false, totalPrice: totalPrice, totalQuantity: totalQuantity);
  }

  Future<void> updateCart() async {
    await _box.clear();
    final List<ItemCartHive> list = [];
    for (var item in state.listCartHive!) {
      ItemCartHive cartItem = ItemCartHive(
        id: item.id,
        quantity: item.quantity,
        colorTemp: item.colorTemp ?? '',
        sizeTemp: item.sizeTemp ?? '',
      );
      list.add(cartItem);
    }
    _box.put('all_product_carts', list);
  }
}

class CategoryNotifier extends StateNotifier<CartState> {
  CategoryNotifier(CartController cartController) : super(cartController.state);

  void updateState(CartState newState) {
    state = newState;
  }
}
