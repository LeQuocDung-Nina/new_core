import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:new_core/_shared/app_setting/app_settings.dart';
import 'package:new_core/modules/main/cart/models/cart_hive.dart';

import '../models/cart_model.dart';
import '../models/cart_temp.dart';
import '../repositories/payment_repository.dart';

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
  // final ProductCartRepositories _cartRepository = ProductCartRepositories();

  CartController() : super(CartState()) {
    _init();
  }

  Future<void> _init() async {

  }
}


class CategoryNotifier extends StateNotifier<CartState> {
  CategoryNotifier(CartController cartController) : super(cartController.state);

  void updateState(CartState newState) {
    state = newState;
  }
}
