import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product_list_model.dart';
import '../repositories/product_repositories.dart';
import 'home_state.dart';




//Danh mục sản phẩm
class ProductListController extends StateNotifier<ProductListState> {
  late final ProductRepositories _branchRepository;

  ProductListController(this._branchRepository) : super(ProductListState()) {
    _init();
  }

  _init() async {
    state = state.copyWith(isLoading: true);
    final List<ProductListModel>? listProductListNew = await _branchRepository.getAllCategories();
    state = state.copyWith(isLoading: false, listProductList: listProductListNew);
  }

}



