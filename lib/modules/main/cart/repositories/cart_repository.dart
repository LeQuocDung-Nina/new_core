import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:new_core/core/services/api/dio_client.dart';
import 'package:new_core/modules/main/cart/models/cart_model.dart';
import '../../../../_shared/thietlap_api.dart';
import '../models/cart_temp.dart';


class ProductCartRepositories {
  final DioClient _dioClient = DioClient(Dio());

  Future<List<CartTemp>> getProductModels(List<CartModel> productCarts) async {
    final List<CartTemp> productHives = [];
    for (var productHive in productCarts) {
      final response = await _dioClient.get("${Apis.productDetail}?id=${productHive.id}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.data)['data'];
        if (data.isNotEmpty) {
          final productHive = CartTemp.fromJson(data[0]);
          productHives.add(productHive);
        }
      }
    }
    return productHives;
  }

  // Future<CartModel?> getProduct({required int id}) async {
  //   CartModel? product;
  //   final response = await _dioClient.get("${Apis.product}/$id");
  //   if(response.statusCode == 200){
  //     product = CartModel.fromJson(response.data);
  //   }
  //   return product;
  // }
}